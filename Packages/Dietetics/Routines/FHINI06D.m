FHINI06D	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,2178,3)
	;;=.237^1.22^1.192^2.174^2.375^.703^.345^1.09^.88^1.336^1.965^.843^1.923^2.584^4.195^2.16^1.583^1.187
	;;^UTILITY(U,$J,112,2178,4)
	;;=.02^.02^.1^.83^.23^.58^1.38^0
	;;^UTILITY(U,$J,112,2178,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2179,0)
	;;=BEEF, CURED, FRANKFURTER^13-351^oz.^28.35^100^N
	;;^UTILITY(U,$J,112,2179,1)
	;;=12.03^28.54^1.81^315^54.71^^^20^1.43^3^87^166^1026^2.17^.06^.033^^0^24.1^.051
	;;^UTILITY(U,$J,112,2179,2)
	;;=.102^2.415^.29^.12^4^1.54^1.11^.27^61^12.05^13.62^1.38^0^2.91
	;;^UTILITY(U,$J,112,2179,3)
	;;=.11^.454^.52^.884^.922^.279^.154^.433^.393^.529^.743^.383^.866^1.178^1.96^1.005^.866^.485
	;;^UTILITY(U,$J,112,2179,4)
	;;=.08^.06^.94^6.52^1.63^3.96^11.99^0
	;;^UTILITY(U,$J,112,2179,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,2180,0)
	;;=BEEF, CURED, LEBANON BOLOGNA^13-352^oz.^28.35^100^N
	;;^UTILITY(U,$J,112,2180,1)
	;;=19.33^13.2^2.67^212^60.8^^^13^2.47^16^150^300^1338^3.98^.09^.057^^0^22^.062
	;;^UTILITY(U,$J,112,2180,2)
	;;=.188^4.362^.53^.24^^2.55^.46^.15^70^5.84^5.94^.61^0^4
	;;^UTILITY(U,$J,112,2180,3)
	;;=.158^.81^.792^1.444^1.577^.467^.229^.724^.585^.888^1.305^.56^1.277^1.717^2.787^1.435^1.052^.789
	;;^UTILITY(U,$J,112,2180,4)
	;;=.03^.04^.38^3.09^.89^2.09^5.05^0
	;;^UTILITY(U,$J,112,2180,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,2181,0)
	;;=BEEF, CURED, LUNCHEON MEAT, JELLIED^13-353^oz.^28.35^100^N
	;;^UTILITY(U,$J,112,2181,1)
	;;=19^3.3^0^111^74.6^^^10^3.45^18^139^402^1322^3.55^.12^.052^^0^17.2^.145
	;;^UTILITY(U,$J,112,2181,2)
	;;=.291^4.838^.687^.25^7^5.14^.13^.04^34^1.41^1.45^.17^0^3.4^^^0
	;;^UTILITY(U,$J,112,2181,3)
	;;=.137^.742^.714^1.313^1.459^.42^.198^.672^.511^.824^1.316^.499^1.307^1.617^2.627^1.8^1.246^.76
	;;^UTILITY(U,$J,112,2181,4)
	;;=.01^.02^.09^.68^.22^.54^1.23^0
	;;^UTILITY(U,$J,112,2181,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2182,0)
	;;=BEEF, CURED, LUNCHEON MEAT, LOAVED^13-354^oz.^28.35^100^N
	;;^UTILITY(U,$J,112,2182,1)
	;;=14.37^26.2^2.9^308^52.53^^^11^2.32^14^119^208^1329^2.53^.12^.045^^0^13^.11
	;;^UTILITY(U,$J,112,2182,2)
	;;=.22^3.66^.52^.19^5^3.89^.65^.21^64^11.18^12.25^.87^0^4
	;;^UTILITY(U,$J,112,2182,3)
	;;=.103^.561^.54^.993^1.104^.317^.149^.508^.386^.623^.995^.377^.989^1.223^1.986^1.361^.943^.575
	;;^UTILITY(U,$J,112,2182,4)
	;;=.03^.01^.75^6.32^1.54^4.08^10.71^0
	;;^UTILITY(U,$J,112,2182,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,2183,0)
	;;=BEEF, CURED, PASTRAMI^13-355^oz.^28.35^100^N
	;;^UTILITY(U,$J,112,2183,1)
	;;=17.24^29.18^3.05^349^46.73^^^9^1.89^18^150^228^1227^4.26^.079^.013^^0^3^.095
	;;^UTILITY(U,$J,112,2183,2)
	;;=.17^5.065^.3^.18^7^1.76^.79^.2^93^10.42^14.47^.99^0^3.8^^^0
	;;^UTILITY(U,$J,112,2183,3)
	;;=.157^.651^.745^1.266^1.322^.4^.221^.621^.563^.759^1.065^.549^1.242^1.689^2.809^1.44^1.242^.695
	;;^UTILITY(U,$J,112,2183,4)
	;;=.13^.09^.76^5.93^1.89^3.01^12.58^0
	;;^UTILITY(U,$J,112,2183,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2184,0)
	;;=BEEF, CURED, SALAMI, SMOKED^13-356^oz.^28.35^100^N
	;;^UTILITY(U,$J,112,2184,1)
	;;=15.04^20.68^2.81^262^58.11^^^9^2.19^14^113^224^1176^2.16^.122^.046^^0^17.3^.103
	;;^UTILITY(U,$J,112,2184,2)
	;;=.189^3.238^.95^.18^^3.06^.8^.23^65^9^9.44^1.03^0^3.37
	;;^UTILITY(U,$J,112,2184,3)
	;;=.137^.568^.65^1.104^1.152^.349^.192^.541^.491^.662^.929^.479^1.083^1.472^2.449^1.256^1.083^.606
	;;^UTILITY(U,$J,112,2184,4)
	;;=.07^.05^.61^4.73^1.23^3.19^8.22^0
	;;^UTILITY(U,$J,112,2184,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,2185,0)
	;;=BEEF, CURED, SAUSAGE, SMOKED^13-357^oz.^28.35^100^N
	;;^UTILITY(U,$J,112,2185,1)
	;;=14.11^26.91^2.42^312^53.56^^^7^1.76^13^105^176^1131^2.8^.072^.009^^0^12^.05
	;;^UTILITY(U,$J,112,2185,2)
	;;=.14^3.19^.188^.11^4^1.86^.96^.09^67^11.44^12.97^1.05^0^3^^^0
	;;^UTILITY(U,$J,112,2185,3)
	;;=.129^.533^.609^1.036^1.081^.327^.181^.508^.46^.621^.871^.449^1.016^1.381^2.298^1.178^1.016^.569
	;;^UTILITY(U,$J,112,2185,4)
	;;=.09^.06^.88^6.03^1.53^3.86^11.44^0
	;;^UTILITY(U,$J,112,2185,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2186,0)
	;;=BEEF, CURED, SMOKED, CHOPPED BEEF^13-358^oz.^28.35^100^N
	;;^UTILITY(U,$J,112,2186,1)
	;;=20.19^4.42^1.86^123^68.93^^^8^2.85^21^181^377^1258^3.93^.026^.029^^0^20.7^.083
	;;^UTILITY(U,$J,112,2186,2)
	;;=.175^4.577^.59^.35^8^1.73^.19^.04^46^1.81^1.83^.23^0^4.6^^^0
	;;^UTILITY(U,$J,112,2186,3)
	;;=.165^.846^.827^1.508^1.647^.488^.239^.756^.61^.927^1.363^.585^1.334^1.793^2.91^1.499^1.098^.824
	;;^UTILITY(U,$J,112,2186,4)
	;;=.02^.02^.11^.94^.26^.66^1.57^0