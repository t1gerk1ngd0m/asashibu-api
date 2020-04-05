# README

## アプリケーションの概要
朝渋アプリ開発プロジェクトAPIディレクトリ

## Version
Ruby 2.6.3
Ruby on Rails 6.0.2

## セットアップ
rbenvを用いてRubyとRailsの開発環境を構築の上、下記を実行

1. `git clone git@github.com:t1gerk1ngd0m/asashibu-api.git`
2. `bundle install`
3. プロジェクトのルート直下に.envファイルを作成し、下記を記述

```
DB_USERNAME = free word(ここは何でも良い)
DB_PASSWORD = free word(ここは何でも良い)
```

4. `rails db:create`
5. `rails db:migrate`
6. `rails s`でサーバを立ち上げ、`localhost:3000`にアクセス
