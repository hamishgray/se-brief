<?php
class BriefPage extends Page {
}
class BriefPage_Controller extends Page_Controller {

	private static $allowed_actions = array (
		'BriefForm',
		'BriefStatusForm',
		'delete',
		'edit',
		'view'
	);

	public function init() {
		parent::init();
	}

	public function UpperCase() {
		return Convert::raw2xml(strtoupper($this->value));
	}

	public function LowerCase() {
		return Convert::raw2xml(strtolower($this->value));
	}

	public function getBriefs(){
		$data = Brief::get()->where(array(
			'Deleted' => 0
		))->sort('Created DESC');
		return $data;
	}

	public function getUnpublishedBriefs(){
		$data = Brief::get()->where(array(
			'Deleted' => 0,
			'StatusID' => '1'
		))->sort('Created DESC');
		return $data;
	}

	public function getActiveBriefs(){
		$data = Brief::get()->where(array(
			'Deleted' => 0,
			'StatusID' => '2'
		))->sort('Created DESC');
		return $data;
	}

	public function getArchivedBriefs(){
		$data = Brief::get()->where(array(
			'Deleted' => 0,
			'StatusID' => '3'
		))->sort('Created DESC');
		return $data;
	}

	public function getStatuses(){
		$data = BriefStatus::get()->sort('Created DESC');
		return $data;
	}





	function BriefForm() {

		$brief = Brief::get()->byID($this->request->param('ID'));

		if($brief){
			$fields = $brief::getCMSFields();
		}else{
			$fields = Brief::getCMSFields();
		}

		$fields->addFieldToTab('Root.Main', new HiddenField('ID', 'ID'));

		$actions = new FieldList(
				new FormAction('SaveBriefForm', 'Save Brief')
		);
		$validator = new RequiredFields('Title', 'Client');
		$form = new Form($this, 'BriefForm', $fields, $actions, $validator);

		if($brief){
			$form->loadDataFrom($brief);
		}

		return $form;

	}

	/*	Change status form
	 **/
	function BriefStatusForm() {

		$brief = Brief::get()->byID($this->request->param('ID'));

		$member =  Member::currentUser();
		if($member){
			$memberID =  $member->ID;
		}else{
			$memberID =  null;
		}

			$fields = new FieldList(
					new HiddenField('ID', 'ID'),
					new DropdownField('StatusID', '', BriefStatus::get()->map("ID", "Title", "Please Select"))
			);
			$actions = new FieldList(
					$submit = new FormAction('SaveBriefForm', 'Save')
			);
			$submit->addExtraClass('hidden');
			$validator = new RequiredFields('StatusID');
			$form = new Form($this, 'BriefStatusForm', $fields, $actions, $validator);
			if($brief){
				$form->loadDataFrom($brief);
			}

			Requirements::customScript("
				window.onload = function(){
					var form = document.getElementById('Form_BriefStatusForm_StatusID');

					function submitForm(){
						document.getElementById('Form_BriefStatusForm_action_SaveBriefForm').click();
					}

					if(form.addEventListener) {
						form.addEventListener('change',submitForm,false);
					} else if(form.attachEvent) {
						form.attachEvent('onchange',submitForm);
					}
				}
			");

		return $form;
	}

	function SaveBriefForm($data, $form) {

		if($data['ID']){
			$brief = Brief::get()->byID($data['ID']);
		}else{
			$brief = new Brief();
		}

		$form->saveInto($brief);
		$brief->write();
		$briefID = $brief->ID;

		$this->redirect('home/view/'.$briefID);
	}






	public function delete(SS_HTTPRequest $request){
    $brief = Brief::get()->byID($request->param('ID'));
		if(!$brief) {
      return $this->httpError(404,'That page could not be found');
    }

		$brief->Deleted = true;
		$brief->write();

		$this->redirect(Director::baseURL().'home');
	}

	public function edit(SS_HTTPRequest $request){
    $brief = Brief::get()->byID($request->param('ID'));
		if(!$brief) {
      return $this->httpError(404,'That page could not be found');
    }
		return array(
			'Editing' => 'true',
			'Brief' => $brief
		);
	}

	public function view(SS_HTTPRequest $request){
    $brief = Brief::get()->byID($request->param('ID'));
		if(!$brief) {
      return $this->httpError(404,'That page could not be found');
    }
		return array(
			'Viewing' => 'true',
			'Brief' => $brief
		);
	}

}
