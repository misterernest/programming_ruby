# REGULAR EXPRESSIONS

Este es un tema clave en la programación, por ende no se le debe pasar a RUBY,
es una poderosa herramienta para trabajar con texto.

Esta es una herramienta para entender las expresiones regulares.

[rubular.com](https://rubular.com/)

A groso modo es un forma de buscar texto por medio de patrones.

como estos


* a time such as 12:34:56<br>
`/\d\d:\d\d:\d\d/`

* Perl, zero or more other chars, then Python<br>
`/Perl.*Python/`

* Perl, a space, and Python<br>
`/Perl Python/`

* Perl, zero or more spaces, and Python<br>
`/Perl *Python/`

* Perl, one or more spaces, and Python<br>
`/Perl +Python/`

* Perl, whitespace characters, then Python<br>
`/Perl\s+Python/`

* Ruby, a space, and either Perl or Python<br>
`/Ruby (Perl|Python)/`

Prueba cada una de las anteriores lineas en [rubular.com](https://rubular.com/) para ver que si funcione, el codigo lo pegas en el campo que tiene como etiqueta `Your regular expression:`

y el texto acompañado de viñeta lo pegas en el campo que tiene como etiqueta `Your test string:`

recuerda pegar la expresion regular con los slash (`/`) del principio y el fin.

Ahora probemos una expresion regular en RUBY:

`gets` sirve para caputar del teclado en consola.

En la linea `if line =~ /Perl|Python/` esta preguntando si el texto tiene en alguna parte *Perl* o *Python*.

```
line = gets
if line =~ /Perl|Python/
  puts "Scripting language mentioned: #{line}"
end
```

Prueba el codigo escribiendo algo con *Perl* o *Python* y luego sin ellas.

Así como hiciste en [rubular.com](https://rubular.com/)

bueno si quieres hay un `example.rb`  si quieres probar.
