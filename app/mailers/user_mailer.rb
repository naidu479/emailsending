class UserMailer < ActionMailer::Base
  default :from => "naidu479@gmail.com"
  def registration_confirmation(user)
    mail(:to => user.email, :subject => "Registered")
  end
end
