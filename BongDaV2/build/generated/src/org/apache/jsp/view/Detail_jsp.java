package org.apache.jsp.view;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Detail_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_if_test.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\n");
      out.write("        <meta name=\"description\" content=\"\" />\n");
      out.write("        <meta name=\"keywords\" content=\"\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width,initial-scale=1\">\n");
      out.write("        <title>Project PRJ</title>\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Montserrat%7COpen+Sans:700,400%7CRaleway:400,800,900\" rel=\"stylesheet\" />\n");
      out.write("        <link rel=\"icon\" href=\"favicon.ico\" type=\"image/x-icon\">\n");
      out.write("        <link href=\"css/library/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <link href=\"dev-assets/preloader-default.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <!-- <link href=\"dev-assets/demo-switcher.css\" rel=\"stylesheet\" type=\"text/css\" /> -->\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div class=\"preloader-wrapper\" id=\"preloader\">\n");
      out.write("            <div class=\"motion-line dark-big\"></div>\n");
      out.write("            <div class=\"motion-line yellow-big\"></div>\n");
      out.write("            <div class=\"motion-line dark-small\"></div>\n");
      out.write("            <div class=\"motion-line yellow-normal\"></div>\n");
      out.write("            <div class=\"motion-line yellow-small1\"></div>\n");
      out.write("            <div class=\"motion-line yellow-small2\"></div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"top-bar\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-7 hidden-sm hidden-xs\">\n");
      out.write("                        <div class=\"top-contacts\">\n");
      out.write("                            <ul class=\"socials\">\n");
      out.write("                                <li><a href=\"https://www.facebook.com/egamorft/\" target=\"_blank\"><i\n");
      out.write("                                            class=\"fa fa-facebook-square\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\n");
      out.write("                                <li><a href=\"#\"><i class=\"fa fa-google\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\n");
      out.write("                                <li><a href=\"https://www.instagram.com/egamorft/\" target=\"_blank\"><i class=\"fa fa-instagram\"\n");
      out.write("                                                                                                     aria-hidden=\"true\"></i></a></li>\n");
      out.write("                            </ul>\n");
      out.write("                            <ul class=\"contacts\">\n");
      out.write("                                <li class=\"phone\"><i class=\"fa fa-phone-square\" aria-hidden=\"true\"></i>+84 888736810</li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!--                MAIN MENU WRAP BEGIN-->\n");
      out.write("        <div class=\"main-menu-wrap sticky-menu\">\n");
      out.write("            <a href=\"Home\" class=\"custom-logo-link\"><img src=\"images/common/F.png\" alt=\"logo\" class=\"custom-logo\" style=\"width:95px\"></a>\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <nav class=\"navbar\">\n");
      out.write("                    <div class=\"collapse navbar-collapse\" id=\"team-menu\">\n");
      out.write("                        <ul class=\"main-menu nav\">\n");
      out.write("                            <li class=\"active\">\n");
      out.write("                                <a href=\"Home\"><span>Home</span></a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"Matches\"><span>Matches</span></a>\n");
      out.write("                                <ul>\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"Table\"><span>Standings<i class=\"fa fa-long-arrow-right\"\n");
      out.write("                                                                          aria-hidden=\"true\"></i></span></a>\n");
      out.write("                                        <ul>\n");
      out.write("                                            <li><a href=\"Table\"><span>Premier League</span></a></li>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li><a href=\"Mathces\"><span>result</span></a></li>\n");
      out.write("                                    <li><a href=\"Schedule\"><span>upcoming match</span></a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"staff.html\"><span>Team</span></a>\n");
      out.write("                                <ul>\n");
      out.write("                                    <li><a href=\"Players\"><span>top scorer</span></a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("                            <li><a href=\"Product\"><span>Store</span></a></li>\n");
      out.write("                            <li class=\"cart full\">\n");
      out.write("                                <a href=\"#cart\">\n");
      out.write("                                    <span><i class=\"fa fa-shopping-cart\" aria-hidden=\"true\"></i></span>\n");
      out.write("                                </a>\n");
      out.write("                                <div class=\"cart-drop\">\n");
      out.write("                                    <table class=\"ct\">\n");
      out.write("                                        ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                    </table>\n");
      out.write("                                    <div class=\"wrap btn-wrap\">\n");
      out.write("                                        <a href=\"carts\" class=\"btn view\">View cart</a>\n");
      out.write("                                        <a href=\"checkout.html\" class=\"btn check\">checkout cart</a>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </li>\t\n");
      out.write("\n");
      out.write("\n");
      out.write("                            <li style=\"float: right; text-align: right; margin-top: 42px;\"><a href=\"SignIn\">sign in</a></li>\n");
      out.write("                        </ul>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </nav>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!--BREADCRUMBS BEGIN-->\n");
      out.write("        <section class=\"image-header\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <div class=\"info\">\n");
      out.write("                            <div class=\"wrap\">\n");
      out.write("                                <ul class=\"breadcrumbs\">\n");
      out.write("                                    <li><a href=\"Home\">Main</a>/</li>\n");
      out.write("                                    <li>Product</li>\n");
      out.write("                                </ul>\n");
      out.write("                                <h1>Detail</h1>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\t\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!--BREADCRUMBS END-->\n");
      out.write("\n");
      out.write("        <!--PRODUCT SINGLE BEGIN-->\n");
      out.write("\n");
      out.write("        <section class=\"product-single\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                        <h4>Slim Support</h4>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-7\">\n");
      out.write("                        <div class=\"product-slider\">\n");
      out.write("                            <div class=\"connected-carousels\">\n");
      out.write("                                <div class=\"navigation jcarousel-skin-default\">\n");
      out.write("                                    <a href=\"#\" class=\"prev prev-navigation\"><i class=\"fa fa-angle-up\" aria-hidden=\"true\"></i></a>\n");
      out.write("                                    <a href=\"#\" class=\"next next-navigation\"><i class=\"fa fa-angle-down\" aria-hidden=\"true\"></i></a>\n");
      out.write("                                    <div class=\"carousel carousel-navigation jcarousel-vertical\">\n");
      out.write("                                        <ul>\n");
      out.write("                                            ");
      if (_jspx_meth_c_forEach_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                            ");
      if (_jspx_meth_c_forEach_2(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                        </ul>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"stage\">\n");
      out.write("                                    <div class=\"carousel carousel-stage\">\n");
      out.write("\n");
      out.write("                                        <ul>\n");
      out.write("                                            ");
      if (_jspx_meth_c_forEach_3(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                            ");
      if (_jspx_meth_c_forEach_4(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                        </ul>\n");
      out.write("                                        <a href=\"#\" class=\"prev prev-stage\"><span><i class=\"fa fa-angle-left\" aria-hidden=\"true\"></i></span></a>\n");
      out.write("                                        <a href=\"#\" class=\"next next-stage\"><span><i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i></span></a>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-5\">\n");
      out.write("                        <div class=\"product-right-info\">\n");
      out.write("                            <div class=\"rating-wrap\">\n");
      out.write("                                <div class=\"rating five\"></div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"price\">£");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</div>\n");
      out.write("                            <p>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.description}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("                            <div class=\"title\">Colors</div>\n");
      out.write("                            <div class=\"color-filter-item\">\n");
      out.write("                                <ul>\n");
      out.write("                                    ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                    ");
      if (_jspx_meth_c_if_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                    ");
      if (_jspx_meth_c_if_2(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                    ");
      if (_jspx_meth_c_if_3(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                    ");
      if (_jspx_meth_c_if_4(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"title\">Quantity</div>\n");
      out.write("                            <div class=\"quantity-wrap\">\n");
      out.write("                                <input type=\"number\" placeholder=\"1\">\n");
      out.write("                                <a href=\"add-to-cart?productId=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"btn small\">Add to cart</a>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"details\">\n");
      out.write("                                <ul>\n");
      out.write("                                    <li><span>SKU: </span>2021/2022</li>\n");
      out.write("                                    <li><span>Categories: </span>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</li>\n");
      out.write("                                    <li><span>Tags: </span>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.code}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                            <ul class=\"socials\">\n");
      out.write("                                <li><a href=\"https://www.facebook.com/egamorft/\" target=\"_blank\"><i class=\"fa fa-facebook-square\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("                                <li><a href=\"#\"><i class=\"fa fa-google\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("                                <li><a href=\"https://www.instagram.com/egamorft/\" target=\"_blank\"><i class=\"fa fa-instagram\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <!--PRODUCT SINGLE END-->\n");
      out.write("\n");
      out.write("        <!--FEATURED PRODUCTS BEGIN-->\n");
      out.write("\n");
      out.write("        <section class=\"featured-products\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                        <h4>Featured products</h4>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                        <div class=\"owl-carousel owl-theme featured-slider\">\n");
      out.write("                            ");
      if (_jspx_meth_c_forEach_5(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <div class=\"custom-navigation featured-navigation\">\n");
      out.write("                            <a class=\"custom-next-btn\"><i class=\"fa fa-angle-left\" aria-hidden=\"true\"></i></a>\n");
      out.write("                            <a class=\"custom-prev-btn\"><i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i></a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6 text-right\">\n");
      out.write("                        <a href=\"Product\" class=\"feat-show-all\">show all</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <!--FEATURED PRODUCTS END-->\n");
      out.write("\n");
      out.write("        <!--MAIN SPONSOR SLIDER BEGIN-->\n");
      out.write("        <div class=\"main-sponsor-slider-background\">\n");
      out.write("            <div id=\"main-sponsor-slider\" class=\"carousel slide main-sponsor-slider\" data-ride=\"carousel\">\n");
      out.write("                <div class=\"carousel-inner\" role=\"listbox\">\n");
      out.write("                    <div class=\"item active\">\n");
      out.write("                        <div class=\"container\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-xs-4 text-center\">\n");
      out.write("                                    <img class=\"sponsor-icons\" src=\"images/common/FPT-sponsor.png\" alt=\"sponsor-image\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-xs-4 text-center\">\n");
      out.write("                                    <img class=\"sponsor-icons\" src=\"images/common/Adidas-sponsor.png\" alt=\"sponsor-image\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-xs-4 text-center\">\n");
      out.write("                                    <img class=\"sponsor-icons dota-csgo-image\" src=\"images/common/Nike-sponsor.png\" alt=\"sponsor-image\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"item\">\n");
      out.write("                        <div class=\"container\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-xs-4 text-center\">\n");
      out.write("                                    <img class=\"sponsor-icons\" src=\"images/common/FPT-sponsor.png\" alt=\"sponsor-image\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-xs-4 text-center\">\n");
      out.write("                                    <img class=\"sponsor-icons\" src=\"images/common/Adidas-sponsor.png\" alt=\"sponsor-image\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-xs-4 text-center\">\n");
      out.write("                                    <img class=\"sponsor-icons dota-csgo-image\" src=\"images/common/Nike-sponsor.png\" alt=\"sponsor-image\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- Controls -->\n");
      out.write("                    <!-- <a class=\"nav-arrow left-arrow\" href=\"#main-sponsor-slider\" role=\"button\" data-slide=\"prev\">\n");
      out.write("                        <i class=\"fa fa-angle-left\" aria-hidden=\"true\"></i>\n");
      out.write("                        <span class=\"sr-only\">Previous</span>\n");
      out.write("                    </a>\n");
      out.write("                    <a class=\"nav-arrow right-arrow\" href=\"#main-sponsor-slider\" role=\"button\" data-slide=\"next\">\n");
      out.write("                        <i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i>\n");
      out.write("                        <span class=\"sr-only\">Next</span>\n");
      out.write("                    </a> -->\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!--MAIN SPONSOR SLIDER END-->\n");
      out.write("\n");
      out.write("        <!--    </section>-->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--FOOTER BEGIN-->\n");
      out.write("        <footer class=\"footer \">\n");
      out.write("            <div class=\"wrapper-overfllow \">\n");
      out.write("                <div class=\"container \">\n");
      out.write("                    <div class=\"row \">\n");
      out.write("                        <div class=\"col-md-4 col-sm-12 \">\n");
      out.write("                            <div class=\"footer-left \">\n");
      out.write("                                <div class=\"wrap \">\n");
      out.write("                                    <a href=\"index-2.html \" class=\"foot-logo \"><img src=\"images/soccer/footer-logo.png \" alt=\"footer-logo \"></a>\n");
      out.write("                                    <p>Trang web được lập ra nhằm giúp cho người dùng cho trải nghiệm tốt nhất, chúc các bạn may mắn.</p>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\" col-lg-3 col-md-4 col-sm-12 \">\n");
      out.write("                            <div class=\"foot-contact \">\n");
      out.write("                                <h4>Contact us</h4>\n");
      out.write("                                <ul class=\"contact-list \">\n");
      out.write("                                    <li><i class=\"fa fa-flag \" aria-hidden=\"true \"></i><span>Km29, ĐCT08, Thạch Hoà, Thạch Thất, Hà Nội</span></li>\n");
      out.write("                                    <li><i class=\"fa fa-envelope \" aria-hidden=\"true \"></i><a href=\"mailto:tungnhhe150305@fpt.edu.vn \">tungnhhe150305@email.com</a></li>\n");
      out.write("                                    <li class=\"phone \"><i class=\"fa fa-phone \" aria-hidden=\"true \"></i><span>+84 888736810</span></li>\n");
      out.write("                                </ul>\n");
      out.write("                                <ul class=\"socials \">\n");
      out.write("                                    <li><a href=\"https://www.facebook.com/egamorft/ \" target=\"_blank \"><i class=\"fa fa-facebook-square \" aria-hidden=\"true \"></i></a></li>\n");
      out.write("                                    <li><a href=\"# \"><i class=\"fa fa-google \" aria-hidden=\"true \"></i></a></li>\n");
      out.write("                                    <li><a href=\"https://www.instagram.com/egamorft/ \" target=\"_blank \"><i class=\"fa fa-instagram \" aria-hidden=\"true \"></i></a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"footer-menu-wrap \">\n");
      out.write("                <div class=\"container \">\n");
      out.write("                    <div class=\"row \">\n");
      out.write("                        <div class=\"col-md-12 \">\n");
      out.write("                            <a href=\"#top \" class=\"foot-up \"><span>up <i class=\"fa fa-caret-up \"\n");
      out.write("                                                                         aria-hidden=\"true \"></i></span></a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("        <!--FOOTER END-->\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\" src=\"js/library/jquery.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/library/jquery-ui.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/library/bootstrap.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/library/jquery.sticky.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/library/jquery.jcarousel.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/library/jcarousel.connected-carousels.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/library/owl.carousel.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/library/progressbar.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/library/jquery.bracket.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/library/chartist.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/library/Chart.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/library/fancySelect.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/library/isotope.pkgd.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/library/imagesloaded.pkgd.js\"></script>\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.team-coundown.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/matches-slider.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/header.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/matches_broadcast_listing.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/news-line.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/match_galery.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/main-club-gallery.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/product-slider.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/circle-bar.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/standings.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/shop-price-filter.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/timeseries.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/radar.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/slider.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/preloader.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/diagram.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/bi-polar-diagram.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/label-placement-diagram.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/donut-chart.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/animate-donut.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/advanced-smil.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/svg-path.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/pick-circle.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/horizontal-bar.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/gauge-chart.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/stacked-bar.js\"></script>\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\" src=\"js/library/chartist-plugin-legend.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/library/chartist-plugin-threshold.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/library/chartist-plugin-pointlabels.js\"></script>\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\" src=\"js/treshold.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/visible.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/anchor.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/landing_carousel.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/landing_sport_standings.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/twitterslider.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/champions.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/landing_mainnews_slider.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/carousel.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/video_slider.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/footer_slides.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/player_test.js\"></script>\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\" src=\"js/main.js\"></script>\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\" src=\"dev-assets/demo-switcher.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.carts}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("cart");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                            <tr>\n");
          out.write("                                                <td class=\"delete\"><a href=\"cart-delete?productId=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cart.value.product.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"><i class=\"fa fa-close\" aria-hidden=\"true\"></i></a></td>\n");
          out.write("                                                <td class=\"info\">\n");
          out.write("                                                    <img class=\"product-image\" src=\"images/product/");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cart.value.product.imageUrl}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"product-image\">\n");
          out.write("                                                    <em>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cart.value.product.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("<br><em class=\"price\"> ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cart.value.quantity}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("x £ ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cart.value.product.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</em></em>\n");
          out.write("                                                </td>\n");
          out.write("                                            </tr>\n");
          out.write("                                        ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent(null);
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listImages}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_1.setVar("image");
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                                <li>\n");
          out.write("                                                    <img width=\"110px\" src=\"images/product/");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${image.imageUrl}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"product\">\n");
          out.write("                                                </li>\n");
          out.write("                                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_2 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_2.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_2.setParent(null);
    _jspx_th_c_forEach_2.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listImages}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_2.setVar("image");
    int[] _jspx_push_body_count_c_forEach_2 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_2 = _jspx_th_c_forEach_2.doStartTag();
      if (_jspx_eval_c_forEach_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                                <li>\n");
          out.write("                                                    <img width=\"110px\" src=\"images/product/");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${image.imageUrl}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"product\">\n");
          out.write("                                                </li>\n");
          out.write("                                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_2.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_2[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_2.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_2.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_2);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_3 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_3.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_3.setParent(null);
    _jspx_th_c_forEach_3.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listImages}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_3.setVar("image");
    int[] _jspx_push_body_count_c_forEach_3 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_3 = _jspx_th_c_forEach_3.doStartTag();
      if (_jspx_eval_c_forEach_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                                <li class=\"stage-item\">\n");
          out.write("                                                    <span class=\"store-badge new\">new</span>\n");
          out.write("                                                    <img width=\"545px\" src=\"images/product/");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${image.imageUrl}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"product\">\n");
          out.write("                                                </li>\n");
          out.write("                                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_3.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_3[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_3.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_3.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_3);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_4(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_4 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_4.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_4.setParent(null);
    _jspx_th_c_forEach_4.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listImages}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_4.setVar("image");
    int[] _jspx_push_body_count_c_forEach_4 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_4 = _jspx_th_c_forEach_4.doStartTag();
      if (_jspx_eval_c_forEach_4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                                <li class=\"stage-item\">\n");
          out.write("                                                    <span class=\"store-badge new\">new</span>\n");
          out.write("                                                    <img width=\"545px\" src=\"images/product/");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${image.imageUrl}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"product\">\n");
          out.write("                                                </li>\n");
          out.write("                                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_4.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_4[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_4.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_4.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_4);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.code eq 'MC'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                        <li>\n");
        out.write("\n");
        out.write("                                            <label class=\"color-check blue\">\n");
        out.write("                                                <input type=\"checkbox\" />\n");
        out.write("                                                <span class=\"check\"><i class=\"fa fa-check\" aria-hidden=\"true\"></i></span>\n");
        out.write("                                            </label>\n");
        out.write("\n");
        out.write("                                        </li>\n");
        out.write("                                    ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_c_if_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_1.setPageContext(_jspx_page_context);
    _jspx_th_c_if_1.setParent(null);
    _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.code eq 'MU'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
    if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                        <li>\n");
        out.write("\n");
        out.write("                                            <label class=\"color-check red\">\n");
        out.write("                                                <input type=\"checkbox\" />\n");
        out.write("                                                <span class=\"check\"><i class=\"fa fa-check\" aria-hidden=\"true\"></i></span>\n");
        out.write("                                            </label>\n");
        out.write("\n");
        out.write("                                        </li>\n");
        out.write("                                    ");
        int evalDoAfterBody = _jspx_th_c_if_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
    return false;
  }

  private boolean _jspx_meth_c_if_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_2 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_2.setPageContext(_jspx_page_context);
    _jspx_th_c_if_2.setParent(null);
    _jspx_th_c_if_2.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.code eq 'LIV'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_2 = _jspx_th_c_if_2.doStartTag();
    if (_jspx_eval_c_if_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                        <li>\n");
        out.write("\n");
        out.write("                                            <label class=\"color-check red\">\n");
        out.write("                                                <input type=\"checkbox\" />\n");
        out.write("                                                <span class=\"check\"><i class=\"fa fa-check\" aria-hidden=\"true\"></i></span>\n");
        out.write("                                            </label>\n");
        out.write("\n");
        out.write("                                        </li>\n");
        out.write("                                    ");
        int evalDoAfterBody = _jspx_th_c_if_2.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
    return false;
  }

  private boolean _jspx_meth_c_if_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_3 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_3.setPageContext(_jspx_page_context);
    _jspx_th_c_if_3.setParent(null);
    _jspx_th_c_if_3.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.code eq 'A'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_3 = _jspx_th_c_if_3.doStartTag();
    if (_jspx_eval_c_if_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                        <li>\n");
        out.write("\n");
        out.write("                                            <label class=\"color-check red\">\n");
        out.write("                                                <input type=\"checkbox\" />\n");
        out.write("                                                <span class=\"check\"><i class=\"fa fa-check\" aria-hidden=\"true\"></i></span>\n");
        out.write("                                            </label>\n");
        out.write("\n");
        out.write("                                        </li>\n");
        out.write("                                    ");
        int evalDoAfterBody = _jspx_th_c_if_3.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_3);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_3);
    return false;
  }

  private boolean _jspx_meth_c_if_4(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_4 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_4.setPageContext(_jspx_page_context);
    _jspx_th_c_if_4.setParent(null);
    _jspx_th_c_if_4.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.code eq 'C'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_4 = _jspx_th_c_if_4.doStartTag();
    if (_jspx_eval_c_if_4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                        <li>\n");
        out.write("\n");
        out.write("                                            <label class=\"color-check blue\">\n");
        out.write("                                                <input type=\"checkbox\" />\n");
        out.write("                                                <span class=\"check\"><i class=\"fa fa-check\" aria-hidden=\"true\"></i></span>\n");
        out.write("                                            </label>\n");
        out.write("\n");
        out.write("                                        </li>\n");
        out.write("                                    ");
        int evalDoAfterBody = _jspx_th_c_if_4.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_4);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_4);
    return false;
  }

  private boolean _jspx_meth_c_forEach_5(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_5 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_5.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_5.setParent(null);
    _jspx_th_c_forEach_5.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listProducts}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_5.setVar("product");
    int[] _jspx_push_body_count_c_forEach_5 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_5 = _jspx_th_c_forEach_5.doStartTag();
      if (_jspx_eval_c_forEach_5 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                <div class=\"store-list-item\">\n");
          out.write("                                    <div>\n");
          out.write("                                        <a href=\"Detail?Product_ID=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">\n");
          out.write("                                            <span class=\"store-badge hot\">hot</span>\n");
          out.write("                                            <img src=\"images/product/");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.imageUrl}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"store-item-img\">\n");
          out.write("                                        </a>\n");
          out.write("                                        <div class=\"info\">\n");
          out.write("                                            <span class=\"name\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</span>\n");
          out.write("                                            <span class=\"price\">£");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</span>\t\n");
          out.write("                                            <div class=\"btn-wrap\">\n");
          out.write("                                                <a href=\"add-to-cart?productId=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" class=\"btn small\" type=\"button\">Add to cart</a>\n");
          out.write("                                                <a href=\"Detail?Product_ID=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" class=\"btn small\" type=\"button\">Details</a>\n");
          out.write("                                            </div>\n");
          out.write("                                        </div>\n");
          out.write("                                    </div>\n");
          out.write("                                </div>\n");
          out.write("                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_5.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_5[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_5.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_5.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_5);
    }
    return false;
  }
}
