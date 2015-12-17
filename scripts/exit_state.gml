///exit_state
if (image_alpha > 0){
    image_alpha -=.25;
} else {
    if (room != rm_seven){
        room_goto_next();
        } else {
            // Calculate the score
            score = PlayerStats.sapphires * 100; 
            
            // open the high scores
            ini_open("Settings.ini");
            PlayerStats.highscore = ini_read_real("Score", "Highscore", 0);
            
            // A new highscore case
            if (score > PlayerStats.highscore) {
            PlayerStats.highscore = score;
            ini_write_real("Score", "Highscore", PlayerStats.highscore);
            }
            
            // Close the ini file
            ini_close();
            room_goto(rm_highscore);
        }
}
