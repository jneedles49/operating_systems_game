extends Node2D
@export var texture : Texture2D:
	set(value):
		texture = value
		queue_redraw()
		
@export var source_rect = Rect2 (850.0, 100.0, 150.0, 500.0)
@onready var label = [$Label1,$Label2,$Label3,$Label4]
@onready var user_text = [$LineEditOne,$LineEditTwo,$LineEditThree,$LineEditFour]

#TODO: make sure to check for correctness within the algorithm
#TODO: calculate # of points
var default_font: Font = ThemeDB.fallback_font;

var number_selector = RandomNumberGenerator.new()
var selected_number = [number_selector.randi_range(1, 1500),number_selector.randi_range(1, 1500),number_selector.randi_range(1, 1500),number_selector.randi_range(1, 1500)]

var first_selected_start_partition = number_selector.randi_range(0,500)
var first_selected_end_partition = number_selector.randi_range(1,500)

var second_selected_start_partition = number_selector.randi_range(500,1000)
var second_selected_end_partition = number_selector.randi_range(501,1000)

var third_selected_start_partition = number_selector.randi_range(1000,1500)
var third_selected_end_partition = number_selector.randi_range(1001,1500)

var fourth_selected_start_partition = number_selector.randi_range(1500,2000)
var fourth_selected_end_partition = number_selector.randi_range(1501,2000)

var fifth_selected_start_partition = number_selector.randi_range(2000,2500)
var fifth_selected_end_partition = number_selector.randi_range(2001,2500)

var user_value = [0,0,0,0]
var scaled_value = [0,0,0,0]
var drawn = [false,false,false,false,false]
var answered = [false,false,false,false]
var answerable = [true,true,true,true]

var x_pos = 800
var y_pos = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	label[0].text = "Where would the next partition be if the next memory had a size of " + str(selected_number[0]) + "?"
	user_text[0].connect("text_entered", Callable(self, "_on_line_edit_text_submitted"))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_released("reset"):
		get_tree().reload_current_scene()
	
func _on_line_edit_text_submitted(new_text):
	var first_user_text = user_text[0].get_text()
	if(answerable[0] == true):
		if(first_user_text != ""):
			if(first_user_text == "N/A"):     
				answered[0] = false
				answerable[0] = false
			else:
				answered[0] = true
				user_value[0] = int(first_user_text)
				scaled_value[0] = int(user_value[0]/5)
				answerable[0] = false
			label[1].text = "Where would the next partition be if the next memory had a size of " + str(selected_number[1]) + "?"
			user_text[1].connect("text_entered", Callable(self, "_on_line_edit_text_submitted"))
	
	var second_user_text = user_text[1].get_text()
	if(answerable[1] == true):
		if(second_user_text != ""):
			if(second_user_text == "N/A"):
				answered[1] = false
				answerable[1] = false
			else:
				answered[1] = true
				user_value[1] = int(second_user_text)
				scaled_value[1] = int(user_value[1]/5)
				answerable[1] = false
			label[2].text = "Where would the next partition be if the next memory had a size of " + str(selected_number[2]) + "?"
			user_text[2].connect("text_entered", Callable(self, "_on_line_edit_text_submitted"))

	var third_user_text = user_text[2].get_text()             
	if(answerable[2] == true):
		if(third_user_text != ""):
			if(third_user_text == "N/A"):
				answered[2] = false
				answerable[2] = false
			else:
				answered[2] = true
				user_value[2] = int(third_user_text)
				scaled_value[2] = int(user_value[2]/5)
				answerable[2] = false
			label[3].text = "Where would the next partition be if the next memory had a size of " + str(selected_number[3]) + "?"
			user_text[3].connect("text_entered", Callable(self, "_on_line_edit_text_submitted"))
	
	var fourth_user_text = user_text[3].get_text()
	if(answerable[3] == true):
		if(fourth_user_text != ""):
			if(fourth_user_text == "N/A"):
				answered[3] = false
				answerable[3] = false
			else:
				answered[3] = true
				user_value[3] = int(fourth_user_text)
				scaled_value[3] = int(user_value[3]/5)
				answerable[3] = false
	queue_redraw()
		
func _draw():
	draw_rect(Rect2 (850.0, 100.0, 150.0, 500.0), Color.BLUE, false, -1.0)
	#draw initial partitions
	_draw_partitions()
	#draw first line 
	_draw_answers()
	
