GDPC                �                                                                      3   T   res://.godot/exported/133200997/export-09815600db89660e01bfb162621828c2-table.scn   �     	      ���X*���:m����    X   res://.godot/exported/133200997/export-28d12d10ac93e4ccf96487d5d2b5f9e7-text_edit.scn   0     �      �컢�QY}IH7�    T   res://.godot/exported/133200997/export-362256a061aa8890e9a1e558b11e5ec3-node_2d.scn �     �      ��g"]����"H�S     X   res://.godot/exported/133200997/export-40bb48eb0e743b06c408e99aa137b30c-Instruction2.scnp     �      ����PG�Kk`��r�    X   res://.godot/exported/133200997/export-50b2319f9d94ad1e2ea1b97a7d71544f-CopilotUI.scn   .      �      ��4�?��>.#os)    X   res://.godot/exported/133200997/export-74112f105daf07f2534335c4e5e7c77f-Instruction1.scn`           ĳ�X?xً���M)E6�    X   res://.godot/exported/133200997/export-d0b0c935f859a3aaf4ca073014e8f703-small_icon.res  ��      x      �X����#��i�u�    \   res://.godot/exported/133200997/export-f0950f0cebd6d3254ec3d3537812844c-startingScreen.scn  P�     �      %y9��J=K�n�?1    X   res://.godot/exported/133200997/export-f49b9b2aceb226b41787b2f5ebb85efb-large_icon.res  �d      |      +�/�3+-���Ai4�E    ,   res://.godot/global_script_class_cache.cfg  �     �       ���WvP�}M��    \   res://.godot/imported/Summer24.apple-touch-icon.png-63cd5d2f91ab537bc5c1230fcf0cc554.ctex   @�     �      ꛲���� ��ܶ�    P   res://.godot/imported/Summer24.icon.png-341ad2827ea91e4c01f4165b879d6dce.ctex    �           ：Qt�E�cO���    H   res://.godot/imported/Summer24.png-9fe61eaa2dd7357ad205e907c76d7a53.ctex��     -      �%�$����<�׿�+    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctexp�            ：Qt�E�cO���    X   res://.godot/imported/index.apple-touch-icon.png-f28170c23a01839e20a81f84d0fce41c.ctex  ��      �      ꛲���� ��ܶ�    L   res://.godot/imported/index.icon.png-20972ecf2ac0fc4895d1a7ff9cbd22ba.ctex  `�            ：Qt�E�cO���    H   res://.godot/imported/index.png-1d621f6b701421bea95b123eda37cc10.ctex   P�      -      �%�$����<�׿�+       res://.godot/uid_cache.bin  $     g      �z�V�K�M��2~       res://Control_prompt.gd @�      �       �&N�������h        res://Instruction1.tscn.remap         i       �Lz�^cz]W����̈        res://Instruction2.tscn.remap   �     i       �����HW�.�͙�       res://Label_prompt.gd         �       a	�?�}��I9;��p4       res://Question1_script.gd   �      �      %��םo>�Iм�w�    ,   res://Summer24.apple-touch-icon.png.import   �     �       ���B��b��nc��^        res://Summer24.icon.png.import   �     �       �b3C���G	��#n�       res://Summer24.png.import        �       �'��E,zLl�~u|
F       res://TextEdit_prompt.gd`     �       25�Dɘ[�.S�Bk�       res://TextEdit_user.gd  `     �       N\D�~���GR}���    4   res://WebBuilds/index.apple-touch-icon.png.import   ��      �       S��a�@$,�n�ٟy,    (   res://WebBuilds/index.icon.png.import   ��      �       b�&��VѸ��JX        res://WebBuilds/index.png.importp�      �       Xp���xt\��:Y,�        res://addons/copilot/Copilot.gd         .      ���E9�(4ڗ9�-O�    ,   res://addons/copilot/CopilotUI.tscn.remap   �     f       �M"����w(�-�D�͗    (   res://addons/copilot/GithubCopilot.gd   �L            ����'/3�W,�/Ej       res://addons/copilot/LLM.gd 0l      	      C�����Y�Ao��    $   res://addons/copilot/OpenAIChat.gd  @n      V      ��%��
�6ϵ8L8�    (   res://addons/copilot/OpenAICompletion.gd�|      �	      m��$r�om�:a��?w        res://addons/copilot/Plugin.gd  ��            �"��2]���N���>       res://addons/copilot/UUID.gd �      q      �'����ˬ�B�]s�    ,   res://addons/copilot/large_icon.tres.remap  @     g        C��%��rq�N    ,   res://addons/copilot/small_icon.tres.remap  �     g       �I�� �ivx#<�T��       res://global_script.gd  0�      8       }]H�����ʗȐI��       res://icon.svg  P      �      k����X3Y���f       res://icon.svg.import   �     �       ��w�Z�}��օ       res://node_2d.tscn.remap      d       s�OR��0*�FC       res://project.binary�&     W      2�,�1�uu�)��4       res://rectangle.gd  �(     �|      |t^I�e��H�b�H       res://startingScreen.gd ��     �      �)�7��F�krT]?��        res://startingScreen.tscn.remap p     k       C��ώ	�=�U��pYY       res://table.tscn.remap  �     b       � 󵌟��z��r�I@�       res://text_edit.tscn.remap  P     f       ����t����Eg�c�*            @tool
extends Control

@onready var llms = $LLMs
@onready var context_label = $VBoxParent/Context
@onready var status_label = $VBoxParent/Status
@onready var model_select = $VBoxParent/ModelSetting/Model
@onready var shortcut_modifier_select = $VBoxParent/ShortcutSetting/HBoxContainer/Modifier
@onready var shortcut_key_select = $VBoxParent/ShortcutSetting/HBoxContainer/Key
@onready var multiline_toggle = $VBoxParent/MultilineSetting/Multiline
@onready var openai_key_title = $VBoxParent/OpenAiSetting/Label
@onready var openai_key_input = $VBoxParent/OpenAiSetting/OpenAiKey
@onready var version_label = $Version
@onready var info = $VBoxParent/Info

@export var icon_shader : ShaderMaterial
@export var highlight_color : Color

var editor_interface : EditorInterface
var screen = "Script"

var request_code_state = null
var cur_highlight = null
var indicator = null

var models = {}
var openai_api_key
var cur_model
var cur_shortcut_modifier = "Control" if is_mac() else "Alt"
var cur_shortcut_key = "C"
var allow_multiline = true

const PREFERENCES_STORAGE_NAME = "user://copilot.cfg"
const PREFERENCES_PASS = "F4fv2Jxpasp20VS5VSp2Yp2v9aNVJ21aRK"
const GITHUB_COPILOT_DISCLAIMER = "Use GitHub Copilot keys at your own risk. Retrieve key by following instructions [url=https://gitlab.com/aaamoon/copilot-gpt4-service?tab=readme-ov-file#obtaining-copilot-token]here[/url]."

func _ready():
	#Initialize dock, load settings
	populate_models()
	populate_modifiers()
	load_config()

func populate_models():
	#Add all found models to settings
	model_select.clear()
	for llm in llms.get_children():
		var new_models = llm._get_models()
		for model in new_models:
			model_select.add_item(model)
			models[model] = get_path_to(llm)
	model_select.select(0)
	set_model(model_select.get_item_text(0))

func populate_modifiers():
	#Add available shortcut modifiers based on platform
	shortcut_modifier_select.clear()
	var modifiers = ["Alt", "Ctrl", "Shift"]
	if is_mac(): modifiers = ["Cmd", "Option", "Control", "Shift"]
	for modifier in modifiers:
		shortcut_modifier_select.add_item(modifier)
	apply_by_value(shortcut_modifier_select, cur_shortcut_modifier)

func _unhandled_key_input(event):
	#Handle input
	if event is InputEventKey:
		if cur_highlight:
			#If completion is shown, TAB will accept it
			#and the TAB input ignored
			if event.keycode == KEY_TAB:
				undo_input()
				clear_highlights()
			#BACKSPACE will remove it
			elif event.keycode == KEY_BACKSPACE:
				revert_change()
				clear_highlights()
			#Any other key press will plainly accept it
			else:
				clear_highlights()
		#If shortcut modifier and key are pressed, request completion
		if shortcut_key_pressed(event) and shortcut_modifier_pressed(event):
			request_completion()

func is_mac():
	#Platform check
	return OS.get_name() == "macOS"

func shortcut_key_pressed(event):
	#Check if selected shortcut key is pressed
	var key_string = OS.get_keycode_string(event.keycode)
	return key_string == cur_shortcut_key

func shortcut_modifier_pressed(event):
	#Check if selected shortcut modifier is pressed
	match cur_shortcut_modifier:
		"Control":
			return event.ctrl_pressed
		"Ctrl":
			return event.ctrl_pressed
		"Alt":
			return event.alt_pressed
		"Option":
			return event.alt_pressed
		"Shift":
			return event.shift_pressed
		"Cmd":
			return event.meta_pressed
		_:
			return false

func clear_highlights():
	#Clear all currently highlighted lines
	#and reset request status
	request_code_state = null
	cur_highlight = null
	var editor = get_code_editor()
	for line in range(editor.get_line_count()):
		editor.set_line_background_color(line, Color(0, 0, 0, 0))

func undo_input():
	#Undo last input in code editor
	var editor = get_code_editor()
	editor.undo()

func update_loading_indicator(create = false):
	#Make sure loading indicator is placed at caret position
	if screen != "Script": return
	var editor = get_code_editor()
	if !editor: return
	var line_height = editor.get_line_height()
	if !is_instance_valid(indicator):
		if !create: return
		indicator = ColorRect.new()
		indicator.material = icon_shader
		indicator.custom_minimum_size = Vector2(line_height, line_height)
		editor.add_child(indicator)
	var pos = editor.get_caret_draw_pos()
	var pre_post = get_pre_post()
	#Caret position returned from Godot is not reliable
	#Needs to be adjusted for empty lines
	var is_on_empty_line = pre_post[0].right(1) == "\n"
	var offset = line_height/2-1 if is_on_empty_line else line_height-1
	indicator.position = Vector2(pos.x, pos.y - offset)
	editor.editable = false

func remove_loading_indicator():
	#Free loading indicator, and return editor to editable state
	if is_instance_valid(indicator): indicator.queue_free()
	set_status("")
	var editor = get_code_editor()
	editor.editable = true

func set_status(text):
	#Update status label in dock
	status_label.text = ""

func insert_completion(content: String, pre, post):
	#Overwrite code editor text to insert received completion
	var editor = get_code_editor()
	var scroll = editor.scroll_vertical
	
	var caret_text = pre + content
	var lines_from = pre.split("\n")
	var lines_to = caret_text.split("\n")
	
	cur_highlight = [lines_from.size(), lines_to.size()]
	
	editor.set_text(pre + content + post)
	editor.set_caret_line(lines_to.size())
	editor.set_caret_column(lines_to[-1].length())
	editor.scroll_vertical = scroll
	editor.update_code_completion_options(false)

func revert_change():
	#Revert inserted completion
	var code_edit = get_code_editor()
	var scroll = code_edit.scroll_vertical
	var old_text = request_code_state[0] + request_code_state[1]
	var lines_from = request_code_state[0].strip_edges(false, true).split("\n")
	code_edit.set_text(old_text)
	code_edit.set_caret_line(lines_from.size()-1)
	code_edit.set_caret_column(lines_from[-1].length())
	code_edit.scroll_vertical = scroll
	clear_highlights()

func _process(delta):
	#Update visuals and context label
	update_highlights()
	update_loading_indicator()
	update_context()

func update_highlights():
	#Make sure highlighted lines persist until explicitely removed
	#via key input
	if cur_highlight:
		var editor = get_code_editor()
		for line in range(cur_highlight[0]-1, cur_highlight[1]):
			editor.set_line_background_color(line, highlight_color)

func update_context():
	#Show currently edited file in dock
	var script = get_current_script()
	if script: context_label.text = script.resource_path.get_file()

func on_main_screen_changed(_screen):
	#Track current editor screen (2D, 3D, Script)
	screen = _screen

func get_current_script():
	#Get currently edited script
	if !editor_interface: return
	var script_editor = editor_interface.get_script_editor()
	return script_editor.get_current_script()

func get_code_editor():
	#Get currently used code editor
	#This does not return the shader editor!
	if !editor_interface: return
	var script_editor = editor_interface.get_script_editor()
	var base_editor = script_editor.get_current_editor()
	if base_editor:
		var code_edit = base_editor.get_base_editor()
		return code_edit
	return null

func request_completion():
	#Get current code and request completion from active model
	if request_code_state: return
	set_status("Asking %s..." % cur_model)
	update_loading_indicator(true)
	var pre_post = get_pre_post()
	var llm = get_llm()
	if !llm: return
	llm._send_user_prompt(pre_post[0], pre_post[1])
	request_code_state = pre_post

func get_pre_post():
	#Split current code based on caret position
	var editor = get_code_editor()
	var text = editor.get_text()
	var pos = Vector2(editor.get_caret_line(), editor.get_caret_column())
	var pre = ""
	var post = ""
	for i in range(pos.x):
		pre += editor.get_line(i) + "\n"
	pre += editor.get_line(pos.x).substr(0,pos.y)
	post += editor.get_line(pos.x).substr(pos.y) + "\n"
	for ii in range(pos.x+1, editor.get_line_count()):
		post += editor.get_line(ii) + "\n"
	return [pre, post]

func get_llm():
	#Get currently active llm and set active model
	var llm = get_node(models[cur_model])
	llm._set_api_key(openai_api_key)
	llm._set_model(cur_model)
	llm._set_multiline(allow_multiline)
	return llm

func matches_request_state(pre, post):
	#Check if code passed for completion request matches current code
	return request_code_state[0] == pre and request_code_state[1] == post

func set_openai_api_key(key):
	#Apply API key
	openai_api_key = key

func set_model(model_name):
	#Apply selected model
	cur_model = model_name
	# Handle some special model scenarios
	if "github-copilot" in model_name:
		openai_key_title.text = "GitHub Copilot API Key"
		info.parse_bbcode(GITHUB_COPILOT_DISCLAIMER)
		info.show()
	else:
		openai_key_title.text = "OpenAI API Key"
		info.hide()

func set_shortcut_modifier(modifier):
	#Apply selected shortcut modifier
	cur_shortcut_modifier = modifier

func set_shortcut_key(key):
	#Apply selected shortcut key
	cur_shortcut_key = key

func set_multiline(active):
	#Apply selected multiline setting
	allow_multiline = active

func _on_code_completion_received(completion, pre, post):
	#Attempt to insert received code completion
	remove_loading_indicator()
	if matches_request_state(pre, post):
		insert_completion(completion, pre, post)
	else:
		clear_highlights()

func _on_code_completion_error(error):
	#Display error
	remove_loading_indicator()
	clear_highlights()
	push_error(error)

func _on_open_ai_key_changed(key):
	#Apply setting and store in config file
	set_openai_api_key(key)
	store_config()

func _on_model_selected(index):
	#Apply setting and store in config file
	set_model(model_select.get_item_text(index))
	store_config()

func _on_shortcut_modifier_selected(index):
	#Apply setting and store in config file
	set_shortcut_modifier(shortcut_modifier_select.get_item_text(index))
	store_config()

func _on_shortcut_key_selected(index):
	#Apply setting and store in config file
	set_shortcut_key(shortcut_key_select.get_item_text(index))
	store_config()

func _on_multiline_toggled(button_pressed):
	#Apply setting and store in config file
	set_multiline(button_pressed)
	store_config()

func store_config():
	#Store current setting in config file
	var config = ConfigFile.new()
	config.set_value("preferences", "model", cur_model)
	config.set_value("preferences", "shortcut_modifier", cur_shortcut_modifier)
	config.set_value("preferences", "shortcut_key", cur_shortcut_key)
	config.set_value("preferences", "allow_multiline", allow_multiline)
	config.set_value("keys", "openai", openai_api_key)
	config.save_encrypted_pass(PREFERENCES_STORAGE_NAME, PREFERENCES_PASS)

func load_config():
	#Retrieve current settings from config file
	var config = ConfigFile.new()
	var err = config.load_encrypted_pass(PREFERENCES_STORAGE_NAME, PREFERENCES_PASS)
	if err != OK: return
	cur_model = config.get_value("preferences", "model", cur_model)
	apply_by_value(model_select, cur_model)
	set_model(model_select.get_item_text(model_select.selected))
	cur_shortcut_modifier = config.get_value("preferences", "shortcut_modifier", cur_shortcut_modifier)
	apply_by_value(shortcut_modifier_select, cur_shortcut_modifier)
	cur_shortcut_key = config.get_value("preferences", "shortcut_key", cur_shortcut_key)
	apply_by_value(shortcut_key_select, cur_shortcut_key)
	allow_multiline = config.get_value("preferences", "allow_multiline", allow_multiline)
	multiline_toggle.set_pressed_no_signal(allow_multiline)
	openai_api_key = config.get_value("keys", "openai", "")
	openai_key_input.text = openai_api_key

func apply_by_value(option_button, value):
	#Select item for option button based on value instead of index
	for i in option_button.item_count:
		if option_button.get_item_text(i) == value:
			option_button.select(i)

func set_version(version):
	version_label.text = "v%s" % version


func on_info_meta_clicked(meta):
	OS.shell_open(meta)
    RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script     res://addons/copilot/Copilot.gd ��������	   Material %   res://addons/copilot/small_icon.tres <��_Ά@D	   Material %   res://addons/copilot/large_icon.tres �	�o"��,   Script )   res://addons/copilot/OpenAICompletion.gd ��������   Script #   res://addons/copilot/OpenAIChat.gd ��������   Script &   res://addons/copilot/GithubCopilot.gd ��������      local://PackedScene_qf0wx J         PackedScene          	         names "   �      Copilot    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    script    icon_shader    highlight_color    Control    VBoxParent    VBoxContainer 
   Indicator 	   material    custom_minimum_size    size_flags_horizontal 
   ColorRect    ContextTitle 	   modulate    text    horizontal_alignment    vertical_alignment    autowrap_mode    Label    Context    Status    HowToTitle    Separator1    HSeparator    HowTo    SettingTitle    Separator2    OpenAiSetting $   theme_override_constants/separation    HBoxContainer    size_flags_vertical    VSeparator 
   OpenAiKey    placeholder_text    secret 	   LineEdit    ModelSetting    Model    item_count 	   selected    fit_to_longest_item    popup/item_0/text    popup/item_0/id    popup/item_1/text    popup/item_1/id    popup/item_2/text    popup/item_2/id    OptionButton    ShortcutSetting 	   Modifier    popup/item_3/text    popup/item_3/id    Key    popup/item_4/text    popup/item_4/id    popup/item_5/text    popup/item_5/id    popup/item_6/text    popup/item_6/id    popup/item_7/text    popup/item_7/id    popup/item_8/text    popup/item_8/id    popup/item_9/text    popup/item_9/id    popup/item_10/text    popup/item_10/id    popup/item_11/text    popup/item_11/id    popup/item_12/text    popup/item_12/id    popup/item_13/text    popup/item_13/id    popup/item_14/text    popup/item_14/id    popup/item_15/text    popup/item_15/id    popup/item_16/text    popup/item_16/id    popup/item_17/text    popup/item_17/id    popup/item_18/text    popup/item_18/id    popup/item_19/text    popup/item_19/id    popup/item_20/text    popup/item_20/id    popup/item_21/text    popup/item_21/id    popup/item_22/text    popup/item_22/id    popup/item_23/text    popup/item_23/id    popup/item_24/text    popup/item_24/id    popup/item_25/text    popup/item_25/id    popup/item_26/text    popup/item_26/id    popup/item_27/text    popup/item_27/id    popup/item_28/text    popup/item_28/id    popup/item_29/text    popup/item_29/id    popup/item_30/text    popup/item_30/id    popup/item_31/text    popup/item_31/id    MultilineSetting 
   Multiline    button_pressed 	   CheckBox    Info    focus_mode    fit_content    selection_enabled    RichTextLabel    LLMs    Node    OpenAICompletion    OpenAIChat    GithubCopilot    Version    anchor_top    offset_top    _on_open_ai_key_changed    text_changed    _on_model_selected    item_selected    _on_shortcut_modifier_selected    _on_shortcut_key_selected    _on_multiline_toggled    toggled    on_info_meta_clicked    meta_clicked    _on_code_completion_error    completion_error    _on_code_completion_received    completion_received    	   variants    b                    �?                            ��d>���>���>  �?                
     HC  HC           �?  �?  �?333?      Current Context       
   �{,  �B      How To Use    r   Press the selected shortcut in the code editor to request a completion from Copilot at the current caret position    	   Settings 
   �{,�{,   
   
     �B�{,      OpenAI API Key       API Key             Model              text-davinci-003       gpt-3.5-turbo       gpt-4    	   Shortcut       Cmd       Option       Control       Shift              A       B       C       D       E       F             G             H             L             M    	         N       O             P             Q             R             S       T             U             V             X             Y             Z             1             2             3             4             5             6             7             8             9             0             Multiline Completions       Enabled                                 ��      node_count    #         nodes     �  ��������
       ����	                                                    	                        ����                                      ����            	            
                    ����                                                         ����                                             ����                                                         ����                                ����                          ����                                       ����                                 ����                    #   !   ����               "                       ����                      $                                    %   %   ����                    )   &   ����                     '      (                 #   *   ����               "                       ����                      $                             %   %   ����                    5   +   ����               ,       -      .      /      0      1      2      3      4                 #   6   ����               "                       ����                      $                             %   %   ����                    #   #   ����                          5   7   ����               ,   
   -      /      0      1      2      3       4      8   !   9                  5   :   ����D               ,   "   -      /   #   0      1   $   2      3   %   4      8   &   9       ;   '   <   
   =   (   >   )   ?   *   @   +   A   ,   B   -   C   .   D   /   E   0   F   1   G   2   H      I   3   J   4   K   5   L   6   M   7   N   8   O   9   P   :   Q   ;   R      S   <   T   =   U   >   V   ?   W   @   X   A   Y   B   Z   C   [   D   \   E   ]   F   ^   G   _   H   `   I   a   J   b   K   c   L   d   M   e   N   f   O   g   P   h   Q   i   R   j   S   k   T   l   U   m   V   n   W   o   X   p   Y   q   Z   r   [              #   s   ����               "                       ����                      $         \                           %   %   ����                    v   t   ����               u         ]              {   w   ����         x      y      z                  }   |   ����               }   ~   ����      ^              }      ����      _              }   �   ����      `                  �   ����
            6   �                  �   a                                     conn_count             conns     T          �   �                     �   �                     �   �                     �   �                     �   �                     �   �                     �   �                     �   �                      �   �                      �   �              !       �   �              !       �   �                    node_paths              editable_instances              version             RSRC            @tool
extends "res://addons/copilot/LLM.gd"

const URL = "https://api.githubcopilot.com/chat/completions"
const AUTH_URL = "https://api.github.com/copilot_internal/v2/token"
const SYSTEM_TEMPLATE = """You are a brilliant coding assistant for the game-engine Godot. The version used is Godot 4.0, and all code must be valid GDScript!
That means the new GDScript 2.0 syntax is used. Here's a couple of important changes that were introduced:
- Use @export annotation for exports
- Use Node3D instead of Spatial, and position instead of translation
- Use randf_range and randi_range instead of rand_range
- Connect signals via node.SIGNAL_NAME.connect(Callable(TARGET_OBJECT, TARGET_FUNC))
- Same for sort_custom calls, pass a Callable(TARGET_OBJECT, TARGET_FUNC)
- Use rad_to_deg instead of rad2deg
- Use PackedByteArray instead of PoolByteArray
- Use instantiate instead of instance
- You can't use enumerate(OBJECT). Instead, use "for i in len(OBJECT):"

Remember, this is not Python. It's GDScript for use in Godot.

You may only answer in code, never add any explanations. In your prompt, there will be an !INSERT_CODE_HERE! tag. Only respond with plausible code that may be inserted at that point. Never repeat the full script, only the parts to be inserted. Treat this as if it was an autocompletion. You may continue whatever word or expression was left unfinished before the tag. Make sure indentation matches the surrounding context."""
const INSERT_TAG = "!INSERT_CODE_HERE!"
const MAX_LENGTH = 8500

const PREFERENCES_STORAGE_NAME = "user://github_copilot_llm.cfg"
const PREFERENCES_PASS = "Jr55ICpdp3M3CuWHX0WHLqg3yh4XBjbXX"

var machine_id
var session_id
var auth_token

signal auth_token_retrieved

class Message:
	var role: String
	var content: String
	
	func get_json():
		return {
			"role": role,
			"content": content
		}

const ROLES = {
	"SYSTEM": "system",
	"USER": "user",
	"ASSISTANT": "assistant"
}

func _get_models():
	return [
		"gpt-4-github-copilot"
	]

func _set_model(model_name):
	model = model_name.replace("github-copilot", "")

func _send_user_prompt(user_prompt, user_suffix):
	var messages = format_prompt(user_prompt, user_suffix)
	get_completion(messages, user_prompt, user_suffix)

func format_prompt(prompt, suffix):
	var messages = []
	var system_prompt = SYSTEM_TEMPLATE
	
	var combined_prompt = prompt + suffix
	var diff = combined_prompt.length() - MAX_LENGTH
	if diff > 0:
		if suffix.length() > diff:
			suffix = suffix.substr(0,diff)
		else:
			prompt = prompt.substr(diff - suffix.length())
			suffix = ""
	var user_prompt = prompt + INSERT_TAG + suffix
	
	var msg = Message.new()
	msg.role = ROLES.SYSTEM
	msg.content = system_prompt
	messages.append(msg.get_json())
	
	msg = Message.new()
	msg.role = ROLES.USER
	msg.content = user_prompt
	messages.append(msg.get_json())
	
	return messages
	
func gen_hex_str(length: int) -> String:
	var rng = RandomNumberGenerator.new()
	var result = PackedByteArray()
	for i in range(length / 2):
		result.push_back(rng.randi_range(0, 255))
	var hex_str = ""
	for byte in result:
		hex_str += "%02x" % byte
	return hex_str

func create_headers(token: String, stream: bool):
	var contentType: String = "application/json; charset=utf-8"
	if stream:
		contentType = "text/event-stream; charset=utf-8"

	load_config()
	var uuidString: String = UUID.v4()

	return [
		"Authorization: %s" % ("Bearer " + token),
		"X-Request-Id: %s" % uuidString,
		"Vscode-Sessionid: %s" % session_id,
		"Vscode-Machineid: %s" % machine_id,
		"Editor-Version: vscode/1.83.1",
		"Editor-Plugin-Version: copilot-chat/0.8.0",
		"Openai-Organization: github-copilot",
		"Openai-Intent: conversation-panel",
		"Content-Type: %s" % contentType,
		"User-Agent: GitHubCopilotChat/0.8.0",
		"Accept: */*",
		"Accept-Encoding: gzip,deflate,br",
		"Connection: close"
	]

func get_auth():
	var headers = [
		"Accept-Encoding: gzip",
		"Authorization: token %s" % api_key
	]
	var http_request = HTTPRequest.new()
	add_child(http_request)
	http_request.connect("request_completed",on_auth_request_completed)
	var error = http_request.request(AUTH_URL, headers, HTTPClient.METHOD_GET)
	if error != OK:
		emit_signal("completion_error", null)

func get_completion(messages, prompt, suffix):
	if not auth_token:
		get_auth()
		await auth_token_retrieved
	
	var body = {
		"model": model,
		"messages": messages,
		"temperature": 0.7,
		"top_p": 1,
		"n": 1,
		"stream": false,
	}
	var headers = create_headers(auth_token, false)
	var http_request = HTTPRequest.new()
	add_child(http_request)
	http_request.connect("request_completed",on_request_completed.bind(prompt, suffix, http_request))
	var json_body = JSON.stringify(body)
	var error = http_request.request(URL, headers, HTTPClient.METHOD_POST, json_body)
	if error != OK:
		emit_signal("completion_error", null)

func on_auth_request_completed(result, response_code, headers, body):
	var test_json_conv = JSON.new()
	test_json_conv.parse(body.get_string_from_utf8())
	var json = test_json_conv.get_data()
	auth_token = json.token
	auth_token_retrieved.emit()

func on_request_completed(result, response_code, headers, body, pre, post, http_request):
	var test_json_conv = JSON.new()
	test_json_conv.parse(body.get_string_from_utf8())
	var json = test_json_conv.get_data()
	var response = json
	if !response.has("choices") :
		emit_signal("completion_error", response)
		return
	var completion = response.choices[0].message
	if is_instance_valid(http_request):
		http_request.queue_free()
	emit_signal("completion_received", completion.content, pre, post)

func store_config():
	var config = ConfigFile.new()
	config.set_value("auth", "machine_id", machine_id)
	config.save_encrypted_pass(PREFERENCES_STORAGE_NAME, PREFERENCES_PASS)
	
func load_config():
	var config = ConfigFile.new()
	var err = config.load_encrypted_pass(PREFERENCES_STORAGE_NAME, PREFERENCES_PASS)
	if not session_id:
		session_id = gen_hex_str(8) + "-" + gen_hex_str(4) + "-" + gen_hex_str(4) + "-" + gen_hex_str(4) + "-" + gen_hex_str(25)
	if err != OK:
		machine_id = UUID.v4()
		store_config()
		return
	machine_id = config.get_value("auth", "machine_id", UUID.v4())
              RSRC                    ShaderMaterial            ��������                                                  resource_local_to_scene    resource_name    code    script    shader    shader_parameter/circle_color    shader_parameter/circle_speed    shader_parameter/circle_width    shader_parameter/circle_count    shader_parameter/circle_size    shader_parameter/glow_strength    shader_parameter/glow_radius        
   local://9 �         local://ShaderMaterial_y5ns1 �         Shader          �  shader_type canvas_item;

uniform vec4 circle_color : source_color = vec4(0.0, 1.0, 1.0, 1.0);
uniform float circle_speed : hint_range(0.0, 10.0) = 1.0;
uniform float circle_width : hint_range(0.0, 1.0) = 0.1;
uniform float circle_count : hint_range(1.0, 20.0) = 6.0;
uniform float circle_size : hint_range(0.1, 2.0) = 0.5;

// Glow settings
uniform float glow_strength : hint_range(0.0, 1.0) = 0.5;
uniform float glow_radius : hint_range(0.0, 1.0) = 0.2;

void fragment() {
    vec2 uv = UV * 3.0 - vec2(1.5, 1.5);
    float len = length(uv);
    
    float circle = 0.0;
    for (float i = 0.0; i < circle_count; i++) {
        float t = i / circle_count;
        float time_offset = t * 6.28318; // 2 * PI
        float radius = (1.0 - t * circle_size) * (1.0 + sin(TIME * circle_speed + time_offset) * 0.1);
        float circle_strength = smoothstep(radius - circle_width, radius, len) - smoothstep(radius, radius + circle_width, len);
        circle = max(circle, circle_strength);
    }

    // Glow effect
    float glow = smoothstep(circle_width, circle_width + glow_radius, circle);
    circle += glow_strength * glow;

    vec4 col = vec4(circle_color.rgb * circle, circle_color.a * circle);
    COLOR = col;
}          ShaderMaterial 	                      �r?��?��Q?  �?   )   ?5^�I@   )   �������?        �@	   )   �������?
   )   �������?                RSRC    @tool
extends Node

var model
var api_key
var allow_multiline

signal completion_received(completion, pre, post)
signal completion_error(error)

#Expects return value of String Array
func _get_models():
	return []

#Sets active model
func _set_model(model_name):
	model = model_name

#Sets API key
func _set_api_key(key):
	api_key = key

#Determines if multiline completions are allowed
func _set_multiline(allowed):
	allow_multiline = allowed

#Sends user prompt
func _send_user_prompt(user_prompt, user_suffix):
	pass

       @tool
extends "res://addons/copilot/LLM.gd"

const URL = "https://api.openai.com/v1/chat/completions"
const SYSTEM_TEMPLATE = """You are a brilliant coding assistant for the game-engine Godot. The version used is Godot 4.0, and all code must be valid GDScript!
That means the new GDScript 2.0 syntax is used. Here's a couple of important changes that were introduced:
- Use @export annotation for exports
- Use Node3D instead of Spatial, and position instead of translation
- Use randf_range and randi_range instead of rand_range
- Connect signals via node.SIGNAL_NAME.connect(Callable(TARGET_OBJECT, TARGET_FUNC))
- Same for sort_custom calls, pass a Callable(TARGET_OBJECT, TARGET_FUNC)
- Use rad_to_deg instead of rad2deg
- Use PackedByteArray instead of PoolByteArray
- Use instantiate instead of instance
- You can't use enumerate(OBJECT). Instead, use "for i in len(OBJECT):"

Remember, this is not Python. It's GDScript for use in Godot.

You may only answer in code, never add any explanations. In your prompt, there will be an !INSERT_CODE_HERE! tag. Only respond with plausible code that may be inserted at that point. Never repeat the full script, only the parts to be inserted. Treat this as if it was an autocompletion. You may continue whatever word or expression was left unfinished before the tag. Make sure indentation matches the surrounding context."""
const INSERT_TAG = "!INSERT_CODE_HERE!"
const MAX_LENGTH = 8500

class Message:
	var role: String
	var content: String
	
	func get_json():
		return {
			"role": role,
			"content": content
		}

const ROLES = {
	"SYSTEM": "system",
	"USER": "user",
	"ASSISTANT": "assistant"
}

func _get_models():
	return [
		"gpt-3.5-turbo",
		"gpt-4"
	]

func _set_model(model_name):
	model = model_name

func _send_user_prompt(user_prompt, user_suffix):
	var messages = format_prompt(user_prompt, user_suffix)
	get_completion(messages, user_prompt, user_suffix)

func format_prompt(prompt, suffix):
	var messages = []
	var system_prompt = SYSTEM_TEMPLATE
	
	var combined_prompt = prompt + suffix
	var diff = combined_prompt.length() - MAX_LENGTH
	if diff > 0:
		if suffix.length() > diff:
			suffix = suffix.substr(0,diff)
		else:
			prompt = prompt.substr(diff - suffix.length())
			suffix = ""
	var user_prompt = prompt + INSERT_TAG + suffix
	
	var msg = Message.new()
	msg.role = ROLES.SYSTEM
	msg.content = system_prompt
	messages.append(msg.get_json())
	
	msg = Message.new()
	msg.role = ROLES.USER
	msg.content = user_prompt
	messages.append(msg.get_json())
	
	return messages

func get_completion(messages, prompt, suffix):
	var body = {
		"model": model,
		"messages": messages,
		"temperature": 0.7,
		"max_tokens": 500,
		"stop": "\n\n" if allow_multiline else "\n" 
	}
	var headers = [
		"Content-Type: application/json",
		"Authorization: Bearer %s" % api_key
	]
	var http_request = HTTPRequest.new()
	add_child(http_request)
	http_request.connect("request_completed",on_request_completed.bind(prompt, suffix, http_request))
	var json_body = JSON.stringify(body)
	var error = http_request.request(URL, headers, HTTPClient.METHOD_POST, json_body)
	if error != OK:
		emit_signal("completion_error", null)


func on_request_completed(result, response_code, headers, body, pre, post, http_request):
	var test_json_conv = JSON.new()
	test_json_conv.parse(body.get_string_from_utf8())
	var json = test_json_conv.get_data()
	var response = json
	if !response.has("choices") :
		emit_signal("completion_error", response)
		return
	var completion = response.choices[0].message
	if is_instance_valid(http_request):
		http_request.queue_free()
	emit_signal("completion_received", completion.content, pre, post)
          @tool
extends "res://addons/copilot/LLM.gd"

const URL = "https://api.openai.com/v1/completions"
const PROMPT_PREFIX = """#This is a GDScript script using Godot 4.0. 
#That means the new GDScript 2.0 syntax is used. Here's a couple of important changes that were introduced:
#- Use @export annotation for exports
#- Use Node3D instead of Spatial, and position instead of translation
#- Use randf_range and randi_range instead of rand_range
#- Connect signals via node.SIGNAL_NAME.connect(Callable(TARGET_OBJECT, TARGET_FUNC))
#- Connect signals via node.SIGNAL_NAME.connect(Callable(TARGET_OBJECT, TARGET_FUNC))
#- Use rad_to_deg instead of rad2deg
#- Use PackedByteArray instead of PoolByteArray
#- Use instantiate instead of instance
#- You can't use enumerate(OBJECT). Instead, use "for i in len(OBJECT):" 
#
#Remember, this is not Python. It's GDScript for use in Godot.


"""
const MAX_LENGTH = 8500

func _get_models():
	return [
		"text-davinci-003"
	]

func _set_model(model_name):
	model = model_name

func _send_user_prompt(user_prompt, user_suffix):
	get_completion(user_prompt, user_suffix)

func get_completion(_prompt, _suffix):
	var prompt = _prompt
	var suffix = _suffix
	var combined_prompt = prompt + suffix
	var diff = combined_prompt.length() - MAX_LENGTH
	if diff > 0:
		if suffix.length() > diff:
			suffix = suffix.substr(0,diff)
		else:
			prompt = prompt.substr(diff - suffix.length())
			suffix = ""
	var body = {
		"model": model,
		"prompt": PROMPT_PREFIX + prompt,
		"suffix": suffix,
		"temperature": 0.7,
		"max_tokens": 500,
		"stop": "\n\n" if allow_multiline else "\n" 
	}
	var headers = [
		"Content-Type: application/json",
		"Authorization: Bearer %s" % api_key
	]
	var http_request = HTTPRequest.new()
	add_child(http_request)
	http_request.connect("request_completed",on_request_completed.bind(prompt, suffix, http_request))
	var json_body = JSON.stringify(body)
	var error = http_request.request(URL, headers, HTTPClient.METHOD_POST, json_body)
	if error != OK:
		emit_signal("completion_error", null)

func on_request_completed(result, response_code, headers, body, pre, post, http_request):
	var test_json_conv = JSON.new()
	test_json_conv.parse(body.get_string_from_utf8())
	var json = test_json_conv.get_data()
	var response = json
	if !response.has("choices"):
		emit_signal("completion_error", response)
		return
	var completion = response.choices[0].text
	if is_instance_valid(http_request):
		http_request.queue_free()
	emit_signal("completion_received", completion, pre, post)
  @tool
extends EditorPlugin

const version = "1.0.0"
const scene_path = "res://addons/copilot/CopilotUI.tscn"

var dock
var editor_interface = get_editor_interface()

func _enter_tree() -> void:
	if(!dock):
		dock = load(scene_path).instantiate()
		add_control_to_dock(EditorPlugin.DOCK_SLOT_RIGHT_UL, dock)
		main_screen_changed.connect(Callable(dock, "on_main_screen_changed"))
		dock.editor_interface = get_editor_interface()
		dock.set_version(version)

func _exit_tree():
	remove_control_from_docks(dock)
	dock.queue_free()

               RSRC                    ShaderMaterial            ��������                                                  resource_local_to_scene    resource_name    code    script    shader    shader_parameter/circle_color    shader_parameter/circle_speed    shader_parameter/circle_width    shader_parameter/circle_count    shader_parameter/circle_size    shader_parameter/glow_strength    shader_parameter/glow_radius        
   local://9 �         local://ShaderMaterial_hytxx �         Shader          �  shader_type canvas_item;

uniform vec4 circle_color : source_color = vec4(0.0, 1.0, 1.0, 1.0);
uniform float circle_speed : hint_range(0.0, 10.0) = 1.0;
uniform float circle_width : hint_range(0.0, 1.0) = 0.1;
uniform float circle_count : hint_range(1.0, 20.0) = 6.0;
uniform float circle_size : hint_range(0.1, 2.0) = 0.5;

// Glow settings
uniform float glow_strength : hint_range(0.0, 1.0) = 0.5;
uniform float glow_radius : hint_range(0.0, 1.0) = 0.2;

void fragment() {
    vec2 uv = UV * 3.0 - vec2(1.5, 1.5);
    float len = length(uv);
    
    float circle = 0.0;
    for (float i = 0.0; i < circle_count; i++) {
        float t = i / circle_count;
        float time_offset = t * 6.28318; // 2 * PI
        float radius = (1.0 - t * circle_size) * (1.0 + sin(TIME * circle_speed + time_offset) * 0.1);
        float circle_strength = smoothstep(radius - circle_width, radius, len) - smoothstep(radius, radius + circle_width, len);
        circle = max(circle, circle_strength);
    }

    // Glow effect
    float glow = smoothstep(circle_width, circle_width + glow_radius, circle);
    circle += glow_strength * glow;

    vec4 col = vec4(circle_color.rgb * circle, circle_color.a * circle);
    COLOR = col;
}          ShaderMaterial 	                      �r?��?��Q?  �?        �@   )   333333�?         @	   )   �������?
        �?   )   �������?      RSRC        # From: https://github.com/binogure-studio/godot-uuid
