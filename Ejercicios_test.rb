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
puts random? ? 'si' : 'no'
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
puts "Hola Mundo"  if saludo == 'Hola'
end
saludo('Hola')
saludo('Heraldo')
puts "\n\n"

### Ejercicio 5
puts '*******************************************************************'
puts '*********************Ejercicio 5***********************************'
puts '*******************************************************************'

def pares(num1,num2)
  arr = []
  for i in num1..num2  do  arr.push(i) end
  puts arr.select { |x| x.even? }
end
puts "Ingrese Valores uno positivos y enteros"
valor = gets.chomp.split(' ').map(&:to_i)
pares(*valor) if valor.all?(&:positive?)  && !valor.empty?
puts "\n\n"

### Ejercicio 6
puts '*******************************************************************'
puts '*********************Ejercicio 6***********************************'
puts '*******************************************************************'

def draw_line(size)
  puts '*' * size
end

def draw_lines(size)
  size.times { draw_line(size) }
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
curso =['Hugo','Felipe','Luis','Claudio','Adrian','Patricia','Yannick','Fernanda','Franco','Felipe','Heraldo','Arturo','Milenko','Daniel','Daniel','Ignacio','Kevin','Norman','Roberto','Patricio','Matias']
puts "\n\n"
# 1. Imprimir todos los elementos que excedan más de 5 caracteres.
puts '# 1. Imprimir todos los elementos que excedan más de 5 caracteres.'
curso.each{ |nombre| puts nombre if nombre.length > 5 }
puts "\n\n"

# 2. Crear un arreglo nuevo con todos los elementos en minúscula.
puts '2. Crear un arreglo nuevo concant_car = [] todos los elementos en minúscula.'
nuevo = []
curso.each{ |nombre| nuevo.push(nombre.downcase) }
print nuevo
puts "\n\n"

# 3. Crear un método que devuelva un arreglo con la cantidad de caracteres que tiene cada nombre.
puts '3. Crear un método que devuelva un arreglo con la cantidad de caracteres que tiene cada nombre.'

def caracter_arr(curso)
cant_car = []
curso.each{ |nombre| cant_car << [nombre,nombre.length] }
return cant_car
end
resultado = caracter_arr(curso)
puts "\n\n"
resultado.each{ |cantidad| puts "#{cantidad}"}
