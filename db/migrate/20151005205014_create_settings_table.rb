class CreateSettingsTable < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.integer :num_of_feed_entries
      t.references :user, index: true
    end
    add_foreign_key :settings, :users
  end
end
