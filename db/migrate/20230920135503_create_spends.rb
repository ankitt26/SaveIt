class CreateSpends < ActiveRecord::Migration[7.0]
  def change
    create_table :spends do |t|
      t.string :author_id, null: false
      t.string :name, null: false
      t.integer :amount, null: false
      t.timestamps
    end
  end
end
