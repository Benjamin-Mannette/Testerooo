extends Control

var RichTextLabel2
var Button_Timer


func _ready() -> void:
	
	var dim = get_window().size
	var origin = Vector2(dim.x/2,dim.y/2)
	
	var panel2 = Panel.new()
	var panelSize = Vector2(500,500)
	panel2.position = origin - panelSize/2 
	panel2.size = panelSize
	
	Button_Timer = Timer.new()
	#Button_Timer.set_wait_time (time_sec float: 5)
	Button_Timer.timeout.connect(_on_timer_pause)
	Button_Timer.	set_wait_time(5)

	
	
	RichTextLabel2 = RichTextLabel.new()
	var TextiSize = Vector2(500,100)
	RichTextLabel2.position = Vector2(0,100)
	RichTextLabel2.size = TextiSize
	RichTextLabel2.text = "..."
	
	var Attack = Button.new()
	Attack.position = Vector2(0,0)
	Attack.size = Vector2(100,40)
	Attack.text = "ATTACK"
	Attack.pressed.connect(_Attack_pressed)
	
	var Defence = Button.new()
	Defence.position = Vector2(100,0)
	Defence.size = Vector2(100,40)
	Defence.text = "Defence"
	Defence.pressed.connect(_Defence_pressed)
	
	panel2.add_child(Attack)
	panel2.add_child(Defence)
	panel2.add_child(RichTextLabel2)
	add_child(panel2)
	add_child(Button_Timer)

#func game_base():
	#when _Attack_pressed()
	
func _on_timer_pause():
	RichTextLabel2.text = "Huh?..."

func _Attack_pressed():
	RichTextLabel2.text = "You have attacked..."
	Button_Timer.start()
	
	
func _Defence_pressed():
	RichTextLabel2.text = "You have defended..."
	print(Button_Timer.time_left)
