AMQQ33P1 ; IHS/CMI/THL - CODE TO IMPLEMENT ENTRY MODIFICATIONS ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;-----
 D ^XBKVAR
 S DA=202
 S DIE="^AMQQ(1,"
 S DR="11////S AMQT(|20|)=0 S:$D(^AUPNVIMM(AMQP(202),0)) %=$P(^(0),U,6),%=%*1,AMQT(|20|)=(%|10|""|12|""),AMQP(|6|)=% |30|"
 D ^DIE
 K DIE,DA,DR
 S DA=201
 S DIE="^AMQQ(1,"
 S DR="11////S AMQT(|20|)=0 S:$D(^AUPNVIMM(AMQP(201),0)) %=$P(^(0),U,7),%=%*1,AMQT(|20|)=(%|10|""|12|""),AMQP(|6|)=% |30|"
 D ^DIE
 K DIE,DA,DR
 S DA=33
 S DIE="^AMQQ(1,"
 S DR="30////I '+$G(^DPT(AMQP(0),.35)) S AMQT(|20|)=1,AMQP(|6|)="""" |30|;31////S AMQP(|6|)="""",AMQT(|20|)=1 S:+$G(^DPT(AMQP(0),.35)) AMQP(|5|)=+^(.35) |30|"
 D ^DIE
 K DIE,DA,DR
 S DA=147
 S DIE="^AMQQ(1,"
 S DR="10////S AMQP(.1)=""+"" F  Q:AMQP(.1)=99999999999  S AMQP(.1)=$O(^DPT(""B"",AMQP(.1))) Q:AMQP(.1)=""  F AMQP(0)=0:0 S AMQP(0)=$O(^DPT(""B"",AMQP(.1),AMQP(0))) Q:'AMQP(0)  I $D(^(AMQP(0)))=1,^(AMQP(0))="""" S AMQT(|20|)=1 |30|"
 D ^DIE
 K DIE,DA,DR
 S DA=3
 S DIE="^AMQQ(1,"
 S DR="10////S AMQP(.1)=""+"",AMQP(.11)=""|10|"",AMQP(.101)=""|11|"",AMQP(.111)=""|||||"" D START^AMQQFAN S AMQT(|20|)=1 |30|"
 D ^DIE
 K DIE,DA,DR
 S DA(1)=271
 S DA=2
 S DIK="^AMQQ(5,271,1,"
 D ^DIK
 K DIK,DA
 S DA(1)=290
 S DIC="^AMQQ(5,290,1,"
 S DIC(0)="FML"
 S X="CONTRAINDICATED"
 S DIADD=1
 D ^DIC
 K DIC,DA,DR,DIADD
 S DA(1)=291
 S DIC="^AMQQ(5,291,1,"
 S DIC(0)="FML"
 S X="REACTION"
 S DIADD=1
 D ^DIC
 K DIC,DA,DR,DIADD
 S DA=223
 S DIE="^AMQQ(5,"
 S DR="14////SERVICE CATEGORY"
 D ^DIE
 K DIE,DA,DR
 S DA(1)=223
 S DA=1
 S DIE="^AMQQ(5,223,1,"
 S DR=".01///SERVICE CATEGORY"
 D ^DIE
 K DIE,DA,DR
 S DA(1)=223
 S DA=1
 S DIE="^AMQQ(5,223,1,"
 S DR=".01///SERVICE CATEGORY"
 D ^DIE
 K DIE,DA,DR
 W !,"Please wait, this may take a while ."
 S DIK="^AUPNPAT("
 S DIK(1)="1110^AQ1"
 D ENALL^DIK
 K DIK,DA
 W !,*7,"Done!"
 Q
