# README

# Staff_Members
| Column             | Type   | Options     | 
| ------------------ | ------ | ----------- | 
| email              | string | unique:true | 
| encrypted_password | string | null: false | 
| last_name          | string | null: false | 
| first_name         | string | null: false | 
| area               | string | null: false | 
| since              | date   | null: false | 
| text               | text   | null: false | 

### Association
has_many :tweets

# tweet
| Column | Type | Options     | 
| ------ | ---- | ----------- | 
| text   | text | null: false | 

### Association
belongs_to :staff_member


# user
| Column             | Type    | Options     | 
| ------------------ | ------- | ----------- | 
| email              | string  | null: false | 
| encrypted_password | string  | null: false | 
| last_name          | string  | null: false | 
| first_name1        | string  | null: false | 
| first_name2        | string  | null: false | 
| anniversary        | date    |             | 
| area               | integer | null: false | 

# tag