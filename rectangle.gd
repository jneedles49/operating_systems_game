extends Node2D
@export var texture : Texture2D:
	set(value):
		texture = value
		queue_redraw()
		
@export var source_rect = Rect2 (850.0, 100.0, 150.0, 500.0)
@onready var label = [$Label1,$Label2,$Label3,$Label4]
@onready var user_text = [$LineEditOne,$LineEditTwo,$LineEditThree,$LineEditFour]
@onready var labelType = $LabelType
@onready var studentNamed = $StudentNamed
@onready var feedback_label = $FeedbackLabel
@onready var final_score_label = $FinalScoreLabel
@onready var answer_results = [$AnswerStatus1, $AnswerStatus2, $AnswerStatus3, $AnswerStatus4]


var default_font: Font = ThemeDB.fallback_font;

var number_selector = RandomNumberGenerator.new()
var selected_number = [number_selector.randi_range(100, 500),number_selector.randi_range(100, 500),number_selector.randi_range(100, 500),number_selector.randi_range(100, 500)]

var first_selected_start_partition = number_selector.randi_range(0,500)
var first_selected_end_partition = number_selector.randi_range(5,500)

var second_selected_start_partition = number_selector.randi_range(500,1000)
var second_selected_end_partition = number_selector.randi_range(505,1000)

var third_selected_start_partition = number_selector.randi_range(1000,1500)
var third_selected_end_partition = number_selector.randi_range(1005,1500)

var fourth_selected_start_partition = number_selector.randi_range(1500,2000)
var fourth_selected_end_partition = number_selector.randi_range(1505,2000)

var fifth_selected_start_partition = number_selector.randi_range(2000,2500)
var fifth_selected_end_partition = number_selector.randi_range(2005,2500)

var user_value = [0,0,0,0]
var scaled_value = [0,0,0,0]
var drawn = [false,false,false,false,false]
var answered = [false,false,false,false]
var answerable = [true,true,true,true]

var x_pos = 800
var y_pos = 100
var blocks = []
var partitions = [  [first_selected_start_partition, first_selected_end_partition],     # 0-1 first, 2-3 second, 4-5 third, 6-7 fourth, 8-9 fifth
					[second_selected_start_partition, second_selected_end_partition],
					[third_selected_start_partition, third_selected_end_partition],
					[fourth_selected_start_partition, fourth_selected_end_partition],
					[fifth_selected_start_partition, fifth_selected_end_partition]]
var correct_answers = []

func createBlocks():
	#finding the first block
	if(drawn[0] == true):
		blocks[0] = first_selected_start_partition - 0
	elif(drawn[1] == true):
		blocks[0] = second_selected_start_partition - 0
	elif(drawn[2] == true):
		blocks[0] = third_selected_start_partition - 0
	elif(drawn[3] == true):
		blocks[0] = fourth_selected_start_partition - 0
	elif(drawn[4] == true):
		blocks[0] = fifth_selected_start_partition - 0
	else:
		blocks[0] = 250 - 0
	#finding the second block
func generate_valid_partition(min_start, max_start, min_size, max_size):
	var start = number_selector.randi_range(min_start, max_start)
	var size = number_selector.randi_range(min_size, max_size)
	return [start, start+size]
	
