extends Node

@onready var editor = $LineEdit
@onready var selected
@onready var selector
@onready var label = $Label
@onready var student_name = $StudentName
@onready var studentNamed

# Called when the node enters the scene tree for the first time.
func _ready():
	editor.connect("text_entered", Callable(self, "_on_line_edit_text_submitted"))
	student_name.connect("text_entered", Callable(self,"_on_student_name_text_submitted"))
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _on_line_edit_text_submitted(new_text):
	selector = new_text
	studentNamed = student_name.get_text()
	
	if studentNamed.strip_edges() == "":
		student_name.text = "Please enter your name first"
		return
	_try_start_program()
	
func _on_student_name_text_submitted(new_text):
	studentNamed = new_text
	selector = editor.get_text()
	
	if selector.strip_edges() == "":
		editor.text = "!!!"
		return
	
	_try_start_program()
	
func _try_start_program():
	GlobalScript.studentName = studentNamed
	
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
	3- Worst Fit
	Press and hold R to reset
	Press and hold B to come back here"
		get_tree().reload_current_scene()
