class Spend < ApplicationRecord
  has_and_belongs_to_many :categories
  belongs_to :user

  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
