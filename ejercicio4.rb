def show_stock_by_product
	lines = File.open('menu4.txt', 'r')
	new_lines = []
  lines.each { |line| new_lines.push(line.split(', ').map(& :chomp))}

  new_lines.each do |details|
    name = details.shift
    sum = get_sum(details)
    puts "El stock del producto #{name} es #{sum}"
  end
end

def get_sum(details)
  sum = 0
  details.each do |ele|
    unless ele == "NR"
      sum += ele.to_i
    end
  end
  return sum
end

def show_stock_by_store
  lines = File.open('menu4.txt', 'r')
  new_lines = []
  lines.each { |line| new_lines.push(line.split(', ').map(& :chomp))}
  i = 0
  sum = 0
  total_store = new_lines[0].size-1

    total_store.times do |e|
    stores =[]
    name = []
    sum = 0
    new_lines.each do |line|
      name << line.shift
      stores << line[e]

    end

    sum = get_sum stores
    print "El stock total de la tienda #{e} es #{sum} \n"

  end
  


#  puts total_store
=begin
  new_lines.each do |details|
    name = details.shift
    sum += details[i] 
    i += 1
  end
  puts sum
  puts "El stock en la tienda N°#{i+1} es #{sum}"
=end
end  

puts 'Bienvenido al Ejercicio 4'

option = 0

while option != 6 
  puts "\n"
  puts '1. Productos existentes'
  puts '2. Editar datos de una persona'
  puts '3. Eliminar una persona'
  puts '4. Eliminar una persona'
  puts '5. Eliminar una persona'
  puts '6. Salir'

  
  option = gets.chomp.to_i

  case option 
  when 1
    puts 'Seleccione una opción'
    puts 'a. Mostrar la existencia total por productos'
		puts 'b. Mostrar la existencia total por tienda'
		puts 'c. Eliminar una persona'
		puts 'd. Eliminar una persona'
		option1 = gets.chomp.to_s
		
		case option1 
		when 'a'
			show_stock_by_product
    when 'b'
      show_stock_by_store
		end			
  
  when 2
    

  when 3

  when 4
    
	when 5

  when 6
    puts 'Adios!'
  
  else
    puts 'Opción inválida, ingrese una opción correcta'
  end
end
