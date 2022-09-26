# README

## users テーブル

| Column             | Type   | Options                  |
| ------------------ | ------ | ------------------------ |
| name               | string | null: false              |
| email              | string | null: false, unique: true|
| encrypted_password | string | null: false              |
| last_name          | string | null: false              |
| first_name         | string | null: false              |
| last_name_kana     | string | null: false              |
| first_name_kana    | string | null: false              |
| birthday           | date   | null: false              |

### Association

- has_many :items
- has_many :orders

##  テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| name            | string     | null: false                    |
| content         | text       | null: false                    |
| category        | string     | null: false                    |
| status          | string     | null: false                    |
| shipping_cost   | string     | null: false                    |
| shipping_area   | string     | null: false                    |
| shipping_days   | string     | null: false                    |
| price           | integer    | null: false                    |
| commission      | integer    | null: false                    |
| profit          | integer    | null: false                    |
| user            | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- has_one :order
- has_one :address

## orders テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| user              | references | null: false, foreign_key: true |
| item              | references | null: false, foreign_key: true |
| card_number       | integer    | null: false,                   |
| card_expirymonth  | integer    | null: false,                   |
| card_expiryyear   | integer    | null: false,                   |
| card_cvc          | integer    | null: false,                   |

### Association

- belongs_to :user
- belongs_to :item
- has_one :address

## addresses テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| order         | references | null: false, foreign_key: true |
| postcode      | string     | null: false,                   |
| prefecture_id | string     | null: false,                   |
| city          | string     | null: false,                   |
| block         | text       | null: false,                   |
| building      | text       |                                |
| phone_number  | string     | null: false,                   |

### Association

- belongs_to :item
- belongs_to :order