# Reto de siete minutos sobre Input Map

## Añade un modo de carrera

Parte de la demostración del grupo y añade una acción que permita correr mientras se mantiene **Shift izquierdo** o el **botón derecho del ratón**.

## Requisitos

1. Crea la acción `correr` en el **Mapa de entradas** y asígnale los dos controles. En el código, consulta la acción por su nombre.
2. Mientras el jugador mantenga uno de esos controles y pulse una dirección, el cuadrado debe moverse a **1,8 veces** la rapidez normal. Al soltar el control de carrera, debe recuperar la rapidez original.
3. Si se mantiene solo `correr`, el cuadrado debe permanecer quieto. Conserva el movimiento en cuatro direcciones con `position.x` y `position.y`, además del reinicio.

## Cómo saber si lo lograste

- Mantén **D**. Pulsa y suelta **Shift izquierdo** sin soltar D. El cuadrado debe acelerar y luego recuperar su rapidez. Haz la prueba lejos del borde.
- Repite con **W** y el **botón derecho del ratón**.
- Mantén solo **Shift izquierdo**. El cuadrado debe quedarse quieto. Comprueba también que **R** lo devuelve al centro.

Dedica **2 minutos** al mapa de entradas, **3 minutos** al script y **2 minutos** a comprobar el resultado.
