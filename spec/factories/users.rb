FactoryBot.define do
  factory :user do
    last_name               {'kaneki'}
    first_name1             {'ken'}
    first_name2             {'toka'}
    anniversary             {'2019/09/01'}
    area                    {'北海道'}
    email                   {Faker::Internet.free_email}
    password                {Faker::Internet.password(min_length: 6)}
    password_confirmation   {password}
    image                   {Faker::Lorem.sentence}
  end
end
