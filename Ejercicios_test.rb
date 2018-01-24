## Métodos

### Ejercicio 1
puts '*******************************************************************'
puts '*********************Ejercicio 1***********************************'
puts '*******************************************************************'
def par?(x)
  x % 2 == 0
end
puts "Ingrese un valor para indicar si es par o impar"
valor = gets.chomp.to_i
puts par?(valor)
puts "\n\n"



### Ejercicio 2
puts '*******************************************************************'
puts '*********************Ejercicio 2***********************************'
puts '*******************************************************************'

def random?
    result = [true, false].sample
end
puts (random?) ? 'si' : 'no'
puts "\n\n"


### Ejercicio 3
puts '*******************************************************************'
puts '*********************Ejercicio 3***********************************'
puts '*******************************************************************'

def check5?(numero)
   numero > 5
end
puts check5?(5)
puts check5?(6)
puts "\n\n"

### Ejercicio 4
puts '*******************************************************************'
puts '*********************Ejercicio 4***********************************'
puts '*******************************************************************'

def saludo(saludo)
  return saludo == 'Hola' ? "Hola Mundo" : "Hola #{saludo}"
end
puts saludo('Hola')
puts saludo('Heraldo')
puts "\n\n"

### Ejercicio 5
puts '*******************************************************************'
puts '*********************Ejercicio 5***********************************'
puts '*******************************************************************'

def pares(num1,num2)
  arr = []
  for i in num1..num2  do  arr.push(i) end
  return arr.select { |x| x.even? }
end
puts pares(2,10)
puts "\n\n"

### Ejercicio 6
puts '*******************************************************************'
puts '*********************Ejercicio 6***********************************'
puts '*******************************************************************'

def draw_line(size)
   '*' * size
end

def draw_lines(size)
  size.times { puts draw_line(size) }
end
draw_lines(10)
puts "\n\n"

### Ejercicio 7
puts '*******************************************************************'
puts '*********************Ejercicio 7***********************************'
puts '*******************************************************************'

def buscar_letra(string,caracter)
  return ( string.include? caracter ) ?
    "La letra #{caracter} existe en String #{string}" :
     "La letra #{caracter} NO existe en String #{string}"
end
cadena = 'Hola Mundo!'
caracter = 'ñ'
puts buscar_letra(cadena,caracter)
puts "\n\n"

### Ejercicio 8
puts '*******************************************************************'
puts '*********************Ejercicio 8***********************************'
puts '*******************************************************************'
puts "\n\n"
curso =['Hugo Fuchslocher','Felipe Andrés Mahana Palomer','Luis Rodríguez Peña','Claudio Daza de la Parra','Adrian Tapia Silva','Patricia Vera','Yannick Michel Brionne Delgado','Fernanda Jara Galleguillos','Franco Benedetti','Felipe Andrés Urtubia ','Heraldo Andrés Huerta Aravena','Arturo Duarte','Milenko Castillo','Daniel Yañez Avila','Daniel Fuentes','Ignacio Alfonso Troncoso Barra','Kevin Matias Francisco Lucero Gomez','Norman Alejandro Castro Flores','Roberto Galaz','Patricio Venegas Leiva','Matias Exequiel Rojas Espinoza']

# 1. Imprimir todos los elementos que excedan más de 5 caracteres.
puts '# 1. Imprimir todos los elementos que excedan más de 5 caracteres.'
curso.each{ |nombre| puts nombre if nombre.length > 5 }
puts "\n\n"

# 2. Crear un arreglo nuevo con todos los elementos en minúscula.
puts '2. Crear un arreglo nuevo con todos los elementos en minúscula.'
nuevo = []
curso.each{ |nombre| nuevo.push(nombre.downcase) }
print nuevo
puts "\n\n"

# 3. Crear un método que devuelva un arreglo con la cantidad de caracteres que tiene cada nombre.
puts '3. Crear un método que devuelva un arreglo con la cantidad de caracteres que tiene cada nombre.'

def caracter_arr(curso = [])
cant_car = []
curso.each{ |nombre| cant_car << [nombre,nombre.length] }
return cant_car
end
resultado = caracter_arr(curso)
puts "\n\n"
resultado.each{ |cantidad| puts "#{cantidad}"}



def porc?(porc) porc >=0 && porc <= 100 end

puts  porc?(a)
