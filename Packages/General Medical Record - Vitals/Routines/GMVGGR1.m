GMVGGR1 ;HOIFO/YH,FT-VITAL SIGNS RECORD SF 511 ;6/12/02  11:58
 ;;5.0;GEN. MED. REC. - VITALS;;Oct 31, 2002
 ;
 ; This routine uses the following IAs:
 ;  #3214 - ^GMRYAPI calls         (private)
 ; #10061 - ^VADPT calls           (supported)
 ; #10096 - ^%ZOSF calls           (supported)
 ;
VMDATA(RESULT,GMVDATA) ;GMV V/M ALLDATA [RPC entry point]
 ;ENTRY POINT FROM GMRV SF511 GUI TO EXTRACT ALL DATA
 ; GMVDATA: piece 1 = DFN
 ;                2 = start date
 ;                3 = end date
 ;                4 = 0 or 1
 ;
 K ^TMP($J) S (GMROUT,GN,GQT)=0,DFN=+$P(GMVDATA,"^"),GMRSTRT=$P(GMVDATA,"^",2),GMRFIN=$P(GMVDATA,"^",3),GMR=+$P(GMVDATA,"^",4)
 N GRADIAL,GAPICAL,GSEL,GBRACH S GSEL=0
 S GAPICAL=$O(^GMRD(120.52,"B","APICAL",0)),GRADIAL=$O(^GMRD(120.52,"B","RADIAL",0)),GBRACH=$O(^GMRD(120.52,"B","BRACHIAL",0))
 S Y=GMRSTRT X ^DD("DD") S GSTRFIN=Y S Y=GMRFIN X ^DD("DD") S GSTRFIN=GSTRFIN_" - "_Y
 S GMRHT=0 K ^TMP($J,"GMR"),^TMP($J,"GMRK"),^TMP($J,"GDT"),^TMP($J,"GMRVG"),^TMP($J,"GTNM")
 S GSTART1=(9999999-GMRFIN)-.0001,GEND1=9999999-GMRSTRT
 F GTYPE="B","H","P","R","T","W","PO2","CVP","CG","PN" D SETT
 S GRPT=5 D:GMR'=1 SETIO D ^GMVGGR2
Q1 K GMR,GSOL,GIVDT,GMRHLOC,GMRVJ,GDATA,GDT,GEN,GEND1,GI,GJ,GK,GMRVX,GSTART1,GTNM,GTYP,GTYPE,GX,I D KVAR^VADPT K VA,VAROOT
 D QIO^GMVGR5
 K GRPT,GMROUT,GMRRMBD,GAGE,GCNT,GDOB,GCNTB,GCNTD,GCNTP,GCNTR,GCNTT,GCNTT1,GCNTI,GCNTO,GDT1,GCNTPD,GCNTTD,GCNTW,GPG,GPGS,GHT,GTYPE1,GCNTB3,GDTA,XDT,XIO,XX,^TMP($J,"GMRK"),^TMP($J,"GMR"),^TMP($J,"GDT"),^TMP($J,"GMRVG")
 K GLINE,GMRQUAL,^TMP($J,"GTNM"),G,GDA,GDIP,GDOP,GINF,GMIN,GMRFIN,GMRHT,GMRSITE,GMRSTRT,GMRVARY,GMRVHLOC,GMRWARD,GN,GNDATE,GNSHFT,GRNDIP,GRNDOP,GRNGIP,GSIP,GSOP,GSTAR,GSTRFIN,GSUB
 Q
