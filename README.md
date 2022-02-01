# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_many :worships
- has_many :comments

## worships テーブル

| Column | Type   | Options                       |
| ------ | ------ | -----------                   |
| user| integer| null: false, foreign_key: true|
| text   | string | null: false                   |



### Association

- has_many :comments
- belongs_to :user



## comments テーブル

| Column | Type          | Options                        |
| ------ | ----------    | ------------------------------ |
| user         | integer | null: false, foreign_key: true |
| worship   | integer | null: false, foreign_key: true |
| text         | text    | null: false                    |

### Association

- belongs_to :worship
- belongs_to :user

