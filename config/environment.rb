# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

if Rails.env.development?
  ActionMailer::Base.default_url_options = { host: ENV["HOST"], port: 3000 }
elsif Rails.env.production?
  ActionMailer::Base.default_url_options = { host: ENV["HOST"] }
end

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  domain:               ENV["DOMAIN"],
  user_name:            ENV["gmail_username"],
  password:             ENV["gmail_password"],
  authentication:       'plain',
  enable_starttls_auto: true
}