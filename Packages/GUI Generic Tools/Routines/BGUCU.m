BGUCU ; IHS/OIT/MJL - CLEAN UP BGU TRACE ENTRIES ;
 ;;1.5;BGU;;MAY 26, 2005
TSK ;
 S U="^",DIK="^BGUTRACE(",BGUSP=$G(^BGUSP(1,0)),BGUNDTK=$P(BGUSP,U,7)\1 D NOW^%DTC S X1=X,X2=-(BGUNDTK) D C^%DTC S BGUTDJ=X
 S BGUENT=0 F  S BGUENT=$O(^BGUTRACE(BGUENT)) Q:'BGUENT  S BGUDJ=$P(^BGUTRACE(BGUENT,0),U,4) I BGUTDJ>BGUDJ S DA=BGUENT D ^DIK
 K BGUDJ,BGUENT,BGUNDTK,BGUSP,BGUTDJ,DA,DIK,X,X1,X2
 Q