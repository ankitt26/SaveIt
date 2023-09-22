class CategorySpend < ApplicationRecord
  belongs_to :spend
  belongs_to :category

  validates :category, presence: true
  validates :spend, presence: true
end
