BGP06B25 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"975,54569-1732-03 ",.01)
 ;;54569-1732-03
 ;;9002226.02101,"975,54569-1732-03 ",.02)
 ;;54569-1732-03
 ;;9002226.02101,"975,54569-1732-04 ",.01)
 ;;54569-1732-04
 ;;9002226.02101,"975,54569-1732-04 ",.02)
 ;;54569-1732-04
 ;;9002226.02101,"975,54569-1732-05 ",.01)
 ;;54569-1732-05
 ;;9002226.02101,"975,54569-1732-05 ",.02)
 ;;54569-1732-05
 ;;9002226.02101,"975,54569-1732-06 ",.01)
 ;;54569-1732-06
 ;;9002226.02101,"975,54569-1732-06 ",.02)
 ;;54569-1732-06
 ;;9002226.02101,"975,54569-1864-01 ",.01)
 ;;54569-1864-01
 ;;9002226.02101,"975,54569-1864-01 ",.02)
 ;;54569-1864-01
 ;;9002226.02101,"975,54569-1864-02 ",.01)
 ;;54569-1864-02
 ;;9002226.02101,"975,54569-1864-02 ",.02)
 ;;54569-1864-02
 ;;9002226.02101,"975,54569-1999-01 ",.01)
 ;;54569-1999-01
 ;;9002226.02101,"975,54569-1999-01 ",.02)
 ;;54569-1999-01
 ;;9002226.02101,"975,54569-1999-02 ",.01)
 ;;54569-1999-02
 ;;9002226.02101,"975,54569-1999-02 ",.02)
 ;;54569-1999-02
 ;;9002226.02101,"975,54569-2006-00 ",.01)
 ;;54569-2006-00
 ;;9002226.02101,"975,54569-2006-00 ",.02)
 ;;54569-2006-00
 ;;9002226.02101,"975,54569-2146-00 ",.01)
 ;;54569-2146-00
 ;;9002226.02101,"975,54569-2146-00 ",.02)
 ;;54569-2146-00
 ;;9002226.02101,"975,54569-2146-01 ",.01)
 ;;54569-2146-01
 ;;9002226.02101,"975,54569-2146-01 ",.02)
 ;;54569-2146-01
 ;;9002226.02101,"975,54569-2179-00 ",.01)
 ;;54569-2179-00
 ;;9002226.02101,"975,54569-2179-00 ",.02)
 ;;54569-2179-00
 ;;9002226.02101,"975,54569-2179-01 ",.01)
 ;;54569-2179-01
 ;;9002226.02101,"975,54569-2179-01 ",.02)
 ;;54569-2179-01
 ;;9002226.02101,"975,54569-2462-00 ",.01)
 ;;54569-2462-00
 ;;9002226.02101,"975,54569-2462-00 ",.02)
 ;;54569-2462-00
 ;;9002226.02101,"975,54569-2726-00 ",.01)
 ;;54569-2726-00
 ;;9002226.02101,"975,54569-2726-00 ",.02)
 ;;54569-2726-00
 ;;9002226.02101,"975,54569-3190-01 ",.01)
 ;;54569-3190-01
 ;;9002226.02101,"975,54569-3190-01 ",.02)
 ;;54569-3190-01
 ;;9002226.02101,"975,54569-3270-00 ",.01)
 ;;54569-3270-00
 ;;9002226.02101,"975,54569-3270-00 ",.02)
 ;;54569-3270-00
 ;;9002226.02101,"975,54569-3573-04 ",.01)
 ;;54569-3573-04
 ;;9002226.02101,"975,54569-3573-04 ",.02)
 ;;54569-3573-04
 ;;9002226.02101,"975,54569-3575-00 ",.01)
 ;;54569-3575-00
 ;;9002226.02101,"975,54569-3575-00 ",.02)
 ;;54569-3575-00
 ;;9002226.02101,"975,54569-3575-01 ",.01)
 ;;54569-3575-01
 ;;9002226.02101,"975,54569-3575-01 ",.02)
 ;;54569-3575-01
 ;;9002226.02101,"975,54569-3575-02 ",.01)
 ;;54569-3575-02
 ;;9002226.02101,"975,54569-3575-02 ",.02)
 ;;54569-3575-02
 ;;9002226.02101,"975,54569-3575-03 ",.01)
 ;;54569-3575-03
 ;;9002226.02101,"975,54569-3575-03 ",.02)
 ;;54569-3575-03
 ;;9002226.02101,"975,54569-3724-00 ",.01)
 ;;54569-3724-00
 ;;9002226.02101,"975,54569-3724-00 ",.02)
 ;;54569-3724-00
 ;;9002226.02101,"975,54569-3724-01 ",.01)
 ;;54569-3724-01
 ;;9002226.02101,"975,54569-3724-01 ",.02)
 ;;54569-3724-01
 ;;9002226.02101,"975,54569-3724-02 ",.01)
 ;;54569-3724-02
 ;;9002226.02101,"975,54569-3724-02 ",.02)
 ;;54569-3724-02
 ;;9002226.02101,"975,54569-3724-03 ",.01)
 ;;54569-3724-03
 ;;9002226.02101,"975,54569-3724-03 ",.02)
 ;;54569-3724-03
 ;;9002226.02101,"975,54569-3724-04 ",.01)
 ;;54569-3724-04
 ;;9002226.02101,"975,54569-3724-04 ",.02)
 ;;54569-3724-04
 ;;9002226.02101,"975,54569-3724-05 ",.01)
 ;;54569-3724-05
 ;;9002226.02101,"975,54569-3724-05 ",.02)
 ;;54569-3724-05
 ;;9002226.02101,"975,54569-3732-01 ",.01)
 ;;54569-3732-01
 ;;9002226.02101,"975,54569-3732-01 ",.02)
 ;;54569-3732-01
 ;;9002226.02101,"975,54569-3732-02 ",.01)
 ;;54569-3732-02
 ;;9002226.02101,"975,54569-3732-02 ",.02)
 ;;54569-3732-02
 ;;9002226.02101,"975,54569-3810-00 ",.01)
 ;;54569-3810-00
 ;;9002226.02101,"975,54569-3810-00 ",.02)
 ;;54569-3810-00
 ;;9002226.02101,"975,54569-3810-01 ",.01)
 ;;54569-3810-01
 ;;9002226.02101,"975,54569-3810-01 ",.02)
 ;;54569-3810-01
 ;;9002226.02101,"975,54569-3849-00 ",.01)
 ;;54569-3849-00
 ;;9002226.02101,"975,54569-3849-00 ",.02)
 ;;54569-3849-00
 ;;9002226.02101,"975,54569-3849-01 ",.01)
 ;;54569-3849-01
 ;;9002226.02101,"975,54569-3849-01 ",.02)
 ;;54569-3849-01
 ;;9002226.02101,"975,54569-3894-00 ",.01)
 ;;54569-3894-00
 ;;9002226.02101,"975,54569-3894-00 ",.02)
 ;;54569-3894-00
 ;;9002226.02101,"975,54569-4127-00 ",.01)
 ;;54569-4127-00
 ;;9002226.02101,"975,54569-4127-00 ",.02)
 ;;54569-4127-00
 ;;9002226.02101,"975,54569-4127-01 ",.01)
 ;;54569-4127-01
 ;;9002226.02101,"975,54569-4127-01 ",.02)
 ;;54569-4127-01
 ;;9002226.02101,"975,54569-4129-00 ",.01)
 ;;54569-4129-00
 ;;9002226.02101,"975,54569-4129-00 ",.02)
 ;;54569-4129-00
 ;;9002226.02101,"975,54569-4131-01 ",.01)
 ;;54569-4131-01
 ;;9002226.02101,"975,54569-4131-01 ",.02)
 ;;54569-4131-01
 ;;9002226.02101,"975,54569-4132-01 ",.01)
 ;;54569-4132-01
 ;;9002226.02101,"975,54569-4132-01 ",.02)
 ;;54569-4132-01
 ;;9002226.02101,"975,54569-4146-00 ",.01)
 ;;54569-4146-00
 ;;9002226.02101,"975,54569-4146-00 ",.02)
 ;;54569-4146-00
 ;;9002226.02101,"975,54569-4146-01 ",.01)
 ;;54569-4146-01
 ;;9002226.02101,"975,54569-4146-01 ",.02)
 ;;54569-4146-01
 ;;9002226.02101,"975,54569-4195-01 ",.01)
 ;;54569-4195-01
 ;;9002226.02101,"975,54569-4195-01 ",.02)
 ;;54569-4195-01
 ;;9002226.02101,"975,54569-4529-00 ",.01)
 ;;54569-4529-00
 ;;9002226.02101,"975,54569-4529-00 ",.02)
 ;;54569-4529-00
 ;;9002226.02101,"975,54569-4529-01 ",.01)
 ;;54569-4529-01
 ;;9002226.02101,"975,54569-4529-01 ",.02)
 ;;54569-4529-01
 ;;9002226.02101,"975,54569-4529-02 ",.01)
 ;;54569-4529-02
 ;;9002226.02101,"975,54569-4529-02 ",.02)
 ;;54569-4529-02
 ;;9002226.02101,"975,54569-4594-00 ",.01)
 ;;54569-4594-00
 ;;9002226.02101,"975,54569-4594-00 ",.02)
 ;;54569-4594-00
 ;;9002226.02101,"975,54569-4703-00 ",.01)
 ;;54569-4703-00
 ;;9002226.02101,"975,54569-4703-00 ",.02)
 ;;54569-4703-00
 ;;9002226.02101,"975,54569-4703-01 ",.01)
 ;;54569-4703-01
 ;;9002226.02101,"975,54569-4703-01 ",.02)
 ;;54569-4703-01
 ;;9002226.02101,"975,54569-4787-00 ",.01)
 ;;54569-4787-00
 ;;9002226.02101,"975,54569-4787-00 ",.02)
 ;;54569-4787-00
 ;;9002226.02101,"975,54569-4879-00 ",.01)
 ;;54569-4879-00
 ;;9002226.02101,"975,54569-4879-00 ",.02)
 ;;54569-4879-00
 ;;9002226.02101,"975,54569-4901-00 ",.01)
 ;;54569-4901-00
 ;;9002226.02101,"975,54569-4901-00 ",.02)
 ;;54569-4901-00
 ;;9002226.02101,"975,54569-4901-01 ",.01)
 ;;54569-4901-01
 ;;9002226.02101,"975,54569-4901-01 ",.02)
 ;;54569-4901-01
 ;;9002226.02101,"975,54569-5231-00 ",.01)
 ;;54569-5231-00
 ;;9002226.02101,"975,54569-5231-00 ",.02)
 ;;54569-5231-00
 ;;9002226.02101,"975,54569-5265-00 ",.01)
 ;;54569-5265-00
 ;;9002226.02101,"975,54569-5265-00 ",.02)
 ;;54569-5265-00
 ;;9002226.02101,"975,54569-5568-00 ",.01)
 ;;54569-5568-00
 ;;9002226.02101,"975,54569-5568-00 ",.02)
 ;;54569-5568-00
 ;;9002226.02101,"975,54569-5569-00 ",.01)
 ;;54569-5569-00
 ;;9002226.02101,"975,54569-5569-00 ",.02)
 ;;54569-5569-00
 ;;9002226.02101,"975,54569-8013-00 ",.01)
 ;;54569-8013-00
 ;;9002226.02101,"975,54569-8013-00 ",.02)
 ;;54569-8013-00
 ;;9002226.02101,"975,54569-8522-00 ",.01)
 ;;54569-8522-00
 ;;9002226.02101,"975,54569-8522-00 ",.02)
 ;;54569-8522-00
 ;;9002226.02101,"975,54569-8522-01 ",.01)
 ;;54569-8522-01
 ;;9002226.02101,"975,54569-8522-01 ",.02)
 ;;54569-8522-01
 ;;9002226.02101,"975,54569-8579-00 ",.01)
 ;;54569-8579-00
 ;;9002226.02101,"975,54569-8579-00 ",.02)
 ;;54569-8579-00
 ;;9002226.02101,"975,54569-8609-00 ",.01)
 ;;54569-8609-00
 ;;9002226.02101,"975,54569-8609-00 ",.02)
 ;;54569-8609-00
 ;;9002226.02101,"975,54838-0512-40 ",.01)
 ;;54838-0512-40
 ;;9002226.02101,"975,54838-0512-40 ",.02)
 ;;54838-0512-40
 ;;9002226.02101,"975,54868-0064-02 ",.01)
 ;;54868-0064-02
 ;;9002226.02101,"975,54868-0064-02 ",.02)
 ;;54868-0064-02
 ;;9002226.02101,"975,54868-0064-03 ",.01)
 ;;54868-0064-03
 ;;9002226.02101,"975,54868-0064-03 ",.02)
 ;;54868-0064-03
 ;;9002226.02101,"975,54868-0064-04 ",.01)
 ;;54868-0064-04
 ;;9002226.02101,"975,54868-0064-04 ",.02)
 ;;54868-0064-04
 ;;9002226.02101,"975,54868-0064-05 ",.01)
 ;;54868-0064-05
 ;;9002226.02101,"975,54868-0064-05 ",.02)
 ;;54868-0064-05
 ;;9002226.02101,"975,54868-0064-07 ",.01)
 ;;54868-0064-07
 ;;9002226.02101,"975,54868-0064-07 ",.02)
 ;;54868-0064-07
 ;;9002226.02101,"975,54868-0065-00 ",.01)
 ;;54868-0065-00
 ;;9002226.02101,"975,54868-0065-00 ",.02)
 ;;54868-0065-00
 ;;9002226.02101,"975,54868-0065-02 ",.01)
 ;;54868-0065-02
 ;;9002226.02101,"975,54868-0065-02 ",.02)
 ;;54868-0065-02
 ;;9002226.02101,"975,54868-0065-03 ",.01)
 ;;54868-0065-03
 ;;9002226.02101,"975,54868-0065-03 ",.02)
 ;;54868-0065-03
 ;;9002226.02101,"975,54868-0065-04 ",.01)
 ;;54868-0065-04
 ;;9002226.02101,"975,54868-0065-04 ",.02)
 ;;54868-0065-04
 ;;9002226.02101,"975,54868-0065-05 ",.01)
 ;;54868-0065-05
 ;;9002226.02101,"975,54868-0065-05 ",.02)
 ;;54868-0065-05
 ;;9002226.02101,"975,54868-0065-07 ",.01)
 ;;54868-0065-07
 ;;9002226.02101,"975,54868-0065-07 ",.02)
 ;;54868-0065-07
 ;;9002226.02101,"975,54868-0065-08 ",.01)
 ;;54868-0065-08
 ;;9002226.02101,"975,54868-0065-08 ",.02)
 ;;54868-0065-08
 ;;9002226.02101,"975,54868-0065-09 ",.01)
 ;;54868-0065-09
 ;;9002226.02101,"975,54868-0065-09 ",.02)
 ;;54868-0065-09
 ;;9002226.02101,"975,54868-0066-00 ",.01)
 ;;54868-0066-00
 ;;9002226.02101,"975,54868-0066-00 ",.02)
 ;;54868-0066-00
 ;;9002226.02101,"975,54868-0066-02 ",.01)
 ;;54868-0066-02
 ;;9002226.02101,"975,54868-0066-02 ",.02)
 ;;54868-0066-02
 ;;9002226.02101,"975,54868-0066-03 ",.01)
 ;;54868-0066-03
 ;;9002226.02101,"975,54868-0066-03 ",.02)
 ;;54868-0066-03
 ;;9002226.02101,"975,54868-0066-05 ",.01)
 ;;54868-0066-05
 ;;9002226.02101,"975,54868-0066-05 ",.02)
 ;;54868-0066-05
 ;;9002226.02101,"975,54868-0066-06 ",.01)
 ;;54868-0066-06
 ;;9002226.02101,"975,54868-0066-06 ",.02)
 ;;54868-0066-06
 ;;9002226.02101,"975,54868-0122-00 ",.01)
 ;;54868-0122-00
 ;;9002226.02101,"975,54868-0122-00 ",.02)
 ;;54868-0122-00
 ;;9002226.02101,"975,54868-0122-02 ",.01)
 ;;54868-0122-02
 ;;9002226.02101,"975,54868-0122-02 ",.02)
 ;;54868-0122-02
 ;;9002226.02101,"975,54868-0124-02 ",.01)
 ;;54868-0124-02
 ;;9002226.02101,"975,54868-0124-02 ",.02)
 ;;54868-0124-02
 ;;9002226.02101,"975,54868-0124-03 ",.01)
 ;;54868-0124-03
 ;;9002226.02101,"975,54868-0124-03 ",.02)
 ;;54868-0124-03
 ;;9002226.02101,"975,54868-0125-02 ",.01)
 ;;54868-0125-02
 ;;9002226.02101,"975,54868-0125-02 ",.02)
 ;;54868-0125-02
 ;;9002226.02101,"975,54868-0125-03 ",.01)
 ;;54868-0125-03
 ;;9002226.02101,"975,54868-0125-03 ",.02)
 ;;54868-0125-03
 ;;9002226.02101,"975,54868-0125-04 ",.01)
 ;;54868-0125-04
 ;;9002226.02101,"975,54868-0125-04 ",.02)
 ;;54868-0125-04
 ;;9002226.02101,"975,54868-0125-05 ",.01)
 ;;54868-0125-05
 ;;9002226.02101,"975,54868-0125-05 ",.02)
 ;;54868-0125-05
 ;;9002226.02101,"975,54868-0409-00 ",.01)
 ;;54868-0409-00
 ;;9002226.02101,"975,54868-0409-00 ",.02)
 ;;54868-0409-00
 ;;9002226.02101,"975,54868-0501-00 ",.01)
 ;;54868-0501-00
 ;;9002226.02101,"975,54868-0501-00 ",.02)
 ;;54868-0501-00
 ;;9002226.02101,"975,54868-0511-00 ",.01)
 ;;54868-0511-00
 ;;9002226.02101,"975,54868-0511-00 ",.02)
 ;;54868-0511-00
 ;;9002226.02101,"975,54868-0511-01 ",.01)
 ;;54868-0511-01
 ;;9002226.02101,"975,54868-0511-01 ",.02)
 ;;54868-0511-01
 ;;9002226.02101,"975,54868-0511-05 ",.01)
 ;;54868-0511-05
 ;;9002226.02101,"975,54868-0511-05 ",.02)
 ;;54868-0511-05
 ;;9002226.02101,"975,54868-1223-00 ",.01)
 ;;54868-1223-00
 ;;9002226.02101,"975,54868-1223-00 ",.02)
 ;;54868-1223-00
 ;;9002226.02101,"975,54868-1223-01 ",.01)
 ;;54868-1223-01
 ;;9002226.02101,"975,54868-1223-01 ",.02)
 ;;54868-1223-01
 ;;9002226.02101,"975,54868-1344-00 ",.01)
 ;;54868-1344-00
 ;;9002226.02101,"975,54868-1344-00 ",.02)
 ;;54868-1344-00
 ;;9002226.02101,"975,54868-1344-02 ",.01)
 ;;54868-1344-02
 ;;9002226.02101,"975,54868-1344-02 ",.02)
 ;;54868-1344-02
 ;;9002226.02101,"975,54868-1344-03 ",.01)
 ;;54868-1344-03
 ;;9002226.02101,"975,54868-1344-03 ",.02)
 ;;54868-1344-03
 ;;9002226.02101,"975,54868-1447-00 ",.01)
 ;;54868-1447-00
 ;;9002226.02101,"975,54868-1447-00 ",.02)
 ;;54868-1447-00
 ;;9002226.02101,"975,54868-1450-00 ",.01)
 ;;54868-1450-00
 ;;9002226.02101,"975,54868-1450-00 ",.02)
 ;;54868-1450-00
 ;;9002226.02101,"975,54868-1483-01 ",.01)
 ;;54868-1483-01
 ;;9002226.02101,"975,54868-1483-01 ",.02)
 ;;54868-1483-01
 ;;9002226.02101,"975,54868-1959-01 ",.01)
 ;;54868-1959-01
 ;;9002226.02101,"975,54868-1959-01 ",.02)
 ;;54868-1959-01
 ;;9002226.02101,"975,54868-1959-02 ",.01)
 ;;54868-1959-02
 ;;9002226.02101,"975,54868-1959-02 ",.02)
 ;;54868-1959-02
 ;;9002226.02101,"975,54868-2192-00 ",.01)
 ;;54868-2192-00
 ;;9002226.02101,"975,54868-2192-00 ",.02)
 ;;54868-2192-00
 ;;9002226.02101,"975,54868-2192-01 ",.01)
 ;;54868-2192-01
 ;;9002226.02101,"975,54868-2192-01 ",.02)
 ;;54868-2192-01
 ;;9002226.02101,"975,54868-2192-03 ",.01)
 ;;54868-2192-03
 ;;9002226.02101,"975,54868-2192-03 ",.02)
 ;;54868-2192-03
 ;;9002226.02101,"975,54868-2192-04 ",.01)
 ;;54868-2192-04
 ;;9002226.02101,"975,54868-2192-04 ",.02)
 ;;54868-2192-04
 ;;9002226.02101,"975,54868-2206-01 ",.01)
 ;;54868-2206-01
 ;;9002226.02101,"975,54868-2206-01 ",.02)
 ;;54868-2206-01
 ;;9002226.02101,"975,54868-2221-00 ",.01)
 ;;54868-2221-00
 ;;9002226.02101,"975,54868-2221-00 ",.02)
 ;;54868-2221-00
 ;;9002226.02101,"975,54868-2221-01 ",.01)
 ;;54868-2221-01
 ;;9002226.02101,"975,54868-2221-01 ",.02)
 ;;54868-2221-01