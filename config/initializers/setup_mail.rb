ActionMailer::Base.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 465,
    :tls 					=> 'true',
    :domain               => "gmail.com",
    :user_name            => "ravikishore479",
    :password             => "9492963454",
    :authentication       => "plain",
    :enable_starttls_auto => true
}