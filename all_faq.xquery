xquery version "1.0";
<ul> {
  for $q in doc("faq_ski.xml")//intrebare
  order by $q/@categorie
  return
    <li>
      <strong>{data($q/enunt)}</strong>
      <br/>
      {if ($q/raspuns) then data($q/raspuns) else <em>Răspuns indisponibil</em>}
      <br/>
      <span style="color: #198754;">Categorie: {data($q/@categorie)}</span>
    </li>
} </ul>