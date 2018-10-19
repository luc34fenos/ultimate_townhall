def add_to_json(text)
	File.open('db/email.JSON').each{|f|
		f.write(text.to_json)
	}
end
