<% if $WebpackDevServer %><%-- Site javascript and CSS, compiled by webpack --%>
<script src="http://localhost:3000/themes/default/javascript/dist/bundle.js"></script>
<% else %>
    <% require themedJavascript('dist/vendors') %>
    <% require themedJavascript('dist/bundle') %>
<% end_if %>