extends KinematicBody2D

var dialog=preload("res://Scence/DialogBox.tscn")
var vec=Vector2()

export var Speed=100

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var x=Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
	var y=Input.get_action_strength("ui_down")-Input.get_action_strength("ui_up")
	vec=Vector2(x,y)
	if vec.x>0:
		$AnimationPlayer.play("rigth")
	if vec.x<0:
		$AnimationPlayer.play("left")
	if vec.y>0:
		$AnimationPlayer.play("down")
	if vec.y<0:
		$AnimationPlayer.play("up")
	move_and_slide(vec*300)
	pass


func _on_Area2D_area_entered(area):
	if area.name=="NPC":
		print(area.name)
		$Area2D.visible=true
	pass # Replace with function body.
