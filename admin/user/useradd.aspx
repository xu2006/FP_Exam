<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.useradd" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FangPage.WMS.Admin" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<%@ Import namespace="FangPage.WMS" %>
<%@ Import namespace="FangPage.WMS.Bll" %>
<script runat="server">
protected override void View()
{
	/*方配软件技术有限责任公司(WMS框架)，官方网站：http://www.fangpage.com  QQ:12677206*/
	base.View();
	ViewBuilder.Append("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta content=\"text/html; charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("<title>添加编辑用户信息</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/tab.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "plugins/dateselector/dateselector.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "plugins/jsaddress/jsaddress.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(\"input[name=btncancle]\").click(function () {\r\n");
	ViewBuilder.Append("            window.location.href = \"" + echo(backurl) + "\";\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        var myDate = new Date();\r\n");
	ViewBuilder.Append("        $(\"#dateSelector\").DateSelector({\r\n");
	ViewBuilder.Append("            ctlYearId: 'idYear',\r\n");
	ViewBuilder.Append("            ctlMonthId: 'idMonth',\r\n");
	ViewBuilder.Append("            ctlDayId: 'idDay',\r\n");
	ViewBuilder.Append("            minYear: 1900,\r\n");
	ViewBuilder.Append("            maxYear: myDate.getFullYear()\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $.initProv(\"#province\", \"#city\", \"" + echo(fulluserinfo.province) + "\", \"" + echo(fulluserinfo.city) + "\");\r\n");
	ViewBuilder.Append("        PageNav(\"系统用户管理,user/usermanage.aspx|添加编辑用户信息,user/" + echo(pagename) + "?id=" + echo(id) + "\")\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("<form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\" enctype=\"multipart/form-data\">\r\n");
	ViewBuilder.Append("  <div class=\"newslistabout\">\r\n");
	ViewBuilder.Append("    <div class=\"ntab4\">\r\n");
	ViewBuilder.Append("        <div class=\"tabtitle\">\r\n");
	ViewBuilder.Append("          <ul>\r\n");
	ViewBuilder.Append("            <li id=\"one1\" onclick=\"setTab('one',1,3)\" class=\"active\"><a href=\"#\">基本信息</a> </li>\r\n");
	ViewBuilder.Append("            <li id=\"one2\" onclick=\"setTab('one',2,3)\" class=\"normal\"><a href=\"#\">详细信息</a></li>\r\n");
	ViewBuilder.Append("            <li id=\"one3\" onclick=\"setTab('one',3,3)\" class=\"normal\"><a href=\"#\">其他信息</a></li>\r\n");
	ViewBuilder.Append("          </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div id=\"con_one_1\" style=\"display:block\">\r\n");
	ViewBuilder.Append("    <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">用户基本信息</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    <table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"0\" class=\"border\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\"><span style=\"color:Red\">*</span>用户角色： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <select id=\"roleid\" name=\"roleid\" style=\"width: 204px\">\r\n");
	ViewBuilder.Append("                <option value=\"0\">--选择用户角色--</option>\r\n");

	loop__id=0;
	foreach(RoleInfo role in rolelist)
	{
	loop__id++;
	ViewBuilder.Append("                    <option value=\"" + echo(role.id) + "\" \r\n");

	if (role.id==fulluserinfo.roleid)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">" + echo(role.name) + "</option>\r\n");
	}//end loop
	ViewBuilder.Append("              </select>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">所属部门： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	string tree = "├";
	ViewBuilder.Append("              <select id=\"departid\" name=\"departid\" style=\"width: 204px\">\r\n");
	ViewBuilder.Append("                <option value=\"0\">--选择用户部门--</option>\r\n");

	loop__id=0;
	foreach(Department item in departlist)
	{
	loop__id++;
	ViewBuilder.Append("                <option value=\"" + echo(item.id) + "\" \r\n");

	if (item.id==fulluserinfo.departid)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">├" + echo(item.name) + "</option>\r\n");
	ViewBuilder.Append("                " + GetChildDepartment(item.id,tree).ToString() + "\r\n");
	}//end loop
	ViewBuilder.Append("              </select>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">用户级别： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <select id=\"gradeid\" name=\"gradeid\" style=\"width: 204px\">\r\n");
	ViewBuilder.Append("                <option value=\"0\">--请选择--</option>\r\n");

	loop__id=0;
	foreach(UserGrade itme in usergradelist)
	{
	loop__id++;
	ViewBuilder.Append("                <option value=\"" + echo(itme.id) + "\" \r\n");

	if (itme.id==fulluserinfo.gradeid)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">" + echo(itme.name) + "</option>\r\n");
	}//end loop
	ViewBuilder.Append("              </select>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");

	if (typelist.Count>0)
	{
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\">用户类型： </td>\r\n");
	ViewBuilder.Append("        <td>\r\n");

	loop__id=0;
	foreach(TypeInfo types in typelist)
	{
	loop__id++;
	ViewBuilder.Append("            <select id=\"types\" name=\"types\" style=\"width: 204px\">\r\n");
	ViewBuilder.Append("            <option value=\"\">--选择" + echo(types.name) + "--</option>\r\n");

	loop__id=0;
	foreach(TypeInfo types2 in TypeBll.GetTypeList(types.id))
	{
	loop__id++;
	ViewBuilder.Append("            <option value=\"" + echo(types2.id) + "\" \r\n");

	if (ischecked(types2.id,fulluserinfo.types))
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">" + echo(types2.name) + "</option>\r\n");
	}//end loop
	ViewBuilder.Append("            </select>\r\n");
	}//end loop
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	}//end if
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\"><span style=\"color:Red\">*</span>用户名： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input style=\"width: 200px\" id=\"username\" name=\"username\" value=\"" + echo(fulluserinfo.username) + "\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\"><span style=\"color:Red\">*</span>密&nbsp;码： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input type=\"text\" style=\"width: 200px\" id=\"password1\" name=\"password1\">\r\n");

	if (id>0)
	{
	ViewBuilder.Append("              <span style=\"color:Red\">编辑留空不更改密码</span>\r\n");
	}
	else
	{
	ViewBuilder.Append("              <span style=\"color:Red\">*</span>\r\n");
	}//end if
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">真实姓名： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input style=\"width: 200px\" id=\"realname\" name=\"realname\" value=\"" + echo(fulluserinfo.realname) + "\">\r\n");
	ViewBuilder.Append("              <input id=\"isreal\" name=\"isreal\" value=\"1\" \r\n");

	if (fulluserinfo.isreal==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"checkbox\">实名已验证\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">身份证号： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input style=\"width: 200px\" id=\"idcard\" name=\"idcard\" value=\"" + echo(fulluserinfo.idcard) + "\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">手机号码： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input style=\"width: 200px\" id=\"mobile\" name=\"mobile\" value=\"" + echo(fulluserinfo.mobile) + "\">\r\n");
	ViewBuilder.Append("              <input id=\"ismobile\" name=\"ismobile\" value=\"1\" \r\n");

	if (fulluserinfo.ismobile==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"checkbox\">手机已验证，手机号登录必选\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">电子邮箱： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input style=\"width: 200px\" id=\"email\" name=\"email\" value=\"" + echo(fulluserinfo.email) + "\">\r\n");
	ViewBuilder.Append("              <input id=\"isemail\" name=\"isemail\" value=\"1\" \r\n");

	if (fulluserinfo.isemail==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"checkbox\">邮箱已验证，邮箱登录必选\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">昵&nbsp;&nbsp;称： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input style=\"width: 200px\" id=\"nickname\" name=\"nickname\" value=\"" + echo(fulluserinfo.nickname) + "\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">经验值： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input style=\"width: 200px\" id=\"exp\" name=\"exp\" value=\"" + echo(fulluserinfo.exp) + "\">\r\n");
	ViewBuilder.Append("              <input id=\"isgrade\" name=\"isgrade\" value=\"1\" type=\"checkbox\">保存根据经验值更新用户等级\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">登录类型： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input type=\"radio\" id=\"issso0\" name=\"issso\" value=\"0\" \r\n");

	if (fulluserinfo.issso==0)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(">本地\r\n");
	ViewBuilder.Append("              <input type=\"radio\" id=\"issso1\" name=\"issso\" value=\"1\" \r\n");

	if (fulluserinfo.issso==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(">单点\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">性&nbsp;&nbsp;别： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input type=\"radio\" id=\"sex0\" name=\"sex\" value=\"0\" \r\n");

	if (fulluserinfo.sex==0)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(">女\r\n");
	ViewBuilder.Append("              <input type=\"radio\" id=\"sex1\" name=\"sex\" value=\"1\" \r\n");

	if (fulluserinfo.sex==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(">男\r\n");
	ViewBuilder.Append("              <input type=\"radio\" id=\"sex2\" name=\"sex\" value=\"-1\" \r\n");

	if (fulluserinfo.sex==-1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(">未知\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">用户状态： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input type=\"radio\" id=\"state1\" name=\"state\" value=\"1\" \r\n");

	if (fulluserinfo.state==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(">启用\r\n");
	ViewBuilder.Append("              <input type=\"radio\" id=\"state0\" name=\"state\" value=\"0\" \r\n");

	if (fulluserinfo.state==0)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(">禁用\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("            <input id=\"btnsubmit1\" name=\"btnsubmit\" type=\"submit\" value=\"保存\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            <input id=\"btncancle1\" name=\"btncancle\" type=\"button\" value=\"返回\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div id=\"con_one_2\" style=\"display:none\">\r\n");
	ViewBuilder.Append("    <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">用户详细信息</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    <table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"0\" class=\"border\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">所在地区： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <select id=\"province\" name=\"province\"></select>\r\n");
	ViewBuilder.Append("              <select id=\"city\" name=\"city\"></select>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">出生日期： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <select id=\"idYear\" name=\"bday\" data=\"" + echo(bday[0]) + "\"></select>\r\n");
	ViewBuilder.Append("              <select id=\"idMonth\" name=\"bday\" data=\"" + echo(bday[1]) + "\"></select>\r\n");
	ViewBuilder.Append("              <select id=\"idDay\" name=\"bday\" data=\"" + echo(bday[2]) + "\"></select>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">教育程度： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <select id=\"education\" name=\"education\" style=\"width: 204px\">\r\n");
	ViewBuilder.Append("              <option value=\"\">请选择</option>\r\n");
	ViewBuilder.Append("              <option value=\"小学\" \r\n");

	if (fulluserinfo.education=="小学")
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">小学</option>\r\n");
	ViewBuilder.Append("              <option value=\"初中\" \r\n");

	if (fulluserinfo.education=="初中")
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">初中</option>\r\n");
	ViewBuilder.Append("              <option value=\"高中\" \r\n");

	if (fulluserinfo.education=="高中")
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">高中</option>\r\n");
	ViewBuilder.Append("              <option value=\"大学专科\" \r\n");

	if (fulluserinfo.education=="大学专科")
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">大学专科</option>\r\n");
	ViewBuilder.Append("              <option value=\"大学本科\" \r\n");

	if (fulluserinfo.education=="大学本科")
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">大学本科</option>\r\n");
	ViewBuilder.Append("              <option value=\"硕士\" \r\n");

	if (fulluserinfo.education=="硕士")
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">硕士</option>\r\n");
	ViewBuilder.Append("              <option value=\"博士\" \r\n");

	if (fulluserinfo.education=="博士")
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">博士</option>\r\n");
	ViewBuilder.Append("              </select>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">联系电话： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input style=\"width: 200px\" id=\"phone\" name=\"phone\" value=\"" + echo(fulluserinfo.phone) + "\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">QQ号码： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input style=\"width: 200px\" id=\"qq\" name=\"qq\" value=\"" + echo(fulluserinfo.qq) + "\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">详细地址： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input style=\"width: 200px\" id=\"address\" name=\"address\" value=\"" + echo(fulluserinfo.address) + "\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">博客地址： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input style=\"width: 200px\" id=\"blog\" name=\"blog\" value=\"" + echo(fulluserinfo.blog) + "\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">个人签名： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("             <textarea name=\"content\" rows=\"5\" cols=\"30\" id=\"content\" style=\"height:80px;width:200px;\">" + echo(fulluserinfo.content) + "</textarea>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">用户头像： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <img src=\"" + echo(webpath) + "" + echo(fulluserinfo.avatar) + "\" width=\"100\" style=\"margin:3px;\" height=\"100\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">上传头像： </td>\r\n");
	ViewBuilder.Append("          <td colspan=\"2\">\r\n");
	ViewBuilder.Append("              <input id=\"user_avatar\" name=\"user_avatar\" type=\"file\" style=\"width: 200px\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("            <input id=\"btnsubmit2\" name=\"btnsubmit\" type=\"submit\" value=\"保存\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            <input id=\"btncancle2\" name=\"btncancle\" type=\"button\" value=\"返回\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("     </table>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div id=\"con_one_3\" style=\"display:none\">\r\n");
	ViewBuilder.Append("    <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">用户基他信息</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    <table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"0\" class=\"border\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">用户ID： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              " + echo(fulluserinfo.id) + "\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">用户积分： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              " + echo(fulluserinfo.credits) + "\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">注册日期： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              " + echo(fulluserinfo.joindatetime) + "\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">注册IP地址： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              " + echo(fulluserinfo.regip) + "\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">最近登录IP： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              " + echo(fulluserinfo.lastip) + "\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">最近登录时间： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              " + echo(fulluserinfo.lastvisit) + "\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</form>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
