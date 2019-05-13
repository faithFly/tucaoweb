<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="TuCaoWeb.Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>投稿</title>
    <link href="lib/css/top.css" rel="stylesheet" />
    <link href="lib/css/Add.css" rel="stylesheet" />
    <script src="lib/js/jQuery%20v.3.3.1.min.js"></script>
    <script src="lib/js/Add.js"></script>
</head>
<body>
    <div id="top">
        <div id="login">
            <div id="login_btn">
                <a href="Login.aspx">
                    <asp:Label ID="Label1" runat="server" Text="登录"></asp:Label></a>
                <span>|</span>
                <a href="Regist.aspx">
                    <asp:Label ID="Label2" runat="server" Text="注册"></asp:Label></a>
            </div>
            <div id="helloId">
                <i id="hello">content</i>
            </div>
        </div>

    </div>


    <div id="list">
        <ul>
            <li><a href="#" runat="server" onserverclick="Unnamed_ServerClick1">热门</a></li>
            <li><a href="#">精华</a></li>
            <li><a href="#">最新</a></li>
            <li><a href="#">投稿</a></li>
            <li><a href="#">手机版</a></li>
        </ul>
    </div>


    <form id="bg" runat="server" style="">
        <%--背景--%>
        <div id="con" style="">
            <%--背景内的大div--%>
            <div id="con_all" style="">
                <%--包含左右div的大div--%>
                <div id="con_left" style="">
                    <%--div左边小div--%>

                    <div id="con_left_top" style="">
                        <textarea id="TextArea1" name="S1" placeholder="分享一件闷骚事..." runat="server"></textarea>
                        照片：<asp:FileUpload ID="FileUpload1" runat="server" />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="上传" />
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </div>
                    <button id="con_foot_btn" style="" runat="server" onserverclick="Unnamed_ServerClick"><i id="con_foot_btnword" style="">投递</i></button>
                </div>
                <div id="con_right" style="">

                    <p>投稿须知</p>
                    <br />
                    <hr />
                    <br />
                    <p>1.只要是你或你朋友干过的闷骚事;真实有笑点,不含政治、色情、广告、诽谤、歧视等内容。</p>
                    <br />
                    <hr />
                    <br />
                    <p>2.闷骚事经过审核后发表。</p>
                    <br />
                    <hr />
                    <br />
                    <p>3.转载请注明出处。</p>
                    <br />
                    <hr />
                    <br />
                    <p>
                        4.投稿内容著作权、版权归骚年网网站所有。
                    </p>
                </div>
                <%--div右边小div--%>
            </div>
        </div>

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
