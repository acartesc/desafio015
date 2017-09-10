def movies_word
	file = File.open('peliculas.txt', 'r')
	data = file.readlines.map(& :chomp)
	file.close
	movies = []

	data.each do |line|
		movies << line.split(' ')
	end
	sum = 0
	
	movies.each do |e|
		e.each {|i| sum += 1}
	end

	puts sum

end

movies_word