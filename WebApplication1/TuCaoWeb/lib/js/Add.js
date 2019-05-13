window.onload = function () {
    //获取网址
    var n = window.location.href;
    //根据’name=‘切割
    var arr = n.split('name=');
    //把用户名保存到变量a
    var a = arr[1];

    if (a != undefined) {
        $("#login_btn").hide();
        $("#helloId").show();
        //$('#hello').val('欢迎你' + a)
        $('#hello').text('欢迎你' + a);//更改i标签中的文字
    }
    else {
        $("#login_btn").show();
        $("#helloId").hide();
    }
}