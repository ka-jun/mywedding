# README

## アプリ名
My Wedding

## 概要
フリーランスのウェディングプランナーやヘアメイク、カメラマンなどその他の担当者と
安価でオリジナルな結婚式を挙げたい人のマッチングアプリです。

## 製作背景
美容室で勤務していた友人が個人事業主になり話を聞いたのがきっかけです。
個人事業主やフリーランスの人は仕事をもらうのが難しいと苦慮しておりました。
また、新郎新婦もオリジナルな結婚式をしたい方や安価で希望される方もいらっしゃいます。
結婚式場の契約ではなくフリーウェディングプランナーの方が実現しやすいため
ブライダル業界に特化した紹介サイトがあったら双方の課題を解決実現できるのではと考案いたしました。

## DEMO

userとstaffでログインページを分けております。
<img width="721" alt="スクリーンショット 2021-07-24 19 26 23" src="https://user-images.githubusercontent.com/77524367/128669797-f7cb4bba-ad24-47dc-91d4-389079d91e23.png">

新規登録したstaffはstaff一覧に表示されます。userはここから気になるstaffを選択します。

<img width="721" alt="スクリーンショット 2021-07-24 19 26 39" src="https://user-images.githubusercontent.com/77524367/128669867-651fa5d0-2e08-4376-aa1c-b4739da3ca5a.png">

「click!!」をクリックいただくと、staffの詳細ページへ進みます。

<img width="721" alt="スクリーンショット 2021-07-24 19 41 50" src="https://user-images.githubusercontent.com/77524367/128669884-dd9f909f-acef-4ba8-b497-b5d0222521dd.png">

userは気になるstaffを問い合わせ内容を入力いたします。
staffはマイページにお問い合わせ頂いた内容が表示され、userのページを閲覧することができ、メールでお問いわせすることができます。

<img width="1328" alt="スクリーンショット 2021-07-25 17 47 04" src="https://user-images.githubusercontent.com/77524367/128670106-4ee73ca9-7695-4f8c-93e4-eef51ab3d276.png">


<img width="1067" alt="スクリーンショット 2021-07-25 17 48 38" src="https://user-images.githubusercontent.com/77524367/128670112-bac69ed1-15e6-4d05-b878-eec0578d83f0.png">


## 工夫したポイント
- userとstaffでログインページを分けております。
- ログインページをuserとstaff_memberで分けることにより、新規登録後にstaff一覧に表示されるか、されないかを分けました。
- user、staff共にユーザーページ（登録者以外の人が見れるページ）とマイページ（登録者のみが見れるページ）に分けることにより、ログインが必要か必要じゃないかを分けました。
- userからstaffへ問い合わせした際、問い合わせされた本人しか見れないようにアクセス制限をかけました。


## バックエンド
Ruby, Ruby on rails

## フロントエンド
bootstrap,javascript

## データーベース
MySQL,sequelPro

## インフラ
AWS（S3）

## WEBサーバー（本番環境）
Heroku

## ソース管理
GitHub,GithubDesktop

## テスト
RSpec

## エディタ
VSCode

## 課題や今後実装したい機能
- 不正防止のアクセス制限
- 検索機能
- タグ機能
- staffの投稿機能


## Staff_Members
| Column             | Type   | Options     | 
| ------------------ | ------ | ----------- | 
| email              | string | null: false | 
| encrypted_password | string | null: false | 
| last_name          | string | null: false | 
| first_name         | string | null: false | 
| area               | string | null: false | 
| since              | date   | null: false | 
| text               | text   | null: false | 

### Association
* has_many :contacts
* has_many :user

## Contact

| Column | Type | Options     | 
| ------ | ---- | ----------- | 
| text   | text | null: false | 

### Association
* belongs_to :user
* belongs_to :staff_member

## user
| Column             | Type    | Options     | 
| ------------------ | ------- | ----------- | 
| email              | string  | null: false | 
| encrypted_password | string  | null: false | 
| last_name          | string  | null: false | 
| first_name1        | string  | null: false | 
| first_name2        | string  | null: false | 
| anniversary        | date    |             | 
| area               | string  | null: false | 

### Association
* has_many :contacts
* has_many :staff_members
