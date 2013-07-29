class AddIsRiceToProduct < ActiveRecord::Migration
  def change
    add_column :products, :is_rice, :boolean
  end
end
