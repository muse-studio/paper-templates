# muse-lab paper templates

橋田ゼミのゼミ内報告書（`report`）と卒業論文（`thesis`）用LaTeXテンプレートである。A4・2段組、13Q・21H、各段26字・47行、段間8 mmで組む。pLaTeX、pBibTeX、dvipdfmxを使う。

## 使い始める

GitHubの[Use this template](https://github.com/muse-studio/paper-templates/generate)から自分用リポジトリを作る。作成後、`metadata.tex` の題目、氏名、学籍番号、指導教員、提出日を変更する。本文は `paper.tex`、付録は `appendix.tex`、文献は `references.bib`、画像は `fig/` を編集する。

報告書は `main-report.tex`、卒業論文は `main-thesis.tex` をビルドする。卒業論文では表紙の後に目次・図目次・表目次が入り、本文以降は2段組になる。

## 必要なTeX環境とビルド

MacTeXなど、pLaTeX・pBibTeX・dvipdfmxを含むTeX環境を用意する。ターミナルでは次を順に実行する。

```sh
platex -interaction=nonstopmode -file-line-error main-thesis.tex
pbibtex main-thesis
platex -interaction=nonstopmode -file-line-error main-thesis.tex
platex -interaction=nonstopmode -file-line-error main-thesis.tex
dvipdfmx main-thesis.dvi
```

`main-report.tex` を作る場合も、ファイル名だけ読み替える。VS CodeではLaTeX Workshopを入れ、`.vscode/settings.json` の **pLaTeX + pBibTeX + dvipdfmx** を選ぶ。

## 図表・数式・参考文献

図は `figure`、表は `table`、数式は `equation` を使う。本文の例は `paper.tex` にある。複数の小図を使うときだけ、入口ファイルに `\usepackage{subcaption}` を追加する。図ファイルは `fig/` に置き、例えば次のように書く。

```tex
\includegraphics[width=\columnwidth]{fig/result.pdf}
```

文献は `references.bib` に追加し、本文では `\cite{キー}` を使う。ZoteroではBetter BibTeXを使い、収集した文献をBibTeX形式で `references.bib` に書き出す。書き出したキーと `\cite` のキーを一致させる。

## 既存原稿を移す場合

新しい原稿ではlegacyパッケージを読み込まない。`legacy/muselab-legacy.sty` は、旧IPSJ原稿の `\bf`、旧形式の `\author`、`\Verb`、`musequote`、`\from`、`\figref`、`\tabref`、`\CaptionType` などを使う既存原稿を読むためだけの互換層である。

既存原稿では、クラス読込みの後に次を追加する。詳しい対象命令は [legacy/README.md](legacy/README.md) を参照する。

```tex
\usepackage{muselab-legacy}
```

学会へ投稿する原稿は、このテンプレートではなく学会が配布する公式テンプレートを使う。IPSJへ投稿する場合もIPSJ公式の `ipsj.cls` を別途使用する。
