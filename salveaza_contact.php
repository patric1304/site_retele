<?php
$xmlFile = 'contact.xml';

if (!file_exists($xmlFile)) {
    $xml = new SimpleXMLElement('<contacte></contacte>');
    $xml->asXML($xmlFile);
}


$xml = simplexml_load_file($xmlFile);
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $nume = htmlspecialchars(trim($_POST['nume']));
    $mesaj = htmlspecialchars(trim($_POST['mesaj']));

    $contact = $xml->addChild('contact');
    $contact->addChild('nume', $nume);
    $contact->addChild('mesaj', $mesaj);

    $xml->asXML($xmlFile);

    echo "<h2>Mesajul a fost trimis cu succes!</h2>";
    echo "<a href='contact.html'>Înapoi</a>";
} else {
    echo "<p>Acces invalid.</p>";
}
?>
