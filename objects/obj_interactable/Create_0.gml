/// @description Insert description here
// You can write your code in this editor

spr_highlight = spr_interactable;
is_highlighted = false; 
is_interactable = true;

function get_used(player) {
	audio_play_sound(pickupsound, 1, false);
	audio_sound_gain(pickupsound, 0.7, 0);
}