xquery version "3.0";


declare %updating function local:status($s) {
  if($s/istDran="1") then replace value of node $s/istDran with '2'  else if ($s/istDran="2") then replace value of node $s/istDran with '3'
 else if ($s/istDran="3") then replace value of node $s/istDran with '4'
 else if ($s/istDran="4") then replace value of node $s/istDran with '1'
 else replace value of node $s/istDran with '1' 



};


for $s in db:open("karten")//templatesMemory
return local:status($s)
