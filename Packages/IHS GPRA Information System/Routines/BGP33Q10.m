BGP33Q10 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 23, 2013;
 ;;13.0;IHS CLINICAL REPORTING;**1**;NOV 20, 2012;Build 7
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"805,00406-2024-01 ",.01)
 ;;00406-2024-01
 ;;9002226.02101,"805,00406-2024-01 ",.02)
 ;;00406-2024-01
 ;;9002226.02101,"805,00406-2024-10 ",.01)
 ;;00406-2024-10
 ;;9002226.02101,"805,00406-2024-10 ",.02)
 ;;00406-2024-10
 ;;9002226.02101,"805,00440-7170-30 ",.01)
 ;;00440-7170-30
 ;;9002226.02101,"805,00440-7170-30 ",.02)
 ;;00440-7170-30
 ;;9002226.02101,"805,00440-7171-10 ",.01)
 ;;00440-7171-10
 ;;9002226.02101,"805,00440-7171-10 ",.02)
 ;;00440-7171-10
 ;;9002226.02101,"805,00440-7172-30 ",.01)
 ;;00440-7172-30
 ;;9002226.02101,"805,00440-7172-30 ",.02)
 ;;00440-7172-30
 ;;9002226.02101,"805,00440-7785-30 ",.01)
 ;;00440-7785-30
 ;;9002226.02101,"805,00440-7785-30 ",.02)
 ;;00440-7785-30
 ;;9002226.02101,"805,00456-1402-01 ",.01)
 ;;00456-1402-01
 ;;9002226.02101,"805,00456-1402-01 ",.02)
 ;;00456-1402-01
 ;;9002226.02101,"805,00456-1402-30 ",.01)
 ;;00456-1402-30
 ;;9002226.02101,"805,00456-1402-30 ",.02)
 ;;00456-1402-30
 ;;9002226.02101,"805,00456-1402-63 ",.01)
 ;;00456-1402-63
 ;;9002226.02101,"805,00456-1402-63 ",.02)
 ;;00456-1402-63
 ;;9002226.02101,"805,00456-1405-01 ",.01)
 ;;00456-1405-01
 ;;9002226.02101,"805,00456-1405-01 ",.02)
 ;;00456-1405-01
 ;;9002226.02101,"805,00456-1405-30 ",.01)
 ;;00456-1405-30
 ;;9002226.02101,"805,00456-1405-30 ",.02)
 ;;00456-1405-30
 ;;9002226.02101,"805,00456-1405-63 ",.01)
 ;;00456-1405-63
 ;;9002226.02101,"805,00456-1405-63 ",.02)
 ;;00456-1405-63
 ;;9002226.02101,"805,00456-1410-01 ",.01)
 ;;00456-1410-01
 ;;9002226.02101,"805,00456-1410-01 ",.02)
 ;;00456-1410-01
 ;;9002226.02101,"805,00456-1410-30 ",.01)
 ;;00456-1410-30
 ;;9002226.02101,"805,00456-1410-30 ",.02)
 ;;00456-1410-30
 ;;9002226.02101,"805,00456-1410-63 ",.01)
 ;;00456-1410-63
 ;;9002226.02101,"805,00456-1410-63 ",.02)
 ;;00456-1410-63
 ;;9002226.02101,"805,00456-1420-01 ",.01)
 ;;00456-1420-01
 ;;9002226.02101,"805,00456-1420-01 ",.02)
 ;;00456-1420-01
 ;;9002226.02101,"805,00456-1420-30 ",.01)
 ;;00456-1420-30
 ;;9002226.02101,"805,00456-1420-30 ",.02)
 ;;00456-1420-30
 ;;9002226.02101,"805,00490-0053-00 ",.01)
 ;;00490-0053-00
 ;;9002226.02101,"805,00490-0053-00 ",.02)
 ;;00490-0053-00
 ;;9002226.02101,"805,00490-0053-30 ",.01)
 ;;00490-0053-30
 ;;9002226.02101,"805,00490-0053-30 ",.02)
 ;;00490-0053-30
 ;;9002226.02101,"805,00490-0053-60 ",.01)
 ;;00490-0053-60
 ;;9002226.02101,"805,00490-0053-60 ",.02)
 ;;00490-0053-60
 ;;9002226.02101,"805,00490-0053-90 ",.01)
 ;;00490-0053-90
 ;;9002226.02101,"805,00490-0053-90 ",.02)
 ;;00490-0053-90
 ;;9002226.02101,"805,00555-0427-05 ",.01)
 ;;00555-0427-05
 ;;9002226.02101,"805,00555-0427-05 ",.02)
 ;;00555-0427-05
 ;;9002226.02101,"805,00591-0462-01 ",.01)
 ;;00591-0462-01
 ;;9002226.02101,"805,00591-0462-01 ",.02)
 ;;00591-0462-01
 ;;9002226.02101,"805,00591-0462-10 ",.01)
 ;;00591-0462-10
 ;;9002226.02101,"805,00591-0462-10 ",.02)
 ;;00591-0462-10
 ;;9002226.02101,"805,00591-0463-01 ",.01)
 ;;00591-0463-01
 ;;9002226.02101,"805,00591-0463-01 ",.02)
 ;;00591-0463-01
 ;;9002226.02101,"805,00591-0463-10 ",.01)
 ;;00591-0463-10
 ;;9002226.02101,"805,00591-0463-10 ",.02)
 ;;00591-0463-10
 ;;9002226.02101,"805,00591-0605-01 ",.01)
 ;;00591-0605-01
 ;;9002226.02101,"805,00591-0605-01 ",.02)
 ;;00591-0605-01
 ;;9002226.02101,"805,00591-0605-05 ",.01)
 ;;00591-0605-05
 ;;9002226.02101,"805,00591-0605-05 ",.02)
 ;;00591-0605-05
 ;;9002226.02101,"805,00591-0606-01 ",.01)
 ;;00591-0606-01
 ;;9002226.02101,"805,00591-0606-01 ",.02)
 ;;00591-0606-01
 ;;9002226.02101,"805,00591-0606-05 ",.01)
 ;;00591-0606-05
 ;;9002226.02101,"805,00591-0606-05 ",.02)
 ;;00591-0606-05
 ;;9002226.02101,"805,00591-0607-01 ",.01)
 ;;00591-0607-01
 ;;9002226.02101,"805,00591-0607-01 ",.02)
 ;;00591-0607-01
 ;;9002226.02101,"805,00591-0841-01 ",.01)
 ;;00591-0841-01
 ;;9002226.02101,"805,00591-0841-01 ",.02)
 ;;00591-0841-01
 ;;9002226.02101,"805,00591-0841-05 ",.01)
 ;;00591-0841-05
 ;;9002226.02101,"805,00591-0841-05 ",.02)
 ;;00591-0841-05
 ;;9002226.02101,"805,00591-0842-01 ",.01)
 ;;00591-0842-01
 ;;9002226.02101,"805,00591-0842-01 ",.02)
 ;;00591-0842-01
 ;;9002226.02101,"805,00591-0842-05 ",.01)
 ;;00591-0842-05
 ;;9002226.02101,"805,00591-0842-05 ",.02)
 ;;00591-0842-05
 ;;9002226.02101,"805,00591-0843-01 ",.01)
 ;;00591-0843-01
 ;;9002226.02101,"805,00591-0843-01 ",.02)
 ;;00591-0843-01
 ;;9002226.02101,"805,00591-0843-30 ",.01)
 ;;00591-0843-30
 ;;9002226.02101,"805,00591-0843-30 ",.02)
 ;;00591-0843-30
 ;;9002226.02101,"805,00591-5554-01 ",.01)
 ;;00591-5554-01
 ;;9002226.02101,"805,00591-5554-01 ",.02)
 ;;00591-5554-01
 ;;9002226.02101,"805,00591-5554-10 ",.01)
 ;;00591-5554-10
 ;;9002226.02101,"805,00591-5554-10 ",.02)
 ;;00591-5554-10
 ;;9002226.02101,"805,00591-5555-01 ",.01)
 ;;00591-5555-01
 ;;9002226.02101,"805,00591-5555-01 ",.02)
 ;;00591-5555-01
 ;;9002226.02101,"805,00591-5555-10 ",.01)
 ;;00591-5555-10
 ;;9002226.02101,"805,00591-5555-10 ",.02)
 ;;00591-5555-10
 ;;9002226.02101,"805,00591-5556-01 ",.01)
 ;;00591-5556-01
 ;;9002226.02101,"805,00591-5556-01 ",.02)
 ;;00591-5556-01
 ;;9002226.02101,"805,00591-5556-10 ",.01)
 ;;00591-5556-10
 ;;9002226.02101,"805,00591-5556-10 ",.02)
 ;;00591-5556-10
 ;;9002226.02101,"805,00591-5557-01 ",.01)
 ;;00591-5557-01
 ;;9002226.02101,"805,00591-5557-01 ",.02)
 ;;00591-5557-01
 ;;9002226.02101,"805,00591-5557-05 ",.01)
 ;;00591-5557-05
 ;;9002226.02101,"805,00591-5557-05 ",.02)
 ;;00591-5557-05
 ;;9002226.02101,"805,00591-5777-01 ",.01)
 ;;00591-5777-01
 ;;9002226.02101,"805,00591-5777-01 ",.02)
 ;;00591-5777-01
 ;;9002226.02101,"805,00591-5777-10 ",.01)
 ;;00591-5777-10
 ;;9002226.02101,"805,00591-5777-10 ",.02)
 ;;00591-5777-10
 ;;9002226.02101,"805,00591-5778-01 ",.01)
 ;;00591-5778-01
 ;;9002226.02101,"805,00591-5778-01 ",.02)
 ;;00591-5778-01
 ;;9002226.02101,"805,00591-5782-01 ",.01)
 ;;00591-5782-01
 ;;9002226.02101,"805,00591-5782-01 ",.02)
 ;;00591-5782-01
 ;;9002226.02101,"805,00591-5783-01 ",.01)
 ;;00591-5783-01
 ;;9002226.02101,"805,00591-5783-01 ",.02)
 ;;00591-5783-01
 ;;9002226.02101,"805,00603-5482-21 ",.01)
 ;;00603-5482-21
 ;;9002226.02101,"805,00603-5482-21 ",.02)
 ;;00603-5482-21
 ;;9002226.02101,"805,00603-5482-32 ",.01)
 ;;00603-5482-32
 ;;9002226.02101,"805,00603-5482-32 ",.02)
 ;;00603-5482-32
 ;;9002226.02101,"805,00603-5483-02 ",.01)
 ;;00603-5483-02
 ;;9002226.02101,"805,00603-5483-02 ",.02)
 ;;00603-5483-02
 ;;9002226.02101,"805,00603-5483-21 ",.01)
 ;;00603-5483-21
 ;;9002226.02101,"805,00603-5483-21 ",.02)
 ;;00603-5483-21
 ;;9002226.02101,"805,00603-5483-32 ",.01)
 ;;00603-5483-32
 ;;9002226.02101,"805,00603-5483-32 ",.02)
 ;;00603-5483-32
 ;;9002226.02101,"805,00603-5484-21 ",.01)
 ;;00603-5484-21
 ;;9002226.02101,"805,00603-5484-21 ",.02)
 ;;00603-5484-21
 ;;9002226.02101,"805,00603-5484-32 ",.01)
 ;;00603-5484-32
 ;;9002226.02101,"805,00603-5484-32 ",.02)
 ;;00603-5484-32
 ;;9002226.02101,"805,00603-5485-21 ",.01)
 ;;00603-5485-21
 ;;9002226.02101,"805,00603-5485-21 ",.02)
 ;;00603-5485-21
 ;;9002226.02101,"805,00603-5486-21 ",.01)
 ;;00603-5486-21
 ;;9002226.02101,"805,00603-5486-21 ",.02)
 ;;00603-5486-21
 ;;9002226.02101,"805,00603-5486-28 ",.01)
 ;;00603-5486-28
 ;;9002226.02101,"805,00603-5486-28 ",.02)
 ;;00603-5486-28
 ;;9002226.02101,"805,00603-5769-21 ",.01)
 ;;00603-5769-21
 ;;9002226.02101,"805,00603-5769-21 ",.02)
 ;;00603-5769-21
 ;;9002226.02101,"805,00603-5769-28 ",.01)
 ;;00603-5769-28
 ;;9002226.02101,"805,00603-5769-28 ",.02)
 ;;00603-5769-28
 ;;9002226.02101,"805,00603-5770-21 ",.01)
 ;;00603-5770-21
 ;;9002226.02101,"805,00603-5770-21 ",.02)
 ;;00603-5770-21
 ;;9002226.02101,"805,00603-5770-25 ",.01)
 ;;00603-5770-25
 ;;9002226.02101,"805,00603-5770-25 ",.02)
 ;;00603-5770-25
 ;;9002226.02101,"805,00603-5771-21 ",.01)
 ;;00603-5771-21
 ;;9002226.02101,"805,00603-5771-21 ",.02)
 ;;00603-5771-21
 ;;9002226.02101,"805,00603-5772-21 ",.01)
 ;;00603-5772-21
 ;;9002226.02101,"805,00603-5772-21 ",.02)
 ;;00603-5772-21
 ;;9002226.02101,"805,00781-1078-01 ",.01)
 ;;00781-1078-01
 ;;9002226.02101,"805,00781-1078-01 ",.02)
 ;;00781-1078-01
 ;;9002226.02101,"805,00781-1078-10 ",.01)
 ;;00781-1078-10
 ;;9002226.02101,"805,00781-1078-10 ",.02)
 ;;00781-1078-10
 ;;9002226.02101,"805,00781-1181-01 ",.01)
 ;;00781-1181-01
 ;;9002226.02101,"805,00781-1181-01 ",.02)
 ;;00781-1181-01
 ;;9002226.02101,"805,00781-1181-10 ",.01)
 ;;00781-1181-10
 ;;9002226.02101,"805,00781-1181-10 ",.02)
 ;;00781-1181-10
 ;;9002226.02101,"805,00781-1181-92 ",.01)
 ;;00781-1181-92
 ;;9002226.02101,"805,00781-1181-92 ",.02)
 ;;00781-1181-92
 ;;9002226.02101,"805,00781-1182-01 ",.01)
 ;;00781-1182-01
 ;;9002226.02101,"805,00781-1182-01 ",.02)
 ;;00781-1182-01
 ;;9002226.02101,"805,00781-1182-10 ",.01)
 ;;00781-1182-10
 ;;9002226.02101,"805,00781-1182-10 ",.02)
 ;;00781-1182-10
 ;;9002226.02101,"805,00781-1182-92 ",.01)
 ;;00781-1182-92
 ;;9002226.02101,"805,00781-1182-92 ",.02)
 ;;00781-1182-92
 ;;9002226.02101,"805,00781-1183-01 ",.01)
 ;;00781-1183-01
 ;;9002226.02101,"805,00781-1183-01 ",.02)
 ;;00781-1183-01
 ;;9002226.02101,"805,00781-1183-10 ",.01)
 ;;00781-1183-10
 ;;9002226.02101,"805,00781-1183-10 ",.02)
 ;;00781-1183-10
 ;;9002226.02101,"805,00781-1183-92 ",.01)
 ;;00781-1183-92
 ;;9002226.02101,"805,00781-1183-92 ",.02)
 ;;00781-1183-92
 ;;9002226.02101,"805,00781-1223-01 ",.01)
 ;;00781-1223-01
 ;;9002226.02101,"805,00781-1223-01 ",.02)
 ;;00781-1223-01
 ;;9002226.02101,"805,00781-1223-10 ",.01)
 ;;00781-1223-10
 ;;9002226.02101,"805,00781-1223-10 ",.02)
 ;;00781-1223-10
 ;;9002226.02101,"805,00781-1228-01 ",.01)
 ;;00781-1228-01
 ;;9002226.02101,"805,00781-1228-01 ",.02)
 ;;00781-1228-01
 ;;9002226.02101,"805,00781-1228-10 ",.01)
 ;;00781-1228-10
 ;;9002226.02101,"805,00781-1228-10 ",.02)
 ;;00781-1228-10
 ;;9002226.02101,"805,00781-1506-01 ",.01)
 ;;00781-1506-01
 ;;9002226.02101,"805,00781-1506-01 ",.02)
 ;;00781-1506-01
 ;;9002226.02101,"805,00781-1506-10 ",.01)
 ;;00781-1506-10
 ;;9002226.02101,"805,00781-1506-10 ",.02)
 ;;00781-1506-10
 ;;9002226.02101,"805,00781-1507-01 ",.01)
 ;;00781-1507-01
 ;;9002226.02101,"805,00781-1507-01 ",.02)
 ;;00781-1507-01
 ;;9002226.02101,"805,00781-1507-10 ",.01)
 ;;00781-1507-10
 ;;9002226.02101,"805,00781-1507-10 ",.02)
 ;;00781-1507-10
 ;;9002226.02101,"805,00781-5221-01 ",.01)
 ;;00781-5221-01
 ;;9002226.02101,"805,00781-5221-01 ",.02)
 ;;00781-5221-01
 ;;9002226.02101,"805,00781-5222-01 ",.01)
 ;;00781-5222-01
 ;;9002226.02101,"805,00781-5222-01 ",.02)
 ;;00781-5222-01
 ;;9002226.02101,"805,00781-5223-01 ",.01)
 ;;00781-5223-01
 ;;9002226.02101,"805,00781-5223-01 ",.02)
 ;;00781-5223-01
 ;;9002226.02101,"805,00781-5224-01 ",.01)
 ;;00781-5224-01
 ;;9002226.02101,"805,00781-5224-01 ",.02)
 ;;00781-5224-01
 ;;9002226.02101,"805,00781-5630-01 ",.01)
 ;;00781-5630-01
 ;;9002226.02101,"805,00781-5630-01 ",.02)
 ;;00781-5630-01
 ;;9002226.02101,"805,00781-5631-01 ",.01)
 ;;00781-5631-01
 ;;9002226.02101,"805,00781-5631-01 ",.02)
 ;;00781-5631-01
 ;;9002226.02101,"805,00904-0411-61 ",.01)
 ;;00904-0411-61
 ;;9002226.02101,"805,00904-0411-61 ",.02)
 ;;00904-0411-61
 ;;9002226.02101,"805,00904-5392-60 ",.01)
 ;;00904-5392-60
 ;;9002226.02101,"805,00904-5392-60 ",.02)
 ;;00904-5392-60
 ;;9002226.02101,"805,00904-5392-61 ",.01)
 ;;00904-5392-61
 ;;9002226.02101,"805,00904-5392-61 ",.02)
 ;;00904-5392-61
 ;;9002226.02101,"805,00904-5870-61 ",.01)
 ;;00904-5870-61
 ;;9002226.02101,"805,00904-5870-61 ",.02)
 ;;00904-5870-61
 ;;9002226.02101,"805,00904-5871-61 ",.01)
 ;;00904-5871-61
 ;;9002226.02101,"805,00904-5871-61 ",.02)
 ;;00904-5871-61
 ;;9002226.02101,"805,00904-5872-61 ",.01)
 ;;00904-5872-61
 ;;9002226.02101,"805,00904-5872-61 ",.02)
 ;;00904-5872-61
 ;;9002226.02101,"805,00904-5873-61 ",.01)
 ;;00904-5873-61
 ;;9002226.02101,"805,00904-5873-61 ",.02)
 ;;00904-5873-61
 ;;9002226.02101,"805,00904-5890-61 ",.01)
 ;;00904-5890-61
 ;;9002226.02101,"805,00904-5890-61 ",.02)
 ;;00904-5890-61
 ;;9002226.02101,"805,00904-5928-61 ",.01)
 ;;00904-5928-61
 ;;9002226.02101,"805,00904-5928-61 ",.02)
 ;;00904-5928-61
 ;;9002226.02101,"805,00904-5929-61 ",.01)
 ;;00904-5929-61
 ;;9002226.02101,"805,00904-5929-61 ",.02)
 ;;00904-5929-61
 ;;9002226.02101,"805,00904-5930-61 ",.01)
 ;;00904-5930-61
 ;;9002226.02101,"805,00904-5930-61 ",.02)
 ;;00904-5930-61
 ;;9002226.02101,"805,00904-5947-61 ",.01)
 ;;00904-5947-61
 ;;9002226.02101,"805,00904-5947-61 ",.02)
 ;;00904-5947-61
 ;;9002226.02101,"805,00904-5948-61 ",.01)
 ;;00904-5948-61
 ;;9002226.02101,"805,00904-5948-61 ",.02)
 ;;00904-5948-61
 ;;9002226.02101,"805,00904-5949-61 ",.01)
 ;;00904-5949-61
 ;;9002226.02101,"805,00904-5949-61 ",.02)
 ;;00904-5949-61
 ;;9002226.02101,"805,00904-5950-61 ",.01)
 ;;00904-5950-61
 ;;9002226.02101,"805,00904-5950-61 ",.02)
 ;;00904-5950-61
 ;;9002226.02101,"805,00904-6033-60 ",.01)
 ;;00904-6033-60
 ;;9002226.02101,"805,00904-6033-60 ",.02)
 ;;00904-6033-60
 ;;9002226.02101,"805,00904-6033-61 ",.01)
 ;;00904-6033-61
 ;;9002226.02101,"805,00904-6033-61 ",.02)
 ;;00904-6033-61
 ;;9002226.02101,"805,00904-6033-80 ",.01)
 ;;00904-6033-80
 ;;9002226.02101,"805,00904-6033-80 ",.02)
 ;;00904-6033-80
 ;;9002226.02101,"805,00904-6034-60 ",.01)
 ;;00904-6034-60
 ;;9002226.02101,"805,00904-6034-60 ",.02)
 ;;00904-6034-60
 ;;9002226.02101,"805,00904-6034-61 ",.01)
 ;;00904-6034-61
 ;;9002226.02101,"805,00904-6034-61 ",.02)
 ;;00904-6034-61