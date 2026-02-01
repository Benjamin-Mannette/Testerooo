extends TextEdit


var Controler = Control





func _ready() -> void:
	var dim = get_window().size
	var panelian = Panel.new()
	var panelSize = Vector2(dim.x-40,dim.y-40)
	panelian.size = panelSize
	
	var containeror = Container.new()
	containeror.position = 100
	containeror.size = dim
	
	var Attack = Button.new()
	Attack.pressed.connect(_Attack_pressed)
	Attack.anchor_left = 0
	Attack.size = Vector2(100,40)
	Attack.text = "ATTACK"
	#var Defend = Button.new()
	#Defend.pressed.connect(on_Defend_pressed)
	#Defend.anchor_left = 1
	#Defend.size = Vector2(100,30)
	#Defend.text = "DEFEND"
	#var Think = Button.new()
	#Think.pressed.connect(on_Think_pressed)
	#Think.anchor_left = 2
	#Think.size = Vector2(100,30)
	#Think.text = "THINK"
	
	
	panelian.add_child(Attack)
	#panelian.add_child(Defend)
	#panelian.add_child(Think)
	add_child(panelian)


func _Attack_pressed():
	TextEdit.text = "Hello World"
