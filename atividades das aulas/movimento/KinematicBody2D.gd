extends KinematicBody2D

func _physics_process(delta):
	var vector_moviment=Vector2.ZERO
	vector_moviment.x = Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
	vector_moviment.y = Input.get_action_strength("ui_down")-Input.get_action_strength("ui_up")
	
	move_and_slide(vector_moviment*100)
