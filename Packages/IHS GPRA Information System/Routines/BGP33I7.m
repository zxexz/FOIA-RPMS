BGP33I7 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 23, 2013;
 ;;13.0;IHS CLINICAL REPORTING;**1**;NOV 20, 2012;Build 7
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"54569-2146-00 ")
 ;;144
 ;;21,"54569-2146-01 ")
 ;;145
 ;;21,"54569-2179-00 ")
 ;;1604
 ;;21,"54569-2179-01 ")
 ;;1605
 ;;21,"54569-2462-00 ")
 ;;1527
 ;;21,"54569-2726-00 ")
 ;;2501
 ;;21,"54569-3575-00 ")
 ;;3797
 ;;21,"54569-3575-01 ")
 ;;3798
 ;;21,"54569-3575-02 ")
 ;;3799
 ;;21,"54569-3575-03 ")
 ;;3800
 ;;21,"54569-3724-00 ")
 ;;4061
 ;;21,"54569-3724-01 ")
 ;;4062
 ;;21,"54569-3724-02 ")
 ;;4063
 ;;21,"54569-3724-03 ")
 ;;4064
 ;;21,"54569-3724-04 ")
 ;;4065
 ;;21,"54569-3724-05 ")
 ;;4066
 ;;21,"54569-3732-01 ")
 ;;4296
 ;;21,"54569-3732-02 ")
 ;;4297
 ;;21,"54569-3732-03 ")
 ;;4298
 ;;21,"54569-3810-00 ")
 ;;3395
 ;;21,"54569-3849-00 ")
 ;;3080
 ;;21,"54569-3849-01 ")
 ;;3081
 ;;21,"54569-3894-00 ")
 ;;3082
 ;;21,"54569-4129-00 ")
 ;;2006
 ;;21,"54569-4131-01 ")
 ;;4754
 ;;21,"54569-4132-01 ")
 ;;4952
 ;;21,"54569-4146-00 ")
 ;;2990
 ;;21,"54569-4146-01 ")
 ;;2991
 ;;21,"54569-4521-01 ")
 ;;724
 ;;21,"54569-4529-00 ")
 ;;3941
 ;;21,"54569-4529-01 ")
 ;;3942
 ;;21,"54569-4529-02 ")
 ;;3943
 ;;21,"54569-4659-00 ")
 ;;4864
 ;;21,"54569-4703-00 ")
 ;;1130
 ;;21,"54569-4703-01 ")
 ;;1131
 ;;21,"54569-4787-00 ")
 ;;3250
 ;;21,"54569-4879-00 ")
 ;;1271
 ;;21,"54569-4901-00 ")
 ;;3625
 ;;21,"54569-5231-00 ")
 ;;4575
 ;;21,"54569-5239-00 ")
 ;;2427
 ;;21,"54569-5265-00 ")
 ;;4690
 ;;21,"54569-5291-00 ")
 ;;2207
 ;;21,"54569-5291-01 ")
 ;;2208
 ;;21,"54569-5291-03 ")
 ;;2209
 ;;21,"54569-5319-00 ")
 ;;2007
 ;;21,"54569-5319-01 ")
 ;;2008
 ;;21,"54569-5320-00 ")
 ;;2394
 ;;21,"54569-5340-00 ")
 ;;645
 ;;21,"54569-5483-00 ")
 ;;1862
 ;;21,"54569-5484-00 ")
 ;;1915
 ;;21,"54569-5541-00 ")
 ;;3396
 ;;21,"54569-5541-01 ")
 ;;3397
 ;;21,"54569-5568-00 ")
 ;;646
 ;;21,"54569-5569-00 ")
 ;;725
 ;;21,"54569-5598-00 ")
 ;;3499
 ;;21,"54569-5599-00 ")
 ;;871
 ;;21,"54569-5626-00 ")
 ;;1132
 ;;21,"54569-5627-00 ")
 ;;1272
 ;;21,"54569-5678-00 ")
 ;;1821
 ;;21,"54569-5682-00 ")
 ;;3626
 ;;21,"54569-5818-00 ")
 ;;4067
 ;;21,"54569-5819-00 ")
 ;;3801
 ;;21,"54569-5872-00 ")
 ;;4953
 ;;21,"54569-5895-00 ")
 ;;2680
 ;;21,"54569-5968-00 ")
 ;;2766
 ;;21,"54569-5968-02 ")
 ;;2767
 ;;21,"54569-8013-00 ")
 ;;2210
 ;;21,"54569-8522-00 ")
 ;;2211
 ;;21,"54569-8522-01 ")
 ;;2212
 ;;21,"54569-8579-00 ")
 ;;4068
 ;;21,"54569-8609-00 ")
 ;;3398
 ;;21,"54738-0912-01 ")
 ;;2502
 ;;21,"54738-0913-01 ")
 ;;2537
 ;;21,"54738-0914-01 ")
 ;;2578
 ;;21,"54838-0512-40 ")
 ;;1553
 ;;21,"54838-0523-40 ")
 ;;2353
 ;;21,"54838-0540-70 ")
 ;;1058
 ;;21,"54868-0062-00 ")
 ;;1606
 ;;21,"54868-0062-02 ")
 ;;1607
 ;;21,"54868-0062-04 ")
 ;;1608
 ;;21,"54868-0064-02 ")
 ;;48
 ;;21,"54868-0064-03 ")
 ;;49
 ;;21,"54868-0064-04 ")
 ;;50
 ;;21,"54868-0064-05 ")
 ;;51
 ;;21,"54868-0064-06 ")
 ;;52
 ;;21,"54868-0064-07 ")
 ;;53
 ;;21,"54868-0065-00 ")
 ;;263
 ;;21,"54868-0065-02 ")
 ;;264
 ;;21,"54868-0065-03 ")
 ;;265
 ;;21,"54868-0065-04 ")
 ;;266
 ;;21,"54868-0065-05 ")
 ;;267
 ;;21,"54868-0065-07 ")
 ;;268
 ;;21,"54868-0065-08 ")
 ;;269
 ;;21,"54868-0065-09 ")
 ;;270
 ;;21,"54868-0066-00 ")
 ;;394
 ;;21,"54868-0066-02 ")
 ;;395
 ;;21,"54868-0066-03 ")
 ;;396
 ;;21,"54868-0066-05 ")
 ;;397
 ;;21,"54868-0066-06 ")
 ;;398
 ;;21,"54868-0122-00 ")
 ;;4433
 ;;21,"54868-0122-02 ")
 ;;4434
 ;;21,"54868-0426-00 ")
 ;;506
 ;;21,"54868-0501-00 ")
 ;;500
 ;;21,"54868-0511-00 ")
 ;;2213
 ;;21,"54868-0511-01 ")
 ;;2214
 ;;21,"54868-0511-02 ")
 ;;2215
 ;;21,"54868-0511-05 ")
 ;;2216
 ;;21,"54868-1223-00 ")
 ;;4202
 ;;21,"54868-1223-01 ")
 ;;4203
 ;;21,"54868-1239-00 ")
 ;;1273
 ;;21,"54868-1239-01 ")
 ;;1274
 ;;21,"54868-1239-02 ")
 ;;1275
 ;;21,"54868-1239-03 ")
 ;;1276
 ;;21,"54868-1239-04 ")
 ;;1277
 ;;21,"54868-1344-00 ")
 ;;2538
 ;;21,"54868-1344-02 ")
 ;;2539
 ;;21,"54868-1344-03 ")
 ;;2540
 ;;21,"54868-1344-04 ")
 ;;2541
 ;;21,"54868-1447-00 ")
 ;;1367
 ;;21,"54868-1534-00 ")
 ;;507
 ;;21,"54868-1959-01 ")
 ;;4299
 ;;21,"54868-1959-02 ")
 ;;4300
 ;;21,"54868-1959-04 ")
 ;;4301
 ;;21,"54868-1964-00 ")
 ;;1680
 ;;21,"54868-1964-02 ")
 ;;1681
 ;;21,"54868-1964-03 ")
 ;;1682
 ;;21,"54868-2192-00 ")
 ;;4069
 ;;21,"54868-2192-01 ")
 ;;4070
 ;;21,"54868-2192-03 ")
 ;;4071
 ;;21,"54868-2192-04 ")
 ;;4072
 ;;21,"54868-2192-05 ")
 ;;4073
 ;;21,"54868-2192-06 ")
 ;;4074
 ;;21,"54868-2192-07 ")
 ;;4075
 ;;21,"54868-2192-08 ")
 ;;4076
 ;;21,"54868-2206-01 ")
 ;;501
 ;;21,"54868-2221-00 ")
 ;;2579
 ;;21,"54868-2221-01 ")
 ;;2580
 ;;21,"54868-2221-03 ")
 ;;2581
 ;;21,"54868-2221-04 ")
 ;;2582
 ;;21,"54868-2221-05 ")
 ;;2583
 ;;21,"54868-2284-02 ")
 ;;1566
 ;;21,"54868-2284-06 ")
 ;;1567
 ;;21,"54868-2317-02 ")
 ;;1528
 ;;21,"54868-2317-03 ")
 ;;1529
 ;;21,"54868-2317-04 ")
 ;;1530
 ;;21,"54868-2357-00 ")
 ;;474
 ;;21,"54868-2357-02 ")
 ;;475
 ;;21,"54868-2357-03 ")
 ;;476
 ;;21,"54868-2433-00 ")
 ;;146
 ;;21,"54868-2433-02 ")
 ;;147
 ;;21,"54868-2434-00 ")
 ;;186
 ;;21,"54868-2434-02 ")
 ;;187
 ;;21,"54868-2481-01 ")
 ;;3158
 ;;21,"54868-2481-02 ")
 ;;3159
 ;;21,"54868-2481-03 ")
 ;;3160
 ;;21,"54868-2482-00 ")
 ;;3196
 ;;21,"54868-2546-00 ")
 ;;1391
 ;;21,"54868-2552-00 ")
 ;;1733
 ;;21,"54868-2552-02 ")
 ;;1734
 ;;21,"54868-2571-00 ")
 ;;2503
 ;;21,"54868-2571-01 ")
 ;;2504
 ;;21,"54868-2637-00 ")
 ;;3802
 ;;21,"54868-2637-01 ")
 ;;3803
 ;;21,"54868-2637-03 ")
 ;;3804
 ;;21,"54868-2637-04 ")
 ;;3805
 ;;21,"54868-2637-05 ")
 ;;3806
 ;;21,"54868-2637-06 ")
 ;;3807
 ;;21,"54868-2637-07 ")
 ;;3808
 ;;21,"54868-2637-08 ")
 ;;3809
 ;;21,"54868-2833-00 ")
 ;;2992
 ;;21,"54868-2833-01 ")
 ;;2993
 ;;21,"54868-2835-01 ")
 ;;2994
 ;;21,"54868-2835-02 ")
 ;;2995
 ;;21,"54868-2835-03 ")
 ;;2996
 ;;21,"54868-2976-00 ")
 ;;3399
 ;;21,"54868-2976-02 ")
 ;;3400
 ;;21,"54868-2976-03 ")
 ;;3401
 ;;21,"54868-3033-00 ")
 ;;2009
 ;;21,"54868-3033-02 ")
 ;;2010
 ;;21,"54868-3414-00 ")
 ;;4755
 ;;21,"54868-3414-01 ")
 ;;4756
 ;;21,"54868-3414-02 ")
 ;;4757
 ;;21,"54868-3414-03 ")
 ;;4758
 ;;21,"54868-3414-05 ")
 ;;4759
 ;;21,"54868-3523-00 ")
 ;;4954
 ;;21,"54868-3523-01 ")
 ;;4955
 ;;21,"54868-3523-02 ")
 ;;4956
 ;;21,"54868-3523-03 ")
 ;;4957
 ;;21,"54868-3526-00 ")
 ;;3543
 ;;21,"54868-3533-00 ")
 ;;1584
 ;;21,"54868-3533-01 ")
 ;;1585
 ;;21,"54868-3962-00 ")
 ;;3627
 ;;21,"54868-4023-00 ")
 ;;1368
 ;;21,"54868-4055-00 ")
 ;;4760
 ;;21,"54868-4055-01 ")
 ;;4761
 ;;21,"54868-4065-00 ")
 ;;3251
 ;;21,"54868-4134-00 ")
 ;;922
 ;;21,"54868-4159-00 ")
 ;;1133
 ;;21,"54868-4159-02 ")
 ;;1134
 ;;21,"54868-4159-03 ")
 ;;1135
 ;;21,"54868-4159-04 ")
 ;;1136
 ;;21,"54868-4226-00 ")
 ;;1278
 ;;21,"54868-4226-01 ")
 ;;1279
 ;;21,"54868-4252-00 ")
 ;;4576
 ;;21,"54868-4252-01 ")
 ;;4577
 ;;21,"54868-4252-02 ")
 ;;4578
 ;;21,"54868-4252-03 ")
 ;;4579
 ;;21,"54868-4252-04 ")
 ;;4580
 ;;21,"54868-4253-00 ")
 ;;4865
 ;;21,"54868-4253-01 ")
 ;;4866
 ;;21,"54868-4253-02 ")
 ;;4867
 ;;21,"54868-4253-03 ")
 ;;4868
 ;;21,"54868-4372-00 ")
 ;;3944
 ;;21,"54868-4372-01 ")
 ;;3945
 ;;21,"54868-4372-02 ")
 ;;3946
 ;;21,"54868-4394-00 ")
 ;;2395
 ;;21,"54868-4504-00 ")
 ;;4691
 ;;21,"54868-4504-01 ")
 ;;4692
 ;;21,"54868-4537-00 ")
 ;;2217
 ;;21,"54868-4537-01 ")
 ;;2218
 ;;21,"54868-4537-02 ")
 ;;2219
 ;;21,"54868-4537-03 ")
 ;;2220
 ;;21,"54868-4550-00 ")
 ;;555
 ;;21,"54868-4550-01 ")
 ;;556
 ;;21,"54868-4550-02 ")
 ;;557
 ;;21,"54868-4560-00 ")
 ;;2083
 ;;21,"54868-4560-01 ")
 ;;2084
 ;;21,"54868-4562-00 ")
 ;;2396
 ;;21,"54868-4700-00 ")
 ;;1863
 ;;21,"54868-4700-01 ")
 ;;1864
 ;;21,"54868-4700-02 ")
 ;;1865
 ;;21,"54868-4700-03 ")
 ;;1866
 ;;21,"54868-4700-04 ")
 ;;1867
 ;;21,"54868-4700-05 ")
 ;;1868
 ;;21,"54868-4700-06 ")
 ;;1869
 ;;21,"54868-4775-00 ")
 ;;1916
 ;;21,"54868-4775-01 ")
 ;;1917
 ;;21,"54868-4775-02 ")
 ;;1918
 ;;21,"54868-4775-03 ")
 ;;1919
 ;;21,"54868-4791-00 ")
 ;;3500
 ;;21,"54868-4817-00 ")
 ;;3628
 ;;21,"54868-4817-01 ")
 ;;3629
 ;;21,"54868-4848-00 ")
 ;;2681
 ;;21,"54868-4892-00 ")
 ;;726
 ;;21,"54868-4892-01 ")
 ;;727
 ;;21,"54868-4935-00 ")
 ;;872
 ;;21,"54868-4937-00 ")
 ;;3402
 ;;21,"54868-4937-01 ")
 ;;3403
 ;;21,"54868-4937-02 ")
 ;;3404
 ;;21,"54868-4937-03 ")
 ;;3405
 ;;21,"54868-4938-00 ")
 ;;3544
 ;;21,"54868-4985-00 ")
 ;;1007
 ;;21,"54868-4985-01 ")
 ;;1008
 ;;21,"54868-5080-00 ")
 ;;3252
 ;;21,"54868-5178-00 ")
 ;;1137
 ;;21,"54868-5178-01 ")
 ;;1138
 ;;21,"54868-5178-03 ")
 ;;1139
 ;;21,"54868-5192-00 ")
 ;;1822
 ;;21,"54868-5215-00 ")
 ;;1753
 ;;21,"54868-5215-01 ")
 ;;1754
 ;;21,"54868-5215-02 ")
 ;;1755
 ;;21,"54868-5275-00 ")
 ;;1009
 ;;21,"54868-5275-02 ")
 ;;1010
 ;;21,"54868-5315-00 ")
 ;;1781
 ;;21,"54868-5347-00 ")
 ;;3316
 ;;21,"54868-5365-00 ")
 ;;3586
 ;;21,"54868-5377-00 ")
 ;;647
 ;;21,"54868-5448-00 ")
 ;;2768
 ;;21,"54868-5562-00 ")
 ;;2920
 ;;21,"54868-5635-00 ")
 ;;2487
 ;;21,"54868-5638-00 ")
 ;;3810
 ;;21,"54868-5638-01 ")
 ;;3811
 ;;21,"54868-5638-02 ")
 ;;3812
 ;;21,"54868-5638-03 ")
 ;;3813
 ;;21,"54868-5638-04 ")
 ;;3814
 ;;21,"54868-5638-05 ")
 ;;3815
 ;;21,"54868-5638-06 ")
 ;;3816
 ;;21,"54868-5639-00 ")
 ;;4077
 ;;21,"54868-5639-01 ")
 ;;4078
 ;;21,"54868-5639-02 ")
 ;;4079
 ;;21,"54868-5639-03 ")
 ;;4080
 ;;21,"54868-5658-00 ")
 ;;3947
 ;;21,"54868-5663-00 ")
 ;;2011
 ;;21,"54868-5663-01 ")
 ;;2012
 ;;21,"54868-5663-02 ")
 ;;2013
 ;;21,"54868-5736-00 ")
 ;;873
 ;;21,"54868-5736-01 ")
 ;;874
 ;;21,"54868-5754-00 ")
 ;;4958
 ;;21,"54868-5754-01 ")
 ;;4959
 ;;21,"54868-5754-02 ")
 ;;4960
 ;;21,"54868-5812-00 ")
 ;;2850
 ;;21,"54868-5927-00 ")
 ;;804
 ;;21,"54868-5951-00 ")
 ;;1935
 ;;21,"55045-1463-00 ")
 ;;271
 ;;21,"55045-1463-01 ")
 ;;272
 ;;21,"55045-1463-02 ")
 ;;273
 ;;21,"55045-1463-03 ")
 ;;274
 ;;21,"55045-1463-04 ")
 ;;275
 ;;21,"55045-1463-06 ")
 ;;276
 ;;21,"55045-1463-07 ")
 ;;277
 ;;21,"55045-1463-08 ")
 ;;278
 ;;21,"55045-1463-09 ")
 ;;279
 ;;21,"55045-1592-00 ")
 ;;148
 ;;21,"55045-1592-01 ")
 ;;149
 ;;21,"55045-1592-05 ")
 ;;150
 ;;21,"55045-1592-06 ")
 ;;151
 ;;21,"55045-1592-08 ")
 ;;152
 ;;21,"55045-1592-09 ")
 ;;153
 ;;21,"55045-1682-00 ")
 ;;54
 ;;21,"55045-1682-01 ")
 ;;55
 ;;21,"55045-1682-02 ")
 ;;56
 ;;21,"55045-1682-03 ")
 ;;57
 ;;21,"55045-1682-04 ")
 ;;58
 ;;21,"55045-1682-05 ")
 ;;59
 ;;21,"55045-1682-06 ")
 ;;60
 ;;21,"55045-1682-08 ")
 ;;61
 ;;21,"55045-1682-09 ")
 ;;62
 ;;21,"55045-1715-00 ")
 ;;4435
 ;;21,"55045-1715-01 ")
 ;;4436
 ;;21,"55045-1715-02 ")
 ;;4437
 ;;21,"55045-1715-03 ")
 ;;4438
 ;;21,"55045-1715-07 ")
 ;;4439
 ;;21,"55045-1715-08 ")
 ;;4440
 ;;21,"55045-1715-09 ")
 ;;4441
 ;;21,"55045-1718-00 ")
 ;;1438
 ;;21,"55045-1718-02 ")
 ;;1439
 ;;21,"55045-1718-06 ")
 ;;1440
 ;;21,"55045-1718-08 ")
 ;;1441
 ;;21,"55045-1718-09 ")
 ;;1442
 ;;21,"55045-1721-00 ")
 ;;2542
 ;;21,"55045-1721-08 ")
 ;;2543
 ;;21,"55045-1722-01 ")
 ;;2584
 ;;21,"55045-1722-08 ")
 ;;2585
 ;;21,"55045-1724-00 ")
 ;;4204
 ;;21,"55045-1724-01 ")
 ;;4205
 ;;21,"55045-1724-06 ")
 ;;4206
 ;;21,"55045-1724-08 ")
 ;;4207
 ;;21,"55045-1724-09 ")
 ;;4208
 ;;21,"55045-1741-00 ")
 ;;399
 ;;21,"55045-1741-01 ")
 ;;400
 ;;21,"55045-1741-02 ")
 ;;401
 ;;21,"55045-1741-03 ")
 ;;402
 ;;21,"55045-1741-05 ")
 ;;403
 ;;21,"55045-1741-06 ")
 ;;404
 ;;21,"55045-1741-08 ")
 ;;405
 ;;21,"55045-1741-09 ")
 ;;406
 ;;21,"55045-1794-08 ")
 ;;2505
 ;;21,"55045-1837-01 ")
 ;;1531
 ;;21,"55045-1837-02 ")
 ;;1532
 ;;21,"55045-1837-06 ")
 ;;1533
 ;;21,"55045-1837-08 ")
 ;;1534
 ;;21,"55045-1837-09 ")
 ;;1535
 ;;21,"55045-1884-01 ")
 ;;1609
 ;;21,"55045-1884-02 ")
 ;;1610
 ;;21,"55045-1884-06 ")
 ;;1611
 ;;21,"55045-1884-08 ")
 ;;1612
 ;;21,"55045-1884-09 ")
 ;;1613
 ;;21,"55045-1920-01 ")
 ;;2997
 ;;21,"55045-1920-02 ")
 ;;2998
 ;;21,"55045-1920-06 ")
 ;;2999
 ;;21,"55045-1920-08 ")
 ;;3000
 ;;21,"55045-1920-09 ")
 ;;3001
 ;;21,"55045-1956-01 ")
 ;;3083
 ;;21,"55045-1956-02 ")
 ;;3084
 ;;21,"55045-1956-04 ")
 ;;3085
 ;;21,"55045-1956-06 ")
 ;;3086
 ;;21,"55045-1956-08 ")
 ;;3087
 ;;21,"55045-1956-09 ")
 ;;3088
 ;;21,"55045-1982-02 ")
 ;;3161
 ;;21,"55045-1982-08 ")
 ;;3162
 ;;21,"55045-1982-09 ")
 ;;3163
 ;;21,"55045-2084-01 ")
 ;;1683
 ;;21,"55045-2084-03 ")
 ;;1684
 ;;21,"55045-2084-06 ")
 ;;1685
 ;;21,"55045-2153-01 ")
 ;;477
 ;;21,"55045-2153-08 ")
 ;;478
 ;;21,"55045-2208-01 ")
 ;;3817
 ;;21,"55045-2208-03 ")
 ;;3818
 ;;21,"55045-2208-07 ")
 ;;3819
 ;;21,"55045-2208-08 ")
 ;;3820
 ;;21,"55045-2224-00 ")
 ;;4081
 ;;21,"55045-2224-02 ")
 ;;4082
 ;;21,"55045-2224-07 ")
 ;;4083
 ;;21,"55045-2224-08 ")
 ;;4084
 ;;21,"55045-2509-00 ")
 ;;4302
 ;;21,"55045-2509-01 ")
 ;;4303
 ;;21,"55045-2509-06 ")
 ;;4304
 ;;21,"55045-2509-08 ")
 ;;4305