<footer id="footer" class="dark"<% if SiteConfig.BrandColor %> style="background-color: #{$SiteConfig.BrandColor}"<% end_if %>>
	<div class="container">
		<div class="row">
			
			<div class="col-md-12 center">
				
				<% if $SiteConfig.Email %>
				<h4>
					<a href="mailto:$SiteConfig.Email" class="smoothScroll">Get in touch</a><br>
				</h4>
				<% end_if %>
				
				<p>
					<span class="small">Copyright © $Now.Year $SiteConfig.Title $SiteConfig.Tagline</span>
				</p>
				
			</div>
		
		</div>
	</div>
</footer>