
<div id="blog">
        <div class="container">
            <div class="section_header">
                <h3>$Title</h3>
                <!-- <input type="text" class="search-query form-control" placeholder="Search"> -->
            </div>
            <div class="row post_row">
            <% loop $Children %>
                <div class="col-sm-3">
                    <h3>$Title</h3>
                    <div class="post">
                        <div class="img">
                            <a href="$Link" class="img-thumbnail">$ThumbnailImage.CroppedImage(227, 186)</a>
                        </div>
                    </div>    
                </div>
            <% end_loop %>
            </div>
        </div>
</div>

