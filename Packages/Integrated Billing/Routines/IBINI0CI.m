IBINI0CI	; ; 21-MAR-1994
	;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
	F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,"DIBT",802,2,2,"F")
	;;=2930505.99999^T
	;;^UTILITY(U,$J,"DIBT",802,2,2,"IX")
	;;=^IBE(354.3,"B",^IBE(354.3,^2
	;;^UTILITY(U,$J,"DIBT",802,2,2,"T")
	;;=2930506.9999^T
	;;^UTILITY(U,$J,"DIBT",803,0)
	;;=IB BILLING PATIENT BY STATUS^2930324.0819^@^354^1453^@^2930421
	;;^UTILITY(U,$J,"DIBT",803,2,1)
	;;=354^.04^COPAY INCOME EXEMPTION STATUS^@+^
	;;^UTILITY(U,$J,"DIBT",803,2,1,"ASK")
	;;=
	;;^UTILITY(U,$J,"DIBT",803,2,1,"F")
	;;=@z^A
	;;^UTILITY(U,$J,"DIBT",803,2,1,"IX")
	;;=^IBA(354,"AEX",^IBA(354,^2
	;;^UTILITY(U,$J,"DIBT",803,2,1,"T")
	;;=Z^Z
	;;^UTILITY(U,$J,"DIBT",803,2,2)
	;;=354^.03^COPAY EXEMPTION STATUS DATE^'@^
	;;^UTILITY(U,$J,"DIBT",803,2,2,"ASK")
	;;=
	;;^UTILITY(U,$J,"DIBT",803,2,2,"F")
	;;=2900628.99999^T-999
	;;^UTILITY(U,$J,"DIBT",803,2,2,"IX")
	;;=^IBA(354,"AD",^IBA(354,^2
	;;^UTILITY(U,$J,"DIBT",803,2,2,"T")
	;;=2930324.9999^T
	;;^UTILITY(U,$J,"DIBT",803,2,3)
	;;=354^^PATIENT NAME^@".01^
	;;^UTILITY(U,$J,"DIBT",803,2,3,"ASK")
	;;=
	;;^UTILITY(U,$J,"DIBT",803,2,3,"CM")
	;;=S X(3)=$P($G(^DPT(+D0,0)),U)
	;;^UTILITY(U,$J,"DIBT",803,2,3,"F")
	;;=@z^A
	;;^UTILITY(U,$J,"DIBT",803,2,3,"T")
	;;=Z^Z
	;;^UTILITY(U,$J,"DIBT",804,0)
	;;=IB BILLING PATIENT BY REASON^2930324.0857^@^354^1453^@^2930507
	;;^UTILITY(U,$J,"DIBT",804,2,1)
	;;=354^^COPAY EXEMPTION REASON^@+".05^
	;;^UTILITY(U,$J,"DIBT",804,2,1,"ASK")
	;;=
	;;^UTILITY(U,$J,"DIBT",804,2,1,"CM")
	;;=S Y(1)=$S($D(^IBA(354,D0,0)):^(0),1:"") S X=$S('$D(^IBE(354.2,+$P(Y(1),U,5),0)):"",1:$P(^(0),U,1)) I D0>0 S X(1)=X
	;;^UTILITY(U,$J,"DIBT",804,2,1,"F")
	;;=@z^A
	;;^UTILITY(U,$J,"DIBT",804,2,1,"T")
	;;=ZZZZ^ZZZZ
	;;^UTILITY(U,$J,"DIBT",804,2,2)
	;;=354^.03^COPAY EXEMPTION STATUS DATE^'@^
	;;^UTILITY(U,$J,"DIBT",804,2,2,"ASK")
	;;=
	;;^UTILITY(U,$J,"DIBT",804,2,2,"F")
	;;=2920323.99999^T-365
	;;^UTILITY(U,$J,"DIBT",804,2,2,"IX")
	;;=^IBA(354,"AD",^IBA(354,^2
	;;^UTILITY(U,$J,"DIBT",804,2,2,"T")
	;;=2930324.9999^T
	;;^UTILITY(U,$J,"DIBT",804,2,3)
	;;=354^^PATIENT NAME^@".01^
	;;^UTILITY(U,$J,"DIBT",804,2,3,"ASK")
	;;=
	;;^UTILITY(U,$J,"DIBT",804,2,3,"CM")
	;;=S X(3)=$P($G(^DPT(+D0,0)),U)
	;;^UTILITY(U,$J,"DIBT",804,2,3,"F")
	;;=@z^A
	;;^UTILITY(U,$J,"DIBT",804,2,3,"T")
	;;=ZZZZ^ZZZZ
	;;^UTILITY(U,$J,"DIBT",819,0)
	;;=IB BILLING PAT W/INCOME^2930408.1559^@^354^1453^@^2930427
	;;^UTILITY(U,$J,"DIBT",819,2,1)
	;;=354^^COPAY EXEMPTION REASON^@+".05^
	;;^UTILITY(U,$J,"DIBT",819,2,1,"CM")
	;;=S Y(1)=$S($D(^IBA(354,D0,0)):^(0),1:"") S X=$S('$D(^IBE(354.2,+$P(Y(1),U,5),0)):"",1:$P(^(0),U,1)) I D0>0 S X(1)=X
	;;^UTILITY(U,$J,"DIBT",819,2,1,"F")
	;;=NO INCOME DAT@z^NO INCOME DATA
	;;^UTILITY(U,$J,"DIBT",819,2,1,"T")
	;;=NO INCOME DATA^NO INCOME DATA
	;;^UTILITY(U,$J,"DIBT",819,2,2)
	;;=354^.03^COPAY EXEMPTION STATUS DATE^'@^
	;;^UTILITY(U,$J,"DIBT",819,2,2,"ASK")
	;;=
	;;^UTILITY(U,$J,"DIBT",819,2,2,"F")
	;;=2930406.99999^T-1
	;;^UTILITY(U,$J,"DIBT",819,2,2,"IX")
	;;=^IBA(354,"AD",^IBA(354,^2
	;;^UTILITY(U,$J,"DIBT",819,2,2,"T")
	;;=2930408.9999^T
	;;^UTILITY(U,$J,"DIBT",819,2,3)
	;;=354^^PATIENT NAME^@".01^
	;;^UTILITY(U,$J,"DIBT",819,2,3,"ASK")
	;;=
	;;^UTILITY(U,$J,"DIBT",819,2,3,"CM")
	;;=S Y(1)=$S($D(^IBA(354,D0,0)):^(0),1:"") S X=$S('$D(^DPT(+$P(Y(1),U,1),0)):"",1:$P(^(0),U,1)) I D0>0 S X(3)=X
	;;^UTILITY(U,$J,"DIBT",819,2,3,"F")
	;;=@z^A
	;;^UTILITY(U,$J,"DIBT",819,2,3,"T")
	;;=Z^Z
	;;^UTILITY(U,$J,"DIBT",820,0)
	;;=IB EXEMPT PATIENTS^2930423.1557^@^354^0^@^2930510
	;;^UTILITY(U,$J,"DIBT",820,2,1)
	;;=354^.04^COPAY INCOME EXEMPTION STATUS^@+^
	;;^UTILITY(U,$J,"DIBT",820,2,1,"F")
	;;=.99999^1
	;;^UTILITY(U,$J,"DIBT",820,2,1,"IX")
	;;=^IBA(354,"AEX",^IBA(354,^2