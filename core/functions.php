<?php

  /**
  * presents a better view of arrays for debugging purposes
  * @param array|data
  * @return array
  */  
  function print_array($data)
  {
     echo "<pre>", print_r($data, 1) , "</pre>";

     die(); //kill the script
  }

?>