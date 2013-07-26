<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Views/Shared/backend.Master" Inherits="System.Web.Mvc.ViewPage<Mozzie.Models.Category>" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">分类目录</asp:Content>
<asp:Content ID="sidebar" ContentPlaceHolderID="SidebarContent" runat="server"> <a href="#" class="visible-phone"><i class="icon icon-th"></i>关于</a>
  <ul>
    <li><a href="/Admin/"><i class="icon icon-home"></i> <span>关于</span></a> </li>
    <li class="submenu active open" mozzie="posts"> <a href="#"><i class="icon icon-th-list"></i> <span>文章</span> <span class="label label-important">3</span></a>
      <ul>
        <li><a href="form-common.html">所有文章</a></li>
        <li><a href="form-validation.html">写文章</a></li>
        <li><%:Html.ActionLink("分类", "Index", new { controller = "Category" })%></li>
        <li><a href="form-wizard.html">标签</a></li>
      </ul>
    </li>
    <li><a href="tables.html"><i class="icon icon-th"></i> <span>页面</span></a></li>
    <li><a href="widgets.html"><i class="icon icon-inbox"></i> <span>插件</span></a> </li>
    <li class="submenu"> <a href="/Admin/Theme/"><i class="icon icon-file"></i> <span>外观主题</span> <span class="label label-important">5</span></a>
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
    <div class="span4">
      <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>添加新分类目录</h5>
        </div>
        <div class="widget-content nopadding">
          <% Html.BeginForm("Create", "Category", FormMethod.Post, new { name = "frmAddCate", id = "frmAddCate", @class = "form-horizontal form-horizontal-mozz" }); %>
            <div class="control-group">
              <label class="control-label">名称 :</label>
              <div class="controls">
                <%= Html.TextBox("Name", null, new { placeholder = "请输入分类名称",@class="span11" })%>
                <span class="help-block">这将是它在站点上显示的名字。<%= Html.ValidationMessage("Name")%></span>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">别名 :</label>
              <div class="controls">
                <%= Html.TextBox("Slug", null, new { placeholder = "请输入别名", @class = "span11" })%>
                <span class="help-block">“别名”是在 URL 中使用的别称，它可以令 URL 更美观。通常使用小写，只能包含字母，数字和连字符（-）。</span>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">父级</label>
              <div class="controls">
                <%=Html.DropDownList("list")%>
                <span class="help-block">分类目录和标签不同，它可以有层级关系。您可以有一个“音乐”分类目录，在这个目录下可以有叫做“流行”和“古典”的子目录。</span>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">描述</label>
              <div class="controls">
                <%=Html.TextArea("Desc", new { @class = "span11" })%>
                <span class="help-block">描述只会在一部分主题中显示。</span>
              </div>
            </div>
            <div class="form-actions">
              <button type="submit" class="btn btn-success">添加!</button>
            </div>
          <% Html.EndForm(); %>
        </div>
      </div>
    </div>
    <div class="span8">
      <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
            <h5>Static table</h5>
          </div>
          <div class="widget-content nopadding">
            <table class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>名称</th>
                  <th>别名</th>
                  <th>父级(s)</th>
                  <th>描述</th>
                  <th>CSS grade</th>
                </tr>
              </thead>
              <tbody>
                <% List<Mozzie.Models.Category> list = ViewData["cates"] as List<Mozzie.Models.Category>;
                   if (list != null && list.Count > 0)
                   {
                       var odd = true;
                       foreach (var item in list)
                       {
                           if (odd)
                           { 
                           %><tr class="odd gradeX"><% odd = !odd;
}
                           else { %><tr class="even gradeC"><% }%>
                  <td><%=item.ID %>.<%=item.Name %></td>
                  <td><%=item.Slug %></td>
                  <td><%=item.ParentID %></td>
                  <td> <%=item.Desc %></td>
                  <td class="center">X</td>
                </tr>
                           <%
                       }
                   }
                    %>
              </tbody>
            </table>
          </div>
        </div>
    </div>
  </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
<div id="breadcrumb"> <a href="#" title="返回控制台" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">分类目录</a> </div>
    <h1>分类目录</h1>
</asp:Content>