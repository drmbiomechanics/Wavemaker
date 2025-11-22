extends Node
var game_score = 0
var round = 1
var swimmer_index = [0,1,2,3,4,5]
var swimmer_amp_req_upper = [5,4,5,5,3,4]
var swimmer_amp_req_lower = [3,2,2,4,1,2]
var swimmer_wl_req_upper = [1,2,5,1.5,3,5]
var swimmer_wl_req_lower = [0.5,0.8,2,0.8,1.5,2]
var game_mode = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	print("global variables ready i think")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
