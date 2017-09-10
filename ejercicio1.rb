# Crear un método que reciba dos strings, este método creará un archivo index.html y
# pondrá como párrafo cada uno de los strings recibidos.

# This method receives to parragraphs as strings

def create_index(p1, p2)
  p1 = "<p> #{p1} </p>"
  p2 = "<p> #{p2} </p>"
  file = File.open('index.html', 'w')
  file.puts p1
  file.puts p2
  file.close
end

create_index('Hola', 'Inmundo')

# Crear un método similar al anterior, que además pueda recibir un arreglo. Si el
# arreglo no está vacío, agregar debajo de los párrafos una lista ordenada con cada
# uno de los elementos.

def create_ol(ol)
  file = File.open('index.html', 'a')
  return if ol.count.zero? # te saca del método si se cumple la condición
  file.puts '<ol>'
  ol.each{ |e| file.puts "<li> #{e} </li>" }
  file.puts '</ol>'
  file.close
end

order_list = %w[hola como estas tu?]

create_ol(order_list)

# Crear un tercer método que además pueda recibir un color. Agregar color de fondo
# a los párrafos.

def add_color(color)
back_color = "style='background_color:#{color}'"
file = File.open('index.html','r')
lines = file.readlines
new_lines = lines.map do |line|
  if line[1] == 'p'
    print line.split('<p')
    line = '<p '+ back_color + line.split('<p')[1]
  else
    line
  end
end
file.close
file = File.open('index.html','w')
file.puts new_lines
file.close
end

add_color('green')