# Credit: binogure-studio

# Note: The code might not be as pretty it could be, since it's written
# in a way that maximizes performance. Methods are inlined and loops are avoided.
extends Node
class_name UUID

const BYTE_MASK: int = 0b11111111

static func uuidbin():
  # 16 random bytes with the bytes on index 6 and 8 modified
	return [
		randi() & BYTE_MASK, randi() & BYTE_MASK, randi() & BYTE_MASK, randi() & BYTE_MASK,
		randi() & BYTE_MASK, randi() & BYTE_MASK, ((randi() & BYTE_MASK) & 0x0f) | 0x40, randi() & BYTE_MASK,
		((randi() & BYTE_MASK) & 0x3f) | 0x80, randi() & BYTE_MASK, randi() & BYTE_MASK, randi() & BYTE_MASK,
		randi() & BYTE_MASK, randi() & BYTE_MASK, randi() & BYTE_MASK, randi() & BYTE_MASK,
	]

static func uuidbinrng(rng: RandomNumberGenerator):
	return [
		rng.randi() & BYTE_MASK, rng.randi() & BYTE_MASK, rng.randi() & BYTE_MASK, rng.randi() & BYTE_MASK,
		rng.randi() & BYTE_MASK, rng.randi() & BYTE_MASK, ((rng.randi() & BYTE_MASK) & 0x0f) | 0x40, rng.randi() & BYTE_MASK,
		((rng.randi() & BYTE_MASK) & 0x3f) | 0x80, rng.randi() & BYTE_MASK, rng.randi() & BYTE_MASK, rng.randi() & BYTE_MASK,
		rng.randi() & BYTE_MASK, rng.randi() & BYTE_MASK, rng.randi() & BYTE_MASK, rng.randi() & BYTE_MASK,
	]