func _draw_answers():

	#TODO: make answers appear one after the other 
	#TODO: once they submit an answer, shouldnt be able to go back
	#draw first answer
	draw_line(Vector2(x_pos,y_pos+scaled_value[0]),Vector2(x_pos+50,y_pos+scaled_value[0]), Color.BLACK, -1.0, true)
	draw_string(default_font, Vector2(x_pos,y_pos+scaled_value[0]-5), str(user_value[0]), HORIZONTAL_ALIGNMENT_CENTER,50, 18)
	if(answered[0] == true):
		draw_rect(Rect2(x_pos+50,y_pos+scaled_value[0],150,selected_number[0]/5), Color.CADET_BLUE, true, -1.0)
		draw_line(Vector2(x_pos-50,y_pos+scaled_value[0]+selected_number[0]/5),Vector2(x_pos+50,y_pos+scaled_value[0]+selected_number[0]/5), Color.BLACK, -1.0, true)
		draw_string(default_font, Vector2(x_pos-50,y_pos+scaled_value[0]+selected_number[0]/5),str(selected_number[0]), HORIZONTAL_ALIGNMENT_CENTER, 50, 18)
		
		
	#draw second answer
	draw_line(Vector2(x_pos,y_pos+scaled_value[1]),Vector2(x_pos+50,y_pos+scaled_value[1]), Color.BLACK, -1.0, true)
	draw_string(default_font, Vector2(x_pos,y_pos+scaled_value[1]-5), str(user_value[1]), HORIZONTAL_ALIGNMENT_CENTER,50, 18)
	if(answered[1] == true):
		draw_rect(Rect2(x_pos+50,y_pos+scaled_value[1],150,selected_number[1]/5), Color.CADET_BLUE, true, -1.0)
		draw_line(Vector2(x_pos-50,y_pos+scaled_value[1]+selected_number[1]/5),Vector2(x_pos+50,y_pos+scaled_value[1]+selected_number[1]/5), Color.BLACK, -1.0, true)
		draw_string(default_font, Vector2(x_pos-50,y_pos+scaled_value[1]+selected_number[1]/5),str(selected_number[1]), HORIZONTAL_ALIGNMENT_CENTER, 50, 18)
	
	#draw third answer
	draw_line(Vector2(x_pos,y_pos+scaled_value[2]),Vector2(x_pos+50,y_pos+scaled_value[2]), Color.BLACK, -1.0, true)
	draw_string(default_font, Vector2(x_pos,y_pos+scaled_value[2]-5), str(user_value[2]), HORIZONTAL_ALIGNMENT_CENTER,50, 18)
	if(answered[2] == true):
		draw_rect(Rect2(x_pos+50,y_pos+scaled_value[2],150,selected_number[2]/5), Color.CADET_BLUE, true, -1.0)
		draw_line(Vector2(x_pos-50,y_pos+scaled_value[2]+selected_number[2]/5),Vector2(x_pos+50,y_pos+scaled_value[2]+selected_number[2]/5), Color.BLACK, -1.0, true)
		draw_string(default_font, Vector2(x_pos-50,y_pos+scaled_value[2]+selected_number[2]/5),str(selected_number[2]), HORIZONTAL_ALIGNMENT_CENTER, 50, 18)
	
	#draw fourth answer
	draw_line(Vector2(x_pos,y_pos+scaled_value[3]),Vector2(x_pos+50,y_pos+scaled_value[3]), Color.BLACK, -1.0, true)
	draw_string(default_font, Vector2(x_pos,y_pos+scaled_value[3]-5), str(user_value[3]), HORIZONTAL_ALIGNMENT_CENTER,50, 18)
	if(answered[3] == true):
		draw_rect(Rect2(x_pos+50,y_pos+scaled_value[3],150,selected_number[3]/5), Color.CADET_BLUE, true, -1.0)
		draw_line(Vector2(x_pos-50,y_pos+scaled_value[3]+selected_number[3]/5),Vector2(x_pos+50,y_pos+scaled_value[3]+selected_number[3]/5), Color.BLACK, -1.0, true)
		draw_string(default_font, Vector2(x_pos-50,y_pos+scaled_value[3]+selected_number[3]/5),str(selected_number[3]), HORIZONTAL_ALIGNMENT_CENTER, 50, 18)
		
