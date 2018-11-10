#!/bin/sh

cat <<EOF
.newtheorem  {
   padding: 0px 2px 3px ;
   margin: 3px ;
}
.newtheorem span.head {
   font-weight : bold ;
	padding-left : 1em ;
	padding-right : 1em ;
	color: white ;
        display: block;
        position: relative ; /* could also be absolute */ 
	width: 24em;
        top: 0;
        left: 0;
	z-index: 10;
}
EOF

while read c r g b 
do
   echo ".$c + .newtheorem  {"
   echo "   background-color : rgba( $r, $g, $b, 0.35 ) ; "
   echo "}"
   echo ".$c + p + .newtheorem  {"
   echo "   background-color : rgba( $r, $g, $b, 0.35 ) ; "
   echo "}"
   echo ".$c + .newtheorem span.head {"
   echo "   background-color : rgba( $r, $g, $b, 1 ) ; "
   echo "}"
   echo ".$c + .newtheorem p span.head {"
   echo "   background-color : rgba( $r, $g, $b, 1 ) ; "
   echo "}"
   echo ".$c + p + .newtheorem span.head {"
   echo "   background-color : rgba( $r, $g, $b, 1 ) ; "
   echo "}"
done 
