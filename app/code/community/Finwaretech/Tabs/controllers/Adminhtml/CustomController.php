<?php
class Finwaretech_Tabs_Helper_Data extends Mage_Core_Controller_Front_Action
{
}
class Finwaretech_Tabs_Adminhtml_CustomController extends Mage_Adminhtml_Controller_Action
{
    public function indexAction()
    {
        // $this->loadLayout()
        //     ->_setActiveMenu('mycustomtab')
        //     ->_title($this->__('Index Action'));
 
        // // my stuff
 
        // $this->renderLayout();
        Mage::app()->getFrontController()->getResponse()->setRedirect(Mage::getBaseUrl().'web/admin/page');
    }
 
    // public function listAction()
    // {
    //     $this->loadLayout()
    //         ->_setActiveMenu('mycustomtab')
    //         ->_title($this->__('List Action'));
 
    //     // my stuff
 
    //     $this->renderLayout();
    // }
}