<!DOCTYPE HTML>
<html>
<head lang="pl">
	<meta charset="utf-8"/>
	<title>La Maison du Livre</title>
	<meta name="description" content="Przed Tobą spis literatury z zasobów mojej domowej biblioteki. Sprawdź, która przypadnie Ci do gustu!"/>
	<meta name="keywords" content="książka, książki, moje, moja, ksiazka, ksiazki, bilbioteka, domowa, dom"/>
	<meta http-equib="X-UA-Compatible" conent="IE=edge,chrome=1"/>
	<link rel="stylesheet" href="mainstyle.css" type="text/css"/>
	<link rel="stylesheet" href="fontello/css/fontello_kontakt.css" type="text/css"/>
	<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&display=swap" rel="stylesheet">
	<script src="JS/jquery-3.5.1.min.js"></script>
	<script src="JS/stickymenu.js"></script>
</head>
<body>
	<header>
		<div id="mainlogo">
			<h1><a href = "index.html" class = "logolink">La Maison du Livre</a></h1>
		</div>
	</header>
	<nav>
		<div class="navigation">
			<ol>
				<li><a href="main.html"><i class="demo-icon icon-home"></i> &nbsp;Strona główna</a></li>
				<li><a href="biblioteka.html"><i class="demo-icon icon-book"></i> &nbsp;Biblioteka</a></li>
				<li><a href="ile.php"><i class="demo-icon icon-clock"></i> &nbsp;Ile mi to zajmie?</a></li>
				<li><a href="propozycja.php"><i class="demo-icon icon-list-add"></i> &nbsp;Zaproponuj książkę</a></li>
				<li><a href="kontakt.html"><i class="demo-icon icon-mail-alt"></i> &nbsp;Kontakt</a></li>
			</ol>
		</div>
	</nav>
	<main>
		<div id = "kontakt">
			<?php
			
	require_once "connect.php";
	
	echo "<br> --- Inicjalizacja bazy danych (" .$nazwa_bazy_danych ."), wersja proceduralna kodu : ZACZYNAM --- <br><br>";	
	
	$link_do_bd = mysqli_connect($servername, $username, $password);

	if (!$link_do_bd) 
	{
		die('Nie można się połączyć: ' . mysqi_connect_error() . "<br>");
	} 
	else 
	{
		echo "1) Połączono się z bazą danych <br>";	
	}

	$sql_zapytanie = 'CREATE DATABASE '.$nazwa_bazy_danych;
	
	if (mysqli_query($link_do_bd, $sql_zapytanie)) 
	{
		echo "2) Wybrana baza została pomyślnie utworzona<br>";
	} 
	else
	{
		echo 'Błąd podczas tworzenia bazy: ' . mysqli_error($link_do_bd) . "<br>";
	}

	mysqli_select_db($link_do_bd, $nazwa_bazy_danych);

	$sql_zapytanie = "CREATE TABLE `propozycje` (
			`id` INT NOT NULL AUTO_INCREMENT, PRIMARY KEY (`id`),
			`autor` TEXT NOT NULL,
			`tytul` TEXT NOT NULL
		  );";
		
	if (mysqli_query($link_do_bd, $sql_zapytanie)) 
	{
		echo "3) Tabela o odpowiednie strukturze została pomyślnie utworzona<br>";
	}
	else 
	{	
		echo 'Błąd podczas tworzenia tabeli: ' . mysqli_error($link_do_bd) . "<br>";
	}
	
	mysqli_close($link_do_bd);
	
	echo "<br> --- Inicjalizacja bazy danych (" . $nazwa_bazy_danych ."): KOŃCZĘ --- <br>";		
	?>
		</div>
	</main>
	<footer>
		<div id="footer">
			La Maison du Livre &nbsp;&copy;&nbsp;2020
		</div>
	</footer>
</body>

</html>