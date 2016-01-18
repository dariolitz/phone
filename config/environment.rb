# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    :address => "smtp.web.de",
    :port => "587",
    :domain => "web.de",
    :user_name => "dario.litz@web.de",
    :password => "hooligan7",
    :authentication => "plain",
    :enable_starttls_auto => true
}
