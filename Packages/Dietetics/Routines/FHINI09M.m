FHINI09M	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,6626,0)
	;;=COFFEE, DECAF. FZ-DRIED (SANKA)^^cups^240
	;;^UTILITY(U,$J,112,6626,1)
	;;=0^0^.42^.83^100^^^0^0^^0^27^0^^^^^0^0^0
	;;^UTILITY(U,$J,112,6626,2)
	;;=0^.13
	;;^UTILITY(U,$J,112,6626,20)
	;;=General Foods Prod Lit. Sept. 1985. DOE: 6/86 #516. Vit. data calc. from %RDA.
	;;^UTILITY(U,$J,112,6627,0)
	;;=COFFEE, DECAF. INSTANT (SANKA)^^cups^240
	;;^UTILITY(U,$J,112,6627,1)
	;;=0^0^.41^.83^100^^^0^0^^0^23^0^^^^^0^0^0
	;;^UTILITY(U,$J,112,6627,2)
	;;=0^.13
	;;^UTILITY(U,$J,112,6627,20)
	;;=General Foods Prod Lit. Sept. 1985. DOE: 6/86 #516 Vit. data calc. from %RDA.
	;;^UTILITY(U,$J,112,6629,0)
	;;=MCDONALD'S, CHICKEN MCNUGGETS^^servings^109
	;;^UTILITY(U,$J,112,6629,1)
	;;=17.5^19.5^12.6^296^48.6^^^10^1.15^24.2^260^277^469^.82^.05^^.49^99^1.9^.15
	;;^UTILITY(U,$J,112,6629,2)
	;;=.13^6.9^.85^.35^0^.33^^^66.8
	;;^UTILITY(U,$J,112,6629,20)
	;;=MCDONALD'S PRODUCT LITERATURE 1984 DOE:8/6/86
	;;^UTILITY(U,$J,112,6630,0)
	;;=NU-SALT^^pkg.^1
	;;^UTILITY(U,$J,112,6630,1)
	;;=^^^^^^^.34^^1.04^^52800^17
	;;^UTILITY(U,$J,112,6630,20)
	;;=PRODUCT LITERATURE 1985
	;;^UTILITY(U,$J,112,6631,0)
	;;=MRS. DASH^^dashes^.6
	;;^UTILITY(U,$J,112,6631,1)
	;;=11.7^1.17^66.7^333^^^^^^^^1000^100
	;;^UTILITY(U,$J,112,6631,20)
	;;=PRODUCT LITERATURE  1983
	;;^UTILITY(U,$J,112,6632,0)
	;;=CAKE, POUND CHOLESTEROL FREE^^oz.^28.35
	;;^UTILITY(U,$J,112,6632,1)
	;;=3.53^21.2^45.9^388^^^^^^^^^299.8
	;;^UTILITY(U,$J,112,6632,2)
	;;=^^^^^^^^0^3.5^^7.1
	;;^UTILITY(U,$J,112,6632,20)
	;;=PRODUCT LITERATURE 1986
	;;^UTILITY(U,$J,112,6633,0)
	;;=MCDONALD'S, HOT MUSTARD SAUCE^^servings^30
	;;^UTILITY(U,$J,112,6633,1)
	;;=1.9^7.1^35.1^212^53.1^^^25^.57^20.9^49^76.3^868^.29^.04^^.9^.3^.9^.04
	;;^UTILITY(U,$J,112,6633,2)
	;;=.01^.28^.13^.03^0^.08^^^9.2
	;;^UTILITY(U,$J,112,6633,20)
	;;=MCDONALD'S PRODUCT LITERATURE, 1984. DOE:8/86 #516
	;;^UTILITY(U,$J,112,6634,0)
	;;=MCDONALD'S, BARBEQUE SAUCE^^servings^32
	;;^UTILITY(U,$J,112,6634,1)
	;;=1.2^1.4^43.2^190^51.1^^^12^.38^15.7^31^233^972^.16^.06^^.9^140^1.9^.04
	;;^UTILITY(U,$J,112,6634,2)
	;;=.03^.28^.09^.08^0^.12^^^.09
	;;^UTILITY(U,$J,112,6634,20)
	;;=MCDONALD'S PRODUCT LITERATURE, 1984. DOE: 8/86 #516
	;;^UTILITY(U,$J,112,6635,0)
	;;=MCDONALD'S, SWEET AND SOUR SAUCE^^servings^32
	;;^UTILITY(U,$J,112,6635,1)
	;;=.6^1^47.1^200^50^^^7^.27^6.28^15^122^584^.07^.03^^.9^630^.29^.02
	;;^UTILITY(U,$J,112,6635,2)
	;;=.019^.25^.07^.04^0^.039^^^.09
	;;^UTILITY(U,$J,112,6635,20)
	;;=MCDONALD'S PRODUCT LITERATURE, 1984. DOE: 8/86 #516
	;;^UTILITY(U,$J,112,6636,0)
	;;=MCDONALD'S, HONEY^^servings^14
	;;^UTILITY(U,$J,112,6636,1)
	;;=.3^.3^87.4^353^12^^^5^.16^1.71^5^28.5^14.9^.1^.029^^.9^99^.9^.009
	;;^UTILITY(U,$J,112,6636,2)
	;;=.02^.2^.11^.009^0^.04^^^.9
	;;^UTILITY(U,$J,112,6636,20)
	;;=MCDONALD'S PRODUCT LITERATURE, 1984. DOE: 8/86 #516
	;;^UTILITY(U,$J,112,6637,0)
	;;=SOUP BASE, CHICKEN,LS DRY^^tsp.^6
	;;^UTILITY(U,$J,112,6637,1)
	;;=14.17^20.75^61.75^491^2.91^^^^^^^107^19
	;;^UTILITY(U,$J,112,6637,20)
	;;=CFP PRODUCT LITERATURE,1984
	;;^UTILITY(U,$J,112,6638,0)
	;;=SOUP BASE, BEEF,LS DRY^^tsp.^6
	;;^UTILITY(U,$J,112,6638,1)
	;;=14^26.1^56.4^517^2.7^^^^^^^168^25
	;;^UTILITY(U,$J,112,6638,20)
	;;=CFP PRODUCT LITERATURE,1984
	;;^UTILITY(U,$J,112,6639,0)
	;;=LIPISORB,DILUTED TO 40 CAL/FLOZ (1.3 CAL/CC)^DS-001^ml.^1
	;;^UTILITY(U,$J,112,6639,1)
	;;=4.7^6.4^15.4^133^79^^^92^1.2^27^92^167^100^1.3^.13^.2^^500^6^.15
	;;^UTILITY(U,$J,112,6639,2)
	;;=.18^2^1^.2^40^.6^^^^^^^150
	;;^UTILITY(U,$J,112,6639,20)
	;;=Mead Johnson Dec 91.
	;;^UTILITY(U,$J,112,6640,0)
	;;=VITANEED^DS-002^8.4-oz.^250
	;;^UTILITY(U,$J,112,6640,1)
	;;=4^4^12.8^1000^84.5^^^66.7^1.2^26.7^66.7^125^68^2^.15^.3^^333.4^12^.15
	;;^UTILITY(U,$J,112,6640,2)
	;;=.17^2^1^.2^.04^.6^^^^^^^^^^^.8^3
	;;^UTILITY(U,$J,112,6640,4)
	;;=^^^^^^^^15
	;;^UTILITY(U,$J,112,6640,20)
	;;=Chesebrough-Pond's, Inc., 1988.
	;;^UTILITY(U,$J,112,6641,0)
	;;=PEPTI 2000 (100 G POWDER)^DS-003^3.5-oz.^101
	;;^UTILITY(U,$J,112,6641,1)
	;;=15.7^3.9^73.9^393.5^5^^^245^4.4^100^245^450^272^5.9^.6^1^^1200^24^.4
	;;^UTILITY(U,$J,112,6641,2)
	;;=.5^4^1^.4^.1^1.8^^^^^^^^2.3^^^^12
	;;^UTILITY(U,$J,112,6641,4)
	;;=^^^^^^^^12
	;;^UTILITY(U,$J,112,6641,20)
	;;=Chesebrough-Pond's, Inc., 1986.
	;;^UTILITY(U,$J,112,6642,0)
	;;=PEPTI 2000 (100 ML)^DS-004^gm.^1
	;;^UTILITY(U,$J,112,6642,1)
	;;=4^1^18.88^100^83.5^^^62.5^1.13^25^62.5^115^68^1.5^.15^.25^^312.5^6^.113
	;;^UTILITY(U,$J,112,6642,2)
	;;=.128^1.5^.75^.15^30^.45^^^^^^^^.58^^^^3
	;;^UTILITY(U,$J,112,6642,4)
	;;=^^^^^^^^3.5
	;;^UTILITY(U,$J,112,6642,20)
	;;=Chesebrough-Pond's, Inc., 1986.
	;;^UTILITY(U,$J,112,6643,0)
	;;=FORTICAL^DS-006^ml.^1