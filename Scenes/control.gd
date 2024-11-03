extends Control
class_name add_log_data


	
func add_log(text):
	var label = Label.new()
	label.text = text
	$ScrollContainer/VBoxContainer.add_child(label)
	
