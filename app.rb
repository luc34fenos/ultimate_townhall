require 'bundle'
bundle.require

$>UNSHIFT File.expand_path('./../lib', __FILE__)

require 'google_drive'
require 'json'
require 'nokogiri'
require 'oprn-uri'
require 'csv'
require 'app/townhall_added_to_db'
require 'app/townhall_follower'
require 'app/townhall_mailer'
require 'app/townhall_scrapper'


