extends TextEdit

func _ready():
	connect("text_submitted", Callable(self, "_on_text_submitted"))
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
