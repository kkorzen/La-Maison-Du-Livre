-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Cze 2020, 20:06
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `biblioteka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

CREATE TABLE `ksiazki` (
  `id` int(11) NOT NULL,
  `autor` text COLLATE utf8mb4_polish_ci NOT NULL,
  `tytul` text COLLATE utf8mb4_polish_ci NOT NULL,
  `rokwydania` int(11) NOT NULL,
  `strony` int(11) NOT NULL,
  `opis` text COLLATE utf8mb4_polish_ci NOT NULL,
  `gatunek` text COLLATE utf8mb4_polish_ci NOT NULL,
  `obraz` text COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `ksiazki`
--

INSERT INTO `ksiazki` (`id`, `autor`, `tytul`, `rokwydania`, `strony`, `opis`, `gatunek`, `obraz`) VALUES
(1, 'Oliver Bowden', 'Assassin\'s Creed. Tajemna Krucjata', 2012, 498, '<b>NICCOLO POLO, OJCIEC MARCO, UJAWNIA HISTORIĘ, KTÓRĄ UTRZYMYWAŁ W TAJEMNICY PRZEZ CAŁE ŻYCIE - HISTORIĘ ALTAIRA, JEDNEGO Z NAJZNAMIENITSZYCH ASASYNÓW BRACTWA.</b>\r\n<br/><br/>\r\nAltair podejmuje się doniosłej misji i wyrusza w podróż do Ziemi Świętej. By dowieść swojego poświęcenia, zmierzy się z dziewięcioma śmiertelnymi wrogami, pośród których znajdzie się sam przywódca templariuszy, Robert de Sable. Podczas niezwykłej wyprawy Altair odkryje prawdziwe znaczenie Creda Asasynów.\r\n<br/><br/>\r\nNikt nigdy wcześniej nie opowiedział o losach Altaira: o jego brzemiennej w skutki podróży, która zmieniła bieg historii; o nieustającej walce ze spiskiem templariuszy; o tragedii, jaka stała się udziałem wielkiego asasyna i jego rodziny oraz o haniebnej zdradzie najbliższego przyjaciela.\r\n<br/><br/>\r\nNa podstawie bestsellerowej gry firmy Ubisoft - Assassin\'s Creed.', 'Fikcja historyczna / Fantastyka', 'img/ac1.jpg'),
(2, 'Oliver Bowden', 'Assassin\'s Creed. Renesans', 2010, 487, '<b>\"POPRZYSIĄGŁEM ZEMSTĘ TYM, KTÓRZY ZDRADZILI MOJĄ RODZINĘ. JESTEM EZIO AUDITORE DA FIRENZE. JESTEM ASASYNEM...\"</b>\r\n<br/><br/>\r\nMłody szlachcic, zdradzony przez panujące rody Italii, wyrusza w poszukiwaniu zemsty. Aby stawić czoła spiskowcom i przywrócić rodzinie honor, będzie musiał poznać sztukę zabijania.\r\n<br/><br/>\r\nW swojej misji Ezio skorzysta z pomocy światłych umysłów, takich jakich jak Leonardo da Vinci czy Niccolo Machiavelli, świadom, że jego przeżycie zależy od nabytych umiejętności.\r\n<br/><br/>\r\nDla swoich sprzymierzeńców stanie się siłą przemian, bojownikiem o wolność i sprawiedliwość. Dla wrogów będzie śmiertelnym zagrożeniem, siejącym postrach wśród tyranów, którzy ciemiężą lud Italii.\r\n<br/><br/>\r\nTak rozpoczyna się epicka opowieść o władzy , zemście i spisku.\r\n<br/><br/>\r\nPRAWDA BĘDZIE SPISANA KRWIĄ.\r\n<br/><br/>\r\nNa podstawie bestsellerowej gry firmy Ubisoft - Assassin\'s Creed II.', 'Fikcja historyczna / Fantastyka', 'img/ac2.jpg'),
(3, 'Oliver Bowden', 'Assassin\'s Creed. Bractwo', 2011, 462, '<b>WYRUSZĘ DO CZARNEGO SERCA ZEPSUTEGO IMPERIUM, BY ZETRZEĆ W PROCH MOIM WROGÓW. ALE RZYMU NIE ZBUDOWANO W JEDEN DZIEŃ I NIE ODBUDUJE GO SAMOTNY ASASYN. JESTEM EZIO AUDITORE DA FIRENZE. OTO MOJE BRACTWO.</b>\r\n<br/><br/>\r\nRzym, niegdyś potężny, ziś leży w ruinach. W mieście pleni się cierpienie i nędza; jego obywatele żyją w strachu przed bezlitosną rodziną Borgiów. Tylko jeden człowiek może ich uwolnić spod jarzma tyranii - Ezio Auditore, mistrz asasynów.\r\n<br/><br/>\r\nBy sprostać wyzwaniu, Ezio musiał użyć wszystkich swoich sił. Cesare Borgia, człowiek jeszcze bardziej niegodziwy i groźny niż jego ojciec, papież, nie spocznie, póki nie podbije całej Italii. A w tak zdradzieckich czasach intrygi czają się wszędzie, nawet w szeregach samego Bractwa..\r\n<br/><br/>\r\nNa podstawie bestsellerowej gry firmy Ubisoft - Assassin\'s Creed: Brotherhood', 'Fikcja historyczna / Fantastyka', 'img/acb.jpg'),
(4, 'Christopher Paolini', 'Eragon', 2005, 494, '<b>JEDEN CHŁOPIEC... JEDEN SMOK... ŚWIAT PEŁEN PRZYGÓD..</b>\r\n<br/><br/>\r\nEragon, piętnastoletni chłopiec z farmy wychowany przez swojego wuja Garrowa, znajduje tajemniczy niebieski kamień w Kośćcu, dzikich, niebezpiecznych górach blisko małej wioski Carvahall, w której mieszka. Eragon żyje w Alagaësii, gdzie rządzi zły król, Galbatorix, który był jednym z wielu Smoczych Jeźdźców zanim jego smoka zabiły urgale. Gdy odmówiono przyznania mu nowego smoka, popadł w obłęd i zamordował resztę Jeźdźców, tym samym przyczyniając się do ich upadku. Po tym wydarzeniu objął on władzę w Alagaësii.', 'Fantastyka', 'img/eragon.jpg'),
(5, 'Christopher Paolini', 'Najstarszy', 2005, 615, '<b>ZAPADA ZMROK.. W SERCACH WZBIERA ROZPACZ.. ZŁO TRIUMFUJE</b>\r\n<br/><br/>\r\nZaledwie kilka dni temu Eragon i jego smoczyca Saphira ocalili kryjówkę buntowników przed atakiem wojsk króla Galbatorixa, okrutnego władcy imperium. Teraz muszą udać się do Ellesmery, krainy elfów, gdzie Eragona czeka dalsze szkolenie. Musi nauczyć się jeszcze lepiej władać bronią Smoczych Jeźdźców: mieczem i magią. Wyrusza zatem w najważniejszą podróż swego życia, poznaje nowe cudowne miejsca i nowych kompanów, przeżywa nowe przygody. Lecz cały czas towarzyszy mu chaos i zdrada, i nic nie jest takie , jakim się wydaje. Wkrótce Eragon nie wie już, komu może zaufać...', 'Fantastyka', 'img/najstarszy.jpg'),
(6, 'Christopher Paolini', 'Brisingr', 2008, 651, '<b>PRZYSIĘGI I HOŁDY... PRÓBY WIERNOŚCI... STARCIA WROGICH SIŁ...</b>\r\n<br/><br/>\r\nEragon i jego smoczyca Saphira ledwie uszli z życiem z ogromnej bitwy z wojownikami Imperium na Płonących Równinach. Teraz muszą stawić czoło kolejnym niebezpieczeństwom - a także splątanej sieci obietnic i przysiąg, które mogą wymagać niewyobrażalnie wielkich ofiar.\r\n<br/><br/>\r\nCzy mroczna ręka, króla zdławi wszelki opór? To starcie może się stać dla Eragona śmiertelną pułapką...', 'Fantastyka', 'img/brisingr.jpg'),
(7, 'Alfred Szklarski', 'Tomek w Krainie Kangurów', 1990, 260, 'Pierwszy tom z cyklu powieści Alfreda Szklarskiego, opowiadający o przygodach Tomka Wilmowskiego.\r\n<br/><br/>\r\nJest rok 1902, czternastoletni Tomek Wilmowski jest uczniem jednego z warszawskich gimnazjów. Syn rewolucjonisty, wychowywany przez rodzinę swojej zmarłej matki - wujostwo Karskich – to błyskotliwy i pomysłowy chłopiec, a przy tym tak samo jak ojciec nienawidzący rosyjskiego caratu. W środowisku nauczycielskim, mimo swojej biegłości w przyswajaniu wiedzy, ma opinię „polskiego buntowszczyka”. Jego życie odmienia się w dniu, w którym do Warszawy przyjeżdża przyjaciel Andrzeja Wilmowskiego – Jan Smuga. Podróżnik, uznawany za mistrza wśród strzelców, szybko zyskuje nie tylko sympatię młodzieńca, ale i jego szczery podziw. Tomek razem z nim wyjeżdża z Polski – na spotkanie z prawie zapomnianym ojcem i przygodą.', 'Przygodowe / Literatura polska', 'img/twkk.jpg'),
(8, 'Alfred Szklarski', 'Przygody Tomka na Czarnym Lądzie', 1990, 263, 'Drugi tom z cyklu powieści Alfreda Szklarskiego opowiadających o przygodach Tomka Wilmowskiego.\r\n<br/><br/>\r\nTomek wraz z ojcem, Smugą i bosmanem Nowickim przybywają do portu w Mombasie, gdzie wynajmują przewodnika Huntera. Z nim omawiają plan łowów, a także rozmawiają o niebezpieczeństwach, które mogą czyhać na nich na Czarnym Lądzie. Jednym ze zwierząt, które chcą schwytać łowcy, jest legendarne wówczas jeszcze okapi leśne. Hunter nie wierzy jednak w jego istnienie. Do Nairobi bohaterowie jadą pociągiem. Wyprawa wynajmuje pięciu Masajów, którym przewodzi Mescherje; mają oni pomóc podczas łowów. Tomek zabawną, niezrozumiałą dla tubylców sztuczką, którą ci uznają za magię, łamie opór czarownika, który próbuje nie dopuścić do uczestnictwa Masajów w wyprawie. Bohaterowie organizują obławę na stado lwów nękające plemię.', 'Przygodowe / Literatura polska', 'img/ptncl.jpg'),
(9, 'Alfred Szklarski', 'Tomek u źródeł Amazonki', 1990, 277, 'Siódmy tom cyklu książek Alfreda Szklarskiego o przygodach Tomka Wilmowskiego i jego przyjaciół.\r\n<br/><br/>\r\nNie mam zamiaru palić historii i zabierać Ci przyjemności z przeczytania tej książki :-)', 'Przygodowe / Literatura polska', 'img/tuza.jpg'),
(10, 'Alfred Szklarski', 'Tomek w Gran Chaco', 1990, 262, 'Ósmy tom z cyklu książek Alfreda Szklarskiego o przygodach Tomka Wilmowskiego i jego przyjaciół.\r\n<br/><br/>\r\nNie mam zamiaru palić historii i zabierać Ci przyjemności z przeczytania tej książki :-)', 'Przygodowe / Literatura polska', 'img/twgc.jpg'),
(11, 'Andrzej Sapkowski', 'Wiedźmin. Ostatnie życzenie', 2011, 287, '<b>SAPKOWSKI ZAWŁADNIE WASZĄ WYOBRAŹNIĄ!</b>\r\n<br/><br/>\r\nPóźniej mówiono, że człowiek ten nadszedł od Bramy Powroźniczej. Nie był stary, ale włosy miał prawie zupełnie białe. Kiedy ściągnął płaszcz, okazało się, że na pasie za plecami miał miecz. Nie było w tym nic dziwnego, w Wyzimie prawie wszyscy chodzili z bronią, ale nikt nie nosił miecza na plecach niby łuku czy kołczana. Białowłosego przywiodło do miasta królewskie orędzie: trzy tysiące orenów nagrody za odczarowanie nękającej mieszkańców Wyzimy strzygi. Takie czasy nastały. Dawniej po lasach jeno wilki wyły, teraz namnożyło się wszelakiego paskudztwa - gdzie spojrzysz, tam upiory, strzygi, babołaki plugawe, bazyliszki, diaboły, żywiołaki, wilki i utopce. Tu nie wystarczą zwykłe czary ani osinowe kołki. Tu trzeba profesjonalisty.', 'Fantastyka / Literatura polska', 'img/woz.jpg'),
(12, 'Andrzej Sapkowski', 'Wiedźmin. Miecz przeznaczenia', 2011, 343, '<b>TO NIE JEST CYKL OPOWIADAŃ, TO CAŁY ŚWIAT</b>\r\n<br/><br/>\r\nWielopoziomowa proza Andrzeja Sapkowskiego zachwyci każdego. Każdy znajdzie tu coś dla siebie: wyszukany archaiczny świat, brawurową przygodę, humor, szaloną miłość, meandry przeznaczenia, a także erudycyjną rewizję wielu kulturowych schematów, wspaniały język i wyobraźnię. Z przynależnych konwencji fantasy, potworów, duchów, elfów, gnomów i ingerencji tajnych mocy wyciska Sapkowski tyle, ile Umberto Eco z kryminału w <i>Imieniu róży</i>', 'Fantastyka / Literatura polska', 'img/wmp.jpg'),
(13, 'Adam Mickiewicz', 'Pan Tadeusz', 1980, 650, 'Ta epopeja narodowa (z elementami gawędy szlacheckiej) powstała w latach 1832–1834 w Paryżu. Składa się z dwunastu ksiąg pisanych wierszem, trzynastozgłoskowym aleksandrynem polskim. Czas akcji: pięć dni z roku 1811 i jeden dzień z roku 1812.\r\n<br/><br/>\r\nEpopeja jest stałą pozycją na polskiej liście lektur szkolnych. W 2012 była publicznie odczytywana w akcji społecznej propagującej znajomość literatury polskiej Narodowe Czytanie Pana Tadeusza.\r\n<br/><br/>\r\nRękopis Pana Tadeusza od 1999 znajduje się w zbiorach Zakładu Narodowego im. Ossolińskich. W 2014 został wpisany na Polską Listę Krajową Programu UNESCO Pamięć Świata.', 'Literatura polska', 'img/pt.jpg'),
(14, 'Ken Whyld', 'Nauka szachów w weekend', 2010, 96, 'Seria książek pod wspólnym tytułem <i>Nauka... w weekend</i> jest przeznaczona dla osób, które maja mało czasu na sport. Jest cenną pomocą dla tych wszystkich, którzy nie mają kontaktu z zawodowymi instruktorami i klubami.', 'Instruktażowe', 'img/nsww.jpg'),
(15, 'Beata Ostrowicka', 'Niezwykłe wakacje', 2010, 192, 'Koniec roku szkolnego już blisko. Wszystko wskazuje na to, że lato będzie całkiem zwyczajne. Piątka przyjaciół zamierza spędzić wakacje w swoim miasteczku. Czy nudne łowienie ryb w pobliskiej rzece może być początkiem fantastycznych wydarzeń? Bohaterowie przeżywają niesamowite przygody, odbywają przedziwne podróże w czasie i przestrzeni, są świadkami niecodziennych wypadków, poznają tajemnice sprzed wieków...', 'Przygodowe / Literatura polska', 'img/nw.jpg'),
(16, 'Luca Caioli', 'Messi. Historia chłopca, który stał się legendą', 2011, 341, 'Znany, podziwiany i szanowany, przez wielu uważany za najlepszego piłkarza w historii. Jego nazwisko znają wszyscy, ale niewielu zna jego życie.\r\n<br/><br/>\r\nDziennikarz i autor bestsellerowych książek Luca Caioli dotarł do wszystkich faktów i ciekawostek z życia młodej gwiazdy futbolu, rozmawiał z rodzicami, trenerami z dzieciństwa, przyjaciółmi i bliskimi w Argentynie i Hiszpanii, ważnymi postaciami w Barcelonie, a przede wszystkim z samym Messim.\r\n<br/><br/>\r\nZ opowieści wyłania się historia wyjątkowego chłopca i mężczyzny, skromnego i oszczędnego w słowach, przemawiającego głośno i dobitnie na boiskach piłkarskich całego świata.\r\n<br/><br/>\r\nPanie i Panowie: oto Leo Messi.', 'Biograficzne', 'img/messi.jpg'),
(17, 'Stephen Prata', 'Szkoła programowania. Język C', 2006, 975, 'Język C, będącym prawdziwym weteranem wśród języków programowania, nadal cieszy się ogromną popularnością wśród programistów. Istniejący od ponad 40 lat język ciągle wykorzystywany jest wszędzie tam, gdzie niezbędne jest szybkie działanie programów i bezpośredni dostęp do zasobów sprzętowych komputera. Jest niemal niezastąpiony przy tworzeniu sterowników i dodatkowych elementów systemu operacyjnego. Programiści cenią w nim prostą składnię, niewielki zestaw słów kluczowych oraz to, że mogą korzystać z ogromnej ilości zewnętrznych bibliotek, które dodatkowo rozszerzają użyteczność języka.', 'Naukowe / Instruktażowe', 'img/c.jpg'),
(18, 'Karol Wejner, Marek Samborski', 'Biblioteka Wiedzy. Geografia Polski', 2015, 64, 'Seria <b>BIBLIOTEKA WIEDZY</b> to zbiór książek zawierających przydatne informacje z różnych dziedzin. Korzystanie z nich ułatwia przejrzyste rozmieszczenie materiału. Lekturę uatrakcyjniają mapy, wykresy i zdjęcia.', 'Naukowe / Literatura polska', 'img/gp.jpg'),
(19, 'W. Krysicki, L. Włodarski', 'Analiza matematyczna w zadaniach. Tom 1.', 2013, 511, '<b>Najpopularniejszy od lat podręcznik analizy matematycznej</b>\r\n<br/><br/>\r\nKażdy rozdział zawiera:\r\n</br>\r\n<ul>\r\n<li>podstawowe definicje i twierdzenia</li>\r\n<li>rozwiązane przykłady</li>\r\n<li>zadania do samodzielnego rozwiązania</li>\r\n</ul>\r\n<br/>\r\nNa końcu podręcznika znajdują się odpowiedzi do zadań; zadaniom trudniejszym towarzyszą również wskazówki.', 'Naukowe / Literatura polska', 'img/am1.jpg'),
(20, 'W. Krysicki, L. Włodarski', 'Analiza matematyczna w zadaniach. Tom 2.', 2014, 491, '<b>Najpopularniejszy od lat podręcznik analizy matematycznej</b>\r\n<br/><br/>\r\nKażdy rozdział zawiera:\r\n</br>\r\n<ul>\r\n<li>podstawowe definicje i twierdzenia</li>\r\n<li>rozwiązane przykłady</li>\r\n<li>zadania do samodzielnego rozwiązania</li>\r\n</ul>\r\n<br/>\r\nNa końcu podręcznika znajdują się odpowiedzi do zadań; zadaniom trudniejszym towarzyszą również wskazówki.', 'Naukowe / Literatura polska', 'img/am2.jpg'),
(21, 'Stephen Hawking', 'Krótkie odpowiedzi na wielkie pytania', 2018, 264, '<i>Skąd się wzięliśmy?<br/>\r\nCzy powinniśmy kolonizować kosmos?<br/>\r\nCzy podróż w czasie jest możliwa?<br/>\r\nW jaki sposób moglibyśmy w pełni rozwinąć skrzydła?<br/></i>\r\n<br/><br/>\r\nStephen Hawking (1942-2018) zasłynął zarówno z przełomowych dokonań w dziedzinie fizyki teoretycznej, jak i nadzwyczajnej umiejętności objaśniania skomplikowanych pojęć w sposób przystępny dla każdego. U schyłku życia pracował nad swym najbardziej osobistym dziełem - zestawieniem odpowiedzi na wielkie pytania, które tak często stawiał, wykraczając poza granice ściśle akademickich badań.', 'Naukowe', 'img/konwp.jpg'),
(22, 'Catherine Fisher', 'Tajemnice Wyroczni', 2005, 328, '<b>Nikt się nie poruszył.</b>\r\n<br/><br/>\r\nW Dwóch Krainach, położonym na pustyni państwie przywodzącym na myśl starożytny Egipt i Grecję, źle się dzieje. Jego mieszkańcy, nękani suszą, cierpiący biedę i głód, zwracają się do swojego boga, aby odnalazł Królową Deszczu, która ześle im wodę. Bogowi temu, wcielającemu się w zwykłych śmiertelników, służy 9 kapłanek. Najważniejsza spośród nich, zdeprawowana i zakochana w żądnym władzy generale Mówczyni, sprzeniewierza się Wyroczni. Knuje spisek, który ma doprowadzić do uznania za kolejnego Archona kogoś, kto znajduje się całkowicie pod jej wpływem. Stary Archon pragnie pokrzyżować plany Mówczyni. Tuż przed śmiercią pozyskuje pomoc najmłodszej z Dziewięciu, cichej nieśmiałej Mirany.', 'Przygodowe / Fantastyka', 'img/tw.jpg'),
(23, 'Chufo Llorens', 'Morze Ognia. Władca Barcelony II', 2012, 800, 'Pochodzący ze wsi, wychowany w nędzy Marti Barbany, który w połowie XI wieku przybywa do stolicy Katalonii, by odmienić swój los - zdobyć obywatelstwo miasta, zasłużyć na miłość pięknej dziewczyny z bogatego rodu i zbudować fortunę. Dzięki inteligencji, odwadze i wrodzonej smykałce do handlu Marti dochodzi do wysokiej pozycji społecznej. Jego losy, obfitujące w dramatyczne wydarzenia i emocje, od miłości do nienawiści, od zdrady do zemsty, pulsujące śródziemnomorskim rytmem i wabiące zapachami morza, przyciągnęły tysiące czytelników nie tylko w ojczyźnie pisarza.', 'Fikcja historyczna', 'img/mowb2.jpg'),
(24, 'Wydawnictwo: Rzeczpospolita', 'Mitologie świata. Starożytni Egipcjanie', 2007, 144, '<ul>\r\n<li>Wierzenia</li>\r\n<li>Obyczaje</li>\r\n<li>Kultura</li>\r\n<li>Wynalazki</li>\r\n<li>Władcy</li>\r\n</ul>', 'Historyczne / Naukowe / Literatura polska', 'img/msse.jpg'),
(25, 'Wydawnictwo: Polityka', 'Wielka Wojna. Jak 100 lat temu w Europie rozpoczęła się rzeź?', 2014, 179, 'Poznaj przyczyny, przebieg, skutki I Wojny Światowej, Wojny Totalnej.', 'Historyczne / Literatura polska', 'img/ww.jpg'),
(26, 'Władysław Kopaliński', 'Słownik wyrazów obcych i zwrotów obcojęzycznych z almanachem.', 2000, 664, 'Niezbędnik prawdziwego poligloty :-)', 'Slowniki', 'img/swo.jpg'),
(27, 'Stephen King', 'Bastion', 2014, 1166, '<b>PRZERAŻAJĄCA WIZJA ŚWIATA PO ZAGŁADZIE BIOLOGICZNEJ\r\n<br/><br/>\r\nAPOKALIPTYCZNY THRILLER MISTRZA GROZY</b>\r\n<br/><br/>\r\nSupernowoczesna broń biologiczna przynosi całkowitą zagładę. Zaczyna się niewinnie - od zwykłego przeziębienia. Ktoś kichnął, ktoś umarł i nagle Ziemia staje się masowym grobem. Nieliczni, którzy przetrwali, zagubieni w nowym post-apokaliptycznym świecie, zaczynają śnić. Wizje wskazują im drogę, zwiastującą pojawienie się wysłanników Dobra i Zła. Każdy musi dokonać wyboru i podążyć własną ścieżką. W Ameryce podzielona ludzkość formułuję dwa obozy - wzorowaną na demokracji Wolną Strefę w Kolorado i brutalną dyktaturę w Las Vegas, rządzoną przez psychopatów i kryminalistów, w których epidemia obudziła wszystko, co najgorsze. Czy ci, którzy wierzą w miłość, dobroć i braterstwo, mają szansę w nieuniknionym starciu z ludźmi o najbardziej prymitywnych instynktach? Konfrontacja między siłami Dobra i Zła staje się nieunikniona...', 'Post-apokaliptyczne', 'img/bastion.jpg');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
