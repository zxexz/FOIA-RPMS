BGPM3AEI ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON APR 21, 2011;
 ;;11.0;IHS CLINICAL REPORTING;**4**;JAN 06, 2011;Build 84
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"807,12671002601 ",.02)
 ;;12671002601
 ;;9002226.02101,"807,12671002603 ",.01)
 ;;12671002603
 ;;9002226.02101,"807,12671002603 ",.02)
 ;;12671002603
 ;;9002226.02101,"807,12671006303 ",.01)
 ;;12671006303
 ;;9002226.02101,"807,12671006303 ",.02)
 ;;12671006303
 ;;9002226.02101,"807,12671006307 ",.01)
 ;;12671006307
 ;;9002226.02101,"807,12671006307 ",.02)
 ;;12671006307
 ;;9002226.02101,"807,12671006501 ",.01)
 ;;12671006501
 ;;9002226.02101,"807,12671006501 ",.02)
 ;;12671006501
 ;;9002226.02101,"807,12671006515 ",.01)
 ;;12671006515
 ;;9002226.02101,"807,12671006515 ",.02)
 ;;12671006515
 ;;9002226.02101,"807,25021040001 ",.01)
 ;;25021040001
 ;;9002226.02101,"807,25021040001 ",.02)
 ;;25021040001
 ;;9002226.02101,"807,25021040010 ",.01)
 ;;25021040010
 ;;9002226.02101,"807,25021040010 ",.02)
 ;;25021040010
 ;;9002226.02101,"807,25021040030 ",.01)
 ;;25021040030
 ;;9002226.02101,"807,25021040030 ",.02)
 ;;25021040030
 ;;9002226.02101,"807,25021040102 ",.01)
 ;;25021040102
 ;;9002226.02101,"807,25021040102 ",.02)
 ;;25021040102
 ;;9002226.02101,"807,25021040301 ",.01)
 ;;25021040301
 ;;9002226.02101,"807,25021040301 ",.02)
 ;;25021040301
 ;;9002226.02101,"807,25021040304 ",.01)
 ;;25021040304
 ;;9002226.02101,"807,25021040304 ",.02)
 ;;25021040304
 ;;9002226.02101,"807,39769001101 ",.01)
 ;;39769001101
 ;;9002226.02101,"807,39769001101 ",.02)
 ;;39769001101
 ;;9002226.02101,"807,39769001102 ",.01)
 ;;39769001102
 ;;9002226.02101,"807,39769001102 ",.02)
 ;;39769001102
 ;;9002226.02101,"807,39769001105 ",.01)
 ;;39769001105
 ;;9002226.02101,"807,39769001105 ",.02)
 ;;39769001105
 ;;9002226.02101,"807,39769001171 ",.01)
 ;;39769001171
 ;;9002226.02101,"807,39769001171 ",.02)
 ;;39769001171
 ;;9002226.02101,"807,39769001173 ",.01)
 ;;39769001173
 ;;9002226.02101,"807,39769001173 ",.02)
 ;;39769001173
 ;;9002226.02101,"807,39769001175 ",.01)
 ;;39769001175
 ;;9002226.02101,"807,39769001175 ",.02)
 ;;39769001175
 ;;9002226.02101,"807,39769001910 ",.01)
 ;;39769001910
 ;;9002226.02101,"807,39769001910 ",.02)
 ;;39769001910
 ;;9002226.02101,"807,39769001930 ",.01)
 ;;39769001930
 ;;9002226.02101,"807,39769001930 ",.02)
 ;;39769001930
 ;;9002226.02101,"807,39769002601 ",.01)
 ;;39769002601
 ;;9002226.02101,"807,39769002601 ",.02)
 ;;39769002601
 ;;9002226.02101,"807,39769002801 ",.01)
 ;;39769002801
 ;;9002226.02101,"807,39769002801 ",.02)
 ;;39769002801
 ;;9002226.02101,"807,39769002905 ",.01)
 ;;39769002905
 ;;9002226.02101,"807,39769002905 ",.02)
 ;;39769002905
 ;;9002226.02101,"807,39769003610 ",.01)
 ;;39769003610
 ;;9002226.02101,"807,39769003610 ",.02)
 ;;39769003610
 ;;9002226.02101,"807,39769003630 ",.01)
 ;;39769003630
 ;;9002226.02101,"807,39769003630 ",.02)
 ;;39769003630
 ;;9002226.02101,"807,39769003671 ",.01)
 ;;39769003671
 ;;9002226.02101,"807,39769003671 ",.02)
 ;;39769003671
 ;;9002226.02101,"807,39769010771 ",.01)
 ;;39769010771
 ;;9002226.02101,"807,39769010771 ",.02)
 ;;39769010771
 ;;9002226.02101,"807,39769010773 ",.01)
 ;;39769010773
 ;;9002226.02101,"807,39769010773 ",.02)
 ;;39769010773
 ;;9002226.02101,"807,39769010775 ",.01)
 ;;39769010775
 ;;9002226.02101,"807,39769010775 ",.02)
 ;;39769010775
 ;;9002226.02101,"807,39769011871 ",.01)
 ;;39769011871
 ;;9002226.02101,"807,39769011871 ",.02)
 ;;39769011871
 ;;9002226.02101,"807,39769011873 ",.01)
 ;;39769011873
 ;;9002226.02101,"807,39769011873 ",.02)
 ;;39769011873
 ;;9002226.02101,"807,39769011875 ",.01)
 ;;39769011875
 ;;9002226.02101,"807,39769011875 ",.02)
 ;;39769011875
 ;;9002226.02101,"807,49072029130 ",.01)
 ;;49072029130
 ;;9002226.02101,"807,49072029130 ",.02)
 ;;49072029130
 ;;9002226.02101,"807,51698004910 ",.01)
 ;;51698004910
 ;;9002226.02101,"807,51698004910 ",.02)
 ;;51698004910
 ;;9002226.02101,"807,52584015270 ",.01)
 ;;52584015270
 ;;9002226.02101,"807,52584015270 ",.02)
 ;;52584015270
 ;;9002226.02101,"807,52584054001 ",.01)
 ;;52584054001
 ;;9002226.02101,"807,52584054001 ",.02)
 ;;52584054001
 ;;9002226.02101,"807,52584054201 ",.01)
 ;;52584054201
 ;;9002226.02101,"807,52584054201 ",.02)
 ;;52584054201
 ;;9002226.02101,"807,52958032004 ",.01)
 ;;52958032004
 ;;9002226.02101,"807,52958032004 ",.02)
 ;;52958032004
 ;;9002226.02101,"807,52958033008 ",.01)
 ;;52958033008
 ;;9002226.02101,"807,52958033008 ",.02)
 ;;52958033008
 ;;9002226.02101,"807,52958033012 ",.01)
 ;;52958033012
 ;;9002226.02101,"807,52958033012 ",.02)
 ;;52958033012
 ;;9002226.02101,"807,55154014105 ",.01)
 ;;55154014105
 ;;9002226.02101,"807,55154014105 ",.02)
 ;;55154014105
 ;;9002226.02101,"807,55154236205 ",.01)
 ;;55154236205
 ;;9002226.02101,"807,55154236205 ",.02)
 ;;55154236205
 ;;9002226.02101,"807,55154510905 ",.01)
 ;;55154510905
 ;;9002226.02101,"807,55154510905 ",.02)
 ;;55154510905
 ;;9002226.02101,"807,55154512205 ",.01)
 ;;55154512205
 ;;9002226.02101,"807,55154512205 ",.02)
 ;;55154512205
 ;;9002226.02101,"807,55154512207 ",.01)
 ;;55154512207
 ;;9002226.02101,"807,55154512207 ",.02)
 ;;55154512207
 ;;9002226.02101,"807,55154512605 ",.01)
 ;;55154512605
 ;;9002226.02101,"807,55154512605 ",.02)
 ;;55154512605
 ;;9002226.02101,"807,55154935305 ",.01)
 ;;55154935305
 ;;9002226.02101,"807,55154935305 ",.02)
 ;;55154935305
 ;;9002226.02101,"807,55154935505 ",.01)
 ;;55154935505
 ;;9002226.02101,"807,55154935505 ",.02)
 ;;55154935505
 ;;9002226.02101,"807,55154936005 ",.01)
 ;;55154936005
 ;;9002226.02101,"807,55154936005 ",.02)
 ;;55154936005
 ;;9002226.02101,"807,55154937305 ",.01)
 ;;55154937305
 ;;9002226.02101,"807,55154937305 ",.02)
 ;;55154937305
 ;;9002226.02101,"807,55154937705 ",.01)
 ;;55154937705
 ;;9002226.02101,"807,55154937705 ",.02)
 ;;55154937705
 ;;9002226.02101,"807,62338313701 ",.01)
 ;;62338313701
 ;;9002226.02101,"807,62338313701 ",.02)
 ;;62338313701
 ;;9002226.02101,"807,62338332701 ",.01)
 ;;62338332701
 ;;9002226.02101,"807,62338332701 ",.02)
 ;;62338332701
 ;;9002226.02101,"807,62338352701 ",.01)
 ;;62338352701
 ;;9002226.02101,"807,62338352701 ",.02)
 ;;62338352701
 ;;9002226.02101,"807,62338510503 ",.01)
 ;;62338510503
 ;;9002226.02101,"807,62338510503 ",.02)
 ;;62338510503
 ;;9002226.02101,"807,62338521303 ",.01)
 ;;62338521303
 ;;9002226.02101,"807,62338521303 ",.02)
 ;;62338521303
 ;;9002226.02101,"807,63323003810 ",.01)
 ;;63323003810
 ;;9002226.02101,"807,63323003810 ",.02)
 ;;63323003810
 ;;9002226.02101,"807,63323003830 ",.01)
 ;;63323003830
 ;;9002226.02101,"807,63323003830 ",.02)
 ;;63323003830
 ;;9002226.02101,"807,63323027602 ",.01)
 ;;63323027602
 ;;9002226.02101,"807,63323027602 ",.02)
 ;;63323027602
 ;;9002226.02101,"807,63323054001 ",.01)
 ;;63323054001
 ;;9002226.02101,"807,63323054001 ",.02)
 ;;63323054001
 ;;9002226.02101,"807,63323054011 ",.01)
 ;;63323054011
 ;;9002226.02101,"807,63323054011 ",.02)
 ;;63323054011
 ;;9002226.02101,"807,63323054031 ",.01)
 ;;63323054031
 ;;9002226.02101,"807,63323054031 ",.02)
 ;;63323054031
 ;;9002226.02101,"807,63323054057 ",.01)
 ;;63323054057
 ;;9002226.02101,"807,63323054057 ",.02)
 ;;63323054057
 ;;9002226.02101,"807,63323054501 ",.01)
 ;;63323054501
 ;;9002226.02101,"807,63323054501 ",.02)
 ;;63323054501
 ;;9002226.02101,"807,63323054505 ",.01)
 ;;63323054505
 ;;9002226.02101,"807,63323054505 ",.02)
 ;;63323054505
 ;;9002226.02101,"807,63807060050 ",.01)
 ;;63807060050
 ;;9002226.02101,"807,63807060050 ",.02)
 ;;63807060050
 ;;9002226.02101,"807,64054100302 ",.01)
 ;;64054100302
 ;;9002226.02101,"807,64054100302 ",.02)
 ;;64054100302
 ;;9002226.02101,"807,64253033301 ",.01)
 ;;64253033301
 ;;9002226.02101,"807,64253033301 ",.02)
 ;;64253033301
 ;;9002226.02101,"807,64253033352 ",.01)
 ;;64253033352
 ;;9002226.02101,"807,64253033352 ",.02)
 ;;64253033352