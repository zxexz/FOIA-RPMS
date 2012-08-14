BGP8EXPE ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
 ;;8.0;IHS CLINICAL REPORTING;;MAR 12, 2008
 ;;;BGP6;;SEP 28, 2007
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"549,42615-5 ",.01)
 ;;42615-5
 ;;9002226.02101,"549,42615-5 ",.02)
 ;;42615-5
 ;;9002226.02101,"549,42629-6 ",.01)
 ;;42629-6
 ;;9002226.02101,"549,42629-6 ",.02)
 ;;42629-6
 ;;9002226.02101,"549,42631-2 ",.01)
 ;;42631-2
 ;;9002226.02101,"549,42631-2 ",.02)
 ;;42631-2
 ;;9002226.02101,"549,43740-0 ",.01)
 ;;43740-0
 ;;9002226.02101,"549,43740-0 ",.02)
 ;;43740-0
 ;;9002226.02101,"549,44919-9 ",.01)
 ;;44919-9
 ;;9002226.02101,"549,44919-9 ",.02)
 ;;44919-9
 ;;9002226.02101,"549,45052-8 ",.01)
 ;;45052-8
 ;;9002226.02101,"549,45052-8 ",.02)
 ;;45052-8
 ;;9002226.02101,"549,45053-6 ",.01)
 ;;45053-6
 ;;9002226.02101,"549,45053-6 ",.02)
 ;;45053-6
 ;;9002226.02101,"549,45054-4 ",.01)
 ;;45054-4
 ;;9002226.02101,"549,45054-4 ",.02)
 ;;45054-4
 ;;9002226.02101,"549,45055-1 ",.01)
 ;;45055-1
 ;;9002226.02101,"549,45055-1 ",.02)
 ;;45055-1
 ;;9002226.02101,"549,45056-9 ",.01)
 ;;45056-9
 ;;9002226.02101,"549,45056-9 ",.02)
 ;;45056-9
 ;;9002226.02101,"549,45204-5 ",.01)
 ;;45204-5
 ;;9002226.02101,"549,45204-5 ",.02)
 ;;45204-5
 ;;9002226.02101,"549,45205-2 ",.01)
 ;;45205-2
 ;;9002226.02101,"549,45205-2 ",.02)
 ;;45205-2
 ;;9002226.02101,"549,45206-0 ",.01)
 ;;45206-0
 ;;9002226.02101,"549,45206-0 ",.02)
 ;;45206-0
 ;;9002226.02101,"549,45298-7 ",.01)
 ;;45298-7
 ;;9002226.02101,"549,45298-7 ",.02)
 ;;45298-7
 ;;9002226.02101,"549,45299-5 ",.01)
 ;;45299-5
 ;;9002226.02101,"549,45299-5 ",.02)
 ;;45299-5
 ;;9002226.02101,"549,46222-6 ",.01)
 ;;46222-6
 ;;9002226.02101,"549,46222-6 ",.02)
 ;;46222-6
 ;;9002226.02101,"549,46223-4 ",.01)
 ;;46223-4
 ;;9002226.02101,"549,46223-4 ",.02)
 ;;46223-4
 ;;9002226.02101,"549,47622-6 ",.01)
 ;;47622-6
 ;;9002226.02101,"549,47622-6 ",.02)
 ;;47622-6
 ;;9002226.02101,"549,47859-4 ",.01)
 ;;47859-4
 ;;9002226.02101,"549,47859-4 ",.02)
 ;;47859-4
 ;;9002226.02101,"549,48109-3 ",.01)
 ;;48109-3
 ;;9002226.02101,"549,48109-3 ",.02)
 ;;48109-3
 ;;9002226.02101,"549,48605-0 ",.01)
 ;;48605-0
 ;;9002226.02101,"549,48605-0 ",.02)
 ;;48605-0
 ;;9002226.02101,"549,48606-8 ",.01)
 ;;48606-8
 ;;9002226.02101,"549,48606-8 ",.02)
 ;;48606-8
 ;;9002226.02101,"549,48607-6 ",.01)
 ;;48607-6
 ;;9002226.02101,"549,48607-6 ",.02)
 ;;48607-6
 ;;9002226.02101,"549,48810-6 ",.01)
 ;;48810-6
 ;;9002226.02101,"549,48810-6 ",.02)
 ;;48810-6
 ;;9002226.02101,"549,48983-1 ",.01)
 ;;48983-1
 ;;9002226.02101,"549,48983-1 ",.02)
 ;;48983-1
 ;;9002226.02101,"549,48984-9 ",.01)
 ;;48984-9
 ;;9002226.02101,"549,48984-9 ",.02)
 ;;48984-9
 ;;9002226.02101,"549,48985-6 ",.01)
 ;;48985-6
 ;;9002226.02101,"549,48985-6 ",.02)
 ;;48985-6
 ;;9002226.02101,"549,48986-4 ",.01)
 ;;48986-4
 ;;9002226.02101,"549,48986-4 ",.02)
 ;;48986-4
 ;;9002226.02101,"549,48988-0 ",.01)
 ;;48988-0
 ;;9002226.02101,"549,48988-0 ",.02)
 ;;48988-0
 ;;9002226.02101,"549,48989-8 ",.01)
 ;;48989-8
 ;;9002226.02101,"549,48989-8 ",.02)
 ;;48989-8
 ;;9002226.02101,"549,48990-6 ",.01)
 ;;48990-6
 ;;9002226.02101,"549,48990-6 ",.02)
 ;;48990-6
 ;;9002226.02101,"549,48991-4 ",.01)
 ;;48991-4
 ;;9002226.02101,"549,48991-4 ",.02)
 ;;48991-4
 ;;9002226.02101,"549,48992-2 ",.01)
 ;;48992-2
 ;;9002226.02101,"549,48992-2 ",.02)
 ;;48992-2
 ;;9002226.02101,"549,48993-0 ",.01)
 ;;48993-0
 ;;9002226.02101,"549,48993-0 ",.02)
 ;;48993-0
 ;;9002226.02101,"549,48994-8 ",.01)
 ;;48994-8
 ;;9002226.02101,"549,48994-8 ",.02)
 ;;48994-8
 ;;9002226.02101,"549,49134-0 ",.01)
 ;;49134-0
 ;;9002226.02101,"549,49134-0 ",.02)
 ;;49134-0
 ;;9002226.02101,"549,5914-7 ",.01)
 ;;5914-7
 ;;9002226.02101,"549,5914-7 ",.02)
 ;;5914-7
 ;;9002226.02101,"549,6689-4 ",.01)
 ;;6689-4
 ;;9002226.02101,"549,6689-4 ",.02)
 ;;6689-4
 ;;9002226.02101,"549,6749-6 ",.01)
 ;;6749-6
 ;;9002226.02101,"549,6749-6 ",.02)
 ;;6749-6
 ;;9002226.02101,"549,6752-0 ",.01)
 ;;6752-0
 ;;9002226.02101,"549,6752-0 ",.02)
 ;;6752-0
 ;;9002226.02101,"549,6753-8 ",.01)
 ;;6753-8
 ;;9002226.02101,"549,6753-8 ",.02)
 ;;6753-8
 ;;9002226.02101,"549,6754-6 ",.01)
 ;;6754-6
 ;;9002226.02101,"549,6754-6 ",.02)
 ;;6754-6
 ;;9002226.02101,"549,6755-3 ",.01)
 ;;6755-3
 ;;9002226.02101,"549,6755-3 ",.02)
 ;;6755-3
 ;;9002226.02101,"549,6756-1 ",.01)
 ;;6756-1
 ;;9002226.02101,"549,6756-1 ",.02)
 ;;6756-1
 ;;9002226.02101,"549,6759-5 ",.01)
 ;;6759-5
 ;;9002226.02101,"549,6759-5 ",.02)
 ;;6759-5
 ;;9002226.02101,"549,6760-3 ",.01)
 ;;6760-3
 ;;9002226.02101,"549,6760-3 ",.02)
 ;;6760-3
 ;;9002226.02101,"549,6762-9 ",.01)
 ;;6762-9
 ;;9002226.02101,"549,6762-9 ",.02)
 ;;6762-9
 ;;9002226.02101,"549,6764-5 ",.01)
 ;;6764-5
 ;;9002226.02101,"549,6764-5 ",.02)
 ;;6764-5
 ;;9002226.02101,"549,6777-7 ",.01)
 ;;6777-7
 ;;9002226.02101,"549,6777-7 ",.02)
 ;;6777-7
 ;;9002226.02101,"549,9375-7 ",.01)
 ;;9375-7
 ;;9002226.02101,"549,9375-7 ",.02)
 ;;9375-7
 ;;9002226.02101,"549,9376-5 ",.01)
 ;;9376-5
 ;;9002226.02101,"549,9376-5 ",.02)
 ;;9376-5
 ;;9002226.02101,"549,9377-3 ",.01)
 ;;9377-3
 ;;9002226.02101,"549,9377-3 ",.02)
 ;;9377-3
 ;;9002226.02101,"549,9378-1 ",.01)
 ;;9378-1
 ;;9002226.02101,"549,9378-1 ",.02)
 ;;9378-1