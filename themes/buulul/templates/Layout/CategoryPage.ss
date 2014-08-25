<div id="blog" class="categories-container">        
        <div class="container">
            <script>
                document.write('<a href="' + document.referrer + '" class="back-button btn btn-warning btn-xs">Back To Categories</a>');
            </script>    
            <div class="section_header">
                <h3>$Title</h3>
                <!--<input type="text" class="search-query form-control" placeholder="Search">-->                 
            </div>
            <div class="row post_row">
            <% loop $Children %>
                <div class="col-sm-3 hidden-xs">
                    <div class="post">
                        <div class="img">
                            <a href="$Link">
                                <% loop ThumbnailImage.CroppedImage(251, 186) %>
                                <img data-original="$URL" class="lazy" />
                                <% end_loop %>
                            </a>
                        </div>
                        <div class="text">
                            <h5 class="text-center">$Title</h5>
                            <address>
                                $Address<br>
                                $City $State $Country<br>
                                <span class="glyphicon glyphicon-earphone"></span>&nbsp;<a href="telephone: $Telephone">$Telephone</a><br>
                                <% if $CurrentMember %>
                                     $RateableUI   
                                <% end_if %>
                            </address>
                        </div>
                    </div>
                </div>                
                <a href="$Link" class="visible-xs-block btn btn-primary btn-lg btn-block">
                        $Title $RateableUI
                </a>
            <% end_loop %>
            </div>
        </div>
</div>
