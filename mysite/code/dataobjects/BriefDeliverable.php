<?php
class BriefDeliverable extends DataObject {

	static $default_sort = 'Sort ASC';

	private static $has_many = array();
	private static $has_one = array();

	private static $belongs_many_many = array(
		'Brief' => 'Brief'
	);

	private static $db = array(
		'Title' => 'Text',
		'Sort' => 'Int'
	);

  private static $summary_fields = array(
  	'Title'
  );

	function getCMSFields() {
		$fields = new FieldList();
		$fields->push(new Tabset('Root'));

		$fields->addFieldToTab('Root.Main', new TextField('Title', 'Title'));

		return $fields;
	}

}