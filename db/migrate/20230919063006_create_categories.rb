class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name, null: false, default: ""
      t.string :icon, default: "https://rb.gy/2jgmv"
      t.timestamps
    end
  end
end
