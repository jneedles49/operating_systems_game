extends Node2D
@onready var user = $LineEdit_user
@onready var label = $Label_prompt
#limit number attempts
#make sure it can generate questions and is correct w/ answers THEN make it more appealing 
var remaining_attempts = 3


# Called when the node enters the scene tree for the first time.
func _ready():
	if user:
		user.connect("text_submitted", Callable(self, "_on_line_edit_user_text_submitted"))
	else:
		print("LineEdit_user node not found")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_line_edit_user_text_submitted(new_text):
	if new_text == "600": 
		label.text = "BA: " + new_text + "; Sz: "
		get_tree().change_scene_to_file("res://Q1Sz1.tscn")
			#label.text = "BA: " + new_text + ";" + "Sz: " + new_text2 + "-> BA: " + new_text3 + ";" + "Sz: " + new_text4 + "->" + "BA: " + new_text5 +";" + "Sz: " + new_text6 + "->" + "BA: " + new_text7 + ";" + "Sz: " + new_text8
	else:
		remaining_attempts -= 1
		label.text = print_question() + "\nIncorrect. Reamaining Attempts: " + str(remaining_attempts) + "."
		if remaining_attempts == 0:
			get_tree().reload_current_scene()
		

func print_question():
	return "BA: 0; Sz: 1000 → BA: 1500; Sz: 700 → BA: 3600; Sz: 1500 → BA: 9200; Sz: 300
Use the next fit policy

If P1 is allocated, what is the BA?"
