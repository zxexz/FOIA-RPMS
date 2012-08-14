BGP13I4 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"698,55887-0324-30 ",.02)
 ;;55887-0324-30
 ;;9002226.02101,"698,55887-0702-30 ",.01)
 ;;55887-0702-30
 ;;9002226.02101,"698,55887-0702-30 ",.02)
 ;;55887-0702-30
 ;;9002226.02101,"698,57866-6681-01 ",.01)
 ;;57866-6681-01
 ;;9002226.02101,"698,57866-6681-01 ",.02)
 ;;57866-6681-01
 ;;9002226.02101,"698,57866-6681-02 ",.01)
 ;;57866-6681-02
 ;;9002226.02101,"698,57866-6681-02 ",.02)
 ;;57866-6681-02
 ;;9002226.02101,"698,57866-6681-03 ",.01)
 ;;57866-6681-03
 ;;9002226.02101,"698,57866-6681-03 ",.02)
 ;;57866-6681-03
 ;;9002226.02101,"698,57866-6682-01 ",.01)
 ;;57866-6682-01
 ;;9002226.02101,"698,57866-6682-01 ",.02)
 ;;57866-6682-01
 ;;9002226.02101,"698,57866-7987-01 ",.01)
 ;;57866-7987-01
 ;;9002226.02101,"698,57866-7987-01 ",.02)
 ;;57866-7987-01
 ;;9002226.02101,"698,58016-0744-00 ",.01)
 ;;58016-0744-00
 ;;9002226.02101,"698,58016-0744-00 ",.02)
 ;;58016-0744-00
 ;;9002226.02101,"698,58016-0744-10 ",.01)
 ;;58016-0744-10
 ;;9002226.02101,"698,58016-0744-10 ",.02)
 ;;58016-0744-10
 ;;9002226.02101,"698,58016-0744-12 ",.01)
 ;;58016-0744-12
 ;;9002226.02101,"698,58016-0744-12 ",.02)
 ;;58016-0744-12
 ;;9002226.02101,"698,58016-0744-14 ",.01)
 ;;58016-0744-14
 ;;9002226.02101,"698,58016-0744-14 ",.02)
 ;;58016-0744-14
 ;;9002226.02101,"698,58016-0744-15 ",.01)
 ;;58016-0744-15
 ;;9002226.02101,"698,58016-0744-15 ",.02)
 ;;58016-0744-15
 ;;9002226.02101,"698,58016-0744-20 ",.01)
 ;;58016-0744-20
 ;;9002226.02101,"698,58016-0744-20 ",.02)
 ;;58016-0744-20
 ;;9002226.02101,"698,58016-0744-30 ",.01)
 ;;58016-0744-30
 ;;9002226.02101,"698,58016-0744-30 ",.02)
 ;;58016-0744-30
 ;;9002226.02101,"698,58016-0948-00 ",.01)
 ;;58016-0948-00
 ;;9002226.02101,"698,58016-0948-00 ",.02)
 ;;58016-0948-00
 ;;9002226.02101,"698,58016-0948-10 ",.01)
 ;;58016-0948-10
 ;;9002226.02101,"698,58016-0948-10 ",.02)
 ;;58016-0948-10
 ;;9002226.02101,"698,58016-0948-12 ",.01)
 ;;58016-0948-12
 ;;9002226.02101,"698,58016-0948-12 ",.02)
 ;;58016-0948-12
 ;;9002226.02101,"698,58016-0948-14 ",.01)
 ;;58016-0948-14
 ;;9002226.02101,"698,58016-0948-14 ",.02)
 ;;58016-0948-14
 ;;9002226.02101,"698,58016-0948-15 ",.01)
 ;;58016-0948-15
 ;;9002226.02101,"698,58016-0948-15 ",.02)
 ;;58016-0948-15
 ;;9002226.02101,"698,58016-0948-20 ",.01)
 ;;58016-0948-20
 ;;9002226.02101,"698,58016-0948-20 ",.02)
 ;;58016-0948-20
 ;;9002226.02101,"698,58016-0948-30 ",.01)
 ;;58016-0948-30
 ;;9002226.02101,"698,58016-0948-30 ",.02)
 ;;58016-0948-30
 ;;9002226.02101,"698,58016-0948-50 ",.01)
 ;;58016-0948-50
 ;;9002226.02101,"698,58016-0948-50 ",.02)
 ;;58016-0948-50
 ;;9002226.02101,"698,58016-4074-01 ",.01)
 ;;58016-4074-01
 ;;9002226.02101,"698,58016-4074-01 ",.02)
 ;;58016-4074-01
 ;;9002226.02101,"698,58864-0422-28 ",.01)
 ;;58864-0422-28
 ;;9002226.02101,"698,58864-0422-28 ",.02)
 ;;58864-0422-28
 ;;9002226.02101,"698,58864-0422-30 ",.01)
 ;;58864-0422-30
 ;;9002226.02101,"698,58864-0422-30 ",.02)
 ;;58864-0422-30
 ;;9002226.02101,"698,58864-0951-30 ",.01)
 ;;58864-0951-30
 ;;9002226.02101,"698,58864-0951-30 ",.02)
 ;;58864-0951-30
 ;;9002226.02101,"698,59243-0560-01 ",.01)
 ;;59243-0560-01
 ;;9002226.02101,"698,59243-0560-01 ",.02)
 ;;59243-0560-01
 ;;9002226.02101,"698,59243-0570-01 ",.01)
 ;;59243-0570-01
 ;;9002226.02101,"698,59243-0570-01 ",.02)
 ;;59243-0570-01
 ;;9002226.02101,"698,61570-0072-01 ",.01)
 ;;61570-0072-01
 ;;9002226.02101,"698,61570-0072-01 ",.02)
 ;;61570-0072-01
 ;;9002226.02101,"698,61570-0073-01 ",.01)
 ;;61570-0073-01
 ;;9002226.02101,"698,61570-0073-01 ",.02)
 ;;61570-0073-01
 ;;9002226.02101,"698,61570-0074-01 ",.01)
 ;;61570-0074-01
 ;;9002226.02101,"698,61570-0074-01 ",.02)
 ;;61570-0074-01
 ;;9002226.02101,"698,61570-0075-50 ",.01)
 ;;61570-0075-50
 ;;9002226.02101,"698,61570-0075-50 ",.02)
 ;;61570-0075-50
 ;;9002226.02101,"698,63874-0158-01 ",.01)
 ;;63874-0158-01
 ;;9002226.02101,"698,63874-0158-01 ",.02)
 ;;63874-0158-01
 ;;9002226.02101,"698,63874-0158-10 ",.01)
 ;;63874-0158-10
 ;;9002226.02101,"698,63874-0158-10 ",.02)
 ;;63874-0158-10
 ;;9002226.02101,"698,63874-0158-14 ",.01)
 ;;63874-0158-14
 ;;9002226.02101,"698,63874-0158-14 ",.02)
 ;;63874-0158-14
 ;;9002226.02101,"698,63874-0158-15 ",.01)
 ;;63874-0158-15
 ;;9002226.02101,"698,63874-0158-15 ",.02)
 ;;63874-0158-15
 ;;9002226.02101,"698,63874-0158-20 ",.01)
 ;;63874-0158-20
 ;;9002226.02101,"698,63874-0158-20 ",.02)
 ;;63874-0158-20
 ;;9002226.02101,"698,63874-0158-30 ",.01)
 ;;63874-0158-30
 ;;9002226.02101,"698,63874-0158-30 ",.02)
 ;;63874-0158-30
 ;;9002226.02101,"698,65162-0877-10 ",.01)
 ;;65162-0877-10
 ;;9002226.02101,"698,65162-0877-10 ",.02)
 ;;65162-0877-10
 ;;9002226.02101,"698,65162-0878-10 ",.01)
 ;;65162-0878-10
 ;;9002226.02101,"698,65162-0878-10 ",.02)
 ;;65162-0878-10
 ;;9002226.02101,"698,66105-0137-10 ",.01)
 ;;66105-0137-10
 ;;9002226.02101,"698,66105-0137-10 ",.02)
 ;;66105-0137-10
 ;;9002226.02101,"698,66105-0138-10 ",.01)
 ;;66105-0138-10
 ;;9002226.02101,"698,66105-0138-10 ",.02)
 ;;66105-0138-10
 ;;9002226.02101,"698,66116-0285-30 ",.01)
 ;;66116-0285-30
 ;;9002226.02101,"698,66116-0285-30 ",.02)
 ;;66116-0285-30
 ;;9002226.02101,"698,66267-0174-30 ",.01)
 ;;66267-0174-30
 ;;9002226.02101,"698,66267-0174-30 ",.02)
 ;;66267-0174-30
 ;;9002226.02101,"698,66336-0599-30 ",.01)
 ;;66336-0599-30
 ;;9002226.02101,"698,66336-0599-30 ",.02)
 ;;66336-0599-30
 ;;9002226.02101,"698,66336-0977-30 ",.01)
 ;;66336-0977-30
 ;;9002226.02101,"698,66336-0977-30 ",.02)
 ;;66336-0977-30
 ;;9002226.02101,"698,66993-0920-02 ",.01)
 ;;66993-0920-02
 ;;9002226.02101,"698,66993-0920-02 ",.02)
 ;;66993-0920-02
 ;;9002226.02101,"698,66993-0921-02 ",.01)
 ;;66993-0921-02
 ;;9002226.02101,"698,66993-0921-02 ",.02)
 ;;66993-0921-02
 ;;9002226.02101,"698,67801-0326-03 ",.01)
 ;;67801-0326-03
 ;;9002226.02101,"698,67801-0326-03 ",.02)
 ;;67801-0326-03
 ;;9002226.02101,"698,67801-0327-03 ",.01)
 ;;67801-0327-03
 ;;9002226.02101,"698,67801-0327-03 ",.02)
 ;;67801-0327-03
 ;;9002226.02101,"698,68115-0294-30 ",.01)
 ;;68115-0294-30
 ;;9002226.02101,"698,68115-0294-30 ",.02)
 ;;68115-0294-30
 ;;9002226.02101,"698,68462-0173-01 ",.01)
 ;;68462-0173-01
 ;;9002226.02101,"698,68462-0173-01 ",.02)
 ;;68462-0173-01
 ;;9002226.02101,"698,68462-0174-01 ",.01)
 ;;68462-0174-01
 ;;9002226.02101,"698,68462-0174-01 ",.02)
 ;;68462-0174-01