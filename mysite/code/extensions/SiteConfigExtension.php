<?php

class SiteConfigExtension extends DataExtension {

	public static $has_one = array(
		'Logo' => 'Image'
	);

	public static $db = array(
		'SiteDescription' => "Text",
    'BrandColor' => 'Varchar(6)'
	);

  public function updateCMSFields(FieldList $fields) {

		$fields->addFieldToTab("Root.Main", $siteDescription = new TextareaField("SiteDescription", "Site Description"));
		$siteDescription->setDescription('One or two sentences to be shown in search results and in the footer.');
		$fields->addFieldToTab("Root.Main", new UploadField("Logo", "Header logo"));
		$fields->addFieldToTab("Root.Main", new ColorField("BrandColor", "Brand Color"));

  }
}