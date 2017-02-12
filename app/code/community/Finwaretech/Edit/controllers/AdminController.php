<?php
class Finwaretech_Edit_Helper_Data extends Mage_Core_Controller_Front_Action
{
}
class Finwaretech_Edit_AdminController extends Mage_Core_Controller_Front_Action
{
    // Main function which calls the layout for Edit page
	public function pageAction()
	{

		$this->loadLayout();
		$this->_initLayoutMessages('customer/session');
        $this->renderLayout();
	}

    // Function for Hotspot
	public function updateHotspotAction() 
	{
        // Function to compress image
        function compress($source, $destination, $quality) 
        {
            $info = getimagesize($source);

            if ($info['mime'] == 'image/jpeg') 
                $image = imagecreatefromjpeg($source);

            elseif ($info['mime'] == 'image/gif') 
                $image = imagecreatefromgif($source);

            elseif ($info['mime'] == 'image/png') 
                $image = imagecreatefrompng($source);

            imagejpeg($image, $destination, $quality);

            return $destination;
        }

        // Function to delete folder
        function hotspot_delete_directory($dirname) 
        {
            if (is_dir($dirname))
            {
                $dir_handle = opendir($dirname);
            }
            if (!$dir_handle)
            {
                return false;
            }

            while($file = readdir($dir_handle)) 
            {
                if ($file != "." && $file != "..") 
                {
                    if (!is_dir($dirname."/".$file))
                        unlink($dirname."/".$file);
                    else
                        hotspot_delete_directory($dirname.'/'.$file);
                }
            }

            closedir($dir_handle);
            rmdir($dirname);
            return true;
        }

        // Update table 'finware_index' to active
		$product = $this->getRequest()->getParam('id');
        $table = Mage::getSingleton('core/resource')->getTableName('finware_index');
        $rows = array('active'=>'Yes');
        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
        $write->update($table, $rows,"product_id=".$product);


        $table = Mage::getSingleton('core/resource')->getTableName('oc_product_customize');
        $rows = array('hotspot_function'=>'1');
        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
        $write->update($table, $rows,"product_id=".$product);

        //Get data from table 'oc_product_hotspot'
		$connection = Mage::getSingleton('core/resource')->getConnection('oc_product_hotspot');

        $result = $connection->fetchAll("SELECT count(*) FROM oc_product_hotspot where product_id = $product");
        $hotspot_check = $result[0]['count(*)'];

        if($hotspot_check == 0)
        {
            //oc_product_hotspot
            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_hotspot');
            $rows = array(array('product_id'=>$product,'map_code'=>' ','number_of_hotspot'=>'0','width'=>' ','height'=>' ','name'=>' '));
            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
            $write->insertMultiple($table,$rows);

            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
            $write->delete($table, "product_id=".$product);

            $directory = Mage::getBaseDir('media').'/add/interactivity/converted/'.$product;
            hotspot_delete_directory($directory);


            $audio_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/audio';
            $background_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/background';
            $original_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/original';
            $transitions_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/transitions';
            $video_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/video';
            $converted_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/converted';

            $ioFile = new Varien_Io_File();
            $ioFile->checkAndCreateFolder($converted_folder);
            $ioFile->checkAndCreateFolder($audio_folder);
            $ioFile->checkAndCreateFolder($background_folder);
            $ioFile->checkAndCreateFolder($original_folder);
            $ioFile->checkAndCreateFolder($transitions_folder);
            $ioFile->checkAndCreateFolder($video_folder);
        }

      	$result = $connection->fetchAll("SELECT home_image_link FROM oc_product_hotspot where product_id = $product");
      	$img_src = $result[0]['home_image_link'];

      	$result = $connection->fetchAll("SELECT number_of_hotspot FROM oc_product_hotspot where product_id = $product");
      	$number_of_hotspot = $result[0]['number_of_hotspot'];

      	$result = $connection->fetchAll("SELECT width FROM oc_product_hotspot where product_id = $product");
      	$edit_img_width = $result[0]['width'];

      	$result = $connection->fetchAll("SELECT height FROM oc_product_hotspot where product_id = $product");
      	$edit_img_height = $result[0]['height'];

      	$result = $connection->fetchAll("SELECT map_code FROM oc_product_hotspot where product_id = $product");
      	$map_code = json_encode($result[0]['map_code']);

      	$result = $connection->fetchAll("SELECT name FROM oc_product_hotspot where product_id = $product");
      	$hotspot_names = $result[0]['name']; //product name


      	// $hotspot_interactivity_name = explode(",",$hotspot_names);

      	// $result = $connection->fetchAll("SELECT video_url FROM oc_product_hotspot where product_id = $product");
      	// $hotspot_video_url = $result[0]['video_url']; 
      	// $hotspot_video_url_names = explode(",",$hotspot_video_url);

      	// $result = $connection->fetchAll("SELECT audio_name FROM oc_product_hotspot where product_id = $product");
      	// $hotspot_audio_names = $result[0]['audio_name']; 
      	// $hotspot_audio_name = explode(",",$hotspot_audio_names);
      
      	////Get data from tables 'oc_product_customize'
      	$connection = Mage::getSingleton('core/resource')->getConnection('oc_product_customize');
  		$result = $connection->fetchAll("SELECT button_color FROM oc_product_customize where product_id = $product");
  	    $button_color = $result[0]['button_color'];
  	    
      	$result = $connection->fetchAll("SELECT text_color FROM oc_product_customize where product_id = $product");
  	    $text_color = $result[0]['text_color'];  
  	    
      	$result = $connection->fetchAll("SELECT band_color FROM oc_product_customize where product_id = $product");
  	    $band_color = $result[0]['band_color'];


        //Get data from table 'oc_product_interactivity'
        $connection2 = Mage::getSingleton('core/resource')->getConnection('oc_product_interactivity');

        $result = $connection2->fetchAll("SELECT count(*) FROM oc_product_interactivity where product_id = $product ORDER BY interactivity_order");
        $count_inter = $result[0]['count(*)'];

        $result = $connection2->fetchAll("SELECT interactivity_name FROM oc_product_interactivity where product_id = $product ORDER BY interactivity_order");
        $name_interactivity = $result;

        $result = $connection2->fetchAll("SELECT interactivity_id FROM oc_product_interactivity where product_id = $product ORDER BY interactivity_order");
        $interactivity_id = $result;

        $result = $connection2->fetchAll("SELECT frame_change FROM oc_product_interactivity where product_id = $product ORDER BY interactivity_order");
        $frame_change = $result;

        $result = $connection2->fetchAll("SELECT frames FROM oc_product_interactivity where product_id = $product ORDER BY interactivity_order");
        $frames = $result;

        $result = $connection2->fetchAll("SELECT audio_condition FROM oc_product_interactivity where product_id = $product ORDER BY interactivity_order");
        $audio_condition = $result;

        $result = $connection2->fetchAll("SELECT audio_name FROM oc_product_interactivity where product_id = $product ORDER BY interactivity_order");
        $audio_name = $result;

        $result = $connection2->fetchAll("SELECT video_url FROM oc_product_interactivity where product_id = $product ORDER BY interactivity_order");
        $video_url_db = $result;

        $result = $connection2->fetchAll("SELECT Pinteractivity FROM oc_product_interactivity where product_id = $product ORDER BY interactivity_order");
        $Pinteractivity = $result;
  	    $uri = $_SERVER['REQUEST_URI'];
        //echo $uri; // Outputs: URI
        $uri = explode('edit/admin/updateHotspot', $uri);
        $page_url = $protocol . $_SERVER['HTTP_HOST'] . $uri[0];
        $hd_status = '0';
        $productId = $product; //product id
        //Get data from form of hotspot UI
        $hotspot_counter =$hotspot_counter_new= $this->getRequest()->getPost('hotspot_interactivity_counter');
        $text_color_hotspot = $this->getRequest()->getPost('text_color_hotspot');
        $button_color_hotspot = $this->getRequest()->getPost('button_color_hotspot');
        $band_color_hotspot = $this->getRequest()->getPost('band_color_hotspot');

        if($hotspot_counter < $count_inter)
            $hotspot_counter = $count_inter;

        //oc_product_customize - update
        if($text_color_hotspot != $text_color || $button_color_hotspot != $button_color || $band_color_hotspot != $band_color)
        {
            // Update 'text_color'
        	if($text_color_hotspot != $text_color && $text_color_hotspot != "")
        	{
        		$table = Mage::getSingleton('core/resource')->getTableName('oc_product_customize');
	            $rows = array('text_color'=>$text_color_hotspot);
	            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
	            $write->update($table, $rows,"product_id=".$productId);
        	}
            // Update 'button_color'
        	if($button_color_hotspot != $button_color && $button_color_hotspot != "")
        	{
	            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_customize');
	            $rows = array('button_color'=>$button_color_hotspot);
	            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
	            $write->update($table, $rows,"product_id=".$productId);
        	}
            // Update 'band_color'
        	if($band_color_hotspot != $band_color && $band_color_hotspot != "")
        	{
	            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_customize');
	            $rows = array('band_color'=>$band_color_hotspot);
	            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
	            $write->update($table, $rows,"product_id=".$productId);
        	}
        }

   		$name = "";
        // $audio_name = "";
        $video_url_name = "";
        $hotspot_names = "";
        $hd_status = '0';
        // Upload home image if changed
        if($_FILES['filename']['name'] != NULL)
        {   
            $path = Mage::getBaseDir('media') . '/add/interactivity/converted/';
            $fname = $_FILES['filename']['name'];
            $path_parts = pathinfo($fname);
            $ext = $path_parts['extension'];
            $path = $path . $productId .'/converted/';
            //$file_name = $path_parts['filename'];
            // Code for upload file
            $home_img_name = "1";
            $rename = '00'.$home_img_name.'.jpg';
            $uploader = new Varien_File_Uploader('filename');
            $uploader->setAllowedExtensions(array('png', 'gif', 'jpeg', 'jpg'));
            $uploader->setAllowCreateFolders(true);
            $uploader->setAllowRenameFiles(false);   //set true to rename automatically
            $uploader->setFilesDispersion(false);
            $uploader->save($path, $rename);

            $source_img = $path."/".$rename;
            $destination_img = $path."/".$rename;
            $size = $_FILES['filename']['size'];

            // $quality_image = (350000/$size)*100;
                                        
            // Compress image only if image is larger than 100 KB
            if($size > 100000)
                $d = compress($source_img, $destination_img, 80);

            $img_url = 'media/add/interactivity/converted/'. $productId .'/converted/'. $rename;

            $width_img = $this->getRequest()->getPost('width_img_input');
            $height_img = $this->getRequest()->getPost('height_img_input');

            //Upadte home image url 
            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_hotspot');
            $rows = array('home_image_link'=>$img_url,'width'=>$width_img,'height'=>$height_img);
            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
            $write->update($table, $rows,"product_id=".$productId);
        }

        $Anchor_tag = $this->getRequest()->getPost('anchor_tag_input');
        $no_of_hotspot = $this->getRequest()->getPost('no_of_hotspot_input');

        $hotspot_counter = $this->getRequest()->getPost('hotspot_interactivity_counter');
        $text_color_hotspot = $this->getRequest()->getPost('text_color_hotspot');
        $button_color_hotspot = $this->getRequest()->getPost('button_color_hotspot');
        $band_color_hotspot = $this->getRequest()->getPost('band_color_hotspot');
        $deleted_interactivity = $this->getRequest()->getPost('deleted_hotspot');
        if($deleted_interactivity != "")
            $deleted_interactivity = explode(",",$deleted_interactivity); //Array of deleted hotspot
        else
            $deleted_interactivity = array();
        sort($deleted_interactivity);
        //Array of hotspot (including deleted hotspot)
        $array_of_interactivity = $this->getRequest()->getPost('array_of_hotspot');
        $array_of_interactivity = explode(",",$array_of_interactivity);
        $index = 0;
        for ($i=0; $i < sizeof($array_of_interactivity) ; $i++) 
        {
            $value = $array_of_interactivity[$i];
            if(!(array_search($value,$deleted_interactivity) !== FALSE ))
            {   
                //Array of hotspot excluding deleted hotspot
                $result_array[$index] = $value;
                $index++;
            }
        }        
        $number_of_hotspot_after_deleting = sizeof($result_array);
                // $number_of_hotspot_after_deleting--;

   		//new hotspot
   		if($hotspot_counter_new > $count_inter)
        {
            for($count = $count_inter; $count < $hotspot_counter_new; $count++)
            {
                if(!(array_search($count,$deleted_interactivity)!== FALSE ))
                {
                    //Getting interactivity order
                    $interactivity_order = array_search($count,$result_array);
                    $interactivity_order++;
                    $hotspot_youtube_video_url = $this->getRequest()->getPost('hotspot_url_youtube_'. $count);
                    $hotspot_select = $this->getRequest()->getPost('hotspot_select_'. $count);
                    $name = $this->getRequest()->getPost('hotspot_name_'. $count);
                    $hotspot_names = $hotspot_names . $this->getRequest()->getPost('hotspot_name_'. $count).",";
                    $rename_audio = NULL;
                    $hotspot_ld_image_speed = $this->getRequest()->getPost('hotspot_ld_image_speed_'.$count);
                    if($hotspot_ld_image_speed == '' || $hotspot_ld_image_speed == NULL)
                        $hotspot_ld_image_speed = '0.15';
                    // $hotspot_hd_image_speed = $this->getRequest()->getPost('hotspot_hd_image_speed_'.$count);
                    $hotspot_audio_play_type = $this->getRequest()->getPost('hotspot_audio_play_type_'.$count);

                    //If hotspot_images is selected(radio button)
                    if($hotspot_select == 'images')
                    {
                        // LD Image Upload

                        //Sort Order of IL images
                        $hotspot_sort_order_ld = $this->getRequest()->getPost('hotspot_sort_order_ld_'. $count);
                        $hotspot_sort_order_ld = explode(",",$hotspot_sort_order_ld);  
                        // No of clicks on input button
                        $hotspot_click_ld = $this->getRequest()->getPost('hotspot_no_of_ld_click_'.$count);
                        // $j = 0;
                        if($_FILES['pictures_hotspot_ld_'. $count.'_0']['name'] != NULL)
                        {
                            for ($i=0,$m=1; $i < $hotspot_click_ld; $i++) 
                            { 
                                foreach ($_FILES['pictures_hotspot_ld_'.$count.'_'.$i]['name'] as $key => $image) 
                                {   
                                    for ($p=0; $p < count($hotspot_sort_order_ld) ; $p++) 
                                    { 
                                        //File uploading
                                        if($m == $hotspot_sort_order_ld[$p])
                                        {
                                            Mage::log('looping');
                                            if (empty($image)) 
                                            {
                                                Mage::log('continue');
                                                continue;
                                            }
                                            try 
                                            {
                                                Mage::log('uploading');
                                                $uploader = new Varien_File_Uploader(
                                                array(
                                                    'name' => $_FILES['pictures_hotspot_ld_'.$count.'_'.$i]['name'][$key],
                                                    'type' => $_FILES['pictures_hotspot_ld_'.$count.'_'.$i]['type'][$key],
                                                    'tmp_name' => $_FILES['pictures_hotspot_ld_'.$count.'_'.$i]['tmp_name'][$key],
                                                    'error' => $_FILES['pictures_hotspot_ld_'.$count.'_'.$i]['error'][$key],
                                                    'size' => $_FILES['pictures_hotspot_ld_'.$count.'_'.$i]['size'][$key]
                                                    )
                                                );


                                                // Any extention would work
                                                $uploader->setAllowedExtensions(array('jpg', 'jpeg', 'gif', 'png'));
                                                $uploader->setAllowRenameFiles(false);
                                                $uploader->setFilesDispersion(false);

                                                $path = Mage::getBaseDir('media') . '/add/interactivity/converted/';

                                                $fname = $_FILES['pictures_hotspot_ld_'.$count.'_'.$i]['name'][$key];
                                                $path_parts = pathinfo($fname);
                                                $ext = $path_parts['extension'];
                                                $path = $path . $productId .'/converted/'.$name.'/';
                                                //$file_name = $path_parts['filename'];
                                                //File name
                                                $image_name = $p+1;
                                                if($image_name<=9)
                                                    $prefix = "00";
                                                else if ($image_name>9 && $image_name<99) 
                                                    $prefix = "0";
                                                else if($image_name>99)
                                                    $prefix = "";
                                                $rename = $prefix.$image_name.'.jpg';

                                                $img = $uploader->save($path, $rename);

                                                $source_img = $path."/".$rename;
                                                $destination_img = $path."/".$rename;
                                                $size = $_FILES['pictures_hotspot_ld_'.$count.'_'.$i]['size'][$key];
                                                // $quality_image = 500000/$size;   
                                                if($size >= 500000 && $size < 1000000)    
                                                    $quality_image = 80;
                                                if($size >= 1000000 && $size < 2000000)    
                                                    $quality_image = 60; 
                                                 if($size >= 2000000)    
                                                    $quality_image = 40;                              
                                                // Compress image only if image is larger than 500 KB
                                                if($size > 500000)    
                                                    $d = compress($source_img, $destination_img, $quality_image);

                                                Mage::log($img['file']);
                                                // $j+=2;
                                            } 
                                            catch (Exception $e) 
                                            {
                                                echo $e->getMessage();
                                                Mage::log($e->getMessage());
                                            }
                                        }
                                    }                        
                                    $m++;
                                }
                            }
                            $frames_number = $image_name;
                        }
                        // HD Image Upload - hotspot
                        //Sort order of HD images
                        $hotspot_sort_order_hd = $this->getRequest()->getPost('hotspot_sort_order_hd_'. $count);
                        $hotspot_sort_order_hd = explode(",",$hotspot_sort_order_hd);
                        // No of HD input button
                        $hotspot_click_hd = $this->getRequest()->getPost('hotspot_no_of_hd_click_'. $count);
                        if($_FILES['pictures_hotspot_hd_'.$count.'_0']['name'] != NULL)
                        {
                            for ($l=0,$n=1; $l < $hotspot_click_hd; $l++) 
                            { 
                                //Images uploading
                                foreach ($_FILES['pictures_hotspot_hd_'.$count.'_'.$l]['name'] as $key => $image) 
                                {   
                                    for ($p=0; $p < count($hotspot_sort_order_hd) ; $p++) 
                                    { 
                                        if($n == $hotspot_sort_order_hd[$p])
                                        {
                                            $hd_status = '1';
                                            Mage::log('looping');
                                            if (empty($image)) 
                                            {
                                                Mage::log('continue');
                                                continue;
                                            }
                                            try 
                                            {
                                                Mage::log('uploading');
                                                $uploader = new Varien_File_Uploader(
                                                array(
                                                    'name' => $_FILES['pictures_hotspot_hd_'.$count.'_'.$l]['name'][$key],
                                                    'type' => $_FILES['pictures_hotspot_hd_'.$count.'_'.$l]['type'][$key],
                                                    'tmp_name' => $_FILES['pictures_hotspot_hd_'.$count.'_'.$l]['tmp_name'][$key],
                                                    'error' => $_FILES['pictures_hotspot_hd_'.$count.'_'.$l]['error'][$key],
                                                    'size' => $_FILES['pictures_hotspot_hd_'.$count.'_'.$l]['size'][$key]
                                                    )
                                                );

                                                // Any extention would work
                                                $uploader->setAllowedExtensions(array('jpg', 'jpeg', 'gif', 'png'));
                                                $uploader->setAllowRenameFiles(false);
                                                $uploader->setFilesDispersion(false);

                                                $path = Mage::getBaseDir('media') . '/add/interactivity/converted/';

                                                $fname = $_FILES['pictures_hotspot_hd_'.$count.'_'.$l]['name'][$key];
                                                $path_parts = pathinfo($fname);
                                                $ext = $path_parts['extension'];
                                                $path = $path . $productId .'/converted/'.$name.'/HD/';
                                                //File naming
                                                $image_name = $p+1;
                                                if($image_name<=9)
                                                    $prefix = "00";
                                                else if ($image_name>9 && $image_name<99) 
                                                    $prefix = "0";
                                                else if($image_name>99)
                                                    $prefix = "";
                                                $rename = $prefix.$image_name.'.jpg';
                                                $img = $uploader->save($path, $rename);

                                                $source_img = $path."/".$rename;
                                                $destination_img = $path."/".$rename;
                                                $size = $_FILES['pictures_hotspot_hd_'.$count.'_'.$i]['size'][$key];
                                                // $quality_image = 500000/$size;   
                                                if($size >= 500000 && $size < 1000000)    
                                                    $quality_image = 80;
                                                if($size >= 1000000 && $size < 2000000)    
                                                    $quality_image = 60; 
                                                 if($size >= 2000000)    
                                                    $quality_image = 40;                              
                                                // Compress image only if image is larger than 500 KB
                                                if($size > 500000)    
                                                    $d = compress($source_img, $destination_img,$quality_image);

                                                Mage::log($img['file']);
                                                // $k+=2;
                                            } 
                                            catch (Exception $e) 
                                            {
                                                echo $e->getMessage();
                                                Mage::log($e->getMessage());
                                            }
                                        }
                                    }                        
                                    $n++;
                                }
                            }
                        }
                        $audio_time = NULL;
                        // $frames_number = $image_name;
                        //Upload Audio
                        $path = Mage::getBaseDir('media').'/add/interactivity/converted/';
                        if (!file_exists($path)) 
                        {
                            mkdir($path, 777, true);
                        }
                        try 
                        {
                            //If Audio is present
                            if($_FILES['hotspot_audio_'. $count]['name'] != NULL)
                            {
                                $audio_time = $this->getRequest()->getPost('hotspot_audio_duration_' . $count);
                                $audio_time = $audio_time*1000;
                                $fname = $_FILES['hotspot_audio_'. $count]['name'];
                                $path_parts = pathinfo($fname);
                                $ext = $path_parts['extension'];
                                $path = $path . $productId .'/audio/';
                                //$file_name = $path_parts['filename'];
                                $rename_audio = 'audio_'.($interactivity_order-1).'.'.$ext ;
                                //Upload Audio
                                // $audio_name = $audio_name . $rename_audio;
                                $uploader = new Varien_File_Uploader('hotspot_audio_'.$count);
                                $uploader->setAllowedExtensions(array('mp3'));
                                $uploader->setAllowCreateFolders(true);
                                $uploader->setAllowRenameFiles(false);   //set true to rename automatically
                                $uploader->setFilesDispersion(false);
                                $uploader->save($path, $rename_audio);
                                if($frames_number > 0)
                                {
                                //     $frame_time = $frames_number * $hotspot_ld_image_speed;
                                //     $frame_time = $frame_time + 10;
                                    $frame_time = (+5+($frames_number*$hotspot_ld_image_speed))*2000;
                                }
                                if($frame_time > $audio_time)
                                    $audio_time = $frame_time;
                           }
                        }
                        catch (Exception $e) 
                        {
                            echo 'Error Message:audio: ' . $e->getMessage();
                        }
                        // Setting default values
                        $pinteractivity = '360';
                        if($hotspot_audio_play_type == '' || $hotspot_audio_play_type == NULL)
                            $hotspot_audio_play_type = 'no';
                        // if($hotspot_ld_image_speed == '' || $hotspot_ld_image_speed == NULL)
                        //     $hotspot_ld_image_speed = '0.15';

                        //sql statements
                        //oc_product_interactivity for images/audio

                        $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                        $rows = array(array('product_id'=>$productId,'interactivity_name'=>$name,'interactivity_order'=>$interactivity_order,'Pinteractivity'=>$pinteractivity,'frames'=>$frames_number,'frame'=>'1','rows'=>'0','row'=>'1','frame_change'=>$hotspot_ld_image_speed,'hor_rotation'=>'1','ver_rotation'=>'1','audio_condition'=>$hotspot_audio_play_type,'audio_name'=>$rename_audio,'audio_time'=>$audio_time,'video_url'=>''));

                        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                        $write->insertMultiple($table,$rows);
                    }
                    //When hotspot videos is selected(radio button)
                    if($hotspot_select == 'video')
                    {
                        //video upload
                        $interactivity_name = $this->getRequest()->getPost('hotspot_name_'.$count);
                        // $hotspot_names = $hotspot_names . $this->getRequest()->getPost('hotspot_name_'. $count).",";
                        $video_play_type = $this->getRequest()->getPost('hotspot_video_play_type_'.$count);
                        $video_path = Mage::getBaseDir('media').'/add/interactivity/converted/';
                        if (!file_exists($video_path)) 
                        {
                            mkdir($video_path, 777, true);
                        }
                        try 
                        {   
                            // Video uploading
                            if($_FILES['hotspot_videofile_'.$count]['name'] != NULL)
                            {
                                $fname = $_FILES['hotspot_videofile_'.$count]['name'];
                                $path_parts = pathinfo($fname);
                                $ext = $path_parts['extension'];
                                $video_path = $video_path . $productId .'/video/';
                                //$file_name = $path_parts['filename'];
                                $rename_video = 'Video_'.($interactivity_order-1).'.'.$ext ;
                                $uploader = new Varien_File_Uploader('hotspot_videofile_'.$count);
                                $uploader->setAllowedExtensions(array('mp4','mov'));
                                $uploader->setAllowCreateFolders(true);
                                $uploader->setAllowRenameFiles(false);   //set true to rename automatically
                                $uploader->setFilesDispersion(false);
                                $uploader->save($video_path, $rename_video);

                                //oc_product_interactivity for video
                                $video_url = '../../../media/add/interactivity/converted/'. $productId .'/video/'. $rename_video;
                                // $iframe = '<iframe width="854" height="510" src="'.$video_url.'" style="width:100%;display:none" controls ></video>';
                                //Update oc_product_interactivity
                                $pinteractivity = 'Video';
                                $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                                $rows = array(array('product_id'=>$productId,'interactivity_name'=>$name,'interactivity_order'=>$interactivity_order,'Pinteractivity'=>$pinteractivity,'frames'=>'1','frame'=>'1','rows'=>'0','row'=>'1','hor_rotation'=>'1','ver_rotation'=>'1','audio_condition'=>$video_play_type,'video_url'=>$video_url));

                                $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                                $write->insertMultiple($table,$rows);

                            }
                            else if($hotspot_youtube_video_url != NULL)
                            {
                                //oc_product_interactivity for youtube video

                                $pinteractivity = 'Video';
                                $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                                $rows = array(array('product_id'=>$productId,'interactivity_name'=>$name,'interactivity_order'=>$interactivity_order,'Pinteractivity'=>$pinteractivity,'frames'=>'1','frame'=>'1','rows'=>'0','row'=>'1','hor_rotation'=>'1','ver_rotation'=>'1','audio_condition'=>$video_play_type,'audio_name'=>'','video_url'=>$hotspot_youtube_video_url));

                                $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                                $write->insertMultiple($table,$rows);

                                //$video_url_name = $video_url_name . $hotspot_youtube_video_url;
                                // echo("youtube=".$video_url_name);
                            }

                        }
                        catch (Exception $e) 
                        {
                            echo 'Error Message:video ' . $e->getMessage();
                        }
                    }
                }
            }
        }
            //oc_product_hotspot
            $model = Mage::getModel('catalog/product');
            $_product = $model->load($productId);
            $product_name = $_product->getName(); //product name

            //oc_product_hotspot
            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_hotspot');
            $rows = array('map_code'=>$Anchor_tag,'number_of_hotspot'=>$number_of_hotspot_after_deleting,'name'=>$product_name);
            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
            $write->update($table, $rows,"product_id=".$productId);
        // }
        //echo $hotspot_counter;

        //update hotspot
        for($count = 0; $count < $count_inter; $count++)
        {
            if(array_search($count,$deleted_interactivity) !== FALSE )
            {

                $interactivity_name = $name_interactivity[$count]['interactivity_name'];
                $value = $video_url_db[$count]['video_url'];
                $value = explode("../../../media",$value);
                $value = Mage::getBaseDir('media').$value[1];
                //Delete video
                if(is_writable($value)) 
                    unlink($value);
                //Delete audio
                $value = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId.'/audio/'.$audio_name[$count]['audio_name'];
                if(is_writable($value)) 
                    unlink($value);
                //Delete folder
                $dirname = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId.'/converted/'.$interactivity_name;
                hotspot_delete_directory($dirname);
                //Delete rows in oc_product_interactivity
                $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                $write->delete($table, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);

            }
            else
            {
                //interactivity order
                $interactivity_order = array_search($count,$result_array);
                $interactivity_order++;
                $frames_number = $frames[$count]['frames'];
                $hotspot_youtube_video_url = $this->getRequest()->getPost('hotspot_url_youtube_'. $count);
                $hotspot_select = $this->getRequest()->getPost('hotspot_select_'. $count);
                $name = $this->getRequest()->getPost('hotspot_name_'. $count);
                // $hotspot_names = $hotspot_names . $this->getRequest()->getPost('hotspot_name_'. $count).",";
                $rename_audio = NULL;
                $hotspot_ld_image_speed = $this->getRequest()->getPost('hotspot_ld_image_speed_'.$count);
                if($hotspot_ld_image_speed == '' || $hotspot_ld_image_speed == NULL)
                    $hotspot_ld_image_speed = '0.15';
                // $hotspot_hd_image_speed = $this->getRequest()->getPost('hotspot_hd_image_speed_'.$count);
                $hotspot_audio_play_type = $this->getRequest()->getPost('hotspot_audio_play_type_'.$count);

                // Rename Interactivity name
                if ($name != $name_interactivity[$count]['interactivity_name']) 
                {
                    $old_filename = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId.'/converted/'.$name_interactivity[$count]['interactivity_name'];
                    $new_filename = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId.'/converted/'.$name;

                    //Rename folder
                    rename($old_filename, $new_filename);
                    // Update interactivity_name
                    $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                    $rows = array('interactivity_name'=>$name,'interactivity_order'=>$interactivity_order);
                    $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                    $write->update($table, $rows, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);
                }

                // When hotspot images is selected(radio button)
                if($hotspot_select == 'images')
                {
                    // LD Image Upload
                    $hotspot_sort_order_ld = $this->getRequest()->getPost('hotspot_sort_order_ld_'. $count);
                    $hotspot_sort_order_ld = explode(",",$hotspot_sort_order_ld);  
                    $hotspot_click_ld = $this->getRequest()->getPost('hotspot_no_of_ld_click_'.$count);
                    $deleted_images_ld = $this->getRequest()->getPost('deleted_images_hotspot_ld_' . $count);
                    $deleted_images_ld = explode(",",$deleted_images_ld);
                    // $j = 0;
                    $image_name = 0;
                    if($Pinteractivity[$count]['Pinteractivity'] == 'Video')
                    	$p_number = 0;
                    else
                    	$p_number = $frames[$count]['frames'];
                    // $p_number = $frames[$count]['frames'];
                    // var_dump($hotspot_sort_order_ld);
                    if($_FILES['pictures_hotspot_ld_'. $count.'_0']['name'] != NULL)
                    {
                        for ($i=0,$m=1; $i < $hotspot_click_ld; $i++) 
                        { 
                            //File uploading
                            foreach ($_FILES['pictures_hotspot_ld_'.$count.'_'.$i]['name'] as $key => $image) 
                            {   
                                //for ($p=0; $p < count($hotspot_sort_order_ld) ; $p++) 
                                //{ 
                                    //if($m == $hotspot_sort_order_ld[$p])
                                    //{
                                        Mage::log('looping');
                                        if (empty($image)) 
                                        {
                                            Mage::log('continue');
                                            continue;
                                        }
                                        try 
                                        {
                                            Mage::log('uploading');
                                            $uploader = new Varien_File_Uploader(
                                            array(
                                                'name' => $_FILES['pictures_hotspot_ld_'.$count.'_'.$i]['name'][$key],
                                                'type' => $_FILES['pictures_hotspot_ld_'.$count.'_'.$i]['type'][$key],
                                                'tmp_name' => $_FILES['pictures_hotspot_ld_'.$count.'_'.$i]['tmp_name'][$key],
                                                'error' => $_FILES['pictures_hotspot_ld_'.$count.'_'.$i]['error'][$key],
                                                'size' => $_FILES['pictures_hotspot_ld_'.$count.'_'.$i]['size'][$key]
                                                )
                                            );


                                            // Any extention would work
                                            $uploader->setAllowedExtensions(array('jpg', 'jpeg', 'gif', 'png'));
                                            $uploader->setAllowRenameFiles(false);
                                            $uploader->setFilesDispersion(false);

                                            $path = Mage::getBaseDir('media') . '/add/interactivity/converted/';

                                            $fname = $_FILES['pictures_hotspot_ld_'.$count.'_'.$i]['name'][$key];
                                            $path_parts = pathinfo($fname);
                                            $ext = $path_parts['extension'];
                                            $path = $path . $productId .'/converted/'.$name.'/';
                                            //$file_name = $path_parts['filename'];
                                            //Rename file names
                                            $image_name = $p_number+1;
                                            if($image_name<=9)
                                                $prefix = "00";
                                            else if ($image_name>9 && $image_name<99) 
                                                $prefix = "0";
                                            else if($image_name>99)
                                                $prefix = "";
                                            $rename = $prefix.$image_name.'.jpg';

                                            $img = $uploader->save($path, $rename);

                                            $source_img = $path."/".$rename;
                                            $destination_img = $path."/".$rename;
                                            $size = $_FILES['pictures_hotspot_ld_'.$count.'_'.$i]['size'][$key];
                                                // $quality_image = 500000/$size;   
                                                if($size >= 500000 && $size < 1000000)    
                                                    $quality_image = 80;
                                                if($size >= 1000000 && $size < 2000000)    
                                                    $quality_image = 60; 
                                                 if($size >= 2000000)    
                                                    $quality_image = 40;                              
                                                // Compress image only if image is larger than 500 KB
                                                if($size > 500000)       
                                                $d = compress($source_img, $destination_img,$quality_image);

                                            $p_number++;
                                            Mage::log($img['file']);
                                            // $j+=2;
                                        } 
                                        catch (Exception $e) 
                                        {
                                            echo $e->getMessage();
                                            Mage::log($e->getMessage());
                                        }
                                    //}
                                //}                        
                                $m++;
                            }
                        }
                        if($image_name != 0)
                            $frames_number = $image_name;
                    }

                    //sort array in descending order
                    rsort($deleted_images_ld);    
                    if($hotspot_sort_order_ld[0] != "")
                    {
                        $img_name = 1; 
                        $frame_after_delete = $frames_number;
                        for($x=0;$x < $frames_number;$x++)   //renaming all files
                        {
                            if($img_name<=9)
                                $prefix = "00";
                            else if ($img_name>9 && $img_name<99) 
                                $prefix = "0";
                            else if($img_name>99)
                                $prefix = "";

                            //$name_space = str_replace(' ', '%20',$name);
                            $temp_name = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId .'/converted/'.$name.'/'.$img_name.'.jpg';
                            $old_name = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId .'/converted/'.$name.'/'.$prefix.$img_name.'.jpg';
                            rename($old_name,$temp_name);

                            //Deleting images which it is in deleted_images_ld
                            for($i = 0;$i < count($deleted_images_ld);$i++) 
                            {
                                $image_id = $deleted_images_ld[$i];
                                if($img_name == $image_id)
                                {
                                    //deleting images in array
                                    if(is_writable($temp_name)) 
                                        unlink($temp_name);
                                    $frame_after_delete--;
                                }
                            }
                            $img_name++;
                        }

                        //Renaming files
                        $img_name = 1;
                        for($x=0;$x < $frames_number;$x++)
                        {
                            for ($p=0; $p < count($hotspot_sort_order_ld) ; $p++) 
                            {  
                                //$img_name_sort = $sort_order_ld[$p];
                                if(($p+1)<=9)
                                    $prefix_sort = "00";
                                else if (($p+1)>9 && ($p+1)<99) 
                                    $prefix_sort = "0";
                                else if(($p+1)>99)
                                    $prefix_sort = "";
                                if($img_name == $hotspot_sort_order_ld[$p])
                                {
                                    // $name_space = str_replace(' ', '%20',$name);
                                    $temp_name = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId .'/converted/'.$name.'/'.$img_name.'.jpg';
                                    $new_name = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId .'/converted/'.$name.'/'.$prefix_sort.($p+1).'.jpg';
                                    rename($temp_name,$new_name);
                                }
                            }
                            $img_name++;
                        }
                        $frames_number = $frame_after_delete;
                    }

                    //updating frames
                    if($frames_number != $frames[$count]['frames'])
                    {
                    	$table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                        $rows = array('frames'=>$frames_number);
                        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                        $write->update($table, $rows, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);
                    }

                    // HD Image Upload - hotspot
                    $hotspot_sort_order_hd = $this->getRequest()->getPost('hotspot_sort_order_hd_'. $count);
                    $hotspot_sort_order_hd = explode(",",$hotspot_sort_order_hd);
                    $deleted_images_hd = $this->getRequest()->getPost('deleted_images_hotspot_hd_' . $count);
                    $deleted_images_hd = explode(",",$deleted_images_hd);
                    // var_dump($hotspot_sort_order_hd);
                    $hotspot_click_hd = $this->getRequest()->getPost('hotspot_no_of_hd_click_'. $count);
                    $no_of_hd_images = $this->getRequest()->getPost('max_hd_hotspot_' . $count);
                    $total_no_of_hd_images = $this->getRequest()->getPost('no_of_hd_hotspot_' . $count);

                    //Uploading HD images
                    if($_FILES['pictures_hotspot_hd_'.$count.'_0']['name'] != NULL)
                    {
                        for ($l=0,$n=1; $l < $hotspot_click_hd; $l++) 
                        { 
                            foreach ($_FILES['pictures_hotspot_hd_'.$count.'_'.$l]['name'] as $key => $image) 
                            {   
                                for ($p=0; $p < count($hotspot_sort_order_hd) ; $p++) 
                                { 
                                    if($n == $hotspot_sort_order_hd[$p])
                                    {
                                        $hd_status = '1';
                                        Mage::log('looping');
                                        if (empty($image)) 
                                        {
                                            Mage::log('continue');
                                            continue;
                                        }
                                        try 
                                        {
                                            Mage::log('uploading');
                                            $uploader = new Varien_File_Uploader(
                                            array(
                                                'name' => $_FILES['pictures_hotspot_hd_'.$count.'_'.$l]['name'][$key],
                                                'type' => $_FILES['pictures_hotspot_hd_'.$count.'_'.$l]['type'][$key],
                                                'tmp_name' => $_FILES['pictures_hotspot_hd_'.$count.'_'.$l]['tmp_name'][$key],
                                                'error' => $_FILES['pictures_hotspot_hd_'.$count.'_'.$l]['error'][$key],
                                                'size' => $_FILES['pictures_hotspot_hd_'.$count.'_'.$l]['size'][$key]
                                                )
                                            );
                                            // Any extention would work
                                            $uploader->setAllowedExtensions(array('jpg', 'jpeg', 'gif', 'png'));
                                            $uploader->setAllowRenameFiles(false);
                                            $uploader->setFilesDispersion(false);
                                            $path = Mage::getBaseDir('media') . '/add/interactivity/converted/';

                                            $fname = $_FILES['pictures_hotspot_hd_'.$count.'_'.$l]['name'][$key];
                                            $path_parts = pathinfo($fname);
                                            $ext = $path_parts['extension'];
                                            $path = $path . $productId .'/converted/'.$name.'/HD/';
                                            //Naming files
                                            $image_name = $no_of_hd_images+1;
                                            if($image_name<=9)
                                                $prefix = "00";
                                            else if ($image_name>9 && $image_name<99) 
                                                $prefix = "0";
                                            else if($image_name>99)
                                                $prefix = "";
                                            $rename = $prefix.$image_name.'.jpg';
                                            $img = $uploader->save($path, $rename);

                                            $source_img = $path."/".$rename;
                                            $destination_img = $path."/".$rename;
                                            $size = $_FILES['pictures_hotspot_hd_'.$count.'_'.$i]['size'][$key];
                                                // $quality_image = 500000/$size;   
                                                if($size >= 500000 && $size < 1000000)    
                                                    $quality_image = 80;
                                                if($size >= 1000000 && $size < 2000000)    
                                                    $quality_image = 60; 
                                                 if($size >= 2000000)    
                                                    $quality_image = 40;                              
                                                // Compress image only if image is larger than 500 KB
                                                if($size > 500000)      
                                                $d = compress($source_img, $destination_img,$quality_image);

                                            $no_of_hd_images++;
                                            Mage::log($img['file']);
                                            // $k+=2;
                                        } 
                                        catch (Exception $e) 
                                        {
                                            echo $e->getMessage();
                                            Mage::log($e->getMessage());
                                        }
                                    }
                                }                        
                                $n++;
                            }
                        }
                    }

                    //sort array in descending order
                    rsort($deleted_images_hd);    
                    
                    if($hotspot_sort_order_hd[0] != "")
                    {
                        $img_name = 1; 
                        for($x=0;$x <= $no_of_hd_images;$x++)   //renaming all files with temp name
                        {
                            if($img_name<=9)
                                $prefix = "00";
                            else if ($img_name>9 && $img_name<99) 
                                $prefix = "0";
                            else if($img_name>99)
                                $prefix = "";

                            //$name_space = str_replace(' ', '%20',$name);
                            $temp_name = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId .'/converted/'.$name.'/HD/'.$img_name.'.jpg';
                            $old_name = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId .'/converted/'.$name.'/HD/'.$prefix.$img_name.'.jpg';
                            rename($old_name,$temp_name);

                            for($i = 0;$i < count($deleted_images_hd);$i++) //deleting images
                            {
                                $image_id = $deleted_images_hd[$i];
                                if($img_name == $image_id)
                                {
                                    //deleting image
                                    if(is_writable($temp_name)) 
                                        unlink($temp_name);
                                    // $frame_after_delete--;
                                }
                            }
                            $img_name++;
                        }

                        //Renaming images
                        $img_name = 1;
                        for($x=0;$x <= $no_of_hd_images;$x++)
                        {
                            for ($p=0; $p < count($hotspot_sort_order_hd) ; $p++) 
                            {  
                                //$img_name_sort = $sort_order_ld[$p];
                                if(($p+1)<=9)
                                    $prefix_sort = "00";
                                else if (($p+1)>9 && ($p+1)<99) 
                                    $prefix_sort = "0";
                                else if(($p+1)>99)
                                    $prefix_sort = "";
                                if($img_name == $hotspot_sort_order_hd[$p])
                                {
                                    // $name_space = str_replace(' ', '%20',$name);
                                    $temp_name = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId .'/converted/'.$name.'/HD/'.$img_name.'.jpg';
                                    //$old_name = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId .'/converted/'.$name_space.'/'.$prefix.$img_name.'.jpg';
                                    $new_name = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId .'/converted/'.$name.'/HD/'.$prefix_sort.($p+1).'.jpg';
                                    rename($temp_name,$new_name);
                                }
                            }
                            $img_name++;
                        }
                    }

                    // $frames_number = $image_name;
                    $audio_time = NULL;
                    //Upload Audio
                    $path = Mage::getBaseDir('media').'/add/interactivity/converted/';
                    if (!file_exists($path)) 
                    {
                        mkdir($path, 777, true);
                    }
                    try 
                    {
                        //Audio upload
                        $audio_time = $this->getRequest()->getPost('hotspot_audio_duration_' . $count);  
                        if($_FILES['hotspot_audio_'. $count]['name'] != NULL)
                        {               
                            //$audio_time = $this->getRequest()->getPost('hotspot_audio_duration_' . $count);             
                            $fname = $_FILES['hotspot_audio_'. $count]['name'];
                            $path_parts = pathinfo($fname);
                            $ext = $path_parts['extension'];
                            $path = $path . $productId .'/audio/';
                            //$file_name = $path_parts['filename'];
                            $rename_audio = 'audio_'.($interactivity_order-1).'.'.$ext ;
                            // $audio_name = $audio_name . $rename_audio;
                            $uploader = new Varien_File_Uploader('hotspot_audio_'.$count);
                            $uploader->setAllowedExtensions(array('mp3'));
                            $uploader->setAllowCreateFolders(true);
                            $uploader->setAllowRenameFiles(false);   //set true to rename automatically
                            $uploader->setFilesDispersion(false);
                            $uploader->save($path, $rename_audio);
                            $audio_time = $audio_time*1000;
                            if($frames_number > 0)
                                {
                                //     $frame_time = $frames_number * $hotspot_ld_image_speed;
                                //     $frame_time = $frame_time + 10;
                                    $frame_time = (+5+($frames_number*$hotspot_ld_image_speed))*2000;
                                }
                            if($frame_time > $audio_time)
                                $audio_time = $frame_time;

                            // Update audio_time
                            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                            $rows = array('audio_time'=>$audio_time);
                            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                            $write->update($table, $rows, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);
                        }

                        //Update  hotspot_ld_image_speed
                        if($hotspot_ld_image_speed != $frame_change[$count]['frame_change'])
                        {
                            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                            $rows = array('frame_change'=>$hotspot_ld_image_speed);
                            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                            $write->update($table, $rows, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);
                        }

                        // Delete audio
                        if(($audio_name[$count]['audio_name'] != NULL || $audio_name[$count]['audio_name'] != "") && $audio_time == "" && $rename_audio == NULL)
                        {
                            $temp_name = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId .'/audio/'.$audio_name[$count]['audio_name'];                            
                            if(is_writable($temp_name)) 
                                unlink($temp_name);
                            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                            $rows = array('audio_condition'=>'no','audio_name'=>NULL,'audio_time'=>NULL);
                            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                            $write->update($table, $rows, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);
                        }
                    }
                    catch (Exception $e) 
                    {
                        echo 'Error Message:audio: ' . $e->getMessage();
                    }
                    if($Pinteractivity[$count]['Pinteractivity'] == 'Video')
                    {
                        $value = $video_url_db[$count]['video_url'];
                        $youtube_chk = str_split($value,1);
                        if($youtube_chk[0]['string(1)'] != '<')
                        {
                            $value = explode("../../../media",$value);
                            $value = Mage::getBaseDir('media').$value[1];
                            // echo $value;
                            //Delete video
                            if(is_writable($value)) 
                                unlink($value);
                        }
                        //Update oc_product_interactivity
                        $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                        $rows = array('Pinteractivity'=>'360','video_url'=>'','audio_condition'=>'no');
                        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                        $write->update($table, $rows, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);
                    }
                    // $pinteractivity = '360';
                    //Setting default values
                    if($hotspot_audio_play_type == '' || $hotspot_audio_play_type == NULL)
                        $hotspot_audio_play_type = 'no';
                    


                    //sql statements
                    //oc_product_interactivity for images/audio
                    if($rename_audio != NULL || $rename_audio != "")
                    {
                        $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                        $rows = array('audio_name'=>$rename_audio);
                        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                        $write->update($table, $rows, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);
                    }
                    if($hotspot_audio_play_type != "" && $hotspot_audio_play_type != $hotspot_audio_play_type[$count]['audio_condition'])
                    {
                        $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                        $rows = array('audio_condition'=>$hotspot_audio_play_type);
                        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                        $write->update($table, $rows, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);
                    }
                    // if($audio_time !=)
                }
                //When video is selected (radio button)
                if($hotspot_select == 'video')
                {
                    if($Pinteractivity[$count]['Pinteractivity'] == '360')
                    {
                        //Delete folder
                        $dirname = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId.'/converted/'.$name;
                        hotspot_delete_directory($dirname);
                        $value = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId.'/audio/'.$audio_name[$count]['audio_name'];
                        //Delete Audio
                        if(is_writable($value)) 
                            unlink($value);
                        
                        $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                        $rows = array('Pinteractivity'=>'Video','frames'=>'1','audio_name'=>NULL,'audio_condition'=>'no');
                        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                        $write->update($table, $rows, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);
                    }

                    //video upload
                    $interactivity_name = $this->getRequest()->getPost('hotspot_name_'.$count);
                    // $hotspot_names = $hotspot_names . $this->getRequest()->getPost('hotspot_name_'. $count).",";
                    $video_play_type = $this->getRequest()->getPost('hotspot_video_play_type_'.$count);
                    $video_path = Mage::getBaseDir('media').'/add/interactivity/converted/';
                    if (!file_exists($video_path)) 
                    {
                        mkdir($video_path, 777, true);
                    }
                    try 
                    {
                        if($_FILES['hotspot_videofile_'.$count]['name'] != NULL)
                        {
                            $fname = $_FILES['hotspot_videofile_'.$count]['name'];
                            $path_parts = pathinfo($fname);
                            $ext = $path_parts['extension'];
                            $video_path = $video_path . $productId .'/video/';
                            //$file_name = $path_parts['filename'];
                            $rename_video = 'Video_'.($interactivity_order-1).'.'.$ext ;
                            $uploader = new Varien_File_Uploader('hotspot_videofile_'.$count);
                            $uploader->setAllowedExtensions(array('mp4','mov'));
                            $uploader->setAllowCreateFolders(true);
                            $uploader->setAllowRenameFiles(false);   //set true to rename automatically
                            $uploader->setFilesDispersion(false);
                            $uploader->save($video_path, $rename_video);

                            //oc_product_interactivity for video
                            $video_url_edit = '../../../media/add/interactivity/converted/'. $productId .'/video/'. $rename_video;
                            // $iframe = '<iframe width="854" height="510" src="'.$video_url.'" style="width:100%;display:none" controls ></video>';
                            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                            $rows = array('video_url'=>$video_url_edit);
                            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                            $write->update($table, $rows, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);

                        }
                        else if($hotspot_youtube_video_url != NULL)
                        {
                            //oc_product_interactivity for youtube video
                            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                            $rows = array('video_url'=>$hotspot_youtube_video_url);
                            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                            $write->update($table, $rows, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);
                            
                        }
                        // Delete video
                        $check_video = $this->getRequest()->getPost('hotspot_video_present_'.$count);
                        if(($video_url_db[$count]['video_url'] != NULL || $video_url_db[$count]['video_url'] != "") && $check_video == "0")
                        {
                            $temp_name = explode("media",$video_url_db[$count]['video_url']);
                            $temp_name = Mage::getBaseDir('media').$temp_name[1];                            
                            if(is_writable($temp_name)) 
                                unlink($temp_name);
                            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                            $rows = array('video_url'=>" ");
                            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                            $write->update($table, $rows, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);
                        }
                        if($video_play_type == '' || $video_play_type == NULL)
                            $video_play_type = 'no';
                        if($video_play_type != ""  && $video_play_type != $audio_condition[$count]['audio_condition'])
                        {
                            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                            $rows = array('audio_condition'=>$video_play_type);
                            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                            $write->update($table, $rows, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);
                        }
                    }
                    catch (Exception $e) 
                    {
                        echo 'Error Message:video ' . $e->getMessage();
                    }
                }
            }
        }

        //Redirect to confirmation page
        $url = Mage::getUrl('save/admin/page', array('_secure' => true, 'id'=>$productId));
        Mage::app()->getFrontController()->getResponse()->setRedirect($url);
	}

