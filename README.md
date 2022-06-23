# README

# テーブル設計

##  funsテーブル

| Column             | Type       | Options     |
| ------             | ------     | ----------- |
| email              | string     | null: false, unique: true |
| encrypted_password | string     | null: false |
| last_name          | string     | null: false |
| first_name         | string     | null: false |
| gender_id          | integer    | null: false |
| birth_date         | date       | null: false | 


### Association

- has_many :relationships
- has_many :messages
- has_one :value_creater
- has_one :address


##  value_creatersテーブル

| Column                 | Type       | Options                                     |
| -----------------------| -----------| --------------------------------------------|
| name_workplace         | string     | null: false                                 |
| address_workplace      | text	      | null: false                                 |
| introduction           | text       | null: false                                 |
| fun                    | references | null: false, foreign_key: true, unique:true |

### Association

- has_many :relationships
- has_many :messages
- belongs_to :fun


## addressesテーブル

| Column        | Type       | Options                        |
| -------       | ---------- | ------------------------------ |
| postal_code   | string     | null: false                    |
| prefecture_id | integer    | null: false                    |
| city          | string     | null: false                    |
| addresses     | string     | null: false                    |
| building      | text       | -----------                    |
| phone_number  | string     | null: false                    |
| fun           | references | null: false, foreign_key: true |


### Association

- belongs_to :fun


## messagesテーブル

| Column        | Type       | Options                        |
| -------       | ---------- | ------------------------------ |
| fun           | references | null: false, foreign_key: true |
| value_creater | references | null: false, foreign_key: true |
| type_id       | integer    | null: false                    |
| content       | text       | null: false                    |


### Association

- belongs_to :fun
- belongs_to :value_creater


## relationshipsテーブル

| Column           | Type    | Options     |
| -------          | --------| ----------- |
| fun_id           | integer | null: false |
| value_creater_id | integer | null: false |

### Association

- belongs_to :fun, class_name: "Fun"
- belongs_to :value_creater, class_name: "ValueCreater"
