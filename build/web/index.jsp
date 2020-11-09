<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <title>Form Buidata Diri Peserta</title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
   </head>
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
   <body>
   	<nav class="navbar"> 
        <label>Biodata Diri Peserta Didik</label>
     </nav>  
        <div class="container-fluid mt-3">
            <form method="post" action="simpan.jsp">
            <label>NISN</label>

            <div class="row">
               <div class="col-6 col-sm-3">
                  <input type="text" class="form-control" placeholder="Nomor Induk Siswa Nasional" name="txtnisn">
               </div>
               <button type="button" class="btn btn-success" name="cmdsimpan">Cari</button>
            </div>

            <br>
            <label>Nama Lengkap</label>
            <div class="row">
               <div class="col-6 col-md-5">
                  <input type="text" class="form-control" placeholder="Nama Lengkap" name="txtnama">
               </div>
            </div>
            <br>
            <label>Tempat, Tanggal Lahir</label>

            <div class="form-row">
                <div class="col-5 col-sm-1">
                   <input type="text" class="form-control" placeholder="Tempat" name="tempatlahir">
                </div>   
                <div class="col-sm-1">
                   <select name="tanggal" class="form-control">
                   <option>Tanggal</option>
                   <%
                     for (int i = 1; i <= 31; i++) {
                   %>
                   <option value="<%=i%>"><%=i%></option>
                   <%
                     }
                    %>
                   </select>
                </div>
                <div class="col-sm-1">
                   <select name="bulan" class="form-control">
                   <option>Bulan</option>
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
                  <select name="tahun" class="form-control">
                  <option>Tahun</option>
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
                  <textarea class="form-control" id="text" name="text" placeholder="Type in your message" rows="5" style="resize: none;" name="txtalamat"></textarea>
               </div>
            </div>

            <br>

            <label>Umur</label>
            <div class="row">
               <div class="col-6 col-sm-1">
                  <select name="umur" class="form-control">
                  <option>Umur</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
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
                  <input type="radio" name="jenis_kelamin" >&nbsp;<span class="badge badge-success">Laki-laki</span>
                  <br>
                  <input type="radio" name="jenis_kelamin" >&nbsp;<span class="badge badge-info">Perempuan</span>
               </div>
            </div>
            <br>
            <label>No Hp Orangtua</label>
            <div class="row">
               <div class="col-6 col-md-5">
                  <input type="text" class="form-control" placeholder="No Hp Orangtua" name="txtnohp_ortu">
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
          
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
   </body>
</html>