BGP9VXIU ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"862,77.05 ",.01)
 ;;77.05 
 ;;9002226.02101,"862,77.05 ",.02)
 ;;77.05 
 ;;9002226.02101,"862,77.06 ",.01)
 ;;77.06 
 ;;9002226.02101,"862,77.06 ",.02)
 ;;77.06 
 ;;9002226.02101,"862,77.07 ",.01)
 ;;77.07 
 ;;9002226.02101,"862,77.07 ",.02)
 ;;77.07 
 ;;9002226.02101,"862,77.08 ",.01)
 ;;77.08 
 ;;9002226.02101,"862,77.08 ",.02)
 ;;77.08 
 ;;9002226.02101,"862,77.09 ",.01)
 ;;77.09 
 ;;9002226.02101,"862,77.09 ",.02)
 ;;77.09 
 ;;9002226.02101,"862,77.90 ",.01)
 ;;77.90 
 ;;9002226.02101,"862,77.90 ",.02)
 ;;77.90 
 ;;9002226.02101,"862,77.91 ",.01)
 ;;77.91 
 ;;9002226.02101,"862,77.91 ",.02)
 ;;77.91 
 ;;9002226.02101,"862,77.92 ",.01)
 ;;77.92 
 ;;9002226.02101,"862,77.92 ",.02)
 ;;77.92 
 ;;9002226.02101,"862,77.93 ",.01)
 ;;77.93 
 ;;9002226.02101,"862,77.93 ",.02)
 ;;77.93 
 ;;9002226.02101,"862,77.94 ",.01)
 ;;77.94 
 ;;9002226.02101,"862,77.94 ",.02)
 ;;77.94 
 ;;9002226.02101,"862,77.95 ",.01)
 ;;77.95 
 ;;9002226.02101,"862,77.95 ",.02)
 ;;77.95 
 ;;9002226.02101,"862,77.96 ",.01)
 ;;77.96 
 ;;9002226.02101,"862,77.96 ",.02)
 ;;77.96 
 ;;9002226.02101,"862,77.97 ",.01)
 ;;77.97 
 ;;9002226.02101,"862,77.97 ",.02)
 ;;77.97 
 ;;9002226.02101,"862,77.98 ",.01)
 ;;77.98 
 ;;9002226.02101,"862,77.98 ",.02)
 ;;77.98 
 ;;9002226.02101,"862,77.99 ",.01)
 ;;77.99 
 ;;9002226.02101,"862,77.99 ",.02)
 ;;77.99 
 ;;9002226.02101,"862,78.00 ",.01)
 ;;78.00 
 ;;9002226.02101,"862,78.00 ",.02)
 ;;78.00 
 ;;9002226.02101,"862,78.01 ",.01)
 ;;78.01 
 ;;9002226.02101,"862,78.01 ",.02)
 ;;78.01 
 ;;9002226.02101,"862,78.02 ",.01)
 ;;78.02 
 ;;9002226.02101,"862,78.02 ",.02)
 ;;78.02 
 ;;9002226.02101,"862,78.03 ",.01)
 ;;78.03 
 ;;9002226.02101,"862,78.03 ",.02)
 ;;78.03 
 ;;9002226.02101,"862,78.04 ",.01)
 ;;78.04 
 ;;9002226.02101,"862,78.04 ",.02)
 ;;78.04 
 ;;9002226.02101,"862,78.05 ",.01)
 ;;78.05 
 ;;9002226.02101,"862,78.05 ",.02)
 ;;78.05 
 ;;9002226.02101,"862,78.06 ",.01)
 ;;78.06 
 ;;9002226.02101,"862,78.06 ",.02)
 ;;78.06 
 ;;9002226.02101,"862,78.07 ",.01)
 ;;78.07 
 ;;9002226.02101,"862,78.07 ",.02)
 ;;78.07 
 ;;9002226.02101,"862,78.08 ",.01)
 ;;78.08 
 ;;9002226.02101,"862,78.08 ",.02)
 ;;78.08 
 ;;9002226.02101,"862,78.09 ",.01)
 ;;78.09 
 ;;9002226.02101,"862,78.09 ",.02)
 ;;78.09 
 ;;9002226.02101,"862,78.20 ",.01)
 ;;78.20 
 ;;9002226.02101,"862,78.20 ",.02)
 ;;78.20 
 ;;9002226.02101,"862,78.22 ",.01)
 ;;78.22 
 ;;9002226.02101,"862,78.22 ",.02)
 ;;78.22 
 ;;9002226.02101,"862,78.23 ",.01)
 ;;78.23 
 ;;9002226.02101,"862,78.23 ",.02)
 ;;78.23 
 ;;9002226.02101,"862,78.24 ",.01)
 ;;78.24 
 ;;9002226.02101,"862,78.24 ",.02)
 ;;78.24 
 ;;9002226.02101,"862,78.25 ",.01)
 ;;78.25 
 ;;9002226.02101,"862,78.25 ",.02)
 ;;78.25 
 ;;9002226.02101,"862,78.27 ",.01)
 ;;78.27 
 ;;9002226.02101,"862,78.27 ",.02)
 ;;78.27 
 ;;9002226.02101,"862,78.28 ",.01)
 ;;78.28 
 ;;9002226.02101,"862,78.28 ",.02)
 ;;78.28 
 ;;9002226.02101,"862,78.29 ",.01)
 ;;78.29 
 ;;9002226.02101,"862,78.29 ",.02)
 ;;78.29 
 ;;9002226.02101,"862,78.30 ",.01)
 ;;78.30 
 ;;9002226.02101,"862,78.30 ",.02)
 ;;78.30 
 ;;9002226.02101,"862,78.32 ",.01)
 ;;78.32 
 ;;9002226.02101,"862,78.32 ",.02)
 ;;78.32 
 ;;9002226.02101,"862,78.33 ",.01)
 ;;78.33 
 ;;9002226.02101,"862,78.33 ",.02)
 ;;78.33 
 ;;9002226.02101,"862,78.34 ",.01)
 ;;78.34 
 ;;9002226.02101,"862,78.34 ",.02)
 ;;78.34 
 ;;9002226.02101,"862,78.35 ",.01)
 ;;78.35 
 ;;9002226.02101,"862,78.35 ",.02)
 ;;78.35 
 ;;9002226.02101,"862,78.37 ",.01)
 ;;78.37 
 ;;9002226.02101,"862,78.37 ",.02)
 ;;78.37 
 ;;9002226.02101,"862,78.38 ",.01)
 ;;78.38 
 ;;9002226.02101,"862,78.38 ",.02)
 ;;78.38 
 ;;9002226.02101,"862,78.39 ",.01)
 ;;78.39 
 ;;9002226.02101,"862,78.39 ",.02)
 ;;78.39 
 ;;9002226.02101,"862,78.40 ",.01)
 ;;78.40 
 ;;9002226.02101,"862,78.40 ",.02)
 ;;78.40 
 ;;9002226.02101,"862,78.41 ",.01)
 ;;78.41 
 ;;9002226.02101,"862,78.41 ",.02)
 ;;78.41 
 ;;9002226.02101,"862,78.42 ",.01)
 ;;78.42 
 ;;9002226.02101,"862,78.42 ",.02)
 ;;78.42 
 ;;9002226.02101,"862,78.43 ",.01)
 ;;78.43 
 ;;9002226.02101,"862,78.43 ",.02)
 ;;78.43 
 ;;9002226.02101,"862,78.44 ",.01)
 ;;78.44 
 ;;9002226.02101,"862,78.44 ",.02)
 ;;78.44 
 ;;9002226.02101,"862,78.45 ",.01)
 ;;78.45 
 ;;9002226.02101,"862,78.45 ",.02)
 ;;78.45 
 ;;9002226.02101,"862,78.46 ",.01)
 ;;78.46 
 ;;9002226.02101,"862,78.46 ",.02)
 ;;78.46 
 ;;9002226.02101,"862,78.47 ",.01)
 ;;78.47 
 ;;9002226.02101,"862,78.47 ",.02)
 ;;78.47 
 ;;9002226.02101,"862,78.48 ",.01)
 ;;78.48 
 ;;9002226.02101,"862,78.48 ",.02)
 ;;78.48 
 ;;9002226.02101,"862,78.49 ",.01)
 ;;78.49 
 ;;9002226.02101,"862,78.49 ",.02)
 ;;78.49 
 ;;9002226.02101,"862,78.60 ",.01)
 ;;78.60 
 ;;9002226.02101,"862,78.60 ",.02)
 ;;78.60 
 ;;9002226.02101,"862,78.61 ",.01)
 ;;78.61 
 ;;9002226.02101,"862,78.61 ",.02)
 ;;78.61 
 ;;9002226.02101,"862,78.62 ",.01)
 ;;78.62 
 ;;9002226.02101,"862,78.62 ",.02)
 ;;78.62 
 ;;9002226.02101,"862,78.63 ",.01)
 ;;78.63 
 ;;9002226.02101,"862,78.63 ",.02)
 ;;78.63 
 ;;9002226.02101,"862,78.65 ",.01)
 ;;78.65 