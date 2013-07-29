class AddOptionTextToLineItem < ActiveRecord::Migration
  def change
    add_column :line_items, :is_rice, :integer, :default => 0
    add_column :line_items, :is_fries, :integer, :default => 0
  end
end
