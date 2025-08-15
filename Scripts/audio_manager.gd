extends Node2D

var sound_effect_dict: Dictionary[Enums.SOUND_EFFECTS, SoundEffects] = {} ## Loads all registered SoundEffects on ready as a reference.

@export var sound_effects: Array[SoundEffects] ## Stores all effects in editor

func _ready() -> void:
	for sound_effect: SoundEffects in sound_effects:
		sound_effect_dict[sound_effect.type] = sound_effect


## Creates a sound effect if the limit has not been reached. Pass [param type] for the SoundEffect to be queued.
func create_audio(type: Enums.SOUND_EFFECTS) -> void:
	if not sound_effect_dict.has(type):
		return
		
	var sound_effect: SoundEffects = sound_effect_dict[type]
	if sound_effect.at_limit():
		return
	
	sound_effect.change_audio_count(1)
	
	# Create new audio player and play sound
	var audio_player: AudioStreamPlayer2D = AudioStreamPlayer2D.new()
	add_child(audio_player)
	audio_player.stream = sound_effect.sound_effect
	audio_player.bus = 	 Enums.BUSSES.keys()[sound_effect.bus]
	audio_player.volume_db = linear_to_db(sound_effect.volume) # Will this mess with the bus vol?
	audio_player.pitch_scale = sound_effect.pitch_scale
	audio_player.pitch_scale += randf_range(-sound_effect.pitch_randomness, sound_effect.pitch_randomness)
	audio_player.finished.connect(sound_effect.on_audio_finished)	
	audio_player.finished.connect(audio_player.queue_free)
	audio_player.play()	
