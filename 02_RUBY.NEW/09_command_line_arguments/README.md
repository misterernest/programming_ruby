# Command-Line Arguments

Cuando trabajas con RUBY desde linea de comandos, puedes pasar argumentos.

Caminos posibles para esto, hay 2:

1. Pasar parametros desde el llamado del archivo por `ARGV`:

```
ruby nombre_archivo.rb argumento1 argumento2 argumento3
```

Como si le hubieses pasado los siguientes argumentos:

```
["argumento1", "argumento2", "argumento3"]
```
<!--  TODO colocar ubicación de ARGF y su explicación-->
2. La segunda forma es `ARGF` que ya es procesamiento de archivso, o sus nombre, donde `ARGF`  es un tipo de objeto I/O. Lo cual lo veremos en una explicación mas a fondo de COMMAND-LINE ARGUMENTS, RUBY AND ITS WORLDch.
