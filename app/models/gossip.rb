class Gossip < ApplicationRecord
  belongs_to :user
  accepts_nested_attributes_for :user, update_only: true

  validates :title, presence: true, length: { in: 3..25 }
  validates :content, presence: true
end
