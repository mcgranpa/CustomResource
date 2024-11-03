extends Node2D

var cnt1 = 0
var cnt2 = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print ("Fred scene")
	Autold.fred1.connect(_on_fred1)
	Autold.fred2.connect(_on_fred2)

func _on_fred1():
	cnt1 += 1
	print ("Emit Fred1" + " count " + str(cnt1))	
	
func _on_fred2(a):
	cnt2 += 1
	print ("Emit Fred2 a=" + a + " count " + str(cnt2))	
	
