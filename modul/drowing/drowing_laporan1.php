<?php 
        //Koneksi Database & PHP PDO
    require_once ('../../lib/aio_config.php');

        require_once ('../../lib/Database.php');
        require_once ('../../lib/Dtable.php');
        require_once ('../enkripsi/function.php');

        $db=new Database();
        $datatable=New Dtable();

        if(!function_exists('handleException'))
        {
            function handleException( $exception ) {
              echo  $exception->getMessage();
            }
        }

        set_exception_handler( 'handleException' );
        //END Koneksi       

?>

<!-- <table style="border: 1px solid">
    <thead>
        <tr>
            <th colspan="3" >Tanggal</th>
            <th colspan="3" >Penyisihan</th>
            <th colspan="3" >Jam</th>
        </tr>
        <tr>
            <td>No</td>
            <td>Partai</td>
            <td>Kelas</td>
            <td colspan="3" >Merah</td>
            <td>Biru</td>
            <td>Skor</td>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table> -->
<?php if ($_GET['id_drowing'] == 4) { ?>
<table style="height: 143px; float: left; width: 529px; margin-left: auto; margin-right: auto;" border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td style="width: 234px;" colspan="3">&nbsp;Kamis, 6/12/2017&nbsp;&nbsp;</td>
<td style="width: 181.2px;">&nbsp;PENYISIHAN</td>
<td style="width: 106px;">&nbsp;GEL.II</td>
</tr>
<tr>
<td style="width: 38.8px;">&nbsp;NO.</td>
<td style="width: 94px;">&nbsp;PARTAI</td>
<td style="width: 97.2px;">&nbsp;KELAS</td>
<td style="width: 181.2px;">&nbsp;MERAH</td>
<td style="width: 106px;">&nbsp;BIRU</td>
</tr>
<tr>
<td style="width: 38.8px;" rowspan="2">&nbsp; 1</td>
<td style="width: 94px;" rowspan="2">&nbsp; 2</td>
<td style="width: 97.2px;" rowspan="2">&nbsp;A.PA</td>
<td style="width: 181.2px;">&nbsp;DONI</td>
<td style="width: 106px;">&nbsp;AGUS</td>
</tr>
<tr>
<td style="width: 181.2px;">&nbsp;JAMBI</td>
<td style="width: 106px;">&nbsp;SULAWESI TENGGARA</td>
</tr>
<tr>
<td style="width: 38.8px;" rowspan="2">&nbsp; 2</td>
<td style="width: 94px;" rowspan="2">&nbsp; 7</td>
<td style="width: 97.2px;" rowspan="2">&nbsp;A.PI</td>
<td style="width: 181.2px;">&nbsp;SUGE</td>
<td style="width: 106px;">&nbsp;SABRI</td>
</tr>
<tr>
<td style="width: 181.2px;">&nbsp;BANTEN</td>
<td style="width: 106px;">&nbsp;ACEH</td>
</tr>
<tr>
<td style="width: 38.8px;" rowspan="2">&nbsp; 3</td>
<td style="width: 94px;" rowspan="2">&nbsp; 1</td>
<td style="width: 97.2px;" rowspan="2">&nbsp;A.PA</td>
<td style="width: 181.2px;">&nbsp;DIKI</td>
<td style="width: 106px;">&nbsp;HAIDIR</td>
</tr>
<tr>
<td style="width: 181.2px;">&nbsp;JAWA TIMUR</td>
<td style="width: 106px;">&nbsp;SULAWESI TENGAH</td>
</tr>
<tr>
<td style="width: 38.8px;" rowspan="2">&nbsp; 4</td>
<td style="width: 94px;" rowspan="2">&nbsp; 9</td>
<td style="width: 97.2px;" rowspan="2">&nbsp;A.PA</td>
<td style="width: 181.2px;">&nbsp;AFID</td>
<td style="width: 106px;">&nbsp;SANTO</td>
</tr>
<tr>
<td style="width: 181.2px;">&nbsp;JAWA TENGAH</td>
<td style="width: 106px;">
<p>&nbsp;GORONTALO</p>
</td>
</tr>
<tr>
<td style="width: 38.8px;" rowspan="2">&nbsp; 5</td>
<td style="width: 94px;" rowspan="2">&nbsp; 10</td>
<td style="width: 97.2px;" rowspan="2">&nbsp;A.PA</td>
<td style="width: 181.2px;">&nbsp;NOVRIJAL</td>
<td style="width: 106px;">&nbsp;SUPRI</td>
</tr>
<tr>
<td style="width: 181.2px;">&nbsp;SULAWESI SELATAN</td>
<td style="width: 106px;">&nbsp;JAWA BARAT</td>
</tr>
</tbody>
</table>

<?php }elseif($_GET['id_drowing'] == 5){ ?>
<table style="height: 143px; float: left; width: 529px; margin-left: auto; margin-right: auto;" border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td style="width: 234px;" colspan="3">&nbsp;Kamis, 6/12/2017&nbsp;&nbsp;</td>
<td style="width: 181.2px;">&nbsp;PENYISIHAN</td>
<td style="width: 106px;">&nbsp;GEL.II</td>
</tr>
<tr>
<td style="width: 38.8px;">&nbsp;NO.</td>
<td style="width: 94px;">&nbsp;PARTAI</td>
<td style="width: 97.2px;">&nbsp;KELAS</td>
<td style="width: 181.2px;">&nbsp;MERAH</td>
<td style="width: 106px;">&nbsp;BIRU</td>
</tr>
<tr>
<td style="width: 38.8px;" rowspan="2">&nbsp; 1</td>
<td style="width: 94px;" rowspan="2">&nbsp; 3</td>
<td style="width: 97.2px;" rowspan="2">&nbsp;A.BEREGU</td>
<td style="width: 181.2px;">Hanifan,Yudani,Kusumah</td>
<td style="width: 106px;">Aji,Bangkit,Pamungkas</td>
</tr>
<tr>
<td style="width: 181.2px;">&nbsp;JAWA BARAT</td>
<td style="width: 106px;">JAWA TIMUR</td>
</tr>
</tbody>
</table>
<?php }elseif($_GET['id_drowing'] == 6){ ?>
<table style="height: 143px; float: left; width: 529px; margin-left: auto; margin-right: auto;" border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td style="width: 234px;" colspan="3">&nbsp;Kamis, 6/12/2017&nbsp;&nbsp;</td>
<td style="width: 181.2px;">&nbsp;PENYISIHAN</td>
<td style="width: 106px;">&nbsp;GEL.II</td>
</tr>
<tr>
<td style="width: 38.8px;">&nbsp;NO.</td>
<td style="width: 94px;">&nbsp;PARTAI</td>
<td style="width: 97.2px;">&nbsp;KELAS</td>
<td style="width: 181.2px;">&nbsp;MERAH</td>
<td style="width: 106px;">&nbsp;BIRU</td>
</tr>
<tr>
<td style="width: 38.8px;" rowspan="2">&nbsp; 1</td>
<td style="width: 94px;" rowspan="2">&nbsp; 3</td>
<td style="width: 97.2px;" rowspan="2">&nbsp;A.PA</td>
<td style="width: 181.2px;">Hadi</td>
<td style="width: 106px;">Sugeng</td>
</tr>
<tr>
<td style="width: 181.2px;">&nbsp;Jawa Tengah</td>
<td style="width: 106px;">Sulawesi Selatan</td>
</tr>
</tbody>
</table>
<?php } ?>
<br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br>
<p>Catatan untuk official kontingen</p>
<ol>
    <li>Dimohon meneliti cermat jadwal pertandingan diatas! Kalau terdapat kesalahan segera melaporkannya kepada sekretaris <br> pertandingan untuk dibenarkan sebagaimana mestinya</li>
    <li>Diharap memeriksa kelengkapan pesilatnya yang akan bertanding(cap protector harus dipakai didalam celana luar. <br> Pesilat putri dilarang memakai perhiasan/aksesoris berbahaya dan kuku harus dipotong pendek</li>
</ol>

<button onclick="cetak()" >Cetak</button>

<script>
    function cetak(){
        window.print();
    }
</script>

