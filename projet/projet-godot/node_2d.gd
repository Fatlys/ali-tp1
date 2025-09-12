extends Node2D



func _on_rigid_body_2d_body_entered(body: Node) -> void:
	pass # Replace with function body.

	$RigidBody2D/HitSound.play()