#first fit placement 
func simulate_first_fit():
	correct_answers.clear()
	var memory_blocks = []
	
	print("\nCurrent drawn state: ", drawn)
	print("\nCurrent partitions: ", partitions)
	
	#add valid partitions
	for i in range(len(partitions)):
		if drawn[i]:
			var partition = partitions[i]
			print("Adding partition: ", partition)
			if partition[0] != null and partition[1] != null:
				if partition[1] > partition[0]: #only add if end > start
					memory_blocks.append([partition[0], partition[1]-partition[0]])
					print("Addded partition to memory blocks: ", [partition[0], partition[1] - partition[0]])
	
	#sort memory blocks by start position before beginning placement
	if not memory_blocks.is_empty():
		memory_blocks.sort_custom(func(a,b):
			if a != null and b != null and a[0] != null and b[0] != null:
				return a[0] < b[0]
			return false)
	
	print("\n--- Starting First Fit Simulation ---")
	print("Initial memory blocks (partitions):", memory_blocks)
	
	# process each number in array
	for process_index in range(len(selected_number)):
		var process_size = selected_number[process_index]
		print("\nChecking process ", process_index, " with size: ", process_size)
		
		var placement = find_first_fit(process_size, memory_blocks)
		if placement == -1:   #-1 in place of N/A
			correct_answers.append(-1)
			print("Could not place process")
		else:
			correct_answers.append(placement)
			memory_blocks.append([placement, process_size])
			#sort after adding new block to maintain order
			memory_blocks.sort_custom(func(a,b): 
				if a != null and b != null and a[0] != null and b[0] != null:
					return a[0] < b[0]
				return false)
			print("Placed process at: ", placement)
			print("Current memory blocks: ", memory_blocks)
			
func find_first_fit(process_size, memory_blocks):
	var occupied_spaces = []
	# Start with empty memory case
	for i in range(len(partitions)):
		if drawn[i]:
			var start = partitions[i][0]
			var end = partitions[i][1]
			
			if end > start:
				occupied_spaces.append([start, end])
				
		#add existing proccesses - these are already placed 
	for block in memory_blocks:
		var start = block[0]
		var end = start + block[1]
		occupied_spaces.append([start, end])
	
	occupied_spaces.sort_custom(func(a,b): return a[0] < b[0])
	
	#find first actual free space
	var position = 0
	
	#check if it can fit at very beginning 
	for space in occupied_spaces:
		# if there's enough room before this occupied space
		if space[0] - position >= process_size:
			return position
		# move our position marker to after this occupied space
		position = space[1]
	# check if we can fit after all occupied spaces 
	if 2500 - position >= process_size:
		return position
	return -1

var last_allocation_position = 0
func simulate_next_fit():
	correct_answers.clear()
	var memory_blocks = []
	last_allocation_position = 0
	
	print("\nCurrent drawn state: ", drawn)
	print("\nCurrent partitions: ", partitions)
	
	#add valid partitions
	for i in range(len(partitions)):
		if drawn[i]:
			var partition = partitions[i]
			print("Adding partition: ", partition)
			if partition[0] != null and partition[1] != null:
				if partition[1] > partition[0]: #only add if end > start
					memory_blocks.append([partition[0], partition[1]-partition[0]])
					print("Addded partition to memory blocks: ", [partition[0], partition[1] - partition[0]])
	
	#sort memory blocks by start position before beginning placement
	if not memory_blocks.is_empty():
		memory_blocks.sort_custom(func(a,b):
			if a != null and b != null and a[0] != null and b[0] != null:
				return a[0] < b[0]
			return false)
	
	print("\n--- Starting Next Fit Simulation ---")
	print("Initial memory blocks (partitions):", memory_blocks)
	
	# process each number in array
	for process_index in range(len(selected_number)):
		var process_size = selected_number[process_index]
		print("\nChecking process ", process_index, " with size: ", process_size)

		#collect all occupied memory spaces
		var occupied_spaces = []
		for block in memory_blocks:
			var start = block[0]
			var end = start + block[1]
			occupied_spaces.append([start, end])
		
		# sort spaces to maintain memory order
		occupied_spaces.sort_custom(func(a,b): return a[0] < b[0])
		
		print("Occupied spaces: ", occupied_spaces)
		print("Starting search from position: ", last_allocation_position)
		
		#implement next fit search
		var position = last_allocation_position
		var original_position = position
		var placement = null
		var found = false
		
		#PART 1: search from last_allocation_position to end
		#Skip occupied spaces that end before or at our position
		for space in occupied_spaces:
			if space[1] <= position:
				continue
			#if this space starts after our position, we may have a gap
			if space[0] > position:
				#check if there is enough room
				if space[0] - position >= process_size:
					placement = position
					found = true
					print("Found space at: ", position, "before occupied space: ", space)
					break
			position = space[1]
		
		#check if we can place at the end of memory
		if not found and (2500 - position >= process_size):
			placement = position
			found = true
			print("Found space at end of memory: ", position)
		
		#PART 2: only wrap around if needed
		if not found:
			print("No space found after position ", original_position, ". Wrapping around.")
			position = 0
			
			for space in occupied_spaces:
				#stop if we are back at our starting point
				if position >= original_position:
					break
				
				#check if there's enough room
				if space[0] - position >= process_size:
					placement = position
					found = true
					print("Found space after wraparound at: ", position)
					break
				# move position to end of this occupied space
				position = space[1]
		
		#process the placement result
		if not found: 
			correct_answers.append(-1)
			print("Could not place process")
		else:
			correct_answers.append(placement)
			memory_blocks.append([placement, process_size])
			
			#update last allocation position for next fit
			last_allocation_position = placement + process_size
			
			#sort after adding new block to maintain order
			memory_blocks.sort_custom(func(a,b):
				if a != null and b != null and a[0] != null and b[0] != null:
					return a[0] < b[0]
				return false)
			
			print("Placed process at: ", placement)
			print("Current memory blocks: ", memory_blocks)
			print("Next search will start at: ", last_allocation_position)

