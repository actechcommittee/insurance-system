<link rel="stylesheet" href="assets/css/w3.css" >
<?php 

    require_once 'core/init.php';


    $companies = DB::getInstance()->get('companies', array())->results();
// print_r($_POST);
    if (isset($_POST["content"]) or (isset($_POST["pany"]) and isset($_POST["panyId"])) or (isset($_SESSION["pany"]) and isset($_SESSION["panyId"]))) {
        if (isset($_POST["content"])&&isset($_POST["product_name"])) {

            $img = upload_img();
            $ret = DB::getInstance()->insert('products', array("company_id"=>$_SESSION["panyId"],"name"=>$_POST["product_name"],"description"=>$_POST["content"],"img"=>$img));
            // session_destroy();
            // header("location:backdoor.php");
        }

        if ((isset($_POST["pany"]) and isset($_POST["panyId"]))) {
            $_SESSION["pany"] = $_POST["pany"];
            $_SESSION["panyId"] = $_POST["panyId"];

        }
    }else{
        echo "<p class=\"w3-card w3-hover-shadow w3-blue w3-round w3-padding w3-margin w3-xlarge\" style=\"width: 100%\"> click on a company to add a product to them</p>";
        echo "<div class=\"w3-margin w3-padding\">";
        foreach ($companies as $copies) {
            echo "<form action=\"backdoor.php\" method=\"POST\">
            <input type=\"hidden\" value=\"".$copies->c_id."\" name=\"panyId\">
             <input type=\"hidden\" value=\"".$copies->c_name."\" name=\"pany\">
                <button class=\"w3-btn-block w3-green w3-large  w3-hover-blue  w3-round-xxlarge\">".$copies->c_name."</button>
            </form>";
        }
        echo "</div>";
        die();
    }

    function upload_img(){
        $target = "./assets/images/pro/";
        $target_file = $target . basename($_FILES["kunglao"]["name"]);
        $uploadOk = 1;
        $imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
        // Check if image file is a actual image or fake image
        // if(isset($_POST["kunglao"])) {
            $check = getimagesize($_FILES["kunglao"]["tmp_name"]);
            if($check !== false) {
                echo "File is an image - " . $check["mime"] . ".";
                $uploadOk = 1;
            } else {
                echo "File is not an image.";
                $uploadOk = 0;
            }
        // }
        // Check if file already exists
        if (file_exists($target_file)) {
            echo "Sorry, file already exists.";
            $uploadOk = 0;
        }
        // Check file size
        if ($_FILES["kunglao"]["size"] > 500000) {
            echo "Sorry, your file is too large.";
            $uploadOk = 0;
        }
        // Allow certain file formats
        if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
        && $imageFileType != "gif" ) {
            echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
            $uploadOk = 0;
        }
        // Check if $uploadOk is set to 0 by an error
        if ($uploadOk == 0) {
            echo "Sorry, your file was not uploaded.";
        // if everything is ok, try to upload file
        } else {
            if (move_uploaded_file($_FILES["kunglao"]["tmp_name"], $target_file)) {
                echo "The file ". basename( $_FILES["kunglao"]["name"]). " has been uploaded.";
                return basename( $_FILES["kunglao"]["name"]);
            } else {
                echo "Sorry, there was an error uploading your file.";
            }
        }
}
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
       <!--  The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
       <meta name="description" content="">
        <meta name="author" content="">
         <title>content-editor</title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css" >
        <link rel="stylesheet" href="assets/summernote/summernote.css">
         <script src="assets/js/jquery-2.1.4.min.js"></script>
        <style type="text/css">
            
            @media (min-width: 768px) {
            .container {
                width: 600px!important;
            }
        }

        @media (min-width: 800px) {
            .container {
                width: 600px!important;
            }
        }

        @media (min-width: 980px) {
            .container {
                width: 600px!important;
            }
        }

        @media (min-width: 1200px) {
            .container {
                width: 800px!important;
            }
        }

        @media (min-width: 1400px) {
            .container {
                width: 800px!important;
            }
        }
        </style>
    </head>

    <body style="padding:0px">
    <br/>
        <div class="container-fluid">
        <div class="row" style="">
          <form class="span12" id="postForm" action="backdoor.php" method="POST" enctype="multipart/form-data" onsubmit="return postForm()">
            
            <div class="row">
            <div class="col-lg-4 w3-padding-jumbo">
            
             <label class="w3-label w3-large w3-text-deep-orange">YOUR PRODUCT'S NAME</label>
             <input type="text" name="product_name" class="w3-input w3-border w3-large" required="true" autofocus="true">
             <br><br>
            
            <input type="file" name="kunglao" id="file">
            <br><br>
             <button type="submit" class="w3-btn w3-large w3-deep-orange w3-round" style="">SAVE</button>
             <input type="submit">
            </div>
            <div class="col-lg-8 w3-padding-jumbo">
            <label class="w3-center w3-padding w3-text-deep-orange w3-large">DESCRIBE YOUR INSURANCE PRODUCT</label>
            <div class="summernote">
                <!-- <div class="row"> -->


                        <fieldset>
                            <p class="container">
                                <textarea class="input-block-level" id="summernote" name="content" rows="18">
                                    
                                </textarea>
                            </p>
                        </fieldset>


                <!-- </div> -->
            </div>
            </div>
            </div>
            </form>
        </div>
        </div>

       
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/summernote/summernote.min.js"></script>

         <script>
        
        $(document).ready(function() {
            $('#summernote').summernote({
              placeholder: 'write here...',//sets the placeholder
              height:200,
              minHeight: null,             // set minimum height of editor
              maxHeight: 300,             // set maximum height of editor
              focus: false,                 // set focus to editable area after initializing summernote
            });
        });
            var postForm = function() {
            var content = $('textarea[name="content"]').html($('#summernote').code());
            }

// $(document).ready(function(){
//     $("img").addClass("img-responsive");
// });


        </script>

        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->

    </body>
</html>
