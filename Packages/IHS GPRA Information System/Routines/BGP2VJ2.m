BGP2VJ2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 27, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"55289-0260-20 ")
 ;;394
 ;;21,"55289-0260-30 ")
 ;;395
 ;;21,"55289-0260-60 ")
 ;;396
 ;;21,"55289-0789-30 ")
 ;;397
 ;;21,"55289-0961-15 ")
 ;;398
 ;;21,"55289-0961-30 ")
 ;;399
 ;;21,"55289-0989-21 ")
 ;;400
 ;;21,"55289-0989-30 ")
 ;;401
 ;;21,"55289-0990-21 ")
 ;;402
 ;;21,"55289-0990-30 ")
 ;;403
 ;;21,"55422-0814-16 ")
 ;;404
 ;;21,"55887-0079-60 ")
 ;;405
 ;;21,"55887-0120-90 ")
 ;;406
 ;;21,"55887-0277-30 ")
 ;;407
 ;;21,"55887-0678-60 ")
 ;;408
 ;;21,"55887-0847-60 ")
 ;;409
 ;;21,"55887-0847-90 ")
 ;;410
 ;;21,"57866-4651-02 ")
 ;;411
 ;;21,"57866-4652-02 ")
 ;;412
 ;;21,"58016-4604-01 ")
 ;;413
 ;;21,"58016-4813-01 ")
 ;;414
 ;;21,"58864-0658-30 ")
 ;;415
 ;;21,"58864-0694-30 ")
 ;;416
 ;;21,"59243-0021-10 ")
 ;;417
 ;;21,"59310-0175-40 ")
 ;;418
 ;;21,"59310-0177-80 ")
 ;;419
 ;;21,"59310-0202-40 ")
 ;;420
 ;;21,"59310-0204-80 ")
 ;;421
 ;;21,"60258-0335-16 ")
 ;;422
 ;;21,"60258-0336-01 ")
 ;;423
 ;;21,"60258-0371-16 ")
 ;;424
 ;;21,"60346-0282-74 ")
 ;;425
 ;;21,"60432-0157-06 ")
 ;;426
 ;;21,"60432-0157-21 ")
 ;;427
 ;;21,"60505-0802-01 ")
 ;;428
 ;;21,"60505-0802-02 ")
 ;;429
 ;;21,"60598-0061-60 ")
 ;;430
 ;;21,"60793-0010-12 ")
 ;;431
 ;;21,"60793-0010-60 ")
 ;;432
 ;;21,"60793-0011-08 ")
 ;;433
 ;;21,"60793-0011-14 ")
 ;;434
 ;;21,"60793-0120-01 ")
 ;;435
 ;;21,"61392-0016-30 ")
 ;;436
 ;;21,"61392-0016-45 ")
 ;;437
 ;;21,"61392-0016-51 ")
 ;;438
 ;;21,"61392-0016-54 ")
 ;;439
 ;;21,"61392-0016-56 ")
 ;;440
 ;;21,"61392-0016-60 ")
 ;;441
 ;;21,"61392-0016-90 ")
 ;;442
 ;;21,"61392-0016-91 ")
 ;;443
 ;;21,"61392-0017-30 ")
 ;;444
 ;;21,"61392-0017-51 ")
 ;;445
 ;;21,"61392-0017-54 ")
 ;;446
 ;;21,"61392-0017-56 ")
 ;;447
 ;;21,"61392-0017-60 ")
 ;;448
 ;;21,"61392-0017-90 ")
 ;;449
 ;;21,"61392-0017-91 ")
 ;;450
 ;;21,"61570-0019-01 ")
 ;;451
 ;;21,"61570-0020-01 ")
 ;;452
 ;;21,"61570-0022-01 ")
 ;;453
 ;;21,"63402-0711-01 ")
 ;;454
 ;;21,"63402-0712-01 ")
 ;;455
 ;;21,"63629-1639-01 ")
 ;;456
 ;;21,"63629-2792-01 ")
 ;;457
 ;;21,"63629-2792-02 ")
 ;;458
 ;;21,"63629-3551-01 ")
 ;;459
 ;;21,"63874-0443-01 ")
 ;;460
 ;;21,"63874-0443-15 ")
 ;;461
 ;;21,"63874-0443-20 ")
 ;;462
 ;;21,"63874-0443-30 ")
 ;;463
 ;;21,"63874-0447-01 ")
 ;;464
 ;;21,"63874-0447-15 ")
 ;;465
 ;;21,"63874-0447-20 ")
 ;;466
 ;;21,"63874-0447-30 ")
 ;;467
 ;;21,"63874-0447-60 ")
 ;;468
 ;;21,"63874-0675-01 ")
 ;;469
 ;;21,"63874-0675-15 ")
 ;;470
 ;;21,"63874-0675-20 ")
 ;;471
 ;;21,"63874-0675-30 ")
 ;;472
 ;;21,"63874-0714-20 ")
 ;;473
 ;;21,"63874-0744-12 ")
 ;;474
 ;;21,"63874-0744-24 ")
 ;;475
 ;;21,"64661-0814-16 ")
 ;;476
 ;;21,"65162-0324-10 ")
 ;;477
 ;;21,"65162-0324-11 ")
 ;;478
 ;;21,"65162-0325-10 ")
 ;;479
 ;;21,"65162-0325-11 ")
 ;;480
 ;;21,"65162-0335-10 ")
 ;;481
 ;;21,"66105-0164-02 ")
 ;;482
 ;;21,"66105-0164-03 ")
 ;;483
 ;;21,"66105-0164-06 ")
 ;;484
 ;;21,"66105-0164-09 ")
 ;;485
 ;;21,"66105-0164-10 ")
 ;;486
 ;;21,"66105-0501-06 ")
 ;;487
 ;;21,"66105-0502-06 ")
 ;;488
 ;;21,"66336-0596-30 ")
 ;;489
 ;;21,"67781-0251-01 ")
 ;;490
 ;;21,"67781-0251-05 ")
 ;;491
 ;;21,"67781-0252-01 ")
 ;;492
 ;;21,"67801-0305-03 ")
 ;;493
 ;;21,"68115-0328-60 ")
 ;;494
 ;;21,"68115-0547-20 ")
 ;;495
 ;;21,"68115-0638-60 ")
 ;;496
 ;;21,"68115-0652-01 ")
 ;;497
 ;;21,"68115-0653-01 ")
 ;;498
 ;;21,"68115-0657-01 ")
 ;;499
 ;;21,"68115-0760-01 ")
 ;;500
 ;;21,"68115-0775-07 ")
 ;;501
 ;;21,"68115-0923-30 ")
 ;;502
 ;;21,"68115-0923-90 ")
 ;;503
 ;;21,"68115-0924-60 ")
 ;;504
 ;;21,"68258-3031-01 ")
 ;;505
 ;;21,"68258-3032-03 ")
 ;;506
 ;;21,"68258-3033-03 ")
 ;;507
 ;;21,"68462-0356-01 ")
 ;;508
 ;;21,"68462-0380-01 ")
 ;;509
 ;;21,"68734-0700-10 ")
 ;;510
 ;;21,"68734-0710-10 ")
 ;;511
 ;;9002226,747,.01)
 ;;BGP HEDIS PRIMARY ASTHMA NDC
 ;;9002226,747,.02)
 ;;@
 ;;9002226,747,.04)
 ;;n
 ;;9002226,747,.06)
 ;;@
 ;;9002226,747,.08)
 ;;@
 ;;9002226,747,.09)
 ;;3120327
 ;;9002226,747,.11)
 ;;@
 ;;9002226,747,.12)
 ;;@
 ;;9002226,747,.13)
 ;;1
 ;;9002226,747,.14)
 ;;@
 ;;9002226,747,.15)
 ;;@
 ;;9002226,747,.16)
 ;;@
 ;;9002226,747,.17)
 ;;@
 ;;9002226,747,3101)
 ;;@
 ;;9002226.02101,"747,00006-0117-01 ",.01)
 ;;00006-0117-01
 ;;9002226.02101,"747,00006-0117-01 ",.02)
 ;;00006-0117-01
 ;;9002226.02101,"747,00006-0117-28 ",.01)
 ;;00006-0117-28
 ;;9002226.02101,"747,00006-0117-28 ",.02)
 ;;00006-0117-28
 ;;9002226.02101,"747,00006-0117-31 ",.01)
 ;;00006-0117-31
 ;;9002226.02101,"747,00006-0117-31 ",.02)
 ;;00006-0117-31
 ;;9002226.02101,"747,00006-0117-54 ",.01)
 ;;00006-0117-54
 ;;9002226.02101,"747,00006-0117-54 ",.02)
 ;;00006-0117-54
 ;;9002226.02101,"747,00006-0117-80 ",.01)
 ;;00006-0117-80
 ;;9002226.02101,"747,00006-0117-80 ",.02)
 ;;00006-0117-80
 ;;9002226.02101,"747,00006-0275-01 ",.01)
 ;;00006-0275-01
 ;;9002226.02101,"747,00006-0275-01 ",.02)
 ;;00006-0275-01
 ;;9002226.02101,"747,00006-0275-28 ",.01)
 ;;00006-0275-28
 ;;9002226.02101,"747,00006-0275-28 ",.02)
 ;;00006-0275-28
 ;;9002226.02101,"747,00006-0275-31 ",.01)
 ;;00006-0275-31
 ;;9002226.02101,"747,00006-0275-31 ",.02)
 ;;00006-0275-31
 ;;9002226.02101,"747,00006-0275-54 ",.01)
 ;;00006-0275-54
 ;;9002226.02101,"747,00006-0275-54 ",.02)
 ;;00006-0275-54
 ;;9002226.02101,"747,00006-0275-82 ",.01)
 ;;00006-0275-82
 ;;9002226.02101,"747,00006-0275-82 ",.02)
 ;;00006-0275-82
 ;;9002226.02101,"747,00006-0711-01 ",.01)
 ;;00006-0711-01
 ;;9002226.02101,"747,00006-0711-01 ",.02)
 ;;00006-0711-01
 ;;9002226.02101,"747,00006-0711-28 ",.01)
 ;;00006-0711-28
 ;;9002226.02101,"747,00006-0711-28 ",.02)
 ;;00006-0711-28
 ;;9002226.02101,"747,00006-0711-31 ",.01)
 ;;00006-0711-31
 ;;9002226.02101,"747,00006-0711-31 ",.02)
 ;;00006-0711-31
 ;;9002226.02101,"747,00006-0711-54 ",.01)
 ;;00006-0711-54
 ;;9002226.02101,"747,00006-0711-54 ",.02)
 ;;00006-0711-54
 ;;9002226.02101,"747,00006-3841-01 ",.01)
 ;;00006-3841-01
 ;;9002226.02101,"747,00006-3841-01 ",.02)
 ;;00006-3841-01
 ;;9002226.02101,"747,00006-3841-30 ",.01)
 ;;00006-3841-30
 ;;9002226.02101,"747,00006-3841-30 ",.02)
 ;;00006-3841-30
 ;;9002226.02101,"747,00034-7006-80 ",.01)
 ;;00034-7006-80
 ;;9002226.02101,"747,00034-7006-80 ",.02)
 ;;00034-7006-80
 ;;9002226.02101,"747,00037-0515-68 ",.01)
 ;;00037-0515-68
 ;;9002226.02101,"747,00037-0515-68 ",.02)
 ;;00037-0515-68
 ;;9002226.02101,"747,00037-0521-92 ",.01)
 ;;00037-0521-92
 ;;9002226.02101,"747,00037-0521-92 ",.02)
 ;;00037-0521-92
 ;;9002226.02101,"747,00037-0541-92 ",.01)
 ;;00037-0541-92
 ;;9002226.02101,"747,00037-0541-92 ",.02)
 ;;00037-0541-92
 ;;9002226.02101,"747,00037-0545-68 ",.01)
 ;;00037-0545-68
 ;;9002226.02101,"747,00037-0545-68 ",.02)
 ;;00037-0545-68
 ;;9002226.02101,"747,00037-0731-92 ",.01)
 ;;00037-0731-92
 ;;9002226.02101,"747,00037-0731-92 ",.02)
 ;;00037-0731-92
 ;;9002226.02101,"747,00037-0731-99 ",.01)
 ;;00037-0731-99
 ;;9002226.02101,"747,00037-0731-99 ",.02)
 ;;00037-0731-99
 ;;9002226.02101,"747,00074-3014-60 ",.01)
 ;;00074-3014-60
 ;;9002226.02101,"747,00074-3014-60 ",.02)
 ;;00074-3014-60
 ;;9002226.02101,"747,00074-8036-22 ",.01)
 ;;00074-8036-22
 ;;9002226.02101,"747,00074-8036-22 ",.02)
 ;;00074-8036-22
 ;;9002226.02101,"747,00085-1341-01 ",.01)
 ;;00085-1341-01
 ;;9002226.02101,"747,00085-1341-01 ",.02)
 ;;00085-1341-01
 ;;9002226.02101,"747,00085-1341-02 ",.01)
 ;;00085-1341-02
 ;;9002226.02101,"747,00085-1341-02 ",.02)
 ;;00085-1341-02
 ;;9002226.02101,"747,00085-1341-03 ",.01)
 ;;00085-1341-03
 ;;9002226.02101,"747,00085-1341-03 ",.02)
 ;;00085-1341-03
 ;;9002226.02101,"747,00085-1341-04 ",.01)
 ;;00085-1341-04
 ;;9002226.02101,"747,00085-1341-04 ",.02)
 ;;00085-1341-04
 ;;9002226.02101,"747,00085-1461-02 ",.01)
 ;;00085-1461-02
 ;;9002226.02101,"747,00085-1461-02 ",.02)
 ;;00085-1461-02
 ;;9002226.02101,"747,00085-1461-07 ",.01)
 ;;00085-1461-07
 ;;9002226.02101,"747,00085-1461-07 ",.02)
 ;;00085-1461-07
 ;;9002226.02101,"747,00085-4610-01 ",.01)
 ;;00085-4610-01
 ;;9002226.02101,"747,00085-4610-01 ",.02)
 ;;00085-4610-01
 ;;9002226.02101,"747,00085-7206-01 ",.01)
 ;;00085-7206-01
 ;;9002226.02101,"747,00085-7206-01 ",.02)
 ;;00085-7206-01
 ;;9002226.02101,"747,00089-0341-80 ",.01)
 ;;00089-0341-80
 ;;9002226.02101,"747,00089-0341-80 ",.02)
 ;;00089-0341-80
 ;;9002226.02101,"747,00093-6815-45 ",.01)
 ;;00093-6815-45
 ;;9002226.02101,"747,00093-6815-45 ",.02)
 ;;00093-6815-45
 ;;9002226.02101,"747,00093-6815-73 ",.01)
 ;;00093-6815-73
 ;;9002226.02101,"747,00093-6815-73 ",.02)
 ;;00093-6815-73
 ;;9002226.02101,"747,00093-6816-45 ",.01)
 ;;00093-6816-45
 ;;9002226.02101,"747,00093-6816-45 ",.02)
 ;;00093-6816-45
 ;;9002226.02101,"747,00093-6816-73 ",.01)
 ;;00093-6816-73
 ;;9002226.02101,"747,00093-6816-73 ",.02)
 ;;00093-6816-73
 ;;9002226.02101,"747,00121-4794-15 ",.01)
 ;;00121-4794-15
 ;;9002226.02101,"747,00121-4794-15 ",.02)
 ;;00121-4794-15
 ;;9002226.02101,"747,00143-1020-01 ",.01)
 ;;00143-1020-01
 ;;9002226.02101,"747,00143-1020-01 ",.02)
 ;;00143-1020-01
 ;;9002226.02101,"747,00143-1020-10 ",.01)
 ;;00143-1020-10
 ;;9002226.02101,"747,00143-1020-10 ",.02)
 ;;00143-1020-10
 ;;9002226.02101,"747,00143-1025-01 ",.01)
 ;;00143-1025-01
 ;;9002226.02101,"747,00143-1025-01 ",.02)
 ;;00143-1025-01
 ;;9002226.02101,"747,00143-1025-10 ",.01)
 ;;00143-1025-10
 ;;9002226.02101,"747,00143-1025-10 ",.02)
 ;;00143-1025-10
 ;;9002226.02101,"747,00172-6406-49 ",.01)
 ;;00172-6406-49
 ;;9002226.02101,"747,00172-6406-49 ",.02)
 ;;00172-6406-49
 ;;9002226.02101,"747,00172-6406-59 ",.01)
 ;;00172-6406-59
 ;;9002226.02101,"747,00172-6406-59 ",.02)
 ;;00172-6406-59
 ;;9002226.02101,"747,00173-0600-02 ",.01)
 ;;00173-0600-02
 ;;9002226.02101,"747,00173-0600-02 ",.02)
 ;;00173-0600-02
 ;;9002226.02101,"747,00173-0601-02 ",.01)
 ;;00173-0601-02
 ;;9002226.02101,"747,00173-0601-02 ",.02)
 ;;00173-0601-02
 ;;9002226.02101,"747,00173-0602-02 ",.01)
 ;;00173-0602-02
 ;;9002226.02101,"747,00173-0602-02 ",.02)
 ;;00173-0602-02
 ;;9002226.02101,"747,00173-0695-00 ",.01)
 ;;00173-0695-00
 ;;9002226.02101,"747,00173-0695-00 ",.02)
 ;;00173-0695-00
 ;;9002226.02101,"747,00173-0695-02 ",.01)
 ;;00173-0695-02
 ;;9002226.02101,"747,00173-0695-02 ",.02)
 ;;00173-0695-02
 ;;9002226.02101,"747,00173-0695-04 ",.01)
 ;;00173-0695-04
 ;;9002226.02101,"747,00173-0695-04 ",.02)
 ;;00173-0695-04
 ;;9002226.02101,"747,00173-0696-00 ",.01)
 ;;00173-0696-00
 ;;9002226.02101,"747,00173-0696-00 ",.02)
 ;;00173-0696-00
 ;;9002226.02101,"747,00173-0696-02 ",.01)
 ;;00173-0696-02
 ;;9002226.02101,"747,00173-0696-02 ",.02)
 ;;00173-0696-02
 ;;9002226.02101,"747,00173-0696-04 ",.01)
 ;;00173-0696-04
 ;;9002226.02101,"747,00173-0696-04 ",.02)
 ;;00173-0696-04
 ;;9002226.02101,"747,00173-0697-00 ",.01)
 ;;00173-0697-00
 ;;9002226.02101,"747,00173-0697-00 ",.02)
 ;;00173-0697-00
 ;;9002226.02101,"747,00173-0697-02 ",.01)
 ;;00173-0697-02
 ;;9002226.02101,"747,00173-0697-02 ",.02)
 ;;00173-0697-02
 ;;9002226.02101,"747,00173-0697-04 ",.01)
 ;;00173-0697-04
 ;;9002226.02101,"747,00173-0697-04 ",.02)
 ;;00173-0697-04
 ;;9002226.02101,"747,00173-0715-00 ",.01)
 ;;00173-0715-00
 ;;9002226.02101,"747,00173-0715-00 ",.02)
 ;;00173-0715-00
 ;;9002226.02101,"747,00173-0715-20 ",.01)
 ;;00173-0715-20
 ;;9002226.02101,"747,00173-0715-20 ",.02)
 ;;00173-0715-20
 ;;9002226.02101,"747,00173-0715-22 ",.01)
 ;;00173-0715-22
 ;;9002226.02101,"747,00173-0715-22 ",.02)
 ;;00173-0715-22
 ;;9002226.02101,"747,00173-0716-00 ",.01)
 ;;00173-0716-00
 ;;9002226.02101,"747,00173-0716-00 ",.02)
 ;;00173-0716-00
 ;;9002226.02101,"747,00173-0716-20 ",.01)
 ;;00173-0716-20
 ;;9002226.02101,"747,00173-0716-20 ",.02)
 ;;00173-0716-20
 ;;9002226.02101,"747,00173-0716-22 ",.01)
 ;;00173-0716-22
 ;;9002226.02101,"747,00173-0716-22 ",.02)
 ;;00173-0716-22
 ;;9002226.02101,"747,00173-0717-00 ",.01)
 ;;00173-0717-00
 ;;9002226.02101,"747,00173-0717-00 ",.02)
 ;;00173-0717-00
 ;;9002226.02101,"747,00173-0717-20 ",.01)
 ;;00173-0717-20
 ;;9002226.02101,"747,00173-0717-20 ",.02)
 ;;00173-0717-20
 ;;9002226.02101,"747,00173-0717-22 ",.01)
 ;;00173-0717-22
 ;;9002226.02101,"747,00173-0717-22 ",.02)
 ;;00173-0717-22
 ;;9002226.02101,"747,00173-0718-00 ",.01)
 ;;00173-0718-00
 ;;9002226.02101,"747,00173-0718-00 ",.02)
 ;;00173-0718-00
 ;;9002226.02101,"747,00173-0718-20 ",.01)
 ;;00173-0718-20
 ;;9002226.02101,"747,00173-0718-20 ",.02)
 ;;00173-0718-20
 ;;9002226.02101,"747,00173-0719-00 ",.01)
 ;;00173-0719-00
 ;;9002226.02101,"747,00173-0719-00 ",.02)
 ;;00173-0719-00
 ;;9002226.02101,"747,00173-0719-20 ",.01)
 ;;00173-0719-20
 ;;9002226.02101,"747,00173-0719-20 ",.02)
 ;;00173-0719-20
 ;;9002226.02101,"747,00173-0720-00 ",.01)
 ;;00173-0720-00
 ;;9002226.02101,"747,00173-0720-00 ",.02)
 ;;00173-0720-00
 ;;9002226.02101,"747,00173-0720-20 ",.01)
 ;;00173-0720-20
 ;;9002226.02101,"747,00173-0720-20 ",.02)
 ;;00173-0720-20
 ;;9002226.02101,"747,00182-0226-41 ",.01)
 ;;00182-0226-41
 ;;9002226.02101,"747,00182-0226-41 ",.02)
 ;;00182-0226-41
 ;;9002226.02101,"747,00182-1400-89 ",.01)
 ;;00182-1400-89
 ;;9002226.02101,"747,00182-1400-89 ",.02)
 ;;00182-1400-89
 ;;9002226.02101,"747,00182-1589-89 ",.01)
 ;;00182-1589-89