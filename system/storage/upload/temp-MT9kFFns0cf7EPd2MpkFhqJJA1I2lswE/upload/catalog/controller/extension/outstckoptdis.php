<?php
class ControllerExtensionoutstckoptdis extends Controller {	
	private $error = array();
	private $modpath = 'extension/outstckoptdis'; 
 	private $modtpl = 'default/template/extension/outstckoptdis.tpl'; 
	private $modname = 'outstckoptdis';
 	private $langid = 0;
	private $storeid = 0;
	private $custgrpid = 0;
	
	public function __construct($registry) {
		parent::__construct($registry);
		
		$this->langid = (int)$this->config->get('config_language_id');
		$this->storeid = (int)$this->config->get('config_store_id');
		$this->custgrpid = (int)$this->config->get('config_customer_group_id');
 				
		if(substr(VERSION,0,3)>='3.0') { 
			$this->modname = 'module_outstckoptdis';
		} 
		
		if(substr(VERSION,0,3)>='3.0' || substr(VERSION,0,3)=='2.3' || substr(VERSION,0,3)=='2.2') { 
 			$this->modtpl = 'extension/outstckoptdis';
		} 
 	}
	public function getcache() {
 		if($this->config->get($this->modname.'_status')) {			
 			$json['outstckoptdis_route'] = isset($this->session->data['outstckoptdis_route']) ? $this->session->data['outstckoptdis_route'] : '';
			$json['outstckoptdis_product_id'] = isset($this->session->data['outstckoptdis_product_id']) ? $this->session->data['outstckoptdis_product_id'] : 0;
			if($json['outstckoptdis_product_id'] > 0 && stristr($json['outstckoptdis_route'], 'product/product')) {
				$outstcktext = $this->config->get($this->modname.'_outstcktext');
				$json['outstcktext'] = $outstcktext[$this->langid];
 				$q = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_option_value WHERE quantity <= 0 and product_id = '" . (int)$json['outstckoptdis_product_id'] . "' ");
				$povids = array();
				if($q->num_rows) {
					foreach($q->rows as $rs) {
						$povids[$rs['product_option_value_id']] = $rs['product_option_value_id'];
					}
				}
				$json['povids'] = implode(",",$povids);
			}			
  			$this->response->addHeader('Content-Type: application/json');
			$this->response->setOutput(json_encode($json));
		}
	}
}