# need to track the last allocation position between function calls 
var last_position = 0
func find_next_fit(process_size, memory_blocks):
	var occupied_spaces = []
	
	#collect all occupied memory spaces
	for i in range(len(partitions)):
		if drawn[i]:
			var start = partitions[i][0]
			var end = partitions[i][1]
			occupied_spaces.append([start, end])
	
	#add existing processes
	for block in memory_blocks:
		var start = block[0]
		var end = start + block[1]
		occupied_spaces.append([start, end])
	
	#sort spaces by start position to maintain memory order 	
	occupied_spaces.sort_custom(func(a,b): return a[0] < b[0])
	
	#start search from last successful allocation
	var position = last_position
	var original_position = position
	var found = false
	var result_position = null
	
	for space in occupied_spaces:
		if space[0] <= position:
			#skip spaces that start before our position
			position = max(position, space[1])
			continue
		#if there is enough room before the occupied space
		if space[0] - position >= process_size:
			result_position = position
			found = true
			break
		position = space[1]
	#check if we can fit after all occupied spaces in first pass 
	if !found and (2500 - position >= process_size):
		result_position = position
		found = true
	#if not found, wrap around and search from the beginning
	if !found:
		position = 0
		
		for space in occupied_spaces:
			#stop if we've wrapped around the original position
			if space[0] >= original_position:
				break
			#if there is enough room before this occupied space
			if space[0] - position >= process_size:
				result_position = position
				found = true
				break
			position = space[1]
	#update last_position if we found a spot
	if found: 
		last_position = result_position + process_size
	if !found:
		result_position = -1
		
	return result_position

func simulate_best_fit():
	correct_answers.clear()
	var memory_blocks = []
	
	print("\nCurrent drawn state: ", drawn)
	print("\nCurrent partitions: ", partitions)
	
	#add valid partitions
	for i in range(len(partitions)):
		if drawn[i]:
			var partition = partitions[i]
			print("Adding partition: ", partition)
			if partition[0] != null and partition[1] != null and partition[1] > partition[0]:
				var block = [partition[0], partition[1] - partition[0]]
				if partition[1] > partition[0]: #only add if end > start
					#store start position and size
					memory_blocks.append(block)
					print("Addded partition to memory blocks: ", block)
	
	#sort memory blocks by start position before beginning placement
	if not memory_blocks.is_empty():
		memory_blocks.sort_custom(func(a,b):
			if a != null and b != null and a[0] != null and b[0] != null:
				return a[0] < b[0]
			return false)
	
	print("\n--- Starting Best Fit Simulation ---")
	print("Initial memory blocks (partitions):", memory_blocks)
	
	for process_index in range(len(selected_number)):
		var process_size = selected_number[process_index]
		print("\nChecking process ", process_index, " with size: ", process_size)
		
		#find best fit and update the memory blocks
		var placement = find_best_fit(process_size, memory_blocks)
		if placement == -1: #-1 in place of N/A
			correct_answers.append(-1)
			print("Could not place process")
		else:
			correct_answers.append(placement)
			memory_blocks.append([placement, process_size])
			#sort after adding new block to maintain spatial order
			memory_blocks.sort_custom(func(a,b):
				if a != null and b != null and a[0] != null and b[0] != null:
					return a[0] < b[0]
				return false)
			print("Placed process at: ", placement)
			print("Current memory blocks: ", memory_blocks)

