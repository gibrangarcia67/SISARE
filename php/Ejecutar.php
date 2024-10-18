<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Procesar Evento</title>
</head>
<body>
    <form method="post" id="form2">

    </form>
  
    <script type="text/javascript">

        
if (localStorage.getItem('ejecutado')) {
  console.log('El script ya se ha ejecutado anteriormente.');
} else {
    var form2 = document.getElementById("form2");

form2.submit();



  localStorage.setItem('ejecutado', true);

  console.log('El script se ha ejecutado.');
}
setTimeout(function(){
window.location='inicio.php';
}, 0);
           
    </script>

    <?php
// Construir el comando
$command = 'C:\\xampp\\htdocs\\SISARE\\Python\\script.py ';
$output = shell_exec($command);   
?>
</body>
</html>