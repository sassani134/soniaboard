extends Control

func _ready() -> void:
	get_viewport().size = DisplayServer.screen_get_size()


func _process(delta: float) -> void:
	pass
