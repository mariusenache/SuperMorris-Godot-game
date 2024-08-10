extends Area2D


func _on_body_entered(_body):
	queue_free()
	var berries = get_tree().get_nodes_in_group("Blackberries")
	if berries.size() == 1:
		Events.level_completed.emit()

