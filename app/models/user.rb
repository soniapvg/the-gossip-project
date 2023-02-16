class User < ApplicationRecord
  belongs_to :city, optional: true
  accepts_nested_attributes_for :city

  has_many :gossips

  has_secure_password

  validates :email, presence: true
  validates :password, presence: true, length: { in: 6..25 }
end
