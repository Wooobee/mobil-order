class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :forname
      t.string :street
      t.string :city
      t.integer :zip
      t.string :email
      t.string :order_type
      t.string :mobile

      t.timestamps
    end
  end
end
