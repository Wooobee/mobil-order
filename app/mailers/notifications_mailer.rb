class NotificationsMailer < ActionMailer::Base

  default :from => "noreply@mc-gyros.de"
  default :to => "super.michalis1973@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[YourWebsite.tld] #{message.subject}")
  end

end