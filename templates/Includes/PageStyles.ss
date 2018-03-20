<% if $WebpackDevServer %><%-- Site javascript and CSS, compiled by webpack --%>
<link rel="stylesheet" href="http://localhost:3000/themes/default/css/styles.css"/>
<% else %>
    <% require themedCSS('styles') %>
<% end_if %>