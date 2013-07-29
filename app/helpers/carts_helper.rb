module CartsHelper
  private
  
  def has_drinks
    drinks = false
    current_cart.line_items.each do |item|
      if item.product.category.is_drink
        drinks = true
      end
    end
    drinks
  end 
end
