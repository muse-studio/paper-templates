# 旧原稿用の互換層

このディレクトリは、新規原稿では使わない。旧IPSJ原稿を `muselab` クラスへ移すときだけ使う。

原稿の入口ファイルで `\documentclass{muselab}` の後に、次を追加する。

```tex
\usepackage{muselab-legacy}
```

ルートの `muselab-legacy.sty` はこのファイルを読み込むための小さな入口である。`legacy/` ディレクトリを削除したり、別の場所へ移動したりしない。

対応している旧命令は、旧形式の `\author`、`\etitle`、`\figref`、`\tabref`、`\CaptionType`、`\bf`、`\ruby`、`acknowledgment`、`\Verb`、`musequote`、`\from` である。新しい原稿では標準LaTeXの命令を使う。
