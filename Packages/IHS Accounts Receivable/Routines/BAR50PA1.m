BAR50PA1 ; IHS/SD/LSL - VARIABLE PROCESSING ROUTINE ; 12/12/2007
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**1,4,5,6,20,21,23,26**;OCT 26,2005;Build 17
 ;IHS/ASDS/LSL - 06/19/2001 - V1.5 Patch 1 - NOIS HQW-0201-100027 - FM 22 issue.  Modified to include E in DIC(0)
 ;IHS/SD/LSL - 08/22/2002 - V1.7 Patch 4 - HIPAA - Added REFID line tag to set VVERNUM and VPATHRN
 ;IHS/SD/LSL - 11/17/03 - V1.7 Patch 4 - HIPAA - Allow POS bills to look at DOS at the Service Level.  POS
 ;    bills can be identified from the RA in CLP01 where the first character is always a 0 (zero) as set in ABSPOSBB.
 ;IHS/SD/LSL - 02/10/04 - V1.7 Patch 5 - Remark Codes - Add RMKCD linetag that takes ERA Remark Code values and
 ;     populates REMARK CODE multiple of CLAIM multiple in A/R EDI IMPORT File
 ;IHS/SD/LSL - 02/24/04 - V1.7 Patch 5 - IM12723 - Resolve <SBSCR>IDENT+18^BAR50PA1.  Occurs when loading streamed
 ;      files that contain EOF.
 ; IHS/SD/LSL - 03/04/04 - V1.7 Patch 5 - NCPDP - Add LQ linetag that takes code from LQ02 and populates REMARK
 ;      CODE or NCPDP REJ/PAY multiple of CLAIM multiple in A/R EDI IMPORT file accordingly.
 ; IHS/SD/LSL - 03/17/04 - V1.7 Patch 5 - Allow  DOS from SVC loop if no claim start date sent.
 ;
 ;IHS/SD/POT - 1.8*23 - HEAT106998 APR 2013 MAKE PAYEE ADDRESS NOT MANDATORY ($g())
 ;IHS/SD/SDR - 1.8*26 - HEAT195751 - When getting the date from the service line, changed it to check for 472 or 150.  Can also
 ;   be 151 but that's the service to date.  Going to wait for someone to report it before trying to deal with a date range at
 ;   this level.
 ; ********************************************************************
SEP(IMPDA) ; EP
 ; find seperators according to standards for transport
 ; E - Element seperator
 ; S - Segment seperator
 ; SE - Sub Element seperator
 ; The following is specific to the MEDICARE 835 3051.4a and HIPAA 835
 ;E is 4th character of 1st segment
 ;S is 2nd character of 17th element of 1st segment
 ;SE is 1st character of 17th element of 1st segment
 ;
 K A
 N I
 F I=1:1:3 S A(I)=^BAREDI("I",DUZ(2),IMPDA,10,I,0)
 D STRIP                                    ; remove trailing spaces
 S X=A(1)_A(2)_A(3)
 S E=$E(X,4)                                ; Element Separator
 S Y=$P(X,E,17)
 S SE=$E(Y)                                 ; Sub - Element Separator
 S S=$E(Y,2)                                ; Segment Separator
 ;IHS/SD/TPF BAR*1.8*21 8/24/2011 REPITITION SEPARATOR 5010 PAGE C-3
 S RS=$E(X,83) S:RS="^" RS="U" S $E(X,83)=RS
 ;END
 Q
 ; ********************************************************************
 ;
STRIP ;
 F I=1:1:3 D
 . F  S L=$L(A(I)) Q:$E(A(I),L)'=" "  S A(I)=$E(A(I),1,L-1)
 Q
 ; ********************************************************************
 ;
