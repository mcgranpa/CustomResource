extends AnimatedSprite2D

@export var mine : Stats 
@export var two : int = 300
@export var mysig : String


enum Colors {RED, BLUE, GREEN}
@export var mycolor: Colors = Colors.GREEN

func _ready() -> void:
	print ("Start")
	match mycolor:
		Colors.RED:
			print ("red")
		Colors.BLUE:
			print ("blue")
		_:
			print ("none")
	
	print("mine value " + str(mine.myvar))
	print("mine value " + str(mine.myvar2))
	print("two value " + str(two))

func _process(_delta: float) -> void:
	# emit signal by calling a function that does the emit
	# this function uses signal_emit()
	Autold.emit1("fred1") 
	
	# emit signal directly and passes a value
	Autold.fred2.emit(mysig)
	
	
	
