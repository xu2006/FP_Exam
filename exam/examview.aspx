<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.examview" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Exam" %>
<%@ Import namespace="FP_Exam.Model" %>
<script runat="server">
protected override void View()
{
	/*方配软件技术有限公司(WMS框架)，官方网站：http://www.fangpage.com  QQ:12677206*/
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html>\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<title>确定进入考试-[" + echo(examinfo.name) + "]|" + echo(pagetitle) + "</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"icon\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"shortcut icon\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery-1.8.2.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link type=\"text/css\" href=\"" + echo(plupath) + "layer/skin/layer.css\" rel=\"stylesheet\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "layer/layer.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(document).ready(function () {\r\n");
	ViewBuilder.Append("        if (! -[1, ] && !window.XMLHttpRequest) {\r\n");
	ViewBuilder.Append("            $(\".IE6jiance\").show();\r\n");
	ViewBuilder.Append("            $.dialog.alert('您当前使用的浏览器版本太低，建议升级到更高版本的浏览器！', function () { });\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(\"#startexam\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("	</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <!--[if IE 6]>\r\n");
	ViewBuilder.Append("	<script src=\"" + echo(plupath) + "iepng/iepng.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("	<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("	   EvPNG.fix('div, ul, img, li, input'); \r\n");
	ViewBuilder.Append("	</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("	<![endif]-->\r\n");
	ViewBuilder.Append("    <style type=\"text/css\">\r\n");
	ViewBuilder.Append("    body {\r\n");
	ViewBuilder.Append("	    PADDING: 0px;\r\n");
	ViewBuilder.Append("	    MARGIN: 0px auto;\r\n");
	ViewBuilder.Append("	    WORD-BREAK: break-all;\r\n");
	ViewBuilder.Append("	    WORD-WRAP: break-word;\r\n");
	ViewBuilder.Append("	    FONT-SIZE: 12px;\r\n");
	ViewBuilder.Append("	    font-family: \"Times New Roman\", Times, serif;\r\n");
	ViewBuilder.Append("	    BACKGROUND: #f1f1f1;\r\n");
	ViewBuilder.Append("	    TEXT-ALIGN: center;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    .head {\r\n");
	ViewBuilder.Append("	    height: 60px;\r\n");
	ViewBuilder.Append("	    background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/navbg.png);\r\n");
	ViewBuilder.Append("	    text-align: center;\r\n");
	ViewBuilder.Append("	    padding-top: 10px;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    a.a:hover {\r\n");
	ViewBuilder.Append("    color:#000\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    #header {\r\n");
	ViewBuilder.Append("	    MARGIN: 0px auto;\r\n");
	ViewBuilder.Append("	    HEIGHT: 60px;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    #center-middle {\r\n");
	ViewBuilder.Append("	    width: 584px;\r\n");
	ViewBuilder.Append("	    margin: 0px auto;\r\n");
	ViewBuilder.Append("	    margin-top: -44px\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    .cbodywrap {\r\n");
	ViewBuilder.Append("	    width: 578px;\r\n");
	ViewBuilder.Append("	    background: #fff6b7;\r\n");
	ViewBuilder.Append("	    margin-left: 16px;\r\n");
	ViewBuilder.Append("	    _margin: 25px 0px 0px 25px;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    #cbody {\r\n");
	ViewBuilder.Append("	    WIDTH: 515px;\r\n");
	ViewBuilder.Append("	    text-align: left;\r\n");
	ViewBuilder.Append("	    line-height: 28px;\r\n");
	ViewBuilder.Append("	    padding: 15px 15px 37px 15px;\r\n");
	ViewBuilder.Append("	    height: auto;\r\n");
	ViewBuilder.Append("	    background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/exambg.png) no-repeat 0 100%;\r\n");
	ViewBuilder.Append("	    margin-left: 16px;\r\n");
	ViewBuilder.Append("	    margin-top: 30px;\r\n");
	ViewBuilder.Append("	    _margin: 10px 0px 0px 4px;\r\n");
	ViewBuilder.Append("	    position: relative\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    .ptksbtn {\r\n");
	ViewBuilder.Append("	    width: 87px;\r\n");
	ViewBuilder.Append("	    height: 81px;\r\n");
	ViewBuilder.Append("	    background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/examtype3.png) no-repeat;\r\n");
	ViewBuilder.Append("	    position: absolute;\r\n");
	ViewBuilder.Append("	    left: -7px;\r\n");
	ViewBuilder.Append("	    top: -7px\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    .ptksbtn2 {\r\n");
	ViewBuilder.Append("	    width: 87px;\r\n");
	ViewBuilder.Append("	    height: 81px;\r\n");
	ViewBuilder.Append("	    background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/examtype4.png) no-repeat;\r\n");
	ViewBuilder.Append("	    position: absolute;\r\n");
	ViewBuilder.Append("	    left: -7px;\r\n");
	ViewBuilder.Append("	    top: -7px\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    .userfacemain {\r\n");
	ViewBuilder.Append("	    width: 101px;\r\n");
	ViewBuilder.Append("	    height: 101px;\r\n");
	ViewBuilder.Append("	    margin: 0 auto;\r\n");
	ViewBuilder.Append("	    position: relative;\r\n");
	ViewBuilder.Append("	    margin-top: 32px;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    .userfacemain .userface {\r\n");
	ViewBuilder.Append("	    width: 101px;\r\n");
	ViewBuilder.Append("	    height: 101px;\r\n");
	ViewBuilder.Append("	    background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/userface02.png) no-repeat;\r\n");
	ViewBuilder.Append("	    position: absolute;\r\n");
	ViewBuilder.Append("	    margin-left: 18px\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    .userfacemain img {\r\n");
	ViewBuilder.Append("	    width: 101px;\r\n");
	ViewBuilder.Append("	    height: 101px;\r\n");
	ViewBuilder.Append("	    margin-left: 18px;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    .IE6jiance {\r\n");
	ViewBuilder.Append("	    width: 650px;\r\n");
	ViewBuilder.Append("	    margin: 0px auto;\r\n");
	ViewBuilder.Append("	    margin-top: 25px;\r\n");
	ViewBuilder.Append("	    height: 35px;\r\n");
	ViewBuilder.Append("	    line-height: 35px;\r\n");
	ViewBuilder.Append("	    color: #de1c1c;\r\n");
	ViewBuilder.Append("	    font-size: 14px;\r\n");
	ViewBuilder.Append("	    background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/gth.png) no-repeat 0 4px;\r\n");
	ViewBuilder.Append("	    padding-left: 30px\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    .bottombg {\r\n");
	ViewBuilder.Append("	    width: 578px;\r\n");
	ViewBuilder.Append("	    height: 45px;\r\n");
	ViewBuilder.Append("	    background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/bottom.png) no-repeat;\r\n");
	ViewBuilder.Append("	    margin-left: 16px;\r\n");
	ViewBuilder.Append("	    margin-top: -6px\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    .clear {\r\n");
	ViewBuilder.Append("	    clear: both;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    .blank10 {\r\n");
	ViewBuilder.Append("	    height: 10px;\r\n");
	ViewBuilder.Append("	    overflow: hidden\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    </style>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"background:url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/examjt.png) no-repeat 50% 0;color:#777\">\r\n");
	ViewBuilder.Append("<form name=\"frmpost\" method=\"post\" action=\"\" id=\"frmpost\" onsubmit=\"layer.msg('系统正在组卷，请稍后...', 0, 1);\">\r\n");
	ViewBuilder.Append("  <div class=\"userfacemain\">\r\n");
	ViewBuilder.Append("    <div class=\"userface\"></div>\r\n");
	ViewBuilder.Append("    <img src=\"" + echo(user.avatar) + "\" width=\"60\" height=\"60\">\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("  <div id=\"container\">\r\n");
	ViewBuilder.Append("    <div id=\"header\"></div>\r\n");
	ViewBuilder.Append("    <div id=\"center-header\"></div>\r\n");
	ViewBuilder.Append("    <div id=\"center-middle\">\r\n");
	ViewBuilder.Append("      <div class=\"cbodywrap\">\r\n");
	ViewBuilder.Append("        <div id=\"cbody\">\r\n");

	if (examinfo.type==0)
	{
	ViewBuilder.Append("          <div class=\"ptksbtn2\"></div>\r\n");
	}
	else
	{
	ViewBuilder.Append("          <div class=\"ptksbtn\"></div>\r\n");
	}//end if
	ViewBuilder.Append("          <table width=\"100%\" height=\"163\" align=\"center\" cellpadding=\"0\" cellspacing=\"1\">\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td height=\"50\" colspan=\"2\" align=\"center\" style=\"background:#fffbe1\"><span style=\"font-size:17px;text-align: center;color:#444;font-weight:bold; font-family:'微软雅黑'\">" + echo(examinfo.name) + "</span></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td height=\"30\" colspan=\"2\" align=\"center\" style=\"background:#fff url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/trbg.png) no-repeat 50% 100%;\"><strong style=\"font-size:14px;color: #FF3300; font-weight: bold;\">\r\n");
	ViewBuilder.Append("              " + echo(user.realname) + "\r\n");
	ViewBuilder.Append("              </strong></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td height=\"30\" align=\"center\" colspan=\"2\" style=\"background:#fff url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/trbg.png) no-repeat 50% 100%;\">考试时间：\r\n");

	if (examinfo.islimit==1)
	{
	ViewBuilder.Append("                " + echo(examinfo.starttime,"yyyy-MM-dd HH:mm") + "至" + echo(examinfo.endtime,"yyyy-MM-dd HH:mm") + "\r\n");
	}
	else
	{
	ViewBuilder.Append("                无限制\r\n");
	}//end if
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td width=\"49%\" height=\"30\" align=\"left\" style=\"background:#fff url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/trbg.png) no-repeat 0 100%; padding-left:50px;\">答题时间：" + echo(examinfo.examtime) + "分钟</td>\r\n");
	ViewBuilder.Append("              <td width=\"51%\" align=\"left\" style=\"background:#fff url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/trbg.png) no-repeat -270px 100%; padding-left:20px;border-left:1px solid #f4ecd2\">试卷总分：" + echo(examinfo.total) + "分</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td height=\"30\" align=\"left\" style=\" padding-left:50px;background:#fff url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/trbg.png) no-repeat 0 100%;\">所需积分：<font color=\"#ff3300\">" + echo(examinfo.credits) + "</font></td>\r\n");
	ViewBuilder.Append("              <td align=\"left\" style=\"padding-left:20px;background:#fff url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/trbg.png) no-repeat -270px 100%;border-left:1px solid #f4ecd2\">可用积分：" + echo(user.credits) + " </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("          </table>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <div class=\"clear\"></div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("      <div class=\"bottombg\"></div>\r\n");
	ViewBuilder.Append("      <div id=\"center-bottom\"></div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("  <div style=\"text-align: center; line-height:30px;\">\r\n");
	ViewBuilder.Append("    <img id=\"startexam\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/btn2.png\" style=\"cursor:pointer;\" border=\"0\">\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("  <br>\r\n");
	ViewBuilder.Append("  <div class=\"IE6jiance\" style=\"display:none\"> 检测到您的浏览器为较低版本IE6，为了保证考试质量，建议升级浏览器版本或更换其他高版本浏览器！ </div>\r\n");
	ViewBuilder.Append("</form>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
