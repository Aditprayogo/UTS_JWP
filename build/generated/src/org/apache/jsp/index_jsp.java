package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("   <head>\n");
      out.write("      <meta charset=\"utf-8\">\n");
      out.write("      <title>Form Biodata Diri Peserta</title>\n");
      out.write("      <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css\">\n");
      out.write("   </head>\n");
      out.write("   <style type=\"text/css\">\n");
      out.write("   \tbutton{\n");
      out.write("   \t\twidth: 9%;\n");
      out.write("   \t}\n");
      out.write("\n");
      out.write("   \t.tombol button{\n");
      out.write("   \t\tmargin-left: 2px;\n");
      out.write("                \n");
      out.write("   \t}\n");
      out.write("\n");
      out.write("   \tlabel{\n");
      out.write("   \t\tfont-size: 14px;\n");
      out.write("   \t\tcolor: grey;\n");
      out.write("   \t}\n");
      out.write("   \tnav{\n");
      out.write("   \t\tbackground-color: black;\n");
      out.write("   \t\tcolor: white;\n");
      out.write("   \t}\n");
      out.write("   </style>\n");
      out.write("   <body>\n");
      out.write("   \t<nav class=\"navbar\"> \n");
      out.write("        <label>Biodata Diri Peserta Didik</label>\n");
      out.write("     </nav>  \n");
      out.write("        <div class=\"container-fluid mt-3\">\n");
      out.write("            <form method=\"post\" action=\"simpan.jsp\">\n");
      out.write("            <label>NISN</label>\n");
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("               <div class=\"col-6 col-sm-3\">\n");
      out.write("                  <input type=\"text\" class=\"form-control\" placeholder=\"Nomor Induk Siswa Nasional\" name=\"txtnisn\">\n");
      out.write("               </div>\n");
      out.write("               <button type=\"button\" class=\"btn btn-success\" name=\"cmdsimpan\">Cari</button>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <br>\n");
      out.write("            <label>Nama Lengkap</label>\n");
      out.write("            <div class=\"row\">\n");
      out.write("               <div class=\"col-6 col-md-5\">\n");
      out.write("                  <input type=\"text\" class=\"form-control\" placeholder=\"Nama Lengkap\" name=\"txtnama\">\n");
      out.write("               </div>\n");
      out.write("            </div>\n");
      out.write("            <br>\n");
      out.write("            <label>Tempat, Tanggal Lahir</label>\n");
      out.write("\n");
      out.write("            <div class=\"form-row\">\n");
      out.write("                <div class=\"col-5 col-sm-1\">\n");
      out.write("                   <input type=\"text\" class=\"form-control\" placeholder=\"Tempat\" name=\"tempatlahir\">\n");
      out.write("                </div>   \n");
      out.write("                <div class=\"col-sm-1\">\n");
      out.write("                   <select name=\"tanggal\" class=\"form-control\">\n");
      out.write("                   <option disabled selected>Tanggal</option>\n");
      out.write("                   ");

                     for (int i = 1; i <= 30; i++) {
                   
      out.write("\n");
      out.write("                   <option value=\"");
      out.print(i);
      out.write('"');
      out.write('>');
      out.print(i);
      out.write("</option>\n");
      out.write("                   ");

                     }
                    
      out.write("\n");
      out.write("                   </select>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-1\">\n");
      out.write("                   <select name=\"bulan\" class=\"form-control\">\n");
      out.write("                   <option disabled selected>Bulan</option>\n");
      out.write("                       <option value=\"1\">Januari</option>\n");
      out.write("                       <option value=\"2\">Februari</option>\n");
      out.write("                       <option value=\"3\">Maret</option>\n");
      out.write("                       <option value=\"4\">April</option>\n");
      out.write("                       <option value=\"5\">Mei</option>\n");
      out.write("                       <option value=\"6\">Juni</option>\n");
      out.write("                       <option value=\"7\">Juli</option>\n");
      out.write("                       <option value=\"8\">Agustus</option>\n");
      out.write("                       <option value=\"9\">September</option>\n");
      out.write("                       <option value=\"10\">Oktober</option>\n");
      out.write("                       <option value=\"11\">November</option>\n");
      out.write("                       <option value=\"12\">Desember</option>\n");
      out.write("                   </select>\n");
      out.write("                 </div>\n");
      out.write("                 <div class=\"col-sm-1\">\n");
      out.write("                  <select name=\"tahun\" class=\"form-control\">\n");
      out.write("                  <option disabled selected>Tahun</option>\n");
      out.write("                      ");

                         for (int i = 2000; i <= 2020; i++) {
                      
      out.write("\n");
      out.write("                      <option value=\"");
      out.print(i);
      out.write('"');
      out.write('>');
      out.print(i);
      out.write("</option>\n");
      out.write("                      ");
 
                         }
                     
      out.write("\n");
      out.write("                  </select>\n");
      out.write("                 </div>\t \n");
      out.write("            </div>\n");
      out.write("            <br>\n");
      out.write("\n");
      out.write("            <label>Alamat</label>\n");
      out.write("            <div class=\"row\">\n");
      out.write("               <div class=\"col-6 col-sm-3\">\n");
      out.write("                  <textarea class=\"form-control\" placeholder=\"Alamat Anda\" rows=\"5\" style=\"resize: none;\" name=\"txtalamat\"></textarea>\n");
      out.write("               </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <br>\n");
      out.write("\n");
      out.write("            <label>Umur</label>\n");
      out.write("            <div class=\"row\">\n");
      out.write("               <div class=\"col-6 col-sm-1\">\n");
      out.write("                  <select name=\"umur\" class=\"form-control\">\n");
      out.write("                  <option disabled selected>Umur</option>\n");
      out.write("                  <option value=\"6\">6</option>\n");
      out.write("                  <option value=\"7\">7</option>\n");
      out.write("                  <option value=\"8\">8</option>\n");
      out.write("                  <option value=\"9\">9</option>\n");
      out.write("                  <option value=\"10\">10</option>\n");
      out.write("                  <option value=\"11\">11</option>\n");
      out.write("                  <option value=\"12\">12</option>\n");
      out.write("                  <option value=\"13\">13</option>\n");
      out.write("                  <option value=\"14\">14</option>\n");
      out.write("                  <option value=\"15\">15</option>\n");
      out.write("                  </select>\n");
      out.write("               </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <br>\n");
      out.write("            <label>Jenis Kelamin</label>\n");
      out.write("            <div class=\"row\">\n");
      out.write("               <div class=\"col-6 col-sm-1\">\n");
      out.write("                  <input type=\"radio\" name=\"jenis_kelamin\" value=\"Laki-Laki\">&nbsp;<span class=\"badge badge-success\">Laki-laki</span>\n");
      out.write("                  <br>\n");
      out.write("                  <input type=\"radio\" name=\"jenis_kelamin\" value=\"Perempuan\">&nbsp;<span class=\"badge badge-info\">Perempuan</span>\n");
      out.write("               </div>\n");
      out.write("            </div>\n");
      out.write("            <br>\n");
      out.write("            <label>No Hp Orangtua</label>\n");
      out.write("            <div class=\"row\">\n");
      out.write("               <div class=\"col-6 col-md-5\">\n");
      out.write("                  <input type=\"text\" class=\"form-control\" placeholder=\"No Hp Orangtua\" name=\"txtnohp_ortu\">\n");
      out.write("               </div>\n");
      out.write("            </div>\n");
      out.write("            <br>\n");
      out.write("\n");
      out.write("            <div class=\"tombol\">\n");
      out.write("                <button type=\"submit\" class=\"btn btn-primary \" name=\"cmdsimpan\" value=\"simpan\">Simpan</button>\n");
      out.write("                <button type=\"button\" class=\"btn btn-warning\" name=\"cmdsimpan\">ubah</button>\n");
      out.write("                <button type=\"button\" class=\"btn btn-danger\" name=\"cmdsimpan\">Hapus</button>\n");
      out.write("                <button type=\"reset\" class=\"btn btn-outline-secondary\">batal</button>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            </form>\n");
      out.write("\t</div>\t\n");
      out.write("          \n");
      out.write("      <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\"></script>\n");
      out.write("      <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\"></script>\n");
      out.write("      <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js\"></script>\n");
      out.write("   </body>\n");
      out.write("</html>");
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
}
