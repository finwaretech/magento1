<?php
class Finwaretech_Work_Helper_Data extends Mage_Core_Controller_Front_Action
{
}
class Finwaretech_Work_AdminController extends Mage_Core_Controller_Front_Action
{
	public function pageAction(){
		
		$this->loadLayout();
		// $this->_initLayoutMessages('customer/session');
        $this->renderLayout();
        
	}
}