func find_best_fit(process_size, memory_blocks):
	var occupied_spaces = []
	
	for i in range(len(partitions)):
		if drawn[i]:
			var start = partitions[i][0]
			var end = partitions[i][1]
			
			if end > start:
				occupied_spaces.append([start, end])
		
		#add existing processes
	for block in memory_blocks:
		var start = block[0]
		var end = start + block[1]
		occupied_spaces.append([start, end])
	
	occupied_spaces.sort_custom(func(a,b): return a[0] < b[0])
	
	#initialize variables to track the best fitting space
	var best_position = -1
	var best_size = INF #start with infinity as we want to minimize
	
	var position = 0
	for space in occupied_spaces:
		#calculate size of current free space
		var current_space_size = space[0] - position
		
		#if this space is big enough for our process and smaller than our current best
		if current_space_size >= process_size and current_space_size < best_size:
			best_position = position
			best_size = current_space_size
		
		#move position marker to after this occupied 
		position = space[1]
	
	#check the final space after all occupied space
	var final_space_size = 2500 - position
	if final_space_size >= process_size and final_space_size < best_size:
		best_position = position
		best_size = final_space_size
	
	return best_position 

func simulate_worst_fit():
	correct_answers.clear()
	var memory_blocks = []
	
	print("\nCurrent drawn state: ", drawn)
	print("\nCurrent partitions: ", partitions)
	
	#initialize memory with valid partitions
	for i in range(len(partitions)):
		if drawn[i]:
			var partition = partitions[i]
			print("Adding partition: ", partition)
			if partition[0] != null and partition[1] > partition[0]:
				var block = [partition[0], partition[1] - partition[0]]
				memory_blocks.append(block)
				print("Added partition to memory blocks: ", block)
	
	#sort memory blocks by start position
	if not memory_blocks.is_empty():
		memory_blocks.sort_custom(func(a,b):
			if a != null and b != null and a[0] != null and b[0] != null:
				return a[0] < b[0]
			return false)
	
	print("\n--- Starting Worst Fit Simulation ---")
	print("\nInitial memory blocks (partitions): ", memory_blocks)
	
	#process each number using worst fit stategy
	for process_index in range(len(selected_number)):
		var process_size = selected_number[process_index]
		print("\nChecking process ", process_index, " with size: ", process_size)
		
		var placement = find_worst_fit(process_size, memory_blocks)
		if placement == -1:
			correct_answers.append(-1)
			print("Could not place process")
		else:
			correct_answers.append(placement)
			memory_blocks.append([placement, process_size])
			memory_blocks.sort_custom(func(a,b):
				if a != null and b != null and a[0] != null and b[0] != null:
					return a[0] < b[0]
				return false)
			print("Placed process at: ", placement)
			print("Current memory blocks: ", memory_blocks)
			
func find_worst_fit(process_size, memory_blocks):
	var occupied_spaces = []
	
	#collect all occupied spaces from partitions 
	for i in range(len(partitions)):
		if drawn[i]:
			var start = partitions[i][0]
			var end = partitions[i][1]
			
			if end > start:
				occupied_spaces.append([start, end])
	
	# add existing processes to occupied spaces
	for block in memory_blocks:
		var start = block[0]
		var end = start + block[1]
		occupied_spaces.append([start, end])
		
	#sort occupied spaces by start position
	occupied_spaces.sort_custom(func(a,b): return a[0] < b[0])
	
	#initialize variables to track the worst (i.e. largest) fitting space
	var worst_position = -1
	var worst_size = -1  #start with -1 as we want to maximize
	
	var position = 0
	for space in occupied_spaces:
		#calculate size of current free space
		var current_space_size = space[0] - position
		
		#if this space is big enough and larger than our current worst (largest)
		if current_space_size >= process_size and current_space_size > worst_size:
			worst_position = position
			worst_size = current_space_size
		
		#move position marker to after this occupied space
		position = space[1]
	
	#check the final space after all occupied spaces
	var final_space_size = 2500 - position
	if final_space_size >= process_size and final_space_size > worst_size:
		worst_position = position
		worst_size = final_space_size
	
	return worst_position

