xquery version "3.1";

<html>
  <head>
    <title>Întrebări frecvente – Școala de Ski</title>
    <style>
      {
        "
        table { border-collapse: collapse; width: 100%; }
        th, td { border: 1px solid #014421; padding: 10px; }
        th { background-color: #014421; color: white; }
        "
      }
    </style>
  </head>
  <body>
    <h1>Întrebări frecvente</h1>
    <table>
      <tr>
        <th>Categorie</th>
        <th>Întrebare</th>
        <th>Răspuns</th>
      </tr>
      {
        for $q in doc("faq_ski.xml")//intrebare
        return
          <tr>
            <td>{ $q/@categorie/string() }</td>
            <td>{ $q/enunt/string() }</td>
            <td>{ $q/raspuns/string() }</td>
          </tr>
      }
    </table>
  </body>
</html>
