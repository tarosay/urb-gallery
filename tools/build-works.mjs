// ============================================================
//  docs/works.json（一覧ページが読む目次）を作る
//
//    作品 1 件 = docs/works/<id>.rb と docs/works/<id>.json の 2 つ。
//    PR で足すのはこの 2 ファイルだけで、共有のファイルには触らない。
//    触らせないから、PR が何件重なっても衝突しない。
//
//    目次はここで組み立てて、GitHub Actions が配信のときに置く。
//    リポジトリには入れない（入れると、また全員が同じファイルを触ることになる）。
//
//    使い方:  node tools/build-works.mjs
//    手元で見るときも、一度これを走らせてから docs/ を開く。
// ============================================================
import { readdir, readFile, writeFile } from 'node:fs/promises';
import { existsSync } from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';

const ROOT   = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');
const WORKS  = path.join(ROOT, 'docs', 'works');
const THUMBS = path.join(ROOT, 'docs', 'thumbs');
const OUT    = path.join(ROOT, 'docs', 'works.json');

// 種類は決められた一覧から 1 つ。docs/index.html の KINDS と同じ並び。
const KINDS = ['光る', '音', 'うごく', 'はかる', 'ゲーム・あそび', '役に立つもの', 'その他'];

// 地域は都道府県。書き間違い（「和歌山」など）をここで弾く。
const REGIONS = [
  '北海道', '青森県', '岩手県', '宮城県', '秋田県', '山形県', '福島県',
  '茨城県', '栃木県', '群馬県', '埼玉県', '千葉県', '東京都', '神奈川県',
  '新潟県', '富山県', '石川県', '福井県', '山梨県', '長野県',
  '岐阜県', '静岡県', '愛知県', '三重県',
  '滋賀県', '京都府', '大阪府', '兵庫県', '奈良県', '和歌山県',
  '鳥取県', '島根県', '岡山県', '広島県', '山口県',
  '徳島県', '香川県', '愛媛県', '高知県',
  '福岡県', '佐賀県', '長崎県', '熊本県', '大分県', '宮崎県', '鹿児島県', '沖縄県',
];

// 絵に使える拡張子。tools/check-pr.mjs の ALLOW と同じ。
const THUMB_EXTS = ['.png', '.jpg', '.jpeg'];

const ID_RE   = /^[A-Za-z0-9][A-Za-z0-9._-]{0,63}$/;
const DATE_RE = /^\d{4}-\d{2}-\d{2}$/;
const RB_LINE = /^#\s*urb-block\/1\s+[A-Za-z0-9+/=]+\s*$/m;

const problems = [];
const fail = (id, msg) => problems.push(`${id}: ${msg}`);

/** 1 件ぶんを確かめて、目次に載せる形にして返す。載せられなければ null。 */
async function readWork(id) {
  if (!ID_RE.test(id)) {
    fail(id, 'id に使えるのは半角英数と - _ . だけです（先頭は英数）');
    return null;
  }

  let meta;
  try {
    meta = JSON.parse(await readFile(path.join(WORKS, `${id}.json`), 'utf8'));
  } catch (e) {
    fail(id, `${id}.json を読めません（${e.message}）`);
    return null;
  }

  const rbPath = path.join(WORKS, `${id}.rb`);
  if (!existsSync(rbPath)) {
    fail(id, `${id}.rb がありません。.json と .rb は同じ名前で置いてください`);
    return null;
  }

  for (const k of ['title', 'author', 'region', 'kind', 'date']) {
    if (typeof meta[k] !== 'string' || !meta[k].trim()) fail(id, `${k} が空です`);
  }
  if (meta.kind   && !KINDS.includes(meta.kind))     fail(id, `kind「${meta.kind}」は種類の一覧にありません`);
  if (meta.region && !REGIONS.includes(meta.region)) fail(id, `region「${meta.region}」は都道府県ではありません`);
  if (meta.date   && !DATE_RE.test(meta.date))       fail(id, `date は 2026-09-03 の形で書いてください`);

  const lab = meta.lab || 'block';
  if (lab !== 'block' && lab !== 'ee') fail(id, `lab は block か ee です（${meta.lab}）`);

  const tags = meta.tags || [];
  if (!Array.isArray(tags) || tags.some(t => typeof t !== 'string')) {
    fail(id, 'tags は文字列の配列です');
  } else if (tags.some(t => t.startsWith('#'))) {
    fail(id, 'tags に # は付けません（表示するときに付きます）');
  }

  // ブロックの作品は、末尾のコメントにブロックが入っていないと開けない。
  if (lab === 'block' && !RB_LINE.test(await readFile(rbPath, 'utf8'))) {
    fail(id, '.rb に「# urb-block/1 …」の行がありません。URB Block Lab の「.rb で保存」で出したものを置いてください');
  }

  return {
    id,
    title:  meta.title,
    author: meta.author,
    group:  meta.group || '',
    region: meta.region,
    kind:   meta.kind,
    desc:   meta.desc || '',
    tags,
    lab,
    date:   meta.date,
    thumb:  '',   // 絵のファイル名。下で docs/thumbs/ を見て埋める
  };
}

const inWorks = await readdir(WORKS);

const ids = inWorks
  .filter(f => f.endsWith('.json'))
  .map(f => f.slice(0, -5))
  .sort();

// .json を消して .rb だけ残ると、一覧からは消えるがファイルは残り続ける。
// 目次は .json しか見ないので、ここで拾わないと誰も気づかない。
const idSet = new Set(ids);
for (const f of inWorks) {
  if (!f.endsWith('.rb')) continue;
  const id = f.slice(0, -3);
  if (!idSet.has(id)) fail(f, `${id}.json がありません。作品を消すなら .rb も一緒に消してください`);
}

const works = (await Promise.all(ids.map(readWork))).filter(Boolean);

// 新しいものが先。同じ日なら id 順で、並びが日によって変わらないようにする。
works.sort((a, b) => (a.date === b.date ? a.id.localeCompare(b.id) : b.date.localeCompare(a.date)));

// 絵は無くてもよいが、名前が作品とずれていると、置いた本人は気づけない。
// ページは黙って自動のカードを描くだけなので、ここで拾う。
// 拡張子は png か jpg なので、どちらを置いたかを目次に書いておく。
// ページは書いてある名前をそのまま読む（無い作品は読みにいかない）。
const byId = new Map(works.map(w => [w.id, w]));
let thumbs = [];
try {
  thumbs = await readdir(THUMBS);
} catch (e) {
  thumbs = [];   // まだ 1 枚も置かれていない
}
for (const f of thumbs) {
  if (f.startsWith('.')) continue;                       // .gitkeep など
  const ext = path.extname(f);
  if (!THUMB_EXTS.includes(ext.toLowerCase())) {
    fail(f, `docs/thumbs/ に置けるのは ${THUMB_EXTS.join(' ')} だけです`);
    continue;
  }
  const id = f.slice(0, -ext.length);
  const w = byId.get(id);
  if (!w) {
    fail(f, `対応する作品がありません。作品と同じ名前（${id}.rb と ${id}.json）に` +
            `なっているか確かめてください`);
  } else if (w.thumb) {
    fail(f, `${id} の絵が 2 つあります（${w.thumb} と ${f}）。1 つにしてください`);
  } else {
    w.thumb = f;
  }
}

if (problems.length) {
  console.error('作品の書き方に問題があります:\n');
  for (const p of problems) console.error('  - ' + p);
  console.error('');
  process.exit(1);
}

await writeFile(OUT, JSON.stringify({ works }, null, 2) + '\n', 'utf8');
console.log(`works.json を作りました（${works.length} 件）`);
