require 'gmail'

while true
	puts "bienvenue sur ultimate_townhall. \n c'est un superbe application \n et bah enjoi!!!!"
	
	scrapper = Hash.new(0)
	File.open('db/townhalls.JSON') do |text|
		scrapper = JSON.parse(text.read)
	end


	gmail = Gmail.connect(ENV["gmail_user"], ENV["gmail_password"])

	scrapper.each{|key, value|
		if ((value =~ /[@]/) != nil)
			mail_send(value, gmail, key)
		end
	}
	gmail.logout

	print "voulez vous re-lancer l'application? (yes, no): "
	reponse = gets.chomp.to_s
	break if reponse[0] == "n"
end