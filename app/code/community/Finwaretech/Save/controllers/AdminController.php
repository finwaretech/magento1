<?php
class Finwaretech_Save_Helper_Data extends Mage_Core_Controller_Front_Action
{
}
class Finwaretech_Save_AdminController extends Mage_Core_Controller_Front_Action
{
	public function pageAction(){
		
		$this->loadLayout();
		$this->_initLayoutMessages('customer/session');
        $this->renderLayout();
	}
}