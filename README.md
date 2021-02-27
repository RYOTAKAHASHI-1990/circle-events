# テーブル設計

## users テーブル

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

## tickets テーブル

| Column    | Type    | Options                 |
| ----------|---------|-------------------------|  
| comment   | string  | null: false             |

### Association

* belongs_to user
* belongs_to event


## entries テーブル

| Column    | Type       | Options                 |
| ----------|------------|-------------------------|  
|  titele   | string     |                         |     
|  content  | string     |                         |
|  user     | references |                         |

### Association

* belongs to user
* has_many images



