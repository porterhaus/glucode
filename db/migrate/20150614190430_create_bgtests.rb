class CreateBgtests < ActiveRecord::Migration
  def change
    create_table :bgtests do |t|
      t.integer :value
      t.string :category
      t.string :time_of_day
      t.text :comments
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :bgtests, :users
  end
end
