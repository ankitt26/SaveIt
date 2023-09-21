class CategorySpend < ApplicationRecord
  has_many :spends
  has_many :categories

  validates :category, presence: true
  validates :spend, presence: true
end
