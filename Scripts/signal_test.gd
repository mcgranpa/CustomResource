extends Node2D

@export var mine : MainStats
@export var two : int = 300
@export var mydata : String
@export var child_name : String

@onready var text_box = $"../TextEdit"

enum Colors {RED, BLUE, GREEN}
@export var mycolor: Colors = Colors.GREEN
var text_data = Label.new()


func _ready() -> void:
	print ("Start signal node")
	print("local child name " + child_name)
	var button = $"../Button"
	button.connect("pressed", _on_Button_Pressed)
	
	match mycolor:
		Colors.RED:
			print ("red")
		Colors.BLUE:
			print ("blue")
		_:
			print ("no color")
	
	print("local two value " + str(two))
	print("Resource mine value " + str(mine.health))
	print("Resource mine value " + str(mine.strength))
	print("Resource mine value " + str(mine.hit_points))
	

	
func _not_used():
	var a1 = $"../Control"
	a1.add_log("local two value " + str(two) )
	
	
	a1.add_log("Resource mine value 1 " + str(mine.health) )
	text_box.text = "local two value " + str(two) + "\n"
	text_box.text = text_box.text + "Resource mine value 1 " + str(mine.health) + "\n"
	text_box.text = text_box.text + "Resource mine value 2 " + str(mine.health) + "\n"
	text_box.text = text_box.text + "Resource mine value 3 " + str(mine.health) + "\n"
	text_box.text = text_box.text + "Resource mine value 4 " + str(mine.health) + "\n"
	text_box.text = text_box.text + "Resource mine value 5 " + str(mine.health) + "\n"
	text_box.text = text_box.text + "Resource mine value 6 " + str(mine.health) + "\n"
	text_box.text = text_box.text + "Resource mine value 7 " + str(mine.health) + "\n"
	text_box.text = text_box.text + "Resource mine value 8 " + str(mine.health) + "\n"
	text_box.text = text_box.text + "Resource mine value 9 " + str(mine.health) + "\n"
	text_box.text = text_box.text + "Resource mine value 10 " + str(mine.health) + "\n"
	
	for child in Autold.vbox.get_children():
		Autold.emit1("fred1") 
		Autold.vbox.remove_child(child)
		child.queue_free()
		
	
func _on_Button_Pressed() -> void:
	print ("button pressed signal_test script - " + child_name)
	
	# emit signal by calling a function that does the emit
	# this function uses signal_emit()
	Autold.emit1("fred1") 
	Autold.emit2("fred2", "data") 
	
	# emit signal directly one passees a value
	Autold.fred1.emit()
	Autold.fred2.emit(mydata)
	
	
