# programming_ruby
Theory and practical ruby exercises from scratch, based on the book Programming Ruby 1.9 &amp; 2.0


## Instalación de RUBY

 En este [link](https://www.ruby-lang.org/es/documentation/installation/) lo
 llevar a la instalación de ruby, les recomiendo rbenv, como manejador de
 instalación.


## Despues de instalar Ruby - CONSOLA

Desde la consola, si el ruby esta instalado correctamente y de manera global
en cualquier punto pueden digitar:

```
$ ruby -v
```

Y les mostrara algo similar:

```
$ ruby -v
$ ruby 2.4.1p111 (2017-03-22 revision 58053) [x86_64-linux]
```

Para poder disfrutar de digitar codigo **RUBY** existe **IRB** que es una consola
de pruebas que tiene  **RUBY** el cual significa *interactive ruby* y se ingresa
de la siguiente manera:

```
$ irb
```

Y mostrara algo similar a esto:
```
irb(main):001:0>
```

Ahora la puedes probrar con un ejemplo sencillo

`irb(main):001:0> puts "Hello ruby world"`

o tambien con:
```
irb(main):001:0> def sum(a, b)
irb(main):002:1> a + b
irb(main):003:1> end
=> :sum
irb(main):004:0> sum(5,4)
=> 9
```

Y para salir de la consola solo digitas:
```
irb(main):006:0> exit
➜  xxx git:(branch_1)
```

Bueno ahora si entremos un poco mas en el lenguaje, dentro de cada carpeta est dividido los temas, como una especie de capitulos, dentro de cada uno va a encontrar un archivo `README.md` y probablemente un archivo con extensión **rb**, algo así como `example.rb`, poco a poco vamos avanzando.

***Manos a la obra***

##CONTENIDO

2. `RUBY.NEWS`
* 1. `Ruby es un lenguaje orientado a objetos.`
  2. `Algunas cosas basicas de Ruby.`
  3. `Array y hashes`
  4. `Symbols`
  5. `Estructuras de control`
  6. `Expresiones regulares`
  7. `Bloques e iteradores`
  8. `Leyendo y escribiendo`
  9. `Argumentos en linea de comandos`
  <br>***NOTA:*** `En este punto ya vimos un vista general, ahora veamos una vista mas especifica`

3. `Next soon`
*
9. `EXPRESSIONS`
* 2. `Miscellaneous Expressions`
