extends Node3D

var nearby_object: RigidBody3D = null
var held_object: RigidBody3D = null

@onready var hold_point = $HoldPoint


func _process(_delta):

	if Input.is_action_just_pressed("grab"):

		# Grab
		if held_object == null and nearby_object != null:

			held_object = nearby_object

			held_object.grab()

			held_object.reparent(hold_point)

			held_object.position = Vector3.ZERO
			held_object.rotation = Vector3.ZERO

			print("Holding:", held_object.name)

		# Drop
		elif held_object != null:

			held_object.reparent(get_tree().current_scene)

			held_object.global_position = hold_point.global_position

			held_object.drop()

			print("Dropped:", held_object.name)

			held_object = null


func _on_area_3d_body_entered(body):

	if body is RigidBody3D and body.has_method("grab"):

		print("Entered:", body.name)

		nearby_object = body


func _on_area_3d_body_exited(body):

	if body == nearby_object:

		print("Exited:", body.name)

		nearby_object = null
