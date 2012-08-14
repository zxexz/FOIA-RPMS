BGP21F ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;;BGP PQA BETA BLOCKER NDC
 ;
 ; This routine loads Taxonomy BGP PQA BETA BLOCKER NDC
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
 ;;21,"00003-0207-50 ")
 ;;1902
 ;;21,"00003-0207-76 ")
 ;;1904
 ;;21,"00003-0208-50 ")
 ;;1868
 ;;21,"00003-0232-50 ")
 ;;1878
 ;;21,"00003-0241-50 ")
 ;;1938
 ;;21,"00003-0241-76 ")
 ;;1939
 ;;21,"00003-0246-49 ")
 ;;1872
 ;;21,"00003-0283-50 ")
 ;;201
 ;;21,"00005-3219-43 ")
 ;;522
 ;;21,"00005-3220-34 ")
 ;;254
 ;;21,"00005-3234-23 ")
 ;;138
 ;;21,"00005-3235-38 ")
 ;;62
 ;;21,"00005-3238-23 ")
 ;;100
 ;;21,"00005-3816-38 ")
 ;;766
 ;;21,"00005-3817-38 ")
 ;;745
 ;;21,"00006-0059-68 ")
 ;;2437
 ;;21,"00006-0067-68 ")
 ;;227
 ;;21,"00006-0136-68 ")
 ;;2429
 ;;21,"00006-0437-68 ")
 ;;2433
 ;;21,"00007-3370-13 ")
 ;;795
 ;;21,"00007-3370-59 ")
 ;;794
 ;;21,"00007-3371-13 ")
 ;;800
 ;;21,"00007-3371-59 ")
 ;;799
 ;;21,"00007-3372-13 ")
 ;;806
 ;;21,"00007-3372-59 ")
 ;;805
 ;;21,"00007-3373-13 ")
 ;;811
 ;;21,"00007-3373-59 ")
 ;;810
 ;;21,"00007-4139-20 ")
 ;;981
 ;;21,"00007-4139-55 ")
 ;;973
 ;;21,"00007-4140-20 ")
 ;;1045
 ;;21,"00007-4140-55 ")
 ;;1037
 ;;21,"00007-4141-20 ")
 ;;823
 ;;21,"00007-4141-55 ")
 ;;815
 ;;21,"00007-4142-20 ")
 ;;900
 ;;21,"00007-4142-55 ")
 ;;891
 ;;21,"00008-4177-01 ")
 ;;230
 ;;21,"00008-4179-01 ")
 ;;246
 ;;21,"00024-2300-20 ")
 ;;740
 ;;21,"00024-2301-10 ")
 ;;731
 ;;21,"00025-5101-31 ")
 ;;728
 ;;21,"00025-5201-31 ")
 ;;737
 ;;21,"00028-0035-01 ")
 ;;193
 ;;21,"00028-0051-01 ")
 ;;1641
 ;;21,"00028-0051-10 ")
 ;;1642
 ;;21,"00028-0053-01 ")
 ;;180
 ;;21,"00028-0071-01 ")
 ;;1437
 ;;21,"00028-0071-10 ")
 ;;1438
 ;;21,"00028-0071-61 ")
 ;;1431
 ;;21,"00028-0073-01 ")
 ;;188
 ;;21,"00046-0421-81 ")
 ;;2132
 ;;21,"00046-0421-95 ")
 ;;2131
 ;;21,"00046-0422-81 ")
 ;;2212
 ;;21,"00046-0422-95 ")
 ;;2210
 ;;21,"00046-0424-81 ")
 ;;2306
 ;;21,"00046-0424-95 ")
 ;;2303
 ;;21,"00046-0426-81 ")
 ;;2367
 ;;21,"00046-0428-81 ")
 ;;2398
 ;;21,"00046-0470-81 ")
 ;;2039
 ;;21,"00046-0471-81 ")
 ;;2067
 ;;21,"00046-0473-81 ")
 ;;1991
 ;;21,"00046-0479-81 ")
 ;;2016
 ;;21,"00046-0484-81 ")
 ;;219
 ;;21,"00046-0488-81 ")
 ;;224
 ;;21,"00054-3727-63 ")
 ;;2095
 ;;21,"00054-3728-44 ")
 ;;2093
 ;;21,"00054-3730-63 ")
 ;;2096
 ;;21,"00054-8764-16 ")
 ;;2094
 ;;21,"00074-1664-13 ")
 ;;791
 ;;21,"00074-1665-13 ")
 ;;792
 ;;21,"00078-0458-05 ")
 ;;1675
 ;;21,"00078-0458-09 ")
 ;;1645
 ;;21,"00078-0459-05 ")
 ;;1458
 ;;21,"00078-0459-09 ")
 ;;1439
 ;;21,"00078-0460-05 ")
 ;;194
 ;;21,"00078-0461-05 ")
 ;;181
 ;;21,"00078-0462-05 ")
 ;;189
 ;;21,"00085-0244-04 ")
 ;;1115
 ;;21,"00085-0244-05 ")
 ;;1116
 ;;21,"00085-0244-07 ")
 ;;1117
 ;;21,"00085-0244-08 ")
 ;;1118
 ;;21,"00085-0438-03 ")
 ;;1212
 ;;21,"00085-0438-05 ")
 ;;1213
 ;;21,"00085-0438-06 ")
 ;;1214
 ;;21,"00085-0752-04 ")
 ;;1164
 ;;21,"00085-0752-05 ")
 ;;1165
 ;;21,"00085-0752-07 ")
 ;;1166
 ;;21,"00085-0752-08 ")
 ;;1167
 ;;21,"00091-4500-15 ")
 ;;1976
 ;;21,"00093-0051-01 ")
 ;;982
 ;;21,"00093-0051-05 ")
 ;;983
 ;;21,"00093-0135-01 ")
 ;;1046
 ;;21,"00093-0135-05 ")
 ;;1047
 ;;21,"00093-0733-01 ")
 ;;1676
 ;;21,"00093-0733-10 ")
 ;;1677
 ;;21,"00093-0734-01 ")
 ;;1459
 ;;21,"00093-0734-10 ")
 ;;1460
 ;;21,"00093-0752-01 ")
 ;;571
 ;;21,"00093-0752-10 ")
 ;;572
 ;;21,"00093-0753-01 ")
 ;;279
 ;;21,"00093-0753-05 ")
 ;;280
 ;;21,"00093-0787-01 ")
 ;;412
 ;;21,"00093-0787-10 ")
 ;;413
 ;;21,"00093-4235-01 ")
 ;;1887
 ;;21,"00093-4236-01 ")
 ;;1914
 ;;21,"00093-4237-01 ")
 ;;1948
 ;;21,"00093-5270-56 ")
 ;;771
 ;;21,"00093-5271-56 ")
 ;;750
 ;;21,"00093-7295-01 ")
 ;;824
 ;;21,"00093-7295-05 ")
 ;;825
 ;;21,"00093-7296-01 ")
 ;;901
 ;;21,"00093-7296-05 ")
 ;;902
 ;;21,"00115-5311-01 ")
 ;;203
 ;;21,"00115-5322-01 ")
 ;;207
 ;;21,"00172-4217-60 ")
 ;;1987
 ;;21,"00172-4218-60 ")
 ;;1981
 ;;21,"00172-4235-60 ")
 ;;1880
 ;;21,"00172-4235-70 ")
 ;;1881
 ;;21,"00172-4236-60 ")
 ;;1907
 ;;21,"00172-4237-60 ")
 ;;1942
 ;;21,"00172-4238-60 ")
 ;;1871
 ;;21,"00172-4239-60 ")
 ;;1874
 ;;21,"00172-4364-00 ")
 ;;1141
 ;;21,"00172-4364-10 ")
 ;;1142
 ;;21,"00172-4364-60 ")
 ;;1143
 ;;21,"00172-4364-70 ")
 ;;1144
 ;;21,"00172-4365-00 ")
 ;;1191
 ;;21,"00172-4365-10 ")
 ;;1192
 ;;21,"00172-4365-60 ")
 ;;1193
 ;;21,"00172-4365-70 ")
 ;;1194
 ;;21,"00172-4366-60 ")
 ;;1225
 ;;21,"00172-5730-60 ")
 ;;103
 ;;21,"00172-5730-70 ")
 ;;98
 ;;21,"00172-5731-60 ")
 ;;135
 ;;21,"00172-5731-70 ")
 ;;136
 ;;21,"00172-5732-60 ")
 ;;59
 ;;21,"00172-5732-70 ")
 ;;60
 ;;21,"00173-0346-44 ")
 ;;1125
 ;;21,"00173-0346-47 ")
 ;;1123
 ;;21,"00173-0347-43 ")
 ;;1181
 ;;21,"00173-0347-44 ")
 ;;1195
 ;;21,"00173-0347-47 ")
 ;;1169
 ;;21,"00173-0348-43 ")
 ;;1216
 ;;21,"00173-0348-44 ")
 ;;1221
 ;;21,"00173-0348-47 ")
 ;;1211
 ;;21,"00173-0790-01 ")
 ;;2109
 ;
