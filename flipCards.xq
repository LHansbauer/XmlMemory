xquery version "3.0";


declare function local:status($s) {
  if($s/ausgewahlt="1") then (
  if ($s/kartenZustand="0") then replace value of node $s/kartenZustand with "1"
  else if ($s/kartenZustand="1") then replace value of node $s/kartenZustand with "0"
  else ""
)
else ""

};


for $s in db:open("testCardFlip")//card
return local:status($s)
