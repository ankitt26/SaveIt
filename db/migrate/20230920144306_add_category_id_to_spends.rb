class AddCategoryIdToSpends < ActiveRecord::Migration[7.0]
  def change
    add_column :spends, :category_id, :integer, null: false
  end
end
