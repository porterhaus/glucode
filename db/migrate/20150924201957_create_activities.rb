class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.belongs_to :trackable, :polymorphic => true
      t.string :name, null: false
      t.string :direction, null: false
      t.integer :user_id, null: false
      t.float :value, null: false
      t.timestamps null: false
    end
    add_index :activities, [:trackable_id, :trackable_type]
    add_index :activities, :user_id
  end
end
