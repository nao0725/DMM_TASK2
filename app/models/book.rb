class Book < ApplicationRecord
  validates :title,presence: true
  varidates :body,presence: true
end
