// ============================================================
//  プルリクエストが触っているファイルを見る
//
//    作品を出す PR は、docs/works/ と docs/thumbs/ に
//    ファイルを足すだけのはず。それ以外を触っていたら赤にする。
//    作品を出すつもりの PR に、ページ本体やワークフローの書き換えが
//    まぎれこむのを防ぐため。
//
//    人の作品を消す変更も、同じように目立たせる。
//
//    使い方:  BASE_SHA=<比べる先> node tools/check-pr.mjs
//    （BASE_SHA が無ければ origin/main と比べる）
// ============================================================
import { execFileSync } from 'node:child_process';
import { statSync, readFileSync } from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';

const ROOT = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');

// 置いてよい場所と、置いてよい拡張子
const ALLOW = [
  { dir: 'docs/works/',  exts: ['.rb', '.json'] },
  { dir: 'docs/thumbs/', exts: ['.png'] },
];

// 大きすぎるファイルは、置き間違いか、ここに置くべきでないもの
const MAX = { '.rb': 256 * 1024, '.json': 8 * 1024, '.png': 512 * 1024 };
const MAX_PX = 2000;   // 絵の縦横

const git = (...args) => execFileSync('git', args, { cwd: ROOT, encoding: 'utf8' }).trim();

function baseCommit() {
  const base = process.env.BASE_SHA || 'origin/main';
  try {
    return git('merge-base', base, 'HEAD');
  } catch (e) {
    return base;   // 共通の祖先が取れなくても、比べるだけはできる
  }
}

/** PNG かどうかと、縦横を見る。IHDR は先頭から決まった位置にある。 */
function pngSize(file) {
  const buf = readFileSync(file);
  const sig = Buffer.from([0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a]);
  if (buf.length < 24 || !buf.subarray(0, 8).equals(sig)) return null;
  return { w: buf.readUInt32BE(16), h: buf.readUInt32BE(20) };
}

const problems = [];
const notes = [];

const diff = git('diff', '--name-status', '-M', `${baseCommit()}...HEAD`);
const changed = diff
  .split('\n')
  .filter(Boolean)
  .map(line => {
    const [status, ...rest] = line.split('\t');
    return { status: status[0], file: rest[rest.length - 1] };
  });

if (!changed.length) {
  console.log('変わったファイルはありません。');
  process.exit(0);
}

console.log('この PR が触っているファイル:');
for (const { status, file } of changed) console.log(`  ${status}  ${file}`);
console.log('');

for (const { status, file } of changed) {
  const rule = ALLOW.find(a => file.startsWith(a.dir));

  if (!rule) {
    problems.push(
      `${file} は作品の置き場所ではありません。` +
      `作品を出す PR で触れるのは ${ALLOW.map(a => a.dir).join(' と ')} だけです`
    );
    continue;
  }

  if (status === 'D') {
    problems.push(`${file} を消しています。人の作品を消す変更が入っていないか確かめてください`);
    continue;
  }

  const ext = path.extname(file).toLowerCase();
  if (!rule.exts.includes(ext)) {
    problems.push(`${file} は ${rule.dir} に置けません（置けるのは ${rule.exts.join(' と ')}）`);
    continue;
  }

  const full = path.join(ROOT, file);
  const size = statSync(full).size;
  if (size > MAX[ext]) {
    problems.push(
      `${file} が大きすぎます（${Math.round(size / 1024)} KB。` +
      `${Math.round(MAX[ext] / 1024)} KB まで）`
    );
    continue;
  }

  if (ext === '.png') {
    const px = pngSize(full);
    if (!px) {
      problems.push(`${file} は PNG ではありません。名前だけ .png にしていませんか`);
    } else if (px.w > MAX_PX || px.h > MAX_PX) {
      problems.push(`${file} の絵が大きすぎます（${px.w}×${px.h}。${MAX_PX} まで）`);
    } else {
      notes.push(`${file} … ${px.w}×${px.h}、${Math.round(size / 1024)} KB`);
    }
  }
}

for (const n of notes) console.log('  ' + n);
if (notes.length) console.log('');

if (problems.length) {
  console.error('この PR には、作品を出す以外の変更が入っています:\n');
  for (const p of problems) console.error('  - ' + p);
  console.error('\nページ本体や仕組みを直したいときは、作品の PR とは分けて出してください。');
  process.exit(1);
}

console.log('作品の置き場所だけを触っています。');
