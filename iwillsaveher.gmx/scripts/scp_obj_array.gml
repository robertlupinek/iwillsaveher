//Reset the array
tmp_array = 0;

//Arguement 0 should be the parent object that identifies an object as an enemy.
tmp_target = argument0;

for(i = 0; i < instance_count; i += 1;)
{
    //It is possible for the object to be destroyed but not yet removed from the instance count or instance_id array
    //It seems to clean itself up at the end of the step event.   Odd.
    if ( instance_exists( instance_id[i] )  ) 
    {
        if ( object_is_ancestor( instance_id[i].object_index , tmp_target ) || instance_id[i].object_index == tmp_target )
        {
            //Append object id
            tmp_array[array_length_1d(tmp_array) ] = instance_id[i];
        }
    }
}

return(tmp_array);
