<a id="nav_btn" href="javascript:void(0)">
	<img src="$ThemeDir/images/menu.png" alt="Menu" width="30">
</a>

<div id="nav_mob" class="v-align">
<ul id="nav" class="v-align-inner">

	<% loop $Menu(1) %>
		<li><a href="$Link">$MenuTitle.XML</a></li>
	<% end_loop %>

	<% if CurrentMember %>
		<li><a href="Security/Logout">Logout</a></li>
	<% else %>
		<li><a href="Security/Login">Login</a></li>
	<% end_if %>

</ul>
</div>