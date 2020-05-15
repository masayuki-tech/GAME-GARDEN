# GAME-GARDEN

![gamegarden](https://github.com/masayuki-tech/GAME-GARDEN/master/gamegarden_image.jpg)

・GitURL：https://github.com/masayuki-tech/GAME-GARDEN


・接続先情報 http://54.248.131.238


・開発環境（言語、ツール、OS、DB、サーバー）
  Ruby/Ruby on Rails/MySQL/Github/AWS/Visual Studio Code

 
・内容  
  ゲーム紹介サイト（誰でも気軽に投稿、閲覧できるようにログイン機能はつけませんでした）

・企画背景
	ゲーマーは自身の好きなゲームを共感してほしい人が多い背景から、自分がオススメしたい記事を投稿することができるように作成しました。また、新しいゲームを始めようとしている人が記事を参考に購入を検討できるようにしました。

・今後つけたい実装
　投稿者自身がゲームの評価を数値化できるようにする

# DEMO
 
https://gyazo.com/a6a30337bf28e74156867e4f407dc938

https://gyazo.com/8ae77ac3f7f4bdebd0aed128afbb084e
 

# Features
 
記事を投稿することができます。
投稿した記事をジャンルごとに検索できます。
投稿した記事を機種ごとに検索できます。
タイトルを検索することができます。


## postsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|text|text|null: false|
|genre|referennces|null: false,foreign_key:true|
### Association
- belongs_to :genre
- has_many :post_tags
- has_many :tags, through: :post_tags

## genresテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :posts

## tagsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :post_tags
- has_many :posts, through: :post_tags

## post_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|post_id|integer|null: false, foreign_key: true|
|tag_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :post
- belongs_to :tag
