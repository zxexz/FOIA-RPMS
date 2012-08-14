ADEPDDM ; IHS/HQT/MJL - DENTIST QUARTERLY REPORT ;07:02 PM  [ 03/24/1999   9:04 AM ]
 ;;6.0;ADE;;APRIL 1999
 ;
 N ADEREP,ADEDDS,ADEDATE,ADESER,ADEDNAM,ADEWK1,ADEWK2,ADEWK3,ADEHYG,ADEHNAM,DIR,ADEIOP,ADEU
 K DTOUT,DUOUT,DIRUT,DIROUT
 ;Put dentists and hygienists/therapists DFNs in ADEDDS and ADEHYG
 S ADEDDS=$$DDS^ADEPSUB1()
 S ADEHYG=$$HYG^ADEPSUB1()
 I 'ADEDDS D  G END
 . W !!,"There is no one classed as a DENTIST in the PROVIDER file!"
 ;GET DATE RANGE
 D QDATE^ADEPSUB G:$$HAT^ADEPQA() END
 ;
 ;GET AND LOCK UNIQUE SUBSCRIPT FOR THE REPORT GLOBAL
 S ADEU=$$ADEU^ADEPSUB()
 K ^TMP("ADEP",ADEU) ;^TMP is a transient report global
 S ^TMP("ADEP",ADEU)="RUNNING"
 ;
 D ASKDEV^ADEPSUB("ZTM^ADEPDDM","DENTAL QUARTERLY REPORT PROCESSING")
 I POP K ^TMP("ADEP",ADEU) G END
 ;FHL 9/9/98 I $D(ZTSK) G END
 I $D(ZTQUEUED) G END
 ;
ZTM ;EP - TASKMAN PROCESSING PHASE
 I $D(ZTQUEUED) L +^TMP("ADEP",ADEU):1 I '$T S ZTREQ="@" G END
 ;Get code series
 D DSERIES^ADEPSUB1
 ;$O THRU date xref (?) and HIT if visit assoc w/ hyg
 D ROLL
 D CALC3^ADEPSUB1
 G:$O(^TMP("ADEP",ADEU,0))="" END
 ;Call DIP to print array
 I $D(ZTQUEUED) D  G END
 . I $D(IOT),IOT'="HFS" D  Q
 . . S ZTREQ=$H_U_ADEIOP_U_"DENTIST QUARTERLY REPORT PRINTING"_U_"PRINT^ADEPDDM"
 . D PRINT Q
 I '$D(ZTQUEUED) D PRINT
 ;
END K DUOUT,DTOUT,DIROUT,DIRUT
 D END^ADEPSUB4
 Q
 ;
 ;------->SUBROUTINES
 ;
ROLL ;
 N ADEBEG,ADEND,ADEDFN
 S ADEBEG=$P(ADEDATE,U,2)-1,ADEND=$P(ADEDATE,U,3)
 F  S ADEBEG=$O(^ADEPCD("AC",ADEBEG)) Q:ADEBEG>ADEND  Q:'+ADEBEG  S ADEDFN=0 D
 . F  S ADEDFN=$O(^ADEPCD("AC",ADEBEG,ADEDFN)) Q:'ADEDFN  D DSCREEN^ADEPSUB3(ADEDFN,3)
 Q
 ;
PRINT ;EP - TASKMAN PRINT PHASE
 D PRINT^ADEPSUB("[ADEP-ADEPQTR]"," DENTIST QUARTERLY REPORT FOR PERIOD")
 Q