	public function updateInteractivityAction()
    {
        // Function to compress image
        function compress($source, $destination, $quality) 
        {

            $info = getimagesize($source);

            if ($info['mime'] == 'image/jpeg') 
                $image = imagecreatefromjpeg($source);

            elseif ($info['mime'] == 'image/gif') 
                $image = imagecreatefromgif($source);

            elseif ($info['mime'] == 'image/png') 
                $image = imagecreatefrompng($source);

            imagejpeg($image, $destination, $quality);

            return $destination;
        }

        function delete_directory($dirname) 
        {
            if (is_dir($dirname))
            {
                $dir_handle = opendir($dirname);
            }
            if (!$dir_handle)
            {
                return false;
            }

            while($file = readdir($dir_handle)) 
            {
                if ($file != "." && $file != "..") 
                {
                    if (!is_dir($dirname."/".$file))
                        unlink($dirname."/".$file);
                    else
                        delete_directory($dirname.'/'.$file);
                }
            }

            closedir($dir_handle);
            rmdir($dirname);
            return true;
        }

    	$product = $this->getRequest()->getParam('id');

        $table = Mage::getSingleton('core/resource')->getTableName('finware_index');
        $rows = array('active'=>'Yes');
        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
        $write->update($table, $rows,"product_id=".$product);

        $table = Mage::getSingleton('core/resource')->getTableName('oc_product_customize');
        $rows = array('hotspot_function'=>'0');
        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
        $write->update($table, $rows,"product_id=".$product);

        $connection = Mage::getSingleton('core/resource')->getConnection('oc_product_hotspot');
        $result = $connection->fetchAll("SELECT count(*) FROM oc_product_hotspot where product_id = $product");
        $hotspot_check = $result[0]['count(*)'];

        if($hotspot_check != 0)
        {
            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
            $write->delete($table, "product_id=".$product);

            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_hotspot');
            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
            $write->delete($table, "product_id=".$product);

            $directory = Mage::getBaseDir('media').'/add/interactivity/converted/'.$product;
            delete_directory($directory);

            $audio_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/audio';
            $background_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/background';
            $original_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/original';
            $transitions_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/transitions';
            $video_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/video';
            $converted_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/converted';

            $ioFile = new Varien_Io_File();
            $ioFile->checkAndCreateFolder($converted_folder);
            $ioFile->checkAndCreateFolder($audio_folder);
            $ioFile->checkAndCreateFolder($background_folder);
            $ioFile->checkAndCreateFolder($original_folder);
            $ioFile->checkAndCreateFolder($transitions_folder);
            $ioFile->checkAndCreateFolder($video_folder);
        }

        //oc_product_customize 
        $connection = Mage::getSingleton('core/resource')->getConnection('oc_product_customize');
        $result = $connection->fetchAll("SELECT button_color FROM oc_product_customize where product_id = $product");
        $button_color = $result[0]['button_color'];
        
        $result = $connection->fetchAll("SELECT text_color FROM oc_product_customize where product_id = $product");
        $text_color = $result[0]['text_color'];  
        
        $result = $connection->fetchAll("SELECT band_color FROM oc_product_customize where product_id = $product");
        $band_color = $result[0]['band_color'];

        $result = $connection->fetchAll("SELECT zoom_button FROM oc_product_customize where product_id = $product");
        $zoom_button = $result[0]['zoom_button'];

        $result = $connection->fetchAll("SELECT id FROM oc_product_customize where product_id = $product");
        $customize_id = $result[0]['id'];

        //interactivity
        $connection2 = Mage::getSingleton('core/resource')->getConnection('oc_product_interactivity');
        $result = $connection2->fetchAll("SELECT count(*) FROM oc_product_interactivity where product_id = $product ORDER BY interactivity_order");
        $count_inter = $result[0]['count(*)'];

        $result = $connection2->fetchAll("SELECT interactivity_name FROM oc_product_interactivity where product_id = $product ORDER BY interactivity_order");
        $name_interactivity = $result;

        $result = $connection2->fetchAll("SELECT interactivity_id FROM oc_product_interactivity where product_id = $product ORDER BY interactivity_order");
        $interactivity_id = $result;

        $result = $connection2->fetchAll("SELECT frame_change FROM oc_product_interactivity where product_id = $product ORDER BY interactivity_order");
        $frame_change = $result;

        $result = $connection2->fetchAll("SELECT frames FROM oc_product_interactivity where product_id = $product ORDER BY interactivity_order");
        $frames = $result;

        $result = $connection2->fetchAll("SELECT audio_condition FROM oc_product_interactivity where product_id = $product ORDER BY interactivity_order");
        $audio_condition = $result;

        $result = $connection2->fetchAll("SELECT audio_name FROM oc_product_interactivity where product_id = $product ORDER BY interactivity_order");
        $audio_name = $result;

        $result = $connection2->fetchAll("SELECT video_url FROM oc_product_interactivity where product_id = $product ORDER BY interactivity_order");
        $video_url = $result;

        $result = $connection2->fetchAll("SELECT Pinteractivity FROM oc_product_interactivity where product_id = $product ORDER BY interactivity_order");
        $Pinteractivity = $result;

        $uri = $_SERVER['REQUEST_URI'];
        //echo $uri; // Outputs: URI
        $uri = explode('edit/admin/updateInteractivity', $uri);
        $page_url = $protocol . $_SERVER['HTTP_HOST'] . $uri[0];

        $hd_status = '0';
        $productId = $product;
        $interactivity_counter_new = $interactivity_counter = $this->getRequest()->getPost('interactivity_counter');
        $text_color_edit = $this->getRequest()->getPost('text_color_interactivity');
        $button_color_edit = $this->getRequest()->getPost('button_color_interactivity');
        $band_color_edit = $this->getRequest()->getPost('band_color_interactivity');
        $deleted_interactivity = $this->getRequest()->getPost('deleted_interactivity');
        if($deleted_interactivity != "")
            $deleted_interactivity = explode(",",$deleted_interactivity);
        else
            $deleted_interactivity = array();
        sort($deleted_interactivity);
        $array_of_interactivity = $this->getRequest()->getPost('array_of_interactivity');
        $array_of_interactivity = explode(",",$array_of_interactivity);
        $index = 0;
        for ($i=0; $i < count($array_of_interactivity) ; $i++) 
        {
            $value = $array_of_interactivity[$i];
            if(!(array_search($value,$deleted_interactivity) !== FALSE ))
            {
                $result_array[$index] = $value;
                $index++;
            }
        }
        // $interactivity_order = -1;

        if($interactivity_counter < $count_inter)
            $interactivity_counter = $count_inter;

        //oc_product_customize
        if($text_color_edit != $text_color || $button_color_edit != $button_color || $band_color_edit != $band_color)
        {
        	if($text_color_edit != $text_color && $text_color_edit != "")
        	{
        		$table = Mage::getSingleton('core/resource')->getTableName('oc_product_customize');
	            $rows = array('text_color'=>$text_color_edit);
	            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
	            $write->update($table, $rows,"product_id=".$productId);
        	}
        	if($button_color_edit != $button_color && $button_color_edit != "")
        	{
	            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_customize');
	            $rows = array('button_color'=>$button_color_edit);
	            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
	            $write->update($table, $rows,"product_id=".$productId);
        	}
        	if($band_color_edit != $band_color && $band_color_edit != "")
        	{
	            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_customize');
	            $rows = array('band_color'=>$band_color_edit);
	            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
	            $write->update($table, $rows,"product_id=".$productId);
        	}
        }
   		// Updating Zoom button details
        $zoom_button_type = $this->getRequest()->getPost('zoom_button_type');
        if($zoom_button_type == '' || $zoom_button_type == NULL)
            $zoom_button_type = '0';
        if($zoom_button_type != $zoom_button)
        {
            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_customize');
            $rows = array('zoom_button'=>$zoom_button_type);
            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
            $write->update($table, $rows, "product_id=".$productId);
        }


        //new interactivity
        if($interactivity_counter_new > $count_inter)
        {
            for($count = $count_inter; $count < $interactivity_counter_new; $count++)
            {
                if(!(array_search($count,$deleted_interactivity)!== FALSE ))
                {
                    // LD Image Upload
                    $interactivity_order = array_search($count,$result_array);
                    $interactivity_order++;
                    $rename_audio = NULL;
                    $youtube_video_url = $this->getRequest()->getPost('url_youtube_' . $count);
                    $interactivity_select = $this->getRequest()->getPost('interactivity_select_'.$count);
                    $interactivity_name = $this->getRequest()->getPost('interactivity_name_'.$count);
                    $ld_image_speed = $this->getRequest()->getPost('ld_image_speed_'.$count);
                    // $hd_image_speed = $this->getRequest()->getPost('hd_image_speed_'.$count);
                    $audio_play_type = $this->getRequest()->getPost('audio_play_type_'.$count);


                    if($interactivity_select == 'images')
                    {
                        $sort_order_ld = $this->getRequest()->getPost('sort_order_ld_' . $count);  
                        $sort_order_ld = explode(",",$sort_order_ld); 
                        $click_ld = $this->getRequest()->getPost('no_of_ld_click_'.$count);

                        for ($i=0,$m=1; $i < $click_ld; $i++) 
                        { 
                            foreach ($_FILES['pictures_ld_'.$count.'_'.$i]['name'] as $key => $image) 
                            {   
                                for ($p=0; $p < count($sort_order_ld) ; $p++) 
                                { 
                                    if($m == $sort_order_ld[$p])
                                    {
                                        Mage::log('looping');
                                        if (empty($image)) 
                                        {
                                            Mage::log('continue');
                                            continue;
                                        }
                                        try 
                                        {
                                            Mage::log('uploading');
                                            $uploader = new Varien_File_Uploader(
                                            array(
                                                    'name' => $_FILES['pictures_ld_'.$count.'_'.$i]['name'][$key],
                                                    'type' => $_FILES['pictures_ld_'.$count.'_'.$i]['type'][$key],
                                                    'tmp_name' => $_FILES['pictures_ld_'.$count.'_'.$i]['tmp_name'][$key],
                                                    'error' => $_FILES['pictures_ld_'.$count.'_'.$i]['error'][$key],
                                                    'size' => $_FILES['pictures_ld_'.$count.'_'.$i]['size'][$key]
                                                ));

                                            // Any extention would work
                                            $uploader->setAllowedExtensions(array('jpg', 'jpeg', 'gif', 'png'));
                                            $uploader->setAllowRenameFiles(false);
                                            $uploader->setFilesDispersion(false);

                                            $path = Mage::getBaseDir('media') . '/add/interactivity/converted/';
                                            $fname = $_FILES['pictures_ld_'.$count.'_'.$i]['name'][$key];
                                            $path_parts = pathinfo($fname);
                                            $ext = $path_parts['extension'];
                                            $path = $path . $productId .'/converted/'.$interactivity_name.'/';

                                            $image_name = $p+1;
                                            if($image_name<=9)
                                                $prefix = "00";
                                            else if ($image_name>9 && $image_name<99) 
                                                $prefix = "0";
                                            else if($image_name>99)
                                                $prefix = "";
                                            $rename = $prefix.$image_name.'.jpg' ;
                                            $img = $uploader->save($path, $rename);

                                            $source_img = $path."/".$rename;
                                            $destination_img = $path."/".$rename;
                                            $size = $_FILES['pictures_ld_'.$count.'_'.$i]['size'][$key];
                                            // $quality_image = 500000/$size;   
                                            if($size >= 500000 && $size < 1000000)    
                                                $quality_image = 80;
                                            if($size >= 1000000 && $size < 2000000)    
                                                $quality_image = 60; 
                                            if($size >= 2000000)    
                                                $quality_image = 40;                              
                                            // Compress image only if image is larger than 500 KB
                                            if($size > 500000)    
                                                $d = compress($source_img, $destination_img, $quality_image);
                                            Mage::log($img['file']);
                                        } 
                                        catch (Exception $e) 
                                        {
                                            echo $e->getMessage();
                                            Mage::log($e->getMessage());
                                        }
                                    }
                                }                        
                                $m++;
                            }
                        }
                        $frames_number = $image_name;
                        // HD Image Upload
                        $sort_order_hd = $this->getRequest()->getPost('sort_order_hd_' . $count);
                        $sort_order_hd = explode(",",$sort_order_hd);  
                          
                        $click_hd = $this->getRequest()->getPost('no_of_hd_click_' . $count);
                        //echo "click_hd=";
                        //echo $click_hd;
                        for ($l=0,$n=1; $l < $click_hd; $l++) 
                        { 
                            foreach ($_FILES['pictures_hd_'.$count.'_'.$l]['name'] as $key => $image) 
                            {   
                                for ($p=0; $p < count($sort_order_hd) ; $p++) 
                                { 
                                    if($n == $sort_order_hd[$p])
                                    {
                                        $hd_status = '1';
                                        Mage::log('looping');
                                        if (empty($image)) 
                                        {
                                            Mage::log('continue');
                                            continue;
                                        }
                                        try 
                                        {
                                            Mage::log('uploading');
                                            $uploader = new Varien_File_Uploader(
                                            array(
                                                'name' => $_FILES['pictures_hd_'.$count.'_'.$l]['name'][$key],
                                                'type' => $_FILES['pictures_hd_'.$count.'_'.$l]['type'][$key],
                                                'tmp_name' => $_FILES['pictures_hd_'.$count.'_'.$l]['tmp_name'][$key],
                                                'error' => $_FILES['pictures_hd_'.$count.'_'.$l]['error'][$key],
                                                'size' => $_FILES['pictures_hd_'.$count.'_'.$l]['size'][$key]
                                                )
                                            );
                                            // Any extention would work
                                            $uploader->setAllowedExtensions(array('jpg', 'jpeg', 'gif', 'png'));
                                            $uploader->setAllowRenameFiles(false);
                                            $uploader->setFilesDispersion(false);
                                            $path = Mage::getBaseDir('media') . '/add/interactivity/converted/';

                                            $fname = $_FILES['pictures_hd_'.$count.'_'.$l]['name'][$key];
                                            $path_parts = pathinfo($fname);
                                            $ext = $path_parts['extension'];
                                            $path = $path . $productId .'/converted/'.$interactivity_name.'/HD/';
                                            $image_name = $p+1;
                                            if($image_name<=9)
                                                $prefix = "00";
                                            else if ($image_name>9 && $image_name<99) 
                                                $prefix = "0";
                                            else if($image_name>99)
                                                $prefix = "";
                                            $rename = $prefix.$image_name.'.jpg' ;
                                            $img = $uploader->save($path, $rename);

                                            $source_img = $path."/".$rename;
                                            $destination_img = $path."/".$rename;
                                            $size = $_FILES['pictures_hd_'.$count.'_'.$i]['size'][$key];
                                            // $quality_image = 500000/$size;   
                                            if($size >= 500000 && $size < 1000000)    
                                                $quality_image = 80;
                                            if($size >= 1000000 && $size < 2000000)    
                                                $quality_image = 60; 
                                            if($size >= 2000000)    
                                                $quality_image = 40;                              
                                            // Compress image only if image is larger than 500 KB
                                            if($size > 500000)    
                                                $d = compress($source_img, $destination_img, $quality_image);

                                            Mage::log($img['file']);
                                                
                                        } 
                                        catch (Exception $e) 
                                        {
                                            echo $e->getMessage();
                                            Mage::log($e->getMessage());
                                        }
                                    }
                                }                        
                                $n++;
                            }
                        }

                        //Upload Audio
                        $path = Mage::getBaseDir('media').'/add/interactivity/converted/';
                        if (!file_exists($path)) 
                        {
                            mkdir($path, 777, true);
                        }
                        try 
                        {
                            if($_FILES['audio_' . $count]['name'] != NULL)
                            {
                                $fname = $_FILES['audio_' . $count]['name'];
                                $path_parts = pathinfo($fname);
                                $ext = $path_parts['extension'];
                                $path = $path . $productId .'/audio/';
                                //$file_name = $path_parts['filename'];
                                $rename_audio ='audio_'.($interactivity_order-1).'.'.$ext ;
                                $uploader = new Varien_File_Uploader('audio_' . $count);
                                $uploader->setAllowedExtensions(array('mp3'));
                                $uploader->setAllowCreateFolders(true);
                                $uploader->setAllowRenameFiles(false);   //set true to rename automatically
                                $uploader->setFilesDispersion(false);
                                $uploader->save($path, $rename_audio);
                           }
                        }
                        catch (Exception $e) 
                        {
                            echo 'Error Message: ' . $e->getMessage();
                        }
                        //sql statements
                        //oc_product_interactivity for images/audio

                        $pinteractivity = '360';
                        if($audio_play_type == '' || $audio_play_type == NULL)
                            $audio_play_type = 'no';
                        if($ld_image_speed == '' || $ld_image_speed == NULL)
                        $ld_image_speed = '0.15';
                        $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                        $rows = array(array('product_id'=>$productId,'interactivity_name'=>$interactivity_name,'interactivity_order'=>$interactivity_order,'Pinteractivity'=>$pinteractivity,'frames'=>$frames_number,'frame'=>'1','rows'=>'0','row'=>'1','frame_change'=>$ld_image_speed,'hor_rotation'=>'1','ver_rotation'=>'1','audio_condition'=>$audio_play_type,'audio_name'=>$rename_audio,'video_url'=>' '));
                        var_dump($rows);
                        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                        $write->insertMultiple($table,$rows);
                    }
                    if($interactivity_select == 'video')
                    {
                        //video upload
                        $interactivity_name = $this->getRequest()->getPost('interactivity_name_'.$count);
                        $video_play_type = $this->getRequest()->getPost('video_play_type_'.$count);
                        $video_path = Mage::getBaseDir('media').'/add/interactivity/converted/';
                        if (!file_exists($video_path)) 
                        {
                            mkdir($video_path, 777, true);
                        }
                        try 
                        {
                            if($_FILES['videofile_'.$count]['name'] != NULL)
                            {
                                $fname = $_FILES['videofile_'.$count]['name'];
                                $path_parts = pathinfo($fname);
                                $ext = $path_parts['extension'];
                                $video_path = $video_path . $productId .'/video/';
                                $file_name = $path_parts['filename'];
                                $rename_video = 'video_'.($interactivity_order-1).'.'.$ext ;
                                $uploader = new Varien_File_Uploader('videofile_'.$count);
                                $uploader->setAllowedExtensions(array('mp4','mov'));
                                $uploader->setAllowCreateFolders(true);
                                $uploader->setAllowRenameFiles(false);   //set true to rename automatically
                                $uploader->setFilesDispersion(false);
                                $uploader->save($video_path, $rename_video);

                                //oc_product_interactivity for video
                                $video_url_new = '../../../media/add/interactivity/converted/'. $productId .'/video/'. $rename_video;
                                // $iframe = '<iframe width="854" height="510" src="'.$video_url.'" style="width:100%;display:none" controls ></video>';
                                if($video_play_type == '' || $video_play_type == NULL)
                                    $video_play_type = 'no';
                                $pinteractivity = 'Video';
                                $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                                $rows = array(array('product_id'=>$productId,'interactivity_name'=>$interactivity_name,'interactivity_order'=>$interactivity_order,'Pinteractivity'=>$pinteractivity,'frames'=>'1','frame'=>'1','rows'=>'0','row'=>'1','hor_rotation'=>'1','ver_rotation'=>'1','audio_condition'=>$video_play_type,'video_url'=>$video_url_new));

                                $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                                $write->insertMultiple($table,$rows);

                            }
                            else
                            {
                                //oc_product_interactivity for youtube video
                                //$iframe = '<iframe width="854" height="510" src="'.$youtube_video_url.'" frameborder="0" allowfullscreen></iframe>';
                                if($video_play_type == '' || $video_play_type == NULL)
                                    $video_play_type = 'no';
                                $pinteractivity = 'Video';
                                $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                                $rows = array(array('product_id'=>$productId,'interactivity_name'=>$interactivity_name,'interactivity_order'=>$interactivity_order,'Pinteractivity'=>$pinteractivity,'frames'=>'1','frame'=>'1','rows'=>'0','row'=>'1','hor_rotation'=>'1','ver_rotation'=>'1','audio_condition'=>$video_play_type,'video_url'=>$youtube_video_url));

                                $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                                $write->insertMultiple($table,$rows);
                            }
                        }
                        catch (Exception $e) 
                        {
                            echo 'Error Message: ' . $e->getMessage();
                        }
                    }
                }
            }
        }

        //update interactivity
        for($count = 0; $count < $interactivity_counter; $count++)
        {
            if(array_search($count,$deleted_interactivity) !== FALSE )
            {

                $interactivity_name = $name_interactivity[$count]['interactivity_name'];
                $value = $video_url[$count]['video_url'];
                $value = explode("../../../media",$value);
                $value = Mage::getBaseDir('media').$value[1];
                if(is_writable($value)) 
                    unlink($value);
                $value = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId.'/audio/'.$audio_name[$count]['audio_name'];
                if(is_writable($value)) 
                    unlink($value);
                $dirname = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId.'/converted/'.$interactivity_name;
                delete_directory($dirname);
                $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                $write->delete($table, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);

            }
            else
            {
                // LD Image Upload
                $interactivity_order = array_search($count,$result_array);
                $interactivity_order++;
                $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                $rows = array('interactivity_order'=>$interactivity_order);
                $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                $write->update($table, $rows, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);
                $rename_audio = NULL;
                $frames_number = $frames[$count]['frames'];
                $youtube_video_url = $this->getRequest()->getPost('url_youtube_' . $count);
                $interactivity_select = $this->getRequest()->getPost('interactivity_select_'.$count);
                $interactivity_name = $this->getRequest()->getPost('interactivity_name_'.$count);
                $ld_image_speed = $this->getRequest()->getPost('ld_image_speed_'.$count);
                // $hd_image_speed = $this->getRequest()->getPost('hd_image_speed_'.$count);
                $audio_play_type = $this->getRequest()->getPost('audio_play_type_'.$count);

                if ($interactivity_name != $name_interactivity[$count]['interactivity_name'] && $interactivity_name != "") 
                {
                    $old_filename = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId.'/converted/'.$name_interactivity[$count]['interactivity_name'];
                    $new_filename = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId.'/converted/'.$interactivity_name;

                    rename($old_filename, $new_filename);
                    $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                    $rows = array('interactivity_name'=>$interactivity_name);
                    $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                    $write->update($table, $rows, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);
                }

                if($interactivity_select == 'images')
                {
                    //Zoom button details
                    // $zoom_button_type = $this->getRequest()->getPost('zoom_button_type_'.$count);
                    $sort_order_ld = $this->getRequest()->getPost('sort_order_ld_' . $count);
                    //$sort_order_ld = str_split($sort_order_ld);  
                    $sort_order_ld = explode(",",$sort_order_ld);
                    $deleted_images_ld = $this->getRequest()->getPost('deleted_images_ld_' . $count);
                    $deleted_images_ld = explode(",",$deleted_images_ld);
                    // var_dump($deleted_images_ld);
                    //echo "count=".$count;  
                    $click_ld = $this->getRequest()->getPost('no_of_ld_click_'.$count);
                    if($Pinteractivity[$count]['Pinteractivity'] == 'Video')
                    	$p_number = 0;
                    else
                    	$p_number = $frames[$count]['frames'];
                    $image_name = 0;
                    for ($i=0,$m=1; $i < $click_ld; $i++) 
                    { 
                        foreach ($_FILES['pictures_ld_'.$count.'_'.$i]['name'] as $key => $image) 
                        {   
                            //for ($p=0; $p < count($sort_order_ld) ; $p++) 
                            //{ 
                            	// echo("p=".$p);
                                //if($m == $sort_order_ld[$p])
                                //{
                                    //echo "m=".$m;
                                    Mage::log('looping');
                                    if (empty($image)) 
                                    {
                                        Mage::log('continue');
                                        continue;
                                    }
                                    try 
                                    { 
                                        Mage::log('uploading');
                                        $uploader = new Varien_File_Uploader(
                                        array(
                                                'name' => $_FILES['pictures_ld_'.$count.'_'.$i]['name'][$key],
                                                'type' => $_FILES['pictures_ld_'.$count.'_'.$i]['type'][$key],
                                                'tmp_name' => $_FILES['pictures_ld_'.$count.'_'.$i]['tmp_name'][$key],
                                                'error' => $_FILES['pictures_ld_'.$count.'_'.$i]['error'][$key],
                                                'size' => $_FILES['pictures_ld_'.$count.'_'.$i]['size'][$key]
                                            ));

                                        // Any extention would work
                                        $uploader->setAllowedExtensions(array('jpg', 'jpeg', 'gif', 'png'));
                                        $uploader->setAllowRenameFiles(false);
                                        $uploader->setFilesDispersion(false);

                                        $path = Mage::getBaseDir('media') . '/add/interactivity/converted/';
                                        $fname = $_FILES['pictures_ld_'.$count.'_'.$i]['name'][$key];
                                        $path_parts = pathinfo($fname);
                                        $ext = $path_parts['extension'];
                                        $path = $path . $productId .'/converted/'.$interactivity_name.'/';
                                        $image_name = $p_number+1;
                                        if($image_name<=9)
                                            $prefix = "00";
                                        else if ($image_name>9 && $image_name<99) 
                                            $prefix = "0";
                                        else if($image_name>99)
                                            $prefix = "";
                                        $rename = $prefix.$image_name.'.jpg' ;
                                        $img = $uploader->save($path, $rename);

                                        $source_img = $path."/".$rename;
                                        $destination_img = $path."/".$rename;
                                        $size = $_FILES['pictures_ld_'.$count.'_'.$i]['size'][$key];
                                        // $quality_image = 500000/$size;   
                                        if($size >= 500000 && $size < 1000000)    
                                            $quality_image = 80;
                                        if($size >= 1000000 && $size < 2000000)    
                                            $quality_image = 60; 
                                        if($size >= 2000000)    
                                            $quality_image = 40;                              
                                        // Compress image only if image is larger than 500 KB
                                        if($size > 500000)   
                                            $d = compress($source_img, $destination_img, $quality_image);

                                        $p_number++;
                                        Mage::log($img['file']);
                                    } 
                                    catch (Exception $e) 
                                    {
                                        echo $e->getMessage();
                                        Mage::log($e->getMessage());
                                    }
                                //}
                            //}                        
                            $m++;
                        }
                    }
                    if($image_name != 0)
                        $frames_number = $image_name;

                    //Delete images in ld
                    rsort($deleted_images_ld);    //sort array in descending order
                   
                    if($sort_order_ld[0] != "")
                    {
                        $img_name = 1; 
                        $frame_after_delete = $frames_number;
                        for($x=0;$x < $frames_number;$x++)   //renaming all files
                        {
                            if($img_name<=9)
                                $prefix = "00";
                            else if ($img_name>9 && $img_name<99) 
                                $prefix = "0";
                            else if($img_name>99)
                                $prefix = "";

                            // $name_space = str_replace(' ', '%20',$interactivity_name);
                            $temp_name = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId .'/converted/'.$interactivity_name.'/'.$img_name.'.jpg';
                            $old_name = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId .'/converted/'.$interactivity_name.'/'.$prefix.$img_name.'.jpg';
                            rename($old_name,$temp_name);

                            for($i = 0;$i < count($deleted_images_ld);$i++) //deleting imagesinteractivity_name
                            {
                                $image_id = $deleted_images_ld[$i];
                                if($img_name == $image_id)
                                {
                                    //deleting image
                                    if(is_writable($temp_name)) 
                                        unlink($temp_name);
                                    $frame_after_delete--;
                                }
                            }
                            $img_name++;
                        }

                        $img_name = 1;
                        for($x=0;$x < $frames_number;$x++)
                        {
                            for ($p=0; $p < count($sort_order_ld) ; $p++) 
                            {  
                                //$img_name_sort = $sort_order_ld[$p];
                                if(($p+1)<=9)
                                    $prefix_sort = "00";
                                else if (($p+1)>9 && ($p+1)<99) 
                                    $prefix_sort = "0";
                                else if(($p+1)>99)
                                    $prefix_sort = "";
                                if($img_name == $sort_order_ld[$p])
                                {
                                    // $name_space = str_replace(' ', '%20',$interactivity_name);
                                    $temp_name = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId .'/converted/'.$interactivity_name.'/'.$img_name.'.jpg';
                                    //$old_name = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId .'/converted/'.$name_space.'/'.$prefix.$img_name.'.jpg';
                                    $new_name = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId .'/converted/'.$interactivity_name.'/'.$prefix_sort.($p+1).'.jpg';
                                    rename($temp_name,$new_name);
                                }
                            }
                            $img_name++;
                        }
                        $frames_number = $frame_after_delete; 
                    }

                    //updating frames
                    if($frames_number != $frames[$count]['frames'])
                    {
                    	$table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                        $rows = array('frames'=>$frames_number);
                        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                        $write->update($table, $rows, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);
                    }

                    
                    // HD Image Upload
                    $sort_order_hd = $this->getRequest()->getPost('sort_order_hd_' . $count);
                    $sort_order_hd = explode(",",$sort_order_hd);  
                    $click_hd = $this->getRequest()->getPost('no_of_hd_click_' . $count);
                    $no_of_hd_images = $this->getRequest()->getPost('max_hd_' . $count);
                    $total_no_of_hd_images = $this->getRequest()->getPost('no_of_hd_' . $count);
                    $deleted_images_hd = $this->getRequest()->getPost('deleted_images_hd_' . $count);
                    $deleted_images_hd = explode(",",$deleted_images_hd);

                    for ($l=0,$n=1; $l < $click_hd; $l++) 
                    { 
                        foreach ($_FILES['pictures_hd_'.$count.'_'.$l]['name'] as $key => $image) 
                        {   
                            // for ($p=0; $p < count($sort_order_hd) ; $p++) 
                            // { 
                                // if($n == $sort_order_hd[$p])
                                // {
                                    $hd_status = '1';
                                    Mage::log('looping');
                                    if (empty($image)) 
                                    {
                                        Mage::log('continue');
                                        continue;
                                    }
                                    try 
                                    {
                                        Mage::log('uploading');
                                        $uploader = new Varien_File_Uploader(
                                        array(
                                            'name' => $_FILES['pictures_hd_'.$count.'_'.$l]['name'][$key],
                                            'type' => $_FILES['pictures_hd_'.$count.'_'.$l]['type'][$key],
                                            'tmp_name' => $_FILES['pictures_hd_'.$count.'_'.$l]['tmp_name'][$key],
                                            'error' => $_FILES['pictures_hd_'.$count.'_'.$l]['error'][$key],
                                            'size' => $_FILES['pictures_hd_'.$count.'_'.$l]['size'][$key]
                                            )
                                        );
                                        // Any extention would work
                                        $uploader->setAllowedExtensions(array('jpg', 'jpeg', 'gif', 'png'));
                                        $uploader->setAllowRenameFiles(false);
                                        $uploader->setFilesDispersion(false);
                                        $path = Mage::getBaseDir('media') . '/add/interactivity/converted/';

                                        $fname = $_FILES['pictures_hd_'.$count.'_'.$l]['name'][$key];
                                        $path_parts = pathinfo($fname);
                                        $ext = $path_parts['extension'];
                                        $path = $path . $productId .'/converted/'.$interactivity_name.'/HD/';
                                        $image_name = $no_of_hd_images+1;

                                        if($image_name<=9)
                                            $prefix = "00";
                                        else if ($image_name>9 && $image_name<99) 
                                            $prefix = "0";
                                        else if($image_name>99)
                                            $prefix = "";
                                        $rename = $prefix.$image_name.'.jpg' ;
                                        $img = $uploader->save($path, $rename);

                                        $source_img = $path."/".$rename;
                                        $destination_img = $path."/".$rename;
                                        $size = $_FILES['pictures_hd_'.$count.'_'.$i]['size'][$key];
                                        // $quality_image = 500000/$size;   
                                        if($size >= 500000 && $size < 1000000)    
                                            $quality_image = 80;
                                        if($size >= 1000000 && $size < 2000000)    
                                            $quality_image = 60; 
                                        if($size >= 2000000)    
                                            $quality_image = 40;                              
                                        // Compress image only if image is larger than 500 KB
                                        if($size > 500000)   
                                            $d = compress($source_img, $destination_img, $quality_image);

                                        $no_of_hd_images++;
                                        Mage::log($img['file']);
                                            
                                    } 
                                    catch (Exception $e) 
                                    {
                                        echo $e->getMessage();
                                        Mage::log($e->getMessage());
                                    }
                                // }
                            // }                        
                            $n++;
                        }
                    }

    				//Delete images in hd
                    rsort($deleted_images_hd);    //sort array in descending order
                    
                    if($sort_order_hd[0] != "")
                    {
                        $img_name = 1; 
                        // $max_hd_after_delete = $total_no_of_hd_images;
                        for($x=0;$x <= $no_of_hd_images;$x++)   //renaming all files
                        {
                            if($img_name<=9)
                               $prefix = "00";
                            else if ($img_name>9 && $img_name<99) 
                                $prefix = "0";
                            else if($img_name>99)
                                $prefix = "";

                            // $name_space = str_replace(' ', '%20',$interactivity_name);
                            $temp_name = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId .'/converted/'.$interactivity_name.'/HD/'.$img_name.'.jpg';
                            $old_name = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId .'/converted/'.$interactivity_name.'/HD/'.$prefix.$img_name.'.jpg';
                            rename($old_name,$temp_name);

                            for($i = 0;$i < count($deleted_images_hd);$i++) //deleting images
                            {
                                $image_id = $deleted_images_hd[$i];
                                if($img_name == $image_id)
                                {
                                    //deleting image
                                    if(is_writable($temp_name)) 
                                        unlink($temp_name);
                                    // $max_hd_after_delete--;
                                }
                            }
                            $img_name++;
                        }

                        $img_name = 1;
                        for($x=0;$x <= $no_of_hd_images;$x++)
                        {
                            for ($p=0; $p < count($sort_order_hd) ; $p++) 
                            {  
                                //$img_name_sort = $sort_order_ld[$p];
                                if(($p+1)<=9)
                                    $prefix_sort = "00";
                                else if (($p+1)>9 && ($p+1)<99) 
                                    $prefix_sort = "0";
                                else if(($p+1)>99)
                                    $prefix_sort = "";
                                if($img_name == $sort_order_hd[$p])
                                {
                                    // $name_space = str_replace(' ', '%20',$interactivity_name);
                                    $temp_name = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId .'/converted/'.$interactivity_name.'/HD/'.$img_name.'.jpg';
                                    //$old_name = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId .'/converted/'.$name_space.'/'.$prefix.$img_name.'.jpg';
                                    $new_name = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId .'/converted/'.$interactivity_name.'/HD/'.$prefix_sort.($p+1).'.jpg';
                                    rename($temp_name,$new_name);
                                }
                            }
                            $img_name++;
                        }
                    }

                    //Upload Audio
                    $audio_time = NULL;
                    $path = Mage::getBaseDir('media').'/add/interactivity/converted/';
                    if (!file_exists($path)) 
                    {
                        mkdir($path, 777, true);
                    }
                    try 
                    {
                        $audio_time = $this->getRequest()->getPost('audio_duration_' . $count);
                        if($_FILES['audio_' . $count]['name'] != NULL)
                        {
                            $fname = $_FILES['audio_' . $count]['name'];
                            $path_parts = pathinfo($fname);
                            $ext = $path_parts['extension'];
                            $path = $path . $productId .'/audio/';
                            $rename_audio ='audio_'.($interactivity_order-1).'.'.$ext ;
                            $uploader = new Varien_File_Uploader('audio_' . $count);
                            $uploader->setAllowedExtensions(array('mp3'));
                            $uploader->setAllowCreateFolders(true);
                            $uploader->setAllowRenameFiles(false);   //set true to rename automatically
                            $uploader->setFilesDispersion(false);
                            $uploader->save($path, $rename_audio);
                       }

                        // Delete audio
                        if(($audio_name[$count]['audio_name'] != NULL || $audio_name[$count]['audio_name'] != "") && $audio_time == "" && $rename_audio == NULL)
                        {
                            $temp_name = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId .'/audio/'.$audio_name[$count]['audio_name'];                            
                            if(is_writable($temp_name)) 
                                unlink($temp_name);
                            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                            $rows = array('audio_condition'=>'no','audio_name'=>NULL,'audio_time'=>NULL);
                            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                            $write->update($table, $rows, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);
                        }
                    }
                    catch (Exception $e) 
                    {
                        echo 'Error Message: ' . $e->getMessage();
                    }
                    //sql statements
                    //oc_product_interactivity for images/audio

                    // $pinteractivity = '360';
                    if($Pinteractivity[$count]['Pinteractivity'] == 'Video')
                    {   
                    	$value = $video_url[$count]['video_url'];
                        $youtube_chk = str_split($value,1);
                        if($youtube_chk[0]['string(1)'] != '<')
                        {
                            $value = explode("../../../media",$value);
                            $value = Mage::getBaseDir('media').$value[1];
                            if(is_writable($value)) 
                                unlink($value);
                        }

                    	$table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                        $rows = array('Pinteractivity'=>'360','video_url'=>'','audio_condition'=>'no');
                        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                        $write->update($table, $rows, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);
                    }
                    if($audio_play_type == '' || $audio_play_type == NULL)
                        $audio_play_type = 'no';
                    // if($zoom_button_type == '' || $zoom_button_type == NULL)
                    //     $zoom_button_type = '0';
                    if($ld_image_speed == '' || $ld_image_speed == NULL)
                        $ld_image_speed = '0.15';


                    //Update  ld_image_speed
                    if($ld_image_speed != $frame_change[$count]['frame_change'])
                    {
                        $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                        $rows = array('frame_change'=>$ld_image_speed);
                        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                        $write->update($table, $rows, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);
                    }
                    
                    if($rename_audio != NULL || $rename_audio != "")
                    {
                        $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                        $rows = array('audio_name'=>$rename_audio);
                        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                        $write->update($table, $rows, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);
                    }
                    if($audio_play_type != "" && $audio_play_type != $audio_condition[$count]['audio_condition'])
                    {
                        $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                        $rows = array('audio_condition'=>$audio_play_type);
                        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                        $write->update($table, $rows, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);
                    }                    
                }

                if($interactivity_select == 'video')
                {
                	if($Pinteractivity[$count]['Pinteractivity'] == '360')
                    {
                        $dirname = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId.'/converted/'.$interactivity_name;
                        delete_directory($dirname);
                    	$value = Mage::getBaseDir('media').'/add/interactivity/converted/'.$productId.'/audio/'.$audio_name[$count]['audio_name'];
                        if(is_writable($value)) 
                            unlink($value);

                    	$table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                        $rows = array('Pinteractivity'=>'Video','frames'=>'1','audio_name'=>NULL,'audio_condition'=>'no');
                        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                        $write->update($table, $rows, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);
                    }
                    //video upload
                    $interactivity_name = $this->getRequest()->getPost('interactivity_name_'.$count);
                    $video_play_type = $this->getRequest()->getPost('video_play_type_'.$count);
                    $video_path = Mage::getBaseDir('media').'/add/interactivity/converted/';
                    if (!file_exists($video_path)) 
                    {
                        mkdir($video_path, 777, true);
                    }
                    try 
                    {
                        if($_FILES['videofile_'.$count]['name'] != NULL)
                        {
                            $fname = $_FILES['videofile_'.$count]['name'];
                            $path_parts = pathinfo($fname);
                            $ext = $path_parts['extension'];
                            $video_path = $video_path . $productId .'/video/';
                            $file_name = $path_parts['filename'];
                            $rename_video = 'video_'.($interactivity_order-1).'.'.$ext ;
                            $uploader = new Varien_File_Uploader('videofile_'.$count);
                            $uploader->setAllowedExtensions(array('mp4','mov'));
                            $uploader->setAllowCreateFolders(true);
                            $uploader->setAllowRenameFiles(false);   //set true to rename automatically
                            $uploader->setFilesDispersion(false);
                            $uploader->save($video_path, $rename_video);

                            //oc_product_interactivity for video
                            $video_url_edit = '../../../media/add/interactivity/converted/'. $productId .'/video/'. $rename_video;
                            
                            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                            $rows = array('video_url'=>$video_url_edit);
                            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                            $write->update($table, $rows, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);
                        }   
                        else
                        {
                            if($youtube_video_url == "")
                                $youtube_video_url = $video_url[$count]['video_url'];

                            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                            $rows = array('video_url'=>$youtube_video_url);
                            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                            $write->update($table, $rows, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);
                        }
                        if($video_play_type == '' || $video_play_type == NULL)
                        	$video_play_type = 'no';
                        if($video_play_type != ""  && $video_play_type != $audio_condition[$count]['audio_condition'])
                        {
                            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
    	                    $rows = array('audio_condition'=>$video_play_type);
    	                    $write = Mage::getSingleton('core/resource')->getConnection('core_write');
    	                    $write->update($table, $rows, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);
                        }
                        // Delete video
                        $check_video = $this->getRequest()->getPost('video_present_'.$count);
                        if(($video_url[$count]['video_url'] != NULL || $video_url[$count]['video_url'] != "") && $check_video == "0")
                        {
                            $temp_name = explode("media",$video_url[$count]['video_url']);
                            $temp_name = Mage::getBaseDir('media').$temp_name[1];                            
                            if(is_writable($temp_name)) 
                                unlink($temp_name);
                            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                            $rows = array('video_url'=>" ");
                            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                            $write->update($table, $rows, "product_id=".$productId." AND interactivity_id=".$interactivity_id[$count]['interactivity_id']);
                        }
                    }
                    catch (Exception $e) 
                    {
                        echo 'Error Message: ' . $e->getMessage();
                    }
                }
            }
        }

        $url = Mage::getUrl('save/admin/page', array('_secure' => true, 'id'=>$productId));
        // Mage::app()->getFrontController()->getResponse()->setRedirect($url);
    }

