BGP7GALL ; IHS/CMI/LAB - GUI COM REPORT ;
 ;;17.1;IHS CLINICAL REPORTING;;MAY 10, 2017;Build 29
 ;
 ;
TESTNTL ;
 S ERR=""
 S BGPND(4)="",BGPND(3)=""
 S BGPLIST(3)=""
 D EP(.ERR,1,2522,"BGP 17 SEL ALL PATS","S",.BGPND,1,3040000,3000000,1,"A",.BGPLIST,"","","B",$$NOW^XLFDT)
 W !,ERR
 Q
EP(BGPRET,BGPUSER,BGPDUZ2,BGPOPTN,BGPINDG,BGPIND,BGPQTR,BGPPER,BGPVDT,BGPBEN,BGPLSTT,BGPLIST,BGPLPRV,BGPLPROV,BGPROT,BGPRTIME,BGPMFITI,BGPFILE,BGPDNT) ;EP - called from GUI to produce COM REPORT CI05-RPT-LOC-COM
 ; SEE ROUTINE BGP7DL if you have questions about any of these variables
 ;  BGPUSER - DUZ
 ;  BGPDUZ2 - DUZ(2)
 ;  BGPOPTN - OPTION NAME
 ;  BGPINDG - $E (1st character) of the answer to the following DIR call:
 ;            value will be a D, C, W, E or S
 ;               Select one of the following:
 ;
 ;               DM        Diabetes-Related Measures
 ;               CVD       Cardiovascular Disease Prevention for At-Risk Patients
 ;               WH        Women's Health-Related Measures
 ;               ELD       Elder Care-Related Measures
 ;               SEL       Selected Measures (User Defined)
 ;
 ;               Which set of Measures should be included in this report:
 ;
 ;  BGPIND - note:  THIS ARRAY IS ONLY REQUIRED IF BGPINDG="S"
 ;           array containing iens of the measures selected by the user
 ;           for example, BGPIND(3)=""
 ;                        BGPIND(6)="" if the user selected measures
 ;                        1 and 6 from the BGP 17 INDICATORS file.  When
 ;                        you present them to the user for selection use all of them
 ;                        in the file, do not screen out any of them.
 ;
 ;  BGPQTR - this is equal to 1,2,3,4 depending on how the user answers the following
 ;           DIR call:
 ;               Select one of the following:
 ;
 ;         1         January 1 - December 31
 ;         2         April 1 - March 31
 ;         3         July 1 - June 30
 ;         4         October 1 - September 30
 ;
 ;       Enter the date range for your report:
 ;
 ;  BGPPER - this is the year they select if they answered the above question
 ;           with a 1 through 4  e.g  305000 (fileman imprecise date for 2010)
 ;
 ;  BGPVDT - baseline year entered by user in internal fileman format, year only
 ;           e.g.  3010000
 ;
 ;  BGPBEN - 1 for Indians only, 2 for Not Indian, 3 for both (see reader call
 ;           at subroutine BEN in BGP7DL
 ;
 ;  BGPLSTT - this contains the answer to the following DIR call:
 ;          
 ;        Select one of the following:
 ;         P         Patient List by Provider
 ;         A         All Patients
 ;
 ;        Choose report type for the Lists: R//
 ;  BGPLIST (array) contains the iens of the measures they want a list for.
 ;        when you present the choices for lists only present the measures they pick
 ;        that are in array BGPIND (run report to see this)
 ;        e.g.  BGPLIST="A"
 ;              BGPLIST(3)=""
 ;
 ;  BGPLPRV - will equal ien of provider if they picked "P" above
 ;  BGPLPROV - will equal provider name if they picked "P" above
 ;
 ;  BGPROT - type of output  P for printed, D For Delimited, B for both
 ;  BGPRTIME - report will be queued automatically, this variable
 ;             contains the time it will run, internal fileman format
 ;             must be date and time
 ;
 ;  BGPRET - return value is ien^error message^export file name. a zero (0) is
 ;  passed as ien if error occurred, display the filename back to the user
 ;  if they chose to export to area
 ;
 ;create entry in gui output file
 ;queue report to run with/GUIR
 D EP1
 S Y=BGPRET
 ;D EN^XBVK("BGP") S:$D(ZTQUEUED) ZTREQ="@"
 S BGPRET=Y
 Q
EP1 ;
 S U="^"
 I $G(BGPUSER)="" S BGPRET=0_"^USER NOT PASSED" Q
 I $G(BGPDUZ2)="" S BGPRET=0_"^DUZ(2) NOT PASSED" Q
 I $G(BGPOPTN)="" S BGPRET=0_"^OPTION NAME NOT PASSED" Q
 I $G(BGPINDG)="" S BGPRET=0_"^INDICATOR TYPE NOT PASSED" Q
 I "DCWESIPA"'[BGPINDG S BGPRET=0_"^INDICATOR TYPE INVALID" Q
 I BGPINDG="S",'$D(BGPIND) S BGPRET=0_"^INDICATOR ARRAY NOT PASSED" Q
 I BGPINDG="S",'$O(BGPIND(0)) S BGPRET=0_"^INDICATOR ARRAY NOT PASSED" Q
 I $G(BGPPER)="" S BGPRET=0_"^YEAR VARIABLE NOT PASSED" Q
 I $G(BGPQTR)="" S BGPRET=0_"^QUARTER/DATE TYPE NOT PASSED" Q
 I $G(BGPVDT)="" S BGPRET=0_"^BASELINE YEAR NOT PASSED" Q
 I $G(BGPBEN)="" S BGPRET=0_"^BENIFICIARY TYPE NOT PASSED" Q
 I "PDB"'[$G(BGPROT) S BGPRET=0_"^REPORT OUTPUT TYPE NOT PASSED" Q
 I $G(BGPLSTT)="" S BGPRET=0_"^LIST TYPE NOT PASSED" Q
 I $G(BGPLIST)="P",$G(BGPLPRV)="" S BGPRET=0_"^PROVIDER NOT PASSED FOR LIST TYPE P" Q
 I $G(BGPLPRV) S BGPLPROV=$P($G(^VA(200,BGPLPRV,0)),U)
 S BGPRTIME=$G(BGPRTIME)
 S BGPLIST=$G(BGPLSTT)
 ;S DUZ=BGPUSER
 S DUZ(2)=BGPDUZ2
 S:'$D(DT) DT=$$DT^XLFDT
 D ^XBKVAR
 S BGPGUI=1
 S IOM=80,BGPIOSL=55
 S BGPRTYPE=4,BGPYRPTH="A",BGPALLPT=1
 I BGPINDG="D" K BGPIND D DI
 I BGPINDG="C" K BGPIND D CI
 I BGPINDG="W" K BGPIND D WI
 I BGPINDG="E" K BGPIND D EI
 I BGPINDG="I" K BGPIND D II^BGP7DL
 I BGPINDG="P" K BGPIND D PI^BGP7DL
 I BGPINDG="A" K BGPIND D AI^BGP7DL
 I BGPQTR=1 S BGPBD=$E(BGPPER,1,3)_"0101",BGPED=$E(BGPPER,1,3)_"1231"
 I BGPQTR=2 S BGPBD=($E(BGPPER,1,3)-1)_"0401",BGPED=$E(BGPPER,1,3)_"0331"
 I BGPQTR=3 S BGPBD=($E(BGPPER,1,3)-1)_"0701",BGPED=$E(BGPPER,1,3)_"0630"
 I BGPQTR=4 S BGPBD=($E(BGPPER,1,3)-1)_"1001",BGPED=$E(BGPPER,1,3)_"0930"
 I BGPQTR=5 D
 .S D=$$FMADD^XLFDT(BGPPER,1)
 .I $E(BGPPER,4,7)'=1231 S BGPBD=($E(BGPPER,1,3)-1)_$E(D,4,7),BGPED=BGPPER,BGPPER=$E(BGPED,1,3)_"0000"
 .I $E(BGPPER,4,7)=1231 S BGPBD=$E(BGPPER,1,3)_$E(D,4,7),BGPED=BGPPER,BGPPER=$E(BGPED,1,3)_"0000"
BY ;get baseline year
 S X=$E(BGPPER,1,3)-$E(BGPVDT,1,3)
 S X=X_"0000"
 S BGPBBD=BGPBD-X,BGPBBD=$E(BGPBBD,1,3)_$E(BGPBD,4,7)
 S BGPBED=BGPED-X,BGPBED=$E(BGPBED,1,3)_$E(BGPED,4,7)
 S BGPPBD=($E(BGPBD,1,3)-1)_$E(BGPBD,4,7)
 S BGPPED=($E(BGPED,1,3)-1)_$E(BGPED,4,7)
 S BGPHOME=$P($G(^BGPSITE(DUZ(2),0)),U,2)
 D REPORT^BGP7UTL
 I $G(BGPQUIT) S BGPRET=0_"^COULD NOT CREATE REPORT ENTRY" Q
 I BGPRPT="" S BGPRET=0_"^COULD NOT CREATE REPORT ENTRY" Q
 S BGPDELT=""
 ;create entry in GUI file
 D ^XBFMK
 S X=BGPFILE
 ;S X=BGPUSER_$$NOW^XLFDT
 S BGPGFNM=X
 S DIC="^BGPGUIG(",DIC(0)="L",DIADD=1,DLAYGO=90558.19,DIC("DR")=".02////"_BGPUSER_";.03////"_$S(BGPRTIME]"":BGPRTIME,1:$$NOW^XLFDT)_";.05///"_BGPOPTN_";.06///R;.07///"_$G(BGPROT)
 K DD,D0,DO D FILE^DICN K DLAYGO,DIADD,DD,D0,DO
 I Y=-1 S BGPRET=0_"^UNABLE TO CREATE ENTRY IN GUI OUTPUT FILE" Q
 S BGPGIEN=+Y
 ;SEND THE REPORT PROCESS OFF TO THE BACKGROUND USING TASKMAN CALL
 D TSKMN
 S BGPRET=BGPGIEN
 Q
 ;
