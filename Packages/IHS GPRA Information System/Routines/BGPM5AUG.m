BGPM5AUG ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON AUG 29, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1033,00093202723 ",.02)
 ;;00093202723
 ;;9002226.02101,"1033,00093215801 ",.01)
 ;;00093215801
 ;;9002226.02101,"1033,00093215801 ",.02)
 ;;00093215801
 ;;9002226.02101,"1033,00093223801 ",.01)
 ;;00093223801
 ;;9002226.02101,"1033,00093223801 ",.02)
 ;;00093223801
 ;;9002226.02101,"1033,00093224001 ",.01)
 ;;00093224001
 ;;9002226.02101,"1033,00093224001 ",.02)
 ;;00093224001
 ;;9002226.02101,"1033,00093226301 ",.01)
 ;;00093226301
 ;;9002226.02101,"1033,00093226301 ",.02)
 ;;00093226301
 ;;9002226.02101,"1033,00093226401 ",.01)
 ;;00093226401
 ;;9002226.02101,"1033,00093226401 ",.02)
 ;;00093226401
 ;;9002226.02101,"1033,00093226701 ",.01)
 ;;00093226701
 ;;9002226.02101,"1033,00093226701 ",.02)
 ;;00093226701
 ;;9002226.02101,"1033,00093226801 ",.01)
 ;;00093226801
 ;;9002226.02101,"1033,00093226801 ",.02)
 ;;00093226801
 ;;9002226.02101,"1033,00093226805 ",.01)
 ;;00093226805
 ;;9002226.02101,"1033,00093226805 ",.02)
 ;;00093226805
 ;;9002226.02101,"1033,00093227034 ",.01)
 ;;00093227034
 ;;9002226.02101,"1033,00093227034 ",.02)
 ;;00093227034
 ;;9002226.02101,"1033,00093227234 ",.01)
 ;;00093227234
 ;;9002226.02101,"1033,00093227234 ",.02)
 ;;00093227234
 ;;9002226.02101,"1033,00093227434 ",.01)
 ;;00093227434
 ;;9002226.02101,"1033,00093227434 ",.02)
 ;;00093227434
 ;;9002226.02101,"1033,00093227534 ",.01)
 ;;00093227534
 ;;9002226.02101,"1033,00093227534 ",.02)
 ;;00093227534
 ;;9002226.02101,"1033,00093227773 ",.01)
 ;;00093227773
 ;;9002226.02101,"1033,00093227773 ",.02)
 ;;00093227773
 ;;9002226.02101,"1033,00093227973 ",.01)
 ;;00093227973
 ;;9002226.02101,"1033,00093227973 ",.02)
 ;;00093227973
 ;;9002226.02101,"1033,00093310701 ",.01)
 ;;00093310701
 ;;9002226.02101,"1033,00093310701 ",.02)
 ;;00093310701
 ;;9002226.02101,"1033,00093310705 ",.01)
 ;;00093310705
 ;;9002226.02101,"1033,00093310705 ",.02)
 ;;00093310705
 ;;9002226.02101,"1033,00093310719 ",.01)
 ;;00093310719
 ;;9002226.02101,"1033,00093310719 ",.02)
 ;;00093310719
 ;;9002226.02101,"1033,00093310756 ",.01)
 ;;00093310756
 ;;9002226.02101,"1033,00093310756 ",.02)
 ;;00093310756
 ;;9002226.02101,"1033,00093310793 ",.01)
 ;;00093310793
 ;;9002226.02101,"1033,00093310793 ",.02)
 ;;00093310793
 ;;9002226.02101,"1033,00093310905 ",.01)
 ;;00093310905
 ;;9002226.02101,"1033,00093310905 ",.02)
 ;;00093310905
 ;;9002226.02101,"1033,00093310919 ",.01)
 ;;00093310919
 ;;9002226.02101,"1033,00093310919 ",.02)
 ;;00093310919
 ;;9002226.02101,"1033,00093310953 ",.01)
 ;;00093310953
 ;;9002226.02101,"1033,00093310953 ",.02)
 ;;00093310953
 ;;9002226.02101,"1033,00093310993 ",.01)
 ;;00093310993
 ;;9002226.02101,"1033,00093310993 ",.02)
 ;;00093310993
 ;;9002226.02101,"1033,00093312301 ",.01)
 ;;00093312301
 ;;9002226.02101,"1033,00093312301 ",.02)
 ;;00093312301
 ;;9002226.02101,"1033,00093312501 ",.01)
 ;;00093312501
 ;;9002226.02101,"1033,00093312501 ",.02)
 ;;00093312501
 ;;9002226.02101,"1033,00093314501 ",.01)
 ;;00093314501
 ;;9002226.02101,"1033,00093314501 ",.02)
 ;;00093314501
 ;;9002226.02101,"1033,00093314505 ",.01)
 ;;00093314505
 ;;9002226.02101,"1033,00093314505 ",.02)
 ;;00093314505
 ;;9002226.02101,"1033,00093314519 ",.01)
 ;;00093314519
 ;;9002226.02101,"1033,00093314519 ",.02)
 ;;00093314519
 ;;9002226.02101,"1033,00093314593 ",.01)
 ;;00093314593
 ;;9002226.02101,"1033,00093314593 ",.02)
 ;;00093314593
 ;;9002226.02101,"1033,00093314701 ",.01)
 ;;00093314701
 ;;9002226.02101,"1033,00093314701 ",.02)
 ;;00093314701
 ;;9002226.02101,"1033,00093314705 ",.01)
 ;;00093314705
 ;;9002226.02101,"1033,00093314705 ",.02)
 ;;00093314705
 ;;9002226.02101,"1033,00093314719 ",.01)
 ;;00093314719
 ;;9002226.02101,"1033,00093314719 ",.02)
 ;;00093314719
 ;;9002226.02101,"1033,00093314793 ",.01)
 ;;00093314793
 ;;9002226.02101,"1033,00093314793 ",.02)
 ;;00093314793
 ;;9002226.02101,"1033,00093316006 ",.01)
 ;;00093316006
 ;;9002226.02101,"1033,00093316006 ",.02)
 ;;00093316006
 ;;9002226.02101,"1033,00093316501 ",.01)
 ;;00093316501
 ;;9002226.02101,"1033,00093316501 ",.02)
 ;;00093316501
 ;;9002226.02101,"1033,00093316753 ",.01)
 ;;00093316753
 ;;9002226.02101,"1033,00093316753 ",.02)
 ;;00093316753
 ;;9002226.02101,"1033,00093317101 ",.01)
 ;;00093317101
 ;;9002226.02101,"1033,00093317101 ",.02)
 ;;00093317101
 ;;9002226.02101,"1033,00093319601 ",.01)
 ;;00093319601
 ;;9002226.02101,"1033,00093319601 ",.02)
 ;;00093319601
 ;;9002226.02101,"1033,00093319653 ",.01)
 ;;00093319653
 ;;9002226.02101,"1033,00093319653 ",.02)
 ;;00093319653
 ;;9002226.02101,"1033,00093405953 ",.01)
 ;;00093405953
 ;;9002226.02101,"1033,00093405953 ",.02)
 ;;00093405953
 ;;9002226.02101,"1033,00093412573 ",.01)
 ;;00093412573
 ;;9002226.02101,"1033,00093412573 ",.02)
 ;;00093412573
 ;;9002226.02101,"1033,00093412574 ",.01)
 ;;00093412574
 ;;9002226.02101,"1033,00093412574 ",.02)
 ;;00093412574
 ;;9002226.02101,"1033,00093412773 ",.01)
 ;;00093412773
 ;;9002226.02101,"1033,00093412773 ",.02)
 ;;00093412773
 ;;9002226.02101,"1033,00093412774 ",.01)
 ;;00093412774
 ;;9002226.02101,"1033,00093412774 ",.02)
 ;;00093412774
 ;;9002226.02101,"1033,00093413664 ",.01)
 ;;00093413664
 ;;9002226.02101,"1033,00093413664 ",.02)
 ;;00093413664
 ;;9002226.02101,"1033,00093413673 ",.01)
 ;;00093413673
 ;;9002226.02101,"1033,00093413673 ",.02)
 ;;00093413673
 ;;9002226.02101,"1033,00093413764 ",.01)
 ;;00093413764
 ;;9002226.02101,"1033,00093413764 ",.02)
 ;;00093413764
 ;;9002226.02101,"1033,00093413773 ",.01)
 ;;00093413773
 ;;9002226.02101,"1033,00093413773 ",.02)
 ;;00093413773
 ;;9002226.02101,"1033,00093415073 ",.01)
 ;;00093415073
 ;;9002226.02101,"1033,00093415073 ",.02)
 ;;00093415073
 ;;9002226.02101,"1033,00093415079 ",.01)
 ;;00093415079
 ;;9002226.02101,"1033,00093415079 ",.02)
 ;;00093415079
 ;;9002226.02101,"1033,00093415080 ",.01)
 ;;00093415080
 ;;9002226.02101,"1033,00093415080 ",.02)
 ;;00093415080
 ;;9002226.02101,"1033,00093415573 ",.01)
 ;;00093415573
 ;;9002226.02101,"1033,00093415573 ",.02)
 ;;00093415573
 ;;9002226.02101,"1033,00093415579 ",.01)
 ;;00093415579
 ;;9002226.02101,"1033,00093415579 ",.02)
 ;;00093415579
 ;;9002226.02101,"1033,00093415580 ",.01)
 ;;00093415580
 ;;9002226.02101,"1033,00093415580 ",.02)
 ;;00093415580
 ;;9002226.02101,"1033,00093416073 ",.01)
 ;;00093416073
 ;;9002226.02101,"1033,00093416073 ",.02)
 ;;00093416073
 ;;9002226.02101,"1033,00093416076 ",.01)
 ;;00093416076
 ;;9002226.02101,"1033,00093416076 ",.02)
 ;;00093416076
 ;;9002226.02101,"1033,00093416078 ",.01)
 ;;00093416078
 ;;9002226.02101,"1033,00093416078 ",.02)
 ;;00093416078
 ;;9002226.02101,"1033,00093416173 ",.01)
 ;;00093416173
 ;;9002226.02101,"1033,00093416173 ",.02)
 ;;00093416173
 ;;9002226.02101,"1033,00093416176 ",.01)
 ;;00093416176
 ;;9002226.02101,"1033,00093416176 ",.02)
 ;;00093416176
 ;;9002226.02101,"1033,00093416178 ",.01)
 ;;00093416178
 ;;9002226.02101,"1033,00093416178 ",.02)
 ;;00093416178
 ;;9002226.02101,"1033,00093417064 ",.01)
 ;;00093417064
 ;;9002226.02101,"1033,00093417064 ",.02)
 ;;00093417064
 ;;9002226.02101,"1033,00093417573 ",.01)
 ;;00093417573
 ;;9002226.02101,"1033,00093417573 ",.02)
 ;;00093417573
 ;;9002226.02101,"1033,00093417574 ",.01)
 ;;00093417574
 ;;9002226.02101,"1033,00093417574 ",.02)
 ;;00093417574
 ;;9002226.02101,"1033,00093417773 ",.01)
 ;;00093417773
 ;;9002226.02101,"1033,00093417773 ",.02)
 ;;00093417773
 ;;9002226.02101,"1033,00093417774 ",.01)
 ;;00093417774
 ;;9002226.02101,"1033,00093417774 ",.02)
 ;;00093417774
 ;;9002226.02101,"1033,00093418073 ",.01)
 ;;00093418073
 ;;9002226.02101,"1033,00093418073 ",.02)
 ;;00093418073
 ;;9002226.02101,"1033,00093418076 ",.01)
 ;;00093418076
 ;;9002226.02101,"1033,00093418076 ",.02)
 ;;00093418076
 ;;9002226.02101,"1033,00093418173 ",.01)
 ;;00093418173
 ;;9002226.02101,"1033,00093418173 ",.02)
 ;;00093418173
 ;;9002226.02101,"1033,00093418178 ",.01)
 ;;00093418178
 ;;9002226.02101,"1033,00093418178 ",.02)
 ;;00093418178
 ;;9002226.02101,"1033,00093519501 ",.01)
 ;;00093519501
 ;;9002226.02101,"1033,00093519501 ",.02)
 ;;00093519501
 ;;9002226.02101,"1033,00093525601 ",.01)
 ;;00093525601
 ;;9002226.02101,"1033,00093525601 ",.02)
 ;;00093525601
 ;;9002226.02101,"1033,00093525668 ",.01)
 ;;00093525668
 ;;9002226.02101,"1033,00093525668 ",.02)
 ;;00093525668
 ;;9002226.02101,"1033,00093547616 ",.01)
 ;;00093547616
 ;;9002226.02101,"1033,00093547616 ",.02)
 ;;00093547616
 ;;9002226.02101,"1033,00093714656 ",.01)
 ;;00093714656
 ;;9002226.02101,"1033,00093714656 ",.02)
 ;;00093714656
 ;;9002226.02101,"1033,00093714823 ",.01)
 ;;00093714823
 ;;9002226.02101,"1033,00093714823 ",.02)
 ;;00093714823
 ;;9002226.02101,"1033,00093714923 ",.01)
 ;;00093714923
 ;;9002226.02101,"1033,00093714923 ",.02)
 ;;00093714923
 ;;9002226.02101,"1033,00093714931 ",.01)
 ;;00093714931
 ;;9002226.02101,"1033,00093714931 ",.02)
 ;;00093714931
 ;;9002226.02101,"1033,00093714994 ",.01)
 ;;00093714994
 ;;9002226.02101,"1033,00093714994 ",.02)
 ;;00093714994
 ;;9002226.02101,"1033,00093715706 ",.01)
 ;;00093715706
 ;;9002226.02101,"1033,00093715706 ",.02)
 ;;00093715706
 ;;9002226.02101,"1033,00093715806 ",.01)
 ;;00093715806
 ;;9002226.02101,"1033,00093715806 ",.02)
 ;;00093715806
 ;;9002226.02101,"1033,00093718001 ",.01)
 ;;00093718001
 ;;9002226.02101,"1033,00093718001 ",.02)
 ;;00093718001
 ;;9002226.02101,"1033,00093718101 ",.01)
 ;;00093718101
 ;;9002226.02101,"1033,00093718101 ",.02)
 ;;00093718101
 ;;9002226.02101,"1033,00093718201 ",.01)
 ;;00093718201
 ;;9002226.02101,"1033,00093718201 ",.02)
 ;;00093718201
 ;;9002226.02101,"1033,00093724406 ",.01)
 ;;00093724406
 ;;9002226.02101,"1033,00093724406 ",.02)
 ;;00093724406
 ;;9002226.02101,"1033,00093729353 ",.01)
 ;;00093729353
 ;;9002226.02101,"1033,00093729353 ",.02)
 ;;00093729353
 ;;9002226.02101,"1033,00093730001 ",.01)
 ;;00093730001
 ;;9002226.02101,"1033,00093730001 ",.02)
 ;;00093730001
 ;;9002226.02101,"1033,00093867574 ",.01)
 ;;00093867574
 ;;9002226.02101,"1033,00093867574 ",.02)
 ;;00093867574
 ;;9002226.02101,"1033,00093867575 ",.01)
 ;;00093867575
 ;;9002226.02101,"1033,00093867575 ",.02)
 ;;00093867575
 ;;9002226.02101,"1033,00093867578 ",.01)
 ;;00093867578
 ;;9002226.02101,"1033,00093867578 ",.02)
 ;;00093867578
 ;;9002226.02101,"1033,00115120801 ",.01)
 ;;00115120801
 ;;9002226.02101,"1033,00115120801 ",.02)
 ;;00115120801
 ;;9002226.02101,"1033,00115120808 ",.01)
 ;;00115120808
 ;;9002226.02101,"1033,00115120808 ",.02)
 ;;00115120808
 ;;9002226.02101,"1033,00115120813 ",.01)
 ;;00115120813
 ;;9002226.02101,"1033,00115120813 ",.02)
 ;;00115120813
 ;;9002226.02101,"1033,00115120901 ",.01)
 ;;00115120901
 ;;9002226.02101,"1033,00115120901 ",.02)
 ;;00115120901
 ;;9002226.02101,"1033,00115120903 ",.01)
 ;;00115120903
 ;;9002226.02101,"1033,00115120903 ",.02)
 ;;00115120903
 ;;9002226.02101,"1033,00115120908 ",.01)
 ;;00115120908
 ;;9002226.02101,"1033,00115120908 ",.02)
 ;;00115120908
 ;;9002226.02101,"1033,00115124501 ",.01)
 ;;00115124501
 ;;9002226.02101,"1033,00115124501 ",.02)
 ;;00115124501
 ;;9002226.02101,"1033,00115124502 ",.01)
 ;;00115124502
 ;;9002226.02101,"1033,00115124502 ",.02)
 ;;00115124502
 ;;9002226.02101,"1033,00115124503 ",.01)
 ;;00115124503
 ;;9002226.02101,"1033,00115124503 ",.02)
 ;;00115124503
 ;;9002226.02101,"1033,00115124508 ",.01)
 ;;00115124508
 ;;9002226.02101,"1033,00115124508 ",.02)
 ;;00115124508
 ;;9002226.02101,"1033,00115124510 ",.01)
 ;;00115124510
 ;;9002226.02101,"1033,00115124510 ",.02)
 ;;00115124510