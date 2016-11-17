<?php

class BriefAdmin extends ModelAdmin {

	private static $managed_models = array(
		'Brief' => array(
			'title' => 'Briefs'
		),
		'BriefStatus' => array(
			'title' => 'Brief Statuses'
		),
		'BriefDeliverable' => array(
			'title' => 'Brief Deliverables'
		)
	);
	private static $url_segment = 'briefs';
	private static $menu_title = 'Briefs';

}