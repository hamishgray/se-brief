<?php
class Page extends SiteTree {
}
class Page_Controller extends ContentController {

	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
	}

	public function UpperCase() {
		return Convert::raw2xml(strtoupper($this->value));
	}

}
