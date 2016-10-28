format_text = argument0;  //Text you want split up nicely
line_len = argument1; //How many characters you will allow per line

last_space = 0; //Last character a space was found.
last_found = 0; //Value of last space last time we wraped a line
char_count = 0; //How many have been investigated

//Loop throug the length of the string.
for ( s = 0; s < string_length(format_text); s += 1)
{
    char_count += 1; //Increment the character's inspected count
    
    
    tmp_char = string_char_at(format_text, s);
    
    
    //If the current is a space make it as the last known space
    if ( tmp_char == " " )
    {
        last_space = s;
    }
    //If the current character is # ( newline in Game Maker ) reset char_count
    if ( tmp_char == "#" )
    {
        char_count = 0;
    }
    
    //If we have previously found a space and we are at over over the line length
    //Also, make sure last_space some how wasn't the last one we found.  We just want to continue
    //through the loop if it was.
    if ( char_count >= line_len && last_space != 0 && last_space != last_found)
    {
        //Insert a # for newline after the last found space
        format_text = string_insert("#",format_text,last_space + 1 );
        //Start the loop at the last found space
        s = last_space;
        //Prevent a stuck loop from ever happening
        last_found = last_space; 
        //Start the character inspection count back to zero
        char_count = 0;
    } 
}
//Clean up HTML 5 sprite font bug
//The _ is basically a sprite with an alpha of 1 or so.  
//An actual image needs to be drawn in HTML5 for what ever reason.
format_text = string_replace_all(format_text," ","_");

//Return the formatted text

return format_text;
