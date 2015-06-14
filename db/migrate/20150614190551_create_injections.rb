class CreateInjections < ActiveRecord::Migration
  def change
    create_table :injections do |t|
      t.float :num_of_units_taken
      t.string :category
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :injections, :users
  end
end
