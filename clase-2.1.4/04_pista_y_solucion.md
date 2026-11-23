# Pista y solución del reto para el Grupo 1

Ofrece la pista si un equipo se atasca. Muestra la solución durante el cierre.

## Pista

La acción `correr` determina cuánto se desplaza el personaje en cada fotograma. Las acciones de dirección determinan hacia dónde se desplaza.

## Solución

1. En **Proyecto → Ajustes del proyecto → Mapa de entradas**, crea la acción `correr`.
2. Añade **Shift izquierdo** como evento de tecla y el **botón derecho del ratón** como evento de ratón.
3. En [personaje.gd](ejercicio_presentacion/personaje.gd), sustituye `var paso = rapidez * delta` por este bloque dentro de `_process()`. Colócalo después del bloque de reinicio y antes de las condiciones de dirección.

   ```gdscript
   var paso = rapidez * delta
   if Input.is_action_pressed("correr"):
       paso *= 1.8
   ```

   Mantén las cuatro condiciones de movimiento, los límites del área y el reinicio. El paso se calcula en cada fotograma a partir de la rapidez normal de 220 px/s. Mantener `correr` lo multiplica por 1,8, lo que da 396 px/s en una dirección a plena rapidez. Si no hay una dirección pulsada, ninguna condición de movimiento modifica la posición.

4. Compara **D** con **D + Shift izquierdo**, y **W** con **W + clic derecho**. Al soltar Shift o el clic derecho, se debe recuperar la rapidez normal.
