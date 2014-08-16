<!DOCTYPE html>
<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->  
  
<html>
<head>
  <% base_tag %>
  $MetaTags(false)
  <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  $MetaTags(false)
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="$ThemeDir/cleancanvas/css/compiled/theme.css">
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css' />
  <link rel="stylesheet" href="$ThemeDir/cleancanvas/css/compiled/about.css">
  <link rel="stylesheet" href="$ThemeDir/cleancanvas/css/compiled/backgrounds.css">
  <link rel="stylesheet" href="$ThemeDir/cleancanvas/css/compiled/blogpost.css">
    <link rel="stylesheet" href="$ThemeDir/cleancanvas/css/compiled/blog.css">
  <link rel="stylesheet" href="$ThemeDir/cleancanvas/css/compiled/bootstrap-overrides.css">
  <link rel="stylesheet" href="$ThemeDir/cleancanvas/css/compiled/coming-soon.css">
  <link rel="stylesheet" href="$ThemeDir/cleancanvas/css/compiled/contact.css">
  <link rel="stylesheet" href="$ThemeDir/cleancanvas/css/compiled/features.css">
  <link rel="stylesheet" href="$ThemeDir/cleancanvas/css/compiled/index.css">
  <link rel="stylesheet" href="$ThemeDir/cleancanvas/css/compiled/portfolio-item.css">
  <link rel="stylesheet" href="$ThemeDir/cleancanvas/css/compiled/portfolio.css">
  <link rel="stylesheet" href="$ThemeDir/cleancanvas/css/compiled/pricing.css">
  <link rel="stylesheet" href="$ThemeDir/cleancanvas/css/lib/animate.css">
  <link rel="stylesheet" href="$ThemeDir/cleancanvas/css/lib/isotope.css">
  <link rel="stylesheet" href="$ThemeDir/cleancanvas/css/compiled/reset.css">
  <link rel="stylesheet" href="$ThemeDir/cleancanvas/css/compiled/services.css">
  <link rel="stylesheet" href="$ThemeDir/cleancanvas/css/compiled/sign-in.css">
  <link rel="stylesheet" href="$ThemeDir/cleancanvas/css/compiled/sign-up.css">
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
  <script src="$ThemeDir/cleancanvas/js/theme.js"></script>
  <script src="$ThemeDir/cleancanvas/js/jquery.isotope.min.js"></script>
  
  
  <script type="text/javascript">
        $(function(){

            var container = $('#gallery_container'), filters = $("#filters a");
            container.imagesLoaded(
                function(){
                  container.isotope({
                        itemSelector : '.photo',
                        masonry: {
                        columnWidth: 100
                    }
                });
            });

            // filter items when filter link is clicked
            filters.click(function() {
                filters.removeClass("active");
                $(this).addClass("active");
                var selector = $(this).data('filter');
                container.isotope({ filter: selector });
                return false;
            });
        
        
        });
    </script>
  
  <script src="$ThemeDir/cleancanvas/js/flexslider.js"></script>
  <script src="$ThemeDir/cleancanvas/js/index-slider.js"></script>
  <script src="$ThemeDir/cleancanvas/js/jquery.countdown.min.js"></script>
  
  
<% include Analyticstracking %>
</body>
</html>

