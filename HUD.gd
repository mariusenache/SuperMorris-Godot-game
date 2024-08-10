extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	load_hearts()
	Global.hud = self

func load_hearts():
	$HeartsFull.size.x=Global.lives*52
	$HeartsEmpty.size.x=(Global.max_lives-Global.lives)*52
	$HeartsEmpty.position.x = $HeartsFull.position.x + $HeartsFull.size.x * $HeartsFull.scale.x 

