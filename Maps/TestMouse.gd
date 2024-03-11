extends Node2D

var mouse_position = null
var is_mouse_down := false
@onready var ball = $Ball

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.is_pressed():
				is_mouse_down = true
			else:
				is_mouse_down = false
	if event is InputEventMouse and is_mouse_down:
		mouse_position = get_local_mouse_position()
	else:
		mouse_position = null
	queue_redraw()

func _draw():
	if mouse_position != null:
		draw_line(ball.position, mouse_position, Color.YELLOW, 6)
				
