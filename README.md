# urb-gallery

UIAPduino で作ったプログラムを並べる**みんなの作品**のページです。

公開先: <https://tarosay.github.io/urb-gallery/>

パネルを選ぶと、新しいタブで
[URB Block Lab](https://tarosay.github.io/uiap-hid-web/uiapruby-block.html) が開き、
その作品のブロックが出てきます。開いた先は**新しい作品**なので、
いま開いている作品を上書きすることはありません。

`uiap-hid-web` とは別のリポジトリですが、公開先はどちらも `tarosay.github.io` の中なので、
ブラウザから見ると**同じ場所**です（CORS は関わりません）。

---

## 作品を足す

1. 子が URB Block Lab の **`.rb` で保存**でファイルを作り、こちらに渡す
2. そのファイルを `docs/works/<id>.rb` として置く（`<id>` は半角英数・`-`・`_`）
3. 絵があれば `docs/thumbs/<id>.png` に置く（無くてよい。無ければ種類の色と題名でカードを描く）
4. `docs/works.json` の `works` に 1 件足す
5. commit して push する。GitHub Pages に反映されます

`.rb` は URB Block Lab で保存したものを使ってください。
末尾のコメント（`# urb-block/1 …`）にブロックが畳んで入っていて、
ページはそこを読んでブロックに戻します。このコメントを消すと開けません。

### works.json の書きかた

```json
{
  "id": "sample-blink",
  "title": "1秒ごとに光る",
  "author": "みほん",
  "group": "UIAPduino",
  "region": "和歌山県",
  "kind": "光る",
  "desc": "ピン2につないだ LED を、1秒ごとに点けたり消したりします。",
  "tags": ["LED", "はじめて"],
  "lab": "block",
  "date": "2026-09-03"
}
```

| 項目 | 中身 |
|------|------|
| `id` | ファイル名を兼ねます。`works/<id>.rb`、`thumbs/<id>.png` |
| `title` | 題名 |
| `author` | 作った人。**ニックネームで**（公開されます） |
| `group` | 所属（例: `CoderDojo 和歌山`）。無ければ省略可 |
| `region` | 都道府県。「地域で見る」の見出しになります |
| `kind` | 種類。下の一覧から 1 つ |
| `desc` | ひとこと説明 |
| `tags` | 自由に何個でも。**`#` は付けません**（表示するときに付きます） |
| `lab` | `block` なら URB Block Lab で開きます。それ以外は `.rb` をそのまま渡します |
| `date` | 並び順に使います（新しいものが先） |

**種類**は次の 7 つです。ここに無い言葉を書くと「その他」に入ります。

`光る` / `音` / `うごく` / `はかる` / `ゲーム・あそび` / `役に立つもの` / `その他`

---

## ファイル構成

```
docs/
  index.html        ← 一覧ページ（種類で見る / 地域で見る / さがす）
  works.json        ← 作品の目次。ここに載っているものだけ並びます
  works/            ← 作品の .rb
  thumbs/           ← 絵（任意）。<id>.png
```

一覧ページが読むのは `works.json` だけです。
静的なページなので、フォルダを覗いて自動で並べることはできません。
`works/` に置いただけでは出てこないので、`works.json` にも足してください。

---

## 関連リポジトリ

| リポジトリ | 説明 |
|-----------|------|
| [uiap-hid-web](https://github.com/tarosay/uiap-hid-web) | URB Block Lab / URB EE Lab などの本体 |
| [arduino_core_ch32](https://github.com/tarosay/arduino_core_ch32) | UIAPduino Arduino コア |
