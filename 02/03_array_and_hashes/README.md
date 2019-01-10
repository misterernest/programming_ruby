# ARRAYS AND HASHES

En ruby estas dos son colecciones indexadas y pueden almacenar cualquier tipo de valor.
 la diferencia esta en que en los array manejan un entero como llave (key),
 mientras que los hash soportan objetos como llave (key), la otra gran diferencia
 esta en la efectividad que hay en los ARRAYS para accederlos, mientras que los
 HASHES son mas flexibles, por su misma estructura.

## ARRAYS

#### Inicializar una array.

* Array vacio

`a = [] `

* Array con cuatro elementos diferentes.

`a = [1, 'cat', 1.5, true]`

* Una forma mas abreviada de declarar e inicializar un Array, con solo string como

`b = %w{carro bicicleta camion motocilceta avion}`

#### Modificar una Array

* Modificar el tercer valor

`a[2] = 3`

#### Acceder a una posición del Array

* Imprimir con puts el segundo valor

`puts a[1]`

* Imprimir con puts el primer valor, (inicia desde cero)

`puts a[0]`

* Acceder a la ultima posición del Array
`puts a[-1]`

***Puedes probar con el array b que se creo en la forma rapida***

## HASHES

  Muy similar a un array pero en este puedes usar cualquier tipo de objeto para los indices.

```
  inst_section = {
    'cello'     => 'string',
    'clarinet'  => 'woodwind',
    'drum'      => 'percussion',
    'oboe'      => 'woodwind',
    'trumpet'   => 'brass',
    'violin'    => 'sting'
  }
```

para acceder a una posición se realiza por medio de la llave:

```
puts inst_section['cello']
```

***Ahora puedes probar el archivo example.rb, desde consola con ruby example.rb o lo puedes hacer desde ruby copiando y pegando para que veas como funciona***

*Recomiendo hacer diferentes tipos de pruebas, de lo ya aprendido, con estos arrays y estos hashes*
