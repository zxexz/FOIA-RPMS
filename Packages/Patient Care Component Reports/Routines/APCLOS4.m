APCLOS4 ; IHS/CMI/LAB - AMBULATORY - OPERATIONS SUMMARY ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;
AMB ;
 S X=999,DIC="^AUTTRCD(",DIC(0)="" D ^DIC S APCLAPCD=$S(Y>0:+Y,1:"")
 I $G(APCLMFY)=1!(APCLMFY=3) S X1=APCLFYB,X2=-1 D C^%DTC S APCLSD=X_".9999",APCLED=APCLFYE,APCLOS="APCLOS" D V
 I $G(APCLMFY)=2 S APCLSD=APCL("FY WORKING DT"),APCLED=APCLFYE,APCLOS="APCLOS" D V
 D SET^APCLOSUT
 S X1=APCLPYB,X2=-1 D C^%DTC S APCLSD=X_".9999",APCLED=APCLPYE,APCLOS="APCLOSP" D V
 D SET^APCLOSUT
EOJ ;ENTRY POINT
 K APCLSD,APCLODAT,APCLED,APCLVDFN,APCLVREC,APCLINJF,APCLALCH,APCLVLOC,APCL1,APCL2,APCLAP,APCLTYPE,APCLCAT,APCLVLOC,APCLCLNC,APCLCLIN,APCLDDFN,APCLDENT,APCLF,APCLPOV,APCLINJ,APCLAPC,G
 K APCLX,APCLPROV,APCLY,APCLDISC,APCLPDFN,APCLA,APCLH,APCLD,APCLAMB,APCLEDAT,APCLL,APCLS,APCLC,APCLT,APCLP,APCLF,APCLH,APCLAPCD
 Q
V ; 
 S %="^XTMP("""_APCLOS_""",APCLJOB,APCLBTH,",APCLA=%_"""AMBPOV"",APCLPOV)"
 S %="^XTMP("""_APCLOS_""",APCLJOB,APCLBTH,",APCLH=%_"""AMBAPC"",APCLAPC)"
 S %="^XTMP("""_APCLOS_""",APCLJOB,APCLBTH,",APCLD=%_"""AMBINJCAUSE"",APCLINJ)"
 S %="^XTMP("""_APCLOS_""",APCLJOB,APCLBTH,",APCLF=%_"""DENTPOV"",APCLDENT)"
 S %="^XTMP("""_APCLOS_""",APCLJOB,APCLBTH,",APCLP=%_"""AMBPROV"",APCLDISC)"
 S %="^XTMP("""_APCLOS_""",APCLJOB,APCLBTH,",APCLT=%_"""AMBTYPE"",APCLTYPE)"
 S %="^XTMP("""_APCLOS_""",APCLJOB,APCLBTH,",APCLL=%_"""AMBLOC"",APCLVLOC)"
 S %="^XTMP("""_APCLOS_""",APCLJOB,APCLBTH,",APCLS=%_"""AMBCAT"",APCLCAT)"
 S %="^XTMP("""_APCLOS_""",APCLJOB,APCLBTH,",APCLC=%_"""AMBCLIN"",APCLCLIN)"
 S APCLODAT=APCLSD F  S APCLODAT=$O(^AUPNVSIT("B",APCLODAT)) Q:APCLODAT=""!((APCLODAT\1)>APCLED)  D V1
 Q
V1 ;
 S APCLVDFN="" F  S APCLVDFN=$O(^AUPNVSIT("B",APCLODAT,APCLVDFN)) Q:APCLVDFN'=+APCLVDFN  I $D(^AUPNVSIT(APCLVDFN,0)) S APCLVREC=^(0) D PROC
 Q
