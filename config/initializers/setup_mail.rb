require 'net/smtp'
ActionMailer::Base.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 465,
    :tls 					=> 'true',
    :domain               => "gmail.com",
    :user_name            => "ravikishore479",
    :password             => "8951553002",
    :authentication       => :login,
    :enable_starttls_auto => true
}