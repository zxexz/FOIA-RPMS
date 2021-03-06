TIUPS112 ; SLC/JER - Post-Install for TIU*1*112 ; 02/04/2004
 ;;1.0;Text Integration Utilities;**112**;Jun 20, 1997
MAIN ; Control subroutine
 N DA,TIUDA,TIUFPRIV,TIUFWHO,TIULUV,TEXT
 S TIUFPRIV=1,TIUFWHO="N"
 ; Find REMINDER EXCHANGE file Entry
 S TIULUV(1)="TIU*1*112 20040325"
 S TIULUV(2)="03/25/2004@14:20:47"
 S TIUDA=+$$FIND1^DIC(811.8,"","KU",.TIULUV)
 I TIUDA=0 D  Q
 . S TEXT=" Couldn't find Exchange File for SURGICAL REPORTS..."
 . D BMES^XPDUTL(TEXT)
 S TEXT=" Installing Document Definitions for SURGICAL REPORTS..."
 D BMES^XPDUTL(TEXT)
 D POSTKIDS^PXRMEXU5(TIUDA)
 D INSTALL^PXRMEXSI(TIUDA)
 ; Attach the new SURGICAL REPORTS Class to CLINICAL DOCUMENTS
 S TIUDA=+$$CLASS("SURGICAL REPORTS")
 I 'TIUDA D  Q
 . D BMES^XPDUTL(" Unable to attach SURGICAL REPORTS to Root Class...")
 D ADDITEM(TIUDA)
 S TEXT=" Registering RPCs for SURGICAL REPORTS..."
 D BMES^XPDUTL(TEXT)
 D REG
 Q
CLASS(TIUDNM) ; Find the class
 N TIUY,POP S (POP,TIUY)=0
 F  S TIUY=$O(^TIU(8925.1,"B",TIUDNM,TIUY)) Q:+TIUY'>0  D  Q:POP
 . I $P($G(^TIU(8925.1,+TIUY,0)),U,4)="CL" S POP=1
 Q TIUY
ADDITEM(TIUDA) ; Add SURGICAL REPORTS to CLINICAL DOCUMENTS
 N D,D0,DI,DIY,DQ,DA,DIC,DLAYGO,DIE,DR,I,TIUI,TIUFPRIV,X,Y,XQORM
 S TIUFPRIV=1
 S DIC="^TIU(8925.1,38,10,",DLAYGO=8925.14,DIC(0)="LNX"
 S X="`"_TIUDA,DA(1)=38
 D ^DIC Q:+Y'>0
 S TIUI=$P(^TIU(8925.1,38,10,0),U,4)
 S DA(1)=38,DA=+Y,DIE=DIC
 S DR="4////Surgical Reports"
 D ^DIE
 ; Serialize menu items
 S (DA,TIUI)=0
 F  S DA=$O(^TIU(8925.1,38,10,DA)) Q:+DA'>0  D
 . S TIUI=TIUI+1,DR="2////^S X=TIUI;3////^S X=TIUI" D ^DIE
 ; Re-compile menu
 K ^XUTL("XQORM","38;TIU(8925.1,")
 S XQORM="38;TIU(8925.1,",XQORM(0)="" D ^XQORM
 Q
 ;
REG ; Register RPCs
 N MENU,RPC
 S MENU="OR CPRS GUI CHART"
 F RPC="TIU GET DOCUMENTS FOR REQUEST","TIU IDENTIFY SURGERY CLASS","TIU IS THIS A SURGERY?","TIU LONG LIST SURGERY TITLES" D INSERT(MENU,RPC)
 Q
 ;
INSERT(OPTION,RPC) ; Call FM Updater with each RPC
 ; Input  -- OPTION   Option file (#19) Name field (#.01)
 ;           RPC      RPC sub-file (#19.05) RPC field (#.01)
 ; Output -- None
 N FDA,FDAIEN,ERR,DIERR
 S FDA(19,"?1,",.01)=OPTION
 S FDA(19.05,"?+2,?1,",.01)=RPC
 D UPDATE^DIE("E","FDA","FDAIEN","ERR")
 Q
