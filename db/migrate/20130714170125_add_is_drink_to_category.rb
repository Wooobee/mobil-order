class AddIsDrinkToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :is_drink, :boolean
  end
end
