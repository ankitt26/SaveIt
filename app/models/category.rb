class Category < ApplicationRecord
  # has_and_belongs_to_many :spends
  # belongs_to :user

  belongs_to :user
  has_many :category_spends, class_name: 'CategorySpend'
  has_many :spends, through: :category_spends
  validates :name, presence: true
end
