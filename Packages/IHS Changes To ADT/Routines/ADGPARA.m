ADGPARA ; IHS/ADC/PDW/ENM - ADT PARAMETER SETUP ; [ 03/25/1999  11:48 AM ]
 ;;5.0;ADMISSION/DISCHARGE/TRANSFER;;MAR 25, 1999
 ;;MAS VERSION 5.0;
 ;
 I '$D(^DG(43,1)) D  Q:'$D(^DG(43,1))
 . S (DIC,DLAYGO)=43,DIC(0)="L",X=1 D ^DIC
 ;
 L +^DG(43,1):3 I '$T D  Q
 . W !,*7,"SOMEONE ELSE IS UPDATING THESE PARAMETERS; TRY AGAIN LATER"
 S DIE=43,DA=1,DR="[ADGPARA]" D ^DIE L -^DG(43,1)
Q K DLAYGO,DIC,DIE,X,DR,DA,Y Q