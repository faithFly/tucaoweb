<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewWeb.aspx.cs" Inherits="TuCaoWeb.NewWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>热门</title>
    <link href="lib/css/top.css" rel="stylesheet" />
    <link href="lib/css/NewWeb.css" rel="stylesheet" />
    <script src="lib/js/jQuery%20v.3.3.1.min.js"></script>
    <script src="lib/js/newweb.js"></script>
</head>


<body>
    <div id="top">
        <div id="login">
            <div id="login_btn" style="">
                <a href="Login.aspx">
                    <asp:Label ID="Label1" runat="server" Text="登录"></asp:Label></a>
                <span>|</span>
                <a href="Regist.aspx">
                    <asp:Label ID="Label2" runat="server" Text="注册"></asp:Label></a>
            </div>
            <div id="helloId" style="">
                <i id="hello">content</i>
            </div>
        </div>
    </div>
    <div id="list">
        <ul>
            <li><a href="#" runat="server" onserverclick="Unnamed_ServerClick1">热门</a></li>
            <li><a href="#" runat="server" onserverclick="Unnamed_ServerClick2">精华</a></li>
            <li><a href="#" runat="server" onserverclick="Unnamed_ServerClick3">最新</a></li>
            <li><a href="#" runat="server" onserverclick="Unnamed_ServerClick">投稿</a></li>
            <li><a href="#">手机版</a></li>
        </ul>
    </div>
    <form id="form1" runat="server" style="">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>

                <div id="con" style="">
                    <br />
                    <div id="con_top" style="">
                        <img id="UserImg" src="lib/src/<%# Eval("UserImg") %>" width="60px" height="60px" style="" />
                        <span id="userName" style=""><i><%# Eval("UserName") %></i></span><br />

                    </div>
                    <br />
                    <div id="con_on" style="">
                        <p><%# Eval("Word") %></p>
                        <img src="lib/src/<%# Eval("WordImg") %>" height="120px" width="200px" onerror="this.style.display='none'" />
                    </div>
                    <br />
                    <div id="con_smile">
                        <p id="smile">这条段子一共有<%# Eval("Good") %>人觉得好笑</p>
                    </div>
                    <br />
                    <div style="width: 90%; height: 70px; margin: 0 auto;">
                        &nbsp<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/lib/src/01.jpg" Height="33px" Width="36px" />&nbsp
                             <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/lib/src/02.jpg" Height="33px" Width="36px" />&nbsp
                             <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/lib/src/03.jpg" Height="33px" Width="36px" />
                        <div style="float: right;">
                            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/lib/src/04.jpg" Height="33px" Width="36px" />
                        </div>




                    </div>
                </div>
                <br />
            </ItemTemplate>
        </asp:Repeater>
    </form>
    <div id="foot">
        <div id="list1">

            <ul>
                <li><a>招聘岗位</a></li>
                <li><a>意见反馈</a></li>
                <li><a>客户端</a></li>
                <li><a>官方QQ群</a></li>
                <li><a>糗西游</a></li>
            </ul>
        </div>
    </div>
</body>
</html>