static func v4():
	# 16 random bytes with the bytes on index 6 and 8 modified
	var b = uuidbin()

	return '%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x' % [
	# low
	b[0], b[1], b[2], b[3],

	# mid
	b[4], b[5],

	# hi
	b[6], b[7],

	# clock
	b[8], b[9],

	# clock
	b[10], b[11], b[12], b[13], b[14], b[15]
	]
  
static func v4_rng(rng: RandomNumberGenerator):
  # 16 random bytes with the bytes on index 6 and 8 modified
	var b = uuidbinrng(rng)

	return '%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x' % [
	# low
	b[0], b[1], b[2], b[3],

	# mid
	b[4], b[5],

	# hi
	b[6], b[7],

	# clock
	b[8], b[9],

	# clock
	b[10], b[11], b[12], b[13], b[14], b[15]
  ]
  
var _uuid: Array

func _init(rng := RandomNumberGenerator.new()) -> void:
	_uuid = uuidbinrng(rng)

func as_array() -> Array:
	return _uuid.duplicate()

func as_dict(big_endian := true) -> Dictionary:
	if big_endian:
		return {
			"low"  : (_uuid[0]  << 24) + (_uuid[1]  << 16) + (_uuid[2]  << 8 ) +  _uuid[3],
			"mid"  : (_uuid[4]  << 8 ) +  _uuid[5],
			"hi"   : (_uuid[6]  << 8 ) +  _uuid[7],
			"clock": (_uuid[8]  << 8 ) +  _uuid[9],
			"node" : (_uuid[10] << 40) + (_uuid[11] << 32) + (_uuid[12] << 24) + (_uuid[13] << 16) + (_uuid[14] << 8 ) +  _uuid[15]
		}
	else:
		return {
			"low"  : _uuid[0]          + (_uuid[1]  << 8 ) + (_uuid[2]  << 16) + (_uuid[3]  << 24),
			"mid"  : _uuid[4]          + (_uuid[5]  << 8 ),
			"hi"   : _uuid[6]          + (_uuid[7]  << 8 ),
			"clock": _uuid[8]          + (_uuid[9]  << 8 ),
			"node" : _uuid[10]         + (_uuid[11] << 8 ) + (_uuid[12] << 16) + (_uuid[13] << 24) + (_uuid[14] << 32) + (_uuid[15] << 40)
		}
	
func as_string() -> String:
	return '%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x' % [
	# low
	_uuid[0], _uuid[1], _uuid[2], _uuid[3],

	# mid
	_uuid[4], _uuid[5],

	# hi
	_uuid[6], _uuid[7],

	# clock
	_uuid[8], _uuid[9],

	# node
	_uuid[10], _uuid[11], _uuid[12], _uuid[13], _uuid[14], _uuid[15]
  ]
  
func is_equal(other) -> bool:
  # Godot Engine compares Array recursively
  # There's no need for custom comparison here.
	return _uuid == other._uuid
               GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /��,� j�Fj���'|$"���X��qj��mC�$� �O� �\E�$)} `��;�� m9�����������r� \.��-�q
%;���{~��s�(hۆIß�.��� �H-(]m۔�����0+�|�1�3���Aݶ���Ke���U����0��"�N!���F��H��a��p��h�?�����#I�$I�="�������>ti�ʐc�ڲ'�{��V����O���ҹK�ܨ��:�	�m��ȶm����"3;8#9f�ҸFi��8�Q�"Sg�9�:�(釯�Ғ:�pٶ��n�>�����'��̌5�Zd	���L����,?�m��mۖ����K�N���f�5�@���Ysѻ�G�@T"Y �������A2�? ���7M��m�J���p�m#I�Ĭm�ݽ7Spd�V��C�����-t���Q��	�D �HW;��z �'���s����b��}�c�J�-hA9hC$l1�?���OO����ߞ���ŧ8�  �(�t��	�����:k�z ����s���������MV5�Q@14"g��l����p���#�?��P����ٞ|?l��h ��  ,9��lmD�)!9��ܞֱ�s8�,�&`��������;�G/�v唱�~����5 �p��7�3�xά��+�t��\�2�"hSdІ�y����W�.w��.�rMO� �N <��3�9����ӵ�vݮ�Ё4*"Dȱ�ͺw����\�*j u�����(�qӸ|qױ��  R�DB�	 ��eԆJW�  Ĩc��w~z7n��%t!_'  v<۞	��/��4�z�� Bdd�W�"�T�D4B ��i�R���  4��©'ǝ뤁 [�lur��x��d{��F��S�1�" 2��P�"� �`d1T&+;����% P���x�F��F]��θ��Xv<GKN���_�o`E�\�b�t�,� �
 "�,��+���P�$ �����bn#>�f��z��Ҏ灿vi-� IJ�� �I��Lj�6I  F���?��θ�(ͺ��4W�t�v=�6 H�T&}��ZjM��  �������g� ���.b��\F �2i��f���.&c� :�k��m`���j��G��;�TE ���ж!�b��*N�XO�G
�{��c�v�!� �1V�
�6P�Q� �(�}���s�w������p>�"�c��@w�� p��1�刯��Wz��I �1hY���PI �r��}C����x���,@�,�"	h�$:�E@�ܝ�ys�3� $�WL@GtJ �JXsUR��"��B�E @��"A �K�%��  ��� �H�FDB �����0�J  P@*� �62 @U�  �h�  d����$ ��� ��'�GCu���n��ִ�)3�������w��
		�/�}�>_u:9)��3�����+i�t���N�o�k�Mj]8  ���&ɩN�� @�r5�Yf�%�-��S44�x�I ��m4����ih���Ӛ�9�,s�.3-ݪ,�zZj�N�o&