#validate user inputs against simulated first fit results
func validate_user_answers():
	print("\n--- Validating User Answers ---")
	var is_correct = true
	var correct_count = 0
	
	#compare each user answer to correct answer
	for i in range(len(user_value)):
		var expected = correct_answers[i]
		var result_text = ""

		print("\nProcess ", i)
		print("Size: ", selected_number[i])
		print("Expected: ", expected)
		print("Got: ", user_value[i])
		
		#check if answers match
		if user_value[i] == expected:     #answered correctly 
			correct_count += 1
			if expected == -1:
				result_text = "Correct! There is no valid placement"
			else:
				result_text = "Correct!"
			answer_results[i].add_theme_color_override("font_color", Color.GREEN)
		
		else:
			is_correct = false
			if expected == -1:
				result_text = "Incorrect. There is no valid placement"
			else:
				result_text = "Incorrect. Correct answer is " + str(expected)
			answer_results[i].add_theme_color_override("font_color", Color.RED)

		# set the result text
		answer_results[i].text = result_text
		# make result visible
		answer_results[i].visible = true
			 
	if is_correct:
		feedback_label.text = "All answers are correct!"
		feedback_label.add_theme_color_override("font_color", Color.GREEN)
	else:
		feedback_label.text = "Some answers are incorrect. Review your answers."
		feedback_label.add_theme_color_override("font_color", Color.ORANGE_RED)
	
	final_score_label.text = "Score: " + str(correct_count) + "/" + str("4")
	
	#make feedback visible
	feedback_label.visible = true
	final_score_label.visible = true
	queue_redraw()
		
# Called when the node enters the scene tree for the first time.
func _ready():
	#ensure_valid_partitions(2)
	selectedAlgorithm(GlobalScript.selectedAlgorithm)
	check_drawn_partitions()
	_draw_partitions()
	feedback_label.visible = false
	final_score_label.visible = false
	for label in answer_results:
		label.visible = false
		
	#calculate the correct answers before user input
	if GlobalScript.selectedAlgorithm == 0: 
		simulate_first_fit()
	if GlobalScript.selectedAlgorithm == 1:
		simulate_next_fit()
	if GlobalScript.selectedAlgorithm == 2:
		simulate_best_fit()
	if GlobalScript.selectedAlgorithm == 3:
		simulate_worst_fit() 
		
	label[0].text = "Where would a process with a size of " + str(selected_number[0]) + " be placed?"
	user_text[0].connect("text_entered", Callable(self, "_on_line_edit_text_submitted"))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_released("reset"):
		get_tree().reload_current_scene()
	if Input.is_action_just_released("main_menu"):
		get_tree().change_scene_to_file("res://startingScreen.tscn")
	