BILNUM ;EP -
 ; process a new bill
 W:'(COUNT#10) "."
 W:'(COUNT#100) "  ",COUNT,!
 S COUNT=COUNT+1
 K DIC,DR,DA
 S DIC=$$DIC^XBDIQ1(90056.0205)
 S DIC(0)="EXL"
 S DIC("P")="90056.0205A"
 S DIC("DR")=".03////^S X=$G(VNEWPRV)"
 S X=VNEWBILL
 W !,X
 S DA(1)=IMPDA
 K DD,DO D FILE^DICN
 S CLMDA=+Y
 S DA=+Y
 S DIE=DIC
 K DIC
 K DR
 S DR=".04///^S X=VCLMPAY"
 S DR=DR_";.05///^S X=VCLMCHG"
 S DR=DR_";302///^S X=VBILNUM"  ;BAR*1.8*5 POPULATE 'PAYER CLAIM CONTROL # (ICN)' 
 ;BAR*1.8*4 SCR56,SCR58
 S DR=DR_";.11///^S X=$E($G(VCLMSTAT),1,25)"
 ;END BAR*1.8*4
 S DR=DR_";205///^S X=$G(VBPRAMT)"  ;BAR*1.8*6 SCR119 POPULATE NEW BPR AMOUNT FIELD
 ;
 D ^DIE
 ; other processing to be done at newbill
 S ADJDA=0
 ; Put check number at claim level to capture multiple checks per RA
 S DR="201///^S X=VCHECK"
 D ^DIE
 S RMKDA=0
 S LQDA=0
 Q
 ; ********************************************************************
 ;
RMKCD ; EP
 ; Populate remark codes to impda,clmda
 Q:'$L(VRMKCD)
 K DIC,DA,DR,X,Y
 S X=$P(VRMKCD," ")
 S DIC="^BARMKCD("
 S DIC(0)="ZX"
 K DD,DO
 D ^DIC
 S VRMKCDP=+Y
 Q:$D(^BAREDI("I",DUZ(2),IMPDA,30,CLMDA,40,"C",VRMKCDP))
 S RMKDA=RMKDA+1
 K DIE,DR,DA,X,DIC
 S DA(2)=IMPDA
 S DA(1)=CLMDA
 S X=RMKDA
 S DLAYGO=90056
 S DIC=$$DIC^XBDIQ1(90056.0211)
 S DIC("P")=$P($G(^DD(90056.0205,40,0)),U,2)
 S DIC(0)="EXL"
 S DIC("DR")=".02///^S X=VRMKCD"
 I VRMKCDP>0 S DIC("DR")=DIC("DR")_";.03////^S X=VRMKCDP"
 K DD,DO
 D ^DIC
 Q
 ; ********************************************************************
 ;
LQ ; EP
 ; Populate remark codes/NCPDP codes to impda,clmda
 Q:'$L(VLQCD)
 I $P(XREC(1.01),E,2)="HE" D  Q
 . S VRMKCD=VLQCD
 . D RMKCD
 I $P(XREC(1.01),E,2)'="RX" Q
 K DIC,DA,DR,X,Y
 S X=$P(VLQCD," ")
 S DIC="^ABSPF(9002313.93,"
 S DIC(0)="ZX"
 K DD,DO
 D ^DIC
 S VLQCDP=+Y
 Q:$D(^BAREDI("I",DUZ(2),IMPDA,30,CLMDA,50,"C",VLQCDP))
 S LQDA=LQDA+1
 K DIE,DR,DA,X,DIC
 S DA(2)=IMPDA
 S DA(1)=CLMDA
 S X=LQDA
 S DLAYGO=90056
 S DIC=$$DIC^XBDIQ1(90056.0212)
 S DIC("P")=$P($G(^DD(90056.0205,50,0)),U,2)
 S DIC(0)="EXL"
 S DIC("DR")=".02///^S X=VLQCD"
 I VLQCDP>0 S DIC("DR")=DIC("DR")_";.03////^S X=VLQCDP"
 K DD,DO
 D ^DIC
 Q
 ; ********************************************************************
 ;
CLMDOSE ;EP
 ; Process the claim at the VCLMDOSE variable
 K DIE,DR,DA
 S DIE=$$DIC^XBDIQ1(90056.0205)
 S DA=CLMDA
 S DA(1)=IMPDA
 S PAT=VPATLN_","_VPATFN_" "_VPATMID
 S PATID=$G(VPATHRN)_" | "_$G(VPATHIC)
 S DR=".06///^S X=$E(PAT,1,30)"
 S DR=DR_";.07///^S X=PATID"
 S DR=DR_";.08///^S X=VCLMDOSB"
 S DR=DR_";.09///^S X=VCLMDOSE"
 D ^DIE
 Q
 ;*********************************************************************
 ;
