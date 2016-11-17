<?php
class Brief extends DataObject {

	static $default_sort = 'Sort ASC';

	private static $db = array(
		'Title' => 'Text',
		'Client' => 'Text',
		'LiveDate' => 'Date',

		'Description' => 'Text',
		'Target' => 'Text',
		'Audience' => 'Text',

		'ProjectManager' => 'Text',
		'CopyManager' => 'Text',
		'OfferManager' => 'Text',
		'Designer' => 'Text',

		'Deleted' => 'Boolean',

		'Sort' => 'Int'
	);

	private static $has_one = array(
		'Status' => 'BriefStatus'
	);

	private static $many_many = array(
		'Deliverables' => 'BriefDeliverable'
	);

  private static $summary_fields = array(
  	'Title',
    'Created',
    'Client',
    'Deleted'
  );

	function getCMSFields() {
		$fields = new FieldList();
		$fields->push(new Tabset('Root'));


		$fields->addFieldToTab('Root.Main', new TextField('Title', 'Brief Name'));
		$fields->addFieldToTab('Root.Main', new TextField('Client', 'Client'));
		$fields->addFieldToTab('Root.Main', $livedate = new DateField('LiveDate', 'Live Date'));
		$livedate->setConfig('showcalendar', true);

		$status = Dataobject::get("BriefStatus")->map("ID", "Title", "Please Select");

		$deliverables = Dataobject::get("BriefDeliverable")->map("ID", "Title", "Please Select");
		$fields->addFieldToTab('Root.Main', new CheckboxSetField('Deliverables', 'Deliverables', $deliverables));

		$fields->addFieldToTab('Root.Main', new TextareaField('Description', 'Description'));
		$fields->addFieldToTab('Root.Main', new TextareaField('Target', 'Campaign Goals'));
		$fields->addFieldToTab('Root.Main', new TextareaField('Audience', 'Audience'));

		$fields->addFieldToTab('Root.Main', new TextField('ProjectManager', 'Project Manager'));
		$fields->addFieldToTab('Root.Main', new TextField('Designer', 'Designer'));
		$fields->addFieldToTab('Root.Main', new TextField('CopyManager', 'Copy Manager'));
		$fields->addFieldToTab('Root.Main', new TextField('OfferManager', 'Offer Manager'));

		$fields->addFieldToTab('Root.Main', new DropdownField('StatusID', 'Status', $status));

		return $fields;
	}

}