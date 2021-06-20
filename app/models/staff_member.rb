class StaffMember < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :image
  # belongs_to :user

  with_options presence: true do
    validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
    validates :area
    validates :since
    validates :text
    validates :image
    with_options format: { with: /\A[a-zA-Z]+\z/ } do
      validates :last_name
      validates :first_name
    end
  end
end