ADJAMT ;EP
 ; Process reason and amount into claim impda,clmda
 I '$L(VADJREA),'$L(VADJAMT) Q
 S ADJDA=ADJDA+1
 K DIE,DR,DA,X,DIC
 S DA(2)=IMPDA
 S DA(1)=CLMDA
 S X=ADJDA
 S DIC=$$DIC^XBDIQ1(90056.0208)
 S DIC("P")="90056.0208A"
 S DIC(0)="EXL"
 S DIC("DR")=".02///^S X=VADJAMT"
 S DIC("DR")=DIC("DR")_";.03////^S X=VADJREA"
 K DD,DO
 D ^DIC
 Q
 ; ********************************************************************
 ;
CHECK ;EP
 ; Enter Check mumber into Import
 K DIE,DR,DA
 S DIE=$$DIC^XBDIQ1(90056.02)
 S DA=IMPDA
 S DR=".09////^S X=VCHECK"
 D ^DIE
 Q
 ; ********************************************************************
HIPAACHK ; EP
 ; Create entry in A/R EDI CHECK file
 K BARBATCH,BARITEM,BARCHECK
 K BARCHKN S BARCHKN=VCHECK  ;bar*1.8*20 REQ3
 S BARCHECK=VCHECK
 S (BARBATCH,BARITEM)=""
 D UPDCHECK^BAR50P09        ; Returns BARCKIEN
 K BARBATCH,BARITEM,BARCHECK
 Q
 ; ********************************************************************
 ;
VPRCNTCT ; EP
 ; Create Payer Contact multiple in A/R EDI Check File
 Q:XREC(".03")'="2-130-PER"
 Q:'+BARCKIEN               ; Check not in A/R EDI Check File
 Q:(VPRFCD="")            ; No payer contact information
 K DIC,DR,DA,X,Y
 S DA(1)=BARCKIEN
 S DLAYGO=90056
 S DIC=$$DIC^XBDIQ1(90056.2203)
 S DIC(0)="XZL"
 S DIC("P")=$P(^DD(90056.22,.3,0),U,2)
 ;MODFIY SEG 2-30-PER TO HANDLE ALL CODE IN CONTACT INFORMATION SEGMENT
 S VPRFCD=$P(VPRFCD," ")
 F I=1:1:3 D
 .S VAR1="VPRCNUM"_I
 .S VAR2="VPRCQLF"_I
 .;S DIC("DR")=".01////^S VPRCNUM"
 .;S DIC("DR")=".01////^S X=@VAR1"
 .;S DIC("DR")=DIC("DR")_";.02////^S X=VPRCQLF"
 .S DIC("DR")=".02////^S X=@VAR2"
 .S DIC("DR")=DIC("DR")_";.03////^S X=VPRCNAM1"
 .S DIC("DR")=DIC("DR")_";.04////^S X=VPRFCD"  ;CONTACT FUNCTION CODE IHS/SD/TPF 9/6/2011 BAR*1.8*21 5010 PAGE 2-3
 .S X=@VAR1
 .K DD,DO D FILE^DICN
 Q
 ; ********************************************************************
 ;
PAY ; EP
 ; Set payer address AND payee name in A/R EDI CHECK file
 K DIC,DIE,X,Y,DR
 Q:'+BARCKIEN
 S DA=BARCKIEN
 S DIE=$$DIC^XBDIQ1(90056.22)
 S DR=".07////^S X=VPAYEE"
 S DR=DR_";.21////^S X=VPAYER"
 S DR=DR_";.22////^S X=VPRADR"
 S DR=DR_";.23////^S X=VPRADR2"
 S DR=DR_";.24////^S X=VPRCITY"
 S DR=DR_";.25////^S X=VPRSTATE"
 S DR=DR_";.26////^S X=VPRZIP"
 S DR=DR_";.27////^S X=VPRCOUNT"  ;IHS/SD/TPF BAR*1.8*21 8/30/2011 5010 SPECS PAGE 2
 S DR=DR_";.28////^S X=VPRCTSUB"  ;IHS/SD/TPF BAR*1.8*21 8/30/2011 5010 SPECS PAGE 2
 D ^DIE
 Q
 ;BAR*1.8*1 3/20/2007 SRS PATCH 1 ADDENDUM
