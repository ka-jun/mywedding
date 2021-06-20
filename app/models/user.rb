class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # has_many :staff_members

  with_options presence: true do
    with_options format: { with: /\A[a-zA-Z]+\z/ } do
      validates :last_name
      validates :first_name1
      validates :first_name2
    end
    validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
    validates :area
  end
end
