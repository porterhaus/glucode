class AddValueToActivity < ActiveRecord::Migration
  def change
    add_column :activities, :value, :integer
  end
end
