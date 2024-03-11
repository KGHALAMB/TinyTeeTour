extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body is TileMap:
		var tile_coords = body.get_coords_for_body_rid(body_rid)
		
