<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Rombo</title>
    <link href="../Assets/css/styles.css" rel="stylesheet">
    <script src="../Assets/js/funciones.js"></script>
    <link rel="icon" type="image/x-icon" href="../Assets/img/FormsIcon.png" sizes="20x20">
</head>
<body>
    <header class="header2">
        <div class="wrapper">
            <div class="logo"> 
                <img src="../Assets/img/FormsIcon.png">
                </a>Area y Perimetro</div>
            <nav>
                <a href="../index.jsp" target="_self">Inicio</a>
                <a href="pentagono.jsp" target="_self">Pentagono</a>
                <a href="rombo.jsp" target="_self">Rombo</a>
                <a href="decagono.jsp" target="_self">Decagono</a>
            </nav>
        </div>
    </header>
    <img class="Pentagono" src="../Assets/img/Rombo.png">
    <section class="contenido wrapper"> 
        <fieldset>
            <div class="form-fieldL">
                <label for="fname" class="lado">Lado(cm)</label><br>
                <input type="text" placeholder="Lado" name="fnumero" id="lado"><br><br>
            </div> 
            <button onclick= "obtenerPerimetroRombo()">Calcular Perimetro</button><br><br>
            <div class="form-fieldP">
                <label for="lname">Perimetro</label><br>
                <input type="text" placeholder="Perimetro" name="numero" id="perimetroResultado"><br><br>
            </div>
            <div class="form-field2">
                <label for="lname">Diagonal mayor</label><br>
                <input type="text" placeholder="Diagonal mayor"name="numero" id="diagonalmayor"><br><br>
            </div>
            <div class="form-fieldd">
                <label for="lname">diagonal menor</label><br>
                <input type="text" placeholder="diagonal mayor"name="numero" id="diagnonalmenor"><br><br>
            </div>
            <button onclick="obtenerAreaRombo()" class="but">Calcular Area</button><br><br>
            <div class="form-field25">
                <label for="lname">Area(cm2)</label><br>
                <input type="text" placeholder="Area" name="numero" id="areaResultadoRombo"><br><br>
            </div>
        </fieldset>
    </section>
<body>
    
</body>
</html>