extends Node

#signal fred1(a: String)
signal fred1
signal fred2(a: String)
var vbox 

	


func emit1(a1 : String):
	emit_signal(a1)
	
func emit2(a1 : String, a2 : String):
	emit_signal(a1, a2)
	
