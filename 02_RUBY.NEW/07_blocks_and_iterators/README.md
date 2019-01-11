# BLOCK AND ITERATORS

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

Si se dan cuenta los `yield` fueron reemplazados por el bloque `{puts 'Aquí val el block'}`(metodo)


Esto puede llegar a tener varias alcances, como: delegar metodos, tratar un metodo como un objeto, hacer lambda, entre otras. Pero por ahora vamos solo a conocer lo básico.
