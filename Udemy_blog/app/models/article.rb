class Article < ApplicationRecord
  validates :title, presence: true, length: {minimum: 2, maximum: 25}
  validates :description, presence: true
end
