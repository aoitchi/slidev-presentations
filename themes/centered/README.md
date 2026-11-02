# centeredテーマ

このリポジトリで使う3種類のレイアウト。既存の見た目を維持するため、導入済みの`@slidev/theme-default`のスタイルと表紙コンポーネントを再利用し、同じフォント設定を使う。

- `cover`：表紙。タイトルと発表者名を中央に配置する。
- `center`：Thank youやAppendixなどを中央に配置する。見た目は`cover`と同じ。
- `default`：見出しを上部に置き、その下の残りの領域で本文を縦方向の中央に配置する。

## 使い方

`talks/<資料名>/slides.md`から指定する場合の例。

```md
---
theme: ../../themes/centered
layout: cover
---

# 発表タイトル

発表者名

---
layout: default
---

# 見出し

::content::

本文や図

---
layout: center
---

# Thank you
```

`default`では`::content::`より前に見出し、後に本文を書く。ページのfrontmatterに`contentClass: 'gap-6'`などを指定すると、本文を配置する要素へクラスを追加できる。

中央配置用の外側の`div`や、見出しサイズをそろえる`defaults.class`は資料側に書かない。本文中の図の大きさや個別の配置は資料側で指定する。内容量に応じた自動縮小や、はみ出し防止は行わない。
