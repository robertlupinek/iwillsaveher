//Set the xscale 
if ( direction < 90 || direction > 270 ){
    xscale = 1;
}
else if ( direction >= 90 && direction <= 270 ){
    xscale = -1;
}

return xscale;
