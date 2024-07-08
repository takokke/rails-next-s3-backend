# README
## Rails、Next.js、S3の画像アップロード練習用
現在開発しているアプリに画像アップロード機能を加えたい
バックエンドとフロントエンドを分けるとRailsの単体の時より、少し複雑になる
このリポジトリは、練習用のバックエンドリポジトリである
フロントエンドは[こちら](https://github.com/takokke/rails-next-s3-frontend)

## 手順

### 1 モデルにURLを渡すメソッドを定義する

## 2  Rails.application.routes.default_url_optionsでhostとportを指定する
環境ごとに変えるのがポイント