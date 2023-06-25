class Book < ApplicationRecord
  validates :title, length: { maximum: 20 }
  validates :discription, length: { maximum: 1000 }
end
