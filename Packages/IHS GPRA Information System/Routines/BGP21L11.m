BGP21L11 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"68382-0066-16 ")
 ;;1024
 ;;21,"68382-0066-24 ")
 ;;1025
 ;;21,"68382-0067-05 ")
 ;;1171
 ;;21,"68382-0067-06 ")
 ;;1172
 ;;21,"68382-0067-10 ")
 ;;1173
 ;;21,"68382-0067-14 ")
 ;;1174
 ;;21,"68382-0067-16 ")
 ;;1175
 ;;21,"68382-0067-24 ")
 ;;1176
 ;;21,"68382-0068-05 ")
 ;;1329
 ;;21,"68382-0068-06 ")
 ;;1330
 ;;21,"68382-0068-10 ")
 ;;1331
 ;;21,"68382-0068-14 ")
 ;;1332
 ;;21,"68382-0068-16 ")
 ;;1333
 ;;21,"68382-0068-40 ")
 ;;1334
 ;;21,"68382-0069-05 ")
 ;;1516
 ;;21,"68382-0069-06 ")
 ;;1517
 ;;21,"68382-0069-10 ")
 ;;1518
 ;;21,"68382-0069-14 ")
 ;;1519
 ;;21,"68382-0069-16 ")
 ;;1520
 ;;21,"68382-0070-05 ")
 ;;588
 ;;21,"68382-0070-16 ")
 ;;627
 ;;21,"68382-0071-05 ")
 ;;645
 ;;21,"68382-0071-16 ")
 ;;710
 ;;21,"68382-0072-05 ")
 ;;734
 ;;21,"68382-0072-16 ")
 ;;803
 ;;21,"68382-0073-05 ")
 ;;811
 ;;21,"68382-0073-16 ")
 ;;833
 ;;21,"68462-0195-05 ")
 ;;628
 ;;21,"68462-0195-90 ")
 ;;629
 ;;21,"68462-0196-05 ")
 ;;711
 ;;21,"68462-0196-90 ")
 ;;712
 ;;21,"68462-0197-05 ")
 ;;804
 ;;21,"68462-0197-90 ")
 ;;805
 ;;21,"68462-0198-05 ")
 ;;834
 ;;21,"68462-0198-90 ")
 ;;835
 ;;21,"68645-0262-54 ")
 ;;1335
 ;;9002226,1201,.01)
 ;;BGP PQA STATIN NDC
 ;;9002226,1201,.02)
 ;;@
 ;;9002226,1201,.04)
 ;;n
 ;;9002226,1201,.06)
 ;;@
 ;;9002226,1201,.08)
 ;;@
 ;;9002226,1201,.09)
 ;;@
 ;;9002226,1201,.11)
 ;;@
 ;;9002226,1201,.12)
 ;;@
 ;;9002226,1201,.13)
 ;;1
 ;;9002226,1201,.14)
 ;;@
 ;;9002226,1201,.15)
 ;;@
 ;;9002226,1201,.16)
 ;;@
 ;;9002226,1201,.17)
 ;;@
 ;;9002226,1201,3101)
 ;;@
 ;;9002226.02101,"1201,00002-4770-90 ",.01)
 ;;00002-4770-90
 ;;9002226.02101,"1201,00002-4770-90 ",.02)
 ;;00002-4770-90
 ;;9002226.02101,"1201,00002-4771-90 ",.01)
 ;;00002-4771-90
 ;;9002226.02101,"1201,00002-4771-90 ",.02)
 ;;00002-4771-90
 ;;9002226.02101,"1201,00002-4772-90 ",.01)
 ;;00002-4772-90
 ;;9002226.02101,"1201,00002-4772-90 ",.02)
 ;;00002-4772-90
 ;;9002226.02101,"1201,00003-5154-05 ",.01)
 ;;00003-5154-05
 ;;9002226.02101,"1201,00003-5154-05 ",.02)
 ;;00003-5154-05
 ;;9002226.02101,"1201,00003-5168-11 ",.01)
 ;;00003-5168-11
 ;;9002226.02101,"1201,00003-5168-11 ",.02)
 ;;00003-5168-11
 ;;9002226.02101,"1201,00003-5169-11 ",.01)
 ;;00003-5169-11
 ;;9002226.02101,"1201,00003-5169-11 ",.02)
 ;;00003-5169-11
 ;;9002226.02101,"1201,00003-5173-11 ",.01)
 ;;00003-5173-11
 ;;9002226.02101,"1201,00003-5173-11 ",.02)
 ;;00003-5173-11
 ;;9002226.02101,"1201,00003-5174-11 ",.01)
 ;;00003-5174-11
 ;;9002226.02101,"1201,00003-5174-11 ",.02)
 ;;00003-5174-11
 ;;9002226.02101,"1201,00003-5178-05 ",.01)
 ;;00003-5178-05
 ;;9002226.02101,"1201,00003-5178-05 ",.02)
 ;;00003-5178-05
 ;;9002226.02101,"1201,00003-5178-06 ",.01)
 ;;00003-5178-06
 ;;9002226.02101,"1201,00003-5178-06 ",.02)
 ;;00003-5178-06
 ;;9002226.02101,"1201,00003-5178-75 ",.01)
 ;;00003-5178-75
 ;;9002226.02101,"1201,00003-5178-75 ",.02)
 ;;00003-5178-75
 ;;9002226.02101,"1201,00003-5183-11 ",.01)
 ;;00003-5183-11
 ;;9002226.02101,"1201,00003-5183-11 ",.02)
 ;;00003-5183-11
 ;;9002226.02101,"1201,00003-5184-11 ",.01)
 ;;00003-5184-11
 ;;9002226.02101,"1201,00003-5184-11 ",.02)
 ;;00003-5184-11
 ;;9002226.02101,"1201,00003-5194-10 ",.01)
 ;;00003-5194-10
 ;;9002226.02101,"1201,00003-5194-10 ",.02)
 ;;00003-5194-10
 ;;9002226.02101,"1201,00003-5194-33 ",.01)
 ;;00003-5194-33
 ;;9002226.02101,"1201,00003-5194-33 ",.02)
 ;;00003-5194-33
 ;;9002226.02101,"1201,00003-5195-10 ",.01)
 ;;00003-5195-10
 ;;9002226.02101,"1201,00003-5195-10 ",.02)
 ;;00003-5195-10
 ;;9002226.02101,"1201,00003-5195-33 ",.01)
 ;;00003-5195-33
 ;;9002226.02101,"1201,00003-5195-33 ",.02)
 ;;00003-5195-33
 ;;9002226.02101,"1201,00006-0543-28 ",.01)
 ;;00006-0543-28
 ;;9002226.02101,"1201,00006-0543-28 ",.02)
 ;;00006-0543-28
 ;;9002226.02101,"1201,00006-0543-31 ",.01)
 ;;00006-0543-31
 ;;9002226.02101,"1201,00006-0543-31 ",.02)
 ;;00006-0543-31
 ;;9002226.02101,"1201,00006-0543-54 ",.01)
 ;;00006-0543-54
 ;;9002226.02101,"1201,00006-0543-54 ",.02)
 ;;00006-0543-54
 ;;9002226.02101,"1201,00006-0543-61 ",.01)
 ;;00006-0543-61
 ;;9002226.02101,"1201,00006-0543-61 ",.02)
 ;;00006-0543-61
 ;;9002226.02101,"1201,00006-0543-82 ",.01)
 ;;00006-0543-82
 ;;9002226.02101,"1201,00006-0543-82 ",.02)
 ;;00006-0543-82
 ;;9002226.02101,"1201,00006-0726-28 ",.01)
 ;;00006-0726-28
 ;;9002226.02101,"1201,00006-0726-28 ",.02)
 ;;00006-0726-28
 ;;9002226.02101,"1201,00006-0726-31 ",.01)
 ;;00006-0726-31
 ;;9002226.02101,"1201,00006-0726-31 ",.02)
 ;;00006-0726-31
 ;;9002226.02101,"1201,00006-0726-54 ",.01)
 ;;00006-0726-54
 ;;9002226.02101,"1201,00006-0726-54 ",.02)
 ;;00006-0726-54
 ;;9002226.02101,"1201,00006-0726-61 ",.01)
 ;;00006-0726-61
 ;;9002226.02101,"1201,00006-0726-61 ",.02)
 ;;00006-0726-61
 ;;9002226.02101,"1201,00006-0726-82 ",.01)
 ;;00006-0726-82
 ;;9002226.02101,"1201,00006-0726-82 ",.02)
 ;;00006-0726-82
 ;;9002226.02101,"1201,00006-0730-61 ",.01)
 ;;00006-0730-61
 ;;9002226.02101,"1201,00006-0730-61 ",.02)
 ;;00006-0730-61
 ;;9002226.02101,"1201,00006-0731-28 ",.01)
 ;;00006-0731-28
 ;;9002226.02101,"1201,00006-0731-28 ",.02)
 ;;00006-0731-28