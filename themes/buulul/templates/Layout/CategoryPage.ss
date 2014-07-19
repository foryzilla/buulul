<div id="blog" class="categories-container">
        <div class="container">
            <div class="section_header">
                <h3>$Title</h3>
                <!--<input type="text" class="search-query form-control" placeholder="Search">-->
            </div>
            <div class="row post_row">
            <% loop $Children %>
                <div class="col-sm-3">
                    <div class="post">
                        <div class="img">
                            <a href="$Link">$ThumbnailImage.CroppedImage(251,186)</a>
                        </div>
                        <div class="text">
                            <h5 class="text-center">$Title</h5>
                            <address>
                                $Address<br>
                                $City $State $Country<br>
                                <span class="glyphicon glyphicon-earphone"></span>&nbsp;<a href="telephone: $Telephone">$Telephone</a><br>
                                <span>$RateableUI</span>
                            </address>
                            
                        </div>
                    </div>
                </div>    
            <% end_loop %>
            </div>
        </div>
</div>
$RateableUI 