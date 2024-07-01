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
	<div class = "calculation">
		<aside>
			<div class="list">
				<?php
					
					require_once "connect.php";
					
					$link_do_bd = mysqli_connect($servername, $username, $password);

					if (!$link_do_bd) 
					{
						die('Nie można się połączyć z bazą danych. Spróbuj jeszcze raz później <br>');
					}
					
					mysqli_select_db($link_do_bd, $nazwa_bazy_danych);
				  
					$sql_zapytanie = "SELECT * FROM ksiazki ORDER BY id ASC"; 
					$sql_wynik_zapytania = mysqli_query($link_do_bd, $sql_zapytanie);
			  
					while ($wiersz = mysqli_fetch_array($sql_wynik_zapytania))
					{
						echo $wiersz['id'].". "."&nbsp;".$wiersz['autor']."&nbsp;-&nbsp;"."&quot;".$wiersz['tytul']."&quot;<br/>";
						echo "<br/>";
					}      
				?>
			</div>
		</aside>
		<main>
		<div class="calculator">
					<?php
					
					$A = $_POST['numer'];

					if (!$link_do_bd) 
					{
						die('Nie można się połączyć z bazą danych. Spróbuj jeszcze raz później <br>');
					}
						
					$nazwa_bazy_danych = "biblioteka";
					mysqli_select_db($link_do_bd, $nazwa_bazy_danych);
					  
					$sql_zapytanie = "SELECT strony, tytul FROM ksiazki WHERE id=$A"; 
					$sql_wynik_zapytania = mysqli_query($link_do_bd, $sql_zapytanie);
				  
					while ($wiersz = mysqli_fetch_array($sql_wynik_zapytania))
					{
						$strony=$wiersz['strony'];
						$tytul=$wiersz['tytul'];
					}
					
					
					$B = $_POST['liczba'];
					$C = $_POST['tydzien'];
					
					if($B>=$strony)
					{
						echo 'Przeczytanie książki "'.$tytul.'" zajmie Ci 1 dzień, drogi Użytkowniku.';
					}
					else
					{
						$ile_dni = round(($strony/$B)*(7/$C)) + 1;
						
						echo 'Przeczytanie książki "'.$tytul.'" zajmie Ci około '.$ile_dni.' dni, drogi Użytkowniku.';
						echo '<a href = "ile.php"><button type="button">Powrót</button></a>';
						
						mysqli_free_result($sql_wynik_zapytania);
						mysqli_close($link_do_bd);
					}
				?>
				</div>
		</main>
		<div style="clear:both;"></div>
	</div>
	<footer>
		<div id="whydoesitnotwork">
			La Maison du Livre &nbsp;&copy;&nbsp;2020
		</div>
	</footer>
</body>

</html>