<��2,s�r���3�:�  Pɦ�'TK;�|�j<}�T��vע5�P��=���E���HM|�i1���>{��YI5)�|���l���d""�F$�>�ӝ�7g/=��*�LI����õ�n�L��I��pj�VI p�`;[���$���gj��\���sp�`�|���$-� G6P�.\�p�.�nMpYKФE8�<9X5���� `���'�!d�0��e���iJ.�㮚�s��3��� LF"K \lY,.#G�@��9@5�,��\.$a�aW�:ȯ|���&`p� �\��-�j�2Xr�J9Yt`���fk#r��}��&�.K�lg��&.[Er��&`a�H.���	���`6�M�:ӓqHR�E@]�,�<�N���v))���{cD� �G�H�@��!kYs4�q�%	i�>��/Ph³>�����L�!	G���(_�<�ҹ���b�֯���|I��+u����1Bf-�y�w�c��O	��呵�1�ј.��Tl��G�ߍfC�� @�E<�1{cD�O��Ox�����ƾz*��]c����#Һ�3&�iq �D]�h?�)�r���  D@�ۚw��SGx5���AK���nOp�7���;igI��v8�x$P�j�ǫ��z (<�^j� �ݙ��Z	
%���7)�;��;�p��|� `��g�G������ޓiLcn̫��;�( @�z�l^S����F#��'@P�)i׵L`E�@����7lolϺ��'E��E�8J}�Q`]�H; @��%"v�l�*r�����?�SaHCD"�J&�1c�
"	�:Cd%ʉ �,�����b�#�숞7!� 5�xD�
�é�D�ː:�����m��W%*P���M��?��M��p��@�7�z����=uc�$�*?����ɻϦٚ%�Ru�������i���ɲ�n�Q��|/�?sfӀ��WUw����Og���Ɓ�\G���{]�hW���I��:�u��qT�=X=��/���̙"�e�2]�u\\4*�W�ҧM���_~���BrR������]}o_��9����R��U��O]�`����&\�l]Z�1*�m��:��&���^���|��U��߃d�6{���|gπ�,�2�?�K�շ��O;��[=x�H@�u����Up�?P��a���%7Īb�m���-��o�f���'���w�O�BÌs���jg��{��g�Cn�Z\9{s�Y"d��ֹh�p�S�1��]��&�;{mqE��)^�P�Y��{����ے��a����7��_��?*8�,��s��=��N��&�u����[r�廎^8��uy�rpйp��v7|X�|T����=������k�F�J����?����E����_��m'/����JP[���|�[�Q?�0�pp0x�;��[�m�iёȦ��Oz�S��'B���)��{�>�������������i���_��GO��ٔ�����$�F��ξ5���*8x��>+: �+N����bZ������^��wm=�l��=��ջ�o��d�ew=n�����e DB=�=�Ȕ]p������ `b�y�{�u��ː��ۜj�l�I�O�^��LmEG�Yކ��}��cO�-�Ϻ��Ι ��)�fo0&� ��W;S@�5���w�O�������H  p��]��q)@��'��D&�j�=��C�sr�L���$��k}����I  �	�-~���w�P��-Urr�8o���c �O���ߺܯ��_��0����Q����~������������_�����ޡ�P�ֿ������@��k�{�ߛ�2 �ٖ��*���=��#�]��)���Ϻ�t?@+8h��\P[k��z��=~f���Gm=����g�~\���RK�y*<��#��'��)g|�u5�-@Vmt��Tn����EF,W�ˏ� kZ>��$Ƅ��6k5ν����� r�>��5�[�[z�C�����&��r�� �j��r�g ��R���#�X�v�32k��yN5  �۵Χ����yjˑ�y]v`m抏;}  �rS+�ݝS���-K;g�Lp �!WTw���H�Mz	��eXL9�l  �TWn��cJL`4�R �'�]�Z�Rnd cn�  Qn�n�.*��-&�f��%w�i�|y�w�}�3̲���  @c(���� @�ƣ9��Ms�������|fק���¯,�nTr �*�r[\7��9�P�Y�2t��ܚ������n��7n�GĊ�:���\\�n�r[�M%8d����7��3k�����_��~�S�Ϣ.�^�a��	G������⑵�[���yw�C�f6_�ͱ�}���r�z�������?�-k����_���˿�\M�2���a�uW�h���?�������vYC�W_#=P��UN֛���X����"˻�������?ߗ�,��G
������������g��N.���+����_�y5�~�}�3n��vm��v^�z 6���zs0J.֗�S�8`�_�����}����#� �o�?�|��?��?���������W�8�+��׉gj��u/��n��壻z`zO|����ƕ޻��f6\`���EKJ�U»yK<h%�������������֏?��	辷�W��?��������_7?�t�Ω��S���E=���Ͽ�����?�O>q���=n�n��y����p8�y﮷��m}����m5�,�����w��VG�Y���j�:�1x�Kq�����('�U�b܃���uk������t�{����[����0k��>{�� l-��>�M �r���<����Ts�8�.��JǬ.W�w_��a��-i���Jq��s��R���'�m��q���p`[�]�u��M,I�t��7���c�W�p1z�D_t�32Mk�8z��:�.�Zp�\�:���؟���w�م�-N��o�դ��3.P�:G���P]�D��J�r5���Z%2+�}�w�~u`�`1�ӜL �n��U�}�����2k�n1o����JV�ۢ�F�Ο�bL�Y��sUG�����M��>_�R�x]\������x&J�|�Ï�n!~�*e-
�V��۵hd��b�|1�u+R���īpV�?Y&�`q���ف_LF$����?n��pr3'����G��"LD���&�DDZ�_J�H���g��a��}v؝�V<sŸr+��u�xf�bU2�$��A+��C �\�'7r#7r�\�\��O��+�bZ=~��z=.���0�)mq��$	I�uI�1�4�+�r�uuj
*P�@A�KB ������b!j�O�aW�,�s�lYٲr�s�}�|�%%�h6b]\)Yb��Ȓ�����W�M�bcp-����D��( @ ֜�>���S�X�򔓱E��ȣư�3�X��rf�a�V�`��b�bӸT@0R�P@�@(2@�La���:��=�i�]��v���!��xn����� \0.���!�$I-��fg�bq,�����w�@��<���9�||���,*�Č̓����y�x(r�օ��X�ʁJa�.��X-�4)itӤI�F�cq�����/�7)�*`-j2  �B�S()�:�B�P]��%�$��c�.5�������*��La��e;��f��L�����fb�Yx �Ű�Q�Y����z5�5T��j+� �Ȭx�D%˃��Yr3�2�a��}�;m�
�1��3�<��0]u���Oc�{�W2���9�:5s+�ѱ��Õ.. h�?mQX�(rY�-G˱�'��W�>�����	d�ΑM�Dq K�#^`�b�
�xE#�-@��T&)?*�u��j5e�+6�������D�" �hl���Wł�ø��m, �*�����`,W� �Sl%�"XYi�$� `t�e��3g_^�x���1u�L�t8 �p�C�*��*�K�v�X�Ԃ���u�hg���"�
7_ ���V6^���Ã�ӥ����fr��X �}��X��-���<�lYg�:����l5h�
�բLa��l�]8���j��y�$2���Ȓ&K"#:�u��᯿�Ѹ�M���O�=�(� 2�N� x<�E���4��^�ҕ�.]i��՜�%F�X�����7�ڟ��LuQQ���&JH��(1C���� �t���I��~��lod�������o����  �x`�x�0c1<1,b��S�s������f=}��������PTZ���Њ
EE+p/���y��Ԧ���x��^��ԟ���������z�@������ܔ��řk�ց��/:��j�&6�vF��S���G&��=����~��}��&6bC+��h��F[bMlhK����F� nJ�7�2s-}��Kɻܞغ��x�=7�=���x�=���~n�}n�M���M������@Vǁ��(茧5�!2 ��/���w������y�y'�iމ��w��;���? ��g��N��|(��Cg��쯧��q�\�W�^^zu�Rz���~H_�/�W���/K?�^�/�����+��JE���1%�իy-�2�"�āX�hE[bMlh%6���m���m��:N���g�o�|�c��ܝ<�^��o���gE����M�&{���=�����p��>7�p{n�}n?nr{����~Չ�~���Օ)_y�<��ɣ���u<�<1ܝ��>���eo����a��O($"( ��;3e�m�u�^��Ł�d��т�Qj�՞�l@)R@� Y�,��Ws�Q	.@T8�	��3���Y@�|lA�����m��3e6i�@�Bu����#��b-H-(�p��H]3!Ji1FIK���o۶l{DC�
%��űp��E�X���i8��(I�r���!E��֦M�<���ҹ��ʢ�(oEc6Pw��7O��pr�m�Uͻf1�@�CDHg6���)��k˺���I��q��A�ѤEs无p�D��t̴�80P��jմ�F(_�)	(a\�R�X�|6�r���T��fZ�i5|	��D�(��q�����f��f�rp@�
d)RU�z�VS(����[z��B%�ș�q@5�|�����CI�f
���d��b12���t#M�d��#Q*k\��J�̏'����Q~x��t  �"��q���q.̸x�hR����tҖ(�����]��V  ��R���4Q��dOH���ř�ŕ3�9s�e�f��� �q������D$�BG ..x\\\���p~�ue~���  �F8a�3 @,v�F�  $l1� ,���	  ���R$ ��|Z!����_8����P*I4Qy �a��u��q��(�ICM�J �O���� !�be��4Q4���xL��뼗׵��� �����+I4Pn$'5J���`1�>���O���1�A��-��M��Ɖd�<�  0[V������i<�&@��Z� ���/ ���ыŧ���ەy��b JQj���ٜʹd  p�߻��}��(�2�~8�3ku�$�b���M��S�: �~�Zp�п�u�so�=�  $Q*����D4�hd�й�" ���R<���  ����K߶���& $1cmԚȩ�;�( ������� `z��5���:n�
���A�*]$�$���$��%�  p�n��J4�m�� Lo�\j7��҅SO0�2b "c��ND���F�� 	#$�9ϸX ��WoKԫ�U�Y����@��'��:��<^`e �It�)}�EB(�f�S�7�\#5��  ����V�}.�E޿�=����� �������Q-KH  B$�#&"�"	B�)  Tt_7����s�12l'��)���� ��u���l�^gЁ*bhW6�������x��E ����Ǔ�v u`��g��{����u�Q@�$� 81�]���*��5&g������6�A� ��θAiֽ���~���d�т\� a��.ﻗw�6l�V���߳���N `��3n`�l>���y����r_htߩ��5�PDYd��#��a���ˮ��פy���B���M{Vu?  og���θ�Yw _|5�}�/G|C�n�~�5�J��-�"�8a�)�2�����ca�ŤqgO MO�i�ڿ>��                [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://d22b8vgcaentj"
path="res://.godot/imported/index.apple-touch-icon.png-f28170c23a01839e20a81f84d0fce41c.ctex"
metadata={
"vram_texture": false
}
              GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�m�m۬�}�p,��5xi�d�M���)3��$�V������3���$G�$2#�Z��v{Z�lێ=W�~� �����d�vF���h���ڋ��F����1��ڶ�i�엵���bVff3/���Vff���Ҿ%���qd���m�J�}����t�"<�,���`B �m���]ILb�����Cp�F�D�=���c*��XA6���$
2#�E.@$���A.T�p )��#L��;Ev9	Б )��D)�f(qA�r�3A�,#ѐA6��npy:<ƨ�Ӱ����dK���|��m�v�N�>��n�e�(�	>����ٍ!x��y�:��9��4�C���#�Ka���9�i]9m��h�{Bb�k@�t��:s����¼@>&�r� ��w�GA����ը>�l�;��:�
�wT���]�i]zݥ~@o��>l�|�2�Ż}�:�S�;5�-�¸ߥW�vi�OA�x��Wwk�f��{�+�h�i�
4�˰^91��z�8�(��yޔ7֛�;0����^en2�2i�s�)3�E�f��Lt�YZ���f-�[u2}��^q����P��r��v��
�Dd��ݷ@��&���F2�%�XZ!�5�.s�:�!�Њ�Ǝ��(��e!m��E$IQ�=VX'�E1oܪì�v��47�Fы�K챂D�Z�#[1-�7�Js��!�W.3׹p���R�R�Ctb������y��lT ��Z�4�729f�Ј)w��T0Ĕ�ix�\�b�9�<%�#Ɩs�Z�O�mjX �qZ0W����E�Y�ڨD!�$G�v����BJ�f|pq8��5�g�o��9�l�?���Q˝+U�	>�7�K��z�t����n�H�+��FbQ9���3g-UCv���-�n�*���E��A�҂
�Dʶ� ��WA�d�j��+�5�Ȓ���"���n�U��^�����$G��WX+\^�"�h.���M�3�e.
����MX�K,�Jfѕ*N�^�o2��:ՙ�#o�e.
��p�"<W22ENd�4B�V4x0=حZ�y����\^�J��dg��_4�oW�d�ĭ:Q��7c�ڡ��
A>��E�q�e-��2�=Ϲkh���*���jh�?4�QK��y@'�����zu;<-��|�����Y٠m|�+ۡII+^���L5j+�QK]����I �y��[�����(}�*>+���$��A3�EPg�K{��_;�v�K@���U��� gO��g��F� ���gW� �#J$��U~��-��u���������N�@���2@1��Vs���Ŷ`����Dd$R�":$ x��@�t���+D�}� \F�|��h��>�B�����B#�*6��  ��:���< ���=�P!���G@0��a��N�D�'hX�׀ "5#�l"j߸��n������w@ K�@A3�c s`\���J2�@#�_ 8�����I1�&��EN � 3T�����MEp9N�@�B���?ϓb�C��� � ��+�����N-s�M�  ��k���yA 7 �%@��&��c��� �4�{� � �����"(�ԗ�� �t�!"��TJN�2�O~� fB�R3?�������`��@�f!zD��%|��Z��ʈX��Ǐ�^�b��#5� }ى`�u�S6�F�"'U�JB/!5�>ԫ�������/��;	��O�!z����@�/�'�F�D"#��h�a �׆\-������ Xf  @ �q�`��鎊��M��T�� ���0���}�x^�����.�s�l�>�.�O��J�d/F�ě|+^�3�BS����>2S����L�2ޣm�=�Έ���[��6>���TъÞ.<m�3^iжC���D5�抺�����wO"F�Qv�ږ�Po͕ʾ��"��B��כS�p�
��E1e�������*c�������v���%'ž��&=�Y�ް>1�/E������}�_��#��|������ФT7׉����u������>����0����緗?47�j�b^�7�ě�5�7�����|t�H�Ե�1#�~��>�̮�|/y�,ol�|o.��QJ rmϘO���:��n�ϯ�1�Z��ը�u9�A������Yg��a�\���x���l���(����L��a��q��%`�O6~1�9���d�O{�Vd��	��r\�՜Yd$�,�P'�~�|Z!�v{�N�`���T����3?DwD��X3l �����*����7l�h����	;�ߚ�;h���i�0�6	>��-�/�&}% %��8���=+��N�1�Ye��宠p�kb_����$P�i�5�]��:��Wb�����������ě|��[3l����`��# -���KQ�W�O��eǛ�"�7�Ƭ�љ�WZ�:|���є9�Y5�m7�����o������F^ߋ������������������Р��Ze�>�������������?H^����&=����~�?ڭ�>���Np�3��~���J�5jk�5!ˀ�"�aM��Z%�-,�QU⃳����m����:�#��������<�o�����ۇ���ˇ/�u�S9��������ٲG}��?~<�]��?>��u��9��_7=}�����~����jN���2�%>�K�C�T���"������Ģ~$�Cc�J�I�s�? wڻU���ə��KJ7����+U%��$x�6
�$0�T����E45������G���U7�3��Z��󴘶�L�������^	dW{q����d�lQ-��u.�:{�������Q��_'�X*�e�:�7��.1�#���(� �k����E�Q��=�	�:e[����u��	�*�PF%*"+B��QKc˪�:Y��ـĘ��ʴ�b�1�������\w����n���l镲��l��i#����!WĶ��L}rեm|�{�\�<mۇ�B�HQ���m�����x�a�j9.�cRD�@��fi9O�.e�@�+�4�<�������v4�[���#bD�j��W����֢4�[>.�c�1-�R�����N�v��[�O�>��v�e�66$����P
�HQ��9���r�	5FO� �<���1f����kH���e�;����ˆB�1C���j@��qdK|
����4ŧ�f�Q��+�     [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dtpo06k55bi5o"
path="res://.godot/imported/index.icon.png-20972ecf2ac0fc4895d1a7ff9cbd22ba.ctex"
metadata={
"vram_texture": false
}
          GST2      X     ����                X       �,  RIFF�,  WEBPVP8L�,  /Õ�mۆq�����1�Ve���G�N^6۶�'�����L �	���������'�G�n$�V����p����̿���H�9��L߃�E۶c��ۘhd�1�Nc��6���I܁���[�(�#�m�9��'�mۦL���f�����~�=��!i�f��&�"�	Y���,�A����z����I�mmN����#%)Ȩ��b��P
��l"��m'���U�,���FQ�S�m�$�pD��жm�m۶m#�0�F�m�6����$I�3���s�������oI�,I�l���Cn����Bm&�*&sӹEP���|[=Ij[�m۝m��m���l۶m��g{gK�jm���$�vۦ�W=n�  q��I$Ij�	�J�x����U��޽�� I�i[up�m۶m۶m۶m۶m�ټ�47�$)Ι�j�E�|�C?����/�����/�����/�����/�����/�����/�����/�����̸k*�u����j_R�.�ΗԳ�K+�%�=�A�V0#��������3��[ނs$�r�H�9xޱ�	T�:T��iiW��V�`������h@`��w�L�"\�����@|�
a2�T� ��8b����~�z��'`	$� KśϾ�OS��	���;$�^�L����α��b�R鷺�EI%��9  �7� ,0 @Nk�p�Uu��R�����Ω��5p7�T�'`/p����N�گ�
�F%V�9;!�9�)�9��D�h�zo���N`/<T�����֡cv��t�EIL���t  �qw�AX�q �a�VKq���JS��ֱ؁�0F�A�
�L��2�ѾK�I%�}\ �	�*�	1���i.'���e.�c�W��^�?�Hg���Tm�%�o�
oO-  x"6�& `��R^���WU��N��" �?���kG�-$#���B��#���ˋ�銀�z֊�˧(J�'��c  ��� vNmŅZX���OV�5X R�B%an	8b!		e���6�j��k0C�k�*-|�Z  ��I� \���v  ��Qi�+PG�F������E%����o&Ӎ��z���k��;	Uq�E>Yt�����D��z��Q����tɖA�kӥ���|���1:�
v�T��u/Z�����t)�e����[K㡯{1<�;[��xK���f�%���L�"�i�����S'��󔀛�D|<�� ��u�={�����L-ob{��be�s�V�]���"m!��*��,:ifc$T����u@8 	!B}� ���u�J�_  ��!B!�-� _�Y ��	��@�����NV]�̀����I��,|����`)0��p+$cAO�e5�sl������j�l0 vB�X��[a��,�r��ς���Z�,| % ȹ���?;9���N�29@%x�.
k�(B��Y��_  `fB{4��V�_?ZQ��@Z�_?�	,��� � ��2�gH8C9��@���;[�L�kY�W�
*B@� 8f=:;]*LQ��D
��T�f=�` T����t���ʕ�￀�p�f�m@��*.>��OU�rk1e�����5{�w��V!���I[����X3�Ip�~�����rE6�nq�ft��b��f_���J�����XY�+��JI�vo9��x3�x�d�R]�l�\�N��˂��d�'jj<����ne������8��$����p'��X�v����K���~ � �q�V������u/�&PQR�m����=��_�EQ�3���#����K���r  ��J	��qe��@5՗�/# l:�N�r0u���>��ׁd��ie2� ���G'& �`5���s����'����[%9���ۓ�Хމ�\15�ƀ�9C#A#8%��=%�Z%y��Bmy�#�$4�)dA�+��S��N}��Y�%�Q�a�W��?��$�3x $��6��pE<Z�Dq��8���p��$H�< �֡�h�cާ���u�  �"Hj$����E%�@z�@w+$�	��cQ��
1�)��������R9T��v�-  xG�1�?����PO�}Eq�i�p�iJ@Q�=@�ݹ:t�o��{�d`5�����/W^�m��g���B~ h�  ����l  נ�6rߙ�����^�?r���   ���⤖��  �!��#�3\?��/  �ݝRG��\�9;6���}P6������K>��V̒=l��n)��p	 ����0n䯂���}   ���S*	 ��t%ͤ+@�����T�~��s����oL)�J� 0>��W�-  �*N�%x=�8ikfV^���3�,�=�,}�<Z��T�+'��\�;x�Y���=���`}�y�>0����/'ـ�!z9�pQ��v/ֶ�Ǜ����㗬��9r���}��D���ל���	{�y����0&�Q����W��y ����l��.�LVZ��C���*W��v����r���cGk�
^�Ja%k��S���D"j���2���RW/������ض1 ����
.bVW&�gr��U\�+���!���m ;+۞�&�6]�4R�/��Y�L�Ά`"�sl,Y/��x��|&Dv�_
Q*� V�NWYu�%��-�&D�(&��"  Wc��ZS���(�x� ,�!����!�L�AM�E�]}X�!��wB�o��-  �-���16���i���ю�z��� ���B��oB�0������v]���ȓ�����3�� +S�χ�=Q_�����˨�d��|)D>��k ��uȣ���Y[9̂�����! ^�!��r���j0Y+i��΍e(�ț� ���x��
��{��<6 R���پ�b��Y
C����+���������;���a ���,�o��bC�{�?���1 �(��¤ �V�������;�=��I��� ���EI���Z��)D����t=S ��] X��9K�= �.~�K[��Ŋ��,2��� p}>w<n�g h�
�t���R�u�G�1k���!��x���������� �L���|>D�0�Ǣ(Qc�� ����= �ۊ�Z0�^��c �
|�����L�%�d��q���(�WB� ��(	���� �J��8D�0�~$�Dsy�Ѿ!������j�^ ��mOa�8.�qce��s|%Dq~,X�u�������=T	���Q�M�ȣm�Y�%Y+�[�0|"DΞ�j�u�L6�(Qe��qw�V�э���ǂ���!j�K � �:�wQ�dÛ������R�
��C���X�u�`����\"j讀Dq21� �F>B[��[������]@K-���C�e�q�tWP�:W�۞X�z��,��t�p���P��Se����T���{dG��
KA���w�t3t��[ܘ�4^>�5ŉ�^�n�Eq�U��Ӎ��α�v�O6C�
�F%�+8eů��M����hk��w�欹񔈓����C��y訫���J�Is�����Po|��{�Ѿ)+~�W��N,�ů��޽���O��J�_�w��N8����x�?�=X��t�R�BM�8���VSyI5=ݫ�	-�� �ֶ��oV�����G������3��D��aEI��ZI5�݋����t��b��j��G����U���΃�C�������ق�в����b���}s����xkn��`5�����>��M�Ev�-�͇\��|�=� '�<ތ�Ǜ���<O�LM�n.f>Z�,~��>��㷾�����x8���<x�����h}��#g�ж��������d�1xwp�yJO�v�	TV����گ�.�=��N����oK_={?-����@/�~�,��m ��9r.�6K_=�7#�SS����Ao�"�,TW+I��gt���F�;S���QW/�|�$�q#��W�Ƞ(�)H�W�}u�Ry�#���᎞�ͦ�˜QQ�R_��J}�O���w�����F[zjl�dn�`$� =�+cy��x3������U�d�d����v��,&FA&'kF�Y22�1z�W!�����1H�Y0&Ӎ W&^�O�NW�����U����-�|��|&HW������"�q����� ��#�R�$����?�~���� �z'F��I���w�'&����se���l�̂L�����-�P���s��fH�`�M��#H[�`,,s]��T����*Jqã��ł�� )-|yč��G�^J5]���e�hk�l;4�O��� ���[�������.��������������xm�p�w�չ�Y��(s�a�9[0Z�f&^��&�ks�w�s�_F^���2΂d��RU� �s��O0_\읅�,���2t�f�~�'t�p{$`6���WĽU.D"j�=�d��}��}���S["NB�_MxQCA[����\	�6}7Y����K���K6���{���Z۔s�2 �L�b�3��T��ݹ����&'ks����ܓ�ЛϾ�}f��,�Dq&������s��ϼ��{������&'k�����Qw窭�_i�+x�6ڥ��f�{j)���ퟎƍ3ou�R�Y����徙�k����X�Z
m.Y+=Z��m3�L47�j�3o�=�!J
5s���(��A ��t)���N�]68�u< Ƞ��_�im>d ��z(���(��⤶�� �&�ۥ� ��  Vc�8�'��qo9 �t��i�ρdn��Of���O�RQP���h'������P֡���n ���č����k�K@�>����pH>z)-|��B��j���!j:�+������˧��t�������1����.`v�M�k�q#�$���N:�����-M5a10y����(�T��� X5 \�:� ?+�7#�?�*Y+-,s� ~�|\)뀀ap �drn�g��RN�X�er ��@ĕ���;��z��8ɱ�����	�- �
�bKc����kt�U]�䎚���hgu���|�_J{ �`p��o�p�T�U��p���/���Hϑ�H�$X ܬm3���ŉ�U'��뻩t��G9�}�)O������p�΃g���JO���\9�׫�����ڳ�!k����/��9R���^�%��C����T���;ji<�>�KY����;�J��ƶm .P��pT��
@HA��r��98V���b�v���YwaZ>�$oւ?-փ��ʹ|0�.��3���b駁�c��;?8E;���V�B�؀����|%\\s��%����e{o��Z�i�������^���s�Jx������B jh�\ �h�<��V��sh@:���.�ІYl��˂�`3hE.,P�2^����J��+�����p��
�ЊJd��x�*�@�7R��� �"�G="!�� �p����u�o��wV�m�g���~F��?����/�����}~����sо7� ���\,,k�J�T�6������Z�y�rBZ[D�>v�HQ�R��mq�������DD�-6+�V`���J�E�����\� 9!ߑ�`��6���ml�~ZM�Z�ȎV���g���������3?*u3���ctW����YQa�Cb�P�,B5�p0�m�cͺEt�{,��>s9f�^��`OG��]����2�Fk�9_�G�vd��	��)��=�1^Ų�Wl3{�����1��H)�e������9�هZ�]}�b���)b�C��es}�cVi~x���e
Z�)܃��39������C�(�+R����!�j����F�n���<?�p��l�8a�4xOb��������c�8&�UA�|	/l�8�8���3t�6�͏���v���� ����סy�wU��`� =��|M�Y?�'�A��&�@*�c~!�/{��),�>�=xr"	�qlF:��L&���=<5t�h.�#ᣭ���O�z�!�&`A�F�yK=�c<\GZ�� 4HG�0i�F녠uB"���<��c�Jeۈ�3!����O��q萞PiZ&�$M[���(G��e���ؤ���ã��O���5����'�gH~�����=��g�F|8�+�X�4�u���G�2����'��.��5[�OlB��$f4���`��mS�L�,y�t&V�#P�3{ ��763�7N���"��P��I�X��BgV�n�a:$:�FZ���'�7����f������z!�����KA�G��D#������ˑ`ڶs���&� ݱ��4�j��n�� ݷ�~s��F�pD�LE�q+wX;t,�i�y��Y��A�۩`p�m#�x�kS�c��@bVL��w?��C�.|n{.gBP�Tr��v1�T�;"��v����XSS��(4�Ύ�-T�� (C�*>�-
�8��&�;��f;�[Փ���`,�Y�#{�lQ�!��Q��ّ�t9����b��5�#%<0)-%	��yhKx2+���V��Z� �j�˱RQF_�8M���{N]���8�m��ps���L���'��y�Ҍ}��$A`��i��O�r1p0�%��茮�:;�e���K A��qObQI,F�؟�o��A�\�V�����p�g"F���zy�0���9"� �8X�o�v����ߕڄ��E �5�3�J�ص�Ou�SbVis�I���ص�Z���ڒ�X��r�(��w��l��r"�`]�\�B���Ija:�O\���/�*]�þR������|���ʑ@�����W�8f�lA���Xl��촻�K<�dq1+x�*U�;�'�Vnl`"_L�3�B����u�����M���'�!-�<;S�F�܊�bSgq� ���Xt�肦�a��RZ�Y_ި��ZRSGA��-:8����yw_}XW�Z���-k�g.U��|�7P�
&���$˳��+��~?7�k�bQ���g������~�Z�e����H�-p�7S�� 
�w"XK�`K%?�`Tr|p���"��\�a�?�٧ ��'u�cv�&��<LM�Ud��T���Ak��������'+7��XR`��[\�-0���e�AiW]�Dk���$u���0[?�-���L����X�ĚSK-�.%�9=j�3t^���(c�yM-��/�ao����\%�?�б �~���b][
tٵ�<qF�)�
�J�'QZY�����*pB�I4�޸�,������.Т�1���/
t�1-1������E�*��Cl/Ю©f�<,0�S�bf�^���[8Z$��@���kw�M<?�[`��)3)1� �U����:��/pR��XV`XE,/0���d���1>ѫ��i�z��*o�}&R{���$f�JV=5͉Ύ��Rl�/�N4.�U~Cm�N~��HPRS�?G��g�-���qvT{�G _�[ua�;���kco�9�Kw����n����E{d�j��C���,q����Y���cwY<$#�ؤ�m+�LL-�z� �y<{/7���[��X�?�-6(cO ?�XZ�M�������sb�[
�.����j|;d�!0lCIqZ�z�&��~�|7�A���A~��á@�� 417��}t ��,� X�6��lS)6v�G
��I:�).~��8R���#'��߶;9�'���U�$1nC�L��찦3�+b黙u�NJ�����8���X�?5�0��^��[B/+�0�Ur(��J��+Xr�H�����HZm&�#�p	�Y ����*���hM]��m���b�ݢ����G����s��z-�x��������� �J�"���Ћ�g�Ҝ �Aа��?��?6��c�Zx�$�t��{s
-R�E�24�?�{�l�-��1�3S�EJ��v6X]L�B^ ��]N��R�yN��62�����'R�p-�����n2�d�?Th|�h��3X������Rc8&��_,��;T�8�� �hΗv�(7I;�3Obn;��O�!����Lߍ*�E~wU,���n�MN1���Z��Y̖��tY;5�^�<Z�Ǩ�T#�bt�xfA�n�cq����"9GD*�^JL��HJ���4���V�-�܉��4*��u]�[
���,"ҏ�i!�r~L��_�����8 ]j�?x���<k+%w��Bk��=�u�ڤ��>%2Bۃ�Y�n<jBo������Κ�0M~�t>�#b/jZ�}���B��Q��#���6R$v�����k�R$c/:�~���(V�7;)��ߊ[̣0?F��;.�*ݪd������{A`w>~�i=D�c��������Y2�X�q~�r2��8@v=f�?��X��S�"X�j?��@$?�����x�(�k���c7��\�����>A�=fpM?9d?�׻{���)f�.⪝���3�������f,N;"��,N���X��*�"V���"��C��?���(2=���A��1�Ul���h�8Ao(5X�B�X�>S�j��s�!
l����GgGp��>�v;c���V�N1���-��K�S�=6PiN�fNq������,
�3SWx�ei����f'�*�r�rʹ̙�e�7���b�o���>_i��M�_��V�p�r�9��X�$�����B���t5�4#�B(E���3�������`����I�M�e��b6_����{~�f/��@��B��Y����E�4��޲�d�O�$���M�����ݖv�P����TR�oj~��+}��#���"�]1Υ_���nR���œ����^pQ2�7첾b��3�ba�\��uu2�~O�G�����5�^>v������m��?���mC;$eT��C񎋋��V��8�:��
���ʱlt��~e]�cC7dl���.�i����\w����/..F�Q5���œ��`�o���E����E�͛�ٽ-�o�z�"n��/��[�����ͳI���S��Dڢ��V�6��!��esq��AC���ڻ���OMk�y��{7`c0�ٺ���5C5�yiw��`ps�OC��f�X�5oQ�\_*m�f�)稹"���a2$O;�]C�A�;V.���c��iޢ�R5�X��t%�s����ȸ�; 5�����)��X|?����9&��wĽjdn�{��7��/����q]3Ɲ�}�[��yF~�Q0����x��U�� ���˘?����a�;���/yޫ�����6.��C}���&L��9�_�ս�w�o���W�^�;�^u�xoݖ��Q8����4��kW��'����:9>����Xp5H��ONtL��=��_�&�0��H"Q��|H���4!���]�'�!޹Eܢ���}=soϢ~	K�$���`"!]j�+{'e�M��D]��=�>c��xS��Y����X��7�7+�Me̯/���u�Q����i���Eg�9�g�RU��#'��ޑW\r�aS�/3�"/v
IgX���}ٻ���ʏr�r���_��<�6�Gʋ&���z%�Pl^d����㑭v�ʎو�w�[���Q��k�K�����IWˈ��`/�Y�X��9J"��_��V{��je�i��6�<�ZS��� �t���W�Bg��@5���..��X�eʡ��*�HRgkD^>�y裝"�9�+wQ4ABR������^�k3�>2�����x�C�l���f:��#gщ�s� ��ߜ��ȁ���+���A��˾�g�1K9Cܹ��:���T"!I������Hs�;���ue��9@#ChE5&!��'�2�����w*a/Q��I	�E������I�w�����?��v })B��GQ�n�h"]0��]Z֑���.}�&~x2��
eĞsF�n�+�b�e�i����0Ix�y��Aѕ���
[1�B�R$$����:�4E疳��#�4���y���ӈ�6o1O�V'��7]�H�.)/)�OwW./�g�l��£���"$d���}[���t���U~�MQԲ�$��~��c��S�M�a���ш=��diH��(N�+U�D����f"V�"�����.ƈ�#Ͼ�eH:�x��d!k 6�J�f9�GW�4����Kp��T��3��~��G�؀��,�zZ��澰؋7����v#� &�r+O�@Ud7͐�$�\�D�O��W_�Ew�ͻ�7��oD����y��,��Ƣ�cƙd	���U�u�:�#�h6]�R
�U~	V�՟R�V������/�:r�F¬�k?|Ī�r\�<.�^9����?��]Aʻ�iT;vg�PpyM���1��},�dY\e8��I��2�wjM��S/�p�1�\^�6$4�F��(:�\nۢ�2�}�Pm�X�'.����U�3��bq�nXK�i_BD�_H}�r;Y^�t�<���o��#gw��2q_�|�^�<��E�h���O�����R�-Ɖ���S�	!��z�1�+iH�1G���+<����~�;|�F�{�}v�;s�j�Q;�٩�;&f�}�������tL ���#��Ъ>;��z���?U˽�~������e��{K%��/:F�/<�n�2k�8�x��S-�5�`��ԗ�H�{���R�y�S�(w��ѥe
�	0���w�޻�U1��7V-Q�̶ꪸ�g�X��3V&�T[+)b����2���(���B��,��z����9���B`��!��o�ע(�W�RZ���m��%/V�&��|g��f��*[_��nn��M�M`�%��)��Z�K$�����F�� ��$r^�k�K,	u;w������X���;�L�eoI�6��y%����~����)���0"�zc�BH�<�kW�E\.�b��R>mٺ��<����͑Թ���a=2X���=/��_;	Ρ�e&o.����]��2!�嫈�"I������j�höR��͒\L�0�e������,)ýf�; ��E��0��<%�Q�Aø�x8�� �]eQL�;|���꼬z�W2
�H�z�_��
/K`J�O�O�Y�~j���>����d�v��%�ެ7�4{%��٥7Z��>����|��5^�\ױ���:��Z^;��U��s�)��#�|�.̡���R2��j����şBб���*cMvD�W^{�������m�D��0�,������#���?O����
����?z�{ȓ'�|����/�����/�����/�����/�����/�����/�����/�����/|�           [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dfsj2w56d4cmq"
path="res://.godot/imported/index.png-1d621f6b701421bea95b123eda37cc10.ctex"
metadata={
"vram_texture": false
}
               extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
extends Node

var selectedAlgorithm
var studentName


	
        GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�m�m۬�}�p,��5xi�d�M���)3��$�V������3���$G�$2#�Z��v{Z�lێ=W�~� �����d�vF���h���ڋ��F����1��ڶ�i�엵���bVff3/���Vff���Ҿ%���qd���m�J�}����t�"<�,���`B �m���]ILb�����Cp�F�D�=���c*��XA6���$
2#�E.@$���A.T�p )��#L��;Ev9	Б )��D)�f(qA�r�3A�,#ѐA6��npy:<ƨ�Ӱ����dK���|��m�v�N�>��n�e�(�	>����ٍ!x��y�:��9��4�C���#�Ka���9�i]9m��h�{Bb�k@�t��:s����¼@>&�r� ��w�GA����ը>�l�;��:�
�wT���]�i]zݥ~@o��>l�|�2�Ż}�:�S�;5�-�¸ߥW�vi�OA�x��Wwk�f��{�+�h�i�
4�˰^91��z�8�(��yޔ7֛�;0����^en2�2i�s�)3�E�f��Lt�YZ���f-�[u2}��^q����P��r��v��
�Dd��ݷ@��&���F2�%�XZ!�5�.s�:�!�Њ�Ǝ��(��e!m��E$IQ�=VX'�E1oܪì�v��47�Fы�K챂D�Z�#[1-�7�Js��!�W.3׹p���R�R�Ctb������y��lT ��Z�4�729f�Ј)w��T0Ĕ�ix�\�b�9�<%�#Ɩs�Z�O�mjX �qZ0W����E�Y�ڨD!�$G�v����BJ�f|pq8��5�g�o��9�l�?���Q˝+U�	>�7�K��z�t����n�H�+��FbQ9���3g-UCv���-�n�*���E��A�҂
�Dʶ� ��WA�d�j��+�5�Ȓ���"���n�U��^�����$G��WX+\^�"�h.���M�3�e.
����MX�K,�Jfѕ*N�^�o2��:ՙ�#o�e.
��p�"<W22ENd�4B�V4x0=حZ�y����\^�J��dg��_4�oW�d�ĭ:Q��7c�ڡ��
A>��E�q�e-��2�=Ϲkh���*���jh�?4�QK��y@'�����zu;<-��|�����Y٠m|�+ۡII+^���L5j+�QK]����I �y��[�����(}�*>+���$��A3�EPg�K{��_;�v�K@���U��� gO��g��F� ���gW� �#J$��U~��-��u���������N�@���2@1��Vs���Ŷ`����Dd$R�":$ x��@�t���+D�}� \F�|��h��>�B�����B#�*6��  ��:���< ���=�P!���G@0��a��N�D�'hX�׀ "5#�l"j߸��n������w@ K�@A3�c s`\���J2�@#�_ 8�����I1�&��EN � 3T�����MEp9N�@�B���?ϓb�C��� � ��+�����N-s�M�  ��k���yA 7 �%@��&��c��� �4�{� � �����"(�ԗ�� �t�!"��TJN�2�O~� fB�R3?�������`��@�f!zD��%|��Z��ʈX��Ǐ�^�b��#5� }ى`�u�S6�F�"'U�JB/!5�>ԫ�������/��;	��O�!z����@�/�'�F�D"#��h�a �׆\-������ Xf  @ �q�`��鎊��M��T�� ���0���}�x^�����.�s�l�>�.�O��J�d/F�ě|+^�3�BS����>2S����L�2ޣm�=�Έ���[��6>���TъÞ.<m�3^iжC���D5�抺�����wO"F�Qv�ږ�Po͕ʾ��"��B��כS�p�
��E1e�������*c�������v���%'ž��&=�Y�ް>1�/E������}�_��#��|������ФT7׉����u������>����0����緗?47�j�b^�7�ě�5�7�����|t�H�Ե�1#�~��>�̮�|/y�,ol�|o.��QJ rmϘO���:��n�ϯ�1�Z��ը�u9�A������Yg��a�\���x���l���(����L��a��q��%`�O6~1�9���d�O{�Vd��	��r\�՜Yd$�,�P'�~�|Z!�v{�N�`���T����3?DwD��X3l �����*����7l�h����	;�ߚ�;h���i�0�6	>��-�/�&}% %��8���=+��N�1�Ye��宠p�kb_����$P�i�5�]��:��Wb�����������ě|��[3l����`��# -���KQ�W�O��eǛ�"�7�Ƭ�љ�WZ�:|���є9�Y5�m7�����o������F^ߋ������������������Р��Ze�>�������������?H^����&=����~�?ڭ�>���Np�3��~���J�5jk�5!ˀ�"�aM��Z%�-,�QU⃳����m����:�#��������<�o�����ۇ���ˇ/�u�S9��������ٲG}��?~<�]��?>��u��9��_7=}�����~����jN���2�%>�K�C�T���"������Ģ~$�Cc�J�I�s�? wڻU���ə��KJ7����+U%��$x�6
�$0�T����E45������G���U7�3��Z��󴘶�L�������^	dW{q����d�lQ-��u.�:{�������Q��_'�X*�e�:�7��.1�#���(� �k����E�Q��=�	�:e[����u��	�*�PF%*"+B��QKc˪�:Y��ـĘ��ʴ�b�1�������\w����n���l镲��l��i#����!WĶ��L}rեm|�{�\�<mۇ�B�HQ���m�����x�a�j9.�cRD�@��fi9O�.e�@�+�4�<�������v4�[���#bD�j��W����֢4�[>.�c�1-�R�����N�v��[�O�>��v�e�66$����P
�HQ��9���r�	5FO� �<���1f����kH���e�;����ˆB�1C���j@��qdK|
����4ŧ�f�Q��+�     [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bu7shlns6r83f"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
                RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    script/source 	   _bundled    script       Script    res://Control_prompt.gd ��������      local://GDScript_7mojx D         local://PackedScene_2saac �      	   GDScript          �  extends Node2D
@onready var user = $LineEdit_user
@onready var label = $Label_prompt

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
	
	if label:
		label.text = "BA: " + new_text + "; Sz: _____ -> BA: _____; Sz: _____ -> BA: _____; Sz: _____ -> BA: _____; Sz: _____"
	else:
		print("Label_prompt node not found")
    PackedScene          	         names "         Node2D    obj_mainScreen 	   position    scale    color    polygon    script 
   Polygon2D    LineEdit_user    offset_left    offset_top    offset_right    offset_bottom 	   LineEdit    Control_prompt    layout_mode    anchors_preset    Control    Label_prompt    text    autowrap_mode    Label "   _on_line_edit_user_text_submitted    text_submitted    	   variants       
     C  pB
   u�C�c+A           �� ?  �?%      �龾k	��:O@�f�5N@�QB�����3RB�龾g��A               YC     �C    �_D    �D                   B               TB     �B    @�D     �C   l  Consider a memory of size 8KB (8192 bytes) that allows dynamic, variable sized partitioning among processes and uses a linked list to keep track of free spaces (hereafter referred to as the free list) in the memory at any given time. Assume that there are 6 processes and assume that their memory size requirements (in bytes) are as given below:

P1: 600,  P2: 700,  P3: 1300,  P4: 2900,  P5: 300,  P6: 500

Assume that the initial state of the free list is as shown below (BA is the base address and Sz is the size of each free space):

BA: 0; Sz: 1000 → BA: 1500; Sz: 700 → BA: 3600; Sz: 1500 → BA: 9200; Sz 300             node_count             nodes     M   ��������        ����                      ����                                                    ����   	      
                                    ����      	      
                                      ����      
   	      
                                        conn_count             conns                                     node_paths              editable_instances              version             RSRC     RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://Control_prompt.gd ��������      local://PackedScene_ukch5          PackedScene          	         names "         Node2D    obj_mainScreen 	   position    scale    color    polygon 
   Polygon2D    LineEdit_user    offset_left    offset_top    offset_right    offset_bottom 	   LineEdit    Control_prompt    layout_mode    anchors_preset    script    Control    Label_prompt    text    autowrap_mode    Label "   _on_line_edit_user_text_submitted    text_submitted    	   variants       
     C  pB
   u�C�c+A           �� ?  �?%      �龾k	��:O@�f�5N@�QB�����3RB�龾g��A     YC     �C    �_D    �D                   B               pB    ��D    ��C     BA: 0; Sz: 1000 → BA: 1500; Sz: 700 → BA: 3600; Sz: 1500 → BA: 9200; Sz 300
Use the next fit policy

If P1 is allocated, what is the BA?

Updated Free List: 
BA: _____; Sz: _____ -> BA: _____; Sz: _____ -> BA: _____; Sz: _____ -> BA: _____; Sz: _____             node_count             nodes     K   ��������        ����                      ����                                              ����         	      
                              ����            	   
   
      
                          ����      	      
   	      
                                  conn_count             conns                                     node_paths              editable_instances              version             RSRC       extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://Control_prompt.gd ��������      local://PackedScene_b6ita          PackedScene          	         names "         Node2D    obj_mainScreen 	   position    scale    color    polygon 
   Polygon2D    LineEdit_user    offset_left    offset_top    offset_right    offset_bottom 	   LineEdit    Control_prompt    layout_mode    anchors_preset    script    Control    Label_prompt    text    autowrap_mode    Label "   _on_line_edit_user_text_submitted    text_submitted    	   variants       
     �B  �B
   u�C	�"A           �� ?  �?%      �q�<��ɾ��/@ ���~/@��BM�1<Y�B     IC    ��C    �[D    ��C                   B               8C     �B    �gD    ��C      This is a test             node_count             nodes     K   ��������        ����                      ����                                              ����         	      
                              ����            	   
   
      
                          ����      	         	      
                                  conn_count             conns                                     node_paths              editable_instances              version             RSRC         extends Node2D
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
    extends Node2D
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

   extends Node

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
       RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://startingScreen.gd ��������      local://PackedScene_dmm15          PackedScene          	         names "         Node2D    script    Label    offset_left    offset_top    offset_right    offset_bottom    text 	   LineEdit    StudentName    StudentLabel    _on_line_edit_text_submitted    text_submitted     _on_student_name_text_submitted    	   variants                      �B     �B    �1D     �C   �   Press the corresponding number to the algorithm you would like to practice:

0- First Fit
1- Next Fit 
2- Best Fit
3- Worst Fit

Press and hold R to restart
Press and hold B to come back here

Created by Josh Needles      LB    �DD     �B    ��C     �C    �PD    ��C     �C    ��C      Please enter your name:        node_count             nodes     I   ��������        ����                            ����                                                   ����                                          	   ����      	      
                              
   ����            
                               conn_count             conns                                                              node_paths              editable_instances              version             RSRC           GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /��,� j�Fj���'|$"���X��qj��mC�$� �O� �\E�$)} `��;�� m9�����������r� \.��-�q
%;���{~��s�(hۆIß�.��� �H-(]m۔�����0+�|�1�3���Aݶ���Ke���U����0��"�N!���F��H��a��p��h�?�����#I�$I�="�������>ti�ʐc�ڲ'�{��V����O���ҹK�ܨ��:�	�m��ȶm����"3;8#9f�ҸFi��8�Q�"Sg�9�:�(釯�Ғ:�pٶ��n�>�����'��̌5�Zd	���L����,?�m��mۖ����K�N���f�5�@���Ysѻ�G�@T"Y �������A2�? ���7M��m�J���p�m#I�Ĭm�ݽ7Spd�V��C�����-t���Q��	�D �HW;��z �'���s����b��}�c�J�-hA9hC$l1�?���OO����ߞ���ŧ8�  �(�t��	�����:k�z ����s���������MV5�Q@14"g��l����p���#�?��P����ٞ|?l��h ��  ,9��lmD�)!9��ܞֱ�s8�,�&`��������;�G/�v唱�~����5 �p��7�3�xά��+�t��\�2�"hSdІ�y����W�.w��.�rMO� �N <��3�9����ӵ�vݮ�Ё4*"Dȱ�ͺw����\�*j u�����(�qӸ|qױ��  R�DB�	 ��eԆJW�  Ĩc��w~z7n��%t!_'  v<۞	��/��4�z�� Bdd�W�"�T�D4B ��i�R���  4��©'ǝ뤁 [�lur��x��d{��F��S�1�" 2��P�"� �`d1T&+;����% P���x�F��F]��θ��Xv<GKN���_�o`E�\�b�t�,� �
 "�,��+���P�$ �����bn#>�f��z��Ҏ灿vi-� IJ�� �I��Lj�6I  F���?��θ�(ͺ��4W�t�v=�6 H�T&}��ZjM��  �������g� ���.b��\F �2i��f���.&c� :�k��m`���j��G��;�TE ���ж!�b��*N�XO�G
�{��c�v�!� �1V�
�6P�Q� �(�}���s�w������p>�"�c��@w�� p��1�刯��Wz��I �1hY���PI �r��}C����x���,@�,�"	h�$:�E@�ܝ�ys�3� $�WL@GtJ �JXsUR��"��B�E @��"A �K�%��  ��� �H�FDB �����0�J  P@*� �62 @U�  �h�  d����$ ��� ��'�GCu���n��ִ�)3�������w��
		�/�}�>_u:9)��3�����+i�t���N�o�k�Mj]8  ���&ɩN�� @�r5�Yf�%�-��S44�x�I ��m4����ih���Ӛ�9�,s�.3-ݪ,�zZj�N�o&
<��2,s�r���3�:�  Pɦ�'TK;�|�j<}�T��vע5�P��=���E���HM|�i1���>{��YI5)�|���l���d""�F$�>�ӝ�7g/=��*�LI����õ�n�L��I��pj�VI p�`;[���$���gj��\���sp�`�|���$-� G6P�.\�p�.�nMpYKФE8�<9X5���� `���'�!d�0��e���iJ.�㮚�s��3��� LF"K \lY,.#G�@��9@5�,��\.$a�aW�:ȯ|���&`p� �\��-�j�2Xr�J9Yt`���fk#r��}��&�.K�lg��&.[Er��&`a�H.���	���`6�M�:ӓqHR�E@]�,�<�N���v))���{cD� �G�H�@��!kYs4�q�%	i�>��/Ph³>�����L�!	G���(_�<�ҹ���b�֯���|I��+u����1Bf-�y�w�c��O	��呵�1�ј.��Tl��G�ߍfC�� @�E<�1{cD�O��Ox�����ƾz*��]c����#Һ�3&�iq �D]�h?�)�r���  D@�ۚw��SGx5���AK���nOp�7���;igI��v8�x$P�j�ǫ��z (<�^j� �ݙ��Z	
%���7)�;��;�p��|� `��g�G������ޓiLcn̫��;�( @�z�l^S����F#��'@P�)i׵L`E�@����7lolϺ��'E��E�8J}�Q`]�H; @��%"v�l�*r�����?�SaHCD"�J&�1c�
"	�:Cd%ʉ �,�����b�#�숞7!� 5�xD�
�é�D�ː:�����m��W%*P���M��?��M��p��@�7�z����=uc�$�*?����ɻϦٚ%�Ru�������i���ɲ�n�Q��|/�?sfӀ��WUw����Og���Ɓ�\G���{]�hW���I��:�u��qT�=X=��/���̙"�e�2]�u\\4*�W�ҧM���_~���BrR������]}o_��9����R��U��O]�`����&\�l]Z�1*�m��:��&���^���|��U��߃d�6{���|gπ�,�2�?�K�շ��O;��[=x�H@�u����Up�?P��a���%7Īb�m���-��o�f���'���w�O�BÌs���jg��{��g�Cn�Z\9{s�Y"d��ֹh�p�S�1��]��&�;{mqE��)^�P�Y��{����ے��a����7��_��?*8�,��s��=��N��&�u����[r�廎^8��uy�rpйp��v7|X�|T����=������k�F�J����?����E����_��m'/����JP[���|�[�Q?�0�pp0x�;��[�m�iёȦ��Oz�S��'B���)��{�>�������������i���_��GO��ٔ�����$�F��ξ5���*8x��>+: �+N����bZ������^��wm=�l��=��ջ�o��d�ew=n�����e DB=�=�Ȕ]p������ `b�y�{�u��ː��ۜj�l�I�O�^��LmEG�Yކ��}��cO�-�Ϻ��Ι ��)�fo0&� ��W;S@�5���w�O�������H  p��]��q)@��'��D&�j�=��C�sr�L���$��k}����I  �	�-~���w�P��-Urr�8o���c �O���ߺܯ��_��0����Q����~������������_�����ޡ�P�ֿ������@��k�{�ߛ�2 �ٖ��*���=��#�]��)���Ϻ�t?@+8h��\P[k��z��=~f���Gm=����g�~\���RK�y*<��#��'��)g|�u5�-@Vmt��Tn����EF,W�ˏ� kZ>��$Ƅ��6k5ν����� r�>��5�[�[z�C�����&��r�� �j��r�g ��R���#�X�v�32k��yN5  �۵Χ����yjˑ�y]v`m抏;}  �rS+�ݝS���-K;g�Lp �!WTw���H�Mz	��eXL9�l  �TWn��cJL`4�R �'�]�Z�Rnd cn�  Qn�n�.*��-&�f��%w�i�|y�w�}�3̲���  @c(���� @�ƣ9��Ms�������|fק���¯,�nTr �*�r[\7��9�P�Y�2t��ܚ������n��7n�GĊ�:���\\�n�r[�M%8d����7��3k�����_��~�S�Ϣ.�^�a��	G������⑵�[���yw�C�f6_�ͱ�}���r�z�������?�-k����_���˿�\M�2���a�uW�h���?�������vYC�W_#=P��UN֛���X����"˻�������?ߗ�,��G
������������g��N.���+����_�y5�~�}�3n��vm��v^�z 6���zs0J.֗�S�8`�_�����}����#� �o�?�|��?��?���������W�8�+��׉gj��u/��n��壻z`zO|����ƕ޻��f6\`���EKJ�U»yK<h%�������������֏?��	辷�W��?��������_7?�t�Ω��S���E=���Ͽ�����?�O>q���=n�n��y����p8�y﮷��m}����m5�,�����w��VG�Y���j�:�1x�Kq�����('�U�b܃���uk������t�{����[����0k��>{�� l-��>�M �r���<����Ts�8�.��JǬ.W�w_��a��-i���Jq��s��R���'�m��q���p`[�]�u��M,I�t��7���c�W�p1z�D_t�32Mk�8z��:�.�Zp�\�:���؟���w�م�-N��o�դ��3.P�:G���P]�D��J�r5���Z%2+�}�w�~u`�`1�ӜL �n��U�}�����2k�n1o����JV�ۢ�F�Ο�bL�Y��sUG�����M��>_�R�x]\������x&J�|�Ï�n!~�*e-
�V��۵hd��b�|1�u+R���īpV�?Y&�`q���ف_LF$����?n��pr3'����G��"LD���&�DDZ�_J�H���g��a��}v؝�V<sŸr+��u�xf�bU2�$��A+��C �\�'7r#7r�\�\��O��+�bZ=~��z=.���0�)mq��$	I�uI�1�4�+�r�uuj
*P�@A�KB ������b!j�O�aW�,�s�lYٲr�s�}�|�%%�h6b]\)Yb��Ȓ�����W�M�bcp-����D��( @ ֜�>���S�X�򔓱E��ȣư�3�X��rf�a�V�`��b�bӸT@0R�P@�@(2@�La���:��=�i�]��v���!��xn����� \0.���!�$I-��fg�bq,�����w�@��<���9�||���,*�Č̓����y�x(r�օ��X�ʁJa�.��X-�4)itӤI�F�cq�����/�7)�*`-j2  �B�S()�:�B�P]��%�$��c�.5�������*��La��e;��f��L�����fb�Yx �Ű�Q�Y����z5�5T��j+� �Ȭx�D%˃��Yr3�2�a��}�;m�
�1��3�<��0]u���Oc�{�W2���9�:5s+�ѱ��Õ.. h�?mQX�(rY�-G˱�'��W�>�����	d�ΑM�Dq K�#^`�b�
�xE#�-@��T&)?*�u��j5e�+6�������D�" �hl���Wł�ø��m, �*�����`,W� �Sl%�"XYi�$� `t�e��3g_^�x���1u�L�t8 �p�C�*��*�K�v�X�Ԃ���u�hg���"�
7_ ���V6^���Ã�ӥ����fr��X �}��X��-���<�lYg�:����l5h�
�բLa��l�]8���j��y�$2���Ȓ&K"#:�u��᯿�Ѹ�M���O�=�(� 2�N� x<�E���4��^�ҕ�.]i��՜�%F�X�����7�ڟ��LuQQ���&JH��(1C���� �t���I��~��lod�������o����  �x`�x�0c1<1,b��S�s������f=}��������PTZ���Њ
EE+p/���y��Ԧ���x��^��ԟ���������z�@������ܔ��řk�ց��/:��j�&6�vF��S���G&��=����~��}��&6bC+��h��F[bMlhK����F� nJ�7�2s-}��Kɻܞغ��x�=7�=���x�=���~n�}n�M���M������@Vǁ��(茧5�!2 ��/���w������y�y'�iމ��w��;���? ��g��N��|(��Cg��쯧��q�\�W�^^zu�Rz���~H_�/�W���/K?�^�/�����+��JE���1%�իy-�2�"�āX�hE[bMlh%6���m���m��:N���g�o�|�c��ܝ<�^��o���gE����M�&{���=�����p��>7�p{n�}n?nr{����~Չ�~���Օ)_y�<��ɣ���u<�<1ܝ��>���eo����a��O($"( ��;3e�m�u�^��Ł�d��т�Qj�՞�l@)R@� Y�,��Ws�Q	.@T8�	��3���Y@�|lA�����m��3e6i�@�Bu����#��b-H-(�p��H]3!Ji1FIK���o۶l{DC�
%��űp��E�X���i8��(I�r���!E��֦M�<���ҹ��ʢ�(oEc6Pw��7O��pr�m�Uͻf1�@�CDHg6���)��k˺���I��q��A�ѤEs无p�D��t̴�80P��jմ�F(_�)	(a\�R�X�|6�r���T��fZ�i5|	��D�(��q�����f��f�rp@�
d)RU�z�VS(����[z��B%�ș�q@5�|�����CI�f
���d��b12���t#M�d��#Q*k\��J�̏'����Q~x��t  �"��q���q.̸x�hR����tҖ(�����]��V  ��R���4Q��dOH���ř�ŕ3�9s�e�f��� �q������D$�BG ..x\\\���p~�ue~���  �F8a�3 @,v�F�  $l1� ,���	  ���R$ ��|Z!����_8����P*I4Qy �a��u��q��(�ICM�J �O���� !�be��4Q4���xL��뼗׵��� �����+I4Pn$'5J���`1�>���O���1�A��-��M��Ɖd�<�  0[V������i<�&@��Z� ���/ ���ыŧ���ەy��b JQj���ٜʹd  p�߻��}��(�2�~8�3ku�$�b���M��S�: �~�Zp�п�u�so�=�  $Q*����D4�hd�й�" ���R<���  ����K߶���& $1cmԚȩ�;�( ������� `z��5���:n�
���A�*]$�$���$��%�  p�n��J4�m�� Lo�\j7��҅SO0�2b "c��ND���F�� 	#$�9ϸX ��WoKԫ�U�Y����@��'��:��<^`e �It�)}�EB(�f�S�7�\#5��  ����V�}.�E޿�=����� �������Q-KH  B$�#&"�"	B�)  Tt_7����s�12l'��)���� ��u���l�^gЁ*bhW6�������x��E ����Ǔ�v u`��g��{����u�Q@�$� 81�]���*��5&g������6�A� ��θAiֽ���~���d�т\� a��.ﻗw�6l�V���߳���N `��3n`�l>���y����r_htߩ��5�PDYd��#��a���ˮ��פy���B���M{Vu?  og���θ�Yw _|5�}�/G|C�n�~�5�J��-�"�8a�)�2�����ca�ŤqgO MO�i�ڿ>��                [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://clcccfh4rluos"
path="res://.godot/imported/Summer24.apple-touch-icon.png-63cd5d2f91ab537bc5c1230fcf0cc554.ctex"
metadata={
"vram_texture": false
}
           GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�m�m۬�}�p,��5xi�d�M���)3��$�V������3���$G�$2#�Z��v{Z�lێ=W�~� �����d�vF���h���ڋ��F����1��ڶ�i�엵���bVff3/���Vff���Ҿ%���qd���m�J�}����t�"<�,���`B �m���]ILb�����Cp�F�D�=���c*��XA6���$
2#�E.@$���A.T�p )��#L��;Ev9	Б )��D)�f(qA�r�3A�,#ѐA6��npy:<ƨ�Ӱ����dK���|��m�v�N�>��n�e�(�	>����ٍ!x��y�:��9��4�C���#�Ka���9�i]9m��h�{Bb�k@�t��:s����¼@>&�r� ��w�GA����ը>�l�;��:�
�wT���]�i]zݥ~@o��>l�|�2�Ż}�:�S�;5�-�¸ߥW�vi�OA�x��Wwk�f��{�+�h�i�
4�˰^91��z�8�(��yޔ7֛�;0����^en2�2i�s�)3�E�f��Lt�YZ���f-�[u2}��^q����P��r��v��
�Dd��ݷ@��&���F2�%�XZ!�5�.s�:�!�Њ�Ǝ��(��e!m��E$IQ�=VX'�E1oܪì�v��47�Fы�K챂D�Z�#[1-�7�Js��!�W.3׹p���R�R�Ctb������y��lT ��Z�4�729f�Ј)w��T0Ĕ�ix�\�b�9�<%�#Ɩs�Z�O�mjX �qZ0W����E�Y�ڨD!�$G�v����BJ�f|pq8��5�g�o��9�l�?���Q˝+U�	>�7�K��z�t����n�H�+��FbQ9���3g-UCv���-�n�*���E��A�҂
�Dʶ� ��WA�d�j��+�5�Ȓ���"���n�U��^�����$G��WX+\^�"�h.���M�3�e.
����MX�K,�Jfѕ*N�^�o2��:ՙ�#o�e.
��p�"<W22ENd�4B�V4x0=حZ�y����\^�J��dg��_4�oW�d�ĭ:Q��7c�ڡ��
A>��E�q�e-��2�=Ϲkh���*���jh�?4�QK��y@'�����zu;<-��|�����Y٠m|�+ۡII+^���L5j+�QK]����I �y��[�����(}�*>+���$��A3�EPg�K{��_;�v�K@���U��� gO��g��F� ���gW� �#J$��U~��-��u���������N�@���2@1��Vs���Ŷ`����Dd$R�":$ x��@�t���+D�}� \F�|��h��>�B�����B#�*6��  ��:���< ���=�P!���G@0��a��N�D�'hX�׀ "5#�l"j߸��n������w@ K�@A3�c s`\���J2�@#�_ 8�����I1�&��EN � 3T�����MEp9N�@�B���?ϓb�C��� � ��+�����N-s�M�  ��k���yA 7 �%@��&��c��� �4�{� � �����"(�ԗ�� �t�!"��TJN�2�O~� fB�R3?�������`��@�f!zD��%|��Z��ʈX��Ǐ�^�b��#5� }ى`�u�S6�F�"'U�JB/!5�>ԫ�������/��;	��O�!z����@�/�'�F�D"#��h�a �׆\-������ Xf  @ �q�`��鎊��M��T�� ���0���}�x^�����.�s�l�>�.�O��J�d/F�ě|+^�3�BS����>2S����L�2ޣm�=�Έ���[��6>���TъÞ.<m�3^iжC���D5�抺�����wO"F�Qv�ږ�Po͕ʾ��"��B��כS�p�
��E1e�������*c�������v���%'ž��&=�Y�ް>1�/E������}�_��#��|������ФT7׉����u������>����0����緗?47�j�b^�7�ě�5�7�����|t�H�Ե�1#�~��>�̮�|/y�,ol�|o.��QJ rmϘO���:��n�ϯ�1�Z��ը�u9�A������Yg��a�\���x���l���(����L��a��q��%`�O6~1�9���d�O{�Vd��	��r\�՜Yd$�,�P'�~�|Z!�v{�N�`���T����3?DwD��X3l �����*����7l�h����	;�ߚ�;h���i�0�6	>��-�/�&}% %��8���=+��N�1�Ye��宠p�kb_����$P�i�5�]��:��Wb�����������ě|��[3l����`��# -���KQ�W�O��eǛ�"�7�Ƭ�љ�WZ�:|���є9�Y5�m7�����o������F^ߋ������������������Р��Ze�>�������������?H^����&=����~�?ڭ�>���Np�3��~���J�5jk�5!ˀ�"�aM��Z%�-,�QU⃳����m����:�#��������<�o�����ۇ���ˇ/�u�S9��������ٲG}��?~<�]��?>��u��9��_7=}�����~����jN���2�%>�K�C�T���"������Ģ~$�Cc�J�I�s�? wڻU���ə��KJ7����+U%��$x�6
�$0�T����E45������G���U7�3��Z��󴘶�L�������^	dW{q����d�lQ-��u.�:{�������Q��_'�X*�e�:�7��.1�#���(� �k����E�Q��=�	�:e[����u��	�*�PF%*"+B��QKc˪�:Y��ـĘ��ʴ�b�1�������\w����n���l镲��l��i#����!WĶ��L}rեm|�{�\�<mۇ�B�HQ���m�����x�a�j9.�cRD�@��fi9O�.e�@�+�4�<�������v4�[���#bD�j��W����֢4�[>.�c�1-�R�����N�v��[�O�>��v�e�66$����P
�HQ��9���r�	5FO� �<���1f����kH���e�;����ˆB�1C���j@��qdK|
����4ŧ�f�Q��+�     [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://blcwn7m7nclfe"
path="res://.godot/imported/Summer24.icon.png-341ad2827ea91e4c01f4165b879d6dce.ctex"
metadata={
"vram_texture": false
}
       GST2      X     ����                X       �,  RIFF�,  WEBPVP8L�,  /Õ�mۆq�����1�Ve���G�N^6۶�'�����L �	���������'�G�n$�V����p����̿���H�9��L߃�E۶c��ۘhd�1�Nc��6���I܁���[�(�#�m�9��'�mۦL���f�����~�=��!i�f��&�"�	Y���,�A����z����I�mmN����#%)Ȩ��b��P
��l"��m'���U�,���FQ�S�m�$�pD��жm�m۶m#�0�F�m�6����$I�3���s�������oI�,I�l���Cn����Bm&�*&sӹEP���|[=Ij[�m۝m��m���l۶m��g{gK�jm���$�vۦ�W=n�  q��I$Ij�	�J�x����U��޽�� I�i[up�m۶m۶m۶m۶m�ټ�47�$)Ι�j�E�|�C?����/�����/�����/�����/�����/�����/�����/�����̸k*�u����j_R�.�ΗԳ�K+�%�=�A�V0#��������3��[ނs$�r�H�9xޱ�	T�:T��iiW��V�`������h@`��w�L�"\�����@|�
a2�T� ��8b����~�z��'`	$� KśϾ�OS��	���;$�^�L����α��b�R鷺�EI%��9  �7� ,0 @Nk�p�Uu��R�����Ω��5p7�T�'`/p����N�گ�
�F%V�9;!�9�)�9��D�h�zo���N`/<T�����֡cv��t�EIL���t  �qw�AX�q �a�VKq���JS��ֱ؁�0F�A�
�L��2�ѾK�I%�}\ �	�*�	1���i.'���e.�c�W��^�?�Hg���Tm�%�o�
oO-  x"6�& `��R^���WU��N��" �?���kG�-$#���B��#���ˋ�銀�z֊�˧(J�'��c  ��� vNmŅZX���OV�5X R�B%an	8b!		e���6�j��k0C�k�*-|�Z  ��I� \���v  ��Qi�+PG�F������E%����o&Ӎ��z���k��;	Uq�E>Yt�����D��z��Q����tɖA�kӥ���|���1:�
v�T��u/Z�����t)�e����[K㡯{1<�;[��xK���f�%���L�"�i�����S'��󔀛�D|<�� ��u�={�����L-ob{��be�s�V�]���"m!��*��,:ifc$T����u@8 	!B}� ���u�J�_  ��!B!�-� _�Y ��	��@�����NV]�̀����I��,|����`)0��p+$cAO�e5�sl������j�l0 vB�X��[a��,�r��ς���Z�,| % ȹ���?;9���N�29@%x�.
k�(B��Y��_  `fB{4��V�_?ZQ��@Z�_?�	,��� � ��2�gH8C9��@���;[�L�kY�W�
*B@� 8f=:;]*LQ��D
��T�f=�` T����t���ʕ�￀�p�f�m@��*.>��OU�rk1e�����5{�w��V!���I[����X3�Ip�~�����rE6�nq�ft��b��f_���J�����XY�+��JI�vo9��x3�x�d�R]�l�\�N��˂��d�'jj<����ne������8��$����p'��X�v����K���~ � �q�V������u/�&PQR�m����=��_�EQ�3���#����K���r  ��J	��qe��@5՗�/# l:�N�r0u���>��ׁd��ie2� ���G'& �`5���s����'����[%9���ۓ�Хމ�\15�ƀ�9C#A#8%��=%�Z%y��Bmy�#�$4�)dA�+��S��N}��Y�%�Q�a�W��?��$�3x $��6��pE<Z�Dq��8���p��$H�< �֡�h�cާ���u�  �"Hj$����E%�@z�@w+$�	��cQ��
1�)��������R9T��v�-  xG�1�?����PO�}Eq�i�p�iJ@Q�=@�ݹ:t�o��{�d`5�����/W^�m��g���B~ h�  ����l  נ�6rߙ�����^�?r���   ���⤖��  �!��#�3\?��/  �ݝRG��\�9;6���}P6������K>��V̒=l��n)��p	 ����0n䯂���}   ���S*	 ��t%ͤ+@�����T�~��s����oL)�J� 0>��W�-  �*N�%x=�8ikfV^���3�,�=�,}�<Z��T�+'��\�;x�Y���=���`}�y�>0����/'ـ�!z9�pQ��v/ֶ�Ǜ����㗬��9r���}��D���ל���	{�y����0&�Q����W��y ����l��.�LVZ��C���*W��v����r���cGk�
^�Ja%k��S���D"j���2���RW/������ض1 ����
.bVW&�gr��U\�+���!���m ;+۞�&�6]�4R�/��Y�L�Ά`"�sl,Y/��x��|&Dv�_
Q*� V�NWYu�%��-�&D�(&��"  Wc��ZS���(�x� ,�!����!�L�AM�E�]}X�!��wB�o��-  �-���16���i���ю�z��� ���B��oB�0������v]���ȓ�����3�� +S�χ�=Q_�����˨�d��|)D>��k ��uȣ���Y[9̂�����! ^�!��r���j0Y+i��΍e(�ț� ���x��
��{��<6 R���پ�b��Y
C����+���������;���a ���,�o��bC�{�?���1 �(��¤ �V�������;�=��I��� ���EI���Z��)D����t=S ��] X��9K�= �.~�K[��Ŋ��,2��� p}>w<n�g h�
�t���R�u�G�1k���!��x���������� �L���|>D�0�Ǣ(Qc�� ����= �ۊ�Z0�^��c �
|�����L�%�d��q���(�WB� ��(	���� �J��8D�0�~$�Dsy�Ѿ!������j�^ ��mOa�8.�qce��s|%Dq~,X�u�������=T	���Q�M�ȣm�Y�%Y+�[�0|"DΞ�j�u�L6�(Qe��qw�V�э���ǂ���!j�K � �:�wQ�dÛ������R�
��C���X�u�`����\"j讀Dq21� �F>B[��[������]@K-���C�e�q�tWP�:W�۞X�z��,��t�p���P��Se����T���{dG��
KA���w�t3t��[ܘ�4^>�5ŉ�^�n�Eq�U��Ӎ��α�v�O6C�
�F%�+8eů��M����hk��w�欹񔈓����C��y訫���J�Is�����Po|��{�Ѿ)+~�W��N,�ů��޽���O��J�_�w��N8����x�?�=X��t�R�BM�8���VSyI5=ݫ�	-�� �ֶ��oV�����G������3��D��aEI��ZI5�݋����t��b��j��G����U���΃�C�������ق�в����b���}s����xkn��`5�����>��M�Ev�-�͇\��|�=� '�<ތ�Ǜ���<O�LM�n.f>Z�,~��>��㷾�����x8���<x�����h}��#g�ж��������d�1xwp�yJO�v�	TV����گ�.�=��N����oK_={?-����@/�~�,��m ��9r.�6K_=�7#�SS����Ao�"�,TW+I��gt���F�;S���QW/�|�$�q#��W�Ƞ(�)H�W�}u�Ry�#���᎞�ͦ�˜QQ�R_��J}�O���w�����F[zjl�dn�`$� =�+cy��x3������U�d�d����v��,&FA&'kF�Y22�1z�W!�����1H�Y0&Ӎ W&^�O�NW�����U����-�|��|&HW������"�q����� ��#�R�$����?�~���� �z'F��I���w�'&����se���l�̂L�����-�P���s��fH�`�M��#H[�`,,s]��T����*Jqã��ł�� )-|yč��G�^J5]���e�hk�l;4�O��� ���[�������.��������������xm�p�w�չ�Y��(s�a�9[0Z�f&^��&�ks�w�s�_F^���2΂d��RU� �s��O0_\읅�,���2t�f�~�'t�p{$`6���WĽU.D"j�=�d��}��}���S["NB�_MxQCA[����\	�6}7Y����K���K6���{���Z۔s�2 �L�b�3��T��ݹ����&'ks����ܓ�ЛϾ�}f��,�Dq&������s��ϼ��{������&'k�����Qw窭�_i�+x�6ڥ��f�{j)���ퟎƍ3ou�R�Y����徙�k����X�Z
m.Y+=Z��m3�L47�j�3o�=�!J
5s���(��A ��t)���N�]68�u< Ƞ��_�im>d ��z(���(��⤶�� �&�ۥ� ��  Vc�8�'��qo9 �t��i�ρdn��Of���O�RQP���h'������P֡���n ���č����k�K@�>����pH>z)-|��B��j���!j:�+������˧��t�������1����.`v�M�k�q#�$���N:�����-M5a10y����(�T��� X5 \�:� ?+�7#�?�*Y+-,s� ~�|\)뀀ap �drn�g��RN�X�er ��@ĕ���;��z��8ɱ�����	�- �
�bKc����kt�U]�䎚���hgu���|�_J{ �`p��o�p�T�U��p���/���Hϑ�H�$X ܬm3���ŉ�U'��뻩t��G9�}�)O������p�΃g���JO���\9�׫�����ڳ�!k����/��9R���^�%��C����T���;ji<�>�KY����;�J��ƶm .P��pT��
@HA��r��98V���b�v���YwaZ>�$oւ?-փ��ʹ|0�.��3���b駁�c��;?8E;���V�B�؀����|%\\s��%����e{o��Z�i�������^���s�Jx������B jh�\ �h�<��V��sh@:���.�ІYl��˂�`3hE.,P�2^����J��+�����p��
�ЊJd��x�*�@�7R��� �"�G="!�� �p����u�o��wV�m�g���~F��?����/�����}~����sо7� ���\,,k�J�T�6������Z�y�rBZ[D�>v�HQ�R��mq�������DD�-6+�V`���J�E�����\� 9!ߑ�`��6���ml�~ZM�Z�ȎV���g���������3?*u3���ctW����YQa�Cb�P�,B5�p0�m�cͺEt�{,��>s9f�^��`OG��]����2�Fk�9_�G�vd��	��)��=�1^Ų�Wl3{�����1��H)�e������9�هZ�]}�b���)b�C��es}�cVi~x���e
Z�)܃��39������C�(�+R����!�j����F�n���<?�p��l�8a�4xOb��������c�8&�UA�|	/l�8�8���3t�6�͏���v���� ����סy�wU��`� =��|M�Y?�'�A��&�@*�c~!�/{��),�>�=xr"	�qlF:��L&���=<5t�h.�#ᣭ���O�z�!�&`A�F�yK=�c<\GZ�� 4HG�0i�F녠uB"���<��c�Jeۈ�3!����O��q萞PiZ&�$M[���(G��e���ؤ���ã��O���5����'�gH~�����=��g�F|8�+�X�4�u���G�2����'��.��5[�OlB��$f4���`��mS�L�,y�t&V�#P�3{ ��763�7N���"��P��I�X��BgV�n�a:$:�FZ���'�7����f������z!�����KA�G��D#������ˑ`ڶs���&� ݱ��4�j��n�� ݷ�~s��F�pD�LE�q+wX;t,�i�y��Y��A�۩`p�m#�x�kS�c��@bVL��w?��C�.|n{.gBP�Tr��v1�T�;"��v����XSS��(4�Ύ�-T�� (C�*>�-
�8��&�;��f;�[Փ���`,�Y�#{�lQ�!��Q��ّ�t9����b��5�#%<0)-%	��yhKx2+���V��Z� �j�˱RQF_�8M���{N]���8�m��ps���L���'��y�Ҍ}��$A`��i��O�r1p0�%��茮�:;�e���K A��qObQI,F�؟�o��A�\�V�����p�g"F���zy�0���9"� �8X�o�v����ߕڄ��E �5�3�J�ص�Ou�SbVis�I���ص�Z���ڒ�X��r�(��w��l��r"�`]�\�B���Ija:�O\���/�*]�þR������|���ʑ@�����W�8f�lA���Xl��촻�K<�dq1+x�*U�;�'�Vnl`"_L�3�B����u�����M���'�!-�<;S�F�܊�bSgq� ���Xt�肦�a��RZ�Y_ި��ZRSGA��-:8����yw_}XW�Z���-k�g.U��|�7P�
&���$˳��+��~?7�k�bQ���g������~�Z�e����H�-p�7S�� 
�w"XK�`K%?�`Tr|p���"��\�a�?�٧ ��'u�cv�&��<LM�Ud��T���Ak��������'+7��XR`��[\�-0���e�AiW]�Dk���$u���0[?�-���L����X�ĚSK-�.%�9=j�3t^���(c�yM-��/�ao����\%�?�б �~���b][
tٵ�<qF�)�
�J�'QZY�����*pB�I4�޸�,������.Т�1���/
t�1-1������E�*��Cl/Ю©f�<,0�S�bf�^���[8Z$��@���kw�M<?�[`��)3)1� �U����:��/pR��XV`XE,/0���d���1>ѫ��i�z��*o�}&R{���$f�JV=5͉Ύ��Rl�/�N4.�U~Cm�N~��HPRS�?G��g�-���qvT{�G _�[ua�;���kco�9�Kw����n����E{d�j��C���,q����Y���cwY<$#�ؤ�m+�LL-�z� �y<{/7���[��X�?�-6(cO ?�XZ�M�������sb�[
�.����j|;d�!0lCIqZ�z�&��~�|7�A���A~��á@�� 417��}t ��,� X�6��lS)6v�G
��I:�).~��8R���#'��߶;9�'���U�$1nC�L��찦3�+b黙u�NJ�����8���X�?5�0��^��[B/+�0�Ur(��J��+Xr�H�����HZm&�#�p	�Y ����*���hM]��m���b�ݢ����G����s��z-�x��������� �J�"���Ћ�g�Ҝ �Aа��?��?6��c�Zx�$�t��{s
-R�E�24�?�{�l�-��1�3S�EJ��v6X]L�B^ ��]N��R�yN��62�����'R�p-�����n2�d�?Th|�h��3X������Rc8&��_,��;T�8�� �hΗv�(7I;�3Obn;��O�!����Lߍ*�E~wU,���n�MN1���Z��Y̖��tY;5�^�<Z�Ǩ�T#�bt�xfA�n�cq����"9GD*�^JL��HJ���4���V�-�܉��4*��u]�[
���,"ҏ�i!�r~L��_�����8 ]j�?x���<k+%w��Bk��=�u�ڤ��>%2Bۃ�Y�n<jBo������Κ�0M~�t>�#b/jZ�}���B��Q��#���6R$v�����k�R$c/:�~���(V�7;)��ߊ[̣0?F��;.�*ݪd������{A`w>~�i=D�c��������Y2�X�q~�r2��8@v=f�?��X��S�"X�j?��@$?�����x�(�k���c7��\�����>A�=fpM?9d?�׻{���)f�.⪝���3�������f,N;"��,N���X��*�"V���"��C��?���(2=���A��1�Ul���h�8Ao(5X�B�X�>S�j��s�!
l����GgGp��>�v;c���V�N1���-��K�S�=6PiN�fNq������,
�3SWx�ei����f'�*�r�rʹ̙�e�7���b�o���>_i��M�_��V�p�r�9��X�$�����B���t5�4#�B(E���3�������`����I�M�e��b6_����{~�f/��@��B��Y����E�4��޲�d�O�$���M�����ݖv�P����TR�oj~��+}��#���"�]1Υ_���nR���œ����^pQ2�7첾b��3�ba�\��uu2�~O�G�����5�^>v������m��?���mC;$eT��C񎋋��V��8�:��
���ʱlt��~e]�cC7dl���.�i����\w����/..F�Q5���œ��`�o���E����E�͛�ٽ-�o�z�"n��/��[�����ͳI���S��Dڢ��V�6��!��esq��AC���ڻ���OMk�y��{7`c0�ٺ���5C5�yiw��`ps�OC��f�X�5oQ�\_*m�f�)稹"���a2$O;�]C�A�;V.���c��iޢ�R5�X��t%�s����ȸ�; 5�����)��X|?����9&��wĽjdn�{��7��/����q]3Ɲ�}�[��yF~�Q0����x��U�� ���˘?����a�;���/yޫ�����6.��C}���&L��9�_�ս�w�o���W�^�;�^u�xoݖ��Q8����4��kW��'����:9>����Xp5H��ONtL��=��_�&�0��H"Q��|H���4!���]�'�!޹Eܢ���}=soϢ~	K�$���`"!]j�+{'e�M��D]��=�>c��xS��Y����X��7�7+�Me̯/���u�Q����i���Eg�9�g�RU��#'��ޑW\r�aS�/3�"/v
IgX���}ٻ���ʏr�r���_��<�6�Gʋ&���z%�Pl^d����㑭v�ʎو�w�[���Q��k�K�����IWˈ��`/�Y�X��9J"��_��V{��je�i��6�<�ZS��� �t���W�Bg��@5���..��X�eʡ��*�HRgkD^>�y裝"�9�+wQ4ABR������^�k3�>2�����x�C�l���f:��#gщ�s� ��ߜ��ȁ���+���A��˾�g�1K9Cܹ��:���T"!I������Hs�;���ue��9@#ChE5&!��'�2�����w*a/Q��I	�E������I�w�����?��v })B��GQ�n�h"]0��]Z֑���.}�&~x2��
eĞsF�n�+�b�e�i����0Ix�y��Aѕ���
[1�B�R$$����:�4E疳��#�4���y���ӈ�6o1O�V'��7]�H�.)/)�OwW./�g�l��£���"$d���}[���t���U~�MQԲ�$��~��c��S�M�a���ш=��diH��(N�+U�D����f"V�"�����.ƈ�#Ͼ�eH:�x��d!k 6�J�f9�GW�4����Kp��T��3��~��G�؀��,�zZ��澰؋7����v#� &�r+O�@Ud7͐�$�\�D�O��W_�Ew�ͻ�7��oD����y��,��Ƣ�cƙd	���U�u�:�#�h6]�R
�U~	V�՟R�V������/�:r�F¬�k?|Ī�r\�<.�^9����?��]Aʻ�iT;vg�PpyM���1��},�dY\e8��I��2�wjM��S/�p�1�\^�6$4�F��(:�\nۢ�2�}�Pm�X�'.����U�3��bq�nXK�i_BD�_H}�r;Y^�t�<���o��#gw��2q_�|�^�<��E�h���O�����R�-Ɖ���S�	!��z�1�+iH�1G���+<����~�;|�F�{�}v�;s�j�Q;�٩�;&f�}�������tL ���#��Ъ>;��z���?U˽�~������e��{K%��/:F�/<�n�2k�8�x��S-�5�`��ԗ�H�{���R�y�S�(w��ѥe
�	0���w�޻�U1��7V-Q�̶ꪸ�g�X��3V&�T[+)b����2���(���B��,��z����9���B`��!��o�ע(�W�RZ���m��%/V�&��|g��f��*[_��nn��M�M`�%��)��Z�K$�����F�� ��$r^�k�K,	u;w������X���;�L�eoI�6��y%����~����)���0"�zc�BH�<�kW�E\.�b��R>mٺ��<����͑Թ���a=2X���=/��_;	Ρ�e&o.����]��2!�嫈�"I������j�höR��͒\L�0�e������,)ýf�; ��E��0��<%�Q�Aø�x8�� �]eQL�;|���꼬z�W2
�H�z�_��
/K`J�O�O�Y�~j���>����d�v��%�ެ7�4{%��٥7Z��>����|��5^�\ױ���:��Z^;��U��s�)��#�|�.̡���R2��j����şBб���*cMvD�W^{�������m�D��0�,������#���?O����
����?z�{ȓ'�|����/�����/�����/�����/�����/�����/�����/�����/|�           [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://b2xxd1qphgeyj"
path="res://.godot/imported/Summer24.png-9fe61eaa2dd7357ad205e907c76d7a53.ctex"
metadata={
"vram_texture": false
}
            RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://rectangle.gd ��������      local://PackedScene_var1l 
         PackedScene          	         names "         Node2D    script    LineEditOne    offset_left    offset_top    offset_right    offset_bottom 	   LineEdit    LineEditTwo    LineEditThree    LineEditFour 
   LabelType    Label    StudentNamed    Label1    Label2    Label3    text    Label4    FeedbackLabel    FinalScoreLabel    AnswerStatus1    AnswerStatus2    AnswerStatus3    AnswerStatus4    _on_line_edit_text_submitted    text_submitted    	   variants    +                  hB     ^C    ��C    ��C    ��C     �C     �C     dB    ��C     �C    @D     �C     D     �B    �D     �B    @D    ��D     ?C    @D     \C     �C    ��C     �C    ��C            ��C    �D    �D     �B    �D    @D     �C     pC     �C    ��C     �C    ��C    ��C     �C    @D     D      node_count             nodes     �   ��������        ����                            ����                                             ����                                          	   ����            	            
                  
   ����                                             ����                                             ����                                             ����                                             ����                                             ����                                                   ����                                             ����                                             ����                                              ����      !      "      #      $                     ����      !      %      #      &                     ����      !      '      #      (                     ����      !      )      #      *             conn_count             conns                                                                                                              node_paths              editable_instances              version             RSRC extends TextEdit


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
               extends TextEdit

func _ready():
	connect("text_submitted", Callable(self, "_on_text_submitted"))
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
      RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script           local://PackedScene_pgp4n �          PackedScene          	         names "      	   TextEdit    offset_left    offset_top    offset_right    offset_bottom    	   variants            |B     �A    ��D     D      node_count             nodes        ��������        ����                                      conn_count              conns               node_paths              editable_instances              version             RSRC  [remap]

path="res://.godot/exported/133200997/export-50b2319f9d94ad1e2ea1b97a7d71544f-CopilotUI.scn"
          [remap]

path="res://.godot/exported/133200997/export-f49b9b2aceb226b41787b2f5ebb85efb-large_icon.res"
         [remap]

path="res://.godot/exported/133200997/export-d0b0c935f859a3aaf4ca073014e8f703-small_icon.res"
         [remap]

path="res://.godot/exported/133200997/export-74112f105daf07f2534335c4e5e7c77f-Instruction1.scn"
       [remap]

path="res://.godot/exported/133200997/export-40bb48eb0e743b06c408e99aa137b30c-Instruction2.scn"
       [remap]

path="res://.godot/exported/133200997/export-362256a061aa8890e9a1e558b11e5ec3-node_2d.scn"
            [remap]

path="res://.godot/exported/133200997/export-f0950f0cebd6d3254ec3d3537812844c-startingScreen.scn"
     [remap]

path="res://.godot/exported/133200997/export-09815600db89660e01bfb162621828c2-table.scn"
              [remap]

path="res://.godot/exported/133200997/export-28d12d10ac93e4ccf96487d5d2b5f9e7-text_edit.scn"
          list=Array[Dictionary]([{
"base": &"Node",
"class": &"UUID",
"icon": "",
"language": &"GDScript",
"path": "res://addons/copilot/UUID.gd"
}])
   <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 814 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H446l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z" fill="#478cbf"/><path d="M483 600c0 34 58 34 58 0v-86c0-34-58-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
              �}���/#   res://addons/copilot/CopilotUI.tscn�	�o"��,$   res://addons/copilot/large_icon.tres<��_Ά@D$   res://addons/copilot/small_icon.tres��tY� n~*   res://WebBuilds/index.apple-touch-icon.pngRn-;w�Mv   res://WebBuilds/index.icon.png���G|��h   res://WebBuilds/index.png�"y^��5   res://icon.svg�ԣ	&g�   res://Instruction1.tscn
kդ��$   res://Instruction2.tscn���
[M   res://node_2d.tscn'�9��|#s   res://startingScreen.tscn�ؖ'�M#   res://Summer24.apple-touch-icon.png:Zr�Ƚ�+   res://Summer24.icon.png���t�<   res://Summer24.png�8ijV   res://table.tscn=<���\(   res://text_edit.tscn         ECFG	      application/config/name         Summer24   application/run/main_scene$         res://startingScreen.tscn      application/config/features$   "         4.2    Forward Plus       application/config/icon         res://icon.svg     autoload/GlobalScript          *res://global_script.gd    input/reset�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode    R      physical_keycode   R   	   key_label      R      unicode           echo          script         input/main_menu�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   B   	   key_label             unicode    B      echo          script      #   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility         