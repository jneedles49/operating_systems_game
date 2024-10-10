extends Node

@onready var editor = $LineEdit
@onready var selected
@onready var selector
@onready var label = $Label

# Called when the node enters the scene tree for the first time.
func _ready():
	editor.connect("text_entered", Callable(self, "_on_line_edit_text_submitted"))
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _on_line_edit_text_submitted(new_text):
	selector = editor.get_text()
	print(selector)
	if selector == '0':
		GlobalScript.selectedAlgorithm = 0
		get_tree().change_scene_to_file("res://table.tscn")
	elif selector == "1":
		GlobalScript.selectedAlgorithm = 1
		get_tree().change_scene_to_file("res://table.tscn")
	elif selector == "2":
		GlobalScript.selectedAlgorithm = 2
		get_tree().change_scene_to_file("res://table.tscn")
	elif selector == "3":
		GlobalScript.selectedAlgorithm = 3
		get_tree().change_scene_to_file("res://table.tscn")
	else:
		label.text = "Please select a valid number. 
	0- First Fit
	1- Next Fit 
	2- Best Fit
	3- Worst Fit"
		get_tree().reload_current_scene()
		

