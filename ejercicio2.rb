def movie_lines
	file = File.open('peliculas.txt', 'r')
	data = file.readlines.map(& :chomp)
	file.close

	print data
end

movie_lines
