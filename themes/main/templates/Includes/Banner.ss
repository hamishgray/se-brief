
<div id="banner" class="dark">
	<div class="banner-inner">
		<div class="v-align-inner">
			<div class="container">
				<div class="row">

					<% if Brief %>
						<div class="col-md-12">
							<p class="h5">
								<% if Viewing %>Viewing<% end_if %>
								<% if Editing %>Editing<% end_if %>
							</p>
							<h2>$Brief.Title</h2>
							<% if Viewing %>
								<a class="button sm" href="
									javascript:(function(win%2Cname%2Cdesc)%7Bwin.open('https%3A%2F%2Ftrello.com%2Fadd-card'%2B'%3Fsource%3D'%2Bwin.location.host%2B'%26mode%3Dpopup'%2B'%26url%3D'%2BencodeURIComponent(win.location.href)%2B(name%3F'%26name%3D'%2BencodeURIComponent(name)%3A'')%2B(desc%3F'%26desc%3D'%2BencodeURIComponent(desc)%3A'')%2B'%26idList%3D582064fc29af523ecdf47629'%2C'add-trello-card'%2C'width%3D500%2Cheight%3D600%2Cleft%3D'%2B(win.screenX%2B(win.outerWidth-500)%2F2)%2B'%2Ctop%3D'%2B(win.screenY%2B(win.outerHeight-740)%2F2))%7D)(window%2Cdocument.title%2CgetSelection%3FgetSelection().toString()%3A'')">
									Create card on Trello
								</a>
								<a class="button sm" href="javascript:void(0);" id="CopyLink" onclick="CopyLink();">Copy URL</a>
							<% end_if %>
						</div>
					<% else %>
						<div class="col-md-12">
							<h2>$Title</h2>
						</div>
					<% end_if %>


				</div>
			</div>
		</div>
	</div>
</div>



<script>
function copyTextToClipboard(text) {
  var textArea = document.createElement("textarea");
  textArea.value = text;
  document.body.appendChild(textArea);
	textArea.value = text;
  textArea.select();
  try {
    var successful = document.execCommand('copy');
    var msg = successful ? 'successful' : 'unsuccessful';
    console.log('Copying text command was ' + msg);
  } catch (err) {
    console.log('Oops, unable to copy');
  }
  document.body.removeChild(textArea);
}

function CopyLink() {
  copyTextToClipboard(location.href);
	$('#CopyLink').html('Copied URL successfully');
}
</script>