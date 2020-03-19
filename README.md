# CHOICE

## :droplet:概要
QAコーナー付き眼薬検索サイト

## :droplet:URL
今後デプロイ予定

## :droplet:説明
* 希望のジャンルを選択後、一覧・詳細の表示
* 新規登録・ログイン後はQAコーナーが使用可能

## :droplet:機能
### ①トップ画面
希望のジャンルを選択できます
![choice](https://user-images.githubusercontent.com/59868344/77017437-dc101b80-69bd-11ea-95b5-3a6302b4eb42.png)
### ②商品詳細
希望のジャンル選択後、選択した商品の詳細が表示されます
![choice](https://user-images.githubusercontent.com/59868344/77019097-162fec00-69c3-11ea-9c70-bf7edb645d7b.png)
### ③新規登録・ログイン画面
新規登録・ログインをする事ができます
![choice](https://user-images.githubusercontent.com/59868344/77018044-7ae94780-69bf-11ea-9a56-c6eb9183b0c4.png)
### ④QAコーナートップ画面
ログインしているユーザーが質問した質問が一覧で表示されます
![choice](https://user-images.githubusercontent.com/59868344/77018935-8d18b500-69c2-11ea-84a9-b0c999b00bc4.png)
### ⑤QAコーナー質問一覧
全ての質問が一覧で表示されます
![choice](https://user-images.githubusercontent.com/59868344/77018994-b5a0af00-69c2-11ea-87f2-ced49db3ad20.png)
### ⑥QAコーナ検索機能
検索バーを利用して全ての質問一覧から本文を検索し一致した質問を表示できます
![choice](https://user-images.githubusercontent.com/59868344/77019022-ce10c980-69c2-11ea-9ec9-295535d812a4.png)

## :droplet:実装内容
#####  フロントエンド
* Haml/Sassでのマークアップ
* Bootstrapでのマークアップ

#####  サーバーサイド
* ユーザー登録(/編集)機能(gem Deviseを使用)
* 管理機能(gem Activeadminを使用)
* 検索機能(gem ransackを使用)

## :droplet:開発環境
* Ruby 2.5.1
* Ruby on Rails 5.2.4.1
* MySQL 5.6.43
* Haml 
* Sass 
* AWS
* EC2
* Github

## :droplet:テスト
今後実施予定

## :droplet:License
MIT

