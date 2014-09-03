<header id="mainHeader">
    <% include Navigation %>
</header>
<% if $CurrentMember %>
       <p>Welcome $FirstName $Surname.</p>
<% end_if %>
<%-- with $CurrentMember --%>                                        
       <!--<p>Welcome $FirstName $Surname.</p>-->
<%-- end_with --%>


 <% if Translations %>
        <ul class="translations">
        <% loop Translations %>
            <li class="$Locale.RFC1766">
              <a href="$Link" hreflang="$Locale.RFC1766" 
          title="$Title">
              <% sprintf(_t('SHOWINPAGE','Show page in %s'),$Locale.Nice) %>
             </a>
            </li>
        <% end_loop %>
        </ul>
    <% end_if %>