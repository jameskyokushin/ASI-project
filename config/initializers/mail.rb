ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.gmail.com',
  :port           => '587',
  :authentication => :plain,
  :user_name      => 'james@kyokushin.com.ph',
  :password       => 123456,
  :domain         => 'http://erp-project.herokuapp.com',
	:enable_starttls_auto => true
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
