# AmazonRankingChecker

Amazonの売り上げランキングを取得するツールです。１度の実行で複数の書籍のランキングを取得できます。

## 動作環境

ruby 1.9.3以上

## 必要なもの

Amazon ECSパッケージ

$ gem install amazon-ecs

## 使い方

あらかじめAssociate tag, access key, secret keyをAmazon.comから取得しておく必要があります。

config.jsonに、参照したい書籍のISBN-10を代入します。あとは、amazon-ranking.rbファイルを実行します。

amazon-ranking.rbファイル実行の現在のランキングを取得します。

## ライセンス

本ソースコードはNYSL ライセンス(http://www.kmonos.net/nysl/)を適用します。
利用しているライブラリについては、各ライブラリのライセンスに従います。
