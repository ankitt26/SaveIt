class CategorySpend < ApplicationRecord
  # has_many :spends
  # has_many :categories
  belongs_to :spend
  belongs_to :category

  validates :category, presence: true
  validates :spend, presence: true
end
