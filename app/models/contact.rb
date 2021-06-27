class Contact < ApplicationRecord

  belongs_to :user
  belongs_to :staff_member

  validates :text, presence: true
end
