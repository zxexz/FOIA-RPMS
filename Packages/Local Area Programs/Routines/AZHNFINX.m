AZHNFINX ;NEW PROGRAM [ 11/30/2000  2:42 PM ]
 S X=""
 F  S X=$O(^ASUMX("C",X)) Q:'X  D
 .I $D(^ASUMS(40007,1,X,1,0)) Q
 .E  W !!,"HEY, YOU HAVE A PROBLEM WITH "_X