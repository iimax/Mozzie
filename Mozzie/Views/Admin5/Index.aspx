<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Matrix.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">管理后台-关于</asp:Content>
<asp:Content ID="sidebar" ContentPlaceHolderID="SidebarContent" runat="server"> <a href="#" class="visible-phone"><i class="icon icon-th"></i>关于</a>
  <ul>
    <li class="active"><a href="/Admin/"><i class="icon icon-home"></i> <span>关于</span></a> </li>
    <li class="submenu" mozzie="posts"> <a href="#"><i class="icon icon-th-list"></i> <span>文章</span> <span class="label label-important">3</span></a>
      <ul>
        <li><a href="form-common.html">所有文章</a></li>
        <li><a href="form-validation.html">写文章</a></li>
        <li><%:Html.ActionLink("分类", "Category")%></li>
        <li><a href="form-wizard.html">标签</a></li>
      </ul>
    </li>
    <li><a href="tables.html"><i class="icon icon-th"></i> <span>页面</span></a></li>
    <li><a href="widgets.html"><i class="icon icon-inbox"></i> <span>插件</span></a> </li>
    <li><a href="grid.html"><i class="icon icon-fullscreen"></i> <span>Full width</span></a></li>
    <li><a href="buttons.html"><i class="icon icon-tint"></i> <span>Buttons &amp; icons</span></a></li>
    <li><a href="interface.html"><i class="icon icon-pencil"></i> <span>Eelements</span></a></li>
    <li class="submenu"> <a href="#"><i class="icon icon-file"></i> <span>Addons</span> <span class="label label-important">5</span></a>
      <ul>
        <li><a href="index2.html">Dashboard2</a></li>
        <li><a href="gallery.html">Gallery</a></li>
        <li><a href="calendar.html">Calendar</a></li>
        <li><a href="chat.html">Chat option</a></li>
      </ul>
    </li>
    <li class="submenu"> <a href="#"><i class="icon icon-info-sign"></i> <span>Error</span> <span class="label label-important">4</span></a>
      <ul>
        <li><a href="error403.html">Error 403</a></li>
        <li><a href="error404.html">Error 404</a></li>
        <li><a href="error405.html">Error 405</a></li>
        <li><a href="error500.html">Error 500</a></li>
      </ul>
    </li>
    <li><a href="charts.html"><i class="icon icon-signal"></i> <span>文章</span></a> </li>
    <li class="content"> <span>Monthly Bandwidth Transfer</span>
      <div class="progress progress-mini progress-danger active progress-striped">
        <div style="width: 77%;" class="bar"></div>
      </div>
      <span class="percent">77%</span>
      <div class="stat">21419.94 / 14000 MB</div>
    </li>
    <li class="content"> <span>Disk Space Usage</span>
      <div class="progress progress-mini active progress-striped">
        <div style="width: 87%;" class="bar"></div>
      </div>
      <span class="percent">87%</span>
      <div class="stat">604.44 / 4000 MB</div>
    </li>
  </ul></asp:Content>
<asp:Content ID="nav" ContentPlaceHolderID="NavContent" runat="server"><div id="breadcrumb"> <a href="#" title="返回控制台" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">关于</a> </div>
    <h1>关于</h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    后台模版 matrix.master<br />
    前台模版：site1.master 新建网站，需提供模版 siteN.master
</asp:Content>