VIC ;EP - SET 'IDENTIFICATION CODE QUALIFIER' AND 'INDENTIFICATION CODE' INTO A/R EDI CHECK file
 K DIC,DIE,X,Y,DR
 Q:$G(VICQ)=""!($G(VIC)="")
 Q:'+BARCKIEN
 S DA=BARCKIEN
 S DIE=$$DIC^XBDIQ1(90056.22)
 S VICQ=$TR($P(VICQ,"|")," ")
 S DR=".08////^S X=VICQ"   ;Identification Code  NPI or Tax id
 I VICQ="XX" S DR=DR_";.09////^S X=VIC"     ;IF 'XX' THEN NPI
 E  I VICQ="FI" S DR=DR_";.11////^S X=VIC"  ;IF 'FI' THEN Tax id
 E  I VICQ="XV" S DR=DR_";101////^S X=VIC"  ;IF "XV" THEN CMS PLAN ID ;IHS/SD/TPF 9/6/2011 BAR*1.8*21 5010 PAGE 3
 D ^DIE
 Q
 ;BAR*1.8*21 PROCESS PAYEE ADDRESS
PAYEEADD ;EP - SAVE PAYEE ADDRESS
 K DIC,DIE,X,Y,DR
 Q:'+BARCKIEN
 S DA=BARCKIEN
 S VPEEADR1=$G(VPEEADR1) ;P.OTT
 S VPEEADR2=$G(VPEEADR2) ;P.OTT
 S DIE=$$DIC^XBDIQ1(90056.22)
 S DR="1201////^S X=VPEEADR1"
 S DR=DR_";1202////^S X=VPEEADR2"
 S DR=DR_";1203////^S X=VPEECITY"
 S DR=DR_";1204////^S X=VPEESTAT"
 S DR=DR_";1205////^S X=VPEEZIP"
 S DR=DR_";1206////^S X=VPECOUNT"
 S DR=DR_";1207////^S X=VPEESUB"
 D ^DIE
 Q  ;BAR*1.8*1 3/20/2007 SRS PATCH 1 ADDENDUM
 ;PROCESS PAYEE 'ADDITONAL PAYEE ID' LOOP B 1-120.B-REF
VREFB ; EP
 Q:'$D(VREFBID)
 K DIC,DIE,X,Y,DR
 Q:'+BARCKIEN
 S DA(1)=BARCKIEN
 S DIC="^BARECHK("_DA(1)_",11,"
 S X=$P(VREFBIQ," ")
 S DIC(0)="ZL"
 D ^DIC
 Q:Y<0
 K DIC,DR,DIE,DA
 S DA(1)=BARCKIEN
 S DA=+Y
 S DIE="^BARECHK("_DA(1)_",11,"
 S DR=".02////^S X=VREFBID"
 D ^DIE
 Q
 ; ********************************************************************
 ;
PATIENT ; EP
 ; Capture patient data per claim, not dependent on Claim Date
 I $P(^BAREDI("1T",TRDA,10,SEGDA,0),U)="3-030.A-NM1" D
 .I $P(XREC(1.01),E,2)="QC" D
 ..K DIE,DR,DA
 ..S DIE=$$DIC^XBDIQ1(90056.0205)
 ..S DA=CLMDA
 ..S DA(1)=IMPDA
 ..S PAT=VPATLN_","_VPATFN_" "_VPATMID
 ..S PATID=$G(VPATHRN)_" | "_$G(VPATHIC)
 ..S DR=".06///^S X=$E(PAT,1,30)"
 ..S DR=DR_";.07///^S X=PATID"
 ..D ^DIE
 Q
 ; ********************************************************************
 ;
