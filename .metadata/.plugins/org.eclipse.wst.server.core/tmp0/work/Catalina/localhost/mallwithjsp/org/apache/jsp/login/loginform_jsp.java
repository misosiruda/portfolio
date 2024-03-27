/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.70
 * Generated at: 2024-03-27 07:34:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.login;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class loginform_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/standard.jar", Long.valueOf(1711337953129L));
    _jspx_dependants.put("jar:file:/C:/Jaemin_Seo/portfolio/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/mallwithjsp/WEB-INF/lib/standard.jar!/META-INF/c.tld", Long.valueOf(1098678690000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>로그인 창</title>\r\n");
      out.write("<style>\r\n");
      out.write("* {\r\n");
      out.write("	padding: 0;\r\n");
      out.write("	margin: 0;\r\n");
      out.write("	border: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("body {\r\n");
      out.write("	font-size: 14px;\r\n");
      out.write("	font-family: 'Roboto', sans-serif;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".login-wrapper {\r\n");
      out.write("	margin: 100px auto;\r\n");
      out.write("	width: 400px;\r\n");
      out.write("	height: 350px;\r\n");
      out.write("	padding: 40px;\r\n");
      out.write("	box-sizing: border-box;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".login-wrapper>h2 {\r\n");
      out.write("	font-size: 24px;\r\n");
      out.write("	color: #76bd42;\r\n");
      out.write("	margin-bottom: 20px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#login-form>input {\r\n");
      out.write("	width: 100%;\r\n");
      out.write("	height: 48px;\r\n");
      out.write("	padding: 0 10px;\r\n");
      out.write("	box-sizing: border-box;\r\n");
      out.write("	margin-bottom: 16px;\r\n");
      out.write("	border-radius: 6px;\r\n");
      out.write("	background-color: #F8F8F8;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#login-form>input::placeholder {\r\n");
      out.write("	color: #D2D2D2;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#login-form>input[type=\"submit\"] {\r\n");
      out.write("	color: #fff;\r\n");
      out.write("	font-size: 16px;\r\n");
      out.write("	background-color: #76bd42;\r\n");
      out.write("	margin-top: 20px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#login-form>input[type=\"checkbox\"] {\r\n");
      out.write("	display: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#login-form>label {\r\n");
      out.write("	color: #999999;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#login-form input[type=\"checkbox\"]+label {\r\n");
      out.write("	cursor: pointer;\r\n");
      out.write("	padding-left: 26px;\r\n");
      out.write("	background-image: url(\"checkbox.png\");\r\n");
      out.write("	background-repeat: no-repeat;\r\n");
      out.write("	background-size: contain;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#login-form input[type=\"checkbox\"]:checked+label {\r\n");
      out.write("	background-image: url(\"checkbox-active.png\");\r\n");
      out.write("	background-repeat: no-repeat;\r\n");
      out.write("	background-size: contain;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("a {\r\n");
      out.write("	text-decoration: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("<script type=\"text/javascript\"\r\n");
      out.write("	src=\"https://code.jquery.com/jquery-1.10.2.min.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("	<div class=\"login-wrapper\">\r\n");
      out.write("		<h2>login</h2>\r\n");
      out.write("		<form method=\"post\"\r\n");
      out.write("			action=\"/mallwithjsp/manager.do?command=login_check\"\r\n");
      out.write("			id=\"login-form\" name=\"frm\">\r\n");
      out.write("			<input type=\"hidden\" name=\"check\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${check}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\">\r\n");
      out.write("			<input type=\"text\" name=\"userid\" placeholder=\"id\">\r\n");
      out.write("			<input type=\"password\" name=\"userpass\" placeholder=\"Password\">\r\n");
      out.write("			<label for=\"remember-check\">\r\n");
      out.write("			<input type=\"checkbox\" id=\"remember-check\">아이디 저장하기\r\n");
      out.write("			<a href=\"./signaccountform.jsp\">회원가입 하기</a>\r\n");
      out.write("			</label>\r\n");
      out.write("			<input type=\"submit\" value=\"Login\" onclick=\"return loginNullCheck()\">\r\n");
      out.write("		</form>\r\n");
      out.write("	</div>\r\n");
      out.write("	<!-- 쿠키 이용한 아이디 저장 기능 스크립트 -->\r\n");
      out.write("	<script>\r\n");
      out.write("		$(document).ready(function() {\r\n");
      out.write("			var key = getCookie(\"idChk\"); //user1\r\n");
      out.write("			if (key != \"\") {\r\n");
      out.write("				$(\"#userid\").val(key);\r\n");
      out.write("			}\r\n");
      out.write("\r\n");
      out.write("			if ($(\"#userid\").val() != \"\") {\r\n");
      out.write("				$(\"#remember-check\").attr(\"checked\", true);\r\n");
      out.write("			}\r\n");
      out.write("\r\n");
      out.write("			$(\"#remember-check\").change(function() {\r\n");
      out.write("				if ($(\"#remember-check\").is(\":checked\")) {\r\n");
      out.write("					setCookie(\"idChk\", $(\"#userid\").val(), 7);\r\n");
      out.write("				} else {\r\n");
      out.write("					deleteCookie(\"idChk\");\r\n");
      out.write("				}\r\n");
      out.write("			});\r\n");
      out.write("\r\n");
      out.write("			$(\"#userid\").keyup(function() {\r\n");
      out.write("				if ($(\"#remember-check\").is(\":checked\")) {\r\n");
      out.write("					setCookie(\"idChk\", $(\"#userid\").val(), 7);\r\n");
      out.write("				}\r\n");
      out.write("			});\r\n");
      out.write("		});\r\n");
      out.write("		function setCookie(cookieName, value, exdays) {\r\n");
      out.write("			var exdate = new Date();\r\n");
      out.write("			exdate.setDate(exdate.getDate() + exdays);\r\n");
      out.write("			var cookieValue = escape(value)\r\n");
      out.write("					+ ((exdays == null) ? \"\" : \"; expires=\"\r\n");
      out.write("							+ exdate.toGMTString());\r\n");
      out.write("			document.cookie = cookieName + \"=\" + cookieValue;\r\n");
      out.write("		}\r\n");
      out.write("\r\n");
      out.write("		function deleteCookie(cookieName) {\r\n");
      out.write("			var expireDate = new Date();\r\n");
      out.write("			expireDate.setDate(expireDate.getDate() - 1);\r\n");
      out.write("			document.cookie = cookieName + \"= \" + \"; expires=\"\r\n");
      out.write("					+ expireDate.toGMTString();\r\n");
      out.write("		}\r\n");
      out.write("\r\n");
      out.write("		function getCookie(cookieName) {\r\n");
      out.write("			cookieName = cookieName + '=';\r\n");
      out.write("			var cookieData = document.cookie;\r\n");
      out.write("			var start = cookieData.indexOf(cookieName);\r\n");
      out.write("			var cookieValue = '';\r\n");
      out.write("			if (start != -1) {\r\n");
      out.write("				start += cookieName.length;\r\n");
      out.write("				var end = cookieData.indexOf(';', start);\r\n");
      out.write("				if (end == -1)\r\n");
      out.write("					end = cookieData.length;\r\n");
      out.write("				cookieValue = cookieData.substring(start, end);\r\n");
      out.write("			}\r\n");
      out.write("			return unescape(cookieValue);\r\n");
      out.write("		}\r\n");
      out.write("	</script>\r\n");
      out.write("	<!-- 아이디 비번 체크 스크립트 -->\r\n");
      out.write("    <script src=\"../js/idpasscheck.js\"></script>\r\n");
      out.write("	<script>\r\n");
      out.write("		//로드 될때 실행하는 코드\r\n");
      out.write("		if (document.frm.check.value == \"wrong_userid\") {\r\n");
      out.write("			alert(\"해당하는 아이디가 없습니다.\");\r\n");
      out.write("		} else if (document.frm.check.value == \"wrong_userpass\") {\r\n");
      out.write("			alert(\"비밀번호가 틀렸습니다.\");\r\n");
      out.write("		}\r\n");
      out.write("	</script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
