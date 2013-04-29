module CartsHelper
  private
  
  def has_drinks
    drinks = false
    current_cart.line_items.each do |item|
      if Product.find(item.product_id).is_daily
        drinks = true
      end
    end
    drinks
  end 
end