TSKMN ;
 S ZTIO=""
 K ZTSAVE S ZTSAVE("*")=""
 S ZTCPU=$G(IOCPU),ZTRTN="LOCALL^BGP7GALL",ZTDTH=$S(BGPRTIME]"":BGPRTIME,1:$$NOW^XLFDT),ZTDESC="GUI NATIONAL GPRA REPORT ALL 05" D ^%ZTLOAD
 D UPLOG^BGP7GUA(BGPGIEN,ZTSK)
 Q
LOCALL ;
 D ^BGP7D1
 K ^TMP($J,"BGPGUI")
 S IOM=80,BGPIOSL=55
 D GUIR^BGPXBLM("^BGP7DP","^TMP($J,""BGPGUI"",")
 ;cmi/anch/maw added 5/12/2009 for word output
 S X=0,C=0 F  S X=$O(^TMP($J,"BGPGUI",X)) Q:X'=+X  D
 . S C=C+1
 . N BGPDATA
 . S BGPDATA=$G(^TMP($J,"BGPGUI",X))
 . I BGPDATA="ZZZZZZZ" S BGPDATA=$C(12)
 . S ^BGPGUIG(BGPGIEN,11,C,0)=BGPDATA
 S ^BGPGUIG(BGPGIEN,11,0)="^90558.1911^"_C_"^"_C_"^"_DT
 K ^TMP($J,"BGPGUI")
 ;cmi/anch/maw end of mods
 D ENDLOG
 D XIT
 Q
 ;
