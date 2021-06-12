class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :staff_members

  with_options presence: true do
    validates :last_name
    validates :first_name1
    validates :first_name2
    validates :area
  end
    
end
