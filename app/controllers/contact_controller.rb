class ContactController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    
    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      redirect_to(root_path, :notice => "Vielen Dank für Ihre Nachricht!")
    else
      flash.now.alert = "Bitte alle Felder ausfüllen."
      render :new
    end
  end

end