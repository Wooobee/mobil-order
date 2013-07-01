class NotificationsMailer < ActionMailer::Base

  default :from => "noreply@mc-gyros.de"
  default :to => "manuel@stylizimo.de"

  def new_message(message)
    @message = message
    mail(:subject => "[YourWebsite.tld] #{message.subject}")
  end

end