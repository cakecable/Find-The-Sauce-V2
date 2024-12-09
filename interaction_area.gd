extends Area2D

func _on_body_entered(body):
	if body.name == "CharacterBody2D":
		body.interactable = self

func _on_body_exited(body):
	if body.name == "CharacterBody2D":
		body.interactable = null
