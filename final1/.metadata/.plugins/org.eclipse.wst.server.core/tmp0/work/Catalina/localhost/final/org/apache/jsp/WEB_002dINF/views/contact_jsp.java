/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.5
 * Generated at: 2020-12-27 13:27:16 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class contact_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/C:/spring/final1/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/final11/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1604883833700L));
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

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
      out.write("    \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"description\" content=\"\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->\r\n");
      out.write("\r\n");
      out.write("    <!-- Title -->\r\n");
      out.write("    <title>Cafe人 - 카페를 좋아하는 사람들</title>\r\n");
      out.write(" ");
      if (_jspx_meth_c_005fset_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("    <!-- Favicon -->\r\n");
      out.write("     <link rel=\"icon\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/img/core-img/favicon2.png.jpg\">\r\n");
      out.write("\r\n");
      out.write("    <!-- Stylesheet -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/style.css\">\r\n");
      out.write("<script src=\"http://code.jquery.com/jquery-3.1.1.min.js\"></script> \r\n");
      out.write("<script type=\"text/javascript\"\r\n");
      out.write("\tsrc=\"//dapi.kakao.com/v2/maps/sdk.js?appkey=4c9947b8b0448265ca15036c39a7fa4e&libraries=services,clusterer,drawing\"></script>\r\n");
      out.write("<script type=\"text/javascript\"\r\n");
      out.write("\tsrc=\"//dapi.kakao.com/v2/maps/sdk.js?appkey=4c9947b8b0448265ca15036c39a7fa4e\"></script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("    <!-- Preloader -->\r\n");
      out.write("    <div class=\"preloader d-flex align-items-center justify-content-center\">\r\n");
      out.write("        <div class=\"preloader-content\">\r\n");
      out.write("            <h3>Welecome Caffe人</h3>\r\n");
      out.write("            <div id=\"cooking\">\r\n");
      out.write("                <div class=\"bubble\"></div>\r\n");
      out.write("                <div class=\"bubble\"></div>\r\n");
      out.write("                <div class=\"bubble\"></div>\r\n");
      out.write("                <div class=\"bubble\"></div>\r\n");
      out.write("                <div class=\"bubble\"></div>\r\n");
      out.write("                <div id=\"area\">\r\n");
      out.write("                    <div id=\"sides\">\r\n");
      out.write("                        <div id=\"pan\"></div>\r\n");
      out.write("                        <div id=\"handle\"></div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div id=\"pancake\">\r\n");
      out.write("                        <div id=\"pastry\"></div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <!-- ##### Header Area Start ##### -->\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("    <!-- ##### Header Area End ##### -->\r\n");
      out.write("\r\n");
      out.write("    <!-- ##### Treading Post Area Start ##### -->\r\n");
      out.write("  ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "secmenu.jsp", out, false);
      out.write("\r\n");
      out.write("    <!-- ##### Treading Post Area End ##### -->\r\n");
      out.write("\r\n");
      out.write("    <!-- ##### Search Area Start ##### -->\r\n");
      out.write("    \r\n");
      out.write("    <!-- ##### Search Area End ##### -->\r\n");
      out.write("\r\n");
      out.write("    <!-- ##### Contact Area Start ##### -->\r\n");
      out.write("    <section class=\"contact-area section-padding-100\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"row justify-content-center\">\r\n");
      out.write("                <div class=\"col-12 col-lg-8 col-xl-9\">\r\n");
      out.write("                    <div class=\"contact-content mb-100\">\r\n");
      out.write("                        <h4 class=\"mb-50\">We love seeing your feedback</h4>\r\n");
      out.write("                       <p>커피인은 커피를 사랑하는 사람들의 다양한 리뷰를 바탕으로 운영되는 페이지입니다. 또한, 카페의 홍보를 위해 점주들을 위한 서비스도 제공하고 있습니다.카페인의 문은 언제나 열려있으니 편하게 연락해주세요!</p>\r\n");
      out.write("                        <div class=\"row align-items-center mt-30 mb-50\">\r\n");
      out.write("                            <div class=\"col-12 col-lg-4\">\r\n");
      out.write("                                <!-- Single Contact Info -->\r\n");
      out.write("                                <div class=\"single-contact-info d-flex align-items-center\">\r\n");
      out.write("                                    <div class=\"icon mr-15\">\r\n");
      out.write("                                        <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/img/core-img/placeholder.png\" alt=\"\">\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <p>학익동 663-1번지 5층 남구 인천광역시 KR 인천일보아카데미</p>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <!-- Single Contact Info -->\r\n");
      out.write("                                <div class=\"single-contact-info d-flex align-items-center\">\r\n");
      out.write("                                    <div class=\"icon mr-15\">\r\n");
      out.write("                                        <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/img/core-img/smartphone.png\" alt=\"\">\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <p>+010 6651 8393</p>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <!-- Single Contact Info -->\r\n");
      out.write("                                <div class=\"single-contact-info d-flex align-items-center\">\r\n");
      out.write("                                    <div class=\"icon mr-15\">\r\n");
      out.write("                                        <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/img/core-img/message.png\" alt=\"\">\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <p>yxk12121@gmail.com</p>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-12 col-lg-8\">\r\n");
      out.write("                                <!-- ##### Google Maps ##### -->\r\n");
      out.write("                                <div id=\"map\" style=\"width: 500px; height: 353px;\"></div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<script>\r\n");
      out.write("\t\t\t\t\t\t\tvar x = $(this).attr(\"x\");\r\n");
      out.write("\t\t\t\t\t\t\tvar y = $(this).attr(\"y\");\r\n");
      out.write("\t\t\t\t\t\t\tvar container = document.getElementById('map');\r\n");
      out.write("\t\t\t\t\t\t\tvar options = {\r\n");
      out.write("\t\t\t\t\t\t\t\tcenter : new kakao.maps.LatLng(37.438883173433155,\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t126.67511309793584),\r\n");
      out.write("\t\t\t\t\t\t\t\tlevel : 3\r\n");
      out.write("\t\t\t\t\t\t\t};\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\tvar map = new kakao.maps.Map(container, options);\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t// 마커가 표시될 위치입니다 \r\n");
      out.write("\t\t\t\t\t\t\tvar markerPosition = new kakao.maps.LatLng(\r\n");
      out.write("\t\t\t\t\t\t\t\t\t33.45798351, 126.9099952);\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t// 마커를 생성합니다\r\n");
      out.write("\t\t\t\t\t\t\tvar marker = new kakao.maps.Marker({\r\n");
      out.write("\t\t\t\t\t\t\t\tposition : markerPosition\r\n");
      out.write("\t\t\t\t\t\t\t});\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t// 마커가 지도 위에 표시되도록 설정합니다\r\n");
      out.write("\t\t\t\t\t\t\tmarker.setMap(map);\r\n");
      out.write("\t\t\t\t\t\t</script>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <!-- Contact Form Area -->\r\n");
      out.write("                        <div class=\"contact-form-area mb-70\">\r\n");
      out.write("                            <h4 class=\"mb-50\">Get In Touch</h4>\r\n");
      out.write("\r\n");
      out.write("                            <form id=\"frm\" method=\"post\"  data-email=\"example@email.net\" action=\"https://script.google.com/macros/s/AKfycbwsVm-7U5VmB_7pVgfAoQWzIEQJtEMonuQIZOK6ig/exec\">\r\n");
      out.write("                                <div class=\"row\">\r\n");
      out.write("                                    <div class=\"col-lg-6\">\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <input type=\"text\" class=\"form-control\" id=\"name\" placeholder=\"Name\">\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-lg-6\">\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <input type=\"email\" class=\"form-control\" id=\"email\" placeholder=\"E-mail\">\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-12\">\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <textarea name=\"message\" class=\"form-control\" id=\"message\" cols=\"30\" rows=\"10\" placeholder=\"Message\"></textarea>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-12\">\r\n");
      out.write("                                        <button class=\"btn bueno-btn mt-30\" type=\"button\" id=\"btn\">Send</button>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </form>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("               \r\n");
      out.write("    <!-- ##### Contact Area End ##### -->\r\n");
      out.write("\r\n");
      out.write("    <!-- ##### Instagram Area Start ##### -->\r\n");
      out.write("\r\n");
      out.write("    <!-- ##### Instagram Area End ##### -->\r\n");
      out.write("\r\n");
      out.write("    <!-- ##### Footer Area Start ##### -->\r\n");
      out.write("    <footer class=\"footer-area\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-12 col-sm-5\">\r\n");
      out.write("                    <!-- Copywrite Text -->\r\n");
      out.write("                    <p class=\"copywrite-text\"><a href=\"#\"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\r\n");
      out.write("Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class=\"fa fa-heart-o\" aria-hidden=\"true\"></i> by <a href=\"https://colorlib.com\" target=\"_blank\">Colorlib</a>\r\n");
      out.write("<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-12 col-sm-7\">\r\n");
      out.write("                    <!-- Footer Nav -->\r\n");
      out.write("                    <div class=\"footer-nav\">\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li class=\"active\"><a href=\"#\">Home</a></li>\r\n");
      out.write("                            <li><a href=\"#\">Recipes</a></li>\r\n");
      out.write("                            <li><a href=\"#\">About Us</a></li>\r\n");
      out.write("                            <li><a href=\"#\">Blog</a></li>\r\n");
      out.write("                            <li><a href=\"#\">Contact</a></li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </footer>\r\n");
      out.write("    <!-- ##### Footer Area Start ##### -->\r\n");
      out.write("\r\n");
      out.write("    <!-- ##### All Javascript Script ##### -->\r\n");
      out.write("    <!-- jQuery-2.2.4 js -->\r\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/jquery/jquery-2.2.4.min.js\"></script>\r\n");
      out.write("    <!-- Popper js -->\r\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/bootstrap/popper.min.js\"></script>\r\n");
      out.write("    <!-- Bootstrap js -->\r\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/bootstrap/bootstrap.min.js\"></script>\r\n");
      out.write("    <!-- All Plugins js -->\r\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/plugins/plugins.js\"></script>\r\n");
      out.write("    <!-- Active js -->\r\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/active.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("<script>\r\n");
      out.write("\r\n");
      out.write("$(\"#frm\").on(\"click\",\"#btn\",function(){\r\n");
      out.write("\t\r\n");
      out.write("\tif(!confirm(\"메일을 보내시겠습니까?\")) return;\r\n");
      out.write("\tvar name=$(\"#name\").val();\r\n");
      out.write("\tvar message=$(\"#message\").val(); \r\n");
      out.write("\tvar email=$(\"#email\").val();\r\n");
      out.write("\tvar url=\"https://script.google.com/macros/s/AKfycbwsVm-7U5VmB_7pVgfAoQWzIEQJtEMonuQIZOK6ig/exec\";\r\n");
      out.write("\t\r\n");
      out.write("\t  $.ajax({\r\n");
      out.write("\t\ttype:\"post\",\r\n");
      out.write("\t\turl:url,\r\n");
      out.write("\t\tdataType:\"json\",\r\n");
      out.write("\t\tdata:{\"name\":name,\"message\":message,\"email\":email},\r\n");
      out.write("\t\tsuccess:function(data){\r\n");
      out.write("\t\t\t\talert(\"메일발송이 완료되었습니다.\");\r\n");
      out.write("\t\t\t\tlocation.href=\"/final/\";\t\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t});\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("});\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fset_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_005fset_005f0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_005fset_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fset_005f0.setParent(null);
    // /WEB-INF/views/contact.jsp(16,1) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fset_005f0.setVar("path");
    // /WEB-INF/views/contact.jsp(16,1) name = value type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
    _jspx_th_c_005fset_005f0.setValue(new org.apache.jasper.el.JspValueExpression("/WEB-INF/views/contact.jsp(16,1) '${pageContext.request.contextPath}'",_el_expressionfactory.createValueExpression(_jspx_page_context.getELContext(),"${pageContext.request.contextPath}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
    int _jspx_eval_c_005fset_005f0 = _jspx_th_c_005fset_005f0.doStartTag();
    if (_jspx_th_c_005fset_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f0);
    return false;
  }
}
