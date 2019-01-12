# BLOCKS AND ITERATORS

#### ENUMERATORS -- EXTERNAL ITERATORS

Cuando tenemos una colección normalmente para recorrerla necesitamos varias lineas, para solo pasar y recordar la lógica y bueno, esto lo hacemos un montón.

En Ruby nos facilita recorrer estas colecciones con `ENUMERATORS -- EXTERNAL ITERATORS`
miremos el siguiente ejemplo

Primero creemos las colecciones
```
a = [ 1, 3, "cat" ]
h = { dog: "canine", fox: "vulpine" }
```

Creemos lo enumeradores, este lo realizamos con el metodo `to_enum` y lo asignamos a una variable, que se vuelve de tipo `Enumerators`, para que lleve el indice.
```
enum_a = a.to_enum
enum_h = h.to_enum
```
Ahora los podemos iterar externamente y por separado. Facil!!
Este mostrara la posicion `1` del array `a`
```
enum_a.next
=> 1
```
Este la primera llave valor
```
enum_h.next
=>[:dog, 'canine']
```
Y así sucesivamente
```
enum_a.next
=> 3
```
El valor que le sigue, el lo recordara para continuarlo.
```
enum_h.next
=>[:fox, 'vulpine']
```

Recuerda ver el archivo `example.rb` mira el ejemplo que tenemos!!.
