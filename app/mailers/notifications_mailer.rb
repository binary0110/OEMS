class NotificationsMailer < ActionMailer::Base

  default :from => "oemswebsite@oems.org.uk"
  default :to => "oemswebsite@oems.org.uk"

  def new_message(message)
    @message = message
    mail(:subject => "OEMS website: #{message.subject}")
  end

end