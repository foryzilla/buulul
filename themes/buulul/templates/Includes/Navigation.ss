<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
          <div class="navbar-header">
              <button type="button" class="navbar-toggle pull-right" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
              </button>
              <a href="categories/" class="navbar-brand">
		<strong>
			$SiteConfig.Title
		</strong>
	      </a>
          </div>
          <div class="collapse navbar-collapse navbar-ex1-collapse" role="navigation">
           <% if $Menu(1) %> 
              <ul class="nav navbar-nav navbar-right">
              <% loop $Menu(1) %>
                  <li>
			<a href="$Link" title="Go to the $Title page" class="$LinkingMode active">$MenuTitle.XML</a>			
		  </li>
              <% end_loop %>
              </ul>
            <% end_if %>  
          </div>
      </div>
  </div>