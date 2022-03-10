package org.apache.jsp.view;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/view/../Components/HeaderNotCarts.jsp");
    _jspx_dependants.add("/view/../Components/Footer.jsp");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_choose;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items_end_begin;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_otherwise;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_when_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_choose = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_forEach_var_items_end_begin = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_otherwise = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_when_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_choose.release();
    _jspx_tagPool_c_if_test.release();
    _jspx_tagPool_c_forEach_var_items_end_begin.release();
    _jspx_tagPool_c_otherwise.release();
    _jspx_tagPool_c_when_test.release();
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
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"preloader-wrapper\" id=\"preloader\">\n");
      out.write("    <div class=\"motion-line dark-big\"></div>\n");
      out.write("    <div class=\"motion-line yellow-big\"></div>\n");
      out.write("    <div class=\"motion-line dark-small\"></div>\n");
      out.write("    <div class=\"motion-line yellow-normal\"></div>\n");
      out.write("    <div class=\"motion-line yellow-small1\"></div>\n");
      out.write("    <div class=\"motion-line yellow-small2\"></div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"top-bar\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-7 hidden-sm hidden-xs\">\n");
      out.write("                <div class=\"top-contacts\">\n");
      out.write("                    <ul class=\"socials\">\n");
      out.write("                        <li><a href=\"https://www.facebook.com/egamorft/\" target=\"_blank\"><i\n");
      out.write("                                    class=\"fa fa-facebook-square\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\n");
      out.write("                        <li><a href=\"#\"><i class=\"fa fa-google\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\n");
      out.write("                        <li><a href=\"https://www.instagram.com/egamorft/\" target=\"_blank\"><i class=\"fa fa-instagram\"\n");
      out.write("                                                                                             aria-hidden=\"true\"></i></a></li>\n");
      out.write("                    </ul>\n");
      out.write("                    <ul class=\"contacts\">\n");
      out.write("                        <li class=\"phone\"><i class=\"fa fa-phone-square\" aria-hidden=\"true\"></i>+84 888736810</li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!--                MAIN MENU WRAP BEGIN-->\n");
      out.write("<div class=\"main-menu-wrap sticky-menu\">\n");
      out.write("    <a href=\"Home\" class=\"custom-logo-link\"><img src=\"images/common/F.png\" alt=\"logo\" class=\"custom-logo\" style=\"width:95px\"></a>\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <nav class=\"navbar\">\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"team-menu\">\n");
      out.write("                <ul class=\"main-menu nav\">\n");
      out.write("                    <li class=\"active\">\n");
      out.write("                        <a href=\"Home\"><span>Home</span></a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"Matches\"><span>Matches</span></a>\n");
      out.write("                        <ul>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"Table\"><span>Standings<i class=\"fa fa-long-arrow-right\"\n");
      out.write("                                                                  aria-hidden=\"true\"></i></span></a>\n");
      out.write("                                <ul>\n");
      out.write("                                    <li><a href=\"Table\"><span>Premier League</span></a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("                            <li><a href=\"Matches\"><span>result</span></a></li>\n");
      out.write("                            <li><a href=\"Schedule\"><span>upcoming match</span></a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"Players\"><span>Team</span></a>\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"Players\"><span>top scorer</span></a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li><a href=\"Product\"><span>Store</span></a></li>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <li style=\"float: right; text-align: right; margin-top: 42px;\">\n");
      out.write("                        ");
      if (_jspx_meth_c_choose_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("                    </li>\n");
      out.write("                    ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                </ul>\n");
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--        MAIN MENU WRAP END-->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"main-slider-section\">\n");
      out.write("            <div class=\"main-slider\">\n");
      out.write("                <div id=\"main-slider\" class=\"carousel slide\" data-ride=\"carousel\" data-interval=\"4000\">\n");
      out.write("                    <div class=\"carousel-inner\" role=\"listbox\">\n");
      out.write("                        <div class=\"item active\">\n");
      out.write("                            <div class=\"main-slider-caption\">\n");
      out.write("                                <div class=\"container\">\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col-md-12\">\n");
      out.write("                                            <div class=\"match-date\">Full time score / Round 6 / Premier league</div>\n");
      out.write("                                            ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                            <div class=\"booking\">\n");
      out.write("                                                <a href=\"Matches\">\n");
      out.write("                                                    Match Review\n");
      out.write("                                                </a>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"item\">\n");
      out.write("                            <div class=\"main-slider-caption\">\n");
      out.write("                                <div class=\"container\">\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col-md-12\">\n");
      out.write("                                            <div class=\"match-date\">1 Jan 2022 / 2:00 AM / Premier League</div>\n");
      out.write("                                            <div class=\"team\"> Manchester United - Manchester City\n");
      out.write("                                            </div>\n");
      out.write("                                            <div id=\"counter\" data-date=\"1534185200000\">\n");
      out.write("                                                <ul>\n");
      out.write("                                                    <li>\n");
      out.write("                                                        <div class=\"digit days\">15</div>\n");
      out.write("                                                        <div class=\"descr\">days</div>\n");
      out.write("                                                    </li>\n");
      out.write("                                                    <li>\n");
      out.write("                                                        <div class=\"digit hours\">15</div>\n");
      out.write("                                                        <div class=\"descr\">hours</div>\n");
      out.write("                                                    </li>\n");
      out.write("                                                    <li>\n");
      out.write("                                                        <div class=\"digit minutes\">15</div>\n");
      out.write("                                                        <div class=\"descr\">minutes</div>\n");
      out.write("                                                    </li>\n");
      out.write("                                                    <li>\n");
      out.write("                                                        <div class=\"digit seconds\">15</div>\n");
      out.write("                                                        <div class=\"descr\">seconds</div>\n");
      out.write("                                                    </li>\n");
      out.write("                                                </ul>\n");
      out.write("                                            </div>\n");
      out.write("                                            <script type=\"text/javascript\">\n");
      out.write("                                                function getTimeRemaining(endtime) {\n");
      out.write("                                                    const total = Date.parse(endtime) - Date.parse(new Date());\n");
      out.write("                                                    const seconds = Math.floor((total / 1000) % 60);\n");
      out.write("                                                    const minutes = Math.floor((total / 1000 / 60) % 60);\n");
      out.write("                                                    const hours = Math.floor((total / (1000 * 60 * 60)) % 24);\n");
      out.write("                                                    const days = Math.floor(total / (1000 * 60 * 60 * 24));\n");
      out.write("\n");
      out.write("                                                    return {\n");
      out.write("                                                        total,\n");
      out.write("                                                        days,\n");
      out.write("                                                        hours,\n");
      out.write("                                                        minutes,\n");
      out.write("                                                        seconds\n");
      out.write("                                                    };\n");
      out.write("                                                }\n");
      out.write("\n");
      out.write("                                                function initializeClock(id, endtime) {\n");
      out.write("                                                    const clock = document.getElementById(\"counter\");\n");
      out.write("                                                    const daysSpan = clock.querySelector('.digit.days');\n");
      out.write("                                                    const hoursSpan = clock.querySelector('.digit.hours');\n");
      out.write("                                                    const minutesSpan = clock.querySelector('.digit.minutes');\n");
      out.write("                                                    const secondsSpan = clock.querySelector('.digit.seconds');\n");
      out.write("\n");
      out.write("                                                    function updateClock() {\n");
      out.write("                                                        const t = getTimeRemaining(endtime);\n");
      out.write("\n");
      out.write("                                                        daysSpan.innerHTML = t.days;\n");
      out.write("                                                        hoursSpan.innerHTML = ('0' + t.hours).slice(-2);\n");
      out.write("                                                        minutesSpan.innerHTML = ('0' + t.minutes).slice(-2);\n");
      out.write("                                                        secondsSpan.innerHTML = ('0' + t.seconds).slice(-2);\n");
      out.write("\n");
      out.write("                                                        if (t.total <= 0) {\n");
      out.write("                                                            clearInterval(timeinterval);\n");
      out.write("                                                        }\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    updateClock();\n");
      out.write("                                                    const timeinterval = setInterval(updateClock, 1000);\n");
      out.write("                                                }\n");
      out.write("\n");
      out.write("                                                const deadline = 'January 1 2022 2:00:00 GMT+7'\n");
      out.write("                                                initializeClock('counter', deadline);\n");
      out.write("                                            </script>\n");
      out.write("                                            <div class=\"booking\">\n");
      out.write("                                                <a href=\"CMS\">\n");
      out.write("                                                    Bet now\n");
      out.write("                                                </a>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"item\">\n");
      out.write("                            <div class=\"main-slider-caption\">\n");
      out.write("                                <div class=\"container\">\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col-md-12\">\n");
      out.write("                                            <div class=\"match-date\">Up coming matches / Round 7 / Premier League</div>\n");
      out.write("                                            ");
      if (_jspx_meth_c_forEach_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                            <div class=\"booking\">\n");
      out.write("                                                <a href=\"Schedule\">\n");
      out.write("                                                    View schedule\n");
      out.write("                                                </a>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"event-nav\">\n");
      out.write("                        <div class=\"container\">\n");
      out.write("                            <div class=\"row no-gutter carousel-indicators\">\n");
      out.write("\n");
      out.write("                                <div class=\"col-sm-4 active\" data-slide-to=\"0\" data-target=\"#main-slider\">\n");
      out.write("                                    <a href=\"#\" class=\"nav-item\">\n");
      out.write("                                        <span class=\"championship\">Full-time result</span>\n");
      out.write("                                        ");
      if (_jspx_meth_c_forEach_2(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                        <!-- <span class=\"game-result\">(5-4) penalties</span> -->\n");
      out.write("                                    </a>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"col-sm-4\" data-slide-to=\"1\" data-target=\"#main-slider\">\n");
      out.write("                                    <a href=\"#\" class=\"nav-item\">\n");
      out.write("                                        <span class=\"championship\">Next match</span>\n");
      out.write("                                        <span class=\"teams-wrap\">\n");
      out.write("\n");
      out.write("                                            <span class=\"team\"><img src=\"images/soccer/Team13.png\"\n");
      out.write("                                                                    alt=\"team-logo\"></span>\n");
      out.write("                                            <span class=\"score\">\n");
      out.write("                                                <span>VS</span>\n");
      out.write("                                            </span>\n");
      out.write("\n");
      out.write("                                            <span class=\"team1\">\n");
      out.write("                                                <span><img src=\"images/soccer/Team12.png\" alt=\"team-logo\"></span>\n");
      out.write("                                            </span>\n");
      out.write("\n");
      out.write("                                        </span>\n");
      out.write("                                        <span class=\"game-result\">1 Jan 2022 / 2:00 AM / Premier league</span>\n");
      out.write("                                    </a>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"col-sm-4\" data-slide-to=\"2\" data-target=\"#main-slider\">\n");
      out.write("                                    <a href=\"#\" class=\"nav-item\">\n");
      out.write("                                        <span class=\"championship\">Upcoming match</span>\n");
      out.write("                                        ");
      if (_jspx_meth_c_forEach_3(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                        <span class=\"game-result\">Round 7 - Premier league</span>\n");
      out.write("                                    </a>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!--MAIN MACTH SHEDULE BEGIN-->\n");
      out.write("\n");
      out.write("        <section class=\"main-match-shedule\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-6 col-sm-12 col-xs-12\">\n");
      out.write("                        <h6>Next match</h6>\n");
      out.write("\n");
      out.write("                        <div class=\"main-next-match bg-cover\">\n");
      out.write("                            <img src=\"images/soccer/next-match-bg.jpg\" class=\"next-match-background-img\" alt=\"next-image\">\n");
      out.write("                            <div class=\"wrap\">\n");
      out.write("                                <div class=\"place\">Anfield Stadium</div>\n");
      out.write("                                <div class=\"date\">3 october 2021 / 10:30 PM</div>\n");
      out.write("                                ");
      if (_jspx_meth_c_forEach_4(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                <a href=\"schedule\" class=\"booking\">UPCOMING MATCH</a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6 col-sm-12 col-xs-12\">\n");
      out.write("                        <h6>Latest matches result</h6>\n");
      out.write("                        ");
      if (_jspx_meth_c_forEach_5(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <!--MAIN MACTH SHEDULE END-->\n");
      out.write("\n");
      out.write("        <!--MAIN PLAYERS STAT BEGIN-->\n");
      out.write("\n");
      out.write("        <section class=\"main-players-stat bg-cover\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-7\">\n");
      out.write("                        <h4 class=\"hockey-stats-h4\">Players stats</h4>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <div class=\"single-player-stats players_statistic_slider\">\n");
      out.write("                            <ul class=\"player-filters\" role=\"tablist\">\n");
      out.write("                                <li class=\"active\">\n");
      out.write("                                    <a href=\"#\" role=\"tab\" data-toggle=\"tab\">\n");
      out.write("                                        Top scorers\n");
      out.write("                                    </a>\n");
      out.write("                                </li>\n");
      out.write("\n");
      out.write("                            </ul>\n");
      out.write("                            <div class=\"player-stat-slider tab-content\">\n");
      out.write("                                <div id=\"slider\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("                                    <div class=\"carousel-inner tab-content\" role=\"listbox\">\n");
      out.write("                                        <div class=\"item active tab-pane\" id=\"goalkeepers\">\n");
      out.write("                                            ");
      if (_jspx_meth_c_forEach_6(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-5\">\n");
      out.write("                        <h4 class=\"hockey-stats-h4\">Best players</h4>\n");
      out.write("                        <div class=\"team-best-player\">\n");
      out.write("                            <div class=\"\">\n");
      out.write("                                <ul class=\"player-filters\" role=\"tablist\">\n");
      out.write("                                    <li class=\"active\">\n");
      out.write("                                        <a href=\"#goals\" role=\"tab\" data-toggle=\"tab\">goals</a>\n");
      out.write("                                    </li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"tab-content\">\n");
      out.write("                                <div class=\"best-players-list tab-pane active\" id=\"goals\">\n");
      out.write("\n");
      out.write("                                    ");
      if (_jspx_meth_c_forEach_7(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <!--MAIN PLAYERS STAT END-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--STANDING TABLE WRAP BEGIN-->\n");
      out.write("\n");
      out.write("        <section class=\"main-match-shedule amateurs-match-shedule\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12 col-sm-12 col-xs-12\">\n");
      out.write("                        <img class=\"flag\" src=\"images/common/EPL-logo.png\">\n");
      out.write("                        <!--<h4>Premier league</h4>-->\n");
      out.write("                        <ul class=\"tab-filters\" role=\"tablist\">\n");
      out.write("                            <li class=\"active\"><a href=\"#2021\" role=\"tab\" data-toggle=\"tab\">2021</a></li>\n");
      out.write("                            <li><a href=\"#2020\" role=\"tab\" data-toggle=\"tab\">2020</a></li>\n");
      out.write("                            <li><a href=\"#2019\" role=\"tab\" data-toggle=\"tab\">2019</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"col-md-12 col-sm-12 col-xs-12 overflow-scroll standings-table\">\n");
      out.write("                        <div class=\"tab-content\">\n");
      out.write("                            <div class=\"tab-pane fade in active\" id=\"2017\" role=\"tabpanel\">\n");
      out.write("\n");
      out.write("                                <table class=\"standing-full\">\n");
      out.write("                                    <tr>\n");
      out.write("                                        <th>pos</th>\n");
      out.write("                                        <th>club</th>\n");
      out.write("                                        <th>played</th>\n");
      out.write("                                        <th>won</th>\n");
      out.write("                                        <th>drawn</th>\n");
      out.write("                                        <th>lost</th>\n");
      out.write("                                        <th>gf</th>\n");
      out.write("                                        <th>ga</th>\n");
      out.write("                                        <th>gd</th>\n");
      out.write("                                        <th>points</th>\n");
      out.write("                                    </tr>\n");
      out.write("                                    ");
      if (_jspx_meth_c_forEach_8(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                </table>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!--MAIN SPONSOR SLIDER BEGIN-->\n");
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
      out.write("\n");
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

  private boolean _jspx_meth_c_choose_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:choose
    org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_choose_0 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _jspx_tagPool_c_choose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
    _jspx_th_c_choose_0.setPageContext(_jspx_page_context);
    _jspx_th_c_choose_0.setParent(null);
    int _jspx_eval_c_choose_0 = _jspx_th_c_choose_0.doStartTag();
    if (_jspx_eval_c_choose_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                            ");
        if (_jspx_meth_c_when_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                            ");
        if (_jspx_meth_c_otherwise_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                        ");
        int evalDoAfterBody = _jspx_th_c_choose_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_choose_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
      return true;
    }
    _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
    return false;
  }

  private boolean _jspx_meth_c_when_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_0 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    _jspx_th_c_when_0.setPageContext(_jspx_page_context);
    _jspx_th_c_when_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    _jspx_th_c_when_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.account==null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_when_0 = _jspx_th_c_when_0.doStartTag();
    if (_jspx_eval_c_when_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                <a href=\"login\">sign in</a>\n");
        out.write("                            ");
        int evalDoAfterBody = _jspx_th_c_when_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_when_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
      return true;
    }
    _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
    return false;
  }

  private boolean _jspx_meth_c_otherwise_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:otherwise
    org.apache.taglibs.standard.tag.common.core.OtherwiseTag _jspx_th_c_otherwise_0 = (org.apache.taglibs.standard.tag.common.core.OtherwiseTag) _jspx_tagPool_c_otherwise.get(org.apache.taglibs.standard.tag.common.core.OtherwiseTag.class);
    _jspx_th_c_otherwise_0.setPageContext(_jspx_page_context);
    _jspx_th_c_otherwise_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    int _jspx_eval_c_otherwise_0 = _jspx_th_c_otherwise_0.doStartTag();
    if (_jspx_eval_c_otherwise_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                <a href=\"#\">Hi ");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.account.fullname}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("</a>\n");
        out.write("                                <ul>\n");
        out.write("                                    <li><a href=\"EditProfile\"><span>My Profile</span></a></li>\n");
        out.write("                                    <li><a href=\"changepass\"><span>Change Password</span></a></li>\n");
        out.write("                                    <li><a href=\"logout\"><span>LogOut</span></a></li>\n");
        out.write("                                </ul>\n");
        out.write("                            ");
        int evalDoAfterBody = _jspx_th_c_otherwise_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_otherwise_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_0);
      return true;
    }
    _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_0);
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
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.account.roleId == '1'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                        <li style=\"margin-left: 50px\">\n");
        out.write("                            <a href=\"manager\">Manager Website</a>\n");
        out.write("                        </li>\n");
        out.write("                    ");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items_end_begin.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("listMatches");
    _jspx_th_c_forEach_0.setBegin(((java.lang.Integer) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.size()-13}", java.lang.Integer.class, (PageContext)_jspx_page_context, null)).intValue());
    _jspx_th_c_forEach_0.setEnd(((java.lang.Integer) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.size()-11}", java.lang.Integer.class, (PageContext)_jspx_page_context, null)).intValue());
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                                <div class=\"team\"> ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getHomeTeam()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\n");
          out.write("                                                    <div class=\"big-count\">\n");
          out.write("                                                        ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getHomeGoal()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(':');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getAwayGoal()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\n");
          out.write("                                                    </div>\n");
          out.write("                                                    ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getAwayTeam()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\n");
          out.write("                                                </div>\n");
          out.write("                                            ");
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
      _jspx_tagPool_c_forEach_var_items_end_begin.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items_end_begin.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent(null);
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_1.setVar("listMatches");
    _jspx_th_c_forEach_1.setBegin(((java.lang.Integer) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.size() - 3}", java.lang.Integer.class, (PageContext)_jspx_page_context, null)).intValue());
    _jspx_th_c_forEach_1.setEnd(((java.lang.Integer) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.size()}", java.lang.Integer.class, (PageContext)_jspx_page_context, null)).intValue());
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                                <div class=\"team\"> ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getHomeTeam()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\n");
          out.write("                                                    <div class=\"big-count\">\n");
          out.write("                                                        VS\n");
          out.write("                                                    </div>\n");
          out.write("                                                    ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getAwayTeam()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\n");
          out.write("                                                </div>\n");
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
      _jspx_tagPool_c_forEach_var_items_end_begin.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_2 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items_end_begin.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_2.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_2.setParent(null);
    _jspx_th_c_forEach_2.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_2.setVar("listMatches");
    _jspx_th_c_forEach_2.setBegin(((java.lang.Integer) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.size()-13}", java.lang.Integer.class, (PageContext)_jspx_page_context, null)).intValue());
    _jspx_th_c_forEach_2.setEnd(((java.lang.Integer) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.size()-13}", java.lang.Integer.class, (PageContext)_jspx_page_context, null)).intValue());
    int[] _jspx_push_body_count_c_forEach_2 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_2 = _jspx_th_c_forEach_2.doStartTag();
      if (_jspx_eval_c_forEach_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                            <span class=\"teams-wrap\">\n");
          out.write("\n");
          out.write("                                                <span class=\"team\"><img src=\"images/soccer/");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getHlogo()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"\n");
          out.write("                                                                        alt=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getHomeTeam()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"></span>\n");
          out.write("                                                <span class=\"score\">\n");
          out.write("                                                    <span>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getHomeGoal()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(':');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getAwayGoal()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</span>\n");
          out.write("                                                </span>\n");
          out.write("\n");
          out.write("                                                <span class=\"team1\">\n");
          out.write("                                                    <span><img src=\"images/soccer/");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getAlogo()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getAwayTeam()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"></span>\n");
          out.write("                                                </span>\n");
          out.write("                                            </span>\n");
          out.write("                                        ");
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
      _jspx_tagPool_c_forEach_var_items_end_begin.reuse(_jspx_th_c_forEach_2);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_3 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items_end_begin.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_3.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_3.setParent(null);
    _jspx_th_c_forEach_3.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_3.setVar("listMatches");
    _jspx_th_c_forEach_3.setBegin(0);
    _jspx_th_c_forEach_3.setEnd(0);
    int[] _jspx_push_body_count_c_forEach_3 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_3 = _jspx_th_c_forEach_3.doStartTag();
      if (_jspx_eval_c_forEach_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                            <span class=\"teams-wrap\">\n");
          out.write("                                                <span class=\"team\"><img src=\"images/soccer/");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getHlogo()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"\n");
          out.write("                                                                        alt=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getHomeTeam()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"></span>\n");
          out.write("                                                <span class=\"score\">\n");
          out.write("                                                    <span>VS</span>\n");
          out.write("                                                </span>\n");
          out.write("\n");
          out.write("                                                <span class=\"team1\">\n");
          out.write("                                                    <span><img src=\"images/soccer/");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getAlogo()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getAwayTeam()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"></span>\n");
          out.write("                                                </span>\n");
          out.write("                                            </span>\n");
          out.write("                                        ");
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
      _jspx_tagPool_c_forEach_var_items_end_begin.reuse(_jspx_th_c_forEach_3);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_4(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_4 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items_end_begin.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_4.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_4.setParent(null);
    _jspx_th_c_forEach_4.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_4.setVar("listMatches");
    _jspx_th_c_forEach_4.setBegin(0);
    _jspx_th_c_forEach_4.setEnd(0);
    int[] _jspx_push_body_count_c_forEach_4 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_4 = _jspx_th_c_forEach_4.doStartTag();
      if (_jspx_eval_c_forEach_4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                    <div class=\"teams-wrap\">\n");
          out.write("                                        <a class=\"team\">\n");
          out.write("                                            <span>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getHomeTeam()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</span>\n");
          out.write("                                            <span><img src=\"images/soccer/");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getHlogo()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getHomeTeam()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"></span>\n");
          out.write("                                        </a>\n");
          out.write("                                        <div class=\"vs\">\n");
          out.write("                                            vs\n");
          out.write("                                        </div>\n");
          out.write("                                        <a class=\"team1\">\n");
          out.write("                                            <span><img src=\"images/soccer/");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getAlogo()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getAwayTeam()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"></span>\n");
          out.write("                                            <span>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getAwayTeam()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</span>\n");
          out.write("                                        </a>\n");
          out.write("                                    </div>\n");
          out.write("                                ");
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
      _jspx_tagPool_c_forEach_var_items_end_begin.reuse(_jspx_th_c_forEach_4);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_5(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_5 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items_end_begin.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_5.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_5.setParent(null);
    _jspx_th_c_forEach_5.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_5.setVar("listMatches");
    _jspx_th_c_forEach_5.setBegin(1);
    _jspx_th_c_forEach_5.setEnd(5);
    int[] _jspx_push_body_count_c_forEach_5 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_5 = _jspx_th_c_forEach_5.doStartTag();
      if (_jspx_eval_c_forEach_5 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                            <div class=\"main-lates-matches\">\n");
          out.write("                                <a href=\"#\" class=\"item\">\n");
          out.write("                                    <span class=\"championship\">Premier league - Round 6</span>\n");
          out.write("                                    <span class=\"teams-wrap\">\n");
          out.write("                                        <span class=\"team\">\n");
          out.write("                                            <span>\n");
          out.write("                                                <img src=\"images/soccer/");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getHlogo()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"team-image\">\n");
          out.write("                                            </span>\n");
          out.write("                                            <span>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getHomeTeam()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</span>\n");
          out.write("                                        </span>\n");
          out.write("                                        <span class=\"score\">\n");
          out.write("                                            <span>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getHomeGoal()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(':');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getAwayGoal()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</span>\n");
          out.write("\n");
          out.write("                                        </span>\n");
          out.write("                                        <span class=\"team1\">\n");
          out.write("                                            <span>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getAwayTeam()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</span>\n");
          out.write("                                            <span><img src=\"images/soccer/");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listMatches.getAlogo()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"team-image\"></span>\n");
          out.write("                                        </span>\n");
          out.write("                                    </span>\n");
          out.write("                                </a>\n");
          out.write("                            </div>\n");
          out.write("                        ");
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
      _jspx_tagPool_c_forEach_var_items_end_begin.reuse(_jspx_th_c_forEach_5);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_6(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_6 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items_end_begin.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_6.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_6.setParent(null);
    _jspx_th_c_forEach_6.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listPlayers}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_6.setVar("players");
    _jspx_th_c_forEach_6.setBegin(0);
    _jspx_th_c_forEach_6.setEnd(0);
    int[] _jspx_push_body_count_c_forEach_6 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_6 = _jspx_th_c_forEach_6.doStartTag();
      if (_jspx_eval_c_forEach_6 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("\n");
          out.write("                                                <div class=\"wrap\">\n");
          out.write("                                                    <div class=\"stat\">\n");
          out.write("                                                        <div class=\"top-info with_number\">\n");
          out.write("                                                            <div class=\"number\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${players.getGoal()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</div>\n");
          out.write("                                                            <a class=\"name\">\n");
          out.write("                                                                ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${players.getName()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\n");
          out.write("                                                            </a>\n");
          out.write("                                                        </div>\n");
          out.write("                                                        <div class=\"progress-wrap\">\n");
          out.write("                                                            <img src=\"images/soccer/");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${players.getTeamLogo()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${players.getTeam()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" width=\"200px\" >\n");
          out.write("                                                        </div>    \n");
          out.write("                                                    </div>\n");
          out.write("                                                    <div class=\"image\">\n");
          out.write("                                                        <a title=\"player-image\" class=\"club\">\n");
          out.write("                                                            <img src=\"images/common/");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${players.getPlayerImage()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"player-image\" >\n");
          out.write("                                                        </a>\n");
          out.write("                                                    </div>\n");
          out.write("                                                </div>\n");
          out.write("                                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_6.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_6.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_6[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_6.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_6.doFinally();
      _jspx_tagPool_c_forEach_var_items_end_begin.reuse(_jspx_th_c_forEach_6);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_7(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_7 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_7.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_7.setParent(null);
    _jspx_th_c_forEach_7.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listPlayers}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_7.setVar("players");
    int[] _jspx_push_body_count_c_forEach_7 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_7 = _jspx_th_c_forEach_7.doStartTag();
      if (_jspx_eval_c_forEach_7 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("\n");
          out.write("                                        <a class=\"item\" >\n");
          out.write("                                            <span class=\"club\"><img src=\"images/soccer/");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${players.getTeamLogo()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${players.getTeam()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" width=\"30px\" ></span>\n");
          out.write("                                            <span>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${players.getName()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</span>\n");
          out.write("                                            <span class=\"achievement\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${players.getGoal()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</span>\n");
          out.write("                                        </a>\n");
          out.write("                                    ");
          int evalDoAfterBody = _jspx_th_c_forEach_7.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_7.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_7[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_7.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_7.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_7);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_8(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_8 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_8.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_8.setParent(null);
    _jspx_th_c_forEach_8.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listTable}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_8.setVar("table");
    int[] _jspx_push_body_count_c_forEach_8 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_8 = _jspx_th_c_forEach_8.doStartTag();
      if (_jspx_eval_c_forEach_8 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("            \n");
          out.write("                                        <tr>\n");
          out.write("                                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${table.getPosition()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                            <td style=\"text-align: left\">\n");
          out.write("                                                <img src=\"images/soccer/");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${table.getClubLogo()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" width=\"30\" height=\"30\" alt=\"team-logo\">&emsp;&emsp;&emsp;&emsp;");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${table.getClub()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\n");
          out.write("                                            </td>\n");
          out.write("                                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${table.getMatchPlayed()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${table.getMatchWon()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${table.getMatchDrawn()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${table.getMatchLost()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${table.getGoalFor()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${table.getGoalAgainst()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${table.getGoalDifferent()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                            <td class=\"points\"><span>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${table.getPoint()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</span></td>\n");
          out.write("                                        </tr>\n");
          out.write("                                    ");
          int evalDoAfterBody = _jspx_th_c_forEach_8.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_8.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_8[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_8.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_8.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_8);
    }
    return false;
  }
}
