extends Node2D
@onready var user = $LineEdit_user
@onready var label = $Label_prompt
#limit number attempts
#make sure it can generate questions and is correct w/ answers THEN make it more appealing
#show visual graph of the memory space being taken up
#generating answers
#code the algorithms 
#BA is where partition starts and Sz is how much space it takes up
var remaining_attempts = 3
var correct_answers = [0, 600, 400, 1500, 700, 3600, 1500, 9200, 300]


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
	return "Consider a memory of size 8KB (8192 bytes) that allows dynamic, variable sized partitioning among processes and uses a linked list to keep track of free spaces (hereafter referred to as the free list) in the memory at any given time. Assume that there are 6 processes and assume that their memory size requirements (in bytes) are as given below:

P1: 600,  P2: 700,  P3: 1300,  P4: 2900,  P5: 300,  P6: 500

Assume that the initial state of the free list is as shown below (BA is the base address and Sz is the size of each free space):

BA: 0; Sz: 1000 → BA: 1500; Sz: 700 → BA: 3600; Sz: 1500 → BA: 9200; Sz 300"
