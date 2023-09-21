class CreateSpends < ActiveRecord::Migration[7.0]
  def change
    create_table :spends do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name, null: false
      t.integer :amount, null: false
      t.timestamps
    end
  end
end
