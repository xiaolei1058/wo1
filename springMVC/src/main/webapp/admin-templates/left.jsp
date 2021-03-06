<%@ page import="java.util.List" %>
<%@ page import="srzx.engine.Manage" %>
<%@ page import="java.sql.SQLOutput" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>

<title>管理页面</title>

<script src="js/prototype.lite.js" type="text/javascript"></script>
<script src="js/moo.fx.js" type="text/javascript"></script>
<script src="js/moo.fx.pack.js" type="text/javascript"></script>
<style>
body {
	font:12px Arial, Helvetica, sans-serif;
	color: #000;
	background-color: #EEF2FB;
	margin: 0px;
}
#container {
	width: 182px;
}
H1 {
	font-size: 12px;
	margin: 0px;
	width: 182px;
	cursor: pointer;
	height: 30px;
	line-height: 20px;
}
H1 a {
	display: block;
	width: 182px;
	color: #000;
	height: 30px;
	text-decoration: none;
	moz-outline-style: none;
	background-image: url(images/menu_bgS.gif);
	background-repeat: no-repeat;
	line-height: 30px;
	text-align: center;
	margin: 0px;
	padding: 0px;
}
.content{
	width: 182px;
	height: 26px;

}
.MM ul {
	list-style-type: none;
	margin: 0px;
	padding: 0px;
	display: block;
}
.MM li {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	list-style-type: none;
	display: block;
	text-decoration: none;
	height: 26px;
	width: 182px;
	padding-left: 0px;
}
.MM {
	width: 182px;
	margin: 0px;
	padding: 0px;
	left: 0px;
	top: 0px;
	right: 0px;
	bottom: 0px;
	clip: rect(0px,0px,0px,0px);
}
.MM a:link {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}
.MM a:visited {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}
.MM a:active {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}
.MM a:hover {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	font-weight: bold;
	color: #006600;
	background-image: url(images/menu_bg2.gif);
	background-repeat: no-repeat;
	text-align: center;
	display: block;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}
</style>
</head>

<%--<body>--%>

<%--<table width="100%" height="280" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB">--%>
<%--  <tr>--%>



<%--    <td width="182" valign="top"><div id="container">--%>
<%--      <h1 class="type"><a href="javascript:void(0)">--%>
<%--          <div class="content">&ndash;%&gt;--%>
<%--                      <table width="100%" border="0" cellspacing="0" cellpadding="0">--%>
<%--                        <tr>--%>
<%--                          <td><img src="images/menu_topline.gif" width="182" height="5" /></td>--%>
<%--                        </tr>--%>
<%--                      </table>--%>
<%--        <c:forEach var="pro" items="${menu}">--%>
<%--          <ul class="MM"><a href="#">${pro.name}</a>--%>
<%--           <div class="chilInPorNav">--%>
<%--                <c:forEach items="${pro.son}" var="p2">--%>
<%--                    <li>   <a href="${p2.url}" target="main">${p2.name}</a</li>--%>
<%--                </c:forEach>--%>

<%--        </div>--%>
<%--            <!--chilLeftNav/-->--%>
<%--          </ul>--%>
<%--        </c:forEach>--%>

<%--      </a></h1>--%>
<%--      <div class="content">--%>
<%--        <table width="100%" border="0" cellspacing="0" cellpadding="0">--%>
<%--          <tr>--%>
<%--            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>--%>
<%--          </tr>--%>
<%--        </table>--%>
<%--        <ul class="MM">--%>
<%--          <li><a href="/oo/list" target="main">管理员列表</a></li>--%>
<%--          <li><a href="/admin-templates/admin_add.jsp" target="main">添加管理员</a></li>--%>

<%--        </ul>--%>
<%--      </div>--%>

<%--      <h1 class="type"><a href="">商品类型管理</a></h1>--%>
<%--      <div class="content">--%>
<%--        <table width="100%" border="0" cellspacing="0" cellpadding="0">--%>
<%--          <tr>--%>
<%--            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>--%>
<%--          </tr>--%>
<%--        </table>--%>
<%--        <ul class="MM">--%>
<%--          <li><a href="/GoodsType01Servlet" target="main">商品一级分类列表</a></li>--%>
<%--          <li><a href="admin_add.html" target="main">添加分类</a></li>--%>
<%--          <li><a href="admin_add.html" target="main">已删除分类</a></li>--%>
<%--        </ul>--%>
<%--      </div>--%>