    public function changeButtonbarAction()
    {
        function delete_directory($dirname) 
        {
            if (is_dir($dirname))
            {
                $dir_handle = opendir($dirname);
            }
            if (!$dir_handle)
            {
                return false;
            }

            while($file = readdir($dir_handle)) 
            {
                if ($file != "." && $file != "..") 
                {
                    if (!is_dir($dirname."/".$file))
                        unlink($dirname."/".$file);
                    else
                        delete_directory($dirname.'/'.$file);
                }
            }

            closedir($dir_handle);
            rmdir($dirname);
            return true;
        }

        $product = $this->getRequest()->getParam('id');
        echo $product;
        $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
        $write->delete($table, "product_id=".$product);

        $table = Mage::getSingleton('core/resource')->getTableName('oc_product_hotspot');
        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
        $write->delete($table, "product_id=".$product);

        $table = Mage::getSingleton('core/resource')->getTableName('oc_product_customize');
        $rows = array('hotspot_function'=>'0');
        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
        $write->update($table, $rows,"product_id=".$product);

        $directory = Mage::getBaseDir('media').'/add/interactivity/converted/'.$product;
        delete_directory($directory);


        $audio_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/audio';
        $background_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/background';
        $original_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/original';
        $transitions_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/transitions';
        $video_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/video';
        $converted_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/converted';

        $ioFile = new Varien_Io_File();
        $ioFile->checkAndCreateFolder($converted_folder);
        $ioFile->checkAndCreateFolder($audio_folder);
        $ioFile->checkAndCreateFolder($background_folder);
        $ioFile->checkAndCreateFolder($original_folder);
        $ioFile->checkAndCreateFolder($transitions_folder);
        $ioFile->checkAndCreateFolder($video_folder);
    }

