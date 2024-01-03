# テーブル設計
## users テーブル
| Column                 | Type     | Options                   |
| -----------------------| -------- | ------------------------- |
| nickname               | string   | null: false               |
| email                  | string   | null: false, unique: true |
| encrypted_password     | string   | null: false               |
| gender_id              | integer  | null: false, unique: true |
| age                    | integer  | null: false, unique: true |
| occupation_id          | integer  | null: false, unique: true |
| family_id              | integer  | null: false, unique: true |

### Association

- has_many :problem_users
- has_many :problems, through: :problem_users
- has_many :comments

## problems テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| problem_title          | string     | null: false                    |
| message                | text       | null: false                    |
| standpoint_id          | integer    | null: false                    |
| concreteness_id        | integer    | null: false                    |
| user                   | references | null: false, foreign_key: true |


### Association

- has_many :problem_user
- has_many :users, through: :problem_users
- has_many :comments


## problem_users テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| problem | references | null: false, foreign_key: true |

### Association

- belongs_to :problem
- belongs_to :user


## comments テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| content       | string     |                                |
| user          | references | null: false, foreign_key: true |
| problem       | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :problem