SETT ;SET GMRT
 S GTYP(1)=$S(GTYPE="B":"BLOOD PRESSURE",GTYPE="P":"PULSE",GTYPE="R":"RESPIRATION",GTYPE="T":"TEMPERATURE",GTYPE="H":"HEIGHT",GTYPE="W":"WEIGHT",GTYPE="CG":"CIRCUMFERENCE/GIRTH",GTYPE="PO2":"PULSE OXIMETRY",1:"")
 I GTYP(1)="" S GTYP(1)=$S(GTYPE="CVP":"CENTRAL VENOUS PRESSURE",GTYPE="PN":"PAIN",1:"")
 Q:GTYP(1)=""
 S GTYP=$O(^GMRD(120.51,"B",GTYP(1),""))
 I GTYP>0 F GX=GSTART1:0 S GX=$O(^GMR(120.5,"AA",DFN,GTYP,GX)) Q:GX>GEND1!(GX'>0)  F GEN=0:0 S GEN=$O(^GMR(120.5,"AA",DFN,GTYP,GX,GEN)) Q:GEN'>0  I '$D(^GMR(120.5,GEN,2)) D BLDARR
 Q
BLDARR ;
 S GDATA=$S($D(^GMR(120.5,GEN,0)):^(0),1:"")
 S GMRVX=GTYPE,GMRVX(0)=$P(GDATA,"^",8),GMRVX(1)=0  D:GMRVX(0)>0!(GMRVX(0)<0)!($E(GMRVX(0))="0") EN1^GMVSAS0
 K GMRVARY S GMRVARY="" I $P($G(^GMR(120.5,GEN,5,0)),"^",4)>0 D CHAR^GMVCHAR(GEN,.GMRVARY,GTYP)
 K GG S GG="" I $O(GMRVARY(0)) D
 . S GG(1)=0 F  S GG(1)=$O(GMRVARY(GG(1))) Q:GG(1)'>0  S GG(2)=0 F  S GG(2)=$O(GMRVARY(GG(1),GG(2))) Q:GG(2)'>0  S GG(3)="" F  S GG(3)=$O(GMRVARY(GG(1),GG(2),GG(3))) Q:GG(3)=""  S GG=GG_$S(GG="":"",1:";")_GG(3)
 I GTYPE="P",GSEL S OK=0 D  Q:'OK
 . I '$D(^GMR(120.5,GEN,5,"B")) S OK=1 Q
 . I $D(^GMR(120.5,GEN,5,"B",GRADIAL)) S OK=1 Q
 . I $D(^GMR(120.5,GEN,5,"B",GAPICAL)) S OK=1 Q
 . I $D(^GMR(120.5,GEN,5,"B",GBRACH)) S OK=1
 I $P(GDATA,"^",8)="" Q
 S ^TMP($J,"GMRVG",9999999-GX,GTYPE,$P(GDATA,"^",8))=GG_"^"_$S($G(GMRVX(1))>0:1,1:"")_"^^"_$P(GDATA,"^",10)
 I GTYPE="P",GG["DORSALIS PEDIS" D
 . I $P(GDATA,"^",8)=1 S $P(^TMP($J,"GMRVG",9999999-GX,GTYPE,$P(GDATA,"^",8)),"^",2)=0
 ;. E  I $P(GDATA,"^",8)=0 S $P(^TMP($J,"GMRVG",9999999-GX,GTYPE,$P(GDATA,"^",8)),"^",2)=1
 S:$D(^TMP($J,"GMRVG",9999999-GX,"H",$P(GDATA,"^",8))) GHT=$P(GDATA,"^",8)
 I GTYPE="B",$P(GDATA,"^",8)'>0 S ^TMP($J,"GMRVG",9999999-GX,"B",$P(GDATA,"^",8))="^^"
 K GG
 Q
SETIO ;
 S X="GMRYRP0" X ^%ZOSF("TEST") Q:'$T
 D IO^GMVGR5
 D SETIOAR
 Q
SETIOAR F GTYPE1="XI"_($$INPUT^GMRYAPI()+4),"XO"_($$OUTPUT^GMRYAPI()+1) F GDT=0:0 S GDT=$O(^TMP($J,"GMR",GTYPE1,GDT)) Q:GDT'>0  F GDTA=0:0 S GDTA=$O(^TMP($J,"GMR",GTYPE1,GDT,GDTA)) Q:GDTA=""  D SETIOAR1
 Q
SETIOAR1 S:GTYPE1["XI" ^TMP($J,"GMRVG",GDT,"I",GDTA)="^" S:GTYPE1["XO" ^TMP($J,"GMRVG",GDT,"O",GDTA)="^"
 Q