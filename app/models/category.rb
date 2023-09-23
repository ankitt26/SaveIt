class Category < ApplicationRecord
  belongs_to :user
  has_many :category_spends, class_name: 'CategorySpend'
  has_many :spends, through: :category_spends
  validates :name, presence: true
  validates :icon, presence: true
end

