FHINI0N6	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	I DSEC F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^DIC(118.3,0,"RD")
	;;=#F
	;;^DIC(118.3,0,"WR")
	;;=#f
	;;^DIC(119,0,"AUDIT")
	;;=@
	;;^DIC(119,0,"DD")
	;;=#
	;;^DIC(119,0,"DEL")
	;;=#f
	;;^DIC(119,0,"LAYGO")
	;;=#f
	;;^DIC(119,0,"RD")
	;;=#F
	;;^DIC(119,0,"WR")
	;;=#f
	;;^DIC(119.1,0,"DD")
	;;=#
	;;^DIC(119.1,0,"DEL")
	;;=#f
	;;^DIC(119.1,0,"LAYGO")
	;;=#f
	;;^DIC(119.1,0,"RD")
	;;=#F
	;;^DIC(119.1,0,"WR")
	;;=#f
	;;^DIC(119.4,0,"DD")
	;;=#
	;;^DIC(119.4,0,"DEL")
	;;=#f
	;;^DIC(119.4,0,"LAYGO")
	;;=#f
	;;^DIC(119.4,0,"RD")
	;;=#F
	;;^DIC(119.4,0,"WR")
	;;=#f
	;;^DIC(119.5,0,"DD")
	;;=#
	;;^DIC(119.5,0,"DEL")
	;;=#f
	;;^DIC(119.5,0,"LAYGO")
	;;=#f
	;;^DIC(119.5,0,"RD")
	;;=#F
	;;^DIC(119.5,0,"WR")
	;;=#f
	;;^DIC(119.6,0,"DD")
	;;=#
	;;^DIC(119.6,0,"DEL")
	;;=#f
	;;^DIC(119.6,0,"LAYGO")
	;;=#f
	;;^DIC(119.6,0,"RD")
	;;=#F
	;;^DIC(119.6,0,"WR")
	;;=#f
	;;^DIC(119.71,0,"DD")
	;;=#
	;;^DIC(119.71,0,"DEL")
	;;=#f
	;;^DIC(119.71,0,"LAYGO")
	;;=#f
	;;^DIC(119.71,0,"RD")
	;;=#F
	;;^DIC(119.71,0,"WR")
	;;=#f
	;;^DIC(119.72,0,"DD")
	;;=#
	;;^DIC(119.72,0,"DEL")
	;;=#f
	;;^DIC(119.72,0,"LAYGO")
	;;=#f
	;;^DIC(119.72,0,"RD")
	;;=#F
	;;^DIC(119.72,0,"WR")
	;;=#f
	;;^DIC(119.73,0,"DD")
	;;=#
	;;^DIC(119.73,0,"DEL")
	;;=#f
	;;^DIC(119.73,0,"LAYGO")
	;;=#f
	;;^DIC(119.73,0,"RD")
	;;=#F
	;;^DIC(119.73,0,"WR")
	;;=#f
	;;^DIC(119.74,0,"DD")
	;;=#
	;;^DIC(119.74,0,"DEL")
	;;=#f
	;;^DIC(119.74,0,"LAYGO")
	;;=#f
	;;^DIC(119.74,0,"RD")
	;;=#F
	;;^DIC(119.74,0,"WR")
	;;=#f
	;;^DIC(119.8,0,"DD")
	;;=#
	;;^DIC(119.8,0,"DEL")
	;;=#f
	;;^DIC(119.8,0,"LAYGO")
	;;=#f
	;;^DIC(119.8,0,"RD")
	;;=#F
	;;^DIC(119.8,0,"WR")
	;;=#f
	;;^DIC(119.9,0,"DD")
	;;=#
	;;^DIC(119.9,0,"DEL")
	;;=#f
	;;^DIC(119.9,0,"LAYGO")
	;;=#f
	;;^DIC(119.9,0,"RD")
	;;=#F
	;;^DIC(119.9,0,"WR")
	;;=#f