XIT ;
 K ^TMP($J)
 D EN^XBVK("BGP") S:$D(ZTQUEUED) ZTREQ="@"
 K DIRUT,DUOUT,DIR,DOD
 K DIADD,DLAYGO
 D KILL^AUPNPAT
 K X,X1,X2,X3,X4,X5,X6
 K A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,V,W,X,Y,Z
 K N,N1,N2,N3,N4,N5,N6
 K BD,ED
 D KILL^AUPNPAT
 D ^XBFMK
 L -^BGPDATA
 Q
DI ;
 S X=0 F  S X=$O(^BGPINDGC("ADM",1,X)) Q:X'=+X  S BGPIND($P(^BGPINDGC(X,0),U,1))=""
 Q
CI ;
 S X=0 F  S X=$O(^BGPINDGC("ACARD",1,X)) Q:X'=+X  S BGPIND($P(^BGPINDGC(X,0),U,1))=""
 Q
WI ;
 S X=0 F  S X=$O(^BGPINDGC("AWH",1,X)) Q:X'=+X  S BGPIND($P(^BGPINDGC(X,0),U,1))=""
 Q
EI ;
 S X=0 F  S X=$O(^BGPINDGC("AEL",1,X)) Q:X'=+X  S BGPIND($P(^BGPINDGC(X,0),U,1))=""
 Q
 ;
ENDLOG ;-- UPDATE LOG AT END
 S DIE="^BGPGUIG(",DA=BGPGIEN,DR=".04////"_$$NOW^XLFDT_";.06///C"
 D ^DIE
 K DIE,DR,DA
 Q
