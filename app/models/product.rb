require 'carrierwave/orm/activerecord'
class Product < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :line_items
  has_many :orders, :through => :line_items
  attr_accessible :description, :avatar, :price, :title, :user_id, :is_daily, :category_id, :is_rice
  mount_uploader :avatar, AvatarUploader
  
  validates :title, :user_id, :price, :category_id, :presence => true
  
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true

  validates :title, :length => {:minimum => 5}
  
  before_destroy :ensure_not_referenced_by_any_line_item
  
  private
            # ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item 
    if line_items.empty?
      return true 
    else
      errors.add(:base, 'Line Items present')
      return false 
    end
  end
end
