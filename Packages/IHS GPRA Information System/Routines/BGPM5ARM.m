BGPM5ARM ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON AUG 16, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1005,58016006942 ",.02)
 ;;58016006942
 ;;9002226.02101,"1005,58016006944 ",.01)
 ;;58016006944
 ;;9002226.02101,"1005,58016006944 ",.02)
 ;;58016006944
 ;;9002226.02101,"1005,58016006945 ",.01)
 ;;58016006945
 ;;9002226.02101,"1005,58016006945 ",.02)
 ;;58016006945
 ;;9002226.02101,"1005,58016006948 ",.01)
 ;;58016006948
 ;;9002226.02101,"1005,58016006948 ",.02)
 ;;58016006948
 ;;9002226.02101,"1005,58016006950 ",.01)
 ;;58016006950
 ;;9002226.02101,"1005,58016006950 ",.02)
 ;;58016006950
 ;;9002226.02101,"1005,58016006956 ",.01)
 ;;58016006956
 ;;9002226.02101,"1005,58016006956 ",.02)
 ;;58016006956
 ;;9002226.02101,"1005,58016006960 ",.01)
 ;;58016006960
 ;;9002226.02101,"1005,58016006960 ",.02)
 ;;58016006960
 ;;9002226.02101,"1005,58016006967 ",.01)
 ;;58016006967
 ;;9002226.02101,"1005,58016006967 ",.02)
 ;;58016006967
 ;;9002226.02101,"1005,58016006969 ",.01)
 ;;58016006969
 ;;9002226.02101,"1005,58016006969 ",.02)
 ;;58016006969
 ;;9002226.02101,"1005,58016006970 ",.01)
 ;;58016006970
 ;;9002226.02101,"1005,58016006970 ",.02)
 ;;58016006970
 ;;9002226.02101,"1005,58016006971 ",.01)
 ;;58016006971
 ;;9002226.02101,"1005,58016006971 ",.02)
 ;;58016006971
 ;;9002226.02101,"1005,58016006972 ",.01)
 ;;58016006972
 ;;9002226.02101,"1005,58016006972 ",.02)
 ;;58016006972
 ;;9002226.02101,"1005,58016006973 ",.01)
 ;;58016006973
 ;;9002226.02101,"1005,58016006973 ",.02)
 ;;58016006973
 ;;9002226.02101,"1005,58016006975 ",.01)
 ;;58016006975
 ;;9002226.02101,"1005,58016006975 ",.02)
 ;;58016006975
 ;;9002226.02101,"1005,58016006976 ",.01)
 ;;58016006976
 ;;9002226.02101,"1005,58016006976 ",.02)
 ;;58016006976
 ;;9002226.02101,"1005,58016006977 ",.01)
 ;;58016006977
 ;;9002226.02101,"1005,58016006977 ",.02)
 ;;58016006977
 ;;9002226.02101,"1005,58016006979 ",.01)
 ;;58016006979
 ;;9002226.02101,"1005,58016006979 ",.02)
 ;;58016006979
 ;;9002226.02101,"1005,58016006980 ",.01)
 ;;58016006980
 ;;9002226.02101,"1005,58016006980 ",.02)
 ;;58016006980
 ;;9002226.02101,"1005,58016006981 ",.01)
 ;;58016006981
 ;;9002226.02101,"1005,58016006981 ",.02)
 ;;58016006981
 ;;9002226.02101,"1005,58016006982 ",.01)
 ;;58016006982
 ;;9002226.02101,"1005,58016006982 ",.02)
 ;;58016006982
 ;;9002226.02101,"1005,58016006983 ",.01)
 ;;58016006983
 ;;9002226.02101,"1005,58016006983 ",.02)
 ;;58016006983
 ;;9002226.02101,"1005,58016006984 ",.01)
 ;;58016006984
 ;;9002226.02101,"1005,58016006984 ",.02)
 ;;58016006984
 ;;9002226.02101,"1005,58016006987 ",.01)
 ;;58016006987
 ;;9002226.02101,"1005,58016006987 ",.02)
 ;;58016006987
 ;;9002226.02101,"1005,58016006989 ",.01)
 ;;58016006989
 ;;9002226.02101,"1005,58016006989 ",.02)
 ;;58016006989
 ;;9002226.02101,"1005,58016006990 ",.01)
 ;;58016006990
 ;;9002226.02101,"1005,58016006990 ",.02)
 ;;58016006990
 ;;9002226.02101,"1005,58016006991 ",.01)
 ;;58016006991
 ;;9002226.02101,"1005,58016006991 ",.02)
 ;;58016006991
 ;;9002226.02101,"1005,58016006992 ",.01)
 ;;58016006992
 ;;9002226.02101,"1005,58016006992 ",.02)
 ;;58016006992
 ;;9002226.02101,"1005,58016006993 ",.01)
 ;;58016006993
 ;;9002226.02101,"1005,58016006993 ",.02)
 ;;58016006993
 ;;9002226.02101,"1005,58016006996 ",.01)
 ;;58016006996
 ;;9002226.02101,"1005,58016006996 ",.02)
 ;;58016006996
 ;;9002226.02101,"1005,58016006997 ",.01)
 ;;58016006997
 ;;9002226.02101,"1005,58016006997 ",.02)
 ;;58016006997
 ;;9002226.02101,"1005,58016006998 ",.01)
 ;;58016006998
 ;;9002226.02101,"1005,58016006998 ",.02)
 ;;58016006998
 ;;9002226.02101,"1005,58016006999 ",.01)
 ;;58016006999
 ;;9002226.02101,"1005,58016006999 ",.02)
 ;;58016006999
 ;;9002226.02101,"1005,58016016500 ",.01)
 ;;58016016500
 ;;9002226.02101,"1005,58016016500 ",.02)
 ;;58016016500
 ;;9002226.02101,"1005,58016016600 ",.01)
 ;;58016016600
 ;;9002226.02101,"1005,58016016600 ",.02)
 ;;58016016600
 ;;9002226.02101,"1005,58016022800 ",.01)
 ;;58016022800
 ;;9002226.02101,"1005,58016022800 ",.02)
 ;;58016022800
 ;;9002226.02101,"1005,58016022802 ",.01)
 ;;58016022802
 ;;9002226.02101,"1005,58016022802 ",.02)
 ;;58016022802
 ;;9002226.02101,"1005,58016022830 ",.01)
 ;;58016022830
 ;;9002226.02101,"1005,58016022830 ",.02)
 ;;58016022830
 ;;9002226.02101,"1005,58016022860 ",.01)
 ;;58016022860
 ;;9002226.02101,"1005,58016022860 ",.02)
 ;;58016022860
 ;;9002226.02101,"1005,58016022890 ",.01)
 ;;58016022890
 ;;9002226.02101,"1005,58016022890 ",.02)
 ;;58016022890
 ;;9002226.02101,"1005,58016034001 ",.01)
 ;;58016034001
 ;;9002226.02101,"1005,58016034001 ",.02)
 ;;58016034001
 ;;9002226.02101,"1005,58016034004 ",.01)
 ;;58016034004
 ;;9002226.02101,"1005,58016034004 ",.02)
 ;;58016034004
 ;;9002226.02101,"1005,58016034005 ",.01)
 ;;58016034005
 ;;9002226.02101,"1005,58016034005 ",.02)
 ;;58016034005
 ;;9002226.02101,"1005,58016034006 ",.01)
 ;;58016034006
 ;;9002226.02101,"1005,58016034006 ",.02)
 ;;58016034006
 ;;9002226.02101,"1005,58016034007 ",.01)
 ;;58016034007
 ;;9002226.02101,"1005,58016034007 ",.02)
 ;;58016034007
 ;;9002226.02101,"1005,58016034008 ",.01)
 ;;58016034008
 ;;9002226.02101,"1005,58016034008 ",.02)
 ;;58016034008
 ;;9002226.02101,"1005,58016034009 ",.01)
 ;;58016034009
 ;;9002226.02101,"1005,58016034009 ",.02)
 ;;58016034009
 ;;9002226.02101,"1005,58016034012 ",.01)
 ;;58016034012
 ;;9002226.02101,"1005,58016034012 ",.02)
 ;;58016034012
 ;;9002226.02101,"1005,58016034014 ",.01)
 ;;58016034014
 ;;9002226.02101,"1005,58016034014 ",.02)
 ;;58016034014
 ;;9002226.02101,"1005,58016034016 ",.01)
 ;;58016034016
 ;;9002226.02101,"1005,58016034016 ",.02)
 ;;58016034016
 ;;9002226.02101,"1005,58016034018 ",.01)
 ;;58016034018
 ;;9002226.02101,"1005,58016034018 ",.02)
 ;;58016034018
 ;;9002226.02101,"1005,58016034021 ",.01)
 ;;58016034021
 ;;9002226.02101,"1005,58016034021 ",.02)
 ;;58016034021
 ;;9002226.02101,"1005,58016034024 ",.01)
 ;;58016034024
 ;;9002226.02101,"1005,58016034024 ",.02)
 ;;58016034024
 ;;9002226.02101,"1005,58016034025 ",.01)
 ;;58016034025
 ;;9002226.02101,"1005,58016034025 ",.02)
 ;;58016034025
 ;;9002226.02101,"1005,58016034026 ",.01)
 ;;58016034026
 ;;9002226.02101,"1005,58016034026 ",.02)
 ;;58016034026
 ;;9002226.02101,"1005,58016034027 ",.01)
 ;;58016034027
 ;;9002226.02101,"1005,58016034027 ",.02)
 ;;58016034027
 ;;9002226.02101,"1005,58016034032 ",.01)
 ;;58016034032
 ;;9002226.02101,"1005,58016034032 ",.02)
 ;;58016034032
 ;;9002226.02101,"1005,58016034035 ",.01)
 ;;58016034035
 ;;9002226.02101,"1005,58016034035 ",.02)
 ;;58016034035
 ;;9002226.02101,"1005,58016034036 ",.01)
 ;;58016034036
 ;;9002226.02101,"1005,58016034036 ",.02)
 ;;58016034036
 ;;9002226.02101,"1005,58016034042 ",.01)
 ;;58016034042
 ;;9002226.02101,"1005,58016034042 ",.02)
 ;;58016034042
 ;;9002226.02101,"1005,58016034044 ",.01)
 ;;58016034044
 ;;9002226.02101,"1005,58016034044 ",.02)
 ;;58016034044
 ;;9002226.02101,"1005,58016034045 ",.01)
 ;;58016034045
 ;;9002226.02101,"1005,58016034045 ",.02)
 ;;58016034045
 ;;9002226.02101,"1005,58016034048 ",.01)
 ;;58016034048
 ;;9002226.02101,"1005,58016034048 ",.02)
 ;;58016034048
 ;;9002226.02101,"1005,58016034050 ",.01)
 ;;58016034050
 ;;9002226.02101,"1005,58016034050 ",.02)
 ;;58016034050
 ;;9002226.02101,"1005,58016034056 ",.01)
 ;;58016034056
 ;;9002226.02101,"1005,58016034056 ",.02)
 ;;58016034056
 ;;9002226.02101,"1005,58016034060 ",.01)
 ;;58016034060
 ;;9002226.02101,"1005,58016034060 ",.02)
 ;;58016034060
 ;;9002226.02101,"1005,58016034067 ",.01)
 ;;58016034067
 ;;9002226.02101,"1005,58016034067 ",.02)
 ;;58016034067
 ;;9002226.02101,"1005,58016034069 ",.01)
 ;;58016034069
 ;;9002226.02101,"1005,58016034069 ",.02)
 ;;58016034069
 ;;9002226.02101,"1005,58016034070 ",.01)
 ;;58016034070
 ;;9002226.02101,"1005,58016034070 ",.02)
 ;;58016034070
 ;;9002226.02101,"1005,58016034071 ",.01)
 ;;58016034071
 ;;9002226.02101,"1005,58016034071 ",.02)
 ;;58016034071
 ;;9002226.02101,"1005,58016034072 ",.01)
 ;;58016034072
 ;;9002226.02101,"1005,58016034072 ",.02)
 ;;58016034072
 ;;9002226.02101,"1005,58016034075 ",.01)
 ;;58016034075
 ;;9002226.02101,"1005,58016034075 ",.02)
 ;;58016034075
 ;;9002226.02101,"1005,58016034076 ",.01)
 ;;58016034076
 ;;9002226.02101,"1005,58016034076 ",.02)
 ;;58016034076
 ;;9002226.02101,"1005,58016034077 ",.01)
 ;;58016034077
 ;;9002226.02101,"1005,58016034077 ",.02)
 ;;58016034077
 ;;9002226.02101,"1005,58016034079 ",.01)
 ;;58016034079
 ;;9002226.02101,"1005,58016034079 ",.02)
 ;;58016034079
 ;;9002226.02101,"1005,58016034080 ",.01)
 ;;58016034080
 ;;9002226.02101,"1005,58016034080 ",.02)
 ;;58016034080
 ;;9002226.02101,"1005,58016034081 ",.01)
 ;;58016034081
 ;;9002226.02101,"1005,58016034081 ",.02)
 ;;58016034081
 ;;9002226.02101,"1005,58016034082 ",.01)
 ;;58016034082
 ;;9002226.02101,"1005,58016034082 ",.02)
 ;;58016034082
 ;;9002226.02101,"1005,58016034083 ",.01)
 ;;58016034083
 ;;9002226.02101,"1005,58016034083 ",.02)
 ;;58016034083
 ;;9002226.02101,"1005,58016034084 ",.01)
 ;;58016034084
 ;;9002226.02101,"1005,58016034084 ",.02)
 ;;58016034084
 ;;9002226.02101,"1005,58016034087 ",.01)
 ;;58016034087
 ;;9002226.02101,"1005,58016034087 ",.02)
 ;;58016034087
 ;;9002226.02101,"1005,58016034090 ",.01)
 ;;58016034090
 ;;9002226.02101,"1005,58016034090 ",.02)
 ;;58016034090
 ;;9002226.02101,"1005,58016034091 ",.01)
 ;;58016034091
 ;;9002226.02101,"1005,58016034091 ",.02)
 ;;58016034091
 ;;9002226.02101,"1005,58016034092 ",.01)
 ;;58016034092
 ;;9002226.02101,"1005,58016034092 ",.02)
 ;;58016034092
 ;;9002226.02101,"1005,58016034093 ",.01)
 ;;58016034093
 ;;9002226.02101,"1005,58016034093 ",.02)
 ;;58016034093
 ;;9002226.02101,"1005,58016034096 ",.01)
 ;;58016034096
 ;;9002226.02101,"1005,58016034096 ",.02)
 ;;58016034096
 ;;9002226.02101,"1005,58016034097 ",.01)
 ;;58016034097
 ;;9002226.02101,"1005,58016034097 ",.02)
 ;;58016034097
 ;;9002226.02101,"1005,58016034098 ",.01)
 ;;58016034098
 ;;9002226.02101,"1005,58016034098 ",.02)
 ;;58016034098
 ;;9002226.02101,"1005,58016034099 ",.01)
 ;;58016034099
 ;;9002226.02101,"1005,58016034099 ",.02)
 ;;58016034099
 ;;9002226.02101,"1005,58016036214 ",.01)
 ;;58016036214
 ;;9002226.02101,"1005,58016036214 ",.02)
 ;;58016036214
 ;;9002226.02101,"1005,58016036221 ",.01)
 ;;58016036221
 ;;9002226.02101,"1005,58016036221 ",.02)
 ;;58016036221
 ;;9002226.02101,"1005,58016036228 ",.01)
 ;;58016036228
 ;;9002226.02101,"1005,58016036228 ",.02)
 ;;58016036228
 ;;9002226.02101,"1005,58016036300 ",.01)
 ;;58016036300
 ;;9002226.02101,"1005,58016036300 ",.02)
 ;;58016036300
 ;;9002226.02101,"1005,58016036314 ",.01)
 ;;58016036314
 ;;9002226.02101,"1005,58016036314 ",.02)
 ;;58016036314
 ;;9002226.02101,"1005,58016036321 ",.01)
 ;;58016036321
 ;;9002226.02101,"1005,58016036321 ",.02)
 ;;58016036321
 ;;9002226.02101,"1005,58016036330 ",.01)
 ;;58016036330
 ;;9002226.02101,"1005,58016036330 ",.02)
 ;;58016036330
 ;;9002226.02101,"1005,58016036360 ",.01)
 ;;58016036360
 ;;9002226.02101,"1005,58016036360 ",.02)
 ;;58016036360
 ;;9002226.02101,"1005,58016047400 ",.01)
 ;;58016047400
 ;;9002226.02101,"1005,58016047400 ",.02)
 ;;58016047400
 ;;9002226.02101,"1005,58016047401 ",.01)
 ;;58016047401
 ;;9002226.02101,"1005,58016047401 ",.02)
 ;;58016047401
 ;;9002226.02101,"1005,58016047402 ",.01)
 ;;58016047402
 ;;9002226.02101,"1005,58016047402 ",.02)
 ;;58016047402
 ;;9002226.02101,"1005,58016047403 ",.01)
 ;;58016047403
 ;;9002226.02101,"1005,58016047403 ",.02)
 ;;58016047403
 ;;9002226.02101,"1005,58016047404 ",.01)
 ;;58016047404
 ;;9002226.02101,"1005,58016047404 ",.02)
 ;;58016047404