<%@ page import="java.util.List" %>
<%@ page import="srzx.engine.Manage" %>
<%@ page import="java.sql.SQLOutput" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <style type="text/css">
        <!--
        body {
            margin-left: 3px;
            margin-top: 0px;
            margin-right: 3px;
            margin-bottom: 0px;
            font-size: 18;
            color: #d3eaef;
        }
        .STYLE1 {
            color: #e1e2e3;
            font-size: 12px;
        }
        .STYLE6 {color: #000000; font-size: 12; }
        .STYLE10 {
            color: #000000;
            font-size: 12px;
            text-align: center;
        }
        .STYLE19 {
            color: #344b50;
            font-size: 12px;
        }
        .STYLE21 {
            font-size: 12px;
            color: #3b6375;
        }
        .STYLE22 {
            font-size: 12px;
            color: #295568;
        }
        a:link {
            color: #0FF;
            text-decoration: none;
        }
        a:visited {
            text-decoration: none;
            color: #39F;
        }
        a:hover {
            text-decoration: none;
            color: #3F6;
        }
        a:active {
            text-decoration: none;
            color: #9F0;
        }
        .css1 {
            font-size: 18px;
        }

        -->
    </style>
    <script src="js/jquery-3.4.1.js"></script>
    <script>
        $(function () {
            $("#a1").click(function () {

                var arrId = "";
                $(".b2 tr").each(function () {

                    var b = $(this).find("#c3");
                    if (b.is(":checked")) {
                        arrId += "," + b.attr("value");


                    }


                })
                $.ajax({
                    type: "post",
                    url: "/abc?a=deleteall",
                    data: {arr: arrId},
                    dataType: "json",
                    success: function (g) {
                        // if ("1"==g){
                        //     window.location="/admin-templates/product_list.jsp"
                        // }

                    }
                })

            });
            $("#a2").click(function () {
                alert("11")

                var arrId = "";
                var b = $(this).find("#c3");
                $(".b2 tr").each(function () {

                    var b = $(this).find("#c3");
                    if (b.is(":checked")) {
                        arrId += "," + b.attr("value");


                    }
                    // if (b.is(":checked")) {
                    //     arrId += "," + b.attr("value");


                    // }


                })
                $.ajax({
                    type: "post",
                    url: "/abc?a=huifu",
                    data: {arr: arrId},
                    dataType: "json",
                    success: function (g) {
                        // if ("2"==g){
                        //     window.location="/admin-templates/product_list.jsp"
                        // }
                    }

                })
            })
            //反选全选

        })
        $(function () {
            $("#aaa").click(function () {

                $("input[type='checkbox']").prop("checked",true);
            })

            $("#bbb").click(function () {
                $("input[type='checkbox']").each(function () {
                    $(this).prop("checked",!$(this).prop("checked"))

                })



            })

        })
    </script>
    <script>
        var  highlightcolor='#d5f4fe';
        //此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
        var  clickcolor='#51b2f6';
        function  changeto(){
            source=event.srcElement;
            if  (source.tagName=="TR"||source.tagName=="TABLE")
                return;
            while(source.tagName!="TD")
                source=source.parentElement;
            source=source.parentElement;
            cs  =  source.children;
//alert(cs.length);
            if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
                for(i=0;i<cs.length;i++){
                    cs[i].style.backgroundColor=highlightcolor;
                }
        }

        function  changeback(){
            if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
                return
            if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
                for(i=0;i<cs.length;i++){
                    cs[i].style.backgroundColor="";
                }
        }

        function  clickto(){
            source=event.srcElement;
            if  (source.tagName=="TR"||source.tagName=="TABLE")
                return;
            while(source.tagName!="TD")
                source=source.parentElement;
            source=source.parentElement;
            cs  =  source.children;
//alert(cs.length);
            if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
                for(i=0;i<cs.length;i++){
                    cs[i].style.backgroundColor=clickcolor;
                }
            else
                for(i=0;i<cs.length;i++){
                    cs[i].style.backgroundColor="";
                }
        }
    </script>

<%--    <%List<Manage> list=(List<Manage>)request.getAttribute("manage");%>--%>
</head>

<body>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" >
    <tr>
        <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td height="24" bgcolor="#173345"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="6%" height="19" valign="bottom"><div align="center"><img src="images/tb.gif" width="14" height="14" /></div></td>
                                <td width="94%" align="center" valign="bottom"><span class="STYLE1"> <span class="css1">管理员信息</span></span></td>
                            </tr>
                        </table></td>
                        <td><div align="right"><span class="STYLE1"> &nbsp;</span></div></td>
                    </tr>
                </table></td>
            </tr>
        </table></td>

    </tr>
    <form action="/abc?a=" method="post" enctype="multipart/form-data">


    <input type="text" class="textbox textbox_225" placeholder="输入账号名字/关键字查询..." name="ddd"/>
    <button type="submit" class="btn btn-default">查询</button>
    </form>
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="b2">
    <tr>
        <td align="center"><table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce" onmouseover="changeto()"  onmouseout="changeback()">
            <tr>
                <td width="10%" height="20" bgcolor="d3eaef" class="STYLE10"><span class="css1">请选择</span></td>
                <td width="10%" height="20" bgcolor="d3eaef" class="STYLE10"><span class="css1">编号</span></td>
                <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center" class="STYLE10"><span class="css1">商品名</span></div></td>
                <td width="10%" bgcolor="d3eaef" class="STYLE6"><div align="center" class="STYLE10"><span class="css1">图片</span></div></td>
                <td width="10%" bgcolor="d3eaef" class="STYLE6"><div align="center" class="STYLE10"><span class="css1">库存</span></div></td>
                <td width="10%" bgcolor="d3eaef" class="STYLE6"><div align="center" class="STYLE10"><span class="css1">销量</span></div></td>
                <td width="10%" bgcolor="d3eaef" class="STYLE6"><div align="center" class="STYLE10"><span class="css1">上架状态</span></div></td>
                <td width="10%" bgcolor="d3eaef" class="STYLE6"><div align="center" class="STYLE10"><span class="css1">售价</span></div></td>

                <td width="10%" bgcolor="d3eaef" class="STYLE6"><div align="center" class="STYLE10"><span class="css1">操作</span></div></td>
            </tr>
            <c:forEach var="m" items="${list}" varStatus="s">
            <tr class="STYLE6" >
                <td width="10%" bgcolor="#FFFFFF" class="STYLE6">
                    <input type="checkbox"  value="${m.id}" id="c3">${s.count}</td>
<%--                <td width="10%" height="60" bgcolor="#FFFFFF" class="STYLE6"><div align="center" class="STYLE6" id="c3">${m.id}</div></td>--%>
<%--                <input id="c3" value="${m.id}">--%>
                <td width="10%" height="60" bgcolor="#FFFFFF" class="STYLE6"><div align="center" class="STYLE6">${m.name}</div></td>
                <td width="10%" bgcolor="#FFFFFF" class="STYLE6"><div align="center" class="STYLE6"><img  width="30px" height="40px" src="image/${m.pics}"></div></td>
                <td width="10%" bgcolor="#FFFFFF" class="STYLE6">&nbsp;${m.store}</td>
                <td width="10%" bgcolor="#FFFFFF" class="STYLE6">&nbsp;${m.sell}</td>
                <td width="10%" bgcolor="#FFFFFF" class="STYLE6">${m.status==1?"上架":"下架"}</td>
                <td width="10%" bgcolor="#FFFFFF" class="STYLE6">&nbsp;</td>
    <td width="10%" bgcolor="#FFFFFF" class="STYLE6" style="text-align:center"><a href="/AdminServlet?a=update1&&id=${m.id}">修改</a><a href="/abc?a=delete&&id=${m.id}">删除</a> </td>
            </tr>
            </c:forEach>
        </table>
        </table></td>
    </tr>
    <tr>
        <td height="24">&nbsp;</td>
    </tr>
</table>
<div>共${pager.totalPage}页 共${pager.totalRecord}条
    <a href="/abc?a=look&pageIndex=${pager.pageIndex-1}"> 上一页  <a href="/abc?a=look&pageIndex=${pager.pageIndex+1}">下一页</a></div>
<p><input type="button" value="批量回复" id="a2" />
    <input type="button" value="批量下架" id="a1"/>
    <input type="button" value="批量导入excel"/>
    <input type="button" value="批量导出excel"/>
    <input type="button" value="全选" id="aaa"/>
    <input type="button" value="反选" id="bbb"/>
</p>

<p>
</p>
</body>
</html>
