<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Views/Shared/backend.Master" Inherits="System.Web.Mvc.ViewPage<Mozzie.Models.Page>" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">页面</asp:Content>
<asp:Content ID="sidebar" ContentPlaceHolderID="SidebarContent" runat="server"> <a href="#" class="visible-phone"><i class="icon icon-th"></i>页面</a>
  <ul>
    <li><a href="/Admin/"><i class="icon icon-home"></i> <span>页面</span></a> </li>
    <li class="submenu" mozzie="posts"> <a href="#"><i class="icon icon-th-list"></i> <span>文章</span> <span class="label label-important">3</span></a>
      <ul>
        <li><a href="form-common.html">所有文章</a></li>
        <li><a href="form-validation.html">写文章</a></li>
        <li><%:Html.ActionLink("分类", "Index", new { controller = "Category" })%></li>
        <li><a href="form-wizard.html">标签</a></li>
      </ul>
    </li>
    <li class="submenu active open"> <a href="#"><i class="icon icon-th"></i> <span>页面</span> <span class="label label-important">4</span></a>
      <ul>
        <li class="active"><%:Html.ActionLink("所有页面", "Index","Page")%></li>
        <li><%:Html.ActionLink("新建页面", "Create","Page")%></li>
      </ul>
    </li>

    <li><a href="widgets.html"><i class="icon icon-inbox"></i> <span>插件</span></a> </li>
    <li class="submenu"> <a href="#"><i class="icon icon-file"></i> <span>外观主题</span> <span class="label label-important">5</span></a>
      <ul>
        <li><%:Html.ActionLink("主题", "Index","Theme")%></li>
        <li><a href="gallery.html">菜单</a></li>
        <li><a href="calendar.html">背景</a></li>
        <li><a href="chat.html">编辑</a></li>
      </ul>
    </li>
    <li><a href="grid.html"><i class="icon icon-fullscreen"></i> <span>Full width</span></a></li>
    <li><a href="buttons.html"><i class="icon icon-tint"></i> <span>Buttons &amp; icons</span></a></li>
    <li><a href="interface.html"><i class="icon icon-pencil"></i> <span>Eelements</span></a></li>
    
    <li class="submenu"> <a href="#"><i class="icon icon-info-sign"></i> <span>Error</span> <span class="label label-important">4</span></a>
      <ul>
        <li><a href="error403.html">Error 403</a></li>
        <li><a href="error404.html">Error 404</a></li>
        <li><a href="error405.html">Error 405</a></li>
        <li><a href="error500.html">Error 500</a></li>
      </ul>
    </li>
  </ul></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row-fluid">
    <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon">
            <div class="checker" id="uniform-title-checkbox"><span><input type="checkbox" id="title-checkbox" name="title-checkbox" style="opacity: 0;"/></span></div>
            </span>
            <h5>Static table with checkboxes</h5>
          </div>
          <div class="widget-content nopadding">
            <table class="table table-bordered table-striped with-check">
              <thead>
                <tr>
                  <th><i class="icon-resize-vertical"></i></th>
                  <th>标题</th>
                  <th>url</th>
                  <th>模版</th>
                  <th>日期</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><div class="checker" id="uniform-undefined"><span><input type="checkbox" style="opacity: 0;"></span></div></td>
                  <td>首页</td>
                  <td>/</td>
                  <td>example.master</td>
                  <td class="center"> 2013-07-26</td>
                </tr>
                <tr>
                  <td><div class="checker" id="uniform-undefined"><span><input type="checkbox" style="opacity: 0;"></span></div></td>
                  <td>Trident</td>
                  <td>Internet
                    Explorer 5.0</td>
                  <td>Win 95+</td>
                  <td class="center">5</td>
                </tr>
                <tr>
                  <td><div class="checker" id="uniform-undefined"><span><input type="checkbox" style="opacity: 0;"></span></div></td>
                  <td>Trident</td>
                  <td>Internet
                    Explorer 4.0</td>
                  <td>Win 95+</td>
                  <td class="center"> 4</td>
                </tr>
                <tr>
                  <td><div class="checker" id="uniform-undefined"><span><input type="checkbox" style="opacity: 0;"></span></div></td>
                  <td>Trident</td>
                  <td>Internet
                    Explorer 5.0</td>
                  <td>Win 95+</td>
                  <td class="center">5</td>
                </tr>
                <tr>
                  <td><div class="checker" id="uniform-undefined"><span><input type="checkbox" style="opacity: 0;"></span></div></td>
                  <td>Trident</td>
                  <td>Internet
                    Explorer 5.5</td>
                  <td>Win 95+</td>
                  <td class="center">5.5</td>
                </tr>
                <tr>
                  <td><div class="checker" id="uniform-undefined"><span><input type="checkbox" style="opacity: 0;"></span></div></td>
                  <td>Trident</td>
                  <td>Internet
                    Explorer 6</td>
                  <td>Win 98+</td>
                  <td class="center">6</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
  </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
<div id="breadcrumb"> <a href="#" title="返回控制台" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">页面</a> </div>
    <h1>所有页面</h1>
</asp:Content>