//Check to see if an item is in a 1d array
tmp_item = argument0;
tmp_array = argument1;

for ( tmp_i=0;tmp_i<array_length_1d(tmp_array); tmp_i+=1){
  if tmp_array[tmp_i] == tmp_item then return true;
}
return false;
