extends ScrollContainer


var template_dialog = preload("res://dialogue/TemplateDialog.tscn")
signal template_selected(text)


# Called when the node enters the scene tree for the first time.
func _ready():    
    var file = File.new()
    file.open("res://dialogue/templates.txt", File.READ)
    while not file.eof_reached(): 
        var button = Button.new()
        button.align = 0 
        button.text = file.get_line()
        button.connect("pressed", self, "_on_Button_pressed", [button.text])
        $VBoxContainer.add_child(button)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#    pass

func _on_Dialog_text_selected(text, dialog):
    emit_signal("template_selected", text)
    remove_child(dialog)
    dialog.queue_free()

func _on_Button_pressed(text):
    var dialog = template_dialog.instance()
    add_child(dialog)
    dialog.connect("text_selected", self, "_on_Dialog_text_selected", [dialog])
    dialog.setup(text, ["hello", "world"])
    dialog.popup()