extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

var mouse_position = null
var is_mouse_down := null
 @onready var ball = $Ball

func _input(event):
	
