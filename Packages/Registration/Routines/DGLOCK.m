DGLOCK ;ALB/MRL - PATIENT FILE DATA EDIT CHECKS ; [ 09/13/2001  3:03 PM ]
 ;;5.3;Registration;**108,161,247**;Aug 13, 1993
 ;IHS/ANMC/LJF  7/13/2001 added Quit to TAD subroutine
 ;
EK ;EKey Rqrd
 I '$D(^XUSEC("DG ELIGIBILITY",DUZ)) W !?4,$C(7),"Eligibility Key required to edit this field." K X
 Q
EV ;EK rqrd if Elig Ver
 I '$D(^XUSEC("DG ELIGIBILITY",DUZ)),$D(^DPT(DFN,.361)) I $P(^(.361),U,1)="V" D EN^DDIOL("Eligibility verified...Eligibility Key required to edit this field.","","!?4") K X
 Q
SV ;EK Rqrd if Svc Rcrd Ver
 I "NU"'[$E(X) D VET Q:'$D(X)
SV1 I '$D(^XUSEC("DG ELIGIBILITY",DUZ)),$D(^DPT(DFN,.32)) I $P(^(.32),U,2)]"" D EN^DDIOL("Service Record verfied...Eligibility Key required to edit this field.","","!?4") K X
 Q
MV ;EK Rqrd if Money Ver
 I "NU"'[$E(X) D VET Q:'$D(X)
 I '$D(^XUSEC("DG ELIGIBILITY",DUZ)),$D(^DPT(DFN,.3)) I $P(^(.3),U,6)]"" W !?4,$C(7),"Monetary Benefits verified...Eligibility Key required to edit this field." K X
 Q
VET ;Veteran
 S DGVV=$S($D(^DPT(DFN,"TYPE")):^("TYPE"),1:""),DGVV=$S($D(^DG(391,+DGVV,0)):$P(^(0),"^",2),1:"")
 I $D(^DPT(DFN,"VET")),^("VET")'="Y",'DGVV D EN^DDIOL("Applicant is NOT a veteran!!","","!?4") K X
 K DGVV Q
VAGE ;Vet Age
 S DGDATA=X,X1=DT,X2=$S($D(DFN):$P(^DPT(DFN,0),U,3),1:DPTIDS(.03)) S X=$E(X1,1,3)-$E(X2,1,3)-($E(X1,4,7)<$E(X2,4,7))
 I X<17 W !?4,$C(7),"Applicant is TOO YOUNG to be a veteran...ONLY ",X," YEARS OLD!!",!?4,"See your supervisor if you require assistance." K X,X1,X2,DGDATA Q
 S X=DGDATA K X1,X2,DGDATA Q
AO ;Agent Orange
 D SV I $D(X),$S('$D(^DPT(DFN,.321)):1,$P(^(.321),U,2)'="Y":1,1:0) W !?4,$C(7),"Exposure to Agent Orange not indicated...NO EDITING!" K X
 Q
EC ;Environmental Contaminants
 D SV I $D(X),$S('$D(^DPT(DFN,.322)):1,$P(^(.322),U,13)'="Y":1,1:0) W !?4,$C(7),"Exposure to Environmental Contaminants not indicated...NO EDITING!" K X
 I $D(X) I X<2900802 K X W !?4,$C(7),"Date must be on or after 8/2/1992!"
 Q
COM ;Combat
 D SV I $D(X),$S('$D(^DPT(DFN,.52)):1,$P(^(.52),U,11)'="Y":1,1:0) W !?4,$C(7),"Service in Combat Zone not indicated...NO EDITING!" K X
 Q
INE ;Ineligible
 D EK I $D(X),$S('$D(^DPT(DFN,.15)):1,$P(^(.15),U,2)']"":1,1:0) W !?4,$C(7),"Requirement for 'Ineligible patient' data not indicated...NO EDITING!" K X
 Q
IR ;ION Rad
 D SV I $D(X),$S('$D(^DPT(DFN,.321)):1,$P(^(.321),U,3)'="Y":1,1:0) W !?4,$C(7),"Exposure to Ionizing Radiation is not indicated...NO EDITING!" K X
 Q
POW ;Prisoner of War
 D SV I $D(X),$S('$D(^DPT(DFN,.52)):1,$P(^(.52),U,5)'="Y":1,1:0) W !?5,$C(7),"Not identified as a former Prisoner of War...NO EDITING!" K X
 Q
SER1 ;NTL Svc
 D SV I $D(X),$S('$D(^DPT(DFN,.32)):1,$P(^(.32),U,19)'="Y":1,X="N":0,1:0) W !?4,$C(7),"Other Periods of Service are not indicated...NO EDITING!" K X
 Q
SER2 ;NNTL
 D SV I $D(X),$S('$D(^DPT(DFN,.32)):1,$P(^(.32),U,20)'="Y":1,X="N":0,1:0) W !?4,$C(7),"Third Period of Service is not indicated...NO EDITING!" K X
 Q
TAD ;Temp Add Edit
 Q  ;IHS/ANMC/LJF 7/13/2001 IHS needs to access temp phone number
 I $S('$D(^DPT(DFN,.121)):1,$P(^(.121),U,9)'="Y":1,1:0) W !?4,$C(7),"Requirement for Temporary Address data not indicated...NO EDITING!" K X
 Q
TADD ;Temp Address Delete?
 Q:'$D(^DPT(DFN,.121))  I $P(^(.121),"^",9)="N"!($P(^(.121),"^",1,6)="^^^^^") Q
ASK W !,"Do you want to delete all temporary address data" S %=2 D YN^DICN I %Y["?" W !,"Answer 'Y'es to remove temporary address information, 'N'o to leave data in file" G ASK
 Q:%'=1  S DGTEMPH=$P(^DPT(DFN,.121),"^",7,8),^(.121)="^^^^^^"_DGTEMPH_"^N^^" K DGTEMPH Q
VN ;Viet Svc
 D SV I $D(X),$S('$D(^DPT(DFN,.321)):1,$P(^(.321),U,1)'="Y":1,1:0) I "UN"'[$E(X) W !?4,$C(7),"Service in Republic of Vietnam not indicated...NO EDITING!" K X
 Q
SVED ;Lebanon, Grenada, Panama, Persian Gulf & Yugoslavia svc edit
 ;      (from and to dates)
 ;DGX = piece position of corresponding service indicated? field
 ;      for multiple serv indicated dgx=sv1^sv2^...
 ;DGSV= service (sv1, sv2 from above)
 ;DGOK= 1=YES,at least one of the required sv indicated is yes,0=NO
 D SV I '$D(X) K DGX Q
 N DGSV,DGOK,DGPC,PC
 S DGOK=0
 F PC=1:1 S DGSV=$P(DGX,U,PC) Q:DGSV']""  S:$P($G(^DPT(DFN,.322)),U,DGSV)="Y" DGOK=1
 S PC=PC-1
 I DGOK=0 D
 .I "UN"'[$E(X) D
 ..W !?4,$C(7),"Service in "
 ..F DGPC=1:1:PC D
 ...S DGSV=$P(DGX,U,DGPC) W $S(DGSV=1:"Lebanon",DGSV=4:"Grenada",DGSV=7:"Panama",DGSV=10:"Persian Gulf",DGSV=16:"Somalia",DGSV=19:"Yugoslavia",1:"")
 ...W:(DGPC<PC) " or "
 ..W " not indicated...NO EDITING!" K X
 K DGX
 Q