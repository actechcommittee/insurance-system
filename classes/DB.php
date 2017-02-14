 <?php
 /**
 * database interactions Class
 * This class is used to interact with the application database
 * @author    William Agyapong
 * @license   open source
 */

class DB
{
	// use the singleton pattern| one database instance
	private static $_instance = null;
    
	// set other properties
	private $_pdo,
	        $_query,
	        $_results,
	        $_error = false,
	        $_count = 0;

	/**
	*
	* Constructor 
	*/
	private function __construct() {
       
       try{
             $this->_pdo = new PDO('mysql:host=localhost;dbname=insurance', 'root', '');
       	    //$this->_pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);  
                        
       } catch(PDOException $e) {
       	   die($e->getMessage());
       }
	}

	/**
	* creates database class instance 
	* @return database instance
	*
	*/
	public static function getInstance() {
		// create a new db instance only if it has not already been instantiated
		if(! isset(self::$_instance)) {
			self::$_instance = new DB();
		}

		return self::$_instance;
	}

   
   /**
   * Runs query to the database
   * @param string SQL
   * @param array| values
   */
   public function query($sql, $params= array()) {
   	   $this->_error = false;
   	   if($this->_query = $this->_pdo->prepare($sql)) {
   	   	 
   	   	  $index = 1;
   	   	  if(count($params)) {
   	   	  	  foreach($params as $param) {
   	   	  	  	 $this->_query->bindValue($index, $param);

   	   	  	  	 $index++;
   	   	  	  }
   	   	  }

   	   	 if($this->_query->execute()) {
   	   	      $this->_results = $this->_query->fetchAll(PDO::FETCH_OBJ);
   	   	      $this->_count = $this->_query->rowCount();
   	     } else {
   	     	  $this->_error = true;
   	     }

   	   }

   	   return $this;//implement method chainning
   }
   



   public function action($action, $table, $where= array())
   {
       if(count($where) === 3) {
          
          //define allowable operators
          $operators = array('=', '<', '>', '<=', '>=', 'like');

          $field    = $where[0];
          $operator = $where[1];
          $value    = $where[2];

          if(in_array($operator, $operators)) {
             //construct sql;
             $sql = "{$action} FROM {$table} WHERE {$field} {$operator} ?";

             if(! $this->query($sql, array($value))->error()) {
               //success
               return $this;//implement method chainning
             }

          }

       }
       elseif(count($where) == 0) {

            $sql = "{$action} FROM {$table}";
            if(!$this->query($sql, array())->error()) {
               return $this;// implement method chaining
            }
       }
       return false;

   }
 
   /**
   * insert data into database
   * @param table name, data
   * @return boolean
   */
   public function insert($table, $data = array()) {
        //check if there is data in data array
        if(count($data)) {
           $fields = array_keys($data);
           $values = null;
           $index = 1;
           
            foreach($data as $value){
                $values .= '?';
              if($index < count($data)) {
                   $values .= ', ';
              }
              $index++;
           }
           
           $sql = "INSERT INTO {$table} (`". implode('`, `', $fields). "`) VALUES({$values})";
           
           if(! $this->query($sql, $data)->error()) {
               return true;//on success
           }
           
        }
        return false; //on error
   }
   

   
   /**
   * Fetches data from the database
   * Use in conjuction with either results() or firstRow()
   * @param string table
   * @param array field, operator, value
   */
   public function get($table,  array $where) 
   {
        return $this->action('SELECT *', $table, $where);
   }

  
   

   /**
   * @param void
   * @return array| database query results
   */
   public function results()
   {
   	   return $this->_results;
   }


   /**
   * Gets only the first row
   * @param void
   * @return array| table records
   */

   public function firstRow() 
   {
   	   return $this->_results[0];
   }
   

   
    /**
   * Gets data by query statement
   * @param string| query statement
   * @return array| table records
   */

    public function select($sql) 
   {
       $query = $this->_pdo->prepare($sql);
       $query->execute();
       $this->_results = $query->fetchAll(PDO::FETCH_OBJ);
       return $this;
   }

   /**
   * Updates a table record
   * @param string| table
   * @param string| table primary key field name
   * @param int| table primary key field value
   * @param array| fields
   * @return boolean
   */
   public function update($table, $fields=array(), $idValue, $tableId = "id") {
   		if(count($fields)) {
   			$set = '';
   			$counter = 1; 

   			foreach($fields as $field => $value) {
   				$set .= "{$field} = ?";
   				if($counter < count($fields)) {
   					$set .= ",";
   				}
   				$counter++;
   			}
            
   			$sql = "UPDATE {$table} SET {$set} WHERE {$tableId} = {$idValue}";

   			if(!$this->query($sql, $fields)->error()) {
   				return true;//success
   			} 
   				
   		   return false; //error
   			
   		}

   }
   
   /**
   * Gets errors from queries
   * @param void
   * @return boolean
   */
  public function error() 
  {
        return $this->_error;
  }

  

   /**
   * Gets errors from queries
   * @param string| table name
   * @param array| field, operator, field value
   * @return boolean
   */
   public function delete($table, $where) {
        return $this->action('DELETE', $table, $where);
   }

   
   /**
   * Gets errors from queries
   * @param string| table name
   * @param array| field, operator, field value
   * @return boolean
   */
   public function count() {
   	   return $this->_count;
   }
}
?>