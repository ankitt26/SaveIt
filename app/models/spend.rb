class Spend < ApplicationRecord
  belongs_to :user
  has_many :category_spends, class_name: 'CategorySpend'
  has_many :categories, through: :category_spends

  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
