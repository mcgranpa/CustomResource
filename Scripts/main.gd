extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print ("start")
	Autold.vbox = $Control/ScrollContainer/VBoxContainer
	pass # Replace with function body.

func _on_button_pressed() -> void:
	print ("button pressed main script")
	pass
	
