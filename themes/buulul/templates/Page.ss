<!DOCTYPE html>
<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]--> 
<html lang="$ContentLocale" xml:lang="$ContentLocale" xmlns= "http://www.w3.org/1999/xhtml">
<head>
  <% base_tag %>
  $MetaTags(false)
  <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  $MetaTags(false)
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
  <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css' />
  <link rel="stylesheet" href="$ThemeDir/cleancanvas/css/compiled/cleancanvas.css">
  <link rel="stylesheet" href="$ThemeDir/css/stylesheets/screen.css">
</head>
<body style="padding-top: 0;">
  <% include Header %>
  <main class="$URLSegment">
    $Layout
  </main>
  <% include Footer %>
  <script src="//code.jquery.com/jquery-latest.js"></script>
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  <script src="$ThemeDir/javascript/jquery.lazyload.min.js" type="text/javascript"></script>
  <script src="$ThemeDir/cleancanvas/js/theme.js"></script>
  <script src="$ThemeDir/cleancanvas/js/jquery.isotope.min.js"></script>
  <script src="$ThemeDir/cleancanvas/js/flexslider.js"></script>
  <script src="$ThemeDir/cleancanvas/js/index-slider.js"></script>
  <script src="$ThemeDir/cleancanvas/js/jquery.countdown.min.js"></script>
  <script src="$ThemeDir/javascript/custom.buulul.js" type="text/javascript"></script>
  <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/jquery.validate.js" type="text/javascript"></script>
  
  <% include Analyticstracking %>
</body>
</html>

