class CategorySpend < ApplicationRecord
  has_many :spends
  has_many :categories
end
