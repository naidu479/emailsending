ActionMailer::Base.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 465,
    :tls 					=> 'true',
    :domain               => "gmail.com",
    :user_name            => "naidu479",
    :password             => "8951553002",
    :authentication       => "plain",
    :enable_starttls_auto => true
}