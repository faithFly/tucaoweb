<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Regist.aspx.cs" Inherits="TuCaoWeb.Regist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>注册</title>
    <link href="lib/css/Regist.css" rel="stylesheet" />
</head>
<body>
    <div id="head">
        <div id="logo">
            <a href="#">吐槽网注册界面</a>
        </div>
        <div>

        </div>
       
    </div>
     <div id="wrap">
            <div id="wrap_bg">

            </div>
            <div id="login">
                <form id="logform" runat="server">
                    <p>
                    <asp:Label ID="Label1" runat="server" Text="用&nbsp&nbsp户&nbsp&nbsp名：" Font-Size="30px"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="180px"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="用户名不能为空" ForeColor="Red"></asp:RequiredFieldValidator>

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
                    <asp:Label ID="Label4" runat="server" Text="设置头像：" Font-Size="30px"></asp:Label>
                        <asp:FileUpload ID="FileUpload1" runat="server" Height="22px" Width="215px" /><asp:Button ID="Button2" runat="server" Text="上传" OnClick="Button2_Click" /><asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                    
                        <br />
                        <br />
                          <br />
                        <asp:Button ID="Button1" runat="server" Text="注册" Height="43px" Width="145px" OnClick="Button1_Click3"  />
                    <span id="logtoreg"><a href="Login.aspx">已有账号？赶紧去登录吧！</a></span>
                    
                </form>
                
            </div>
        </div>
    <div id="foot">
        <p>Copyright © 2013-2019 TuCaoWeb. All Rights Reserved. 吐槽网 版权所有</p>
    </div>
</body>
</html>
