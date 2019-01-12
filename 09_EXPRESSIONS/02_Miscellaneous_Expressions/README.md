# Assignment
### Parallel Assignment

En cualquier lenguaje para intercambiar valores entre dos varialbes, se necesita un tercera variable, algo así como esto:

```
int a = 1
int b = 2
int temp
temp = a
a = b
b = temp
```
Y listo
`a = 2` y `b = 1` y `temp = 1` aunque `temp` ya no nos importa.

Con RUBY, ahora es mucho mas facil:

**Primero asignemos inicializemos y declaremos variables:**
```
a, b = 1, 2
```
ahora `a =1 ` y `b = 2`

y ahora cambiemos valores:
```
a, b = b, a
```
Y listo
`a = 2` y `b = 1` y `temp` nunca lo usamos, gracias a a la asignación en paralelo.

veamos otro ejemplo y no confundirnos con otro tipo de asignaciones faciles que tiene RUBY:

**Ruby tiene lo siguiente:**

```
a = 1, 2, 3, 4
=> a = [1, 2, 3, 4]
```

pero si en la variable lo acompaño de una compa, haria la asignación en paralela

```
a, = 1, 2, 3, 4
=> a = 1
```

o algo así:

```
a, b = 1, 2, 3, 4
=> a = 1
=> b = 2
```

*un programador mas productivo y feliz!!!*