func _on_line_edit_text_submitted(new_text):
	var first_user_text = user_text[0].get_text()
	if(answerable[0] == true):
		if(first_user_text != ""):
			if(first_user_text == "-1"):     
				answered[0] = true
				user_value[0] = -1
				answerable[0] = false
			else:
				answered[0] = true
				user_value[0] = int(first_user_text)
				scaled_value[0] = int(user_value[0]/5)
				answerable[0] = false
			label[1].text = "Where would a process with a size of " + str(selected_number[1]) + " be placed?"
			user_text[1].connect("text_entered", Callable(self, "_on_line_edit_text_submitted"))
	
	var second_user_text = user_text[1].get_text()
	if(answerable[1] == true):
		if(second_user_text != ""):
			if(second_user_text == "-1"):
				answered[1] = true
				user_value[1] = -1
				answerable[1] = false
			else:
				answered[1] = true
				user_value[1] = int(second_user_text)
				scaled_value[1] = int(user_value[1]/5)
				answerable[1] = false
			label[2].text = "Where would a process with a size of " + str(selected_number[2]) + " be placed?"
			user_text[2].connect("text_entered", Callable(self, "_on_line_edit_text_submitted"))

	var third_user_text = user_text[2].get_text()             
	if(answerable[2] == true):
		if(third_user_text != ""):
			if(third_user_text == "-1"):
				answered[2] = true
				user_value[2] = -1
				answerable[2] = false
			else:
				answered[2] = true
				user_value[2] = int(third_user_text)
				scaled_value[2] = int(user_value[2]/5)
				answerable[2] = false
			label[3].text = "Where would a process with a size of " + str(selected_number[3]) + " be placed?"
			user_text[3].connect("text_entered", Callable(self, "_on_line_edit_text_submitted"))
	
	var fourth_user_text = user_text[3].get_text()
	if(answerable[3] == true):
		if(fourth_user_text != ""):
			if(fourth_user_text == "-1"):
				answered[3] = true
				user_value[3] = -1
				answerable[3] = false
			else:
				answered[3] = true
				user_value[3] = int(fourth_user_text)
				scaled_value[3] = int(user_value[3]/5)
				answerable[3] = false
	if(answered[0] == true && answered[1] == true && answered[2] == true && answered[3] == true):
		validate_user_answers()
	queue_redraw()
		
func _draw():
	draw_rect(Rect2 (850.0, 100.0, 150.0, 500.0), Color.BLUE, false, -1.0)
	#draw starting line 
	draw_line(Vector2(x_pos, y_pos), Vector2(x_pos+50, y_pos), Color.BLACK, 1.0, true)
	draw_string(default_font, Vector2(x_pos, y_pos-5), "0", HORIZONTAL_ALIGNMENT_CENTER, 50, 18)
	#draw ending line
	var scaled_end_position = 2500/5
	draw_line(Vector2(x_pos, y_pos+scaled_end_position), Vector2(x_pos+50, y_pos+scaled_end_position), Color.BLACK, 1.0, true)
	draw_string(default_font, Vector2(x_pos, y_pos+scaled_end_position-5), "2500", HORIZONTAL_ALIGNMENT_CENTER, 50, 18)
	
	#draw initial partitions
	check_drawn_partitions()
	_draw_partitions()
	#draw first line 
	_draw_answers()
	
func check_drawn_partitions():
	var drawn_count = 0
	for i in range(len(partitions)):
		if drawn[i]:
			drawn_count += 1
	print("Number of drawn partitions: ", drawn_count)
	
	#if we have drawn less than 2, retrigger
	if drawn_count < 2:
		print("Not enough valid partitions, regenerating...")
		for i in range(len(partitions)):
			if not drawn[i]:
				#determine the memory region
				var region_start = i * 500
				var region_end = region_start + 500	
				#generate a valid partition within this region
				var start = number_selector.randi_range(region_start, region_end)
				var end = number_selector.randi_range(start + 5, region_end)	
					
				if end > start:
					partitions[i] = [start, end]
					drawn[i] = true
					drawn_count += 1
				if drawn_count >= 2:
					break
		if drawn[0]:
			first_selected_start_partition = partitions[0][0]
			first_selected_end_partition = partitions[0][1]
		
		if drawn[1]:
			second_selected_start_partition = partitions[1][0]
			second_selected_end_partition = partitions[1][1]
			
		if drawn[2]:
			third_selected_start_partition = partitions[2][0]
			third_selected_end_partition = partitions[2][1]
			
		if drawn[3]:
			fourth_selected_start_partition = partitions[3][0]
			fourth_selected_end_partition = partitions[3][1]
			
		if drawn[4]:
			fifth_selected_start_partition = partitions[4][0]
			fifth_selected_end_partition = partitions[4][1]
			
