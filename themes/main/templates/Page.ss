<!DOCTYPE html>
<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->



<head>
	<% base_tag %>
	<title>
		<% if Brief %>
			$Brief.Title
		<% else %>
			$Title · $SiteConfig.Title
		<% end_if %>
	</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
	<meta name="description" content="$SiteConfig.SiteDescription">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

	$MetaTags(false)
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<% require themedCSS('bootstrap.min') %>
	<% require themedCSS('bootstrap-theme.min') %>
	<% require themedCSS('video-js.min') %>
	<% require themedCSS('typography') %>
	<% require themedCSS('form') %>
	<% require themedCSS('layout') %>

	<script type="text/javascript" src="{$ThemeDir}/javascript/jquery.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<link rel="shortcut icon" href="$ThemeDir/images/favicon.png" />

	<link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:300,300i,400,400i,700,700i,800,800i|Merriweather:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">

</head>



<body class="$ClassName"<% if PageColor %> style="background-color: #$PageColor;"<% end_if %> <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>

	<% include Header %>

	<div class="main">
		<% include Banner %>
		<div class="container">
			$Layout
		</div>
	</div>

	<% include Footer %>

	<script type="text/javascript" src="{$ThemeDir}/javascript/site.js"></script>

</body>
</html>


