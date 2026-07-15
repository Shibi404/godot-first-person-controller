extends RigidBody3D

var original_layer = 1
var original_mask = 1

func grab():
	print("Grabbed")

	freeze = true

	# Disable collisions while holding
	collision_layer = 0
	collision_mask = 0


func drop():
	print("Dropped")

	freeze = false

	# Re-enable collisions
	collision_layer = original_layer
	collision_mask = original_mask
