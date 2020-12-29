<?php
include('connect.php');
$data_pgw= mysqli_query($connect, "SELECT * FROM data_pegawai GROUP BY divisi");
$graf_pgw= mysqli_query($connect,"SELECT COUNT(nama) as Jumlah FROM data_pegawai GROUP BY divisi");
?>

<!DOCTYPE html>
<html lang= "en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width-device-width, initial-scale=1.0">
	<title>Grafik Pegawai</title>
    <link rel="stylesheet" href="assets/style.css">
	<script src="assets/Chart.js" type="text/javascript"></script>
</head>
<body>
	<h1>Grafik Divisi Pegawai</h1>
	
	<center>
<canvas id="divv"> </canvas>
	</center>
<script>
var ctx = document.getElementById("divv").getContext('2d');
var myChart= new Chart(ctx, {
    type: 'bar',
    data: {
        labels: [<?php while($row = mysqli_fetch_array($data_pgw)) {echo '"'.$row['divisi']. '",';}?>],
        datasets: 
		[
			{
			label: 'Pegawai',
                data: [<?php while($row = mysqli_fetch_array($graf_pgw)) {echo '"'.$row['Jumlah']. '",';}?>],
            backgroundColor: ['#7FFFD4', '#17BEBB', '#FFC914','#7FFF00','#9932CC','#008000','#17BEBB'],
			borderWidth: 1
			}
		]
	}, 
options: {
	scales: {
		yAxes: [{
			ticks:{
				beginAtZero:true
			}
		}]
		}
	}
});
</script>
</body>
</html>
		