///bat_idle_state ()
image_speed = .25;

/// look for player
if (instance_exists(Player)) {
    var dis = point_distance(x, y, Player.x, Player.y)
    
    if (dis < sight) {
        state = bat_chase_state;
    }
}
