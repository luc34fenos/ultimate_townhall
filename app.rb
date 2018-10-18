$:.unshift File.expand_path("./../lib", __FILE__)

require 'google_drive'
require 'json'
require 'nokogiri'
require 'open-uri'
require 'csv'
require 'app/townhalls_added_to_db'
require 'app/townhalls_follower'
require 'app/townhalls_mailer'
require 'app/townhalls_scrapper'
require 'dotenv'
Dotenv.load

require 'views/index'

=begin
mail_x = Mail_valdemarne.new.name_and_mail
add_to_json(mail_x)
end
mail_y = Mail_seinesaintdenis.new.name_and_mail
add_to_json(mail_y)
end
mail_z = Mail_hautsdeseine.new.name_and_mail
add_to_json(mail_z)
end
=end

gmail.logout

# gmail = Gmail.connect(ENV["gmail_user"], ENV["gmail_password"])

# mail_send('luc34fenos98@gmail.com', gmail)

# gmail.logou

#add_to_json(files)

require 'views/done'
