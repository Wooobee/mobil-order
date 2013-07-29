class Category < ActiveRecord::Base
  has_many :products
  attr_accessible :name, :is_drink
end
