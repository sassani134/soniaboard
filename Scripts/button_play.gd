extends Button

@onready var audio: AudioStreamPlayer = $AudioStreamPlayer
@export var audioStream : AudioStreamMP3

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	audio.stream = audioStream
	self.text = "PLAY"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	if audio.playing:
		self.text = "PLAY"
		audio.stop()
	else:
		self.text = "STOP"
		audio.play()


func _on_audio_stream_player_finished() -> void:
	self.text = "PLAY"
