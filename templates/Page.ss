<!DOCTYPE html>
<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]>
<html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]>
<html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]>
<html lang="$ContentLocale" class="ie ie8"><![endif]-->
<head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# image: http://ogp.me/ns/image#">
    <% base_tag %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> | $SiteConfig.Title</title>
    $MetaTags(false)
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="/favicon.png"/>
    $SiteConfig.HeaderScripts.RAW
    <% require themedCSS('styles') %>
</head>
<body class="$FriendlyClassName" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
    <% include Header %>$Layout<% include Footer %>
    $SiteConfig.FooterScripts.RAW

    <% if $WebpackDevServer %><%-- Site javascript and CSS, compiled by webpack --%>
        <script src="http://localhost:3000/themes/default/javascript/dist/bundle.js"></script>
    <% else %>
        <% require themedJavascript('dist/vendors') %>
        <% require themedJavascript('dist/bundle') %>
    <% end_if %>
</body>
</html>