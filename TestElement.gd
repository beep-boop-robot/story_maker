extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#    pass

#func _input_event(viewport, event, shape_idx):
#    print("hello2")
#    if event is InputEventMouseButton \
#    and event.button_index == BUTTON_LEFT \
#    and event.is_pressed():
#        print("hello2")

func _on_TestElement_mouse_entered():
    print("entered")
