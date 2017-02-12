<?php
class Finwaretech_Database_IndexController extends Mage_Core_Controller_Front_Action
{
	public function indexAction(){
		
		$this->loadLayout();
        $this->renderLayout();
	}
}