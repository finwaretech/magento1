<?php
  


  class Finwaretech_Database_Model_Mysql4_Finware_index_Collection extends Mage_Core_Model_Mysql4_Collection_Abstract
{
    public function _construct()
    {
        parent::_construct();
        $this->_init('database/finware_index');
    }
}