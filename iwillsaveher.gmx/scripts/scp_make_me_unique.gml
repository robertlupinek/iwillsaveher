//Loop through instances and if the object has the same object_index ( same object )
//and the id  ( i is the id ) is not the same as your id then destroy that sucka.
//This makes this object the only object of it's kind in game.
for (i = 0; i < instance_count; i += 1;){
  if ( instance_exists(instance_id[i]) )
  { 
    if (instance_id[i].object_index == object_index && instance_id[i] != id ){
       with( instance_id[i] ){
          instance_destroy();  
        }
    }
  }
}
