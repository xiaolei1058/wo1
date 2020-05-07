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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="images/skin.css" rel="stylesheet" type="text/css" />
<body>
<form action="/pp/add" method="post" >
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
              <td class="left_txt"></td>
            </tr>
            <tr>
              <td height="20"><table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                <tr>
                  <td></td>
                </tr>
              </table></td>
            </tr>

            <tr>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="nowtable">
                <tr>
                  <td class="left_bt2">&nbsp;&nbsp;&nbsp;&nbsp;添加商品</td>
                </tr>
              </table></td>
            </tr>
            <tr>
              <td><table width="100%" border="0" cellspacing="0" cellpadding="0">

                  <tr>
                    <td width="20%" height="30" align="right" bgcolor="#f2f2f2" class="left_txt2">：</td>
                    <td width="3%" bgcolor="#f2f2f2">&nbsp;</td>
                    <td width="32%" height="30" bgcolor="#f2f2f2"><input name="name" type="text" id="title" size="30" /></td>
                    <td width="45%" height="30" bgcolor="#f2f2f2" class="left_txt">商品名</td>
                  </tr>
                  <tr>
                    <td height="30" align="right" class="left_txt2"></td>
                    <td>&nbsp;</td>
                    <td height="30"><input type="password" name="account" size="30" /></td>
                    <td height="30" class="left_txt" name="account">编号</td>
                  </tr>

<%--                <tr>--%>
<%--                  <td height="30" align="right" bgcolor="#f2f2f2" class="left_txt2"></td>--%>
<%--                  <td bgcolor="#f2f2f2">&nbsp;</td>--%>
<%--                  <td height="30" bgcolor="#f2f2f2"><input type="text" name="intro" size="30" /></td>--%>
<%--                  <td height="30" bgcolor="#f2f2f2" class="left_txt">简介</td>--%>
<%--                </tr>--%>
                  <tr>
                    <td height="30" align="right" bgcolor="#f2f2f2" class="left_txt2"></td>
                    <td bgcolor="#f2f2f2">&nbsp;</td>
                    <td height="30" bgcolor="#f2f2f2"><input type="text" name="j_price" size="30" /></td>
                    <td height="30" bgcolor="#f2f2f2" class="left_txt">进价</td>
                  </tr>
                  <tr>
                    <td height="30" align="right" bgcolor="#F7F8F9" class="left_txt2"></td>
                    <td bgcolor="#F7F8F9">&nbsp;</td>
                    <td height="30" bgcolor="#F7F8F9"><input type="text" name="s_price" size="30" /></td>
                    <td height="30" bgcolor="#F7F8F9" class="left_txt">售价</td>
                  </tr>
                  <tr>
                    <td height="30" align="right" bgcolor="#F2F2F2" class="left_txt2"></td>
                    <td bgcolor="#F2F2F2">&nbsp;</td>
                    <td height="30" bgcolor="#F2F2F2"><input name="y_price" type="text" id="mymail" size="30" /></td>
                    <td height="30" bgcolor="#F2F2F2"><span class="left_txt">原价</span></td>
                  </tr>
                  <tr>
                    <td height="30" align="right" class="left_txt2"></td>
                    <td>&nbsp;</td>
                    <td height="30"><input type="text" name="store" size="30" /></td>
                    <td height="30"><span class="left_txt">库存</span></td>
                  </tr>

                <tr>
                  <td height="30" align="right" class="left_txt2"></td>
                  <td>&nbsp;</td>
                  <td height="30"><input type="file" name="pics" size="4" /></td>
                  <td height="30" class="left_txt">图片</td>
                </tr>
                  <tr>
                    <td height="30" align="right" class="left_txt2"></td>
                    <td>&nbsp;</td>
                    <td height="30"><input type="text" name="sell" size="4" /></td>
                    <td height="30" class="left_txt">销量</td>
                  </tr>
                  <tr>
                    <td height="30" align="right" bgcolor="#f2f2f2" class="left_txt2"></td>
                    <td bgcolor="#f2f2f2">&nbsp;</td>
                    <td height="30" bgcolor="#f2f2f2"><input type="text" name="watch" size="24" /></td>
                    <td height="30" bgcolor="#f2f2f2" class="left_txt">浏览量</td>
                  </tr>
                  <tr>
                    <td height="30" align="right" class="left_txt2"></td>
                    <td>&nbsp;</td>
                    <td height="30"><input name="zhengban" type="date" id="addtime" size="24" /></td>
                    <td height="30" class="left_txt">上架时间</td>
                  </tr>

                  <tr>
                      <td height="30" align="right" bgcolor="#f2f2f2" class="left_txt2">状态：</td>
                      <td bgcolor="#f2f2f2">&nbsp;</td>
                      <td height="30" bgcolor="#f2f2f2">
                          <select name="status">
                              <option value="1">上架</option>
                              <option value="2">下架</option>
                              <option value="0">删除</option>
                          </select>
                      </td>
                  <tr>
                      <td height="30" align="right" bgcolor="#f2f2f2" class="left_txt2">是否热销：</td>
                      <td bgcolor="#f2f2f2">&nbsp;</td>
                      <td height="30" bgcolor="#f2f2f2">
                          <select name="is_top">
                              <option value="0">否</option>
                              <option value="1">是</option>
                          </select>
                      </td>
                  <tr>
                      <td height="30" align="right" bgcolor="#f2f2f2" class="left_txt2">分类：</td>
                      <td bgcolor="#f2f2f2">&nbsp;</td>
                      <td height="30" bgcolor="#f2f2f2">
                          <select name="t_id">
                              <option value="1">手机</option>
                              <option value="2">电视</option>
                          </select>
                      </td>
                  <tr>
                    <td height="17" colspan="4" align="center" ><input type="submit" value="添加"></td>
                  </tr>
              </table></td>
            </tr>


          </table>
</form>



</body>
