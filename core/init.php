<?php

/**
|----------------------------------------------------
|    REGISTER SESSION
|----------------------------------------------------
*/
  session_start(); 
 



/**
|----------------------------------------------------
|     database credentials
|----------------------------------------------------
*/
    $dbHost = 'localhost';
    $dbPassword = '';
    $dbUser     = 'root';
    $dbName = 'insurance';
    


/**
|----------------------------------------------------
|     database credentials
|----------------------------------------------------
*/

  #e-mail account
  //email: actechcommittee@gmail.com
  //pass : assaactec
  
  #git account
  //username: actechcommittee
  //pass    : actec2017


/**
|---------------------------------------------
|      LOAD CLASSES
|---------------------------------------------
*/

// autoload classes
spl_autoload_register(function($class){
    require_once 'classes/'.$class.'.php';
});





/**
|---------------------------------------------
|       REQUIRE FUNCTIONS
|---------------------------------------------
*/

  require_once 'functions.php';





/*
|=======================================================================
|                        CLASSES METHODS USAGE
|=======================================================================
|       DATABASE METHODS
|--------------------------------------------------------------------
|  deleting table fields
| if(DB::getInstance()->delete('table name', array('id', '=', value))->count())
  {
     //success
  } else{
     //failed
  }

|  inserting into tables
| DB::getInstance()->insert('table name', array(
                                               
                                               'field'=>value,
                                               'another field'=>value
                                               ));

|  updating table fields
| if(DB::getInstance()->update('table name', array(
                                                  
                                                  'field'=>'value',
                                                  'another field'=>'value'
                                                  ), 22)){
    //success
  } else{

    //failed
  }
*/