    public function changeHotspotAction()
    {
        function delete_directory($dirname) 
        {
            if (is_dir($dirname))
            {
                $dir_handle = opendir($dirname);
            }
            if (!$dir_handle)
            {
                return false;
            }

            while($file = readdir($dir_handle)) 
            {
                if ($file != "." && $file != "..") 
                {
                    if (!is_dir($dirname."/".$file))
                        unlink($dirname."/".$file);
                    else
                        delete_directory($dirname.'/'.$file);
                }
            }

            closedir($dir_handle);
            rmdir($dirname);
            return true;
        }

        $product = $this->getRequest()->getParam('id');

        $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
        $write->delete($table, "product_id=".$product);

        $table = Mage::getSingleton('core/resource')->getTableName('oc_product_customize');
        $rows = array('hotspot_function'=>'1');
        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
        $write->update($table, $rows,"product_id=".$product);

        //oc_product_hotspot
        $table = Mage::getSingleton('core/resource')->getTableName('oc_product_hotspot');
        $rows = array(array('product_id'=>$product,'map_code'=>' ','number_of_hotspot'=>'0','width'=>' ','height'=>' ','name'=>' '));
        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
        $write->insertMultiple($table,$rows);
        echo $product;

        $directory = Mage::getBaseDir('media').'/add/interactivity/converted/'.$product;
        delete_directory($directory);


        $audio_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/audio';
        $background_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/background';
        $original_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/original';
        $transitions_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/transitions';
        $video_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/video';
        $converted_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/converted';

        $ioFile = new Varien_Io_File();
        $ioFile->checkAndCreateFolder($converted_folder);
        $ioFile->checkAndCreateFolder($audio_folder);
        $ioFile->checkAndCreateFolder($background_folder);
        $ioFile->checkAndCreateFolder($original_folder);
        $ioFile->checkAndCreateFolder($transitions_folder);
        $ioFile->checkAndCreateFolder($video_folder);
    }

