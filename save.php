<?php
    include_once("config.php");
    if(isset($_POST['Simpan'])) {
        $string = $_POST["input"];
        $pecah = explode(" ",$string);
        $usia_idx = 0;
        if($usia_idx == 0){
            for($i=0;$i<count($pecah);$i++){
            $cek = substr($pecah[$i],0,1);
            if(is_numeric($cek) == TRUE)
                {
                    $usia_idx = $i;
                }
            }
        }
        $usia = str_replace(["tahun","thn","th"],"",$pecah[$usia_idx]);
        $nama="";
        $kota="";
        for($i=0;$i<$usia_idx;$i++){
            if (isset($pecah[$i])) {
                $nama .= $pecah[$i]." ";
            }
        }
        for($i=$usia_idx+1;$i<=count($pecah);$i++)
        {
            if (isset($pecah[$i])) {
                $kota .= $pecah[$i]." ";
            }
        }
        $name = substr($nama,0,-1);
        $city = substr($kota,0,-1);
        if((!is_numeric($name) == TRUE) or (!is_numeric($city)==TRUE))
        {
            $query = "INSERT INTO user (nama, umur, kota)
            VALUES ('$name', '$usia', '$city')";
            $result = mysqli_query($mysqli, $query);
           
            echo "Menambahkan User Berhasil. <a href='index.php'>Lihat Users</a>";
        }else{
            echo "Nama dan Kota harus Alphabet. <a href='index.php'>Lihat User</a>";
        }
    }
    ?>