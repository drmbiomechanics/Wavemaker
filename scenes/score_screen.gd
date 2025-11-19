extends Node2D
var score = 0
var highlight_code = "f9d9f0"
# Called when the node enters the scene tree for the first time.
func _ready():
	score = GlobalVariables.game_score
	$Rank_Container/Rank_Container6/Rank_6_Label.add_theme_color_override("font_color",Color(255,0,0))
	
	if score < 600:
		$Requested_Wave_Node/Swimmer_Rank_1_Left.show()
		$Requested_Wave_Node/Swimmer_Rank_1_Right.show()
		$Rank_Container/Rank_Container6/Rank_6_Label.add_theme_color_override("font_color",Color(50,50,50))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
