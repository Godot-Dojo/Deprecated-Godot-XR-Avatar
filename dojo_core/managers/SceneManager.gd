extends Node



var current_scene = null
var scene_match = null

# Called when the node enters the scene tree for the first time.
func _ready():
	current_scene = get_tree().current_scene # Replace with function body.
	if current_scene.get_filename() == "res://dojo_demo/avatar_demo/XR_Avatar_Male_Demo.tscn":
		scene_match = "male_avatar"
	if current_scene.get_filename() == "res://dojo_demo/avatar_demo/XR_Avatar_Female_Demo.tscn":
		scene_match = "female_avatar"
	if current_scene.get_filename() == "res://dojo_demo/avatar_demo/XR_Avatar_LipSync_Demo.tscn":
		scene_match = "lipsync_avatar"
	if current_scene.get_filename() == "res://dojo_demo/collision_hands_demo/XR_Collision_Hands_Demo.tscn":
		scene_match = "collision_hands"
	if current_scene.get_filename() == "res://dojo_demo/weapons_demo/XR_Weapons_Demo.tscn":
		scene_match = "weapons"
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Feature_RadialMenu_entry_selected(entry):
	if entry == scene_match:
		return
	elif entry == "male_avatar": 
		get_tree().change_scene("res://dojo_demo/avatar_demo/XR_Avatar_Male_Demo.tscn")
	elif entry == "female_avatar":
		get_tree().change_scene("res://dojo_demo/avatar_demo/XR_Avatar_Female_Demo.tscn")
	elif entry == "lipsync_avatar": 
		get_tree().change_scene("res://dojo_demo/avatar_demo/XR_Avatar_LipSync_Demo.tscn")
	elif entry == "collision_hands":
		get_tree().change_scene("res://dojo_demo/collision_hands_demo/XR_Collision_Hands_Demo.tscn")
	elif entry == "weapons":
		get_tree().change_scene("res://dojo_demo/weapons_demo/XR_Weapons_Demo.tscn")
	elif entry == "seated_or_standing": 	
		if get_parent().get_node("avatar_player/FPController/PlayerBody").player_height_offset == 0.0:
			get_parent().get_node("avatar_player/FPController/PlayerBody").player_height_offset = 0.5	
		else:
			get_parent().get_node("avatar_player/FPController/PlayerBody").player_height_offset = 0.0
