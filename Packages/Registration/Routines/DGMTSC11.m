DGMTSC11 ;ALB/RMO - Means Test Screen Marital Status/Dependent Cont. ; 25 JAN 92
 ;;5.3;Registration;**45**;Aug 13, 1993
 ;
EDT ;Edit dependent child data
 N DA,DGERR,DGFIN,DGINI,DGIRI,DIE,DR
 D GETIENS^DGMTU2(DFN,+DGPRI,DGMTDT) G EDTQ:DGERR
 S DA=DGIRI,DIE="^DGMT(408.22,",DR="[DGMT ENTER/EDIT DEPENDENTS]" D ^DIE
 S:'$D(DGFIN) DGFL=$S($D(DTOUT):-2,$D(DUOUT):-1,($D(Y))=10:-1,1:0)
EDTQ Q