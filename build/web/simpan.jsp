<%-- 
    Document   : index
    Created on : Nov 11, 2020, 11:10:22 AM
    Author     : aditprayogo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="koneksi.koneksi" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
      <meta charset="utf-8">
      <title>Form Biodata Diri Peserta</title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
      <style type="text/css">
   	button{
   		width: 9%;
   	}

   	.tombol button{
   		margin-left: 2px;
                
   	}

   	label{
   		font-size: 14px;
   		color: grey;
   	}
   	nav{
   		background-color: black;
   		color: white;
   	}
   </style>
   </head>
    <body>
        <% 
            String nisn = request.getParameter("txtnisn");
            String nama = request.getParameter("txtnama");
            String tempat_lahir = request.getParameter("tempatlahir");
            String tanggal = request.getParameter("tanggal");
            String bulan = request.getParameter("bulan");
            String tahun = request.getParameter("tahun");
            String alamat = request.getParameter("txtalamat");
            String umur = request.getParameter("umur");
            String jk = request.getParameter("jenis_kelamin");
            String no_hp = request.getParameter("txtnohp_ortu");
            String dapat = request.getParameter("cmdsimpan");
            
            
            if (dapat.toString().equals("simpan")) {
                try {
                    koneksi konek = new koneksi();
                    Connection conn = konek.openConnection();
                    Statement st = conn.createStatement();
                    
                    String sql = "insert into biodata(nisn, nama, tempat_lahir, tanggal, bulan, tahun, alamat, umur, jenis_kelamin, nohp_ortu)"+"values('"+nisn+"', '"+nama+"', '"+tempat_lahir+"', '"+tanggal+"', '"+bulan+"', '"+tahun+"', '"
                            +alamat+"', '"+umur+"', '"+jk+"', '"+no_hp+"')";
                    st.executeUpdate(sql);
                    conn.close();
                    out.print("<div class='alert alert-primary' role='alert'><h2>Data berhasil di simpan</h2></div>");
                    out.print("<a href='index.jsp'>Back</a>");
                } catch (Exception e) {
                    out.print(e);
                }
            } else if (dapat.toString().equals("Cari")){
                try {
                    koneksi konek = new koneksi();
                    Connection conn = konek.openConnection();
                    Statement st = conn.createStatement();
                    
                    String sql =  "select * from biodata where nisn = '" + nisn + "'";
                    ResultSet res = st.executeQuery(sql);
                    
                    if(res.next()) {
        %>
     <nav class="navbar"> 
        <label>Biodata Diri Peserta Didik</label>
     </nav>  
        <div class="container-fluid mt-3">
            <form method="post" action="simpan.jsp">
            <label>NISN</label>

            <div class="row">
               <div class="col-6 col-sm-3">
                  <input type="text" class="form-control" placeholder="Nomor Induk Siswa Nasional" name="txtnisn" value="<%= res.getString(1) %>">
               </div>
               <button type="submit" class="btn btn-success" name="cmdsimpan" value="Cari">Cari</button>
            </div>

            <br>
            <label>Nama Lengkap</label>
            <div class="row">
               <div class="col-6 col-md-5">
                  <input type="text" class="form-control" placeholder="Nama Lengkap" name="txtnama" value="<%= res.getString(2) %>">
               </div>
            </div>
            <br>
            <label>Tempat, Tanggal Lahir</label>

            <div class="form-row">
                <div class="col-5 col-sm-1">
                   <input type="text" class="form-control" placeholder="Tempat" name="tempatlahir" value="<%= res.getString(3) %>">
                </div>   
                <div class="col-sm-1">
                   <select name="tanggal" class="form-control" required>
                   <option disabled>Tanggal</option>
                   <%
                     int tesTanggal = Integer.parseInt(res.getString(4));
                     for (int i = 1; i <= 30; i++) {
                         if (tesTanggal == i ) {
                    %>
                            <option value="<%=i%>" selected><%=i%></option>
                    <%   } else {
                    %>
                            <option value="<%=i%>"><%=i%></option>
                    <%     }
                     }
                    %>
                   </select>
                </div>
                <div class="col-sm-1">
                   <select name="bulan" class="form-control" required>
                   <option disabled>Bulan</option>
                    <%
                        int tesBulan = Integer.parseInt(res.getString(5));
                        
                        for (int i = 1; i <= 12; i++) {
                         if (tesBulan == i ) {
                    %>
                           <option value="<%=i%>" selected><%=koneksi.getBulan(i)%></option>
                    <%   } else {
                    %>
                           <option value="<%=i%>"><%=koneksi.getBulan(i)%></option>
                    <%   }
                     }
                    %>
                   </select>
                 </div>
                 <div class="col-sm-1">
                  <select name="tahun" class="form-control" required>
                  <option disabled selected>Tahun</option>
                     <%
                     int tesTahun = Integer.parseInt(res.getString(6));
                     for (int i = 2000; i <= 2020; i++) {
                         if (tesTahun == i ) {
                    %>
                            <option value="<%=i%>" selected><%=i%></option>
                    <%   } else {
                    %>
                            <option value="<%=i%>"><%=i%></option>
                    <%     }
                     }
                    %>
                  </select>
                 </div>	 
            </div>
            <br>

            <label>Alamat</label>
            <div class="row">
               <div class="col-6 col-sm-3">
                  <textarea class="form-control" placeholder="Alamat Anda" rows="5" style="resize: none;" name="txtalamat"><%= res.getString(7) %></textarea>
               </div>
            </div>

            <br>

            <label>Umur</label>
            <div class="row">
               <div class="col-6 col-sm-1">
                  <select name="umur" class="form-control" required>
                  <option disabled>Umur</option>
                   <%
                     int tesUmur = Integer.parseInt(res.getString(8));
                     for (int i = 6; i <= 15; i++) {
                         if (tesUmur == i ) {
                    %>
                            <option value="<%=i%>" selected><%=i%></option>
                    <%   } else {
                    %>
                            <option value="<%=i%>"><%=i%></option>
                    <%     }
                     }
                    %>
                  </select>
               </div>
            </div>

            <br>
            <label>Jenis Kelamin</label>
            <div class="row">
               <div class="col-6 col-sm-1">
                   <%
                         if (res.getString(9).equals("Laki-Laki") ) {
                             out.print("<input type='radio' name='jenis_kelamin' value='Laki-Laki' checked>&nbsp;<span class='badge badge-success'>Laki-laki</span>"
                                     + "<br>"
                                     + "<input type='radio' name='jenis_kelamin' value='Perempuan'>&nbsp;<span class='badge badge-info'>Perempuan</span>");
                         }else{
                             out.print("<input type='radio' name='jenis_kelamin' value='Laki-Laki'>&nbsp;<span class='badge badge-success'>Laki-laki</span>"
                                     + "<br>"
                                     + "<input type='radio' name='jenis_kelamin' value='Perempuan' checked>&nbsp;<span class='badge badge-info'>Perempuan</span>");
                         }
                    %>
               </div>
            </div>
            <br>
            <label>No Hp Orangtua</label>
            <div class="row">
               <div class="col-6 col-md-5">
                  <input type="text" class="form-control" placeholder="No Hp Orangtua" name="txtnohp_ortu" value="<%= res.getString(10) %>">
               </div>
            </div>
            <br>

            <div class="tombol">
                <button type="submit" class="btn btn-primary " name="cmdsimpan" value="simpan">Simpan</button>
                <button type="submit" class="btn btn-warning" name="cmdsimpan" value="ubah">ubah</button>
                <button type="submit" class="btn btn-danger" name="cmdsimpan" value="hapus">Hapus</button>
                <button type="reset" class="btn btn-outline-secondary">batal</button>
            </div>


            </form>	
        <%
            }
                }catch (Exception e) {
                    out.print(e);
                }
            }
            else if (dapat.toString().equals("ubah")) {
                try {
                    koneksi konek = new koneksi();
                    Connection conn = konek.openConnection();
                    Statement st = conn.createStatement();
                    
                    String sql1 = "update biodata set nama = '" + nama + "', tempat_lahir = '" + tempat_lahir + "', tanggal = '" + tanggal + "', bulan = '" + bulan + "', tahun = '" + tahun + "', alamat = '" + alamat + "', umur = '" + umur + "', jenis_kelamin = '" + jk + "', nohp_ortu = '" + no_hp + "' where nisn ='" + nisn +"'";
                    st.executeUpdate(sql1);
                    conn.close();
                    out.print("<div class='alert alert-success' role='alert'><h2>berhasil diubah</h2></div>");
                    out.print("<a href='index.jsp'>Back</a>");
                } catch (Exception e) {

                }
            }
            else if(dapat.toString().equals("hapus"))
                {
                try
                {
                       koneksi konek=new koneksi();
                       Connection conn=konek.openConnection();
                       Statement st=conn.createStatement();
                       String sql="delete from biodata where nisn='"+nisn+"'";
                       st.executeUpdate(sql);
                        conn.close();
                    out.print("<div class='alert alert-danger' role='alert'><h2>berhasil dihapus</h2></div>");
                    out.print("<a href='index.jsp'>Back</a>");
                }
                catch(Exception e)
                {
                out.print(e);
                }
             }
        %>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    </body>
</html>