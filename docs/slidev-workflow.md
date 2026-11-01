# Slidevの作業手順

資料を編集・検証する際の実行手順。内容の判断には[制作ガイド](presentation-guide.md)を使う。スライドや描画設定に影響しない文書修正では、再出力は不要。

## 実行前の準備

リポジトリのルートで実行する。Node.jsとpnpmは`nix develop`またはdirenvで用意できる。以降のコマンドは同じシェルで実行する想定。別のシェルで実行する場合は、使用する変数を設定し直す。

依存関係が未導入の場合だけ実行する。ネットワークアクセスに承認が必要な環境では、承認を得てから実行する。

```sh
pnpm install --frozen-lockfile
```

`example-talk`を対象資料のディレクトリ名に置き換え、ファイルの存在を確認する。確認に失敗した場合は、対象を訂正してから続行する。

```sh
talk_name=example-talk
test -f "talks/$talk_name/slides.md"
```

## プレビュー

```sh
pnpm exec slidev "talks/$talk_name/slides.md" --port 3030
```

ブラウザーで`http://localhost:3030`を確認し、終了時は`Ctrl+C`で停止する。現状は`dev`スクリプトがないためCLIを直接使う。

## 書き出し用ブラウザー

書き出しにはChromium系ブラウザーが必要。Nix開発環境には含まれていないため、実行ファイルを別途確認する。

`CHROMIUM_PATH`に実行ファイルの絶対パスを設定する。PATHに`chromium`がある場合は次の方法を使える。

```sh
export CHROMIUM_PATH="$(command -v chromium)"
test -n "$CHROMIUM_PATH" && test -x "$CHROMIUM_PATH"
```

確認に失敗したら、実在するパスや導入方法を調べる。機械固有のパスを推測したり、この手順へ固定したりしない。導入やサンドボックス外での実行が必要なら、環境の承認手順に従う。

## 変更ページの描画確認

確認用画像は一時ディレクトリへ出力する。`--range 2`は対象ページに置き換える。挿入・削除後はページ番号を確認し直す。

```sh
review_dir="$(mktemp -d)"
pnpm exec slidev export "talks/$talk_name/slides.md" \
  --format png --range 2 \
  --output "$review_dir/changed" \
  --executable-path "$CHROMIUM_PATH" --wait 2000
```

画像を実際に開き、下記の確認項目を調べる。生成成功だけで確認済みとしない。`--wait 2000`で読み込みが完了しない場合は、原因を確認して待機時間などを調整する。

## 最終確認とPDF

`--range`を外し、全ページを新しい一時ディレクトリへ描画する。古い画像を確認対象に含めない。

```sh
review_dir="$(mktemp -d)"
pnpm exec slidev export "talks/$talk_name/slides.md" \
  --format png --output "$review_dir/pages" \
  --executable-path "$CHROMIUM_PATH" --wait 2000
```

全ページを番号順に確認する。修正があれば該当ページを再確認し、最終修正後にPDFを出力する。

```sh
mkdir -p dist
pnpm exec slidev export "talks/$talk_name/slides.md" \
  --format pdf --output "dist/$talk_name.pdf" \
  --executable-path "$CHROMIUM_PATH" --wait 2000
```

PDF自体もビューアーかPDF由来の画像で全ページを確認する。Slidevから直接出力したPNGの確認では代用しない。

Popplerが利用できる場合は、ページ数の取得とPDFの画像化を行える。

```sh
pdf_review_dir="$(mktemp -d)"
pdfinfo "dist/$talk_name.pdf"
pdftoppm -png -scale-to 1600 "dist/$talk_name.pdf" "$pdf_review_dir/page"
```

Popplerが未導入なら、必要な承認を得たうえで次の方法を使える。リポジトリの依存関係は変更しない。

```sh
pdf_review_dir="$(mktemp -d)"
nix shell --inputs-from . nixpkgs#poppler-utils --command pdfinfo "dist/$talk_name.pdf"
nix shell --inputs-from . nixpkgs#poppler-utils --command pdftoppm \
  -png -scale-to 1600 "dist/$talk_name.pdf" "$pdf_review_dir/page"
```

PDF出力後にソースを変更したら再出力する。Gitへの追加や外部公開は、明示的な依頼がない限り行わない。

## 確認項目

- 文字や図のはみ出し・重なり、不自然な改行、未置換の仮置き文言がないか。
- フォント・図・画像が正常に表示され、文字サイズと配置が読みやすいか。
- ページ数と順序が想定どおりか。クリック段階を別ページに出す設定なら、その分も考慮する。
- 最終修正がPDFに含まれるか。更新時刻だけでなく、変更箇所の内容も確認する。
- 発表時間と実際の表示環境は、可能なら通し読みや投影でも確認する。未実施なら報告する。

## エラーと確認結果の報告

- 失敗時は原因を確認し、成功した前提で次の処理を行わない。制限による失敗なら必要な承認を求め、無関係な設定や依存関係を変更しない。
- 警告は成果物への影響を確認する。依頼と関係のない問題は修正せず、残る問題として報告する。
- 完了時は、確認したページ・項目、成果物の場所、結果、未確認事項を報告する。出力成功と目視確認を区別する。
- オプションは利用中の`pnpm exec slidev --help`と`pnpm exec slidev export --help`で確認する。
