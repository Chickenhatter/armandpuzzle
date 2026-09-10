extends Node2D
var a = true
var holding = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
var xal = 0
var yal = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if a == true:
		if holding == false:
			if Input.is_action_just_pressed('ui_w'):
				lerpup()
			if Input.is_action_just_pressed('ui_s'):
				lerpdown()
			if Input.is_action_just_pressed('ui_a'):
				lerpleft()
			if Input.is_action_just_pressed('ui_d'):
				lerpright()
		else:
			if Input.is_action_just_pressed('ui_w'):
				if Global.positions[xal][yal-1] == 'x':
					Global.positions[xal][yal] = 'x'
					Global.positions[xal][yal-1] = '0'
					lerpup()


func lerpup():
	if yal > 0:
		yal -= 1
		a = false
		var tween = create_tween()
		tween.tween_property($Node2D, "position:y", ($Node2D.position.y - 100), 1.0)
		await get_tree().create_timer(1).timeout
		a = true

func lerpdown():
	if yal < 5:
		yal += 1
		a = false
		var tween = create_tween()
		tween.tween_property($Node2D, "position:y", ($Node2D.position.y + 100), 1.0)
		await get_tree().create_timer(1).timeout
		a = true

func lerpleft():
	if xal > 0:
		xal -= 1
		a = false
		var tween = create_tween()
		tween.tween_property($Node2D, "position:x", ($Node2D.position.x - 100), 1.0)
		await get_tree().create_timer(1).timeout
		a = true

func lerpright():
	if xal < 4:
		xal += 1
		a = false
		var tween = create_tween()
		tween.tween_property($Node2D, "position:x", ($Node2D.position.x + 100), 1.0)
		await get_tree().create_timer(1).timeout
		a = true
