ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => ENV['SENDGRID_USERNAME'],
  :password       => ENV['SENDGRID_PASSWORD'],
  :domain         => 'heroku.com'
}
ActionMailer::Base.delivery_method = :smtp

#ActionMailer::Base.smtp_settings = {
#  :address              => "smtp.gmail.com",
#  :port                 => 587,
#  :domain               => "http://erp-project.herokuapp.com",
#  :user_name            => "james@kyokushin.com.ph",
#  :password             => "12345678",
#  :authentication       => "plain",
#  :enable_starttls_auto => true
#}
#
#ActionMailer::Base.default_url_options[:host] = "http://erp-project.herokuapp.com"