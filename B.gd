extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	GameBoss.score += 60
	$AnimationPlayer.play("s")
	yield(get_tree().create_timer(2), "timeout")
	get_tree().change_scene("res://ColorRect.tscn")
	
