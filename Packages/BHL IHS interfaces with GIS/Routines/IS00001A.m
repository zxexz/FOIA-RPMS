IS00001A ;Compiled from script 'Generated: HL IHS JVN O01 PACS-O' on DEC 03, 2002
 ;Part 2
 ;Copyright 2002 SAIC
EN D SETPIECE^INHU(.LINE,DELIM,15,L1,.CP) S L1=$G(@INV@("MSH15")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,16,L1,.CP) S L1=$G(@INV@("MSH16"))
 S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,17,L1,.CP)
 S LCT=LCT+1,^UTILITY("INH",$J,LCT)=LINE I $D(LINE)>9 M ^UTILITY("INH",$J,LCT)=LINE
 SET INSETID=0
 D ^BHLPID
 ;SET PID1 = INSGX\^INTHL7FT(11,3)\\4\"PID"
 S D0=INDA S X="PID"
 S X1="^INTHL7FT(11,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,4)
 S @INV@("PID1")=X K DXS,D0
 ;SET PID3 = INSGX\^INTHL7FT(1,3)\\250\@PID3
 S D0=INDA S X=$G(INA("PID3"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,250)
 S @INV@("PID3")=X K DXS,D0
 ;SET PID4 = INSGX\^INTHL7FT(1,3)\\80\@PID4
 S D0=INDA S X=$G(INA("PID4"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,80)
 S @INV@("PID4")=X K DXS,D0
 ;SET PID5 = INSGX\^INTHL7FT(7,3)\\250\#.01
 S D0=INDA S Y(1)=$S($D(^DPT(D0,0)):^(0),1:"") S X=$P(Y(1),U,1)
 S X1="^INTHL7FT(7,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,250)
 S @INV@("PID5")=X K DXS,D0
 ;SET PID6 = INSGX\^INTHL7FT(7,3)\\250\#.2403
 S D0=INDA S Y(1)=$S($D(^DPT(D0,.24)):^(.24),1:"") S X=$P(Y(1),U,3)
 S X1="^INTHL7FT(7,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,250)
 S @INV@("PID6")=X K DXS,D0
 ;SET PID7 = INSGX\^INTHL7FT(4,3)\\8\DOB
 S D0=INDA S Y(1)=$S($D(^DPT(D0,0)):^(0),1:"") S X=$P(Y(1),U,3)
 S X1="^INTHL7FT(4,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,8)
 S @INV@("PID7")=X K DXS,D0
 ;SET PID8 = $E(INTERNAL(SEX),1,1)
 S D0=INDA S Y(1)=$S($D(^DPT(D0,0)):^(0),1:"") S X=$P(Y(1),U,2),X=X S X=X,Y(2)=X S X=1,Y(3)=X S X=1,X=$E(Y(2),Y(3),X)
 S @INV@("PID8")=X K DXS,D0
 ;SET PID11.1 = $E(#.111,1,106)
 S D0=INDA S Y(1)=$S($D(^DPT(D0,.11)):^(.11),1:"") S X=$P(Y(1),U,1),Y(2)=X S X=1,Y(3)=X S X=106,X=$E(Y(2),Y(3),X)
 S @INV@("PID11.1")=X K DXS,D0
 ;SET PID11.2 = $E(#.112,1,160)
 S D0=INDA S Y(1)=$S($D(^DPT(D0,.11)):^(.11),1:"") S X=$P(Y(1),U,2),Y(2)=X S X=1,Y(3)=X S X=160,X=$E(Y(2),Y(3),X)
 S @INV@("PID11.2")=X K DXS,D0
 ;SET PID11.3 = $E(#.114,1,106)
 S D0=INDA S Y(1)=$S($D(^DPT(D0,.11)):^(.11),1:"") S X=$P(Y(1),U,4),Y(2)=X S X=1,Y(3)=X S X=106,X=$E(Y(2),Y(3),X)
 S @INV@("PID11.3")=X K DXS,D0
 ;SET PID11.4 = INSGX\^INTHL7F(14459,5)\\106\#.115
 S D0=INDA S Y(1)=$S($D(^DPT(D0,.11)):^(.11),1:"") S X=$S('$D(^DIC(5,+$P(Y(1),U,5),0)):"",1:$P(^(0),U,1))
 S X1="^INTHL7F(14459,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,106)
 S @INV@("PID11.4")=X K DXS,D0
 ;SET PID11.5 = $E(#.116,1,106)
 S D0=INDA S Y(1)=$S($D(^DPT(D0,.11)):^(.11),1:"") S X=$P(Y(1),U,6),Y(2)=X S X=1,Y(3)=X S X=106,X=$E(Y(2),Y(3),X)
 S @INV@("PID11.5")=X K DXS,D0
 ;SET PID12 = $E(INTERNAL(#.117),1,4)
 S D0=INDA S Y(1)=$S($D(^DPT(D0,.11)):^(.11),1:"") S X=$P(Y(1),U,7),X=X S X=X,Y(2)=X S X=1,Y(3)=X S X=4,X=$E(Y(2),Y(3),X)
 S @INV@("PID12")=X K DXS,D0
 ;SET PID13 = INSGX\^INTHL7FT(8,3)\\250\#.131
 S D0=INDA S Y(1)=$S($D(^DPT(D0,.13)):^(.13),1:"") S X=$P(Y(1),U,1)
 S X1="^INTHL7FT(8,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,250)
 S @INV@("PID13")=X K DXS,D0
 ;SET PID14 = INSGX\^INTHL7FT(8,3)\\250\#.132
 S D0=INDA S Y(1)=$S($D(^DPT(D0,.13)):^(.13),1:"") S X=$P(Y(1),U,2)
 S X1="^INTHL7FT(8,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,250)
 S @INV@("PID14")=X K DXS,D0
 ;SET PID17 = INSGX\^INTHL7FT(17,3)\\250\#.08
 S D0=INDA S Y(1)=$S($D(^DPT(D0,0)):^(0),1:"") S X=$S('$D(^DIC(13,+$P(Y(1),U,8),0)):"",1:$P(^(0),U,1))
 S X1="^INTHL7FT(17,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,250)
 S @INV@("PID17")=X K DXS,D0
 ;SET PID19 = INSGX\^INTHL7FT(1,3)\\16\#.09
 S D0=INDA S Y(1)=$S($D(^DPT(D0,0)):^(0),1:"") S X=$P(Y(1),U,9)
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,16)
 S @INV@("PID19")=X K DXS,D0
 D:'INVS MC^INHS
 K LINE S LINE="",CP=0 S L1="PID" S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,1,L1,.CP) S L1=$G(@INV@("PID1")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 D SETPIECE^INHU(.LINE,DELIM,2,L1,.CP) S L1=$G(@INV@("PID3")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,4,L1,.CP) S L1=$G(@INV@("PID4"))
 S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,5,L1,.CP) S L1=$G(@INV@("PID5")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,6,L1,.CP)
 S L1=$G(@INV@("PID6")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,7,L1,.CP) S L1=$G(@INV@("PID7")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,8,L1,.CP)
9 G EN^IS00001B