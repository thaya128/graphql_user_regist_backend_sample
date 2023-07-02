class Book < ApplicationRecord
  has_one :user
  validates :title, length: { maximum: 20 }
  validates :discription, length: { maximum: 1000 }
end