OTHER ; OTHER ROUTINES
 D ^BGP21F10
 D ^BGP21F11
 D ^BGP21F12
 D ^BGP21F13
 D ^BGP21F14
 D ^BGP21F15
 D ^BGP21F16
 D ^BGP21F17
 D ^BGP21F18
 D ^BGP21F19
 D ^BGP21F2
 D ^BGP21F20
 D ^BGP21F21
 D ^BGP21F22
 D ^BGP21F23
 D ^BGP21F24
 D ^BGP21F25
 D ^BGP21F26
 D ^BGP21F27
 D ^BGP21F28
 D ^BGP21F29
 D ^BGP21F3
 D ^BGP21F30
 D ^BGP21F31
 D ^BGP21F32
 D ^BGP21F33
 D ^BGP21F34
 D ^BGP21F35
 D ^BGP21F36
 D ^BGP21F37
 D ^BGP21F38
 D ^BGP21F39
 D ^BGP21F4
 D ^BGP21F40
 D ^BGP21F41
 D ^BGP21F42
 D ^BGP21F43
 D ^BGP21F44
 D ^BGP21F45
 D ^BGP21F46
 D ^BGP21F47
 D ^BGP21F48
 D ^BGP21F49
 D ^BGP21F5
 D ^BGP21F50
 D ^BGP21F51
 D ^BGP21F52
 D ^BGP21F53
 D ^BGP21F54
 D ^BGP21F55
 D ^BGP21F56
 D ^BGP21F57
 D ^BGP21F58
 D ^BGP21F59
 D ^BGP21F6
 D ^BGP21F60
 D ^BGP21F61
 D ^BGP21F62
 D ^BGP21F63
 D ^BGP21F64
 D ^BGP21F65
 D ^BGP21F66
 D ^BGP21F67
 D ^BGP21F68
 D ^BGP21F69
 D ^BGP21F7
 D ^BGP21F70
 D ^BGP21F71
 D ^BGP21F72
 D ^BGP21F73
 D ^BGP21F74
 D ^BGP21F8
 D ^BGP21F9
 Q