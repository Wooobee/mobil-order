class AddPickupTimeToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :pickup_time, :string
  end
end
