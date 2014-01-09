BGP33I24 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 23, 2013;
 ;;13.0;IHS CLINICAL REPORTING;**1**;NOV 20, 2012;Build 7
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"798,13411-0173-01 ",.02)
 ;;13411-0173-01
 ;;9002226.02101,"798,13411-0173-03 ",.01)
 ;;13411-0173-03
 ;;9002226.02101,"798,13411-0173-03 ",.02)
 ;;13411-0173-03
 ;;9002226.02101,"798,13411-0173-06 ",.01)
 ;;13411-0173-06
 ;;9002226.02101,"798,13411-0173-06 ",.02)
 ;;13411-0173-06
 ;;9002226.02101,"798,13411-0173-09 ",.01)
 ;;13411-0173-09
 ;;9002226.02101,"798,13411-0173-09 ",.02)
 ;;13411-0173-09
 ;;9002226.02101,"798,13411-0173-10 ",.01)
 ;;13411-0173-10
 ;;9002226.02101,"798,13411-0173-10 ",.02)
 ;;13411-0173-10
 ;;9002226.02101,"798,13668-0004-01 ",.01)
 ;;13668-0004-01
 ;;9002226.02101,"798,13668-0004-01 ",.02)
 ;;13668-0004-01
 ;;9002226.02101,"798,13668-0004-05 ",.01)
 ;;13668-0004-05
 ;;9002226.02101,"798,13668-0004-05 ",.02)
 ;;13668-0004-05
 ;;9002226.02101,"798,13668-0004-10 ",.01)
 ;;13668-0004-10
 ;;9002226.02101,"798,13668-0004-10 ",.02)
 ;;13668-0004-10
 ;;9002226.02101,"798,13668-0004-30 ",.01)
 ;;13668-0004-30
 ;;9002226.02101,"798,13668-0004-30 ",.02)
 ;;13668-0004-30
 ;;9002226.02101,"798,13668-0004-50 ",.01)
 ;;13668-0004-50
 ;;9002226.02101,"798,13668-0004-50 ",.02)
 ;;13668-0004-50
 ;;9002226.02101,"798,13668-0004-90 ",.01)
 ;;13668-0004-90
 ;;9002226.02101,"798,13668-0004-90 ",.02)
 ;;13668-0004-90
 ;;9002226.02101,"798,13668-0005-01 ",.01)
 ;;13668-0005-01
 ;;9002226.02101,"798,13668-0005-01 ",.02)
 ;;13668-0005-01
 ;;9002226.02101,"798,13668-0005-05 ",.01)
 ;;13668-0005-05
 ;;9002226.02101,"798,13668-0005-05 ",.02)
 ;;13668-0005-05
 ;;9002226.02101,"798,13668-0005-10 ",.01)
 ;;13668-0005-10
 ;;9002226.02101,"798,13668-0005-10 ",.02)
 ;;13668-0005-10
 ;;9002226.02101,"798,13668-0005-30 ",.01)
 ;;13668-0005-30
 ;;9002226.02101,"798,13668-0005-30 ",.02)
 ;;13668-0005-30
 ;;9002226.02101,"798,13668-0005-50 ",.01)
 ;;13668-0005-50
 ;;9002226.02101,"798,13668-0005-50 ",.02)
 ;;13668-0005-50
 ;;9002226.02101,"798,13668-0005-90 ",.01)
 ;;13668-0005-90
 ;;9002226.02101,"798,13668-0005-90 ",.02)
 ;;13668-0005-90
 ;;9002226.02101,"798,13668-0006-01 ",.01)
 ;;13668-0006-01
 ;;9002226.02101,"798,13668-0006-01 ",.02)
 ;;13668-0006-01
 ;;9002226.02101,"798,13668-0006-05 ",.01)
 ;;13668-0006-05
 ;;9002226.02101,"798,13668-0006-05 ",.02)
 ;;13668-0006-05
 ;;9002226.02101,"798,13668-0006-10 ",.01)
 ;;13668-0006-10
 ;;9002226.02101,"798,13668-0006-10 ",.02)
 ;;13668-0006-10
 ;;9002226.02101,"798,13668-0006-30 ",.01)
 ;;13668-0006-30
 ;;9002226.02101,"798,13668-0006-30 ",.02)
 ;;13668-0006-30
 ;;9002226.02101,"798,13668-0006-50 ",.01)
 ;;13668-0006-50
 ;;9002226.02101,"798,13668-0006-50 ",.02)
 ;;13668-0006-50
 ;;9002226.02101,"798,13668-0006-90 ",.01)
 ;;13668-0006-90
 ;;9002226.02101,"798,13668-0006-90 ",.02)
 ;;13668-0006-90
 ;;9002226.02101,"798,13668-0009-01 ",.01)
 ;;13668-0009-01
 ;;9002226.02101,"798,13668-0009-01 ",.02)
 ;;13668-0009-01
 ;;9002226.02101,"798,13668-0009-05 ",.01)
 ;;13668-0009-05
 ;;9002226.02101,"798,13668-0009-05 ",.02)
 ;;13668-0009-05
 ;;9002226.02101,"798,13668-0009-09 ",.01)
 ;;13668-0009-09
 ;;9002226.02101,"798,13668-0009-09 ",.02)
 ;;13668-0009-09
 ;;9002226.02101,"798,13668-0009-74 ",.01)
 ;;13668-0009-74
 ;;9002226.02101,"798,13668-0009-74 ",.02)
 ;;13668-0009-74
 ;;9002226.02101,"798,13668-0010-01 ",.01)
 ;;13668-0010-01
 ;;9002226.02101,"798,13668-0010-01 ",.02)
 ;;13668-0010-01
 ;;9002226.02101,"798,13668-0010-05 ",.01)
 ;;13668-0010-05
 ;;9002226.02101,"798,13668-0010-05 ",.02)
 ;;13668-0010-05
 ;;9002226.02101,"798,13668-0010-06 ",.01)
 ;;13668-0010-06
 ;;9002226.02101,"798,13668-0010-06 ",.02)
 ;;13668-0010-06
 ;;9002226.02101,"798,13668-0010-30 ",.01)
 ;;13668-0010-30
 ;;9002226.02101,"798,13668-0010-30 ",.02)
 ;;13668-0010-30
 ;;9002226.02101,"798,13668-0010-74 ",.01)
 ;;13668-0010-74
 ;;9002226.02101,"798,13668-0010-74 ",.02)
 ;;13668-0010-74
 ;;9002226.02101,"798,13668-0011-01 ",.01)
 ;;13668-0011-01
 ;;9002226.02101,"798,13668-0011-01 ",.02)
 ;;13668-0011-01
 ;;9002226.02101,"798,13668-0011-05 ",.01)
 ;;13668-0011-05
 ;;9002226.02101,"798,13668-0011-05 ",.02)
 ;;13668-0011-05
 ;;9002226.02101,"798,13668-0011-08 ",.01)
 ;;13668-0011-08
 ;;9002226.02101,"798,13668-0011-08 ",.02)
 ;;13668-0011-08
 ;;9002226.02101,"798,13668-0011-30 ",.01)
 ;;13668-0011-30
 ;;9002226.02101,"798,13668-0011-30 ",.02)
 ;;13668-0011-30
 ;;9002226.02101,"798,13668-0018-30 ",.01)
 ;;13668-0018-30
 ;;9002226.02101,"798,13668-0018-30 ",.02)
 ;;13668-0018-30
 ;;9002226.02101,"798,13668-0018-90 ",.01)
 ;;13668-0018-90
 ;;9002226.02101,"798,13668-0018-90 ",.02)
 ;;13668-0018-90
 ;;9002226.02101,"798,13668-0019-30 ",.01)
 ;;13668-0019-30
 ;;9002226.02101,"798,13668-0019-30 ",.02)
 ;;13668-0019-30
 ;;9002226.02101,"798,13668-0019-90 ",.01)
 ;;13668-0019-90
 ;;9002226.02101,"798,13668-0019-90 ",.02)
 ;;13668-0019-90
 ;;9002226.02101,"798,13668-0020-30 ",.01)
 ;;13668-0020-30
 ;;9002226.02101,"798,13668-0020-30 ",.02)
 ;;13668-0020-30
 ;;9002226.02101,"798,13668-0020-90 ",.01)
 ;;13668-0020-90
 ;;9002226.02101,"798,13668-0020-90 ",.02)
 ;;13668-0020-90
 ;;9002226.02101,"798,16241-0759-01 ",.01)
 ;;16241-0759-01
 ;;9002226.02101,"798,16241-0759-01 ",.02)
 ;;16241-0759-01
 ;;9002226.02101,"798,16252-0533-30 ",.01)
 ;;16252-0533-30
 ;;9002226.02101,"798,16252-0533-30 ",.02)
 ;;16252-0533-30
 ;;9002226.02101,"798,16252-0533-50 ",.01)
 ;;16252-0533-50
 ;;9002226.02101,"798,16252-0533-50 ",.02)
 ;;16252-0533-50
 ;;9002226.02101,"798,16252-0534-30 ",.01)
 ;;16252-0534-30
 ;;9002226.02101,"798,16252-0534-30 ",.02)
 ;;16252-0534-30
 ;;9002226.02101,"798,16252-0534-50 ",.01)
 ;;16252-0534-50
 ;;9002226.02101,"798,16252-0534-50 ",.02)
 ;;16252-0534-50
 ;;9002226.02101,"798,16252-0534-90 ",.01)
 ;;16252-0534-90
 ;;9002226.02101,"798,16252-0534-90 ",.02)
 ;;16252-0534-90
 ;;9002226.02101,"798,16252-0535-30 ",.01)
 ;;16252-0535-30
 ;;9002226.02101,"798,16252-0535-30 ",.02)
 ;;16252-0535-30
 ;;9002226.02101,"798,16252-0535-50 ",.01)
 ;;16252-0535-50
 ;;9002226.02101,"798,16252-0535-50 ",.02)
 ;;16252-0535-50
 ;;9002226.02101,"798,16252-0535-90 ",.01)
 ;;16252-0535-90
 ;;9002226.02101,"798,16252-0535-90 ",.02)
 ;;16252-0535-90
 ;;9002226.02101,"798,16590-0011-30 ",.01)
 ;;16590-0011-30
 ;;9002226.02101,"798,16590-0011-30 ",.02)
 ;;16590-0011-30
 ;;9002226.02101,"798,16590-0011-56 ",.01)
 ;;16590-0011-56
 ;;9002226.02101,"798,16590-0011-56 ",.02)
 ;;16590-0011-56
 ;;9002226.02101,"798,16590-0011-60 ",.01)
 ;;16590-0011-60
 ;;9002226.02101,"798,16590-0011-60 ",.02)
 ;;16590-0011-60
 ;;9002226.02101,"798,16590-0011-72 ",.01)
 ;;16590-0011-72
 ;;9002226.02101,"798,16590-0011-72 ",.02)
 ;;16590-0011-72
 ;;9002226.02101,"798,16590-0011-90 ",.01)
 ;;16590-0011-90
 ;;9002226.02101,"798,16590-0011-90 ",.02)
 ;;16590-0011-90
 ;;9002226.02101,"798,16590-0012-15 ",.01)
 ;;16590-0012-15
 ;;9002226.02101,"798,16590-0012-15 ",.02)
 ;;16590-0012-15
 ;;9002226.02101,"798,16590-0012-30 ",.01)
 ;;16590-0012-30
 ;;9002226.02101,"798,16590-0012-30 ",.02)
 ;;16590-0012-30
 ;;9002226.02101,"798,16590-0012-60 ",.01)
 ;;16590-0012-60
 ;;9002226.02101,"798,16590-0012-60 ",.02)
 ;;16590-0012-60
 ;;9002226.02101,"798,16590-0012-90 ",.01)
 ;;16590-0012-90
 ;;9002226.02101,"798,16590-0012-90 ",.02)
 ;;16590-0012-90
 ;;9002226.02101,"798,16590-0013-30 ",.01)
 ;;16590-0013-30
 ;;9002226.02101,"798,16590-0013-30 ",.02)
 ;;16590-0013-30
 ;;9002226.02101,"798,16590-0013-60 ",.01)
 ;;16590-0013-60
 ;;9002226.02101,"798,16590-0013-60 ",.02)
 ;;16590-0013-60
 ;;9002226.02101,"798,16590-0013-90 ",.01)
 ;;16590-0013-90
 ;;9002226.02101,"798,16590-0013-90 ",.02)
 ;;16590-0013-90
 ;;9002226.02101,"798,16590-0036-30 ",.01)
 ;;16590-0036-30
 ;;9002226.02101,"798,16590-0036-30 ",.02)
 ;;16590-0036-30
 ;;9002226.02101,"798,16590-0036-60 ",.01)
 ;;16590-0036-60
 ;;9002226.02101,"798,16590-0036-60 ",.02)
 ;;16590-0036-60
 ;;9002226.02101,"798,16590-0037-30 ",.01)
 ;;16590-0037-30
 ;;9002226.02101,"798,16590-0037-30 ",.02)
 ;;16590-0037-30
 ;;9002226.02101,"798,16590-0037-60 ",.01)
 ;;16590-0037-60
 ;;9002226.02101,"798,16590-0037-60 ",.02)
 ;;16590-0037-60
 ;;9002226.02101,"798,16590-0038-30 ",.01)
 ;;16590-0038-30
 ;;9002226.02101,"798,16590-0038-30 ",.02)
 ;;16590-0038-30
 ;;9002226.02101,"798,16590-0038-60 ",.01)
 ;;16590-0038-60
 ;;9002226.02101,"798,16590-0038-60 ",.02)
 ;;16590-0038-60
 ;;9002226.02101,"798,16590-0055-30 ",.01)
 ;;16590-0055-30
 ;;9002226.02101,"798,16590-0055-30 ",.02)
 ;;16590-0055-30
 ;;9002226.02101,"798,16590-0055-60 ",.01)
 ;;16590-0055-60
 ;;9002226.02101,"798,16590-0055-60 ",.02)
 ;;16590-0055-60
 ;;9002226.02101,"798,16590-0055-90 ",.01)
 ;;16590-0055-90
 ;;9002226.02101,"798,16590-0055-90 ",.02)
 ;;16590-0055-90
 ;;9002226.02101,"798,16590-0056-30 ",.01)
 ;;16590-0056-30
 ;;9002226.02101,"798,16590-0056-30 ",.02)
 ;;16590-0056-30
 ;;9002226.02101,"798,16590-0056-60 ",.01)
 ;;16590-0056-60
 ;;9002226.02101,"798,16590-0056-60 ",.02)
 ;;16590-0056-60
 ;;9002226.02101,"798,16590-0056-90 ",.01)
 ;;16590-0056-90
 ;;9002226.02101,"798,16590-0056-90 ",.02)
 ;;16590-0056-90
 ;;9002226.02101,"798,16590-0066-30 ",.01)
 ;;16590-0066-30
 ;;9002226.02101,"798,16590-0066-30 ",.02)
 ;;16590-0066-30
 ;;9002226.02101,"798,16590-0066-60 ",.01)
 ;;16590-0066-60
 ;;9002226.02101,"798,16590-0066-60 ",.02)
 ;;16590-0066-60
 ;;9002226.02101,"798,16590-0067-30 ",.01)
 ;;16590-0067-30
 ;;9002226.02101,"798,16590-0067-30 ",.02)
 ;;16590-0067-30
 ;;9002226.02101,"798,16590-0067-60 ",.01)
 ;;16590-0067-60
 ;;9002226.02101,"798,16590-0067-60 ",.02)
 ;;16590-0067-60
 ;;9002226.02101,"798,16590-0081-30 ",.01)
 ;;16590-0081-30
 ;;9002226.02101,"798,16590-0081-30 ",.02)
 ;;16590-0081-30
 ;;9002226.02101,"798,16590-0081-60 ",.01)
 ;;16590-0081-60
 ;;9002226.02101,"798,16590-0081-60 ",.02)
 ;;16590-0081-60
 ;;9002226.02101,"798,16590-0081-72 ",.01)
 ;;16590-0081-72
 ;;9002226.02101,"798,16590-0081-72 ",.02)
 ;;16590-0081-72
 ;;9002226.02101,"798,16590-0081-90 ",.01)
 ;;16590-0081-90
 ;;9002226.02101,"798,16590-0081-90 ",.02)
 ;;16590-0081-90
 ;;9002226.02101,"798,16590-0083-30 ",.01)
 ;;16590-0083-30
 ;;9002226.02101,"798,16590-0083-30 ",.02)
 ;;16590-0083-30
 ;;9002226.02101,"798,16590-0083-60 ",.01)
 ;;16590-0083-60
 ;;9002226.02101,"798,16590-0083-60 ",.02)
 ;;16590-0083-60
 ;;9002226.02101,"798,16590-0084-30 ",.01)
 ;;16590-0084-30
 ;;9002226.02101,"798,16590-0084-30 ",.02)
 ;;16590-0084-30
 ;;9002226.02101,"798,16590-0084-60 ",.01)
 ;;16590-0084-60
 ;;9002226.02101,"798,16590-0084-60 ",.02)
 ;;16590-0084-60
 ;;9002226.02101,"798,16590-0085-30 ",.01)
 ;;16590-0085-30
 ;;9002226.02101,"798,16590-0085-30 ",.02)
 ;;16590-0085-30
 ;;9002226.02101,"798,16590-0085-60 ",.01)
 ;;16590-0085-60
 ;;9002226.02101,"798,16590-0085-60 ",.02)
 ;;16590-0085-60
 ;;9002226.02101,"798,16590-0086-30 ",.01)
 ;;16590-0086-30
 ;;9002226.02101,"798,16590-0086-30 ",.02)
 ;;16590-0086-30
 ;;9002226.02101,"798,16590-0086-60 ",.01)
 ;;16590-0086-60
 ;;9002226.02101,"798,16590-0086-60 ",.02)
 ;;16590-0086-60
 ;;9002226.02101,"798,16590-0087-30 ",.01)
 ;;16590-0087-30
 ;;9002226.02101,"798,16590-0087-30 ",.02)
 ;;16590-0087-30
 ;;9002226.02101,"798,16590-0087-60 ",.01)
 ;;16590-0087-60
 ;;9002226.02101,"798,16590-0087-60 ",.02)
 ;;16590-0087-60
 ;;9002226.02101,"798,16590-0099-30 ",.01)
 ;;16590-0099-30
 ;;9002226.02101,"798,16590-0099-30 ",.02)
 ;;16590-0099-30
 ;;9002226.02101,"798,16590-0099-60 ",.01)
 ;;16590-0099-60
 ;;9002226.02101,"798,16590-0099-60 ",.02)
 ;;16590-0099-60
 ;;9002226.02101,"798,16590-0100-30 ",.01)
 ;;16590-0100-30
 ;;9002226.02101,"798,16590-0100-30 ",.02)
 ;;16590-0100-30
 ;;9002226.02101,"798,16590-0100-60 ",.01)
 ;;16590-0100-60
 ;;9002226.02101,"798,16590-0100-60 ",.02)
 ;;16590-0100-60
 ;;9002226.02101,"798,16590-0100-90 ",.01)
 ;;16590-0100-90
 ;;9002226.02101,"798,16590-0100-90 ",.02)
 ;;16590-0100-90
 ;;9002226.02101,"798,16590-0139-30 ",.01)
 ;;16590-0139-30
 ;;9002226.02101,"798,16590-0139-30 ",.02)
 ;;16590-0139-30
 ;;9002226.02101,"798,16590-0139-60 ",.01)
 ;;16590-0139-60
 ;;9002226.02101,"798,16590-0139-60 ",.02)
 ;;16590-0139-60
 ;;9002226.02101,"798,16590-0153-30 ",.01)
 ;;16590-0153-30
 ;;9002226.02101,"798,16590-0153-30 ",.02)
 ;;16590-0153-30
 ;;9002226.02101,"798,16590-0153-60 ",.01)
 ;;16590-0153-60
 ;;9002226.02101,"798,16590-0153-60 ",.02)
 ;;16590-0153-60
 ;;9002226.02101,"798,16590-0154-30 ",.01)
 ;;16590-0154-30
 ;;9002226.02101,"798,16590-0154-30 ",.02)
 ;;16590-0154-30
 ;;9002226.02101,"798,16590-0154-60 ",.01)
 ;;16590-0154-60
 ;;9002226.02101,"798,16590-0154-60 ",.02)
 ;;16590-0154-60
 ;;9002226.02101,"798,16590-0155-30 ",.01)
 ;;16590-0155-30
 ;;9002226.02101,"798,16590-0155-30 ",.02)
 ;;16590-0155-30
 ;;9002226.02101,"798,16590-0155-60 ",.01)
 ;;16590-0155-60
 ;;9002226.02101,"798,16590-0155-60 ",.02)
 ;;16590-0155-60
 ;;9002226.02101,"798,16590-0166-30 ",.01)
 ;;16590-0166-30
 ;;9002226.02101,"798,16590-0166-30 ",.02)
 ;;16590-0166-30
 ;;9002226.02101,"798,16590-0166-60 ",.01)
 ;;16590-0166-60
 ;;9002226.02101,"798,16590-0166-60 ",.02)
 ;;16590-0166-60
 ;;9002226.02101,"798,16590-0166-90 ",.01)
 ;;16590-0166-90
 ;;9002226.02101,"798,16590-0166-90 ",.02)
 ;;16590-0166-90
 ;;9002226.02101,"798,16590-0171-30 ",.01)
 ;;16590-0171-30
 ;;9002226.02101,"798,16590-0171-30 ",.02)
 ;;16590-0171-30
 ;;9002226.02101,"798,16590-0171-60 ",.01)
 ;;16590-0171-60
 ;;9002226.02101,"798,16590-0171-60 ",.02)
 ;;16590-0171-60
 ;;9002226.02101,"798,16590-0171-90 ",.01)
 ;;16590-0171-90