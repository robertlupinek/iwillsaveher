//Fun modification of the bubble sort to sort by value of object.
//Great example to sort an array of objects by a value assigned to the object.

var arr_length;//this is the array length
var a = argument0;// the actual array of objects
var order = argument1 //What order?  
var tmp;//temporary variable to switch two elements in the array
cur_pos = array_length_1d(a);//get the array length
for (var i = 0;i < cur_pos;i++)             //first for loop starting from the first index to arra_length -1, it simply means repeating the process array_length times, as the bubble sort needs only array_length times to fully sort the array
{
    for (var j = cur_pos-1; j > i;j--) // the next for loop starts from the end of the array (last index) and goes until it reaches index i+1, basically to stop it in front of sorted numbers because they're already sorted
    {
        //We are sorting by the y value of the object
      if ( order == "asc" ){  
        if (a[j].y < a[j-1].y){       // when we find that the right number is smaller than the left one, we simply swap them
            tmp = a[j];       // we store value a[j] into temp to assign another value to that position without losing the value we have in a[j]
            a[j] = a[j-1];    // we add the new value which is a[j-1] in a[j]
            a[j-1] = tmp;   // we simply put a[j-1]=tmp to have the numbers swapped;
        }
      }
      else{  //Reverse the order of the sort
        if (a[j].y > a[j-1].y){       // when we find that the right number is greater than the left one, we simply swap them
            tmp = a[j];       // we store value a[j] into temp to assign another value to that position without losing the value we have in a[j]
            a[j] = a[j-1];    // we add the new value which is a[j-1] in a[j]
            a[j-1] = tmp;   // we simply put a[j-1]=tmp to have the numbers swapped;
        }
      }      
    }
} 

return a; //we finally return the array
