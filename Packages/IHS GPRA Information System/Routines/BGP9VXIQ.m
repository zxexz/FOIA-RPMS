BGP9VXIQ ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"862,51.59 ",.02)
 ;;51.59 
 ;;9002226.02101,"862,51.61 ",.01)
 ;;51.61 
 ;;9002226.02101,"862,51.61 ",.02)
 ;;51.61 
 ;;9002226.02101,"862,51.62 ",.01)
 ;;51.62 
 ;;9002226.02101,"862,51.62 ",.02)
 ;;51.62 
 ;;9002226.02101,"862,51.63 ",.01)
 ;;51.63 
 ;;9002226.02101,"862,51.63 ",.02)
 ;;51.63 
 ;;9002226.02101,"862,51.69 ",.01)
 ;;51.69 
 ;;9002226.02101,"862,51.69 ",.02)
 ;;51.69 
 ;;9002226.02101,"862,51.71 ",.01)
 ;;51.71 
 ;;9002226.02101,"862,51.71 ",.02)
 ;;51.71 
 ;;9002226.02101,"862,51.72 ",.01)
 ;;51.72 
 ;;9002226.02101,"862,51.72 ",.02)
 ;;51.72 
 ;;9002226.02101,"862,51.79 ",.01)
 ;;51.79 
 ;;9002226.02101,"862,51.79 ",.02)
 ;;51.79 
 ;;9002226.02101,"862,51.81 ",.01)
 ;;51.81 
 ;;9002226.02101,"862,51.81 ",.02)
 ;;51.81 
 ;;9002226.02101,"862,51.82 ",.01)
 ;;51.82 
 ;;9002226.02101,"862,51.82 ",.02)
 ;;51.82 
 ;;9002226.02101,"862,51.83 ",.01)
 ;;51.83 
 ;;9002226.02101,"862,51.83 ",.02)
 ;;51.83 
 ;;9002226.02101,"862,51.89 ",.01)
 ;;51.89 
 ;;9002226.02101,"862,51.89 ",.02)
 ;;51.89 
 ;;9002226.02101,"862,51.91 ",.01)
 ;;51.91 
 ;;9002226.02101,"862,51.91 ",.02)
 ;;51.91 
 ;;9002226.02101,"862,51.92 ",.01)
 ;;51.92 
 ;;9002226.02101,"862,51.92 ",.02)
 ;;51.92 
 ;;9002226.02101,"862,51.93 ",.01)
 ;;51.93 
 ;;9002226.02101,"862,51.93 ",.02)
 ;;51.93 
 ;;9002226.02101,"862,51.94 ",.01)
 ;;51.94 
 ;;9002226.02101,"862,51.94 ",.02)
 ;;51.94 
 ;;9002226.02101,"862,51.95 ",.01)
 ;;51.95 
 ;;9002226.02101,"862,51.95 ",.02)
 ;;51.95 
 ;;9002226.02101,"862,51.99 ",.01)
 ;;51.99 
 ;;9002226.02101,"862,51.99 ",.02)
 ;;51.99 
 ;;9002226.02101,"862,52.09 ",.01)
 ;;52.09 
 ;;9002226.02101,"862,52.09 ",.02)
 ;;52.09 
 ;;9002226.02101,"862,52.22 ",.01)
 ;;52.22 
 ;;9002226.02101,"862,52.22 ",.02)
 ;;52.22 
 ;;9002226.02101,"862,52.3 ",.01)
 ;;52.3 
 ;;9002226.02101,"862,52.3 ",.02)
 ;;52.3 
 ;;9002226.02101,"862,52.4 ",.01)
 ;;52.4 
 ;;9002226.02101,"862,52.4 ",.02)
 ;;52.4 
 ;;9002226.02101,"862,52.51 ",.01)
 ;;52.51 
 ;;9002226.02101,"862,52.51 ",.02)
 ;;52.51 
 ;;9002226.02101,"862,52.52 ",.01)
 ;;52.52 
 ;;9002226.02101,"862,52.52 ",.02)
 ;;52.52 
 ;;9002226.02101,"862,52.53 ",.01)
 ;;52.53 
 ;;9002226.02101,"862,52.53 ",.02)
 ;;52.53 
 ;;9002226.02101,"862,52.59 ",.01)
 ;;52.59 
 ;;9002226.02101,"862,52.59 ",.02)
 ;;52.59 
 ;;9002226.02101,"862,52.6 ",.01)
 ;;52.6 
 ;;9002226.02101,"862,52.6 ",.02)
 ;;52.6 
 ;;9002226.02101,"862,52.7 ",.01)
 ;;52.7 
 ;;9002226.02101,"862,52.7 ",.02)
 ;;52.7 
 ;;9002226.02101,"862,52.80 ",.01)
 ;;52.80 
 ;;9002226.02101,"862,52.80 ",.02)
 ;;52.80 
 ;;9002226.02101,"862,52.81 ",.01)
 ;;52.81 
 ;;9002226.02101,"862,52.81 ",.02)
 ;;52.81 
 ;;9002226.02101,"862,52.82 ",.01)
 ;;52.82 
 ;;9002226.02101,"862,52.82 ",.02)
 ;;52.82 
 ;;9002226.02101,"862,52.83 ",.01)
 ;;52.83 
 ;;9002226.02101,"862,52.83 ",.02)
 ;;52.83 
 ;;9002226.02101,"862,52.92 ",.01)
 ;;52.92 
 ;;9002226.02101,"862,52.92 ",.02)
 ;;52.92 
 ;;9002226.02101,"862,52.95 ",.01)
 ;;52.95 
 ;;9002226.02101,"862,52.95 ",.02)
 ;;52.95 
 ;;9002226.02101,"862,52.96 ",.01)
 ;;52.96 
 ;;9002226.02101,"862,52.96 ",.02)
 ;;52.96 
 ;;9002226.02101,"862,52.99 ",.01)
 ;;52.99 
 ;;9002226.02101,"862,52.99 ",.02)
 ;;52.99 
 ;;9002226.02101,"862,53.51 ",.01)
 ;;53.51 
 ;;9002226.02101,"862,53.51 ",.02)
 ;;53.51 
 ;;9002226.02101,"862,53.59 ",.01)
 ;;53.59 
 ;;9002226.02101,"862,53.59 ",.02)
 ;;53.59 
 ;;9002226.02101,"862,53.61 ",.01)
 ;;53.61 
 ;;9002226.02101,"862,53.61 ",.02)
 ;;53.61 
 ;;9002226.02101,"862,53.69 ",.01)
 ;;53.69 
 ;;9002226.02101,"862,53.69 ",.02)
 ;;53.69 
 ;;9002226.02101,"862,53.7 ",.01)
 ;;53.7 
 ;;9002226.02101,"862,53.7 ",.02)
 ;;53.7 
 ;;9002226.02101,"862,53.80 ",.01)
 ;;53.80 
 ;;9002226.02101,"862,53.80 ",.02)
 ;;53.80 
 ;;9002226.02101,"862,53.81 ",.01)
 ;;53.81 
 ;;9002226.02101,"862,53.81 ",.02)
 ;;53.81 
 ;;9002226.02101,"862,53.82 ",.01)
 ;;53.82 
 ;;9002226.02101,"862,53.82 ",.02)
 ;;53.82 
 ;;9002226.02101,"862,53.9 ",.01)
 ;;53.9 
 ;;9002226.02101,"862,53.9 ",.02)
 ;;53.9 
 ;;9002226.02101,"862,54.11 ",.01)
 ;;54.11 
 ;;9002226.02101,"862,54.11 ",.02)
 ;;54.11 
 ;;9002226.02101,"862,54.12 ",.01)
 ;;54.12 
 ;;9002226.02101,"862,54.12 ",.02)
 ;;54.12 
 ;;9002226.02101,"862,54.19 ",.01)
 ;;54.19 
 ;;9002226.02101,"862,54.19 ",.02)
 ;;54.19 
 ;;9002226.02101,"862,54.4 ",.01)
 ;;54.4 
 ;;9002226.02101,"862,54.4 ",.02)
 ;;54.4 
 ;;9002226.02101,"862,54.59 ",.01)
 ;;54.59 
 ;;9002226.02101,"862,54.59 ",.02)
 ;;54.59 
 ;;9002226.02101,"862,54.61 ",.01)
 ;;54.61 
 ;;9002226.02101,"862,54.61 ",.02)
 ;;54.61 
 ;;9002226.02101,"862,54.62 ",.01)
 ;;54.62 
 ;;9002226.02101,"862,54.62 ",.02)
 ;;54.62 
 ;;9002226.02101,"862,54.63 ",.01)
 ;;54.63 
 ;;9002226.02101,"862,54.63 ",.02)
 ;;54.63 
 ;;9002226.02101,"862,54.64 ",.01)
 ;;54.64 
 ;;9002226.02101,"862,54.64 ",.02)
 ;;54.64 
 ;;9002226.02101,"862,54.71 ",.01)
 ;;54.71 
 ;;9002226.02101,"862,54.71 ",.02)
 ;;54.71 
 ;;9002226.02101,"862,54.72 ",.01)
 ;;54.72 
 ;;9002226.02101,"862,54.72 ",.02)
 ;;54.72 
 ;;9002226.02101,"862,54.73 ",.01)
 ;;54.73 