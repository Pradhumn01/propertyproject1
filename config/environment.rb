# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    authentication: "plain",
    enable_starttls_auto: true,
   user_name: "pradhumn1701@gmail.com",
    password: "Pradhumn@123", 
    domain: "smtp.gmail.com",
    openssl_verify_mode: "none",
  }