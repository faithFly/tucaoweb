<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TuCaoWeb.Login" CodeFile="~/Login.aspx.cs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8 user-scalabel=0"/>
    <title>登录</title>
    <link href="lib/css/Login.css" rel="stylesheet" />
</head>
<body>
    <div id="head">
        <div id="logo">
            <a href="#">吐槽网登录界面</a>
        </div>
        <div>

        </div>
       
    </div>
     <div id="wrap">
            <div id="wrap_bg" style="background-image:url(/lib/src/bg.png);">

            </div>
            <div id="login">
                <form id="logform" runat="server">
                    <p>
                    <asp:Label ID="Label1" runat="server" Text="用&nbsp&nbsp户&nbsp&nbsp名：" Font-Size="30px"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="180px"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="用户名不能为空" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                </p>
                    <br />
                <p>
                     <asp:Label ID="Label2" runat="server" Text="密&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp码：" Font-Size="30px"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" Height="23px" Width="180px" TextMode="Password"></asp:TextBox>

                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="密码不能为空" ForeColor="Red"></asp:RequiredFieldValidator>

                </p>
                    <br />
                <p>
                    <asp:Label ID="Label3" runat="server" Text="确认密码：" Font-Size="30px"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" Height="23px" Width="180px" TextMode="Password"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="确认密码不能为空" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="两次密码不一致" ForeColor="Red"></asp:CompareValidator>

                </p>
                    <br />
                    <div id="otherlogin">
                        <p>使用其他方式登录</p>
                        <div id="other-con">

                            <div class="other-link">
                                <a href="#" title="邮箱">微信</a>
                            </div>

                            <div class="other-link">
                                <a href="#">腾讯QQ</a>

                            </div>

                            <div class="other-link">
                                <a href="#">新浪邮箱</a>

                            </div>
                        </div>
                        <br />
                        <br />
                          <br />
                        <asp:Button ID="Button1" runat="server" Text="登录" Height="43px" Width="145px" OnClick="Button1_Click1" /><span id="logtoreg"><a href="Regist.aspx">没有账号？赶紧注册一个吧！</a></span>
                    </div>
                </form>
                
            </div>
        </div>
    <div id="foot">
        <p>Copyright © 2013-2019 TuCaoWeb. All Rights Reserved. 吐槽网 版权所有</p>
    </div>
</body>
</html>
