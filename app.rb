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
require 'gmail'

text = File.open('townhall.json', "r")
scrapper = JSON.parse(text)
gmail = Gmail.connect(ENV["gmail_user"], ENV["gmail_password"])

gmail.logout

#add_to_json(files)
