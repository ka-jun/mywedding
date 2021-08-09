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

## 工夫したポイント
・userとstaffでログインページを分けております。
・ログインページをuserとstaff_memberで分けることにより、新規登録後にstaff一覧に表示されるか、されないかを分けました。
・user、staff共にユーザーページ（登録者以外の人が見れるページ）とマイページ（登録者のみが見れるページ）に分けることにより、ログインが必要か必要じゃないかを分けました。
・userからstaffへ問い合わせした際、問い合わせされた本人しか見れないようにアクセス制限をかけました。



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
  has_many :contacts
  has_many :user

## Contact

| Column | Type | Options     | 
| ------ | ---- | ----------- | 
| text   | text | null: false | 

### Association
  belongs_to :user
  belongs_to :staff_member

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
  has_many :contacts
  has_many :staff_members
