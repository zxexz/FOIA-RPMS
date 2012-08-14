ACMGTP1 ; IHS/TUCSON/TMJ - LOOKUP AND EDIT OF CMS REGISTER - CONTINUED ; [ 01/14/2009  11:28 AM ]
 ;;2.0;ACM CASE MANAGEMENT SYSTEM;*6,8*;JAN 10, 1996
 ;PATCH #6 - DISPLAYS REGISTER CREATOR NAME
 ;LOOKUP AND EDIT REGISTERS CONTINUED
 ;EP;INTERNAL ENTRY POINT: ACMGTP
SECMSG ;EP;ENTRY POINT FROM ACMGTP
 ;SECOND LEVEL SECURITY MESSAGE ON REGISTER MODIFICATION
 S ACMRDEV=$P($G(^ACM(41.1,ACMRG,4)),U) ;IHS/CMI/TMJ PATCH #6
 I ACMRDEV'="" S ACMRDEV=$P($G(^VA(200,ACMRDEV,0)),U)
 W !!,$C(7),$C(7),?20,"You are NOT the Creator of this Register",!,?15,"Therefore, you cannot Modify the Register Components!",!
 I DUZ'=$P($G(^ACM(41.1,ACMRG,4)),U) W !,"Contact the Register Developer- "_ACMRDEV_" -for more information.",!!
 Q
 ;
NAMEREX ;EP;ENTRY POINT FROM ACMGTP
 ;REINDEX OF CMS REGISTER FILE (NAME OF REGISTER FLD) ON NAME CHANGE
 ;
 W !!,?8,"You have changed the name of this Register - I will Reindex all Records!",!! H 5
 S DIK="^ACM(41,",DIK(1)=".01" D ENALL^DIK
 Q