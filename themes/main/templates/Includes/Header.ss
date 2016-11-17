<div id="header" class="dark">

	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<a class="brand" href="$BaseHref">
					<% if SiteConfig.Logo %>
						<img src="$SiteConfig.Logo.URL"/>
					<% else %>
						$SiteConfig.Title
					<% end_if %>
				</a>


				<% include Navigation %>


			</div>
		</div>
	</div>

</div>