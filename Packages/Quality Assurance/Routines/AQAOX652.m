AQAOX652 ; COMPILED XREF FOR FILE #9002166.5 ; 02/13/06
 ; 
 S DIKZK=1
 S DIKZ(0)=$G(^AQAOCC(5,DA,0))
 S X=$P(DIKZ(0),U,1)
 I X'="" S ^AQAOCC(5,"B",$E(X,1,30),DA)=""
 S X=$P(DIKZ(0),U,2)
 I X'="" S ^AQAOCC(5,"AB",$E(X,1,30),DA)=""
 S X=$P(DIKZ(0),U,2)
 I X'="" N AQAOX S AQAOX=+^AQAOCC(5,DA,0) S:AQAOX]"" ^AQAOCC(5,"AC",X,AQAOX,DA)=""
END Q