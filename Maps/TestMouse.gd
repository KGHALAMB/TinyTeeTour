extends Node2D

var mouse_position = null
var is_mouse_down := false
@onready var ball = $Ball

# Called when the node enters the scene tree for the first time.
func _ready():
	#ball.apply_impulse(Vector2(200,200))
	pass

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
				_mouse_released()
	if event is InputEventMouse and is_mouse_down:
		mouse_position = get_local_mouse_position()
	else:
		mouse_position = null
	queue_redraw()

func _draw():
	if mouse_position != null:
		draw_line(ball.position, mouse_position, Color.YELLOW, 6)
				

func _mouse_released():
	if mouse_position != null:
		var end_point = mouse_position
		var distance = ball.position.distance_to(end_point)
		if distance > 100:
			var direction = (end_point - ball.position).normalized()
			end_point = ball.position + direction * 100
		var forceX = -(end_point.x - ball.position.x) * 2
		var forceY = -(end_point.y - ball.position.y) * 2
		ball.apply_impulse(Vector2(forceX, forceY))
			
