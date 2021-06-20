FactoryBot.define do
  factory :staff_member do

    email                   {Faker::Internet.free_email}
    password                {Faker::Internet.password(min_length: 6)}
    password_confirmation   {password}
    last_name               {'yamada'}
    first_name              {'hanako'}
    area                    {'北海道'}
    since                   { 2020/01/01 }
    text                    {"昨年からフリーランスでプランナーとヘアメイクを担当しております"}
    image                   {Faker::Lorem.sentence}
  end

  after(:build) do |staff_member|
    staff_member.image.attach(io: File.open('public/test_image.jpg'), filename: 'test_image.jpg')
  end
end