func  _draw_partitions():
	if first_selected_end_partition < first_selected_start_partition:
		drawn[0] = false
	else:
		var scaled_start_partition = first_selected_start_partition/5
		var scaled_end_partition = first_selected_end_partition/5

		draw_rect(Rect2(x_pos+50, y_pos+scaled_start_partition, 150,scaled_end_partition-scaled_start_partition), Color.CORNSILK, true, -1.0)
		#draw_string(default_font,Vector2(x_pos+50, first_selected_end_partition - first_selected_start_partition), str("Mem1"),HORIZONTAL_ALIGNMENT_CENTER, 50,18)
		#draw_line(Vector2(x_pos+200,y_pos+scaled_start_partition), Vector2(x_pos+250,y_pos+scaled_start_partition), Color.BLACK, -1.0, true)
		draw_string(default_font, Vector2(x_pos+200,y_pos+scaled_start_partition), str(first_selected_start_partition), HORIZONTAL_ALIGNMENT_CENTER, 50, 18)
		
		#draw_line(Vector2(x_pos+200,y_pos+scaled_end_partition), Vector2(x_pos+300,y_pos+scaled_end_partition), Color.BLACK, -1.0, true)
		draw_string(default_font, Vector2(x_pos+250,y_pos+scaled_end_partition), str(first_selected_end_partition), HORIZONTAL_ALIGNMENT_CENTER, 50, 18)
		drawn[0] = true;
		queue_redraw()
	if second_selected_end_partition < second_selected_start_partition:
		drawn[1] = false
	else:
		var scaled_start_partition = second_selected_start_partition/5
		var scaled_end_partition = second_selected_end_partition/5

		draw_rect(Rect2(x_pos+50, y_pos+scaled_start_partition, 150,scaled_end_partition-scaled_start_partition), Color.CORNSILK, true, -1.0)
		#draw_texture_rect_region(texture,Rect2, Rect2)
		#draw_line(Vector2(x_pos+200,y_pos+scaled_start_partition), Vector2(x_pos+250,y_pos+scaled_start_partition), Color.BLACK, -1.0, true)
		draw_string(default_font, Vector2(x_pos+200,y_pos+scaled_start_partition), str(second_selected_start_partition), HORIZONTAL_ALIGNMENT_CENTER, 50, 18)
		
		#draw_line(Vector2(x_pos+200,y_pos+scaled_end_partition), Vector2(x_pos+300,y_pos+scaled_end_partition), Color.BLACK, -1.0, true)
		draw_string(default_font, Vector2(x_pos+250,y_pos+scaled_end_partition), str(second_selected_end_partition), HORIZONTAL_ALIGNMENT_CENTER, 50, 18)
		drawn[1] = true;
		queue_redraw()
	if third_selected_end_partition < third_selected_start_partition:
		drawn[2] = false
	else:
		var scaled_start_partition = third_selected_start_partition/5
		var scaled_end_partition = third_selected_end_partition/5

		draw_rect(Rect2(x_pos+50, y_pos+scaled_start_partition, 150,scaled_end_partition-scaled_start_partition), Color.CORNSILK, true, -1.0)
		#draw_texture_rect_region(texture,Rect2, Rect2)
		#draw_line(Vector2(x_pos+200,y_pos+scaled_start_partition), Vector2(x_pos+250,y_pos+scaled_start_partition), Color.BLACK, -1.0, true)
		draw_string(default_font, Vector2(x_pos+200,y_pos+scaled_start_partition), str(third_selected_start_partition), HORIZONTAL_ALIGNMENT_CENTER, 50, 18)
		
		#draw_line(Vector2(x_pos+200,y_pos+scaled_end_partition), Vector2(x_pos+300,y_pos+scaled_end_partition), Color.BLACK, -1.0, true)
		draw_string(default_font, Vector2(x_pos+250,y_pos+scaled_end_partition), str(third_selected_end_partition), HORIZONTAL_ALIGNMENT_CENTER, 50, 18)
		drawn[3] = true;
		queue_redraw()
	if fourth_selected_end_partition < fourth_selected_start_partition:
		drawn[3] = false
	else:
		var scaled_start_partition = fourth_selected_start_partition/5
		var scaled_end_partition = fourth_selected_end_partition/5

		draw_rect(Rect2(x_pos+50, y_pos+scaled_start_partition, 150,scaled_end_partition-scaled_start_partition), Color.CORNSILK, true, -1.0)
		#draw_texture_rect_region(texture,Rect2, Rect2)
		#draw_line(Vector2(x_pos+200,y_pos+scaled_start_partition), Vector2(x_pos+250,y_pos+scaled_start_partition), Color.BLACK, -1.0, true)
		draw_string(default_font, Vector2(x_pos+200,y_pos+scaled_start_partition), str(fourth_selected_start_partition), HORIZONTAL_ALIGNMENT_CENTER, 50, 18)
		
		#draw_line(Vector2(x_pos+200,y_pos+scaled_end_partition), Vector2(x_pos+300,y_pos+scaled_end_partition), Color.BLACK, -1.0, true)
		draw_string(default_font, Vector2(x_pos+250,y_pos+scaled_end_partition), str(fourth_selected_end_partition), HORIZONTAL_ALIGNMENT_CENTER, 50, 18)
		drawn[3] = true;
		queue_redraw()
	if fifth_selected_end_partition < fifth_selected_start_partition:
		drawn[4] = false
	else:
		var scaled_start_partition = fifth_selected_start_partition/5
		var scaled_end_partition = fifth_selected_end_partition/5

		draw_rect(Rect2(x_pos+50, y_pos+scaled_start_partition, 150,scaled_end_partition-scaled_start_partition), Color.CORNSILK, true, -1.0)
		#draw_texture_rect_region(texture,Rect2, Rect2)
		#draw_line(Vector2(x_pos+200,y_pos+scaled_start_partition), Vector2(x_pos+250,y_pos+scaled_start_partition), Color.BLACK, -1.0, true)
		draw_string(default_font, Vector2(x_pos+200,y_pos+scaled_start_partition), str(fifth_selected_start_partition), HORIZONTAL_ALIGNMENT_CENTER, 50, 18)
		
		#draw_line(Vector2(x_pos+200,y_pos+scaled_end_partition), Vector2(x_pos+300,y_pos+scaled_end_partition), Color.BLACK, -1.0, true)
		draw_string(default_font, Vector2(x_pos+250,y_pos+scaled_end_partition), str(fifth_selected_end_partition), HORIZONTAL_ALIGNMENT_CENTER, 50, 18)
		drawn[4] = true;
		queue_redraw()


