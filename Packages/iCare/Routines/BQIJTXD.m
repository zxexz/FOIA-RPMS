BQIJTXD ;GDIT/HS/ALA-CREATED BY ^ATXSTX ON AUG 14, 2012;
 ;;2.3;ICARE MANAGEMENT SYSTEM;**1**;Apr 18, 2012;Build 43
 ;;BQI C.TRACH SPECIFIC LOINC
 ;
 ; This routine loads Taxonomy BQI C.TRACH SPECIFIC LOINC
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"14461-8 ")
 ;;1
 ;;21,"14462-6 ")
 ;;2
 ;;21,"14463-4 ")
 ;;3
 ;;21,"14464-2 ")
 ;;4
 ;;21,"14465-9 ")
 ;;5
 ;;21,"14466-7 ")
 ;;6
 ;;21,"14467-5 ")
 ;;7
 ;;21,"14470-9 ")
 ;;8
 ;;21,"14471-7 ")
 ;;9
 ;;21,"14472-5 ")
 ;;10
 ;;21,"14473-3 ")
 ;;11
 ;;21,"14474-1 ")
 ;;12
 ;;21,"14509-4 ")
 ;;13
 ;;21,"14510-2 ")
 ;;14
 ;;21,"14511-0 ")
 ;;15
 ;;21,"14512-8 ")
 ;;16
 ;;21,"14513-6 ")
 ;;17
 ;;21,"16600-9 ")
 ;;18
 ;;21,"16601-7 ")
 ;;19
 ;;21,"21187-0 ")
 ;;20
 ;;21,"21188-8 ")
 ;;21
 ;;21,"21189-6 ")
 ;;22
 ;;21,"21190-4 ")
 ;;23
 ;;21,"21191-2 ")
 ;;24
 ;;21,"21192-0 ")
 ;;25
 ;;21,"21613-5 ")
 ;;26
 ;;21,"23838-6 ")
 ;;27
 ;;21,"36902-5 ")
 ;;28
 ;;21,"42931-6 ")
 ;;29
 ;;21,"43304-5 ")
 ;;30
 ;;21,"44806-8 ")
 ;;31
 ;;21,"44807-6 ")
 ;;32
 ;;21,"45067-6 ")
 ;;33
 ;;21,"45068-4 ")
 ;;34
 ;;21,"45069-2 ")
 ;;35
 ;;21,"45070-0 ")
 ;;36
 ;;21,"45071-8 ")
 ;;37
 ;;21,"45072-6 ")
 ;;38
 ;;21,"45074-2 ")
 ;;39
 ;;21,"45075-9 ")
 ;;40
 ;;21,"45076-7 ")
 ;;41
 ;;21,"45078-3 ")
 ;;42
 ;;21,"45080-9 ")
 ;;43
 ;;21,"45084-1 ")
 ;;44
 ;;21,"45085-8 ")
 ;;45
 ;;21,"45086-6 ")
 ;;46
 ;;21,"45087-4 ")
 ;;47
 ;;21,"45088-2 ")
 ;;48
 ;;21,"45089-0 ")
 ;;49
 ;;21,"45090-8 ")
 ;;50
 ;;21,"45092-4 ")
 ;;51
 ;;21,"45093-2 ")
 ;;52
 ;;21,"45094-0 ")
 ;;53
 ;;21,"45095-7 ")
 ;;54
 ;;21,"45096-5 ")
 ;;55
 ;;21,"47211-8 ")
 ;;56
 ;;21,"47362-9 ")
 ;;57
 ;;21,"4993-2 ")
 ;;58
 ;;21,"50311-0 ")
 ;;59
 ;;21,"50387-0 ")
 ;;60
 ;;21,"50411-8 ")
 ;;61
 ;;21,"51578-3 ")
 ;;62
 ;;21,"53925-4 ")
 ;;63
 ;;21,"53926-2 ")
 ;;64
 ;;21,"57287-5 ")
 ;;65
 ;;21,"57288-3 ")
 ;;66
 ;;21,"6349-5 ")
 ;;67
 ;;21,"6350-3 ")
 ;;68
 ;;21,"6351-1 ")
 ;;69
 ;;21,"6352-9 ")
 ;;70
 ;;21,"6354-5 ")
 ;;71
 ;;21,"6355-2 ")
 ;;72
 ;;21,"6356-0 ")
 ;;73
 ;;9002226,1912,.01)
 ;;BQI C.TRACH SPECIFIC LOINC
 ;;9002226,1912,.02)
 ;;Chlamydia LOINCs
 ;;9002226,1912,.04)
 ;;@
 ;;9002226,1912,.06)
 ;;@
 ;;9002226,1912,.08)
 ;;0
 ;;9002226,1912,.09)
 ;;3110525
 ;;9002226,1912,.11)
 ;;@
 ;;9002226,1912,.12)
 ;;@
 ;;9002226,1912,.13)
 ;;1
 ;;9002226,1912,.14)
 ;;FIHS
 ;;9002226,1912,.15)
 ;;95.3
 ;;9002226,1912,.16)
 ;;@
 ;;9002226,1912,.17)
 ;;@
 ;;9002226,1912,3101)
 ;;@
 ;;9002226.02101,"1912,14461-8 ",.01)
 ;;14461-8
 ;;9002226.02101,"1912,14461-8 ",.02)
 ;;14461-8
 ;;9002226.02101,"1912,14462-6 ",.01)
 ;;14462-6
 ;;9002226.02101,"1912,14462-6 ",.02)
 ;;14462-6
 ;;9002226.02101,"1912,14463-4 ",.01)
 ;;14463-4
 ;;9002226.02101,"1912,14463-4 ",.02)
 ;;14463-4
 ;;9002226.02101,"1912,14464-2 ",.01)
 ;;14464-2
 ;;9002226.02101,"1912,14464-2 ",.02)
 ;;14464-2
 ;;9002226.02101,"1912,14465-9 ",.01)
 ;;14465-9
 ;;9002226.02101,"1912,14465-9 ",.02)
 ;;14465-9
 ;;9002226.02101,"1912,14466-7 ",.01)
 ;;14466-7
 ;;9002226.02101,"1912,14466-7 ",.02)
 ;;14466-7
 ;;9002226.02101,"1912,14467-5 ",.01)
 ;;14467-5
 ;;9002226.02101,"1912,14467-5 ",.02)
 ;;14467-5
 ;;9002226.02101,"1912,14470-9 ",.01)
 ;;14470-9
 ;;9002226.02101,"1912,14470-9 ",.02)
 ;;14470-9
 ;;9002226.02101,"1912,14471-7 ",.01)
 ;;14471-7
 ;;9002226.02101,"1912,14471-7 ",.02)
 ;;14471-7
 ;;9002226.02101,"1912,14472-5 ",.01)
 ;;14472-5
 ;;9002226.02101,"1912,14472-5 ",.02)
 ;;14472-5
 ;;9002226.02101,"1912,14473-3 ",.01)
 ;;14473-3
 ;;9002226.02101,"1912,14473-3 ",.02)
 ;;14473-3
 ;;9002226.02101,"1912,14474-1 ",.01)
 ;;14474-1
 ;;9002226.02101,"1912,14474-1 ",.02)
 ;;14474-1
 ;;9002226.02101,"1912,14509-4 ",.01)
 ;;14509-4
 ;;9002226.02101,"1912,14509-4 ",.02)
 ;;14509-4
 ;;9002226.02101,"1912,14510-2 ",.01)
 ;;14510-2
 ;;9002226.02101,"1912,14510-2 ",.02)
 ;;14510-2
 ;;9002226.02101,"1912,14511-0 ",.01)
 ;;14511-0
 ;;9002226.02101,"1912,14511-0 ",.02)
 ;;14511-0
 ;;9002226.02101,"1912,14512-8 ",.01)
 ;;14512-8
 ;;9002226.02101,"1912,14512-8 ",.02)
 ;;14512-8
 ;;9002226.02101,"1912,14513-6 ",.01)
 ;;14513-6
 ;;9002226.02101,"1912,14513-6 ",.02)
 ;;14513-6
 ;;9002226.02101,"1912,16600-9 ",.01)
 ;;16600-9
 ;;9002226.02101,"1912,16600-9 ",.02)
 ;;16600-9
 ;;9002226.02101,"1912,16601-7 ",.01)
 ;;16601-7
 ;;9002226.02101,"1912,16601-7 ",.02)
 ;;16601-7
 ;;9002226.02101,"1912,21187-0 ",.01)
 ;;21187-0
 ;;9002226.02101,"1912,21187-0 ",.02)
 ;;21187-0
 ;;9002226.02101,"1912,21188-8 ",.01)
 ;;21188-8
 ;;9002226.02101,"1912,21188-8 ",.02)
 ;;21188-8
 ;;9002226.02101,"1912,21189-6 ",.01)
 ;;21189-6
 ;;9002226.02101,"1912,21189-6 ",.02)
 ;;21189-6
 ;;9002226.02101,"1912,21190-4 ",.01)
 ;;21190-4
 ;;9002226.02101,"1912,21190-4 ",.02)
 ;;21190-4
 ;;9002226.02101,"1912,21191-2 ",.01)
 ;;21191-2
 ;;9002226.02101,"1912,21191-2 ",.02)
 ;;21191-2
 ;;9002226.02101,"1912,21192-0 ",.01)
 ;;21192-0
 ;;9002226.02101,"1912,21192-0 ",.02)
 ;;21192-0
 ;
OTHER ; OTHER ROUTINES
 D ^BQIJTXDB
 Q