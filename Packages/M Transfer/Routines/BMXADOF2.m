BMXADOF2 ; IHS/CIHA/GIS - RPC CALL FOR EXTENDED FUNCTIONALITY OF BMXNet UTILITIES ;
 ;;4.0;BMX;;JUN 28, 2010
 ; THIS ROUTINE CONTAINS SPECIAL ENTRY POINTS FOR UPDATING RPMS
 ; 
 ; 
 ; 
VVAR(DATA) ; EP-CHECK SPECIAL VARIABLES REQUIRED FOR UPDATING THE VISIT FILE
 I '$L(DATA) S OUT="Update cancelled.  Missing data string" Q 0
 N X,I,Y,VDATE,%DT
 K AUPNPAT,AUPNDOB,AUPNDOD,AUPNVSIT ; THE VARS ARE NOT NEW'D SINCE THEY WILL BE USED BY THE CALLING ROUTINE
 S AUPNTALK=1,AUPNOVRR=1
 S X=DATA S X=$TR(X,($C(30)_"+"),$C(30)) S X=$TR(X,($C(30)_"-"),$C(30)) S X=$TR(X,($C(30)_"`"),$C(30)) S DATA=X ; STRIP OFF TRANSACTION FLAGS FROM FIELD NUMBERS
 S X=$P(DATA,"|",2),X=$P(X,$C(30)),VDATE=-1
 I $E(X,1,7)?7N S VDATE=X
 E  S %DT="T" D ^%DT S VDATE=Y
 I VDATE=-1 S OUT="Update cancelled. Visit timestamp misssing/invalid" Q 0
 S Y=+$P(DATA,($C(30)_".05|"),2) I 'Y S OUT="Update cancelled. Patient data missing" Q 0 ; FAILED TO FIND THE PATIENT IEN
 S AUPNPAT=Y
 S AUPNDOB=$P($G(^DPT(AUPNPAT,0)),U,3) I 'AUPNDOB S OUT="Update cancelled. Missing DOB" Q 0
 I AUPNDOB>VDATE S OUT="Update cancelled.  Patient born afer visit date???" Q 0
 S AUPNDOD=$P($G(^DPT(AUPNPAT,.35)),U)
 I AUPNDOD,AUPNDOD<VDATE S OUT="Update cancelled. Patient died before this visit date" Q
 Q 1
 ; 
NARR() ;EP - GET IEN OF PROVIDER NARR & UPDATE DATA STG FOR PROBLEM FILE
 N PCE,NARR,NIEN,IPCE,%,I,NN,DIC,X,Y,FLD,FIEN
 S PCE=0,FIEN=+SCHEMA,NIEN=""
 F I=3:1:$L(SCHEMA,U) D  I PCE Q
 . S %=$P(SCHEMA,U,I)
 . S FLD=$P(%,"|",2)
 . I 'FLD Q
 . I $P($G(^DD(FIEN,FLD,0)),U,2)["P9999999.27" S PCE=I
 . Q
 I 'PCE Q ""
 S NARR=$P(DATA,U,PCE) I NARR="" Q ""
 S NIEN=$$XMATCH(NARR)
 I 'NIEN D  ; CREATE A NEW ENTRY IN THE PROVIDER NARRATIVE FILE
 . S DIC=9999999.27
 . S DIC(0)="L"
 . S X=""""_NARR_""""
 . D ^DIC I Y=-1 Q
 . S NIEN=+Y
 . Q
 I 'NIEN Q ""
 S $P(DATA,U,PCE)="`"_NIEN ; STUFF THE NARRATIVE LOOKUP VALUE INTO THE DATA STRING
 Q NIEN
 ;
XMATCH(NARR) ; IF THERE IS AN EXACT MATCH IN THE PROVIDER NARRATIVE FILE, RETURN THE IEN
 N IX,X,Y,%
 S IX=$E(NARR,1,30)
 S %=$O(^AUTNPOV("B",IX,0))
 I '% Q ""
 I %,'$O(^AUTNPOV("B",IX,%)) Q %
 S Y=""
 S %=0 F  S %=$O(^AUTNPOV("B",IX,%)) Q:'%  S X=$P($G(^AUTNPOV(%,0)),U) I X=NARR S Y=% Q
 Q Y
 ; 