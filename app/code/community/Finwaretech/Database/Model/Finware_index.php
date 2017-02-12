<?php
  
 
class Finwaretech_Database_Model_Finware_index extends Mage_Core_Model_Abstract
{
 
    public function _construct()
    {
        parent::_construct();
        $this->_init('database/finware_index');
    }
}