CLMDATE ; EP
 ; Based on Segment and Identifier, Set CLAIM FROM and TO DATE
 ;W !,$P(^BAREDI("1T",TRDA,10,SEGDA,0),U)
 ;I $P(^BAREDI("1T",TRDA,10,SEGDA,0),U)="3-050.A-DTM" D
 I $P(^BAREDI("1T",TRDA,10,SEGDA,0),U)["3-050" D
 .K DIE,DR,DA
 .S DIE=$$DIC^XBDIQ1(90056.0205)
 .S DA=CLMDA
 .S DA(1)=IMPDA
 .S VCLMQLF=$P($G(VCLMQLF)," ")
 .;W !,"VCLMQLF: ",$G(VCLMQLF)
 .I $P(XREC(1.01),E,2)=232 D
 ..S VCLMFR=VCLMDT
 ..S IMGDA=$G(IMGDA)+1
 ..S ^BAREDI("I",DUZ(2),IMPDA,40,IMGDA,0)="VCLMFR     "_VCLMFR
 ..S DR=".08///^S X=VCLMFR"
 ..D ^DIE
 .I $P(XREC(1.01),E,2)=233 D
 ..S VCLMTO=VCLMDT
 ..S IMGDA=$G(IMGDA)+1
 ..S ^BAREDI("I",DUZ(2),IMPDA,40,IMGDA,0)="VCLMTO     "_VCLMTO
 ..S DR=".09///^S X=VCLMTO"
 ..D ^DIE
 ..;BEGIN IHS/SD/TPF BAR*1.8*21 NEW DTM SEGMENTS PAGE 11 SPACES
 .I $P(XREC(1.01),E,2)="036" D
 ..S VCLMEXP=VCLMDT
 ..S IMGDA=$G(IMGDA)+1
 ..S ^BAREDI("I",DUZ(2),IMPDA,40,IMGDA,0)="VCLMEXP     "_VCLMEXP
 ..S DR="901///^S X=VCLMEXP"
 ..D ^DIE
 .I $P(XREC(1.01),E,2)="050" D
 ..S VCLMREC=VCLMDT
 ..S IMGDA=$G(IMGDA)+1
 ..S ^BAREDI("I",DUZ(2),IMPDA,40,IMGDA,0)="VCLMREC     "_VCLMREC
 ..S DR="902///^S X=VCLMREC"
 ..D ^DIE
 ;END IHS/SD/TPF BAR*1.8*21
 ; If Pharmacy POS bill and no claim level DOS,
 ; look for Service level DOS
 I $P(^BAREDI("1T",TRDA,10,SEGDA,0),U)="3-080-DTM",'$D(VCLDOSB) D
 .K DIE,DR,DA
 .S DIE=$$DIC^XBDIQ1(90056.0205)
 .S DA=CLMDA
 .S DA(1)=IMPDA
 .;I $P(XREC(1.01),E,2)=472 D  ;bar*1.8*26 IHS/SD/SDR HEAT195751
 .I "^150^472^"[("^"_$P(XREC(1.01),E,2)_"^") D  ;bar*1.8*26 IHS/SD/SDR HEAT195751
 ..S VCLMDOSB=VCLMDATE
 ..S IMGDA=$G(IMGDA)+1
 ..S ^BAREDI("I",DUZ(2),IMPDA,40,IMGDA,0)="VCLMDOSB     "_VCLMDOSB
 ..S DR=".08///^S X=VCLMDOSB"
 ..D ^DIE
 ;
 ;
 K VCLMDT,VCLMQLF
 Q
 ; ********************************************************************
 ;
READ(BARPATH,BARFILE) ; EP
 ; Read host file into ^TMP($J,"ERA")
 Q:BARPATH=""
 Q:BARFILE=""
 K ^TMP($J,"ERA")
 N BARCNT,BARTXT,BARDONE
 S (BARCNT,BARDONE)=0
 D OPEN^%ZISH("835FILE"_$J,BARPATH,BARFILE,"R")
 I POP D  Q
 .W !!,"Error opening file....please verify filename and directory and try again"
 .S BARDONE=1
 .D EOP^BARUTL(1)
 D READTST
 D CLOSE^%ZISH("835FILE"_$J)
 H 5
 D OPEN^%ZISH("835FILE"_$J,BARPATH,BARFILE,"R")
 I BARFTYP="STREAM" F  D STREAM Q:+BARDONE
 I BARFTYP'="STREAM" F  D CRLF Q:+BARDONE
 D CLOSE^%ZISH("835FILE"_$J)
 Q
 ; ********************************************************************
 ;
READTST ;
 ; Test file type
 U IO
 R BARTXT#200:DTIME          ;Direct read of flat file
 I $L(BARTXT)>120 S BARFTYP="STREAM" Q
 S BARFTYP="CR/LF"
 Q
 ; ********************************************************************
 ;
STREAM ;
 U IO
 R BARTXT#250:DTIME           ;Direct read of flat file
 I $$STATUS^%ZISH D
 .S BARCNT=BARCNT+1
 .S ^TMP($J,"ERA",BARCNT)=BARTXT
 .S BARTXT=""
 I '+$L(BARTXT) S BARDONE=1 Q
 S BARCNT=BARCNT+1
 S ^TMP($J,"ERA",BARCNT)=BARTXT
 Q
 ; ********************************************************************
 ;
CRLF ;
 U IO
 R BARTXT:DTIME
 I $$STATUS^%ZISH!'+$L(BARTXT) S BARDONE=1 Q
 S BARCNT=BARCNT+1
 S ^TMP($J,"ERA",BARCNT)=BARTXT
 Q
