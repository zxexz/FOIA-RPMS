BPXRMAS1 ; IHS/CIA/MGH - Handle measurement findings. ;01-Sep-2011 15:09;DU
 ;;1.5;CLINICAL REMINDERS;**1008**;Jun 19, 2000;Build 25
 ;COPY OF PXRMMEAS using IHS V Asthma file
 ;
 ;=======================================================================
EVALFI(DFN,FIEVAL) ;EP Evaluate vitals/measurement findings.
 ;Use the most recent measurement.
 N FIND0,FIND3,FINDING,MTYPE,ASABB,ASNAME,ASIEN
 S MTYPE=""
 F  S MTYPE=$O(^PXD(811.9,PXRMITEM,20,"E","APCDACV(",MTYPE)) Q:+MTYPE=0  D
 . S FINDING=""
 . F  S FINDING=$O(^PXD(811.9,PXRMITEM,20,"E","APCDACV(",MTYPE,FINDING)) Q:+FINDING=0  D
 .. S FIND0=^PXD(811.9,PXRMITEM,20,FINDING,0)
 .. S ASIEN=$P(FIND0,";",1)
 .. S ASABB=$P($G(^APCDACV(ASIEN,0)),U,2),ASNAME=$P($G(^APCDACV(ASIEN,0)),U,1)
 .. S FIND3=$G(^PXD(811.9,PXRMITEM,20,FINDING,3))
 .. D FIEVAL(DFN,MTYPE,ASABB,ASNAME,FIND0,FIND3,"","",FINDING,.FIEVAL)
 Q
 ;
 ;=======================================================================
EVALTERM(DFN,FINDING,TERMIEN,TFIEVAL) ;EP Evaluate vitals/measurement terms.
 ;Use the most recent measurement.
 N FIND0,FIND3,MTYPE,TFIND0,TFIND3,TFINDING,ASIEN,ASABB,ASNAME
 S FIND0=^PXD(811.9,PXRMITEM,20,FINDING,0)
 S FIND3=$G(^PXD(811.9,PXRMITEM,20,FINDING,3))
 S MTYPE=""
 F  S MTYPE=$O(^PXRMD(811.5,TERMIEN,20,"E","APCDACV(",MTYPE)) Q:+MTYPE=0  D
 . S TFINDING=""
 . F  S TFINDING=$O(^PXRMD(811.5,TERMIEN,20,"E","APCDACV(",MTYPE,TFINDING)) Q:+TFINDING=0  D
 .. S TFIND0=^PXRMD(811.5,TERMIEN,20,TFINDING,0)
 .. S ASIEN=$P(TFIND0,";",1)
 .. S ASABB=$P($G(^APCDACV(ASIEN,0)),U,2),ASNAME=$P($G(^APCDACV(ASIEN,0)),U,1)
 .. S TFIND3=$G(^PXRMD(811.5,TERMIEN,20,TFINDING,3))
 .. D FIEVAL(DFN,MTYPE,ASABB,ASNAME,FIND0,FIND3,TFIND0,TFIND3,TFINDING,.TFIEVAL)
 Q
 ;
 ;=======================================================================
FIEVAL(DFN,MTYPE,ASABB,ASNAME,FIND0,FIND3,TFIND0,TFIND3,FINDING,FIEVAL) ;
 ;Use the most recent measurement.
 N VALID,CONVAL,TEMP,RSLT,VIEN,DATE,ERR,GMRVSTR,IC,IEN,INVDATE,FOUND
 S FIEVAL(FINDING)=0
 S FOUND=0
 S INVDATE="" F  S INVDATE=$O(^AUPNVAST("AA",DFN,INVDATE)) Q:'+INVDATE!(+FOUND)  D
 .S IEN="" F  S IEN=$O(^AUPNVAST("AA",DFN,INVDATE,IEN)) Q:'+IEN!(+FOUND)  D
 ..S TEMP=$G(^AUPNVAST(IEN,0))
 ..S RSLT=$P(TEMP,U,14)
 ..Q:RSLT=""
 ..I RSLT=ASABB D
 ...S FOUND=1
 ...S VIEN=$P(TEMP,U,3)
 ...S DATE=$P($G(^AUPNVAST(IEN,12)),U,1)    ;Get date entered
 ...I DATE="" S DATE=$$VDATE^PXRMDATE(VIEN) ;else get visit date
 ...;Save the rest of the finding information.
 ...S FIEVAL(FINDING)=1
 ...S FIEVAL(FINDING,"DATE")=DATE
 ...S FIEVAL(FINDING,"FINDING")=MTYPE_";APCDACV(,"
 ...S FIEVAL(FINDING,"SOURCE")=IEN_";AUPNVAST(,"
 ...S FIEVAL(FINDING,"VALUE")=ASNAME
 ...S FIEVAL(FINDING,"VIEN")=VIEN
 ...;If this is being called as part of a term evaluation we are done.
 ...I TFIND0'="" Q
 ...;Determine if the finding has expired.
 ...S VALID=$$VALID^PXRMDATE(FIND0,TFIND0,DATE)
 ...I 'VALID D  Q
 .... S FIEVAL(FINDING)=0
 .... S FIEVAL(FINDING,"EXPIRED")=""
 ...;If there is a condition for this finding evaluate it.
 ...S CONVAL=$$COND^PXRMUTIL(FIND3,TFIND3,RSLT)
 ...I CONVAL'="" D
 ....I CONVAL D
 .....S FIEVAL(FINDING)=CONVAL
 .....S FIEVAL(FINDING,"CONDITION")=CONVAL
 ....E  D
 .....K FIEVAL(FINDING)
 .....S FIEVAL(FINDING)=0
 Q
 ;
 ;=======================================================================
OUTPUT(NLINES,TEXT,FINDING,FIEVAL) ;Produce the clinical
 ;maintenance output.
 N DATA,DATE,EM,FIEN,MNAME,MTYPE,RATE,TEMP
 S FIEN=$P(FIEVAL(FINDING,"FINDING"),";",1)
 S DATE=FIEVAL(FINDING,"DATE")
 S RATE=$G(FIEVAL(FINDING,"VALUE"))
 S TEMP=$$EDATE^PXRMDATE(DATE)
 S TEMP=TEMP_" Asthma: "
 S MTYPE=$P(FIEVAL(FINDING,"FINDING"),";",1)
 S MNAME=$$GET1^DIQ(9999999.07,MTYPE,.01,"","","","ERR")
 S TEMP=TEMP_MNAME
 ;If the finding has expired add "EXPIRED"
 I $D(FIEVAL(FINDING,"EXPIRED")) S TEMP=TEMP_" - EXPIRED"
 ;If the finding is false because of the value add the reason.
 I $G(FIEVAL(FINDING,"CONDITION"))=0 S TEMP=TEMP_$$ACTFT^PXRMOPT
 S NLINES=NLINES+1
 S TEXT(NLINES)=TEMP
 I $D(PXRMDEV) D
 . N UID
 . S UID="MEAS "_MNAME
 . S ^TMP(PXRMPID,$J,PXRMITEM,UID)=TEMP
 Q
 ;