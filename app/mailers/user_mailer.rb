class UserMailer < ActionMailer::Base
  default :from => "ravikishore479@gmail.com"
  def registration_confirmation(user)
    @user = user
    mail(:to => @user.email, :subject => "Registered")
  end
end
