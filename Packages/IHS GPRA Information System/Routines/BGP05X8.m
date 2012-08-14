BGP05X8 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"686,53265-0253-11 ",.02)
 ;;53265-0253-11
 ;;9002226.02101,"686,53265-0254-10 ",.01)
 ;;53265-0254-10
 ;;9002226.02101,"686,53265-0254-10 ",.02)
 ;;53265-0254-10
 ;;9002226.02101,"686,53265-0254-11 ",.01)
 ;;53265-0254-11
 ;;9002226.02101,"686,53265-0254-11 ",.02)
 ;;53265-0254-11
 ;;9002226.02101,"686,53265-0255-10 ",.01)
 ;;53265-0255-10
 ;;9002226.02101,"686,53265-0255-10 ",.02)
 ;;53265-0255-10
 ;;9002226.02101,"686,53265-0257-10 ",.01)
 ;;53265-0257-10
 ;;9002226.02101,"686,53265-0257-10 ",.02)
 ;;53265-0257-10
 ;;9002226.02101,"686,53265-0257-11 ",.01)
 ;;53265-0257-11
 ;;9002226.02101,"686,53265-0257-11 ",.02)
 ;;53265-0257-11
 ;;9002226.02101,"686,53265-0257-40 ",.01)
 ;;53265-0257-40
 ;;9002226.02101,"686,53265-0257-40 ",.02)
 ;;53265-0257-40
 ;;9002226.02101,"686,53265-0258-10 ",.01)
 ;;53265-0258-10
 ;;9002226.02101,"686,53265-0258-10 ",.02)
 ;;53265-0258-10
 ;;9002226.02101,"686,53265-0258-11 ",.01)
 ;;53265-0258-11
 ;;9002226.02101,"686,53265-0258-11 ",.02)
 ;;53265-0258-11
 ;;9002226.02101,"686,53265-0259-10 ",.01)
 ;;53265-0259-10
 ;;9002226.02101,"686,53265-0259-10 ",.02)
 ;;53265-0259-10
 ;;9002226.02101,"686,53265-0262-10 ",.01)
 ;;53265-0262-10
 ;;9002226.02101,"686,53265-0262-10 ",.02)
 ;;53265-0262-10
 ;;9002226.02101,"686,53265-0346-10 ",.01)
 ;;53265-0346-10
 ;;9002226.02101,"686,53265-0346-10 ",.02)
 ;;53265-0346-10
 ;;9002226.02101,"686,53265-0346-11 ",.01)
 ;;53265-0346-11
 ;;9002226.02101,"686,53265-0346-11 ",.02)
 ;;53265-0346-11
 ;;9002226.02101,"686,53265-0396-10 ",.01)
 ;;53265-0396-10
 ;;9002226.02101,"686,53265-0396-10 ",.02)
 ;;53265-0396-10
 ;;9002226.02101,"686,53489-0406-01 ",.01)
 ;;53489-0406-01
 ;;9002226.02101,"686,53489-0406-01 ",.02)
 ;;53489-0406-01
 ;;9002226.02101,"686,53489-0406-10 ",.01)
 ;;53489-0406-10
 ;;9002226.02101,"686,53489-0406-10 ",.02)
 ;;53489-0406-10
 ;;9002226.02101,"686,53489-0433-01 ",.01)
 ;;53489-0433-01
 ;;9002226.02101,"686,53489-0433-01 ",.02)
 ;;53489-0433-01
 ;;9002226.02101,"686,53489-0433-10 ",.01)
 ;;53489-0433-10
 ;;9002226.02101,"686,53489-0433-10 ",.02)
 ;;53489-0433-10
 ;;9002226.02101,"686,53489-0564-01 ",.01)
 ;;53489-0564-01
 ;;9002226.02101,"686,53489-0564-01 ",.02)
 ;;53489-0564-01
 ;;9002226.02101,"686,53489-0565-01 ",.01)
 ;;53489-0565-01
 ;;9002226.02101,"686,53489-0565-01 ",.02)
 ;;53489-0565-01
 ;;9002226.02101,"686,53489-0566-01 ",.01)
 ;;53489-0566-01
 ;;9002226.02101,"686,53489-0566-01 ",.02)
 ;;53489-0566-01
 ;;9002226.02101,"686,53489-0567-01 ",.01)
 ;;53489-0567-01
 ;;9002226.02101,"686,53489-0567-01 ",.02)
 ;;53489-0567-01
 ;;9002226.02101,"686,53489-0568-01 ",.01)
 ;;53489-0568-01
 ;;9002226.02101,"686,53489-0568-01 ",.02)
 ;;53489-0568-01
 ;;9002226.02101,"686,53489-0569-01 ",.01)
 ;;53489-0569-01
 ;;9002226.02101,"686,53489-0569-01 ",.02)
 ;;53489-0569-01
 ;;9002226.02101,"686,53489-0570-01 ",.01)
 ;;53489-0570-01
 ;;9002226.02101,"686,53489-0570-01 ",.02)
 ;;53489-0570-01
 ;;9002226.02101,"686,54092-0371-01 ",.01)
 ;;54092-0371-01
 ;;9002226.02101,"686,54092-0371-01 ",.02)
 ;;54092-0371-01
 ;;9002226.02101,"686,54092-0372-01 ",.01)
 ;;54092-0372-01
 ;;9002226.02101,"686,54092-0372-01 ",.02)
 ;;54092-0372-01
 ;;9002226.02101,"686,54092-0373-01 ",.01)
 ;;54092-0373-01
 ;;9002226.02101,"686,54092-0373-01 ",.02)
 ;;54092-0373-01
 ;;9002226.02101,"686,54092-0374-01 ",.01)
 ;;54092-0374-01
 ;;9002226.02101,"686,54092-0374-01 ",.02)
 ;;54092-0374-01
 ;;9002226.02101,"686,54092-0375-01 ",.01)
 ;;54092-0375-01
 ;;9002226.02101,"686,54092-0375-01 ",.02)
 ;;54092-0375-01
 ;;9002226.02101,"686,54092-0376-01 ",.01)
 ;;54092-0376-01
 ;;9002226.02101,"686,54092-0376-01 ",.02)
 ;;54092-0376-01
 ;;9002226.02101,"686,54092-0377-01 ",.01)
 ;;54092-0377-01
 ;;9002226.02101,"686,54092-0377-01 ",.02)
 ;;54092-0377-01
 ;;9002226.02101,"686,54092-0381-01 ",.01)
 ;;54092-0381-01
 ;;9002226.02101,"686,54092-0381-01 ",.02)
 ;;54092-0381-01
 ;;9002226.02101,"686,54092-0383-01 ",.01)
 ;;54092-0383-01
 ;;9002226.02101,"686,54092-0383-01 ",.02)
 ;;54092-0383-01
 ;;9002226.02101,"686,54092-0385-01 ",.01)
 ;;54092-0385-01
 ;;9002226.02101,"686,54092-0385-01 ",.02)
 ;;54092-0385-01
 ;;9002226.02101,"686,54092-0387-01 ",.01)
 ;;54092-0387-01
 ;;9002226.02101,"686,54092-0387-01 ",.02)
 ;;54092-0387-01
 ;;9002226.02101,"686,54092-0389-01 ",.01)
 ;;54092-0389-01
 ;;9002226.02101,"686,54092-0389-01 ",.02)
 ;;54092-0389-01
 ;;9002226.02101,"686,54092-0391-01 ",.01)
 ;;54092-0391-01
 ;;9002226.02101,"686,54092-0391-01 ",.02)
 ;;54092-0391-01
 ;;9002226.02101,"686,54092-0552-10 ",.01)
 ;;54092-0552-10
 ;;9002226.02101,"686,54092-0552-10 ",.02)
 ;;54092-0552-10
 ;;9002226.02101,"686,54092-0552-30 ",.01)
 ;;54092-0552-30
 ;;9002226.02101,"686,54092-0552-30 ",.02)
 ;;54092-0552-30
 ;;9002226.02101,"686,54092-0553-10 ",.01)
 ;;54092-0553-10
 ;;9002226.02101,"686,54092-0553-10 ",.02)
 ;;54092-0553-10
 ;;9002226.02101,"686,54092-0553-30 ",.01)
 ;;54092-0553-30
 ;;9002226.02101,"686,54092-0553-30 ",.02)
 ;;54092-0553-30
 ;;9002226.02101,"686,54092-0554-10 ",.01)
 ;;54092-0554-10
 ;;9002226.02101,"686,54092-0554-10 ",.02)
 ;;54092-0554-10
 ;;9002226.02101,"686,54092-0554-30 ",.01)
 ;;54092-0554-30
 ;;9002226.02101,"686,54092-0554-30 ",.02)
 ;;54092-0554-30
 ;;9002226.02101,"686,54092-0555-10 ",.01)
 ;;54092-0555-10
 ;;9002226.02101,"686,54092-0555-10 ",.02)
 ;;54092-0555-10
 ;;9002226.02101,"686,54092-0555-30 ",.01)
 ;;54092-0555-30
 ;;9002226.02101,"686,54092-0555-30 ",.02)
 ;;54092-0555-30
 ;;9002226.02101,"686,54569-0389-00 ",.01)
 ;;54569-0389-00
 ;;9002226.02101,"686,54569-0389-00 ",.02)
 ;;54569-0389-00
 ;;9002226.02101,"686,54569-0389-01 ",.01)
 ;;54569-0389-01
 ;;9002226.02101,"686,54569-0389-01 ",.02)
 ;;54569-0389-01
 ;;9002226.02101,"686,54569-0389-05 ",.01)
 ;;54569-0389-05
 ;;9002226.02101,"686,54569-0389-05 ",.02)
 ;;54569-0389-05
 ;;9002226.02101,"686,54569-0389-06 ",.01)
 ;;54569-0389-06
 ;;9002226.02101,"686,54569-0389-06 ",.02)
 ;;54569-0389-06
 ;;9002226.02101,"686,54569-0392-00 ",.01)
 ;;54569-0392-00
 ;;9002226.02101,"686,54569-0392-00 ",.02)
 ;;54569-0392-00
 ;;9002226.02101,"686,54569-0392-02 ",.01)
 ;;54569-0392-02
 ;;9002226.02101,"686,54569-0392-02 ",.02)
 ;;54569-0392-02
 ;;9002226.02101,"686,54569-0392-03 ",.01)
 ;;54569-0392-03
 ;;9002226.02101,"686,54569-0392-03 ",.02)
 ;;54569-0392-03
 ;;9002226.02101,"686,54569-0392-04 ",.01)
 ;;54569-0392-04
 ;;9002226.02101,"686,54569-0392-04 ",.02)
 ;;54569-0392-04
 ;;9002226.02101,"686,54569-0396-00 ",.01)
 ;;54569-0396-00
 ;;9002226.02101,"686,54569-0396-00 ",.02)
 ;;54569-0396-00
 ;;9002226.02101,"686,54569-0396-01 ",.01)
 ;;54569-0396-01
 ;;9002226.02101,"686,54569-0396-01 ",.02)
 ;;54569-0396-01
 ;;9002226.02101,"686,54569-0396-05 ",.01)
 ;;54569-0396-05
 ;;9002226.02101,"686,54569-0396-05 ",.02)
 ;;54569-0396-05
 ;;9002226.02101,"686,54569-1718-00 ",.01)
 ;;54569-1718-00
 ;;9002226.02101,"686,54569-1718-00 ",.02)
 ;;54569-1718-00
 ;;9002226.02101,"686,54569-1718-01 ",.01)
 ;;54569-1718-01
 ;;9002226.02101,"686,54569-1718-01 ",.02)
 ;;54569-1718-01
 ;;9002226.02101,"686,54569-1718-03 ",.01)
 ;;54569-1718-03
 ;;9002226.02101,"686,54569-1718-03 ",.02)
 ;;54569-1718-03
 ;;9002226.02101,"686,54569-1718-04 ",.01)
 ;;54569-1718-04
 ;;9002226.02101,"686,54569-1718-04 ",.02)
 ;;54569-1718-04
 ;;9002226.02101,"686,54569-1718-05 ",.01)
 ;;54569-1718-05
 ;;9002226.02101,"686,54569-1718-05 ",.02)
 ;;54569-1718-05
 ;;9002226.02101,"686,54569-2059-03 ",.01)
 ;;54569-2059-03
 ;;9002226.02101,"686,54569-2059-03 ",.02)
 ;;54569-2059-03
 ;;9002226.02101,"686,54569-2059-04 ",.01)
 ;;54569-2059-04
 ;;9002226.02101,"686,54569-2059-04 ",.02)
 ;;54569-2059-04
 ;;9002226.02101,"686,54569-2059-05 ",.01)
 ;;54569-2059-05
 ;;9002226.02101,"686,54569-2059-05 ",.02)
 ;;54569-2059-05
 ;;9002226.02101,"686,54569-2059-07 ",.01)
 ;;54569-2059-07
 ;;9002226.02101,"686,54569-2059-07 ",.02)
 ;;54569-2059-07
 ;;9002226.02101,"686,54569-2059-08 ",.01)
 ;;54569-2059-08
 ;;9002226.02101,"686,54569-2059-08 ",.02)
 ;;54569-2059-08
 ;;9002226.02101,"686,54569-2059-09 ",.01)
 ;;54569-2059-09
 ;;9002226.02101,"686,54569-2059-09 ",.02)
 ;;54569-2059-09
 ;;9002226.02101,"686,54569-2198-00 ",.01)
 ;;54569-2198-00
 ;;9002226.02101,"686,54569-2198-00 ",.02)
 ;;54569-2198-00
 ;;9002226.02101,"686,54569-2198-01 ",.01)
 ;;54569-2198-01
 ;;9002226.02101,"686,54569-2198-01 ",.02)
 ;;54569-2198-01
 ;;9002226.02101,"686,54569-2198-02 ",.01)
 ;;54569-2198-02
 ;;9002226.02101,"686,54569-2198-02 ",.02)
 ;;54569-2198-02
 ;;9002226.02101,"686,54569-2668-00 ",.01)
 ;;54569-2668-00
 ;;9002226.02101,"686,54569-2668-00 ",.02)
 ;;54569-2668-00
 ;;9002226.02101,"686,54569-2668-01 ",.01)
 ;;54569-2668-01
 ;;9002226.02101,"686,54569-2668-01 ",.02)
 ;;54569-2668-01
 ;;9002226.02101,"686,54569-2668-04 ",.01)
 ;;54569-2668-04
 ;;9002226.02101,"686,54569-2668-04 ",.02)
 ;;54569-2668-04
 ;;9002226.02101,"686,54569-2668-05 ",.01)
 ;;54569-2668-05
 ;;9002226.02101,"686,54569-2668-05 ",.02)
 ;;54569-2668-05
 ;;9002226.02101,"686,54569-2668-06 ",.01)
 ;;54569-2668-06
 ;;9002226.02101,"686,54569-2668-06 ",.02)
 ;;54569-2668-06
 ;;9002226.02101,"686,54569-2668-07 ",.01)
 ;;54569-2668-07
 ;;9002226.02101,"686,54569-2668-07 ",.02)
 ;;54569-2668-07
 ;;9002226.02101,"686,54569-2668-09 ",.01)
 ;;54569-2668-09
 ;;9002226.02101,"686,54569-2668-09 ",.02)
 ;;54569-2668-09
 ;;9002226.02101,"686,54569-2669-00 ",.01)
 ;;54569-2669-00
 ;;9002226.02101,"686,54569-2669-00 ",.02)
 ;;54569-2669-00
 ;;9002226.02101,"686,54569-2669-01 ",.01)
 ;;54569-2669-01
 ;;9002226.02101,"686,54569-2669-01 ",.02)
 ;;54569-2669-01
 ;;9002226.02101,"686,54569-2669-02 ",.01)
 ;;54569-2669-02
 ;;9002226.02101,"686,54569-2669-02 ",.02)
 ;;54569-2669-02
 ;;9002226.02101,"686,54569-2669-03 ",.01)
 ;;54569-2669-03
 ;;9002226.02101,"686,54569-2669-03 ",.02)
 ;;54569-2669-03
 ;;9002226.02101,"686,54569-2949-03 ",.01)
 ;;54569-2949-03
 ;;9002226.02101,"686,54569-2949-03 ",.02)
 ;;54569-2949-03
 ;;9002226.02101,"686,54569-2949-04 ",.01)
 ;;54569-2949-04
 ;;9002226.02101,"686,54569-2949-04 ",.02)
 ;;54569-2949-04
 ;;9002226.02101,"686,54569-3069-00 ",.01)
 ;;54569-3069-00
 ;;9002226.02101,"686,54569-3069-00 ",.02)
 ;;54569-3069-00
 ;;9002226.02101,"686,54569-3069-02 ",.01)
 ;;54569-3069-02
 ;;9002226.02101,"686,54569-3069-02 ",.02)
 ;;54569-3069-02
 ;;9002226.02101,"686,54569-3069-03 ",.01)
 ;;54569-3069-03
 ;;9002226.02101,"686,54569-3069-03 ",.02)
 ;;54569-3069-03
 ;;9002226.02101,"686,54569-3069-04 ",.01)
 ;;54569-3069-04
 ;;9002226.02101,"686,54569-3069-04 ",.02)
 ;;54569-3069-04
 ;;9002226.02101,"686,54569-3069-05 ",.01)
 ;;54569-3069-05
 ;;9002226.02101,"686,54569-3069-05 ",.02)
 ;;54569-3069-05
 ;;9002226.02101,"686,54569-3069-06 ",.01)
 ;;54569-3069-06
 ;;9002226.02101,"686,54569-3069-06 ",.02)
 ;;54569-3069-06
 ;;9002226.02101,"686,54569-3203-00 ",.01)
 ;;54569-3203-00
 ;;9002226.02101,"686,54569-3203-00 ",.02)
 ;;54569-3203-00
 ;;9002226.02101,"686,54569-3203-01 ",.01)
 ;;54569-3203-01
 ;;9002226.02101,"686,54569-3203-01 ",.02)
 ;;54569-3203-01
 ;;9002226.02101,"686,54569-3203-02 ",.01)
 ;;54569-3203-02
 ;;9002226.02101,"686,54569-3203-02 ",.02)
 ;;54569-3203-02
 ;;9002226.02101,"686,54569-3203-03 ",.01)
 ;;54569-3203-03
 ;;9002226.02101,"686,54569-3203-03 ",.02)
 ;;54569-3203-03
 ;;9002226.02101,"686,54569-3203-04 ",.01)
 ;;54569-3203-04
 ;;9002226.02101,"686,54569-3203-04 ",.02)
 ;;54569-3203-04
 ;;9002226.02101,"686,54569-3203-08 ",.01)
 ;;54569-3203-08
 ;;9002226.02101,"686,54569-3203-08 ",.02)
 ;;54569-3203-08
 ;;9002226.02101,"686,54569-4143-00 ",.01)
 ;;54569-4143-00
 ;;9002226.02101,"686,54569-4143-00 ",.02)
 ;;54569-4143-00
 ;;9002226.02101,"686,54569-4143-02 ",.01)
 ;;54569-4143-02
 ;;9002226.02101,"686,54569-4143-02 ",.02)
 ;;54569-4143-02
 ;;9002226.02101,"686,54569-4143-04 ",.01)
 ;;54569-4143-04
 ;;9002226.02101,"686,54569-4143-04 ",.02)
 ;;54569-4143-04
 ;;9002226.02101,"686,54569-4143-05 ",.01)
 ;;54569-4143-05
 ;;9002226.02101,"686,54569-4143-05 ",.02)
 ;;54569-4143-05
 ;;9002226.02101,"686,54569-4336-00 ",.01)
 ;;54569-4336-00
 ;;9002226.02101,"686,54569-4336-00 ",.02)
 ;;54569-4336-00
 ;;9002226.02101,"686,54569-4816-01 ",.01)
 ;;54569-4816-01
 ;;9002226.02101,"686,54569-4816-01 ",.02)
 ;;54569-4816-01
 ;;9002226.02101,"686,54569-4816-02 ",.01)
 ;;54569-4816-02
 ;;9002226.02101,"686,54569-4816-02 ",.02)
 ;;54569-4816-02
 ;;9002226.02101,"686,54569-5120-02 ",.01)
 ;;54569-5120-02
 ;;9002226.02101,"686,54569-5120-02 ",.02)
 ;;54569-5120-02
 ;;9002226.02101,"686,54569-5195-00 ",.01)
 ;;54569-5195-00
 ;;9002226.02101,"686,54569-5195-00 ",.02)
 ;;54569-5195-00
 ;;9002226.02101,"686,54569-5195-01 ",.01)
 ;;54569-5195-01
 ;;9002226.02101,"686,54569-5195-01 ",.02)
 ;;54569-5195-01
 ;;9002226.02101,"686,54569-5195-02 ",.01)
 ;;54569-5195-02
 ;;9002226.02101,"686,54569-5195-02 ",.02)
 ;;54569-5195-02
 ;;9002226.02101,"686,54569-5195-03 ",.01)
 ;;54569-5195-03
 ;;9002226.02101,"686,54569-5195-03 ",.02)
 ;;54569-5195-03
 ;;9002226.02101,"686,54569-5195-04 ",.01)
 ;;54569-5195-04
 ;;9002226.02101,"686,54569-5195-04 ",.02)
 ;;54569-5195-04
 ;;9002226.02101,"686,54569-5195-05 ",.01)
 ;;54569-5195-05
 ;;9002226.02101,"686,54569-5195-05 ",.02)
 ;;54569-5195-05
 ;;9002226.02101,"686,54569-5195-06 ",.01)
 ;;54569-5195-06
 ;;9002226.02101,"686,54569-5195-06 ",.02)
 ;;54569-5195-06
 ;;9002226.02101,"686,54569-5195-07 ",.01)
 ;;54569-5195-07