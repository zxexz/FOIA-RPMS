BGP2VY5 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 12, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"66267-0158-30 ")
 ;;1702
 ;;21,"66267-0158-60 ")
 ;;1703
 ;;21,"66267-0611-08 ")
 ;;1155
 ;;21,"66267-0611-15 ")
 ;;1156
 ;;21,"66267-0611-20 ")
 ;;1157
 ;;21,"66267-0611-21 ")
 ;;1158
 ;;21,"66267-0611-30 ")
 ;;1159
 ;;21,"66267-0611-40 ")
 ;;1160
 ;;21,"66267-0611-42 ")
 ;;1161
 ;;21,"66267-1007-00 ")
 ;;347
 ;;21,"66336-0063-20 ")
 ;;1578
 ;;21,"66336-0063-28 ")
 ;;1579
 ;;21,"66336-0063-30 ")
 ;;1580
 ;;21,"66336-0063-40 ")
 ;;1581
 ;;21,"66336-0063-60 ")
 ;;1582
 ;;21,"66336-0080-20 ")
 ;;1350
 ;;21,"66336-0080-30 ")
 ;;1351
 ;;21,"66336-0080-40 ")
 ;;1352
 ;;21,"66336-0554-30 ")
 ;;1704
 ;;21,"66336-0581-09 ")
 ;;897
 ;;21,"66336-0581-12 ")
 ;;898
 ;;21,"66336-0581-15 ")
 ;;899
 ;;21,"66336-0581-20 ")
 ;;900
 ;;21,"66336-0581-21 ")
 ;;901
 ;;21,"66336-0581-30 ")
 ;;902
 ;;21,"66336-0581-60 ")
 ;;903
 ;;21,"66336-0635-15 ")
 ;;348
 ;;21,"66336-0635-20 ")
 ;;349
 ;;21,"66336-0635-30 ")
 ;;350
 ;;21,"66336-0635-60 ")
 ;;351
 ;;21,"66336-0635-90 ")
 ;;352
 ;;21,"66336-0635-94 ")
 ;;353
 ;;21,"66336-0663-15 ")
 ;;542
 ;;21,"66336-0663-30 ")
 ;;543
 ;;21,"67544-0180-30 ")
 ;;904
 ;;21,"67544-0291-30 ")
 ;;354
 ;;21,"67544-0473-30 ")
 ;;355
 ;;21,"67544-0508-30 ")
 ;;905
 ;;21,"67544-0589-30 ")
 ;;1705
 ;;21,"68013-0016-01 ")
 ;;356
 ;;21,"68025-0046-10 ")
 ;;401
 ;;21,"68025-0047-10 ")
 ;;552
 ;;21,"68071-0462-14 ")
 ;;1024
 ;;21,"68071-0462-30 ")
 ;;1025
 ;;21,"68071-0462-60 ")
 ;;1026
 ;;21,"68071-0462-90 ")
 ;;1027
 ;;21,"68084-0380-01 ")
 ;;357
 ;;21,"68084-0380-11 ")
 ;;358
 ;;21,"68084-0397-01 ")
 ;;906
 ;;21,"68084-0397-11 ")
 ;;907
 ;;21,"68115-0063-00 ")
 ;;359
 ;;21,"68115-0063-04 ")
 ;;360
 ;;21,"68115-0063-12 ")
 ;;361
 ;;21,"68115-0063-15 ")
 ;;362
 ;;21,"68115-0063-20 ")
 ;;363
 ;;21,"68115-0063-28 ")
 ;;364
 ;;21,"68115-0063-30 ")
 ;;365
 ;;21,"68115-0063-40 ")
 ;;366
 ;;21,"68115-0063-45 ")
 ;;367
 ;;21,"68115-0063-48 ")
 ;;368
 ;;21,"68115-0063-50 ")
 ;;369
 ;;21,"68115-0063-56 ")
 ;;370
 ;;21,"68115-0063-60 ")
 ;;371
 ;;21,"68115-0063-90 ")
 ;;372
 ;;21,"68115-0063-96 ")
 ;;373
 ;;21,"68115-0063-97 ")
 ;;374
 ;;21,"68115-0063-99 ")
 ;;375
 ;;21,"68115-0077-00 ")
 ;;544
 ;;21,"68115-0077-15 ")
 ;;545
 ;;21,"68115-0077-30 ")
 ;;546
 ;;21,"68115-0077-40 ")
 ;;547
 ;;21,"68115-0077-60 ")
 ;;548
 ;;21,"68115-0077-90 ")
 ;;549
 ;;21,"68115-0095-00 ")
 ;;908
 ;;21,"68115-0095-06 ")
 ;;909
 ;;21,"68115-0095-10 ")
 ;;910
 ;;21,"68115-0095-12 ")
 ;;911
 ;;21,"68115-0095-15 ")
 ;;912
 ;;21,"68115-0095-20 ")
 ;;913
 ;;21,"68115-0095-30 ")
 ;;914
 ;;21,"68115-0095-40 ")
 ;;915
 ;;21,"68115-0095-45 ")
 ;;916
 ;;21,"68115-0095-48 ")
 ;;917
 ;;21,"68115-0095-60 ")
 ;;918
 ;;21,"68115-0095-90 ")
 ;;919
 ;;21,"68115-0095-99 ")
 ;;920
 ;;21,"68115-0234-00 ")
 ;;1353
 ;;21,"68115-0234-20 ")
 ;;1354
 ;;21,"68115-0234-30 ")
 ;;1355
 ;;21,"68115-0234-40 ")
 ;;1356
 ;;21,"68115-0234-60 ")
 ;;1357
 ;;21,"68115-0234-90 ")
 ;;1358
 ;;21,"68115-0235-15 ")
 ;;1583
 ;;21,"68115-0235-20 ")
 ;;1584
 ;;21,"68115-0235-30 ")
 ;;1585
 ;;21,"68115-0235-60 ")
 ;;1586
 ;;21,"68115-0235-90 ")
 ;;1587
 ;;21,"68115-0235-99 ")
 ;;1588
 ;;21,"68115-0264-10 ")
 ;;1706
 ;;21,"68115-0264-14 ")
 ;;1707
 ;;21,"68115-0264-20 ")
 ;;1708
 ;;21,"68115-0264-30 ")
 ;;1709
 ;;21,"68115-0264-60 ")
 ;;1710
 ;;21,"68115-0264-90 ")
 ;;1711
 ;;21,"68115-0319-00 ")
 ;;1162
 ;;21,"68115-0319-08 ")
 ;;1163
 ;;21,"68115-0319-15 ")
 ;;1164
 ;;21,"68115-0319-20 ")
 ;;1165
 ;;21,"68115-0319-30 ")
 ;;1166
 ;;21,"68115-0319-60 ")
 ;;1167
 ;;21,"68115-0319-90 ")
 ;;1168
 ;;21,"68115-0319-99 ")
 ;;1169
 ;;21,"68115-0440-00 ")
 ;;376
 ;;21,"68115-0440-04 ")
 ;;377
 ;;21,"68115-0440-12 ")
 ;;378
 ;;21,"68115-0440-15 ")
 ;;379
 ;;21,"68115-0440-20 ")
 ;;380
 ;;21,"68115-0440-21 ")
 ;;381
 ;;21,"68115-0440-28 ")
 ;;382
 ;;21,"68115-0440-30 ")
 ;;383
 ;;21,"68115-0440-40 ")
 ;;384
 ;;21,"68115-0440-45 ")
 ;;385
 ;;21,"68115-0440-48 ")
 ;;386
 ;;21,"68115-0440-50 ")
 ;;387
 ;;21,"68115-0440-56 ")
 ;;388
 ;;21,"68115-0440-60 ")
 ;;389
 ;;21,"68115-0440-90 ")
 ;;390
 ;;21,"68115-0440-97 ")
 ;;391
 ;;21,"68115-0440-99 ")
 ;;392
 ;;21,"68115-0450-30 ")
 ;;1028
 ;;21,"68387-0340-30 ")
 ;;1589
 ;;21,"68387-0340-45 ")
 ;;1590
 ;;21,"68387-0340-60 ")
 ;;1591
 ;;21,"68387-0340-90 ")
 ;;1592
 ;;21,"68387-0342-60 ")
 ;;1359
 ;;21,"68387-0375-30 ")
 ;;550
 ;;21,"68387-0375-90 ")
 ;;551
 ;;21,"68387-0500-10 ")
 ;;921
 ;;21,"68387-0500-15 ")
 ;;922
 ;;21,"68387-0500-30 ")
 ;;923
 ;;21,"68387-0500-45 ")
 ;;924
 ;;21,"68387-0500-60 ")
 ;;925
 ;;21,"68387-0500-90 ")
 ;;926
 ;;21,"68387-0502-90 ")
 ;;1029
 ;;21,"68387-0575-14 ")
 ;;1712
 ;;21,"68387-0575-60 ")
 ;;1713
 ;;21,"68453-0950-10 ")
 ;;1031
 ;;21,"68462-0552-01 ")
 ;;1030
 ;;21,"68462-0553-01 ")
 ;;927
 ;;21,"68462-0553-10 ")
 ;;928
 ;;9002226,804,.01)
 ;;BGP HEDIS SKL MUSCLE RELAX NDC
 ;;9002226,804,.02)
 ;;@
 ;;9002226,804,.04)
 ;;n
 ;;9002226,804,.06)
 ;;@
 ;;9002226,804,.08)
 ;;@
 ;;9002226,804,.09)
 ;;3120312
 ;;9002226,804,.11)
 ;;@
 ;;9002226,804,.12)
 ;;@
 ;;9002226,804,.13)
 ;;1
 ;;9002226,804,.14)
 ;;@
 ;;9002226,804,.15)
 ;;@
 ;;9002226,804,.16)
 ;;@
 ;;9002226,804,.17)
 ;;@
 ;;9002226,804,3101)
 ;;@
 ;;9002226.02101,"804,00031-7429-63 ",.01)
 ;;00031-7429-63
 ;;9002226.02101,"804,00031-7429-63 ",.02)
 ;;00031-7429-63
 ;;9002226.02101,"804,00031-7449-63 ",.01)
 ;;00031-7449-63
 ;;9002226.02101,"804,00031-7449-63 ",.02)
 ;;00031-7449-63
 ;;9002226.02101,"804,00031-7449-70 ",.01)
 ;;00031-7449-70
 ;;9002226.02101,"804,00031-7449-70 ",.02)
 ;;00031-7449-70
 ;;9002226.02101,"804,00037-2001-01 ",.01)
 ;;00037-2001-01
 ;;9002226.02101,"804,00037-2001-01 ",.02)
 ;;00037-2001-01
 ;;9002226.02101,"804,00037-2001-03 ",.01)
 ;;00037-2001-03
 ;;9002226.02101,"804,00037-2001-03 ",.02)
 ;;00037-2001-03
 ;;9002226.02101,"804,00037-2103-01 ",.01)
 ;;00037-2103-01
 ;;9002226.02101,"804,00037-2103-01 ",.02)
 ;;00037-2103-01
 ;;9002226.02101,"804,00037-2250-10 ",.01)
 ;;00037-2250-10
 ;;9002226.02101,"804,00037-2250-10 ",.02)
 ;;00037-2250-10
 ;;9002226.02101,"804,00037-2250-30 ",.01)
 ;;00037-2250-30
 ;;9002226.02101,"804,00037-2250-30 ",.02)
 ;;00037-2250-30
 ;;9002226.02101,"804,00037-2403-01 ",.01)
 ;;00037-2403-01
 ;;9002226.02101,"804,00037-2403-01 ",.02)
 ;;00037-2403-01
 ;;9002226.02101,"804,00045-0325-60 ",.01)
 ;;00045-0325-60
 ;;9002226.02101,"804,00045-0325-60 ",.02)
 ;;00045-0325-60
 ;;9002226.02101,"804,00091-7429-63 ",.01)
 ;;00091-7429-63
 ;;9002226.02101,"804,00091-7429-63 ",.02)
 ;;00091-7429-63
 ;;9002226.02101,"804,00091-7449-63 ",.01)
 ;;00091-7449-63
 ;;9002226.02101,"804,00091-7449-63 ",.02)
 ;;00091-7449-63
 ;;9002226.02101,"804,00091-7449-70 ",.01)
 ;;00091-7449-70
 ;;9002226.02101,"804,00091-7449-70 ",.02)
 ;;00091-7449-70
 ;;9002226.02101,"804,00093-0542-01 ",.01)
 ;;00093-0542-01
 ;;9002226.02101,"804,00093-0542-01 ",.02)
 ;;00093-0542-01
 ;;9002226.02101,"804,00093-0542-05 ",.01)
 ;;00093-0542-05
 ;;9002226.02101,"804,00093-0542-05 ",.02)
 ;;00093-0542-05
 ;;9002226.02101,"804,00093-1919-19 ",.01)
 ;;00093-1919-19
 ;;9002226.02101,"804,00093-1919-19 ",.02)
 ;;00093-1919-19
 ;;9002226.02101,"804,00093-1919-93 ",.01)
 ;;00093-1919-93
 ;;9002226.02101,"804,00093-1919-93 ",.02)
 ;;00093-1919-93
 ;;9002226.02101,"804,00095-0150-06 ",.01)
 ;;00095-0150-06
 ;;9002226.02101,"804,00095-0150-06 ",.02)
 ;;00095-0150-06
 ;;9002226.02101,"804,00095-0300-06 ",.01)
 ;;00095-0300-06
 ;;9002226.02101,"804,00095-0300-06 ",.02)
 ;;00095-0300-06
 ;;9002226.02101,"804,00115-2011-01 ",.01)
 ;;00115-2011-01
 ;;9002226.02101,"804,00115-2011-01 ",.02)
 ;;00115-2011-01
 ;;9002226.02101,"804,00115-2011-02 ",.01)
 ;;00115-2011-02
 ;;9002226.02101,"804,00115-2011-02 ",.02)
 ;;00115-2011-02
 ;;9002226.02101,"804,00115-3900-01 ",.01)
 ;;00115-3900-01
 ;;9002226.02101,"804,00115-3900-01 ",.02)
 ;;00115-3900-01
 ;;9002226.02101,"804,00115-3900-02 ",.01)
 ;;00115-3900-02
 ;;9002226.02101,"804,00115-3900-02 ",.02)
 ;;00115-3900-02
 ;;9002226.02101,"804,00115-3900-03 ",.01)
 ;;00115-3900-03
 ;;9002226.02101,"804,00115-3900-03 ",.02)
 ;;00115-3900-03
 ;;9002226.02101,"804,00115-3902-01 ",.01)
 ;;00115-3902-01
 ;;9002226.02101,"804,00115-3902-01 ",.02)
 ;;00115-3902-01
 ;;9002226.02101,"804,00115-3902-02 ",.01)
 ;;00115-3902-02
 ;;9002226.02101,"804,00115-3902-02 ",.02)
 ;;00115-3902-02
 ;;9002226.02101,"804,00115-3902-03 ",.01)
 ;;00115-3902-03
 ;;9002226.02101,"804,00115-3902-03 ",.02)
 ;;00115-3902-03
 ;;9002226.02101,"804,00143-1176-01 ",.01)
 ;;00143-1176-01
 ;;9002226.02101,"804,00143-1176-01 ",.02)
 ;;00143-1176-01
 ;;9002226.02101,"804,00143-1176-05 ",.01)
 ;;00143-1176-05
 ;;9002226.02101,"804,00143-1176-05 ",.02)
 ;;00143-1176-05
 ;;9002226.02101,"804,00143-1176-10 ",.01)
 ;;00143-1176-10
 ;;9002226.02101,"804,00143-1176-10 ",.02)
 ;;00143-1176-10
 ;;9002226.02101,"804,00143-1290-01 ",.01)
 ;;00143-1290-01
 ;;9002226.02101,"804,00143-1290-01 ",.02)
 ;;00143-1290-01
 ;;9002226.02101,"804,00143-1290-05 ",.01)
 ;;00143-1290-05
 ;;9002226.02101,"804,00143-1290-05 ",.02)
 ;;00143-1290-05
 ;;9002226.02101,"804,00143-1292-01 ",.01)
 ;;00143-1292-01
 ;;9002226.02101,"804,00143-1292-01 ",.02)
 ;;00143-1292-01
 ;;9002226.02101,"804,00143-1292-05 ",.01)
 ;;00143-1292-05
 ;;9002226.02101,"804,00143-1292-05 ",.02)
 ;;00143-1292-05
 ;;9002226.02101,"804,00143-9749-01 ",.01)
 ;;00143-9749-01
 ;;9002226.02101,"804,00143-9749-01 ",.02)
 ;;00143-9749-01
 ;;9002226.02101,"804,00143-9749-05 ",.01)
 ;;00143-9749-05
 ;;9002226.02101,"804,00143-9749-05 ",.02)
 ;;00143-9749-05
 ;;9002226.02101,"804,00143-9749-10 ",.01)
 ;;00143-9749-10
 ;;9002226.02101,"804,00143-9749-10 ",.02)
 ;;00143-9749-10
 ;;9002226.02101,"804,00182-0572-01 ",.01)
 ;;00182-0572-01
 ;;9002226.02101,"804,00182-0572-01 ",.02)
 ;;00182-0572-01
 ;;9002226.02101,"804,00182-0572-05 ",.01)
 ;;00182-0572-05
 ;;9002226.02101,"804,00182-0572-05 ",.02)
 ;;00182-0572-05
 ;;9002226.02101,"804,00182-1189-05 ",.01)
 ;;00182-1189-05
 ;;9002226.02101,"804,00182-1189-05 ",.02)
 ;;00182-1189-05
 ;;9002226.02101,"804,00182-1780-01 ",.01)
 ;;00182-1780-01
 ;;9002226.02101,"804,00182-1780-01 ",.02)
 ;;00182-1780-01
 ;;9002226.02101,"804,00182-1919-00 ",.01)
 ;;00182-1919-00
 ;;9002226.02101,"804,00182-1919-00 ",.02)
 ;;00182-1919-00
 ;;9002226.02101,"804,00182-1919-89 ",.01)
 ;;00182-1919-89
 ;;9002226.02101,"804,00182-1919-89 ",.02)
 ;;00182-1919-89
 ;;9002226.02101,"804,00185-0022-01 ",.01)
 ;;00185-0022-01
 ;;9002226.02101,"804,00185-0022-01 ",.02)
 ;;00185-0022-01
 ;;9002226.02101,"804,00185-0022-10 ",.01)
 ;;00185-0022-10
 ;;9002226.02101,"804,00185-0022-10 ",.02)
 ;;00185-0022-10
 ;;9002226.02101,"804,00185-0448-01 ",.01)
 ;;00185-0448-01
 ;;9002226.02101,"804,00185-0448-01 ",.02)
 ;;00185-0448-01
 ;;9002226.02101,"804,00185-0448-10 ",.01)
 ;;00185-0448-10
 ;;9002226.02101,"804,00185-0448-10 ",.02)
 ;;00185-0448-10
 ;;9002226.02101,"804,00185-0713-01 ",.01)
 ;;00185-0713-01
 ;;9002226.02101,"804,00185-0713-01 ",.02)
 ;;00185-0713-01
 ;;9002226.02101,"804,00185-0713-05 ",.01)
 ;;00185-0713-05
 ;;9002226.02101,"804,00185-0713-05 ",.02)
 ;;00185-0713-05
 ;;9002226.02101,"804,00185-0714-01 ",.01)
 ;;00185-0714-01
 ;;9002226.02101,"804,00185-0714-01 ",.02)
 ;;00185-0714-01
 ;;9002226.02101,"804,00185-0724-01 ",.01)
 ;;00185-0724-01
 ;;9002226.02101,"804,00185-0724-01 ",.02)
 ;;00185-0724-01
 ;;9002226.02101,"804,00185-0724-05 ",.01)
 ;;00185-0724-05
 ;;9002226.02101,"804,00185-0724-05 ",.02)
 ;;00185-0724-05
 ;;9002226.02101,"804,00185-0749-01 ",.01)
 ;;00185-0749-01
 ;;9002226.02101,"804,00185-0749-01 ",.02)
 ;;00185-0749-01
 ;;9002226.02101,"804,00247-0013-00 ",.01)
 ;;00247-0013-00
 ;;9002226.02101,"804,00247-0013-00 ",.02)
 ;;00247-0013-00
 ;;9002226.02101,"804,00247-0013-03 ",.01)
 ;;00247-0013-03
 ;;9002226.02101,"804,00247-0013-03 ",.02)
 ;;00247-0013-03
 ;;9002226.02101,"804,00247-0013-06 ",.01)
 ;;00247-0013-06
 ;;9002226.02101,"804,00247-0013-06 ",.02)
 ;;00247-0013-06
 ;;9002226.02101,"804,00247-0013-07 ",.01)
 ;;00247-0013-07
 ;;9002226.02101,"804,00247-0013-07 ",.02)
 ;;00247-0013-07
 ;;9002226.02101,"804,00247-0013-08 ",.01)
 ;;00247-0013-08
 ;;9002226.02101,"804,00247-0013-08 ",.02)
 ;;00247-0013-08
 ;;9002226.02101,"804,00247-0013-09 ",.01)
 ;;00247-0013-09
 ;;9002226.02101,"804,00247-0013-09 ",.02)
 ;;00247-0013-09
 ;;9002226.02101,"804,00247-0013-12 ",.01)
 ;;00247-0013-12
 ;;9002226.02101,"804,00247-0013-12 ",.02)
 ;;00247-0013-12
 ;;9002226.02101,"804,00247-0013-15 ",.01)
 ;;00247-0013-15
 ;;9002226.02101,"804,00247-0013-15 ",.02)
 ;;00247-0013-15
 ;;9002226.02101,"804,00247-0013-18 ",.01)
 ;;00247-0013-18
 ;;9002226.02101,"804,00247-0013-18 ",.02)
 ;;00247-0013-18
 ;;9002226.02101,"804,00247-0013-20 ",.01)
 ;;00247-0013-20
 ;;9002226.02101,"804,00247-0013-20 ",.02)
 ;;00247-0013-20
 ;;9002226.02101,"804,00247-0013-21 ",.01)
 ;;00247-0013-21
 ;;9002226.02101,"804,00247-0013-21 ",.02)
 ;;00247-0013-21
 ;;9002226.02101,"804,00247-0013-25 ",.01)
 ;;00247-0013-25
 ;;9002226.02101,"804,00247-0013-25 ",.02)
 ;;00247-0013-25