func _draw_answers():
	var process_colors = [
		Color.CADET_BLUE,               #Process 0
		Color.CHOCOLATE,                #Process 1
		Color.ROYAL_BLUE,               #Process 2
		Color.DARK_SLATE_BLUE,          #Process 3
	]
	
	for i in range(4):
		if answered[i] == true and user_value[i] != -1:
			var scale_value = user_value[i] / 5
			
			#top of partition
			draw_line(Vector2(x_pos, y_pos + scale_value), Vector2(x_pos+50, y_pos + scale_value), Color.BLACK, -1.0, true)
			draw_string(default_font, Vector2(x_pos, y_pos + scale_value - 5), str(user_value[i]), HORIZONTAL_ALIGNMENT_CENTER, 50, 18)
			
			#process block
			draw_rect(Rect2(x_pos+50, y_pos + scale_value, 150, selected_number[i]/5), process_colors[i], true, -1.0)
			
			#bottom of partition
			var bottom_position = y_pos + scale_value + selected_number[i]/5
			draw_line(Vector2(x_pos-50, bottom_position), Vector2(x_pos+50, bottom_position), Color.BLACK, -1.0, true)
			draw_string(default_font, Vector2(x_pos-50, bottom_position), str(selected_number[i] + user_value[i]), HORIZONTAL_ALIGNMENT_CENTER, 50, 18)
						
func  _draw_partitions():
	if first_selected_end_partition < first_selected_start_partition:
		drawn[0] = false
		print("Partition is not valid....start: ", first_selected_start_partition, " end: ", first_selected_end_partition)
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
		print("Partition is not valid....start: ", second_selected_start_partition, " end: ", second_selected_end_partition)
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
		print("Partition is not valid....start: ", third_selected_start_partition, " end: ", third_selected_end_partition)
	else:
		var scaled_start_partition = third_selected_start_partition/5
		var scaled_end_partition = third_selected_end_partition/5

		draw_rect(Rect2(x_pos+50, y_pos+scaled_start_partition, 150,scaled_end_partition-scaled_start_partition), Color.CORNSILK, true, -1.0)
		#draw_texture_rect_region(texture,Rect2, Rect2)
		#draw_line(Vector2(x_pos+200,y_pos+scaled_start_partition), Vector2(x_pos+250,y_pos+scaled_start_partition), Color.BLACK, -1.0, true)
		draw_string(default_font, Vector2(x_pos+200,y_pos+scaled_start_partition), str(third_selected_start_partition), HORIZONTAL_ALIGNMENT_CENTER, 50, 18)
		
		#draw_line(Vector2(x_pos+200,y_pos+scaled_end_partition), Vector2(x_pos+300,y_pos+scaled_end_partition), Color.BLACK, -1.0, true)
		draw_string(default_font, Vector2(x_pos+250,y_pos+scaled_end_partition), str(third_selected_end_partition), HORIZONTAL_ALIGNMENT_CENTER, 50, 18)
		drawn[2] = true;
		queue_redraw()
	if fourth_selected_end_partition < fourth_selected_start_partition:
		drawn[3] = false
		print("Partition is not valid....start: ", fourth_selected_start_partition, " end: ", fourth_selected_end_partition)
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
		print("Partition is not valid....start: ", fifth_selected_start_partition, " end: ", fifth_selected_end_partition)
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

func selectedAlgorithm(int):
	studentNamed.text = "Name: " + GlobalScript.studentName
	if GlobalScript.selectedAlgorithm == 0:
		labelType.text = "You are practicing: First Fit
		Use -1 if there is not a valid answer.
		Created by Josh Needles."
	if GlobalScript.selectedAlgorithm == 1:
		labelType.text = "You are practicing: Next Fit
		Use -1 if there is not a valid answer.
		Created by Josh Needles."
	if GlobalScript.selectedAlgorithm == 2:
		labelType.text = "You are practicing: Best Fit
		Use -1 if there is not a valid answer.
		Created by Josh Needles."
	if GlobalScript.selectedAlgorithm == 3:
		labelType.text = "You are practicing: Worst Fit
		Use -1 if there is not a valid answer.
		Created by Josh Needles."

