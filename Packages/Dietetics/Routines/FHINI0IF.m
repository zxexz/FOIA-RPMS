FHINI0IF	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(114)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,114,105,"X",1,0)
	;;=POUR EGG MIXTURE ONTO GRIDDLE AND COOK TILL DONE.
	;;^UTILITY(U,$J,114,105,"X",2,0)
	;;=SERVE.
	;;^UTILITY(U,$J,114,106,0)
	;;=DIET MAYONNAISE^100^1-EACH^^^^13^N^MAYONNAISE, DIET^^I
	;;^UTILITY(U,$J,114,106,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,106,"I",1,0)
	;;=154^100^1588
	;;^UTILITY(U,$J,114,106,"X",0)
	;;=^^1^1^2890801^^^
	;;^UTILITY(U,$J,114,106,"X",1,0)
	;;=SERVE AS STATED ON MENU, PLACING 1 PACKAGE ON TRAY.
	;;^UTILITY(U,$J,114,107,0)
	;;=KETCHUP^100^1-EACH^^^^13^N^^^I
	;;^UTILITY(U,$J,114,107,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,107,"I",1,0)
	;;=43^100^1938
	;;^UTILITY(U,$J,114,107,"X",0)
	;;=^^2^2^2871124^^^
	;;^UTILITY(U,$J,114,107,"X",1,0)
	;;=1) SERVE AS STATED ON MENU.
	;;^UTILITY(U,$J,114,107,"X",2,0)
	;;=2) PLACE 1 PACKAGE PER SERVING ON TRAY.
	;;^UTILITY(U,$J,114,108,0)
	;;=ROAST TURKEY^100^3-OZ^4 HOURS^^^4^N^TURKEY, ROAST
	;;^UTILITY(U,$J,114,108,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,108,"I",1,0)
	;;=671^18.75^490^18.75
	;;^UTILITY(U,$J,114,108,"X",0)
	;;=^^2^2^2861203^
	;;^UTILITY(U,$J,114,108,"X",1,0)
	;;=ROAST FOR 25 MINUTES PER LB @ 325 DEGREES.
	;;^UTILITY(U,$J,114,108,"X",2,0)
	;;=COVER PAN DURING ROASTING.
	;;^UTILITY(U,$J,114,109,0)
	;;=CHOCOLATE MILK^100^1-EACH^^^^11^N^MILK, CHOCOLATE^^I
	;;^UTILITY(U,$J,114,109,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,109,"I",1,0)
	;;=981^100^99
	;;^UTILITY(U,$J,114,109,"X",0)
	;;=^^2^2^2880315^^^
	;;^UTILITY(U,$J,114,109,"X",1,0)
	;;=SERVE ONE CHILLED CARTON ON TRAY PER MENU OR DIET CARD.
	;;^UTILITY(U,$J,114,109,"X",2,0)
	;;=SERVING TEMP.: 34-40 DEGREES.
	;;^UTILITY(U,$J,114,110,0)
	;;=BUTTERMILK^100^1-EACH^^^^11^N^MILK, BUTTER^^I
	;;^UTILITY(U,$J,114,110,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,110,"I",1,0)
	;;=762^100^85
	;;^UTILITY(U,$J,114,110,"X",0)
	;;=^^2^2^2871124^^^
	;;^UTILITY(U,$J,114,110,"X",1,0)
	;;=SERVE ONE CARTON ON TRAY AS PER MENU OR DIET CARD.
	;;^UTILITY(U,$J,114,110,"X",2,0)
	;;=SERVING TEMP.: 34-40 DEGREES.
	;;^UTILITY(U,$J,114,113,0)
	;;=SALT SUB.^100^1-EACH^^^^13^N^^^I^^.003
	;;^UTILITY(U,$J,114,113,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,113,"I",1,0)
	;;=229^100^6417
	;;^UTILITY(U,$J,114,113,"X",0)
	;;=^^1^1^2871124^^
	;;^UTILITY(U,$J,114,113,"X",1,0)
	;;=PLACE ON TRAY ACCORDING TO DIET CARD.
	;;^UTILITY(U,$J,114,114,0)
	;;=ITALIAN DRESSING^100^1-EACH^^^^13^N^SALAD DRESSING, ITALIAN^^I
	;;^UTILITY(U,$J,114,114,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,114,"I",1,0)
	;;=920^100^388
	;;^UTILITY(U,$J,114,114,"X",0)
	;;=^^1^1^2871203^^^^
	;;^UTILITY(U,$J,114,114,"X",1,0)
	;;=PLACE ON TRAY ACCORDING TO MENU AND DIET CARD.
	;;^UTILITY(U,$J,114,115,0)
	;;=TORPEDO ROLL^100^1-EACH^^^^12^N^ROLL, TORPEDO^^I
	;;^UTILITY(U,$J,114,115,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,115,"I",1,0)
	;;=845^100^1567
	;;^UTILITY(U,$J,114,115,"X",0)
	;;=^^1^1^2871124^^
	;;^UTILITY(U,$J,114,115,"X",1,0)
	;;=SERVE ACCORDING TO MENU OR DIET CARD.
	;;^UTILITY(U,$J,114,116,0)
	;;=DINNER ROLL^100^1-EACH^^^^12^N^ROLL, DINNER^^P
	;;^UTILITY(U,$J,114,116,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,116,"I",1,0)
	;;=785^100^1567
	;;^UTILITY(U,$J,114,116,"X",0)
	;;=^^1^1^2871124^^^
	;;^UTILITY(U,$J,114,116,"X",1,0)
	;;=SERVE ONE ROLL ON TRAY ACCORDING TO MENU AND DIET CARD.
	;;^UTILITY(U,$J,114,117,0)
	;;=STEAMED POTATOES^100^3-OZ^40 MIN^^12^7^N^POTATOES, STEAMED^^P
	;;^UTILITY(U,$J,114,117,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,117,"I",1,0)
	;;=958^18.75^1506^18.75
	;;^UTILITY(U,$J,114,117,"X",0)
	;;=^^2^2^2890815^^
	;;^UTILITY(U,$J,114,117,"X",1,0)
	;;=1) PLACE IN PAN. STEAM ACCORDING TO EQUIPMENT DIRECTIONS
	;;^UTILITY(U,$J,114,117,"X",2,0)
	;;=   UNTIL TENDER.
	;;^UTILITY(U,$J,114,118,0)
	;;=DIABETIC FRUIT COCKTAIL^50^4-OZ^^^8^3^N^D-43^^C^^.215
	;;^UTILITY(U,$J,114,118,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,118,"I",1,0)
	;;=124^12.5^1674^12.5
	;;^UTILITY(U,$J,114,118,"X",0)
	;;=^^1^1^2890727^^^^
	;;^UTILITY(U,$J,114,118,"X",1,0)
	;;=OPEN CAN AND PORTION ACCORDING TO MENU.
	;;^UTILITY(U,$J,114,119,0)
	;;=SLICED PEACHES^100^4-OZ^^^12^3^N^D-56^^C^^.138
	;;^UTILITY(U,$J,114,119,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,119,"I",1,0)
	;;=180^25^1750^25
	;;^UTILITY(U,$J,114,119,"X",0)
	;;=^^2^2^2890727^^
	;;^UTILITY(U,$J,114,119,"X",1,0)
	;;=OPEN CANS. PLACE 4 SLICES IN A VEGETABLE DISH. CHILL
	;;^UTILITY(U,$J,114,119,"X",2,0)
	;;=AND SERVE ACCOEDING TO MENU.
	;;^UTILITY(U,$J,114,120,0)
	;;=BUTTERSCOTCH PUDDING^100^4-OZ^^^6^3^N^D-206^^C^^.088
	;;^UTILITY(U,$J,114,120,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,120,"I",1,0)
	;;=216^25^6616^25
	;;^UTILITY(U,$J,114,120,"X",0)
	;;=^^1^1^2890801^^