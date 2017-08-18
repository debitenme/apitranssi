<%--
  Created by IntelliJ IDEA.
  User: wangfan
  Date: 2017/6/27
  Time: 21:57
  To change this template use File | Settings | File Templates.
--%>
<<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>silde-bar</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="/css/app.css" type="text/css"/>
</head>
<body>
<div class="app-aside hidden-xs bg-black" data-ng-include=" 'tpl/blocks/aside.html' ">
<div class="aside-wrap ng-scope">
    <!-- if you want to use a custom scroll when aside fixed, use the slimScroll
      <div class="navi-wrap" ui-jq="slimScroll" ui-options="{height:'100%', size:'8px'}">
    -->
    <div class="navi-wrap">
        <!-- user -->
        <div class="clearfix hidden-xs text-center hide" id="aside-user">
            <div class="dropdown wrapper" dropdown="">
                <a ui-sref="app.page.profile" href="#/app/page/profile">
          <span class="thumb-lg w-auto-folded avatar m-t-sm">
            <img src="img/a0.jpg" class="img-full" alt="...">
          </span>
                </a>
                <a href="" class="dropdown-toggle hidden-folded" dropdown-toggle="" aria-haspopup="true" aria-expanded="false">
          <span class="clear">
            <span class="block m-t-sm">
              <strong class="font-bold text-lt">John.Smith</strong>
              <b class="caret"></b>
            </span>
            <span class="text-muted text-xs block">Art Director</span>
          </span>
                </a>
                <!-- dropdown -->
                <ul class="dropdown-menu animated fadeInRight w hidden-folded">
                    <li class="wrapper b-b m-b-sm bg-info m-t-n-xs">
                        <span class="arrow top hidden-folded arrow-info"></span>
                        <div>
                            <p>300mb of 500mb used</p>
                        </div>
                        <div class="progress-xs m-b-none dker progress ng-isolate-scope" value="60" type="white">
                            <div class="progress-bar progress-bar-white" ng-class="type &amp;&amp; 'progress-bar-' + type" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" ng-style="{width: percent + '%'}" aria-valuetext="60%" ng-transclude="" style="width: 60%;"></div>
                        </div>
                    </li>
                    <li>
                        <a href="">Settings</a>
                    </li>
                    <li>
                        <a ui-sref="app.page.profile" href="#/app/page/profile">Profile</a>
                    </li>
                    <li>
                        <a href="">
                            <span class="badge bg-danger pull-right">3</span>
                            Notifications
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a ui-sref="access.signin" href="#/access/signin">Logout</a>
                    </li>
                </ul>
                <!-- / dropdown -->
            </div>
            <div class="line dk hidden-folded"></div>
        </div>
        <!-- / user -->

        <!-- nav -->
        <!-- ngInclude: 'tpl/blocks/nav.html' --><nav ui-nav="" class="navi ng-scope" ng-include="'tpl/blocks/nav.html'"><!-- list -->
        <ul class="nav ng-scope">
            <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                <span translate="aside.nav.HEADER" class="ng-scope">Navigation</span>
            </li>
            <li>
                <a href="" class="auto">
      <span class="pull-right text-muted">
        <i class="fa fa-fw fa-angle-right text"></i>
        <i class="fa fa-fw fa-angle-down text-active"></i>
      </span>
                    <i class="glyphicon glyphicon-stats icon text-primary-dker"></i>
                    <span class="font-bold ng-scope" translate="aside.nav.DASHBOARD">Dashboard</span>
                </a>
                <ul class="nav nav-sub dk">
                    <li class="nav-sub-header">
                        <a href="">
                            <span translate="aside.nav.DASHBOARD" class="ng-scope">Dashboard</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="app.dashboard-v1" href="#/app/dashboard-v1">
                            <span>Dashboard v1</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="app.dashboard-v2" href="#/app/dashboard-v2">
                            <b class="label bg-info pull-right">N</b>
                            <span>Dashboard v2</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li ui-sref-active="active">
                <a ui-sref="app.calendar" href="#/app/calendar">
                    <i class="glyphicon glyphicon-calendar icon text-info-dker"></i>
                    <span class="font-bold ng-scope" translate="aside.nav.CALENDAR">Calendar</span>
                </a>
            </li>
            <li ui-sref-active="active">
                <a ui-sref="app.mail.list" href="#/app/mail/inbox/">
                    <b class="badge bg-info pull-right">9</b>
                    <i class="glyphicon glyphicon-envelope icon text-info-lter"></i>
                    <span class="font-bold ng-scope" translate="aside.nav.EMAIL">Email</span>
                </a>
            </li>
            <li>
                <a href="" class="auto">
      <span class="pull-right text-muted">
        <i class="fa fa-fw fa-angle-right text"></i>
        <i class="fa fa-fw fa-angle-down text-active"></i>
      </span>
                    <i class="glyphicon glyphicon-th-large icon text-success"></i>
                    <span class="font-bold">Apps</span>
                </a>
                <ul class="nav nav-sub dk">
                    <li class="nav-sub-header">
                        <a href="">
                            <span>Apps</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="apps.note" href="#/apps/note">
                            <span>Note</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="apps.contact" href="#/apps/contact">
                            <span>Contacts</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="app.weather" href="#/app/weather">
                            <span>Weather</span>
                        </a>
                    </li>
                </ul>
            </li>

            <li class="line dk"></li>

            <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                <span translate="aside.nav.components.COMPONENTS" class="ng-scope">Components</span>
            </li>
            <li>
                <a href="" class="auto">
      <span class="pull-right text-muted">
        <i class="fa fa-fw fa-angle-right text"></i>
        <i class="fa fa-fw fa-angle-down text-active"></i>
      </span>
                    <b class="badge bg-info pull-right">3</b>
                    <i class="glyphicon glyphicon-th"></i>
                    <span>Layout</span>
                </a>
                <ul class="nav nav-sub dk">
                    <li class="nav-sub-header">
                        <a href="">
                            <span>Layout</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="layout.app" href="#/layout/app">
                            <span>Application</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="layout.fullwidth" href="#/layout/fullwidth">
                            <span>Full width</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="layout.mobile" href="#/layout/mobile">
                            <span>Mobile</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li ng-class="{active:$state.includes('app.ui')}" class="">
                <a href="" class="auto">
      <span class="pull-right text-muted">
        <i class="fa fa-fw fa-angle-right text"></i>
        <i class="fa fa-fw fa-angle-down text-active"></i>
      </span>
                    <i class="glyphicon glyphicon-briefcase icon"></i>
                    <span translate="aside.nav.components.ui_kits.UI_KITS" class="ng-scope">UI Kits</span>
                </a>
                <ul class="nav nav-sub dk">
                    <li class="nav-sub-header">
                        <a href="">
                            <span translate="aside.nav.components.ui_kits.UI_KITS" class="ng-scope">UI Kits</span>
                        </a>
                    </li>
                    <li ui-sref-active="active" class="">
                        <a ui-sref="app.ui.buttons" href="#/app/ui/buttons">
                            <span translate="aside.nav.components.ui_kits.BUTTONS" class="ng-scope">Buttons</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="app.ui.icons" href="#/app/ui/icons">
                            <b class="badge bg-info pull-right">3</b>
                            <span translate="aside.nav.components.ui_kits.ICONS" class="ng-scope">Icons</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="app.ui.grid" href="#/app/ui/grid">
                            <span translate="aside.nav.components.ui_kits.GRID" class="ng-scope">Grid</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="app.ui.widgets" href="#/app/ui/widgets">
                            <b class="badge bg-success pull-right">13</b>
                            <span translate="aside.nav.WIDGETS" class="ng-scope">Widgets</span>
                        </a>
                    </li>
                    <li ui-sref-active="active" class="">
                        <a ui-sref="app.ui.bootstrap" href="#/app/ui/bootstrap">
                            <b class="badge bg-primary pull-right">16</b>
                            <span translate="aside.nav.components.ui_kits.BOOTSTRAP" class="ng-scope">Bootstrap</span>
                        </a>
                    </li>
                    <li ui-sref-active="active" class="">
                        <a ui-sref="app.ui.sortable" href="#/app/ui/sortable">
                            <span translate="aside.nav.components.ui_kits.SORTABLE" class="ng-scope">Sortable</span>
                        </a>
                    </li>
                    <li ui-sref-active="active" class="">
                        <a ui-sref="app.ui.portlet" href="#/app/ui/portlet">
                            <span translate="aside.nav.components.ui_kits.PORTLET" class="ng-scope">Portlet</span>
                        </a>
                    </li>
                    <li ui-sref-active="active" class="">
                        <a ui-sref="app.ui.timeline" href="#/app/ui/timeline">
                            <span translate="aside.nav.components.ui_kits.TIMELINE" class="ng-scope">Timeline</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="app.ui.tree" href="#/app/ui/tree">
                            <span>Tree</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="app.ui.toaster" href="#/app/ui/toaster">
                            <span>Toaster</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="app.ui.jvectormap" href="#/app/ui/jvectormap">
                            <span translate="aside.nav.components.ui_kits.VECTOR_MAP" class="ng-scope">Vector Map</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="app.ui.googlemap" href="#/app/ui/googlemap">
                            <span>Google Map</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li ng-class="{active:$state.includes('app.table')}" class="active">
                <a href="" class="auto">
      <span class="pull-right text-muted">
        <i class="fa fa-fw fa-angle-right text"></i>
        <i class="fa fa-fw fa-angle-down text-active"></i>
      </span>
                    <b class="label bg-primary pull-right">2</b>
                    <i class="glyphicon glyphicon-list"></i>
                    <span translate="aside.nav.components.table.TABLE" class="ng-scope">Table</span>
                </a>
                <ul class="nav nav-sub dk">
                    <li class="nav-sub-header">
                        <a href="">
                            <span translate="aside.nav.components.table.TABLE" class="ng-scope">Table</span>
                        </a>
                    </li>
                    <li ui-sref-active="active" class="">
                        <a ui-sref="app.table.static" href="#/app/table/static">
                            <span translate="aside.nav.components.table.TABLE_STATIC" class="ng-scope">Table static</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="app.table.datatable" href="#/app/table/datatable">
                            <span translate="aside.nav.components.table.DATATABLE" class="ng-scope">Datatable</span>
                        </a>
                    </li>
                    <li ui-sref-active="active" class="active">
                        <a ui-sref="app.table.footable" href="#/app/table/footable">
                            <span translate="aside.nav.components.table.FOOTABLE" class="ng-scope">Footable</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="app.table.grid" href="#/app/table/grid">
                            <span>ngGrid</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li ng-class="{active:$state.includes('app.form')}">
                <a href="" class="auto">
      <span class="pull-right text-muted">
        <i class="fa fa-fw fa-angle-right text"></i>
        <i class="fa fa-fw fa-angle-down text-active"></i>
      </span>
                    <i class="glyphicon glyphicon-edit"></i>
                    <span translate="aside.nav.components.form.FORM" class="ng-scope">Form</span>
                </a>
                <ul class="nav nav-sub dk">
                    <li class="nav-sub-header">
                        <a href="">
                            <span translate="aside.nav.components.form.FORM" class="ng-scope">Form</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="app.form.elements" href="#/app/form/elements">
                            <span translate="aside.nav.components.form.FORM_ELEMENTS" class="ng-scope">Form elements</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="app.form.validation" href="#/app/form/validation">
                            <span translate="aside.nav.components.form.FORM_VALIDATION" class="ng-scope">Form validation</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="app.form.wizard" href="#/app/form/wizard">
                            <span translate="aside.nav.components.form.FORM_WIZARD" class="ng-scope">Form wizard</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="app.form.fileupload" href="#/app/form/fileupload">
                            <span>File upload</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="app.form.imagecrop" href="#/app/form/imagecrop">
                            <span>Image crop</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="app.form.select" href="#/app/form/select">
                            <span>Select</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="app.form.slider" href="#/app/form/slider">
                            <span>Slider</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="app.form.editor" href="#/app/form/editor">
                            <span>Editor</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li ui-sref-active="active">
                <a ui-sref="app.chart" href="#/app/chart">
                    <i class="glyphicon glyphicon-signal"></i>
                    <span translate="aside.nav.components.CHART" class="ng-scope">Chart</span>
                </a>
            </li>
            <li ng-class="{active:$state.includes('app.page')}">
                <a href="" class="auto">
      <span class="pull-right text-muted">
        <i class="fa fa-fw fa-angle-right text"></i>
        <i class="fa fa-fw fa-angle-down text-active"></i>
      </span>
                    <i class="glyphicon glyphicon-file icon"></i>
                    <span translate="aside.nav.components.pages.PAGES" class="ng-scope">Pages</span>
                </a>
                <ul class="nav nav-sub dk">
                    <li class="nav-sub-header">
                        <a href="">
                            <span translate="aside.nav.components.pages.PAGES" class="ng-scope">Pages</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="app.page.profile" href="#/app/page/profile">
                            <span translate="aside.nav.components.pages.PROFILE" class="ng-scope">Profile</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="app.page.post" href="#/app/page/post">
                            <span translate="aside.nav.components.pages.POST" class="ng-scope">Post</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="app.page.search" href="#/app/page/search">
                            <span translate="aside.nav.components.pages.SEARCH" class="ng-scope">Search</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="app.page.invoice" href="#/app/page/invoice">
                            <span translate="aside.nav.components.pages.INVOICE" class="ng-scope">Invoice</span>
                        </a>
                    </li>
                    <li ui-sref-active="active">
                        <a ui-sref="app.page.price" href="#/app/page/price">
                            <span>Price</span>
                        </a>
                    </li>
                    <li>
                        <a ui-sref="lockme" href="#/lockme">
                            <span translate="aside.nav.components.pages.LOCK_SCREEN" class="ng-scope">Lock screen</span>
                        </a>
                    </li>
                    <li>
                        <a ui-sref="access.signin" href="#/access/signin">
                            <span translate="aside.nav.components.pages.SIGNIN" class="ng-scope">Signin</span>
                        </a>
                    </li>
                    <li>
                        <a ui-sref="access.signup" href="#/access/signup">
                            <span translate="aside.nav.components.pages.SIGNUP" class="ng-scope">Signup</span>
                        </a>
                    </li>
                    <li>
                        <a ui-sref="access.forgotpwd" href="#/access/forgotpwd">
                            <span translate="aside.nav.components.pages.FORGOT_PASSWORD" class="ng-scope">Forgot password</span>
                        </a>
                    </li>
                    <li>
                        <a ui-sref="access.404" href="#/access/404">
                            <span translate="aside.nav.components.pages.404" class="ng-scope">404</span>
                        </a>
                    </li>
                </ul>
            </li>

            <li class="line dk hidden-folded"></li>

            <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                <span translate="aside.nav.your_stuff.YOUR_STUFF" class="ng-scope">Your Stuff</span>
            </li>
            <li>
                <a ui-sref="app.page.profile" href="#/app/page/profile">
                    <i class="icon-user icon text-success-lter"></i>
                    <b class="badge bg-success pull-right">30%</b>
                    <span translate="aside.nav.your_stuff.PROFILE" class="ng-scope">Profile</span>
                </a>
            </li>
            <li>
                <a ui-sref="app.docs" href="#/app/docs">
                    <i class="icon-question icon"></i>
                    <span translate="aside.nav.your_stuff.DOCUMENTS" class="ng-scope">Documents</span>
                </a>
            </li>
        </ul>
        <!-- / list --></nav>
        <!-- nav -->

        <!-- aside footer -->
        <div class="wrapper m-t">
            <div class="text-center-folded">
                <span class="pull-right pull-none-folded">60%</span>
                <span class="hidden-folded ng-scope" translate="aside.MILESTONE">Milestone</span>
            </div>
            <div class="progress-xxs m-t-sm dk progress ng-isolate-scope" value="60" type="info">
                <div class="progress-bar progress-bar-info" ng-class="type &amp;&amp; 'progress-bar-' + type" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" ng-style="{width: percent + '%'}" aria-valuetext="60%" ng-transclude="" style="width: 60%;"></div>
            </div>
            <div class="text-center-folded">
                <span class="pull-right pull-none-folded">35%</span>
                <span class="hidden-folded ng-scope" translate="aside.RELEASE">Release</span>
            </div>
            <div class="progress-xxs m-t-sm dk progress ng-isolate-scope" value="35" type="primary">
                <div class="progress-bar progress-bar-primary" ng-class="type &amp;&amp; 'progress-bar-' + type" role="progressbar" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100" ng-style="{width: percent + '%'}" aria-valuetext="35%" ng-transclude="" style="width: 35%;"></div>
            </div>
        </div>
        <!-- / aside footer -->
    </div>
</div>
</div>

</body>
</html>