PROC ;
 K APCLINJF,APCLALCH
 Q:$$DEMO^APCLUTL($P(APCLVREC,U,5),$G(APCLDEMO))
 Q:'$P(APCLVREC,U,9)
 Q:$P(APCLVREC,U,11)
 Q:"DXEIH"[$P(APCLVREC,U,7)
 I $P(APCLVREC,U,3)="" Q
 Q:$D(^APCLCNTL(4,11,"B",$P(APCLVREC,U,3)))  ;LAB/OHPRD CHANGED CV TO C FOR VA
 S APCLVLOC=$P(APCLVREC,U,6) Q:APCLVLOC=""
 Q:'$D(^XTMP("APCLSU",APCLJOB,APCLBTH,APCLVLOC))
 Q:'$D(^AUPNVPOV("AD",APCLVDFN))
 S (APCL1,APCL2)=0 F  S APCL2=$O(^AUPNVPRV("AD",APCLVDFN,APCL2)) Q:APCL2=""  I $P(^AUPNVPRV(APCL2,0),U,4)="P" S APCL1=APCL1+1,APCLAP=$P(^(0),U)
 Q:APCL1=0
 Q:APCL1>1
 I $P(APCLVREC,U,7)="C" S ^("CHART REVIEWS")=$S($D(^XTMP(APCLOS,APCLJOB,APCLBTH,"CHART REVIEWS")):(+^("CHART REVIEWS")+1),1:1) Q
 S ^("AMBVCOUNT")=$S($D(^XTMP(APCLOS,APCLJOB,APCLBTH,"AMBVCOUNT")):(+^("AMBVCOUNT")+1),1:1)
TYPE K ^UTILITY("DIQ1",$J)
 K DIQ,DIC,DA,DR
 S DIC="^AUPNVSIT(",DR=".03",DA=APCLVDFN,DIQ(0)="E" D EN^DIQ1 K DIC,DA,DR,DIQ
 S APCLTYPE=^UTILITY("DIQ1",$J,9000010,APCLVDFN,.03,"E")
 S X=APCLT D COUNT
SC ;
 K ^UTILITY("DIQ1",$J)
 K DIQ,DIC,DA,DR
 S DIC="^AUPNVSIT(",DR=".07",DA=APCLVDFN,DIQ(0)="E" D EN^DIQ1 K DIC,DA,DR,DIQ
 S APCLCAT=^UTILITY("DIQ1",$J,9000010,APCLVDFN,.07,"E")
 S X=APCLS D COUNT
 K ^UTILITY("DIQ1",$J)
LOC ;
 S X=APCLL D COUNT
CLINIC ;
 S APCLCLIN=$P(APCLVREC,U,8) I APCLCLIN="" S APCLCLIN="NO CLINIC",APCLCLNC="" G SETCLIN
 S APCLCLNC=$P(^DIC(40.7,APCLCLIN,0),U,2),APCLCLIN=$P(^DIC(40.7,APCLCLIN,0),U)
SETCLIN ;
 S X=APCLC D COUNT
 I APCLCLNC=30 S ^("ERCOUNT")=$S($D(^XTMP(APCLOS,APCLJOB,APCLBTH,"ERCOUNT")):(+^("ERCOUNT")+1),1:1)
 I APCLCLNC=56 D DENTAL
 ;
PROV D ^APCLOS41
 Q
DENTAL ;
 S ^("DENTVCOUNT")=$S($D(^XTMP(APCLOS,APCLJOB,APCLBTH,"DENTVCOUNT")):(+^("DENTVCOUNT")+1),1:1)
 S APCLDDFN=0 F  S APCLDDFN=$O(^AUPNVDEN("AD",APCLVDFN,APCLDDFN)) Q:APCLDDFN'=+APCLDDFN  I $D(^AUPNVDEN(APCLDDFN,0)) D DENTAL1
 Q
DENTAL1 ;
 S APCLDENT=$P(^AUPNVDEN(APCLDDFN,0),U)
 S X=APCLF D COUNT
 ;
 Q:$D(^XTMP(APCLOS,APCLJOB,APCLBTH,"DENTPAT",$P(^AUPNVDEN(APCLDDFN,0),U,2)))
 S ^XTMP(APCLOS,APCLJOB,APCLBTH,"DENTPAT",$P(^AUPNVDEN(APCLDDFN,0),U,2))=""
 S ^("DENTPATCOUNT")=$S($D(^XTMP(APCLOS,APCLJOB,APCLBTH,"DENTPATCOUNT")):(+^("DENTPATCOUNT")+1),1:1)
 Q
COUNT ;
 I '$D(@X) S @X=0
 S %=@X,%=%+1,@X=%
 Q