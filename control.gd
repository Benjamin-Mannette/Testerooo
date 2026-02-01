extends Control


func _ready() -> void:
	
	var dim = get_window().size
	var origin = Vector2(dim.x/2,dim.y/2)
	
	var panel2 = Panel.new()
	var panelSize = Vector2(100,100)
	panel2.position = origin - panelSize/2 
	panel2.size = panelSize
	
	var Attack = Button.new()
	Attack.pressed.connect(_Attack_pressed)
	Attack.position = Vector2(0,0)
	Attack.size = Vector2(100,40)
	Attack.text = "ATTACK"
	
	panel2.add_child(Attack)
	add_child(panel2)



func _Attack_pressed():
	Label.text = "Hello World"
