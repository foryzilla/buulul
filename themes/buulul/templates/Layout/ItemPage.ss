<div id="blog">
    <div class="container">
        <% loop $Parent %>
        <a href="categories/$Title" class="back-button btn btn-warning btn-xs">Back $Title</a>
        <% end_loop %>
        <div class="section_header">
            <h3>$Title</h3>
        </div>
        <div class="row">
            <div class="col-sm-8">
                <div id="map_canvas">
                    <iframe width="600" height="450" frameborder="0" style="border:0"
                            src="https://www.google.com/maps/embed/v1/search?q=$Title%20$City%20$State&key=AIzaSyAgUdL7BFSkTDJJkduX_qdN_LusFwauV_w"></iframe>
                </div>
                <div class="post_content">
                    <address>
                        <p>$Address<br><br>
                            $City $State $Country<br>
                            <span class="glyphicon glyphicon-earphone"></span>&nbsp;<a href="telephone: $Telephone">$Telephone</a><br><br>
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