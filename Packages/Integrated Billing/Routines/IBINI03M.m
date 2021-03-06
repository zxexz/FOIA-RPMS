IBINI03M	; ; 21-MAR-1994
	;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
	Q:'DIFQ(354)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^DIC(354,0,"GL")
	;;=^IBA(354,
	;;^DIC("B","BILLING PATIENT",354)
	;;=
	;;^DIC(354,"%D",0)
	;;=^^21^21^2940307^^^^
	;;^DIC(354,"%D",1,0)
	;;=DO NOT EDIT THIS FILE.
	;;^DIC(354,"%D",2,0)
	;;= 
	;;^DIC(354,"%D",3,0)
	;;=Under normal operation it is not necessary to edit the fields in this
	;;^DIC(354,"%D",4,0)
	;;=file directly.  The option Manually Change Copay Exemption (Hardships) can
	;;^DIC(354,"%D",5,0)
	;;=be used to update and correct this entry by creating a new exemption.
	;;^DIC(354,"%D",6,0)
	;;=If many patient records have problems the option Print/Verify Patient
	;;^DIC(354,"%D",7,0)
	;;=Exemption Status can be used to correct the entries.
	;;^DIC(354,"%D",8,0)
	;;= 
	;;^DIC(354,"%D",9,0)
	;;=The data in this file is updated each time a new (current) exemption
	;;^DIC(354,"%D",10,0)
	;;=is created for a patient.  Exemptions are automatically created when
	;;^DIC(354,"%D",11,0)
	;;=changes in patient information change the exemption status or when
	;;^DIC(354,"%D",12,0)
	;;=an expired (older than 1 year) exemption is encountered when determining
	;;^DIC(354,"%D",13,0)
	;;=the exemption status for pharmacy.
	;;^DIC(354,"%D",14,0)
	;;= 
	;;^DIC(354,"%D",15,0)
	;;=This file will contain specific information related to billing about
	;;^DIC(354,"%D",16,0)
	;;=individual patients.  Current Status of the Medication Copayment Exemption
	;;^DIC(354,"%D",17,0)
	;;=will be kept in this file.  Conceptually this is different than the
	;;^DIC(354,"%D",18,0)
	;;=BILLING EXEMPTIONS File which maintains the audit log and historical data
	;;^DIC(354,"%D",19,0)
	;;=related to billing exemptions.
	;;^DIC(354,"%D",20,0)
	;;= 
	;;^DIC(354,"%D",21,0)
	;;=Per VHA Directive 10-93-142, this file definition should not be modified.
	;;^DD(354,0)
	;;=FIELD^^.05^4
	;;^DD(354,0,"DDA")
	;;=N
	;;^DD(354,0,"DT")
	;;=2930210
	;;^DD(354,0,"ID",.04)
	;;=W "   ",@("$P($P($C(59)_$S($D(^DD(354,.04,0)):$P(^(0),U,3),1:0)_$E("_DIC_"Y,0),0),$C(59)_$P(^(0),U,4)_"":"",2),$C(59),1)")
	;;^DD(354,0,"ID",.05)
	;;=S %I=Y,Y=$S('$D(^(0)):"",$D(^IBE(354.2,+$P(^(0),U,5),0))#2:$P(^(0),U,1),1:""),C=$P(^DD(354.2,.01,0),U,2) D Y^DIQ:Y]"" W "   ",Y,@("$E("_DIC_"%I,0),0)") S Y=%I K %I
	;;^DD(354,0,"IX","AC",354,.05)
	;;=
	;;^DD(354,0,"IX","AD",354,.03)
	;;=
	;;^DD(354,0,"IX","AEX",354,.04)
	;;=
	;;^DD(354,0,"IX","B",354,.01)
	;;=
	;;^DD(354,0,"NM","BILLING PATIENT")
	;;=
	;;^DD(354,0,"PT",354.1,.02)
	;;=
	;;^DD(354,.01,0)
	;;=PATIENT NAME^RP2'X^DPT(^0;1^S DINUM=X
	;;^DD(354,.01,1,0)
	;;=^.1
	;;^DD(354,.01,1,1,0)
	;;=354^B
	;;^DD(354,.01,1,1,1)
	;;=S ^IBA(354,"B",$E(X,1,30),DA)=""
	;;^DD(354,.01,1,1,2)
	;;=K ^IBA(354,"B",$E(X,1,30),DA)
	;;^DD(354,.01,3)
	;;=Enter the name of the patient as it appears in the patient file or enter the SSN or last four.
	;;^DD(354,.01,21,0)
	;;=^^1^1^2930121^^
	;;^DD(354,.01,21,1,0)
	;;=This is the name of the patient as it appears in the patient file.
	;;^DD(354,.01,23,0)
	;;=^^2^2^2930121^^
	;;^DD(354,.01,23,1,0)
	;;=This field is the pointer to the PATIENT file.  It will use the same
	;;^DD(354,.01,23,2,0)
	;;=internal entry number in this file as in the PATIENT file.
	;;^DD(354,.01,"DEL",1,0)
	;;=I 1 W !,"Deleting entries not allowed"
	;;^DD(354,.01,"DT")
	;;=2930121
	;;^DD(354,.03,0)
	;;=COPAY EXEMPTION STATUS DATE^RDX^^0;3^S %DT="EX" D ^%DT S X=Y K:Y<1 X K:X'=$P(^IBA(354,DA,0),U,3) X
	;;^DD(354,.03,.1)
	;;=CURRENT RX COPAY INCOME EXEMPTION STATUS DATE
	;;^DD(354,.03,1,0)
	;;=^.1
	;;^DD(354,.03,1,1,0)
	;;=354^AD
	;;^DD(354,.03,1,1,1)
	;;=S ^IBA(354,"AD",$E(X,1,30),DA)=""
	;;^DD(354,.03,1,1,2)
	;;=K ^IBA(354,"AD",$E(X,1,30),DA)
