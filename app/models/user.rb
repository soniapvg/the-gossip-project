class User < ApplicationRecord
  belongs_to :city, optional: true
  accepts_nested_attributes_for :city

  has_many :gossips

  has_secure_password

  validates :first_name, :last_name, :email, presence: true, length: { in: 1..75 }
  validates :password, presence: true, length: { in: 6..100 }
end
