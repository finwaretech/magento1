<?php
class Finwaretech_Web_Helper_Data extends Mage_Core_Controller_Front_Action
{
}
class Finwaretech_Web_AdminController extends Mage_Core_Controller_Front_Action
{
	public function pageAction(){
		
		$this->loadLayout();
		$this->_initLayoutMessages('customer/session');
        $this->renderLayout();
	}

	public function disableAction()
	{
		$product = $this->getRequest()->getParam('id');
		echo $product;
		$table = Mage::getSingleton('core/resource')->getTableName('finware_index');
	    $rows = array('active'=>'No');
	    $write = Mage::getSingleton('core/resource')->getConnection('core_write');
	    $write->update($table, $rows,"product_id=".$product);
	}

}