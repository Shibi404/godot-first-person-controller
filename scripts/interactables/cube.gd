extends RigidBody3D

var is_held = false

func grab():
	is_held = true
	freeze = true

func drop():
	is_held = false
	freeze = false
