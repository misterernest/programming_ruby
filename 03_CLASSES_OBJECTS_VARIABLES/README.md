# Classes, Objects, and Variables

Ahora si vamos ingresar mas al mundo del desarrollo orientado a objetos. Veremos como crear clases y objetos en Ruby y las ventajas del lenguaje en pro de paradigma.

Vamos a aprender con un ejemplo:

El ejemplo se va ha basar en el manejo de una libreria de libros de segunda mano y hay que llevar el control de del inventario y su almacenamiento. Esto por medio del escaneo de codigos de barras y sus respectivos lectores. Esto lo que hace es almacenar en un CSV separados por coma, una fila por cada libro.

Cada fila puede contener:

ROW: ISBN del libro, precio y puede ser la fecha de ingreso.

`tut_classes/stock_stats/data.csv`
```
"Date","ISBN","Price"
"2013-04-12","978-1-9343561-0-4",39.45
"2013-04-13","978-1-9343561-6-6",45.67
"2013-04-14","978-1-9343560-7-4",36.95
```

Nuestro objetivo es tomar el CSV y trabajar para saber cuantos de cada titulo hay y tener la lista de precio y su total.

Un sistema orientado a objetos, hay que ver con que estas tratando. Cada tipo de cosa va ha ser una clase y cada cosa en una instancia de clase.

Cada fila representara una instancia de clase y la colección de todos los objetos representara todos los datos capturados.

Llamaremos BookInStock. (`Convensíon: Nombre de clases inician por UpperCase y los metodos por lowerCase`)

```
class BookInStock
end
```
Como instanciamos:

```
a_book = BookInStock.new
another_book = BookInStock.new
```

Tenemos dos objetos distintos de la clase `BookInStock`, con diferentes id, pero como distingues un objeto del otro. Lo mejor es inicializar el objeto con su metodo.

```
class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
end
```
`initialize` es un metodo especial, que se llama en el momento de la instancia.

Como la clase `BookInStock` en el metodo `initialize` recibe dos parametros, en la instancia se deben pasar:

para que las variables de instancia (variables de instancia estan precedidas de signo `@`), se inicialice, y se pasan las variables locales (las que inician en minuscula y separadas por `_` cuando tienen mas de una palabra y no tienen alcance por fuera del metodo).

expliquemos cada linea del codigo:

`class BookInStock` => define la clase

`def initialize(isbn, price)` => Define el metodo que recibe dos variables locales, `isbn` y `price`

`@isbn = isbn` => se le pasa los valores de las variables locales a variables de instancia

`@price = Float(price)` => lo mismo que la anterior, se pasa el valor de la variable local a la variable de instancia, pero en el `Float(price)`, se esta casteando, de tal manera que lo que reciba lo esta intentando convertir a numero flotante.

`end` finaliza el metodo `initialize`

`end` finaliza la clase `BookInStock`

Ahora instanciemoslo:

```
b1 = BookInStock.new("isbn1", 3)
p b1 # muestra los datos del objeto b1, algo como lo que sigue a continuación.
#<BookInStock:0x0055d81fd88c70 @isbn="isbn1", @price=3.0>

b2 = BookInStock.new("isbn2", 3.14)
p b2
b3 = BookInStock.new("isbn3", "5.67")
p b3

```

`Recuerda que el # lo que hace es comentar lo que este delante de el #, y es ignorado por el interprete de Ruby`

Si en ves de usar el metodo `p`, usaramos el metodo `puts`:

Haria algo como esto:

```
puts b1
#<BookInStock:0x0055d81fd88c70>
```

Solo mostraria el nombre de la clase y el identificador unico del objeto

Como el metodo puts, lo unico que hace es hacer un llamado del metodo `to_s`, si lo llegasemos a sobreescribir, esto seria lo que sucederia:
```
class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end
end
```

ahora llamamos el metodo puts:

```
puts b1
ISBN: isbn1, price: 3.0
=> nil
```

Ahora sigamos con el capitulo de 3.1 Objetos y atributos.
