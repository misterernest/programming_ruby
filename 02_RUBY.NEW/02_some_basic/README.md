# SOME BASIC RUBY

>Ruby está diseñado para la productividad y la diversión del desarrollador.

Aunque esto suene muy romantico,es cierto, por lo menos esa es era la filosofia
*Yukihiro Matsumoto* en el momento de su creación.

Por ende vamos a abordar su partes mas básicas y por ende ver lo interesante de
su filosofia.


Empezemos con algo sencillo:

```
def say_goodnight(name)
  result = "Good night, " + name
  return result
end
```

Esto no es complejo y en comparación a otros lenguajes no necesita las llaves `{}`,
Solo el end, tampoco declarar variables ya que no es fuertemente tipado.

y lo podemos probar:

```
irb(main):009:0> puts say_goodnight("java")
Good night, java
=> nil
irb(main):010:0> puts say_goodnight("PHP")
Good night, PHP
=> nil
```

Pero hablando de simplificar, hagamoslo:

#### Primero esto:

```
def say_goodnight(name)
  result = 'Good night, ' + name
  return result
end
```

#### Podemos lograr esto:

```
def say_goodnight(name)
  result = 'Good night, ' + name
end
```
Gracias a que `return` esta implicito

#### Tambien podemos pasar a esto:

```
def say_goodnight(name)
  "Good night, #{name}"
end
```

Ya que maneja array string, con las comillas dobles se puede interpolar, y tampoco asignarlo a una variable.

#### Y por ultimo lograr esto:

```
def say_goodnight name
  "Good night, #{name}"
end
```

Porque no exige colocar los parametros dentro de una parentesis.


Puedes probar el archivo `example.rb` con el comando:
*Debes estar ubicado en la misma posición del archivo para que funcione*

`ruby example.rb`
