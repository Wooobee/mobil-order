class AddIsDailyToProducts < ActiveRecord::Migration
  def change
    add_column :products, :is_daily, :boolean
  end
end
