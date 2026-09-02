// ============================================================
//  PR に貼るコメントを作る
//
//    check-pr.mjs（触っている場所）と build-works.mjs（書きかた）を
//    続けて走らせ、その出力をまとめて comment.md にする。
//    出した人が Actions のログを開かなくても、PR の画面で読めるように。
//
//    コメントを貼るのは別のワークフロー（pr-comment.yml）。
//    フォークからの PR では、こちらのジョブに書き込む権限が無いため。
//
//    使い方:  BASE_SHA=<比べる先> node tools/pr-report.mjs
//    両方通れば 0、どちらかが赤なら 1 で終わる。
// ============================================================
import { spawnSync } from 'node:child_process';
import { writeFileSync } from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';

const ROOT = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');
const MARKER = '<!-- urb-gallery-check -->';
const MAX_LINES = 60;   // 長すぎるとコメントが読めなくなる

function run(script) {
  const r = spawnSync(process.execPath, [path.join(ROOT, 'tools', script)], {
    cwd: ROOT, encoding: 'utf8',
  });
  const out = ((r.stdout || '') + (r.stderr || '')).replace(/\s+$/, '');
  const lines = out.split('\n');
  return {
    ok: r.status === 0,
    text: lines.length > MAX_LINES
      ? lines.slice(0, MAX_LINES).join('\n') + `\n…（残り ${lines.length - MAX_LINES} 行は Actions のログに）`
      : out,
  };
}

const files = run('check-pr.mjs');
const works = run('build-works.mjs');
const ok = files.ok && works.ok;

const mark = v => (v ? '✅' : '❌');

const body = [
  MARKER,
  ok ? '## ✅ 点検が通りました' : '## ❌ 直すところがあります',
  '',
  ok
    ? 'このままマージできます。取り込まれると一覧は自動で作り直されます。'
    : '下を読んで直し、同じブランチにコミットしてください。置き直すたびに、この点検はやり直されます。',
  '',
  `### ${mark(files.ok)} 触っているファイル`,
  '',
  '```',
  files.text || '(出力なし)',
  '```',
  '',
  `### ${mark(works.ok)} 作品の書きかた`,
  '',
  '```',
  works.text || '(出力なし)',
  '```',
  '',
  '---',
  '',
  '出しかたの説明: https://tarosay.github.io/urb-gallery/submit.html',
  '',
].join('\n');

writeFileSync(path.join(ROOT, 'comment.md'), body, 'utf8');
console.log(body);
process.exit(ok ? 0 : 1);
