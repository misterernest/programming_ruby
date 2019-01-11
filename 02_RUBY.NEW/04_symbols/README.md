# SYMBOLS


Los symbols son muy sencillos, manejan una particularidad, que ayuda a ahorrar memoria, es la siguiente:

veamoslo con un ejemplo, en dos escenarios:

* hagamos lo normal

```
irb(main):041:0> color = "rojo"
=> "rojo"
irb(main):042:0> color.object_id
=> 47236845923280
irb(main):043:0> "rojo".object_id
=> 47236845891120
irb(main):044:0>
```
si nos fijamos se declarar una variable `color` con un string "rojo", pero observamos que cuando preguntamos por el `object_id` es diferente para cada uno.

* ahora manejemos un symbol para una tarea similar:

```
irb(main):044:0> otro_color = :rojo
=> :rojo
irb(main):045:0> otro_color.object_id
=> 1162588
irb(main):046:0> :rojo.object_id
=> 1162588
irb(main):047:0>
```
Si nos fijamos se declara una variable `otro_color` con un symbol `:rojo`, pero que sucede cuando preguntamos por el `object_id`, nos arroja el mismo para los dos numeros, no crea un objeto por cada uno, si no que es el mismo objeto, osea el symbol apunta hacia el mismo espacio en memoria que la variable.

No hay que declararla antes de usarla, es importante, así ayuda, evitando declaraciones, como esta:

```
NORTH = 1
EAST = 2
SOUTH = 3
WEST = 4
```
Para luego llamarlo así:

```
walk(NORTH)
look(EAST)
```
Cuando solo lo que necesitas es la dirección, entonces un ejemplo seria:

```
walk(:north)
look(:east)
```

Y la funcion mostraria algo como esto:

```
def walk(direction)
  if direction == :north
    # ...
  end
end
```

Nos ahorra un paso, *un programador mas productivo y feliz!!!*



En los hash dijimos que pueden manejar cualquier tipo de variable en el indice, tambien se podria manejar un simbolo, de la siguiente manera:

```
inst_section = {
  :cello => 'string',
  :clarinet => 'woodwind',
  :drum => 'percussion',
  :oboe => 'woodwind',
  :trumpet => 'brass',
  :violin => 'string'
}
```

Pero recordemos: *un programador mas productivo y feliz!!!*

entonces mejor declararlo así:

```
inst_section = {
  cello: 'string',
  clarinet: 'woodwind',
  drum: 'percussion',
  oboe: 'woodwind',
  trumpet: 'brass',
  violin: 'string'
}
```

En vez de digitar los dos puntos `:` al principio del symbol, lo digitamos al final y no digitamos el rocket `=>` y es mucho mas facil.

La sintaxis para acceder es la siguiente:

```
inst_section[:cello]
```
