<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #F8F9FA;
}
-->
</style>

<link href="images/skin.css" rel="stylesheet" type="text/css" />
<body>
<form action="/oo/update1" method="post">
  <input type="hidden" value="${manage.id}" name="id" >
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" height="29" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td width="935" height="29" valign="top" background="images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">基本设置</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="images/mail_rightbg.gif"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td height="71" valign="middle" background="images/mail_leftbg.gif">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9"><table width="100%" height="138" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="13" valign="top">&nbsp;</td>
      </tr>
      <tr>
        <td valign="top"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td class="left_txt">当前位置：基本设置</td>
          </tr>
          <tr>
            <td height="20"><table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
              <tr>
                <td></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><table width="100%" height="55" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="10%" height="55" valign="middle"><img src="images/title.gif" width="54" height="55"></td>
                <td width="90%" valign="top"><span class="left_txt2">在这里，您可以根据您的网站要求，修改设置网站的</span><span class="left_txt3">基本参数</span><span class="left_txt2">！</span><br>
                          <span class="left_txt2">包括</span><span class="left_txt3">网站名称，网址，网站备案号，联系方式，网站公告，关键词，风格</span><span class="left_txt2">等以及网站</span><span class="left_txt3">会员及等级积分设置</span><span class="left_txt2">。 </span></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="nowtable">
              <tr>
                <td class="left_bt2">&nbsp;&nbsp;&nbsp;&nbsp;添加管理员</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
			<form name="form1" method="POST" action="admintitlechk.asp">

              <tr>
                <td width="20%" height="30" align="right" bgcolor="#f2f2f2" class="left_txt2">用户名：</td>
                <td width="3%" bgcolor="#f2f2f2">&nbsp;</td>
                <td width="32%" height="30" bgcolor="#f2f2f2"><input name="name" type="text" id="title" size="30"value="${manage.name}" /></td>
                <td width="45%" height="30" bgcolor="#f2f2f2" class="left_txt">6到18位首字母</td>
              </tr>
<%--              <tr>--%>
<%--                <td height="30" align="right" class="left_txt2">password：</td>--%>
<%--                <td>&nbsp;</td>--%>
<%--                <td height="30"><input type="password" name="password" size="30" /></td>--%>
<%--                <td height="30" class="left_txt">选填</td>--%>
<%--              </tr>--%>
              <tr>
                <td height="30" align="right" bgcolor="#f2f2f2" class="left_txt2">权限：</td>
                <td bgcolor="#f2f2f2">&nbsp;</td>
                <td height="30" bgcolor="#f2f2f2">
				<select name="role">
                <option value="0" $ selected>${manage.role==1?"超级会员":manage.role==2?"普通会员":"游客"}</option>
                <option value="1">超级会员</option>
                  <option value="2">普通会员</option>

                <%--  <option value="0">请选择</option>--%>
<%--  <c:forEach items="${classes_map}" var="classes">--%>
<%--    <option value="${classes.getKey()}" ${student.class_id == classes.key ? 'selected' : ''}>${classes.value}</option>--%>
<%--  </c:forEach>--%>
            </select>


              <tr>
                <td height="17" colspan="4" align="center" ><input type="submit" value="修改"></td>
              </tr>
            </table></td>
          </tr>
		  
		  
        </table>
         </form> 
  


</body>
