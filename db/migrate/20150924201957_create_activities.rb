class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.belongs_to :subject, :polymorphic => true
      t.string :name, null: false
      t.string :direction, null: false
      t.integer :user_id, null: false
      t.timestamps null: false
    end
    add_index :activities, [:subject_id, :subject_type]
    add_index :activities, :user_id
  end
end
