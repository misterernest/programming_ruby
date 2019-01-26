# READ AND WRITING

Ruby cuenta con una gran libreria I/O. tenemos los output, como `puts`, `print`, que pueden ser usado en objetos I/O (Esto es para que mas adelante entiendas diferentes ejemplos y temas, que se trataran).

Tambien pueden ser los printf:

```
printf("Number: %5.2f, \nString: %s\n, 1.23, "hello")
```

Esto imprime:
```
Number:  1.23,
String: hello
=> nil
```

En este ejemplo primero lo que hace la primera cadena es indicar el formato de los datos que van ha ser recibidos:

`%5.2f` es un float <br>
`%s` es un String

y son reemplazados respectivamente con `1.23` que es un float y un `hello` que es una cadena.

nota: `\n` es una nueva linea.

La otra opción son lo input: `gets`

```
line = gets
print line
```

Con `gets` capturamos lo que se escriba desde el teclado, en el ejemplo anterior con print se está imprimiendo la variable `line`, que capturamos con el `gets`.

Ahora un ejemplo de `gets` y `printf` pero en un loop:

```
while line = gets
  printf("Se escribio: %s", line)
end
```
