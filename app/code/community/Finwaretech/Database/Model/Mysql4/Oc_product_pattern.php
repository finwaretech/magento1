<?php
  
 
class Finwaretech_Database_Model_Mysql4_Oc_product_pattern extends Mage_Core_Model_Mysql4_Abstract
{
 
    public function _construct()
    {
        $this->_init('database/oc_product_pattern', 'pattern_id');
    }
}
