BGP2TA5 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 12, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"55289-0867-30 ")
 ;;2442
 ;;21,"55289-0878-30 ")
 ;;1329
 ;;21,"55289-0884-30 ")
 ;;2166
 ;;21,"55289-0884-90 ")
 ;;2167
 ;;21,"55289-0917-30 ")
 ;;2035
 ;;21,"55289-0917-90 ")
 ;;2036
 ;;21,"55289-0929-08 ")
 ;;1592
 ;;21,"55289-0929-30 ")
 ;;1593
 ;;21,"55289-0963-30 ")
 ;;305
 ;;21,"55289-0981-30 ")
 ;;1393
 ;;21,"55289-0984-30 ")
 ;;831
 ;;21,"55390-0712-01 ")
 ;;1162
 ;;21,"55887-0099-30 ")
 ;;754
 ;;21,"55887-0175-30 ")
 ;;88
 ;;21,"55887-0223-30 ")
 ;;262
 ;;21,"55887-0223-90 ")
 ;;263
 ;;21,"55887-0227-30 ")
 ;;832
 ;;21,"55887-0227-60 ")
 ;;833
 ;;21,"55887-0304-30 ")
 ;;1127
 ;;21,"55887-0304-60 ")
 ;;1128
 ;;21,"55887-0304-90 ")
 ;;1129
 ;;21,"55887-0322-30 ")
 ;;206
 ;;21,"55887-0322-60 ")
 ;;207
 ;;21,"55887-0322-90 ")
 ;;208
 ;;21,"55887-0322-92 ")
 ;;209
 ;;21,"55887-0366-30 ")
 ;;75
 ;;21,"55887-0385-30 ")
 ;;306
 ;;21,"55887-0385-90 ")
 ;;307
 ;;21,"55887-0425-30 ")
 ;;1212
 ;;21,"55887-0425-60 ")
 ;;1213
 ;;21,"55887-0425-90 ")
 ;;1214
 ;;21,"55887-0426-20 ")
 ;;1268
 ;;21,"55887-0426-30 ")
 ;;1269
 ;;21,"55887-0426-60 ")
 ;;1270
 ;;21,"55887-0426-90 ")
 ;;1271
 ;;21,"55887-0430-30 ")
 ;;490
 ;;21,"55887-0532-01 ")
 ;;1330
 ;;21,"55887-0532-30 ")
 ;;1331
 ;;21,"55887-0532-60 ")
 ;;1332
 ;;21,"55887-0532-90 ")
 ;;1333
 ;;21,"55887-0558-30 ")
 ;;834
 ;;21,"55887-0558-60 ")
 ;;835
 ;;21,"55887-0558-90 ")
 ;;836
 ;;21,"55887-0569-30 ")
 ;;2037
 ;;21,"55887-0569-60 ")
 ;;2038
 ;;21,"55887-0569-90 ")
 ;;2039
 ;;21,"55887-0581-01 ")
 ;;1832
 ;;21,"55887-0581-30 ")
 ;;1833
 ;;21,"55887-0581-60 ")
 ;;1834
 ;;21,"55887-0581-90 ")
 ;;1835
 ;;21,"55887-0582-01 ")
 ;;565
 ;;21,"55887-0582-30 ")
 ;;566
 ;;21,"55887-0589-30 ")
 ;;2168
 ;;21,"55887-0589-90 ")
 ;;2169
 ;;21,"55887-0590-30 ")
 ;;1693
 ;;21,"55887-0590-60 ")
 ;;1694
 ;;21,"55887-0590-90 ")
 ;;1695
 ;;21,"55887-0591-01 ")
 ;;1594
 ;;21,"55887-0591-10 ")
 ;;1595
 ;;21,"55887-0591-20 ")
 ;;1596
 ;;21,"55887-0591-30 ")
 ;;1597
 ;;21,"55887-0591-60 ")
 ;;1598
 ;;21,"55887-0591-90 ")
 ;;1599
 ;;21,"55887-0594-30 ")
 ;;1163
 ;;21,"55887-0594-90 ")
 ;;1164
 ;;21,"55887-0595-30 ")
 ;;1029
 ;;21,"55887-0595-90 ")
 ;;1030
 ;;21,"55887-0596-01 ")
 ;;957
 ;;21,"55887-0596-30 ")
 ;;958
 ;;21,"55887-0596-60 ")
 ;;959
 ;;21,"55887-0596-90 ")
 ;;960
 ;;21,"55887-0612-01 ")
 ;;662
 ;;21,"55887-0612-30 ")
 ;;663
 ;;21,"55887-0612-60 ")
 ;;664
 ;;21,"55887-0612-90 ")
 ;;665
 ;;21,"55887-0612-92 ")
 ;;666
 ;;21,"55887-0875-30 ")
 ;;146
 ;;21,"55887-0984-30 ")
 ;;755
 ;;21,"55953-0132-80 ")
 ;;405
 ;;21,"55953-0133-40 ")
 ;;491
 ;;21,"57866-0064-09 ")
 ;;1437
 ;;21,"57866-0065-01 ")
 ;;1439
 ;;21,"57866-0274-01 ")
 ;;1130
 ;;21,"57866-0275-02 ")
 ;;1054
 ;;21,"57866-2000-01 ")
 ;;2170
 ;;21,"57866-3138-01 ")
 ;;1092
 ;;21,"57866-4000-01 ")
 ;;1600
 ;;21,"57866-4420-01 ")
 ;;2292
 ;;21,"57866-4421-01 ")
 ;;2326
 ;;21,"57866-4423-01 ")
 ;;2387
 ;;21,"57866-4424-01 ")
 ;;2354
 ;;21,"57866-5000-01 ")
 ;;1836
 ;;21,"57866-6103-01 ")
 ;;567
 ;;21,"57866-6103-02 ")
 ;;568
 ;;21,"57866-6103-03 ")
 ;;569
 ;;21,"57866-6103-04 ")
 ;;570
 ;;21,"57866-6106-01 ")
 ;;492
 ;;21,"57866-6106-02 ")
 ;;493
 ;;21,"57866-6106-03 ")
 ;;494
 ;;21,"57866-6106-04 ")
 ;;495
 ;;21,"57866-6705-01 ")
 ;;1601
 ;;21,"57866-6706-01 ")
 ;;1837
 ;;21,"57866-6859-01 ")
 ;;961
 ;;21,"57866-6859-02 ")
 ;;962
 ;;21,"57866-6859-03 ")
 ;;963
 ;;21,"57866-6859-04 ")
 ;;964
 ;;21,"57866-7985-01 ")
 ;;2171
 ;;21,"57866-7989-01 ")
 ;;2040
 ;;21,"57866-7992-01 ")
 ;;1440
 ;;21,"57866-8700-01 ")
 ;;2041
 ;;21,"58016-0065-00 ")
 ;;89
 ;;21,"58016-0065-30 ")
 ;;90
 ;;21,"58016-0065-60 ")
 ;;91
 ;;21,"58016-0065-90 ")
 ;;92
 ;;21,"58016-0069-00 ")
 ;;1928
 ;;21,"58016-0069-30 ")
 ;;1929
 ;;21,"58016-0069-60 ")
 ;;1930
 ;;21,"58016-0069-90 ")
 ;;1931
 ;;21,"58016-0228-00 ")
 ;;1272
 ;;21,"58016-0228-02 ")
 ;;1273
 ;;21,"58016-0228-30 ")
 ;;1274
 ;;21,"58016-0228-60 ")
 ;;1275
 ;;21,"58016-0228-90 ")
 ;;1276
 ;;21,"58016-0363-00 ")
 ;;1838
 ;;21,"58016-0363-14 ")
 ;;1839
 ;;21,"58016-0363-21 ")
 ;;1840
 ;;21,"58016-0363-30 ")
 ;;1841
 ;;21,"58016-0363-60 ")
 ;;1842
 ;;21,"58016-0420-00 ")
 ;;147
 ;;21,"58016-0420-10 ")
 ;;148
 ;;21,"58016-0420-30 ")
 ;;149
 ;;21,"58016-0420-60 ")
 ;;150
 ;;21,"58016-0420-90 ")
 ;;151
 ;;21,"58016-0564-00 ")
 ;;2172
 ;;21,"58016-0564-30 ")
 ;;2173
 ;;21,"58016-0564-60 ")
 ;;2174
 ;;21,"58016-0564-90 ")
 ;;2175
 ;;21,"58016-0571-00 ")
 ;;837
 ;;21,"58016-0571-30 ")
 ;;838
 ;;21,"58016-0571-60 ")
 ;;839
 ;;21,"58016-0571-90 ")
 ;;840
 ;;21,"58016-0579-00 ")
 ;;965
 ;;21,"58016-0579-20 ")
 ;;966
 ;;21,"58016-0579-30 ")
 ;;967
 ;;21,"58016-0579-60 ")
 ;;968
 ;;21,"58016-0580-00 ")
 ;;667
 ;;21,"58016-0580-20 ")
 ;;668
 ;;21,"58016-0580-30 ")
 ;;669
 ;;21,"58016-0580-60 ")
 ;;670
 ;;21,"58016-0581-00 ")
 ;;841
 ;;21,"58016-0581-20 ")
 ;;842
 ;;21,"58016-0581-30 ")
 ;;843
 ;;21,"58016-0581-60 ")
 ;;844
 ;;21,"58016-0646-00 ")
 ;;2042
 ;;21,"58016-0646-30 ")
 ;;2043
 ;;21,"58016-0646-60 ")
 ;;2044
 ;;21,"58016-0646-90 ")
 ;;2045
 ;;21,"58016-0685-00 ")
 ;;210
 ;;21,"58016-0685-10 ")
 ;;211
 ;;21,"58016-0685-30 ")
 ;;212
 ;;21,"58016-0685-60 ")
 ;;213
 ;;21,"58016-0685-90 ")
 ;;214
 ;;21,"58016-0686-00 ")
 ;;264
 ;;21,"58016-0686-10 ")
 ;;265
 ;;21,"58016-0686-30 ")
 ;;266
 ;;21,"58016-0686-60 ")
 ;;267
 ;;21,"58016-0686-90 ")
 ;;268
 ;;21,"58016-0760-30 ")
 ;;1843
 ;;21,"58016-0917-00 ")
 ;;2176
 ;;21,"58016-0917-30 ")
 ;;2177
 ;;21,"58016-0917-60 ")
 ;;2178
 ;;21,"58016-0917-90 ")
 ;;2179
 ;;21,"58016-0956-00 ")
 ;;2180
 ;;21,"58016-0956-30 ")
 ;;2181
 ;;21,"58016-0956-60 ")
 ;;2182
 ;;21,"58016-0956-90 ")
 ;;2183
 ;;21,"58016-0963-00 ")
 ;;1602
 ;;21,"58016-0963-30 ")
 ;;1603
 ;;21,"58016-0963-60 ")
 ;;1604
 ;;21,"58016-0963-90 ")
 ;;1605
 ;;21,"58016-0998-00 ")
 ;;1844
 ;;21,"58016-0998-30 ")
 ;;1845
 ;;21,"58016-0998-60 ")
 ;;1846
 ;;21,"58016-0998-90 ")
 ;;1847
 ;;21,"58177-0341-04 ")
 ;;308
 ;;21,"58177-0342-04 ")
 ;;152
 ;;21,"58177-0342-08 ")
 ;;153
 ;;21,"58177-0343-04 ")
 ;;215
 ;;21,"58177-0343-08 ")
 ;;216
 ;;21,"58177-0344-04 ")
 ;;269
 ;;21,"58177-0344-08 ")
 ;;270
 ;;21,"58864-0006-30 ")
 ;;1848
 ;;21,"58864-0066-28 ")
 ;;496
 ;;21,"58864-0104-30 ")
 ;;1055
 ;;21,"58864-0510-15 ")
 ;;1131
 ;;21,"58864-0603-15 ")
 ;;1606
 ;;21,"58864-0603-30 ")
 ;;1607
 ;;21,"58864-0603-90 ")
 ;;1608
 ;;21,"58864-0618-15 ")
 ;;2046
 ;;21,"58864-0618-30 ")
 ;;2047
 ;;21,"58864-0654-30 ")
 ;;1609
 ;;21,"58864-0661-30 ")
 ;;1460
 ;;21,"58864-0667-30 ")
 ;;1093
 ;;21,"58864-0674-30 ")
 ;;2529
 ;;21,"58864-0750-30 ")
 ;;1932
 ;;21,"58864-0753-30 ")
 ;;2184
 ;;21,"58864-0753-90 ")
 ;;2185
 ;;21,"58864-0754-30 ")
 ;;969
 ;;21,"58864-0755-30 ")
 ;;671
 ;;21,"58864-0762-30 ")
 ;;845
 ;;21,"58864-0838-30 ")
 ;;1466
 ;;21,"58864-0847-30 ")
 ;;2443
 ;;21,"58864-0859-30 ")
 ;;2293
 ;;21,"58864-0863-30 ")
 ;;2355
 ;;21,"58864-0869-30 ")
 ;;2327
 ;;21,"59762-0220-01 ")
 ;;1368
 ;;21,"59762-0222-01 ")
 ;;1366
 ;;21,"59762-0223-01 ")
 ;;1373
 ;;21,"59762-2140-01 ")
 ;;2557
 ;;21,"59762-2140-06 ")
 ;;2558
 ;;21,"59762-2141-01 ")
 ;;2569
 ;;21,"59762-2141-06 ")
 ;;2570
 ;;21,"59762-2142-01 ")
 ;;2584
 ;;21,"59762-2142-06 ")
 ;;2585
 ;;21,"59762-2270-01 ")
 ;;1696
 ;;21,"59762-2270-03 ")
 ;;1697
 ;;21,"59762-2270-07 ")
 ;;1698
 ;;21,"59762-2271-01 ")
 ;;2186
 ;;21,"59762-2271-03 ")
 ;;2187
 ;;21,"59762-2271-07 ")
 ;;2188
 ;;21,"59762-2272-01 ")
 ;;1610
 ;;21,"59762-2272-03 ")
 ;;1611
 ;;21,"59762-2272-07 ")
 ;;1612
 ;;21,"59762-2273-01 ")
 ;;1849
 ;;21,"59762-2273-03 ")
 ;;1850
 ;;21,"59762-2273-07 ")
 ;;1851
 ;;21,"59762-2274-01 ")
 ;;1933
 ;;21,"59762-2274-03 ")
 ;;1934
 ;;21,"59762-2274-07 ")
 ;;1935
 ;;21,"59762-2275-01 ")
 ;;2048
 ;;21,"59762-2275-03 ")
 ;;2049
 ;;21,"59762-2275-07 ")
 ;;2050
 ;;21,"59762-3146-01 ")
 ;;154
 ;;21,"59762-3146-02 ")
 ;;155
 ;;21,"59762-3147-01 ")
 ;;217
 ;;21,"59762-3147-02 ")
 ;;218
 ;;21,"59762-3148-01 ")
 ;;271
 ;;21,"59762-3148-02 ")
 ;;272
 ;;21,"59762-3293-01 ")
 ;;1215
 ;;21,"59762-3293-02 ")
 ;;1216
 ;;21,"59762-3293-03 ")
 ;;1217
 ;;21,"59762-3293-04 ")
 ;;1218
 ;;21,"59762-3294-01 ")
 ;;1277
 ;;21,"59762-3294-02 ")
 ;;1278
 ;;21,"59762-3294-03 ")
 ;;1279
 ;;21,"59762-3294-04 ")
 ;;1280
 ;;21,"59762-3295-01 ")
 ;;1334
 ;;21,"59762-3295-02 ")
 ;;1335
 ;;21,"59762-3295-03 ")
 ;;1336
 ;;21,"59762-3295-04 ")
 ;;1337
 ;;21,"59762-5019-01 ")
 ;;2388
 ;;21,"59762-5020-01 ")
 ;;2294
 ;;21,"59762-5021-01 ")
 ;;2328
 ;;21,"59762-5022-01 ")
 ;;2356
 ;;21,"59762-5250-01 ")
 ;;1168
 ;;21,"59762-5250-04 ")
 ;;1169
 ;;21,"59762-5251-01 ")
 ;;1176
 ;;21,"59762-5251-04 ")
 ;;1177
 ;;21,"59772-5160-05 ")
 ;;333
 ;;21,"59772-5161-05 ")
 ;;338
 ;;21,"59772-5162-05 ")
 ;;342
 ;;21,"59772-5163-05 ")
 ;;348
 ;;21,"59772-7045-01 ")
 ;;406
 ;;21,"59772-7045-03 ")
 ;;407
 ;;21,"59772-7046-03 ")
 ;;497
 ;;21,"59772-7047-01 ")
 ;;571
 ;;21,"59772-7047-03 ")
 ;;572
 ;;21,"59772-7048-01 ")
 ;;361
 ;;21,"60346-0595-30 ")
 ;;2051
 ;;21,"60346-0612-30 ")
 ;;970
 ;;21,"60346-0612-90 ")
 ;;971
 ;;21,"60346-0871-03 ")
 ;;1613
 ;;21,"60346-0871-30 ")
 ;;1614
 ;;21,"60429-0029-01 ")
 ;;408
 ;;21,"60429-0029-10 ")
 ;;409
 ;;21,"60429-0030-01 ")
 ;;498
 ;;21,"60429-0030-10 ")
 ;;499
 ;;21,"60429-0031-01 ")
 ;;573
 ;;21,"60429-0031-10 ")
 ;;574
 ;;21,"60429-0038-01 ")
 ;;2407
 ;;21,"60429-0039-01 ")
 ;;2484
 ;;21,"60429-0039-10 ")
 ;;2485
 ;;21,"60429-0040-01 ")
 ;;2530
 ;;21,"60429-0040-10 ")
 ;;2531
 ;;21,"60429-0041-01 ")
 ;;2444
 ;;21,"60429-0041-10 ")
 ;;2445
 ;;21,"60429-0044-01 ")
 ;;1219
 ;;21,"60429-0044-10 ")
 ;;1220
 ;;21,"60429-0045-01 ")
 ;;1281
 ;;21,"60429-0045-10 ")
 ;;1282
 ;;21,"60429-0046-01 ")
 ;;1338
 ;;21,"60429-0046-10 ")
 ;;1339
 ;;21,"60429-0071-01 ")
 ;;756
 ;;21,"60429-0071-05 ")
 ;;757
 ;;21,"60429-0071-10 ")
 ;;758
 ;;21,"60429-0071-27 ")
 ;;759
 ;;21,"60429-0071-30 ")
 ;;760
 ;;21,"60429-0071-60 ")
 ;;761
 ;;21,"60429-0071-90 ")
 ;;762
 ;;21,"60429-0072-01 ")
 ;;972
 ;;21,"60429-0072-05 ")
 ;;973
 ;;21,"60429-0072-10 ")
 ;;974
 ;;21,"60429-0072-27 ")
 ;;975
 ;;21,"60429-0072-30 ")
 ;;976
 ;;21,"60429-0072-60 ")
 ;;977
 ;;21,"60429-0072-90 ")
 ;;978
 ;;21,"60429-0073-01 ")
 ;;672
 ;;21,"60429-0073-05 ")
 ;;673
 ;;21,"60429-0073-10 ")
 ;;674
 ;;21,"60429-0073-27 ")
 ;;675
 ;;21,"60429-0073-30 ")
 ;;676
 ;;21,"60429-0073-60 ")
 ;;677
 ;;21,"60429-0073-90 ")
 ;;678
 ;;21,"60429-0074-01 ")
 ;;846
 ;;21,"60429-0074-05 ")
 ;;847
 ;;21,"60429-0074-10 ")
 ;;848
 ;;21,"60429-0074-27 ")
 ;;849
 ;;21,"60429-0074-30 ")
 ;;850
 ;;21,"60429-0074-60 ")
 ;;851
 ;;21,"60429-0074-90 ")
 ;;852
 ;;21,"60429-0257-01 ")
 ;;362
 ;;21,"60429-0728-01 ")
 ;;1699
 ;;21,"60429-0728-10 ")
 ;;1700
 ;;21,"60429-0728-30 ")
 ;;1701
 ;;21,"60429-0728-90 ")
 ;;1702
 ;;21,"60429-0729-01 ")
 ;;2189
 ;;21,"60429-0729-10 ")
 ;;2190
 ;;21,"60429-0729-45 ")
 ;;2191
 ;;21,"60429-0729-90 ")
 ;;2192
 ;;21,"60429-0730-01 ")
 ;;1615
 ;;21,"60429-0730-10 ")
 ;;1616
 ;;21,"60429-0730-30 ")
 ;;1617
 ;;21,"60429-0730-45 ")
 ;;1618
 ;;21,"60429-0730-90 ")
 ;;1619
 ;;21,"60429-0731-01 ")
 ;;1852
 ;;21,"60429-0731-10 ")
 ;;1853
 ;;21,"60429-0731-30 ")
 ;;1854
 ;;21,"60429-0731-45 ")
 ;;1855
 ;;21,"60429-0731-90 ")
 ;;1856
 ;;21,"60429-0732-10 ")
 ;;1936
 ;;21,"60429-0732-30 ")
 ;;1937
 ;;21,"60429-0732-90 ")
 ;;1938
 ;;21,"60429-0733-01 ")
 ;;2052
 ;;21,"60429-0733-10 ")
 ;;2053
 ;;21,"60429-0733-30 ")
 ;;2054
 ;;21,"60429-0733-45 ")
 ;;2055
 ;;21,"60429-0733-90 ")
 ;;2056
 ;;21,"60429-0755-10 ")
 ;;1056
 ;;21,"60429-0755-45 ")
 ;;1057
 ;;21,"60429-0755-90 ")
 ;;1058
 ;;21,"60429-0756-10 ")
 ;;1094
 ;;21,"60429-0756-18 ")
 ;;1095
 ;;21,"60429-0756-45 ")
 ;;1096
 ;;21,"60429-0756-90 ")
 ;;1097
 ;;21,"60429-0757-10 ")
 ;;1132
 ;;21,"60429-0757-18 ")
 ;;1133
 ;;21,"60429-0757-45 ")
 ;;1134
 ;;21,"60429-0757-90 ")
 ;;1135
 ;;21,"60505-0003-06 ")
 ;;410
 ;;21,"60505-0003-09 ")
 ;;411
 ;;21,"60505-0004-06 ")
 ;;500
 ;;21,"60505-0004-09 ")
 ;;501
 ;;21,"60505-0005-06 ")
 ;;575
 ;;21,"60505-0005-09 ")
 ;;576
 ;;21,"60505-0006-06 ")
 ;;363
 ;;21,"60505-0006-09 ")
 ;;364
 ;;21,"60505-0049-07 ")
 ;;763
 ;;21,"60505-0049-09 ")
 ;;764
 ;;21,"60505-0050-07 ")
 ;;979
 ;;21,"60505-0050-09 ")
 ;;980
 ;;21,"60505-0051-07 ")
 ;;679
 ;;21,"60505-0051-09 ")
 ;;680
 ;;21,"60505-0052-07 ")
 ;;853
 ;;21,"60505-0052-09 ")
 ;;854
 ;;21,"60505-0172-00 ")
 ;;2389
 ;;21,"60505-0172-01 ")
 ;;2390
 ;;21,"60505-0173-00 ")
 ;;2295
 ;;21,"60505-0173-01 ")
 ;;2296
 ;;21,"60505-0174-00 ")
 ;;2329
 ;;21,"60505-0174-01 ")
 ;;2330