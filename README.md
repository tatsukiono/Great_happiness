# Great_happiness

## 概要
  * 大喜利ができるサイトです。
  * いいねの数によって自分のランクが上がる機能を入れたので、次のランクに上がりたいと思え、目標がで切るようにしました。
  * ランキング機能を入れたので、人気なコメントだけをみることもできます。また、自分がランキング入りを目指すこともできます。
  * コメントがマークダウン記法で書けるため、文字の色や大きさなど変えることができ、より自分の好きなように言葉を表現できるようにしました。
  * パンくずリストを採用し、サイトを訪れたユーザが今どこにいるかを視覚的にわかりやすくしました。
  * ページネーションを入れることで、どのくらいの情報量があるかを一目で確認できる
## 本番環境
　https://great-happiness1.herokuapp.com/
  テストアカウント
    メールアドレス：　aaa@aaa
    パスワード：　12345678
## 制作背景
  大喜利は多くの人が知っていると思いますが、大喜利のサイトやアプリは数が少ないと思いました。さらに大喜利のサイトの中で一番評価が高いサイトには写真で一言しかなく、言葉でのお題がなかったので作ろうと思いました。

## 使用技術(開発環境)
  * Ruby
  * Ruby on Rails
  * MySQL
  * Github
  * heroku
  * Visual Studio Code
  * bootstrap
## 課題や今後実装したい機能
  * 友達とだけできるようにグループを作成する機能
  * コメントの削除や編集機能
  * コメント数が多かったり、人気のお題をみやすくするためにソート機能
  * 単体テスト
  * リファクタリング
## DB設計
  ### themes
   |Column|Type|Options|
   |------|----|-------|
   |title|string|
   |image|string|
   |user|references|foreign_key: true|
  ### Association
   * belongs_to :user
   * has_many :comments
   * has_many :likes
  ### users
   |Column|Type|Options|
   |------|----|-------|
   |name|string|null: false|
   |email|string|null: false, default: ""|
   |encrypted_password|string|null: false, default: ""|
  ### Association
   * has_many :themes
   * has_many :comments
   * has_many :likes
  ### comments
   |Column|Type|Options|
   |------|----|-------|
   |text|text|null: false|
   |user|references|foreign_key: true|
   |theme|references|foreign_key: true|
  ### Association
   * belongs_to :user
   * belongs_to :theme
   * has_many :likes
  ### comments
   |Column|Type|Options|
   |------|----|-------|
   |user|references|foreign_key: true|
   |theme|references|foreign_key: true|
   |comment|references|foreign_key: true|
  ### Association
   * belongs_to :user
   * belongs_to :theme
   * belongs_to :comment
   
   
   
   
   
   
   
   
   
  
