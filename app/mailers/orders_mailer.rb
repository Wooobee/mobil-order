class OrdersMailer < ActionMailer::Base

  default :from => "Order@mc-gyros.de"
  default :to => "super.michalis1973@gmail.com"
  #default :to => "manuel@stylizimo.de"

  def new_order(order)
    @order = order
    mail(:subject => "Neue Bestellung mein Freund")
  end
  
  
  def new_order_customer(order)
    @order = order
    mail(:subject => "Deine Bestellung bei MC-Gyros", :to => order.email)
  end

end