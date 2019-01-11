# Control Structures

Ruby tambien posee las estrucuturas comunes, como son:

* if (declaraciones)
* while (ciclos)

Pero como ruby quiere *programadores productivos y felices*

#### Ejemplos de los `if`

```
point = 100
if point > 0 and point < 10
  puts '¡Muy poco puntaje, sigue entrenando!'
elsif point >= 10 and point < 20
  puts '¡Todavia puedes lograr mas!'
else
  puts "¡Eres un barbaro, ya tienes #{point} puntos!"
end

today = Time.now
if today.saturday?
  puts "Do chores around the house"
elsif today.sunday?
  puts "Relax"
else
  puts "Go to work"
end
```

En comparación a otros lenguajes, menos parentesis, olvidate de las
llaves, bueno y otros beneficios que veremos en el camino.

Pero ahora miremos otro ejemplo de if, mas sencillo:

```
if point > 20
  puts "¡Eres un barbaro, ya tienes #{point} puntos!"
end
```

Normal, ahora lo podemos volver mas sencillo:

```
puts "¡Eres un barbaro, ya tienes #{point} puntos!" if point > 20
```

En una sola linea, con una sintaxis similar y un lenguaje mas natural
(si manejas el ingles es mucho mas natural)


#### Ejemplos de los WHILE

```
point = 0
while point <= 20
  puts point = point + 1
end
```

Igual sin parentesis, ni punto y coma, pero mejor aún, si lo ponemos de
la siguiente:

```
point = 0
puts point = point + 1 while point <= 20
```

un loop sencillo

bueno vamos a intentar con example.rb
