require 'rubygems'
require 'nokogiri' 
require 'open-uri'

class Mail_valdemarne

	 def get_the_email__of_a_townhal_from_its_webpage(lien) 
  		tolotra = Nokogiri::HTML(open("#{lien}"))
 		tolotra.css('tr:nth-child(6) > td.hotelvalue > a').text
	 end

	 def get_all_the_urls_of_mairie_townhalls
 		tolotra = Nokogiri::HTML(open("https://www.annuaire-administration.com/mairie/departement/val-de-marne.html"))
 		tolotra.css('table.departement_commune a').map do |url| url = url['href'] 
 		end
	 end

	def email
		get_all_the_urls_of_mairie_townhalls.map {|lien| get_the_email__of_a_townhal_from_its_webpage(lien)}
	end

	def get_all_the_name_of_departement_townhalls
 		tolotra = Nokogiri::HTML(open("https://www.annuaire-administration.com/mairie/departement/val-de-marne.html"))
 		tolotra.css('table.departement_commune a').map do |url| url.text
 		end
	end
	
	def name_and_mail
		get_all_the_name_of_departement_townhalls.zip(email).to_h
	end
end
class Mail_seinesaintdenis

	 def get_the_email__of_a_townhal_from_its_webpage(lien) 
  		tolotra = Nokogiri::HTML(open("#{lien}"))
 		tolotra.css('tr:nth-child(6) > td.hotelvalue > a').text
	 end

	 def get_all_the_urls_of_mairie_townhalls
 		tolotra = Nokogiri::HTML(open("https://www.annuaire-administration.com/mairie/departement/seine-saint-denis.html"))
 		tolotra.css('table.departement_commune a').map do |url| url = url['href'] 
 		end
	 end

	def email
		get_all_the_urls_of_mairie_townhalls.map {|lien| get_the_email__of_a_townhal_from_its_webpage(lien)}
	end

	def get_all_the_name_of_departement_townhalls
 		tolotra = Nokogiri::HTML(open("https://www.annuaire-administration.com/mairie/departement/seine-saint-denis.html"))
 		tolotra.css('table.departement_commune a').map do |url| url.text
 		end
	end
	
	def name_and_mail
		get_all_the_name_of_departement_townhalls.zip(email).to_h
	end
end
class Mail_hautsdeseine

	 def get_the_email__of_a_townhal_from_its_webpage(lien) 
  		tolotra = Nokogiri::HTML(open("#{lien}"))
 		tolotra.css('tr:nth-child(6) > td.hotelvalue > a').text
	 end

	 def get_all_the_urls_of_mairie_townhalls
 		tolotra = Nokogiri::HTML(open("https://www.annuaire-administration.com/mairie/departement/hauts-de-seine.html"))
 		tolotra.css('table.departement_commune a').map do |url| url = url['href'] 
 		end
	 end

	def email
		get_all_the_urls_of_mairie_townhalls.map {|lien| get_the_email__of_a_townhal_from_its_webpage(lien)}
	end

	def get_all_the_name_of_departement_townhalls
 		tolotra = Nokogiri::HTML(open("https://www.annuaire-administration.com/mairie/departement/hauts-de-seine.html"))
 		tolotra.css('table.departement_commune a').map do |url| url.text
 		end
	end
	
	def name_and_mail
		get_all_the_name_of_departement_townhalls.zip(email).to_h
	end
end
 Mail_valdemarne.new.name_and_mail
 Mail_seinesaintdenis.new.name_and_mail
 Mail_hautsdeseine.new.name_and_mail