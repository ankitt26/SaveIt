class Spend < ApplicationRecord
  # has_and_belongs_to_many :categories
  # belongs_to :user

  belongs_to :user
  has_many :category_spends, class_name: 'CategorySpend'
  has_many :categories, through: :category_spends
  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
