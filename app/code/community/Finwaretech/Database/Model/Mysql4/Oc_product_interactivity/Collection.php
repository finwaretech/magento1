<?php
  


  class Finwaretech_Database_Model_Mysql4_Oc_product_interactivity_Collection extends Mage_Core_Model_Mysql4_Collection_Abstract
{
    public function _construct()
    {
        parent::_construct();
        $this->_init('database/oc_product_interactivity');
    }
}