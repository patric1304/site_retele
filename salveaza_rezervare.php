<?php
$xmlFile = 'rezervari.xml';

if (!file_exists($xmlFile)) {
    $xml = new SimpleXMLElement('<rezervari></rezervari>');
    $xml->asXML($xmlFile);
}

$xml = simplexml_load_file($xmlFile);

$rezervare = $xml->addChild('rezervare');
$rezervare->addChild('nume', htmlspecialchars($_POST['nume']));
$rezervare->addChild('email', htmlspecialchars($_POST['email']));
$rezervare->addChild('telefon', htmlspecialchars($_POST['telefon']));
$rezervare->addChild('data', htmlspecialchars($_POST['data']));
$rezervare->addChild('mesaj', htmlspecialchars($_POST['mesaj']));
$xml->asXML($xmlFile);


echo "<h2>Rezervarea a fost înregistrată cu succes!</h2>";
echo "<a href='rezervare.html'>Înapoi</a>";
?>
