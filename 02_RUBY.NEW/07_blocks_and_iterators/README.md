# BLOCK AND ITERATORS

### BLOCK
Es una de las particulares fortalezas de RUBY.

Se hace encerrando en llaves un trozo de codigo


`{ puts "Holaaaa!"}`

o en medio de un `do` y `end`

```
do
  club.enroll(person)
  person.socialize
end
```
puedes implementar callbacks, o pasar segementos de codigo, como java y C's function pero mas sencillo y tambien se puede implementar iteradores.

Pero como tal estos bloques no funcionan así, si lo copian y lo pegan en el `irb` no va a funcionar.


para esto son los `yield` que ejecutan estos bloques:

aquí un ejemplo de bloques y un uso muy sencillo, mas bien pensado en su sintaxis:

```
def call_block
  puts 'Start of method'
  yield
  yield
  puts 'End of methods'
end


call_block{puts 'Aquí val el block'}
```
la respuesta seria algo como estos:

```
Start of method
Aquí val el block
Aquí val el block
End of methods
=> nil
```

Si se dan cuenta los `yield` fueron reemplazados por el bloque `{puts 'Aquí val el block'}`(metodo anonimo)


Esto puede llegar a tener varias alcances, como: delegar metodos, tratar un metodo como un objeto, hacer lambda, entre otras. Pero por ahora vamos solo a conocer lo básico.

otro ejemplo un poco mas complejo:

```
def who_say_what
  yield('Dave', 'hello')
  yield('Andy', 'goodbye')
end
```

si lo llamamos con el siguiente bloque o metodo anonimo
```
who_say_what {|person, phrase| puts "#{person} say #{phrase}"}
```
esto arrojaria algo como esto:

```
Dave say hello
Andy say goodbye
```

Si nos fijamos es una llamada al metodo `who_say_what` y el parametro que se le pasa es el metodo anonimo,
y el metodo anonimo recibe los parametros que tiene el yield

Visto desde otra perspectiva es cuando hacemos este llamado  `who_say_what {|person, phrase| puts "#{person} say #{phrase}"}` lo que hace es como una una solicitud de invocación, para que yield llame el metodo anonimo, con los parametros que estan dentro del PIPE (`|`).

Recuerda revisar el `example.rb` modifica y prueba con el ejemplo.


### ITERATORS

Mientras que en C y JAVA y muchos otros lenguajes, los ciclos o loops son construidos dentro del lenguaje, en RUBY son simples metodos, que invoa el bloque 0 o mas veces:

Creamos un array:
```
animals = %w( ant bee cat dog )
```
Iteramos sobre el, en este caso solo imprimiendolo:
```
animals.each {|animal| puts animal }
```

imprime algo como esto:
```
ant
bee
cat
dog
```
dentro del each ya esta construido el ciclo, solo para ser implementado el metodo anonimo

**METODO MAP**

Es un metodo que se usa mucho, ya que este modifica la colección, y tambien esta `collect` que hace lo mismo que `map`
```
['H','A','L'].map {|x| x.succ}
```
```
['H','A','L'].collect {|x| x.succ}
```
**METODO INJECT**

este metodo tambien conocido como el *metodo obscuro* sirve para acumular un valor a traves del llamado de la colección.

pruebalo en tu consola estos ejemplos:

```
[1, 3, 5, 7].inject(0) {|sum, element| sum + element}
[1, 3, 5, 7].inject(1) {|operacion, element| operacion * element}
```

su expliación seria así:
[`coleccion`].inject(`valor de inicializacion del acumulador`) {|`valor que lleva el acumulador`, `elemento actual de la colección`| `operación, en este caso suma de acumulador + elemento`}

*Un tip: otra manera de hacer estos dos inject respectivamente es:*

```
[1, 3, 5, 7].inject{|sum, element| sum + element}
[1, 3, 5, 7].inject {|operacion, element| operacion * element}
```
El detecta de donde inicia esta operación que es muy común:

O mejor aun la siguiente manera de hacerlo mas sencillo es:

```
[1, 3, 5, 7].inject(:+)
[1, 3, 5, 7].inject(:*)
```
