class_name SoundEffects
extends Resource


@export_category("Audio Settings")
@export var type: Enums.SOUND_EFFECTS
@export var sound_effect: AudioStreamMP3
@export var bus : Enums.BUSSES
@export var sfx_limit: int = 5
@export_range(0, 1, 0.01) var volume: float  
@export_range(0, 4, 0.01) var pitch_scale: float = 1.0
@export_range(0, 1, 0.01) var pitch_randomness: float

var current_count: int = 0 

## Takes [param amount] to change the [member audio_count]. 
func change_audio_count(amount: int) -> void:
	current_count = max(0, current_count + amount)


func at_limit() -> bool:
	return current_count >= sfx_limit


func on_audio_finished() -> void:
	change_audio_count(-1)
