class AddOptionTextToLineItem < ActiveRecord::Migration
  def change
    add_column :line_items, :is_rice, :integer
    add_column :line_items, :is_fries, :integer
  end
end
