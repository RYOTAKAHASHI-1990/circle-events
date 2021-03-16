# アプリの詳細

## アプリケーション名
Circle Events

## アプリケーション概要
会員登録、イベントの告知、ブログ記事の投稿等

## テスト用アカウント
email: ryo@example, password: chat1990

## 利用方法
サークル等の活動報告ブログやイベントの告知

## 目指した課題解決
ホームページを持っていない団体やサークルが活動報告やイベントの告知、会員の管理等ができるようにする

## 実装した機能
会員登録、会員リストの表示、会員情報の表示

## 実装予定の機能
ログイン/ログアウト、ブログの投稿機能、イベント告知の投稿

## ローカルでの動作方法
% git clone https://github.com/RYOTAKAHASHI-1990/circle-events.git
% cd circle-events  
% bundle install  

# テーブル設計

## members テーブル

| Column    | Type    | Options                 |
| ----------|---------|-------------------------|  
| number    | integer | null: false             |
| name      | string  | null: false             |
| full_name | string  | null: false             |
| email     | string  | null: false             |
| password  | string  | null: false             |
| birthday  | date    | null: false             |
| sex       | integer | null: false, default: 1 |

### Association

* has_many events
* has_many entries

##  events テーブル

| Column    | Type    | Options                 |
| ----------|---------|-------------------------|  
| event_name|         | integer | null: false   |
| place     | string  | null: false             |
| start_at  | string  | null: false             |
| end_at    | string  | null: false             |
| content   | string  | null: false             |
| user      | date    | null: false             |

### Association

* belongs_to user


## articles テーブル

| Column    | Type       | Options                 |
| ----------|------------|-------------------------|  
|  title    | string     |                         |     
|  content  | string     |                         |
|  user     | references |                         |

### Association

* belongs to user
* has_many images



