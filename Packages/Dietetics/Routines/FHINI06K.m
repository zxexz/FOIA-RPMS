FHINI06K	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,2250,0)
	;;=FRUIT PUNCH JUICE DRINK, PREPARED WITH WATER FROM FROZEN^14-406^fl oz.^31^100^N
	;;^UTILITY(U,$J,112,2250,1)
	;;=.1^.2^12.2^50^87.3^^^7^.23^4^0^77^5^.22^.024^.06^^6^5.6^.001
	;;^UTILITY(U,$J,112,2250,2)
	;;=.065^.059^.029^.013^0^0^.036^.013^0^.025^.024^.049^1^.2
	;;^UTILITY(U,$J,112,2250,4)
	;;=^^.001^.022^.002^.001^.013^^0
	;;^UTILITY(U,$J,112,2250,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2251,0)
	;;=ORANGE FLAVOR DRINK, BREAKFAST TYPE, POWDER^14-407^tsp.^8^100^N
	;;^UTILITY(U,$J,112,2251,1)
	;;=.1^.1^98.7^386^.2^^^194^.65^2^129^166^17^.15^.08^.05^^6208^409.6^.012
	;;^UTILITY(U,$J,112,2251,2)
	;;=.129^0^0^0^483.3^0^.017^0^0^.081^.01^.017^1864^1^^^0
	;;^UTILITY(U,$J,112,2251,4)
	;;=.005^.038^.015^.013^0^.003^.01
	;;^UTILITY(U,$J,112,2251,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2252,0)
	;;=ORANGE FLAVOR DRINK, BREAKFAST TYPE, PREP W/ WATER^14-408^fl oz.^31^100^N
	;;^UTILITY(U,$J,112,2252,1)
	;;=0^0^11.8^46^88.1^^^25^.08^1^15^20^5^.04^.015^.006^^740^48.8^.001
	;;^UTILITY(U,$J,112,2252,2)
	;;=.015^0^0^0^57.6^0^.002^0^0^.01^.001^.002^222^.2^^^0
	;;^UTILITY(U,$J,112,2252,4)
	;;=.001^.004^.002^.002^0^0^.001
	;;^UTILITY(U,$J,112,2252,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2253,0)
	;;=BEVERAGE, BOURBON AND SODA, PREPARED FROM RECIPE^14-413^fl oz.^29^100^N
	;;^UTILITY(U,$J,112,2253,1)
	;;=0^0^0^90^86.9^^^3^.02^1^2^2^14^.08^.012^.006^^0^0^.003
	;;^UTILITY(U,$J,112,2253,2)
	;;=0^.018^0^0^0^0^0^0^0^0^0^0^0^0^13
	;;^UTILITY(U,$J,112,2253,3)
	;;=0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0
	;;^UTILITY(U,$J,112,2253,4)
	;;=0^0^0^0^0^0^0^0
	;;^UTILITY(U,$J,112,2253,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2254,0)
	;;=COCOA MIX, WITH ADDED NUTRIENTS, PREPARED WITH WATER^14-417^fl oz.^34.8^100^N
	;;^UTILITY(U,$J,112,2254,1)
	;;=.9^1.4^11.5^57^85.2^^^50^.87^11^53^194^99^.13^.053^.044^^240^2.9^.072
	;;^UTILITY(U,$J,112,2254,2)
	;;=.081^.959^.134^^0^.2^.041^.002^0^.86^.473^.042^72^.9^^3
	;;^UTILITY(U,$J,112,2254,3)
	;;=.013^.038^.048^.077^.063^.018^.009^.042^.04^.056^.035^.022^.032^.07^.169^.023^.072^.044
	;;^UTILITY(U,$J,112,2254,4)
	;;=^0^.001^.366^.003^.478^.469
	;;^UTILITY(U,$J,112,2254,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2255,0)
	;;=DAIRY DRINK MIX, CHOCOLATE, LO CAL, W/ ASP, POWDER^14-422^pkt.^21.3^100^N
	;;^UTILITY(U,$J,112,2255,1)
	;;=25^2.6^50.2^298^12.8^^^880^7.7^210^853^2240^780^3.6^.8^.73^^1150^1.2^.112
	;;^UTILITY(U,$J,112,2255,2)
	;;=1.938^1.25^2.139^.11^42^2.39^.06^.002^8^1.871^.496^.061^344^8.2^^105^1.6
	;;^UTILITY(U,$J,112,2255,3)
	;;=.365^1.102^1.391^2.243^1.823^.534^.25^1.213^1.153^1.632^1.022^.623^.92^2.044^4.893^.666^2.099^1.285
	;;^UTILITY(U,$J,112,2255,4)
	;;=.077^.571^.216^.43^.003^.461^.492
	;;^UTILITY(U,$J,112,2255,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2256,0)
	;;=DAIRY DRINK MIX, CHOCOLATE, LO CAL, W/ ASP, PREP W/ WATER^14-423^fl oz.^51^100^N
	;;^UTILITY(U,$J,112,2256,1)
	;;=2.6^.3^5.2^31^90.8^^^94^.81^23^89^235^84^.4^.089^.077^^120^.1^.012
	;;^UTILITY(U,$J,112,2256,2)
	;;=.203^.131^.224^.011^4.4^.25^.006^0^1^.196^.052^.006^36^.9^^11
	;;^UTILITY(U,$J,112,2256,3)
	;;=.038^.115^.146^.235^.191^.056^.026^.127^.121^.171^.107^.065^.096^.214^.512^.07^.22^.134
	;;^UTILITY(U,$J,112,2256,4)
	;;=.008^.06^.023^.045^0^.048^.051
	;;^UTILITY(U,$J,112,2256,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2257,0)
	;;=ORANGE FLAVOR DRINK, BREAKFAST TYPE, W/ PULP, PREP FROM FRZ^14-425^fl oz.^31^100^N
	;;^UTILITY(U,$J,112,2257,1)
	;;=0^.2^12.2^49^87.2^^^33^.08^1^22^124^9^.04^.037^0^^0^69.2^.12
	;;^UTILITY(U,$J,112,2257,2)
	;;=.038^0^.007^0^22.8^0^.052^.004^0^.022^.064^.056^0^.4
	;;^UTILITY(U,$J,112,2257,4)
	;;=^^0^.014^.001^.007^.064
	;;^UTILITY(U,$J,112,2257,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2258,0)
	;;=ORANGE DRINK, BREAKFAST TYPE, W/ JUICE & PULP, PREP FROM FRZ^14-427^fl oz.^31.3^100^N
	;;^UTILITY(U,$J,112,2258,1)
	;;=.1^0^11.3^45^88.1^^^117^.08^11^33^135^10^.05^.097^.014^^6^55.1^.106
	;;^UTILITY(U,$J,112,2258,2)
	;;=1.043^.253^.189^.071^32.3^0^.001^0^0^.001^.001^.001^1^.4
	;;^UTILITY(U,$J,112,2258,3)
	;;=0^.001^.001^.002^.002^.001^.001^.002^.001^.002^.007^.001^.002^.012^.005^.002^.007^.002
	;;^UTILITY(U,$J,112,2258,4)
	;;=^^^.001^0^^.001
	;;^UTILITY(U,$J,112,2258,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2259,0)
	;;=SHAKE, FAST FOOD, STRAWBERRY^14-428^fl oz.^28.3^100^N
	;;^UTILITY(U,$J,112,2259,1)
	;;=3.4^2.8^18.9^113^74.1^^^113^.11^13^100^182^83^.36^.022^.015^^120^.8^.045