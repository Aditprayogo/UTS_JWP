
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="koneksi.koneksi" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>simpan</title>
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
                    out.print("<h3>berhasil disimpan</h3>");
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
                  <input type="text" class="form-control" placeholder="Nomor Induk Siswa Nasional" name="txtnisn" required>
               </div>
               <button type="button" class="btn btn-success" name="cmdsimpan">Cari</button>
            </div>

            <br>
            <label>Nama Lengkap</label>
            <div class="row">
               <div class="col-6 col-md-5">
                  <input type="text" class="form-control" placeholder="Nama Lengkap" name="txtnama" required>
               </div>
            </div>
            <br>
            <label>Tempat, Tanggal Lahir</label>

            <div class="form-row">
                <div class="col-5 col-sm-1">
                   <input type="text" class="form-control" placeholder="Tempat" name="tempatlahir">
                </div>   
                <div class="col-sm-1">
                   <select name="tanggal" class="form-control" required>
                   <option disabled selected>Tanggal</option>
                   <%
                     for (int i = 1; i <= 30; i++) {
                   %>
                   <option value="<%=i%>"><%=i%></option>
                   <%
                     }
                    %>
                   </select>
                </div>
                <div class="col-sm-1">
                   <select name="bulan" class="form-control" required>
                   <option disabled selected>Bulan</option>
                       <option value="1">Januari</option>
                       <option value="2">Februari</option>
                       <option value="3">Maret</option>
                       <option value="4">April</option>
                       <option value="5">Mei</option>
                       <option value="6">Juni</option>
                       <option value="7">Juli</option>
                       <option value="8">Agustus</option>
                       <option value="9">September</option>
                       <option value="10">Oktober</option>
                       <option value="11">November</option>
                       <option value="12">Desember</option>
                   </select>
                 </div>
                 <div class="col-sm-1">
                  <select name="tahun" class="form-control" required>
                  <option disabled selected>Tahun</option>
                      <%
                         for (int i = 2000; i <= 2020; i++) {
                      %>
                      <option value="<%=i%>"><%=i%></option>
                      <% 
                         }
                     %>
                  </select>
                 </div>	 
            </div>
            <br>

            <label>Alamat</label>
            <div class="row">
               <div class="col-6 col-sm-3">
                  <textarea class="form-control" placeholder="Alamat Anda" rows="5" style="resize: none;" name="txtalamat" required></textarea>
               </div>
            </div>

            <br>

            <label>Umur</label>
            <div class="row">
               <div class="col-6 col-sm-1">
                  <select name="umur" class="form-control" required>
                  <option disabled selected>Umur</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
                  <option value="13">13</option>
                  <option value="14">14</option>
                  <option value="15">15</option>
                  </select>
               </div>
            </div>

            <br>
            <label>Jenis Kelamin</label>
            <div class="row">
               <div class="col-6 col-sm-1">
                  <input type="radio" name="jenis_kelamin" value="Laki-Laki" required>&nbsp;<span class="badge badge-success">Laki-laki</span>
                  <br>
                  <input type="radio" name="jenis_kelamin" value="Perempuan">&nbsp;<span class="badge badge-info">Perempuan</span>
               </div>
            </div>
            <br>
            <label>No Hp Orangtua</label>
            <div class="row">
               <div class="col-6 col-md-5">
                  <input type="text" class="form-control" placeholder="No Hp Orangtua" name="txtnohp_ortu" required>
               </div>
            </div>
            <br>

            <div class="tombol">
                <button type="submit" class="btn btn-primary " name="cmdsimpan">Simpan</button>
                <button type="button" class="btn btn-warning" name="cmdsimpan">ubah</button>
                <button type="button" class="btn btn-danger" name="cmdsimpan">Hapus</button>
                <button type="reset" class="btn btn-outline-secondary">batal</button>
            </div>


            </form>
	</div>	
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
                    out.print("<h3>berhasil diubah</h3>");
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
                    out.print("<h3>berhasil dihapus</h3>");
                    out.print("<a href='index.jsp'>Back</a>");
                }
                catch(Exception e)
                {
                out.print(e);
                }
             }
        %>
</html>