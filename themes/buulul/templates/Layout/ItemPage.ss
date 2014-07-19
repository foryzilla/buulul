<div id="blog">
    <div class="container">
        <div class="section_header">
            <h3>$Title</h3>
        </div>
        <div class="row">
            <div class="col-sm-8">
                <!-- ThumbnailImage.CroppedImage(582,360) -->
                <div id="map_canvas"></div>
                <div class="post_content">
                    <address>
                        <p>$Address<br>
                            $City $State $Country<br>
                            <span class="glyphicon glyphicon-earphone"></span>&nbsp;<a href="telephone: $Telephone">$Telephone</a><br>
                            <span>$RateableUI</span>
                        </p>
                    </address>
                </div>
            </div>
            <!-- SideBar -->
            <div class="col-sm-4">
                <div class="sidebar">
                    
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
  <script>
    function initialize() {
      var map_canvas = document.getElementById('map_canvas');
      var map_options = {
        center: new google.maps.LatLng($Latitude, $Longitude),
        zoom: 20,
        mapTypeId: google.maps.MapTypeId.ROADMAP
      }
      var map = new google.maps.Map(map_canvas, map_options);
    }
    google.maps.event.addDomListener(window, 'load', initialize);
  </script>