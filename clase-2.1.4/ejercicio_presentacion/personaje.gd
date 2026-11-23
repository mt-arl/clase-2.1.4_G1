extends ColorRect

var rapidez: float = 220.0

@onready var inicio_x: float = position.x
@onready var inicio_y: float = position.y

func _process(delta: float) -> void:
	# R restaura las coordenadas de inicio.
	if Input.is_action_just_pressed("reiniciar_posicion"):
		position.x = inicio_x
		position.y = inicio_y
		return

	# Calcula cuánto avanza el personaje en este fotograma.
	var paso = rapidez * delta

	if Input.is_action_pressed("mover_izquierda"):
		position.x -= paso
	elif Input.is_action_pressed("mover_derecha"):
		position.x += paso
	elif Input.is_action_pressed("mover_arriba"):
		position.y -= paso
	elif Input.is_action_pressed("mover_abajo"):
		position.y += paso

	# Mantiene el cuadrado dentro del área de movimiento.
	position.x = clampf(position.x, 24.0, 744.0)
	position.y = clampf(position.y, 112.0, 424.0)
