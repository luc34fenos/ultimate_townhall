def add_to_json(text)
	File.open('db/townhalls.JSON').each{|f|
		f.write(text.to_json)
	}
end
