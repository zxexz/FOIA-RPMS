ADGSVSET ; IHS/ADC/PDW/ENM - SETUP TREATING SPECIALTIES ; [ 03/25/1999  11:48 AM ]
 ;;5.0;ADMISSION/DISCHARGE/TRANSFER;;MAR 25, 1999
 ;;MAS VERSION 5.0;
 ;
EN W !! S DGLAYGO=45.7,DIC="^DIC(45.7,",DIC(0)="AEQMZL" D ^DIC
 G Q:Y'>0 S DA=+Y
 S DIE=DIC,DR="[ADG TREAT SETUP]" D ^DIE G EN
 ;
Q K DLAYGO,DIC,DIE,DR,DA,Y,X Q
