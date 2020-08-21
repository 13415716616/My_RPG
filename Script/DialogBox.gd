extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var label=['昨夜西风凋碧树，独上高楼，望尽天涯路！','又是一年七夕时，你还没有女朋友']

# Called when the node enters the scene tree for the first time.
func _ready():
	ShowLabel()
	pass # Replace with function body.

func ShowLabel():
	$dslogbox/RichTextLabel.text=label[0]
	if Input.get_action_strength("ui_down"):
		print("ok")
		$dslogbox/RichTextLabel.text=label[1]

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