    public function changeHomeImageAction()
    {
        function delete_directory($dirname) 
        {
            if (is_dir($dirname))
            {
                $dir_handle = opendir($dirname);
            }
            if (!$dir_handle)
            {
                return false;
            }

            while($file = readdir($dir_handle)) 
            {
                if ($file != "." && $file != "..") 
                {
                    if (!is_dir($dirname."/".$file))
                        unlink($dirname."/".$file);
                    else
                        delete_directory($dirname.'/'.$file);
                }
            }

            closedir($dir_handle);
            rmdir($dirname);
            return true;
        }

        $product = $this->getRequest()->getParam('id');

        $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
        $write->delete($table, "product_id=".$product);

        // $table = Mage::getSingleton('core/resource')->getTableName('oc_product_customize');
        // $rows = array('hotspot_function'=>'1');
        // $write = Mage::getSingleton('core/resource')->getConnection('core_write');
        // $write->update($table, $rows,"product_id=".$product);

        //oc_product_hotspot
        $table = Mage::getSingleton('core/resource')->getTableName('oc_product_hotspot');
        $rows = array(array('product_id'=>$product,'map_code'=>' ','number_of_hotspot'=>'0','width'=>' ','height'=>' ','name'=>' '));
        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
        $write->insertMultiple($table,$rows);
        echo $product;

        $directory = Mage::getBaseDir('media').'/add/interactivity/converted/'.$product;
        delete_directory($directory);


        $audio_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/audio';
        $background_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/background';
        $original_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/original';
        $transitions_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/transitions';
        $video_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/video';
        $converted_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$product .'/converted';

        $ioFile = new Varien_Io_File();
        $ioFile->checkAndCreateFolder($converted_folder);
        $ioFile->checkAndCreateFolder($audio_folder);
        $ioFile->checkAndCreateFolder($background_folder);
        $ioFile->checkAndCreateFolder($original_folder);
        $ioFile->checkAndCreateFolder($transitions_folder);
        $ioFile->checkAndCreateFolder($video_folder);
    }


}