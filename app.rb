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

mail_x = Mail_valdemarne.new.name_and_mail
add_to_json(mail_x)

mail_y = Mail_seinesaintdenis.new.name_and_mail
add_to_json(mail_y)

mail_z = Mail_hautsdeseine.new.name_and_mail
add_to_json(mail_z)


require 'views/done'
