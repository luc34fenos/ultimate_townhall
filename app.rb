require 'dotenv'
Dotenv.load
require 'gmail'

$:.unshift File.expand_path("./../lib", __FILE__)

gmail = Gmail.connect(ENV["gmail_user"], ENV["gmail_password"])
require 'app/townhalls_mailer'
mail_send('luc34fenos98@gmail.com', gmail)

gmail.logout

#add_to_json(files)

#files.each{|email|
	#mail_send(email)
#}