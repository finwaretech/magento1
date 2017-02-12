<?php
  
 
class Finwaretech_Database_Model_Oc_product_customize extends Mage_Core_Model_Abstract
{
 
    public function _construct()
    {
        parent::_construct();
        $this->_init('database/oc_product_customize');
    }
}
