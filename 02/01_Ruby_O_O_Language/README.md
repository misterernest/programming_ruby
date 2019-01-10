# RUBY ES UN LENGUAJE ORIENTADO A OBJETOS

Ruby es un lenguaje geniuno orientado a objetos, lo que manipules es un objeto y
todo lo que conlleva trabajar con objetos, como es el acceso a metodos y
atributos.


para poder instanciar un objeto se realiza de la siguiente manera:
 ```
song1 = Song.new("Balada de Ruby")
song2 = Song.new("Paseando con Ruby")
```

Si ademas quieres saber que tipo de objeto es, existe el metodo **class** que
nos indica el tipo de objeto que es el objeto actual:

```
irb(main):008:0> ejemplo = "Cadenad de texto"
=> "Cadenad de texto"
irb(main):009:0> ejemplo.class
=> String
```

Si se dan cuenta una cadena de texto fue tratada como un objeto y se reviso que tipo de clase era, un String.

Volviendo al ejemplo de `Song` observamos que las dos instancias derivan de la misma clase, pero con caracterisitcas unicas. Cada una tiene un identificador unico y cada una mantiene el estado del objeto.

Para invocar metodos simplemente se envia el mensaje en el contexto del objeto, esto sucede de una manera muy sencilla.

Por ejemplo:

```
irb(main):001:0> puts "aprendiendo ruby".length
16
=> nil
irb(main):002:0> puts "misterernest".index("t")
3
=> nil
irb(main):004:0> puts 74.even?
true
=> nil
```

Para poder visualizar el ejemplo del archivo example.rb debemo digitar el siguiente comando en la misma ubicación que se encuentra el archivo, pero sin abrir `irb` simplemente desde consola:

`ruby example.rb`

Para comenzar a familiarizarse pueden crear otro objeto con los mismos datos y
revisar su id, tambien pueden revizar sus metodos y ver que pasa.
