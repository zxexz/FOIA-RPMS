BGP21O3 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"54868-0029-02 ")
 ;;433
 ;;21,"54868-0029-03 ")
 ;;434
 ;;21,"54868-0029-05 ")
 ;;435
 ;;21,"54868-0029-06 ")
 ;;436
 ;;21,"54868-0029-07 ")
 ;;437
 ;;21,"54868-1268-01 ")
 ;;267
 ;;21,"54868-1269-01 ")
 ;;163
 ;;21,"54868-1438-00 ")
 ;;473
 ;;21,"54868-1438-01 ")
 ;;474
 ;;21,"54868-1438-02 ")
 ;;475
 ;;21,"54868-1461-01 ")
 ;;335
 ;;21,"54868-1461-02 ")
 ;;336
 ;;21,"54868-1841-01 ")
 ;;164
 ;;21,"54868-1883-01 ")
 ;;205
 ;;21,"54868-1894-02 ")
 ;;154
 ;;21,"54868-2710-00 ")
 ;;311
 ;;21,"54868-2710-01 ")
 ;;312
 ;;21,"54868-2822-00 ")
 ;;155
 ;;21,"54868-3283-00 ")
 ;;91
 ;;21,"54868-3283-01 ")
 ;;92
 ;;21,"54868-3283-02 ")
 ;;93
 ;;21,"54868-3702-00 ")
 ;;147
 ;;21,"54868-4172-00 ")
 ;;118
 ;;21,"54868-4172-01 ")
 ;;119
 ;;21,"54868-4172-02 ")
 ;;120
 ;;21,"54868-4182-00 ")
 ;;240
 ;;21,"54868-4264-00 ")
 ;;251
 ;;21,"54868-4295-00 ")
 ;;190
 ;;21,"54868-4392-00 ")
 ;;245
 ;;21,"54868-4481-00 ")
 ;;142
 ;;21,"54868-4516-00 ")
 ;;34
 ;;21,"54868-4517-00 ")
 ;;24
 ;;21,"54868-4518-00 ")
 ;;13
 ;;21,"54868-4630-00 ")
 ;;45
 ;;21,"54868-4847-00 ")
 ;;65
 ;;21,"54868-4972-00 ")
 ;;134
 ;;21,"54868-4972-01 ")
 ;;135
 ;;21,"54868-5294-00 ")
 ;;206
 ;;21,"54868-5362-00 ")
 ;;224
 ;;21,"54868-5531-00 ")
 ;;291
 ;;21,"54868-5531-01 ")
 ;;292
 ;;21,"54868-5547-00 ")
 ;;260
 ;;21,"54868-5547-01 ")
 ;;261
 ;;21,"54868-5547-02 ")
 ;;262
 ;;21,"54868-5637-00 ")
 ;;229
 ;;21,"54868-5844-00 ")
 ;;193
 ;;21,"54868-5857-00 ")
 ;;174
 ;;21,"54868-5857-01 ")
 ;;175
 ;;21,"54868-5858-00 ")
 ;;182
 ;;21,"54868-5858-01 ")
 ;;183
 ;;21,"54868-5936-00 ")
 ;;3
 ;;21,"54868-5937-00 ")
 ;;6
 ;;21,"54868-5989-00 ")
 ;;197
 ;;21,"54868-5990-00 ")
 ;;195
 ;;21,"54868-5995-00 ")
 ;;235
 ;;21,"55045-1312-03 ")
 ;;438
 ;;21,"55045-1312-07 ")
 ;;439
 ;;21,"55045-1452-02 ")
 ;;379
 ;;21,"55045-1452-03 ")
 ;;380
 ;;21,"55045-1452-08 ")
 ;;381
 ;;21,"55045-1452-09 ")
 ;;382
 ;;21,"55045-1638-01 ")
 ;;294
 ;;21,"55045-1868-03 ")
 ;;207
 ;;21,"55045-2520-07 ")
 ;;208
 ;;21,"55045-2819-00 ")
 ;;241
 ;;21,"55045-2919-01 ")
 ;;246
 ;;21,"55045-3054-01 ")
 ;;252
 ;;21,"55045-3063-00 ")
 ;;176
 ;;21,"55045-3351-00 ")
 ;;225
 ;;21,"55045-3354-00 ")
 ;;230
 ;;21,"55045-3388-01 ")
 ;;14
 ;;21,"55045-3416-00 ")
 ;;236
 ;;21,"55045-3686-01 ")
 ;;25
 ;;21,"55045-3695-08 ")
 ;;184
 ;;21,"55045-3768-08 ")
 ;;337
 ;;21,"55111-0625-60 ")
 ;;111
 ;;21,"55111-0626-60 ")
 ;;121
 ;;21,"55289-0155-97 ")
 ;;440
 ;;21,"55289-0259-01 ")
 ;;383
 ;;21,"55289-0259-30 ")
 ;;384
 ;;21,"55289-0259-60 ")
 ;;385
 ;;21,"55289-0260-01 ")
 ;;441
 ;;21,"55289-0260-06 ")
 ;;442
 ;;21,"55289-0260-20 ")
 ;;443
 ;;21,"55289-0260-30 ")
 ;;444
 ;;21,"55289-0260-60 ")
 ;;445
 ;;21,"55289-0260-97 ")
 ;;446
 ;;21,"55289-0317-30 ")
 ;;295
 ;;21,"55289-0317-60 ")
 ;;296
 ;;21,"55289-0751-30 ")
 ;;282
 ;;21,"55289-0751-60 ")
 ;;283
 ;;21,"55289-0785-30 ")
 ;;298
 ;;21,"55289-0785-60 ")
 ;;299
 ;;21,"55289-0788-60 ")
 ;;293
 ;;21,"55289-0789-30 ")
 ;;476
 ;;21,"55289-0961-15 ")
 ;;94
 ;;21,"55289-0961-30 ")
 ;;95
 ;;21,"55289-0989-21 ")
 ;;46
 ;;21,"55289-0989-30 ")
 ;;47
 ;;21,"55289-0990-21 ")
 ;;66
 ;;21,"55289-0990-30 ")
 ;;67
 ;;21,"55887-0079-60 ")
 ;;465
 ;;21,"55887-0120-90 ")
 ;;68
 ;;21,"55887-0726-20 ")
 ;;268
 ;;21,"57866-4651-02 ")
 ;;386
 ;;21,"57866-4652-02 ")
 ;;447
 ;;21,"57866-4653-01 ")
 ;;466
 ;;21,"58016-4604-01 ")
 ;;26
 ;;21,"58016-4812-01 ")
 ;;15
 ;;21,"58016-4813-01 ")
 ;;35
 ;;21,"58864-0501-17 ")
 ;;387
 ;;21,"58864-0658-30 ")
 ;;96
 ;;21,"58864-0694-30 ")
 ;;69
 ;;21,"59310-0175-40 ")
 ;;177
 ;;21,"59310-0177-80 ")
 ;;185
 ;;21,"59310-0202-40 ")
 ;;178
 ;;21,"59310-0204-80 ")
 ;;186
 ;;21,"59930-1507-01 ")
 ;;477
 ;;21,"59930-1507-02 ")
 ;;478
 ;;21,"59930-1608-01 ")
 ;;485
 ;;21,"60346-0596-00 ")
 ;;448
 ;;21,"60346-0596-06 ")
 ;;449
 ;;21,"60346-0596-14 ")
 ;;450
 ;;21,"60346-0596-20 ")
 ;;451
 ;;21,"60346-0596-25 ")
 ;;452
 ;;21,"60346-0596-30 ")
 ;;453
 ;;21,"60346-0596-60 ")
 ;;454
 ;;21,"60346-0596-90 ")
 ;;455
 ;;21,"60346-0669-00 ")
 ;;388
 ;;21,"60346-0669-20 ")
 ;;389
 ;;21,"60346-0669-30 ")
 ;;390
 ;;21,"60346-0669-44 ")
 ;;391
 ;;21,"60346-0669-60 ")
 ;;392
 ;;21,"60346-0669-90 ")
 ;;393
 ;;21,"60346-0713-30 ")
 ;;338
 ;;21,"60346-0713-60 ")
 ;;339
 ;;21,"60346-0717-30 ")
 ;;284
 ;;21,"60598-0061-60 ")
 ;;269
 ;;21,"60793-0011-08 ")
 ;;156
 ;;21,"60793-0011-14 ")
 ;;157
 ;;21,"60793-0120-01 ")
 ;;159
 ;;21,"61570-0019-01 ")
 ;;456
 ;;21,"63402-0711-01 ")
 ;;198
 ;;21,"63402-0712-01 ")
 ;;196
 ;;21,"63629-1639-01 ")
 ;;97
 ;;21,"63629-1639-02 ")
 ;;98
 ;;21,"63629-1639-03 ")
 ;;99
 ;;21,"63629-2792-01 ")
 ;;394
 ;;21,"63629-2792-02 ")
 ;;395
 ;;21,"63629-3551-01 ")
 ;;340
 ;;21,"65162-0324-10 ")
 ;;396
 ;;21,"65162-0324-11 ")
 ;;397
 ;;21,"65162-0325-10 ")
 ;;457
 ;;21,"65162-0325-11 ")
 ;;458