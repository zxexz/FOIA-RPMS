BLRAPOST ;IHS/HQW/TPF-POST INSTALL FOR ELECTRONIC SIGNATURE PLUG IN [ 07/22/2002  10:59 AM ]
 ;;5.2;LR;**1013**;Jan 07, 2002
 ;
 D DEL      ;DELETE FIELDS
 D ACCESS   ;SET READ,WRITE,DELETE ACCESS
 ;
 ;AUTOMATICALLY ADD INSTALLER TO MAIL GROUP
 W !!,$$C^XBFUNC("The installer is automatically added to MAIL GROUP 'BLR APPLICATION PLUGIN WARNING'.")
 ;
 S MGIEN=$O(^XMB(3.8,"B","BLR APPLICATION PLUGIN WARNING",""))
 ;
 I 'MGIEN W !!,$$C^XBFUNC("The MAIL GROUP 'BLR APPLICATION PLUGIN WARNING' cannot be found! Please add the group to the MAIL GROUP file.") D END Q
 ;
 S ^XMB(3.8,MGIEN,1,0)="3.81P^1^1"
 S ^XMB(3.8,MGIEN,1,1,0)=DUZ
 S ^XMB(3.8,MGIEN,1,"B",DUZ,1)=""
 ;
 W !!,$$C^XBFUNC($P($G(^VA(200,DUZ,0)),U)_" has been added to the 'BLR APPLICATION PLUGIN WARNING' mail group...")
 W !!,$$C^XBFUNC("You can add more members later by editing the 'BLR APPLICATION PLUGIN WARNING' mail group...")
 W !!
END I $$DIR^XBDIR("E","Press RETURN...")
 Q
DEL ;DELETE 'GUI' FIELDS WHICH ARE NO LONGER USED PER MIKE LOUGHRAN
 S DIK="^DD(9009029,",DA(1)=9009029
 F DA=1101,1102,1103,1104 D
 .D ^DIK
 Q
 ;
 ;SET READ,WRITE,DELET ACCESS FOR BLRMASTER CONTROL FILE 
ACCESS ;
 S ^DD(9009029,.02,8)="Ll"
 S ^DD(9009029,.02,8.5)="Ll"
 S ^DD(9009029,.02,9)="Ll"
 S ^DD(9009029,.03,8)="Ll"
 S ^DD(9009029,.03,8.5)="Ll"
 S ^DD(9009029,.03,9)="Ll"
 S ^DD(9009029,.04,8)="Ll"
 S ^DD(9009029,.04,8.5)="Ll"
 S ^DD(9009029,.04,9)="Ll"
 S ^DD(9009029,.08,8)="Ll"
 S ^DD(9009029,.08,8.5)="Ll"
 S ^DD(9009029,.08,9)="Ll"
 S ^DD(9009029,.09,8)="Ll"
 S ^DD(9009029,.09,8.5)="Ll"
 S ^DD(9009029,.09,9)="Ll"
 S ^DD(9009029,2,8)="Ll"
 S ^DD(9009029,2,8.5)="Ll"
 S ^DD(9009029,2,9)="Ll"
 S ^DD(9009029,2101,8)="Ll"
 S ^DD(9009029,2101,9)="Ll"
 S ^DD(9009029.02101,.01,8)="Ll"
 S ^DD(9009029.02101,.01,8.5)="Ll"
 S ^DD(9009029.02101,.01,9)="Ll"
 S ^DD(9009029.02101,1,8)="Ll"
 S ^DD(9009029.02101,1,8.5)="Ll"
 S ^DD(9009029.02101,1,9)="Ll"
 S ^DD(9009029,1,8)="@"
 S ^DD(9009029,1,8.5)="@"
 S ^DD(9009029,1,9)="@"
 Q
