
<div class="section">



	<% if Content %>
	<div class="row">
		<div class="col-md-12">
			$Content
			$Form
		</div>
	</div>
	<% end_if %>



	<div class="row">
		<div class="col-md-12">

			<ul class="tabs__nav">
				<li class="tabs__link" data-tab="unpublished-tab"><a href="">
					Unpublished briefs
					<% if getUnpublishedBriefs %>
					<span class="brief-count">
						<% loop getUnpublishedBriefs %><% if First %> $TotalItems <% end_if %><% end_loop %>
					</span>
					<% end_if %>
				</a></li>
				<li class="tabs__link active" data-tab="active-tab"><a href="">
					Active briefs
					<% if getActiveBriefs %>
					<span class="brief-count">
						<% loop getActiveBriefs %><% if First %> $TotalItems <% end_if %><% end_loop %>
					</span>
					<% end_if %>
				</a></li>
				<li class="tabs__link" data-tab="archived-tab"><a href="">
					Archived briefs
					<% if getArchivedBriefs %>
					<span class="brief-count">
						<% loop getArchivedBriefs %><% if First %> $TotalItems <% end_if %><% end_loop %>
					</span>
					<% end_if %>
				</a></li>
			</ul>

		</div>
	</div>

	<div class="row tabs__tab inactive" id="unpublished-tab">
		<% if getUnpublishedBriefs %>
			<% loop getUnpublishedBriefs %>
			<% include Brief %>
			<% end_loop %>
		<% else %>
			<h4 class="center">You haven't got any unpublished briefs.</h4>
		<% end_if %>
	</div>

	<div class="row tabs__tab active" id="active-tab">
		<% if getActiveBriefs %>
			<% loop getActiveBriefs %>
			<% include Brief %>
			<% end_loop %>
		<% else %>
			<h4 class="center">You haven't got any active briefs.</h4>
		<% end_if %>
	</div>

	<div class="row tabs__tab inactive" id="archived-tab">
		<% if getArchivedBriefs %>
			<% loop getArchivedBriefs %>
			<% include Brief %>
			<% end_loop %>
		<% else %>
			<h4 class="center">You haven't got any archived briefs.</h4>
		<% end_if %>
	</div>

</div>
</div><!-- /.container -->



<div class="section sec_white">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<h3 class="center"><a class="accordion__toggle" data-accordion-target="briefForm" href="#">Create a new brief</a></h3>
				<div class="accordion__slide inactive" id="briefForm">
					$BriefForm
				</div>
			</div>
		</div>

	</div>
</div>