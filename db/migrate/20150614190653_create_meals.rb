class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :carbohydrates
      t.text :description
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :meals, :users
  end
end
