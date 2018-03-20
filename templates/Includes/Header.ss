<header id="primaryheader">
    <div class="container">
        <div class="inner-wrapper">
            <div class="left">
                <div id="logo"><img src="/themes/default/images/logo.svg" alt="$SiteConfig.Title"/></div>
            </div>
            <div class="right">
                <div class="donate-btn">
                    <a href="#" class="btn btn-icon btn-primary"><i class="fab fa-paypal"></i> Help us Today</a><button type="button" class="btn btn-icon-only btn-secondary"><i class="fa fa-info-circle"></i></button>
                </div>
                <div id="logoMobile" class="visible-xs"><img src="/themes/default/images/logo-sm.svg" alt="$SiteConfig.Title"/></div>
                <div id="reHomed"><span data-count-to="529">0</span> Animals<br/>Rehomed<br/><span>Since 2012</span></div>
            </div>
        </div>
    </div>
</header>

<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <% loop $Menu(1) %>
                    <% if $Children %>
                        <li class="nav-item dropdown<% if $LinkingMode == 'current' %> active<% end_if %>">
                            <a class="nav-link dropdown-toggle" href="$Link" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                $MenuTitle.XML<% if $LinkingMode == 'current' %> <span class="sr-only">(current)</span><% end_if %>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <% loop $Children %>
                                    <a class="dropdown-item" href="$Link">$MenuTitle.XML</a>
                                <% end_loop %>
                            </div>
                        </li>
                    <% else %>
                        <li class="nav-item<% if $LinkingMode == 'current' %> active<% end_if %>">
                            <a class="nav-link" href="$Link">$MenuTitle.XML<% if $LinkingMode == 'current' %> <span class="sr-only">(current)</span><% end_if %></a>
                        </li>
                    <% end_if %>
                <% end_loop %>
            </ul>
            <ul class="navbar-nav navbar-right">
                <li class="nav-item">
                    <button class="nav-link btn btn-primary" href="$Link"><i class="fa fa-search"></i></button>
                </li>
            </ul>
        </div>
    </div>
</nav>