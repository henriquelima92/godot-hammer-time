extends Area

onready var animation = $Animation


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("area_entered",self,"_on_area_entered")

func _input(event):
	if (event is InputEventMouseButton or InputEventScreenTouch) and event.is_pressed():
		animation.play("hit")

func _on_area_entered(area):
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
