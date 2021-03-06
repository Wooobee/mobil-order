class Order < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy
  attr_accessible :city, :email, :forname, :mobile, :name, :order_type, :street, :zip, :pickup_time
  
  validates :name, :email, :order_type, :mobile, :presence => true
  
  def add_line_items_from_cart(cart) 
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end 
  end
  
  def total_price
    line_items.to_a.sum { |item| item.total_price }
  end
end
