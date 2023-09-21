class Category < ApplicationRecord
  has_and_belongs_to_many :spends
  belongs_to :user
end
