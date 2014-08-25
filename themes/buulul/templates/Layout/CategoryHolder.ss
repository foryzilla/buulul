<div id="blog">
        <div class="container">
            <div class="section_header">
                <h3>$Title</h3>                
            </div>
            <div class="row post_row">
            <% loop $Children %>
                <div class="col-sm-3">
                    <h3>$Title</h3>
                    <div class="post">
                        <div class="img lazy-loading-item">
                            <a href="$Link" class="img-thumbnail">
                                <% loop ThumbnailImage.CroppedImage(227, 186) %>
                                <img data-original="$URL" class="lazy" />
                                <% end_loop %>                               
                            </a>
                        </div>
                    </div>    
                </div>
            <% end_loop %>
            </div>
        </div>
</div>