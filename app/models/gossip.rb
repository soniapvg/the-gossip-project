class Gossip < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { in: 3..25 }
  validates :content, presence: true, length: { in: 3..500 }
end
