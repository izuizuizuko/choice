# CHOICE

## :droplet:概要
QAコーナー付き眼薬検索サイト

## :globe_with_meridians:URL
<br>
緊急メンテナンス中:construction_worker:
https://choicechoice.herokuapp.com/　

## :earth_asia:背景
* ドラッグストアで一般の方が薬を自分自身で選択するハードルは高く、店頭で疑心暗鬼になる方が多いのが実情。<br>
化粧品・旅行・食事のように口コミサイトがあるわけでもなく、膨大な商品と情報の中から選ぶのは困難。<br>
多くの方が知名度で選択し症状にあってない物を使用している場合も多数。<br>
この問題を少しでも解決できればと思い作成。<br>
症状毎に分類する事で商品の選択を自分自身で行いやすく、店頭で迷うことも減らせるようになる為に。

## :point_up_2:説明
* 希望のジャンルを選択後、一覧・詳細の表示
* 新規登録・ログイン後はQAコーナーが使用可能

## :computer:機能
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

## :memo::実装内容
#####  フロントエンド
* Haml/Sassでのマークアップ
* Bootstrapでのマークアップ

#####  サーバーサイド
* ユーザー登録(/編集)機能(gem Deviseを使用)
* 管理機能(gem Activeadminを使用)
* 検索機能(gem ransackを使用)

## :mortar_board:開発環境
* Ruby 2.5.1
* Ruby on Rails 5.2.4.1
* MySQL 5.6.43
* Haml 
* Sass 
* AWS
* EC2
* Github

## :mag:テスト
今後実施予定 :soon:


## :speech_balloon:Usage

$ git clone https://github.com/izuizuizuko/choice.git<br>
$ cd choice<br>
$ bundle install<br>
$ rails db:create<br>
$ rails db:migrate<br>
$ rails s
👉 http://localhost:3000


## :fire:課題と今後の実装
* 挑戦<br>
&nbsp;herokuでのデプロイ（S3で画像の継続表示）<br>
&nbsp;管理機能と投稿機能の融合<br>
&nbsp;シンプルでわかりやすいが、判断基準となり得る文言の選択
* 課題<br>
&nbsp;・Bootstrap使用箇所と未使用箇所でのレイアウトの違いが発生<br>
&nbsp;・Activeadminを使用し管理画面からのみの投稿にしたた為、イメージ画像の取り込みのコード量が多い<br>
&nbsp;・背景画層の設定にムラが生じているのでレイアウトにばらつきがある<br>
* 今後の実装<br>
&nbsp;・検索方法の追加（タグ対応）<br>
&nbsp;・いいね機能の追加<br>
&nbsp;・Twitter/Facebook/Googleアカウントでのログイン機能の追加<br>
&nbsp;・上記課題の解決<br>

## :ok_hand:License
MIT

