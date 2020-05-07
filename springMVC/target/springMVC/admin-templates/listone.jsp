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
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
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
    <tr>
        <td align="center"><table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce" onmouseover="changeto()"  onmouseout="changeback()">
            <tr>
                <td width="10%" height="20" bgcolor="d3eaef" class="STYLE10"><span class="css1">编号</span></td>
                <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center" class="STYLE10"><span class="css1">用户名</span></div></td>
                <td width="10%" bgcolor="d3eaef" class="STYLE6"><div align="center" class="STYLE10"><span class="css1">权限</span></div></td>
                <td width="10%" bgcolor="d3eaef" class="STYLE6"><div align="center" class="STYLE10"><span class="css1">电话</span></div></td>
                <td width="10%" bgcolor="d3eaef" class="STYLE6"><div align="center" class="STYLE10"><span class="css1">email</span></div></td>
                <td width="10%" bgcolor="d3eaef" class="STYLE6"><div align="center" class="STYLE10"><span class="css1">地址</span></div></td>
                <td width="10%" bgcolor="d3eaef" class="STYLE6"><div align="center" class="STYLE10"><span class="css1">备注</span></div></td>

                <td width="10%" bgcolor="d3eaef" class="STYLE6"><div align="center" class="STYLE10"><span class="css1">操作</span></div></td>
            </tr>

            <tr class="STYLE6">
<%--                <td width="10%" bgcolor="#FFFFFF" class="STYLE6"><input type="checkbox"></td>--%>
                <td width="10%" height="60" bgcolor="#FFFFFF" class="STYLE6"><div align="center" class="STYLE6">${m.id}</div></td>
                <td width="10%" height="60" bgcolor="#FFFFFF" class="STYLE6"><div align="center" class="STYLE6">${m.name}</div></td>
                <td width="10%" bgcolor="#FFFFFF" class="STYLE6"><div align="center" class="STYLE6">${m.role==1?"超级会员":"普通会员"}</div></td>
                <td width="10%" bgcolor="#FFFFFF" class="STYLE6">&nbsp;</td>
                <td width="10%" bgcolor="#FFFFFF" class="STYLE6">&nbsp;</td>
                <td width="10%" bgcolor="#FFFFFF" class="STYLE6">&nbsp;</td>
                <td width="10%" bgcolor="#FFFFFF" class="STYLE6">&nbsp;</td>
    <td width="10%" bgcolor="#FFFFFF" class="STYLE6" style="text-align:center"><a href="/UpdateServlet?id=${m.id}">修改</a><a href="/bbb?id=${m.id}">删除</a> </td>
            </tr>

        </table></td>
    </tr>
    <tr>
        <td height="24">&nbsp;</td>
    </tr>
</table>
<p><input type="submit" value="批量删除"/></p>
<p>
</p>
</body>
</html>
