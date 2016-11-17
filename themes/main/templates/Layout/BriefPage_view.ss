
<div class="section">


	<% with Brief %>
	<div class="row">
		<div class="col-md-4">
			<h4 class="underline">Project Details</h4>
			<ul class="lined">
				<% if Client %><li>Client: $Client</li><% end_if %>
				<% if DueDate %><li>Due: $DueDate.Long</li><% end_if %>
				<% if StartDate %><li>Start Date: $StartDate.Long</li><% end_if %>
			</ul>
			<h4 class="underline">Responsibilities</h4>
			<ul class="lined">
				<% if ProjectManager %><li>Project Manager: $ProjectManager</li><% end_if %>
				<% if CopyManager %><li>Copy Manager: $CopyManager</li><% end_if %>
				<% if OfferManager %><li>Offer Manager: $OfferManager</li><% end_if %>
				<% if Designer %><li>Designer: $Designer</li><% end_if %>
			</ul>
			<h4 class="underline">Deliverables</h4>
			<% loop Deliverables %>
				$Title<% if not Last %>, <% end_if %>
			<% end_loop %>
			<h4 class="underline">Brief status</h4>
			$Top.BriefStatusForm
		</div>
		<div class="col-md-8">
			<div class="raised_wrapper">
				<h4 class="underline">Description</h4>
				<p>$Description</p>
			</div>
			<div class="raised_wrapper">
				<h4 class="underline">Campaign Goals</h4>
				<p>$Target</p>
			</div>
			<div class="raised_wrapper">
				<h4 class="underline">Audience</h4>
				<p>$Audience</p>
			</div>
		</div>
	</div>
	<% end_with %>
</div>
</div><!-- /.container -->

<div class="section sec_white">

	<div class="container">
		<div class="row center">
			<div class="col-md-12">
				<a class="button" href="{$URLSegment}/edit/{$Brief.ID}">Edit this brief</a>
				<a class="button subtle delete" data-confirm="Are you sure you want to delete this item?" href="{$URLSegment}/delete/{$Brief.ID}">Delete this brief</a>
			</div>
		</div>
	</div>

</div>
