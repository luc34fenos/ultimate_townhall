require 'app'

loop 
	puts "bienvenue sur ultimate_townhall. \n c'est un superbe application \n et bah enjoi!!!!"
	print "voulez vous lancer l'application? (yes, no): "
	reponse = gets.chomp.to_s
	break if reponse[0] == "n"
	scrapper.each{|key, value| 
		mail_send(value, gmail)
	}
	
end