<%--      <h1 class="type"><a href="javascript:void(0)">商品管理</a></h1>--%>
<%--      <div class="content">--%>
<%--        <table width="100%" border="0" cellspacing="0" cellpadding="0">--%>
<%--          <tr>--%>
<%--            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>--%>
<%--          </tr>--%>
<%--        </table>--%>
<%--        <ul class="MM">--%>
<%--          <li><a href="/pp/findall" target="main">商品列表</a></li>--%>
<%--          <li><a href="/admin-templates/product_add.jsp" target="main">添加商品</a></li>--%>
<%--          <li><a href="/goods/goods_add.jsp" target="main">已下架商品</a></li>--%>
<%--          <li><a href="/goods/goods_add.jsp" target="main">回收站商品</a></li>--%>
<%--        </ul>--%>
<%--      </div>--%>

<%--      <h1 class="type"><a href="javascript:void(0)">订单管理</a></h1>--%>
<%--      <div class="content">--%>
<%--        <table width="100%" border="0" cellspacing="0" cellpadding="0">--%>
<%--          <tr>--%>
<%--            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>--%>
<%--          </tr>--%>
<%--        </table>--%>
<%--        <ul class="MM">--%>
<%--          <li><a href="/managerList" target="main">管理员列表</a></li>--%>
<%--          <li><a href="admin_add.html" target="main">添加管理员</a></li>--%>

<%--        </ul>--%>
<%--      </div>--%>
<%--      <h1 class="type"><a href="javascript:void(0)">商品评论管理</a></h1>--%>
<%--      <div class="content">--%>
<%--        <table width="100%" border="0" cellspacing="0" cellpadding="0">--%>
<%--          <tr>--%>
<%--            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>--%>
<%--          </tr>--%>
<%--        </table>--%>
<%--        <ul class="MM">--%>
<%--          <li><a href="" target="main">查看所有商品</a></li>--%>
<%--          <li><a href="" target="main">增加新品</a></li>--%>

<%--        </ul>--%>
<%--      </div>--%>
<%--        <script type="text/javascript">--%>
<%--		var contents = document.getElementsByClassName('content');--%>
<%--		var toggles = document.getElementsByClassName('type');--%>

<%--		var myAccordion = new fx.Accordion(--%>
<%--			toggles, contents, {opacity: true, duration: 400}--%>
<%--		);--%>
<%--		myAccordion.showThisHideOpen(contents[0]);--%>
<%--	</script>--%>
<%--        </td>--%>
<%--  </tr>--%>
<%--</table>--%>
<%--</body>--%>
<%--</html>--%>
<body>
<table width="100%" height="280" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB">
    <tr>
        <td width="182" valign="top"><div id="container">

            <%--      <h1 class="type"><a href="javascript:void(0)">--%>
            <%--          <div class="content">&ndash;%&gt;--%>
            <%--                      <table width="100%" border="0" cellspacing="0" cellpadding="0">--%>
            <%--                        <tr>--%>
            <%--                          <td><img src="images/menu_topline.gif" width="182" height="5" /></td>--%>
            <%--                        </tr>--%>
            <%--                      </table>--%>
<c:forEach var="pro" items="${menu}">
              <h1 href="#">${pro.name}</h1>

               <div class="chilInPorNav">
                    <c:forEach items="${pro.son}" var="p2">
                        <li>   <a href="${p2.url}" target="main">${p2.name}</a></li>
                    </c:forEach>

            </div>
                <!--chilLeftNav/-->

            </c:forEach>

            </div>

            <script type="text/javascript">
                var contents = document.getElementsByClassName('content');
                var toggles = document.getElementsByClassName('type');

                var myAccordion = new fx.Accordion(
                    toggles, contents, {opacity: true, duration: 400}
                );
                myAccordion.showThisHideOpen(contents[0]);
            </script>
        </td>
    </tr>
</table>
</body>
</html>
