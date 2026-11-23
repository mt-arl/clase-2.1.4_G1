# Ejercicio en vivo sobre Input Map y acciones

- **Integrantes del Grupo 1:** Ariel Morillo, Matías Lugmaña y David Pilaguano
- **Subtema:** Input Map y acciones
- **Versión de Godot:** 4.7.2 (GDScript, renderizador Compatibilidad)

El objetivo es mover un cuadrado en cuatro direcciones usando acciones del Input Map. El script modifica directamente `position.x` o `position.y` y procesa una sola dirección por fotograma.

## Abrir el proyecto

1. En el gestor de Godot, selecciona **Importar** y elige [project.godot](project.godot).
2. Abre el proyecto, presiona **F5** y haz clic dentro de la ventana del juego.
3. Mueve el cuadrado con **WASD** o con las **flechas**. Pulsa **R** para volver al centro.

## Demostración en ocho minutos

Para escribir una parte en vivo, usa una copia de práctica y deja pendientes el evento de flecha derecha y la rama `elif` de `mover_derecha`.

1. **Minutos 0 a 2.** Abre [Main.tscn](Main.tscn). Muestra la escena 2D y el nodo `Personaje`, un `ColorRect` de 32 × 32. El fondo delimita el área y los rótulos explican los controles.
2. **Minutos 2 a 4.** Abre **Proyecto → Ajustes del proyecto → Mapa de entradas**. Muestra las acciones y agrega la flecha derecha a `mover_derecha` con el botón **+**. Explica que D y la flecha pueden activar la misma acción.

   | Acción | Tecla física | Tecla alternativa |
   | --- | --- | --- |
   | `mover_izquierda` | A | Flecha izquierda |
   | `mover_derecha` | D | Flecha derecha |
   | `mover_arriba` | W | Flecha arriba |
   | `mover_abajo` | S | Flecha abajo |
   | `reiniciar_posicion` | R | — |

3. **Minutos 4 a 6.** Abre [personaje.gd](personaje.gd) y explica `paso = rapidez * delta`. El paso es la distancia que recorre el personaje en un fotograma. Muestra que restar a X mueve el cuadrado a la izquierda y completa la rama de derecha sumando el paso a X.
4. **Minutos 6 a 8.** Ejecuta la escena. Compara D y la flecha derecha para mostrar que activan la misma acción. Después, pulsa R para volver al centro.

## Reconstruir la escena

1. Crea un proyecto 2D con un `Node2D` de raíz. Guarda la escena como `Main.tscn`.
2. En los ajustes del proyecto, fija el tamaño de la ventana lógica en **800 × 480**. Añade un `ColorRect` llamado `Personaje`, con posición **X = 384, Y = 268** y tamaño **32 × 32**. Si dibujas el fondo como otro `ColorRect`, colócalo antes del personaje, en **X = 24, Y = 112**, con tamaño **752 × 344**.
3. Crea las cinco acciones de la tabla y asigna sus teclas con el botón **+**. El ajuste de zona muerta queda en **0,25**. Las teclas de esta práctica dan una entrada completa al pulsarlas, por lo que el umbral se explica en el editor.
4. Adjunta [personaje.gd](personaje.gd) al cuadrado. Las líneas con `clampf()` corresponden a los bordes del área indicada en el paso 2. Marca `Main.tscn` como escena principal al ejecutar con **F5**.
