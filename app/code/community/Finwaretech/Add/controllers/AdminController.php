<?php
class Finwaretech_Add_Helper_Data extends Mage_Core_Controller_Front_Action
{
}
class Finwaretech_Add_AdminController extends Mage_Core_Controller_Front_Action
{
	// Main Function
    public function pageAction()
    {
        
        $this->loadLayout();
        $this->_initLayoutMessages('customer/session');
        $this->renderLayout();
    }
    
    // Calls when Hotspot submit is pressed
    public function saveUploadFileAction() 
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
    	//Get the full URL of the request
        $uri = $_SERVER['REQUEST_URI'];
        //echo $uri; // Outputs: URI
        //Sperate out the given string from the URL
        $uri = explode('add/admin/saveUploadFile', $uri);
        //Add domain name 
        $page_url = $protocol . $_SERVER['HTTP_HOST'] . $uri[0];
        // echo "url=".$page_url;
        //The path to to the location where we save images 
        $path = Mage::getBaseDir('media').'/add/interactivity/converted/';
        if (!file_exists($path)) 
        {
            mkdir($path, 0777, true);
            // chmod('/test1', 0777);
        }
        try 
        {
            $name = "";
            $audio_name = "";
            $video_url_name = "";
            $hotspot_names = "";
            $hd_status = '0';
            // File Upload Code
            $productId = $this->getRequest()->getPost('product');
            $fname = $_FILES['filename']['name'];  //'filename' is name of the input feild name, 'name' is the uploaded file's name
            $path_parts = pathinfo($fname);
            $ext = $path_parts['extension'];
            $path = $path . $productId .'/converted/';
            //$file_name = $path_parts['filename'];
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
            // $quality_image = (500000/$size)*100;                            
            // Compress image only if image is larger than 100 KB
            if($size > 100000)
                $d = compress($source_img, $destination_img,80);

            // Get Values From Hidden Form
            $Anchor_tag = $this->getRequest()->getPost('anchor_tag_input'); //All map codes
            $width_img = $this->getRequest()->getPost('width_img_input');
            $height_img = $this->getRequest()->getPost('height_img_input');
            $no_of_hotspot = $this->getRequest()->getPost('no_of_hotspot_input');

            $img_url = 'media/add/interactivity/converted/'. $productId .'/converted/'. $rename;
            $hotspot_counter = $this->getRequest()->getPost('hotspot_interactivity_counter');
            $text_color_hotspot = $this->getRequest()->getPost('text_color_hotspot');
            $button_color_hotspot = $this->getRequest()->getPost('button_color_hotspot');
            $band_color_hotspot = $this->getRequest()->getPost('band_color_hotspot');

            // Checking if Interactivity is Deleted
            $deleted_interactivity = $this->getRequest()->getPost('deleted_hotspot');
            if($deleted_interactivity != "")
                $deleted_interactivity = explode(",",$deleted_interactivity);
            else
                $deleted_interactivity = array();
            sort($deleted_interactivity);
            $array_of_interactivity = $this->getRequest()->getPost('array_of_hotspot');
            $array_of_interactivity = explode(",",$array_of_interactivity);
            $index = 0;
            //Differce of 2 array. $result)array contains only non-deleted array
            for ($i=0; $i < count($array_of_interactivity) ; $i++) 
            {
                $value = $array_of_interactivity[$i];
                if(!(array_search($value,$deleted_interactivity) !== FALSE ))
                {
                    $result_array[$index] = $value;
                    $index++;
                }
            }    
            $number_of_hotspot_after_deleting = sizeof($result_array);

            // Loop Through Number of Hotspot
            for($count = 0; $count < $hotspot_counter; $count++)
            {
                if(!(array_search($count,$deleted_interactivity)!== FALSE ))
                {
                	// Interactivity_order is squence number of interactivity
                    $interactivity_order = array_search($count,$result_array);
                    $interactivity_order++;
                    $hotspot_youtube_video_url = $this->getRequest()->getPost('hotspot_url_youtube_'. $count);
                    //hotspot_select is whether video or image is selcted
                    $hotspot_select = $this->getRequest()->getPost('hotspot_select_'. $count);
                    $name = $this->getRequest()->getPost('hotspot_name_'. $count);
                    // $hotspot_names = $hotspot_names . $this->getRequest()->getPost('hotspot_name_'. $count).",";
                    $rename_audio = NULL;
                    $hotspot_ld_image_speed = $this->getRequest()->getPost('hotspot_ld_image_speed_'.$count);
                    //Making default values if empty
                    if($hotspot_ld_image_speed == '' || $hotspot_ld_image_speed == NULL)
                            $hotspot_ld_image_speed = '0.15';
                    $hotspot_audio_play_type = $this->getRequest()->getPost('hotspot_audio_play_type_'.$count);

                    // Image Interactivity
                    if($hotspot_select == 'images')
                    {
                        // LD Image Upload
                        $hotspot_sort_order_ld = $this->getRequest()->getPost('hotspot_sort_order_ld_'. $count);
                        $hotspot_sort_order_ld = explode(",",$hotspot_sort_order_ld);  
                        //LD Image choose file button clicks
                        $hotspot_click_ld = $this->getRequest()->getPost('hotspot_no_of_ld_click_'.$count);
                        // $j = 0;
                        if($_FILES['pictures_hotspot_ld_'. $count.'_0']['name'] != NULL)
                        {
                        	// Loop Through Number of LD Image choose file button clicks
                            for ($i=0,$m=1; $i < $hotspot_click_ld; $i++) 
                            { 
                            	//Loop thourgh each images in a particular button click
                                foreach ($_FILES['pictures_hotspot_ld_'.$count.'_'.$i]['name'] as $key => $image) 
                                {   
                                	//For this particular image, loop thourgh hotspot_sort_order_ld array to find the particular image's index
                                	//We do this for renaming files according to file order
                                    for ($p=0; $p < sizeof($hotspot_sort_order_ld) ; $p++) 
                                    { 
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
                                            	// Uploding image and setting attributes
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
                            //Total number of LD images for this interactivity
                            $frames_number = $image_name;
                        }
                        // HD Image Upload - hotspot
                        $hotspot_sort_order_hd = $this->getRequest()->getPost('hotspot_sort_order_hd_'. $count);
                        $hotspot_sort_order_hd = explode(",",$hotspot_sort_order_hd);
                        // HD Image choose file button clicks
                        $hotspot_click_hd = $this->getRequest()->getPost('hotspot_no_of_hd_click_'. $count);
                        if($_FILES['pictures_hotspot_hd_'.$count.'_0']['name'] != NULL)
                        {
                        	// Loop Through Number of HD Image choose file button clicks
                            for ($l=0,$n=1; $l < $hotspot_click_hd; $l++) 
                            { 
                            	//Loop thourgh each images in a particular button click
                                foreach ($_FILES['pictures_hotspot_hd_'.$count.'_'.$l]['name'] as $key => $image) 
                                {   
                                	//For this particular image, loop thourgh hotspot_sort_order_hd array to find the particular image's index
                                	//We do this for renaming files according to file order
                                    for ($p=0; $p < sizeof($hotspot_sort_order_hd) ; $p++) 
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
                                            	// Uploding image and setting attributes
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
                                                    $d = compress($source_img, $destination_img, $quality_image);

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
                        // $frames_number = $image_name;
                        //Upload Audio
                        $path = Mage::getBaseDir('media').'/add/interactivity/converted/';
                        $audio_time = NULL;
                        if (!file_exists($path)) 
                        {
                            mkdir($path, 0777, true);
                        }
                        try 
                        {
                        	// Set Audio Attributes
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
                                // if($frames_number==1)
                                // {
                                //     $frame_time = 3*1000;
                                // }
                                // if($frames_number<10 && $frames_number>1)
                                // {
                                //     $frame_time = (+5+($frames_number*$hotspot_ld_image_speed))*2000;
                                // }
                                // if($frames_number>=10)
                                // {
                                //     $frame_time = (+1+($frames_number*$hotspot_ld_image_speed))*1000;
                                // }
                                if($frame_time > $audio_time)
                                    $audio_time = $frame_time;
                           }
                        }
                        catch (Exception $e) 
                        {
                            echo 'Error Message:audio: ' . $e->getMessage();
                        }
                        $pinteractivity = '360';
                        if($hotspot_audio_play_type == '' || $hotspot_audio_play_type == NULL)
                            $hotspot_audio_play_type = 'no';
                        //sql statements
                        //oc_product_interactivity for images/audio

                        $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                        $rows = array(array('product_id'=>$productId,'interactivity_name'=>$name,'interactivity_order'=>$interactivity_order,'Pinteractivity'=>$pinteractivity,'frames'=>$frames_number,'frame'=>'1','rows'=>'0','row'=>'1','frame_change'=>$hotspot_ld_image_speed,'hor_rotation'=>'1','ver_rotation'=>'1','audio_condition'=>$hotspot_audio_play_type,'audio_name'=>$rename_audio,'audio_time'=>$audio_time,'video_url'=>''));

                        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                        $write->insertMultiple($table,$rows);
                    }

                    if($hotspot_select == 'video')
                    {
                        //video upload
                        $interactivity_name = $this->getRequest()->getPost('hotspot_name_'.$count);
                        // $hotspot_names = $hotspot_names . $this->getRequest()->getPost('hotspot_name_'. $count).",";
                        $video_play_type = $this->getRequest()->getPost('hotspot_video_play_type_'.$count);
                        $video_path = Mage::getBaseDir('media').'/add/interactivity/converted/';
                        if (!file_exists($video_path)) 
                        {
                            mkdir($video_path, 0777, true);
                        }
                        try 
                        {
                        
                        	//If between video file and Youtube link
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
                                $pinteractivity = 'Video';
                                // Insert into db
                                $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                                $rows = array(array('product_id'=>$productId,'interactivity_name'=>$name,'interactivity_order'=>$interactivity_order,'Pinteractivity'=>$pinteractivity,'frames'=>'1','frame'=>'1','rows'=>'0','row'=>'1','hor_rotation'=>'1','ver_rotation'=>'1','audio_condition'=>$video_play_type,'video_url'=>$video_url));

                                $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                                $write->insertMultiple($table,$rows);

                            }
                            else
                            {
                                //oc_product_interactivity for youtube video
                                $pinteractivity = 'Video';
                                // Insert into db
                                $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                                $rows = array(array('product_id'=>$productId,'interactivity_name'=>$name,'interactivity_order'=>$interactivity_order,'Pinteractivity'=>$pinteractivity,'frames'=>'1','frame'=>'1','rows'=>'0','row'=>'1','hor_rotation'=>'1','ver_rotation'=>'1','audio_condition'=>$video_play_type,'audio_name'=>'','video_url'=>$hotspot_youtube_video_url));

                                $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                                $write->insertMultiple($table,$rows);

                            }
                        }
                        catch (Exception $e) 
                        {
                            echo 'Error Message:video ' . $e->getMessage();
                        }
                    }
                }
            }

            //sql statements for Hotspot and customise and product interactivity activation

            //oc_product_hotspot
            $model = Mage::getModel('catalog/product');
            $_product = $model->load($productId);
            $product_name = $_product->getName(); //product name

            //oc_product_hotspot
            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_hotspot');
            $rows = array(array('product_id'=>$productId,'map_code'=>$Anchor_tag,'number_of_hotspot'=>($number_of_hotspot_after_deleting),'home_image_link'=>$img_url,'width'=>$width_img,'height'=>$height_img,'name'=>$product_name));

            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
            $write->insertMultiple($table,$rows);

            //oc_product_customize
            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_customize');
            $rows = array(array('product_id'=>$productId,'scale'=>'No','button_color'=>$button_color_hotspot,'text_color'=>$text_color_hotspot,'band_color'=>$band_color_hotspot,'hotspot_function'=>'1','hd_status'=>$hd_status,'heading'=>$product_name));

            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
            $write->insertMultiple($table,$rows);

            //finware_index
            $table = Mage::getSingleton('core/resource')->getTableName('finware_index');
            $rows = array(array('product_id'=>$productId,'active'=>'Yes'));

            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
            $write->insertMultiple($table,$rows);

             // Create Folder Path
            $audio_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$productId .'/audio';
            $background_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$productId .'/background';
            $original_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$productId .'/original';
            $transitions_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$productId .'/transitions';
            $video_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$productId .'/video';
            $converted_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$productId .'/converted';

            // Create Folders
            $ioFile = new Varien_Io_File();
            $ioFile->checkAndCreateFolder($converted_folder);
            $ioFile->checkAndCreateFolder($audio_folder);
            $ioFile->checkAndCreateFolder($background_folder);
            $ioFile->checkAndCreateFolder($original_folder);
            $ioFile->checkAndCreateFolder($transitions_folder);
            $ioFile->checkAndCreateFolder($video_folder);
            // chmod($converted_folder, 0777);
            // chmod($audio_folder, 0777);
            // chmod($background_folder, 0777);
            // chmod($original_folder, 0777);
            // chmod($transitions_folder, 0777);
            // chmod($video_folder, 0777);

        } 
        catch (Exception $e) 
        {
            echo 'Error Message: last' . $e->getMessage();
        }
        // Confirmation page
        $url = Mage::getUrl('save/admin/page', array('_secure' => true, 'id'=>$productId));
        Mage::app()->getFrontController()->getResponse()->setRedirect($url);
    }

    // Calls when Button Bar submit is pressed
    public function saveAction()
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
    	//Get the full URL of the request
        $uri = $_SERVER['REQUEST_URI'];
        //echo $uri; // Outputs: URI
        //Sperate out the given string from the URL
        // $audio_time = NULL;
        $uri = explode('add/admin/save', $uri);
        //Add domain name
        $page_url = $protocol . $_SERVER['HTTP_HOST'] . $uri[0];
        $hd_status = '0';
        // Get values from hidden fields
        $productId = $this->getRequest()->getParam('id');
        $interactivity_counter = $this->getRequest()->getPost('interactivity_counter');
        $text_color = $this->getRequest()->getPost('text_color_interactivity');
        $button_color = $this->getRequest()->getPost('button_color_interactivity');
        $band_color = $this->getRequest()->getPost('band_color_interactivity');
        
        //Zoom button details
        $zoom_button_type = $this->getRequest()->getPost('zoom_button_type');
        if($zoom_button_type == '' || $zoom_button_type == NULL)
            $zoom_button_type = '0';

        $deleted_interactivity = $this->getRequest()->getPost('deleted_interactivity');
        // Checking if Interactivity is Deleted
        if($deleted_interactivity != "")
            $deleted_interactivity = explode(",",$deleted_interactivity);
        else
            $deleted_interactivity = array();
        sort($deleted_interactivity);
        $array_of_interactivity = $this->getRequest()->getPost('array_of_interactivity');
        $array_of_interactivity = explode(",",$array_of_interactivity);
        $index = 0;
        //Difference of 2 array, $result_array contains only non-deleted array
        for ($i=0; $i < count($array_of_interactivity) ; $i++) 
        {
            $value = $array_of_interactivity[$i];
            if(!(array_search($value,$deleted_interactivity) !== FALSE ))
            {
                $result_array[$index] = $value;
                $index++;
            }
        }
        // $interactivity_order = 0;
        
        // Loop through no of Interactivity
        for($count = 0; $count < $interactivity_counter; $count++)
        {
            if(!(array_search($count,$deleted_interactivity)!== FALSE ))
            {
                // Interactivity_order is sequence number of interactivity
                $interactivity_order = array_search($count,$result_array);
                $interactivity_order++;
                $rename_audio = NULL;
                $youtube_video_url = $this->getRequest()->getPost('url_youtube_' . $count);
                //interactivity_select is whether video or image is selected
                $interactivity_select = $this->getRequest()->getPost('interactivity_select_'.$count);
                $interactivity_name = $this->getRequest()->getPost('interactivity_name_'.$count);
                $ld_image_speed = $this->getRequest()->getPost('ld_image_speed_'.$count);
                // $hd_image_speed = $this->getRequest()->getPost('hd_image_speed_'.$count);
                $audio_play_type = $this->getRequest()->getPost('audio_play_type_'.$count);



                // Image Interactivity
                if($interactivity_select == 'images')
                {                
                	// LD Image Upload
                    $sort_order_ld = $this->getRequest()->getPost('sort_order_ld_' . $count);
                    //$sort_order_ld = str_split($sort_order_ld);  
                    $sort_order_ld = explode(",",$sort_order_ld);
                    //LD Image choose file button clicks 
                    $click_ld = $this->getRequest()->getPost('no_of_ld_click_'.$count);
       				// Loop Through Number of LD Image choose file button clicks
                    for ($i=0,$m=1; $i < $click_ld; $i++) 
                    { 
                    	//Loop thourgh each images in a particular button click
                        foreach ($_FILES['pictures_ld_'.$count.'_'.$i]['name'] as $key => $image) 
                        {   
                            //For this particular image, loop thourgh hotspot_sort_order_ld array to find the particular image's index
                            //We do this for renaming files according to file order
                            for ($p=0; $p < sizeof($sort_order_ld) ; $p++) 
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
                                        // echo "mm=".$m;
                                        // echo "p=".$p;
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
                                        // $file_name = $path_parts['filename'];
                                        $image_name = $p+1;
                                        if($image_name<=9)
                                            $prefix = "00";
                                        else if ($image_name>9 && $image_name<99) 
                                            $prefix = "0";
                                        else if($image_name>99)
                                            $prefix = "";
                                        $rename = $prefix.$image_name.".jpg";
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
                    //Total number of LD images for this interactivity
                    $frames_number = $image_name;
                    // HD Image Upload
                    $sort_order_hd = $this->getRequest()->getPost('sort_order_hd_' . $count);
                    $sort_order_hd = explode(",",$sort_order_hd);  
                    // HD Image choose file button clicks
                    $click_hd = $this->getRequest()->getPost('no_of_hd_click_' . $count);
                    
                    // Loop Through Number of HD Image choose file button clicks
                    for ($l=0,$n=1; $l < $click_hd; $l++) 
                    { 
                    	//Loop thourgh each images in a particular button click
                        foreach ($_FILES['pictures_hd_'.$count.'_'.$l]['name'] as $key => $image) 
                        {   
                        	//For this particular image, loop thourgh sort_order_hd array to find the particular image's index
                            //We do this for renaming files according to file order
                            for ($p=0; $p < sizeof($sort_order_hd) ; $p++) 
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
                                    	// Uploding image and setting attributes
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
                        mkdir($path, 0777, true);
                    }
                    try 
                    {
                        if($_FILES['audio_' . $count]['name'] != NULL)
                        {
                            // $audio_time = $this->getRequest()->getPost('audio_duration_' . $count);
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

                    //Zoom button

                    //sql statements
                    //oc_product_interactivity for images/audio

                    $pinteractivity = '360';
                    if($audio_play_type == '' || $audio_play_type == NULL)
                        $audio_play_type = 'no';
                    if($ld_image_speed == '' || $ld_image_speed == NULL)
                        $ld_image_speed = '0.15';
                    $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                    $rows = array(array('product_id'=>$productId,'interactivity_name'=>$interactivity_name,'interactivity_order'=>$interactivity_order,'Pinteractivity'=>$pinteractivity,'frames'=>$frames_number,'frame'=>'1','rows'=>'0','row'=>'1','frame_change'=>$ld_image_speed,'hor_rotation'=>'1','ver_rotation'=>'1','audio_condition'=>$audio_play_type,'audio_name'=>$rename_audio,'video_url'=>''));

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
                        mkdir($video_path, 0777, true);
                    }
                    try 
                    {
                    	//If between video file and Youtube link
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
                            $video_url = '../../../media/add/interactivity/converted/'. $productId .'/video/'. $rename_video;
                            $pinteractivity = 'Video';
                            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                            $rows = array(array('product_id'=>$productId,'interactivity_name'=>$interactivity_name,'interactivity_order'=>$interactivity_order,'Pinteractivity'=>$pinteractivity,'frames'=>'1','frame'=>'1','rows'=>'0','row'=>'1','hor_rotation'=>'1','ver_rotation'=>'1','audio_condition'=>$video_play_type,'video_url'=>$video_url));

                            $write = Mage::getSingleton('core/resource')->getConnection('core_write');
                            $write->insertMultiple($table,$rows);

                        }
                        else
                        {
                            //oc_product_interactivity for youtube video
                            $pinteractivity = 'Video';
                            $table = Mage::getSingleton('core/resource')->getTableName('oc_product_interactivity');
                            $rows = array(array('product_id'=>$productId,'interactivity_name'=>$interactivity_name,'interactivity_order'=>$interactivity_order,'Pinteractivity'=>$pinteractivity,'frames'=>'1','frame'=>'1','rows'=>'0','row'=>'1','hor_rotation'=>'1','ver_rotation'=>'1','audio_condition'=>$video_play_type,'audio_name'=>'','video_url'=>$youtube_video_url));

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

        //sql statements for customise and product interactivity activation


        $model = Mage::getModel('catalog/product');
        $_product = $model->load($productId);
        $product_name = $_product->getName(); //product name

        //oc_product_customize

        $table = Mage::getSingleton('core/resource')->getTableName('oc_product_customize');
        $rows = array(array('product_id'=>$productId,'scale'=>'No','button_color'=>$button_color,'text_color'=>$text_color,'band_color'=>$band_color,'hotspot_function'=>'0','hd_status'=>$hd_status,'heading'=>$product_name,'zoom_button'=>$zoom_button_type));

        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
        $write->insertMultiple($table,$rows);

        //finware_index

        $table = Mage::getSingleton('core/resource')->getTableName('finware_index');
        $rows = array(array('product_id'=>$productId,'active'=>'Yes'));

        $write = Mage::getSingleton('core/resource')->getConnection('core_write');
        $write->insertMultiple($table,$rows);

        // Create Folder Path
        $audio_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$productId .'/audio';
        $background_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$productId .'/background';
        $original_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$productId .'/original';
        $transitions_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$productId .'/transitions';
        $video_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$productId .'/video';
        $converted_folder = Mage::getBaseDir('media').DS.'/add/interactivity/converted/'.$productId .'/converted';

        // Create Folders
        $ioFile = new Varien_Io_File();
        $ioFile->checkAndCreateFolder($converted_folder);
        $ioFile->checkAndCreateFolder($audio_folder);
        $ioFile->checkAndCreateFolder($background_folder);
        $ioFile->checkAndCreateFolder($original_folder);
        $ioFile->checkAndCreateFolder($transitions_folder);
        $ioFile->checkAndCreateFolder($video_folder);
        chmod($converted_folder, 0777);
        chmod($audio_folder, 0777);
        chmod($background_folder, 0777);
        chmod($original_folder, 0777);
        chmod($transitions_folder, 0777);
        chmod($video_folder, 0777);

        // Confirmation page
        $url = Mage::getUrl('save/admin/page', array('_secure' => true, 'id'=>$productId));
        Mage::app()->getFrontController()->getResponse()->setRedirect($url);
    }
}
