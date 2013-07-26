<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/login.Master" Inherits="System.Web.Mvc.ViewPage<Mozzie.Models.UserModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Login
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<% Html.BeginForm("Login", "Admin", FormMethod.Post, new { name = "loginform", id = "loginform",@class = "form-vertical" }); %>
				 <div class="control-group normal_text"> <h3><img src="../../img/logo.png" alt="Logo" /></h3></div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lg"><i class="icon-user"></i></span><%= Html.TextBox("UserName", null, new { placeholder = "请输入用户名" })%>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_ly"><i class="icon-lock"></i></span>
                            <%: Html.PasswordFor(model => model.Password) %>
                            <%: Html.ValidationMessageFor(mode => Model.Password) %>
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link btn btn-info" id="to-recover">忘记密码?</a></span>
                    <span class="pull-right"><input type="submit" value="登录" class="btn btn-success" /><%--<a type="submit" href="index.html" class="btn btn-success" > 登录</a>--%></span>
                </div>
            <% Html.EndForm(); %>
            <form id="recoverform" action="#" class="form-vertical">
				<p class="normal_text">请在下方输入您的邮箱，我们将会发送邮件给您，并请按邮件指示重置密码。</p>
				
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lo"><i class="icon-envelope"></i></span><input type="text" placeholder="请输入您的邮箱" />
                        </div>
                    </div>
               
                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link btn btn-success" id="to-login">&laquo; 返回登录</a></span>
                    <span class="pull-right"><a class="btn btn-info"/>找回密码</a></span>
                </div>
            </form>
</asp:Content>
