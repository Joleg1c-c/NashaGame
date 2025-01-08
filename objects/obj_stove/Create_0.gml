/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

horizontal_labels = ["рыба", "мясо", "гарнир", "овощи"];
vertical_labels = ["запеченное", "вареное", "жареное", "тушеное"];
icons = [
[fishbaked, fishboiled, fishgrilled, fishsteamed],
[meatbaked, meatboiled, meatgrilled, meatsteamed],
[sidedbaked, sidedboiled, sidedgrilled, sidedsteamed],
[vegbaked, vegboiled, veggrilled, vegsteamed]
]

grid_size = 4
cell_states = array_create(grid_size, grid_size);
for (var i = 0; i < grid_size; i++) {
    for (var j = 0; j < grid_size; j++) {
        cell_states[i][j] = 0; // 0 = normal, 1 = hovered, 2 = clicked
    }
}
cell_sprite = spr_inv_cell;
hover_sprite = spr_inv_select_old;
select_sprite = spr_inv_select;
cooking = false;
cook = undefined;
selected = 0;

function get_used(player) {
  if (cooking) {
    player.current_state = PLAYER_STATE.IDLE;
    cooking = false;
    cook = undefined;
    return;
  }
  
  player.current_state = PLAYER_STATE.TALK;
  cooking = true;
  cook = player;
  for (var i = 0; i < grid_size; i++) {
    for (var j = 0; j < grid_size; j++) {
      cell_states[i][j] = 0; // 0 = normal, 1 = hovered, 2 = clicked
    }
  }
  selected = 0;
}
