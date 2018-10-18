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


# gmail = Gmail.connect(ENV["gmail_user"], ENV["gmail_password"])

# mail_send('luc34fenos98@gmail.com', gmail)

# gmail.logout

mail_x = Mail_valdemarne.new.name_and_mail
File.open("/home/tolotra/Bureau/ultimate_townhall/db/townhalls.JSON","w") do |f|
f.write(mail_x.to_json)
end
mail_y = Mail_seinesaintdenis.new.name_and_mail
File.open("/home/tolotra/Bureau/ultimate_townhall/db/townhalls.JSON","w") do |l|
l.write(mail_y.to_json)
end
mail_z = Mail_hautsdeseine.new.name_and_mail
File.open("/home/tolotra/Bureau/ultimate_townhall/db/townhalls.JSON","w") do |m|
m.write(mail_z.to_json)
end
#add_to_json(files)
