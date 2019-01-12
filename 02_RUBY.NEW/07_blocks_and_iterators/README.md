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
