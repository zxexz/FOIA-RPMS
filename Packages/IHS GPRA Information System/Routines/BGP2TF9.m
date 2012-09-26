BGP2TF9 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 12, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1198,51138-0537-30 ",.02)
 ;;51138-0537-30
 ;;9002226.02101,"1198,51138-0538-10 ",.01)
 ;;51138-0538-10
 ;;9002226.02101,"1198,51138-0538-10 ",.02)
 ;;51138-0538-10
 ;;9002226.02101,"1198,51138-0538-30 ",.01)
 ;;51138-0538-30
 ;;9002226.02101,"1198,51138-0538-30 ",.02)
 ;;51138-0538-30
 ;;9002226.02101,"1198,51138-0539-10 ",.01)
 ;;51138-0539-10
 ;;9002226.02101,"1198,51138-0539-10 ",.02)
 ;;51138-0539-10
 ;;9002226.02101,"1198,51138-0539-30 ",.01)
 ;;51138-0539-30
 ;;9002226.02101,"1198,51138-0539-30 ",.02)
 ;;51138-0539-30
 ;;9002226.02101,"1198,51138-0540-10 ",.01)
 ;;51138-0540-10
 ;;9002226.02101,"1198,51138-0540-10 ",.02)
 ;;51138-0540-10
 ;;9002226.02101,"1198,51138-0540-30 ",.01)
 ;;51138-0540-30
 ;;9002226.02101,"1198,51138-0540-30 ",.02)
 ;;51138-0540-30
 ;;9002226.02101,"1198,52959-0207-00 ",.01)
 ;;52959-0207-00
 ;;9002226.02101,"1198,52959-0207-00 ",.02)
 ;;52959-0207-00
 ;;9002226.02101,"1198,52959-0207-28 ",.01)
 ;;52959-0207-28
 ;;9002226.02101,"1198,52959-0207-28 ",.02)
 ;;52959-0207-28
 ;;9002226.02101,"1198,52959-0207-30 ",.01)
 ;;52959-0207-30
 ;;9002226.02101,"1198,52959-0207-30 ",.02)
 ;;52959-0207-30
 ;;9002226.02101,"1198,52959-0207-60 ",.01)
 ;;52959-0207-60
 ;;9002226.02101,"1198,52959-0207-60 ",.02)
 ;;52959-0207-60
 ;;9002226.02101,"1198,52959-0860-02 ",.01)
 ;;52959-0860-02
 ;;9002226.02101,"1198,52959-0860-02 ",.02)
 ;;52959-0860-02
 ;;9002226.02101,"1198,52959-0860-30 ",.01)
 ;;52959-0860-30
 ;;9002226.02101,"1198,52959-0860-30 ",.02)
 ;;52959-0860-30
 ;;9002226.02101,"1198,52959-0860-60 ",.01)
 ;;52959-0860-60
 ;;9002226.02101,"1198,52959-0860-60 ",.02)
 ;;52959-0860-60
 ;;9002226.02101,"1198,52959-0860-90 ",.01)
 ;;52959-0860-90
 ;;9002226.02101,"1198,52959-0860-90 ",.02)
 ;;52959-0860-90
 ;;9002226.02101,"1198,52959-0896-01 ",.01)
 ;;52959-0896-01
 ;;9002226.02101,"1198,52959-0896-01 ",.02)
 ;;52959-0896-01
 ;;9002226.02101,"1198,52959-0896-60 ",.01)
 ;;52959-0896-60
 ;;9002226.02101,"1198,52959-0896-60 ",.02)
 ;;52959-0896-60
 ;;9002226.02101,"1198,53002-1251-00 ",.01)
 ;;53002-1251-00
 ;;9002226.02101,"1198,53002-1251-00 ",.02)
 ;;53002-1251-00
 ;;9002226.02101,"1198,53002-1251-03 ",.01)
 ;;53002-1251-03
 ;;9002226.02101,"1198,53002-1251-03 ",.02)
 ;;53002-1251-03
 ;;9002226.02101,"1198,53002-1251-06 ",.01)
 ;;53002-1251-06
 ;;9002226.02101,"1198,53002-1251-06 ",.02)
 ;;53002-1251-06
 ;;9002226.02101,"1198,53002-1422-00 ",.01)
 ;;53002-1422-00
 ;;9002226.02101,"1198,53002-1422-00 ",.02)
 ;;53002-1422-00
 ;;9002226.02101,"1198,53002-1422-03 ",.01)
 ;;53002-1422-03
 ;;9002226.02101,"1198,53002-1422-03 ",.02)
 ;;53002-1422-03
 ;;9002226.02101,"1198,53002-1422-06 ",.01)
 ;;53002-1422-06
 ;;9002226.02101,"1198,53002-1422-06 ",.02)
 ;;53002-1422-06
 ;;9002226.02101,"1198,53002-1445-00 ",.01)
 ;;53002-1445-00
 ;;9002226.02101,"1198,53002-1445-00 ",.02)
 ;;53002-1445-00
 ;;9002226.02101,"1198,53002-1445-03 ",.01)
 ;;53002-1445-03
 ;;9002226.02101,"1198,53002-1445-03 ",.02)
 ;;53002-1445-03
 ;;9002226.02101,"1198,53002-1445-06 ",.01)
 ;;53002-1445-06
 ;;9002226.02101,"1198,53002-1445-06 ",.02)
 ;;53002-1445-06
 ;;9002226.02101,"1198,53489-0467-01 ",.01)
 ;;53489-0467-01
 ;;9002226.02101,"1198,53489-0467-01 ",.02)
 ;;53489-0467-01
 ;;9002226.02101,"1198,53489-0467-05 ",.01)
 ;;53489-0467-05
 ;;9002226.02101,"1198,53489-0467-05 ",.02)
 ;;53489-0467-05
 ;;9002226.02101,"1198,53489-0467-10 ",.01)
 ;;53489-0467-10
 ;;9002226.02101,"1198,53489-0467-10 ",.02)
 ;;53489-0467-10
 ;;9002226.02101,"1198,53489-0468-01 ",.01)
 ;;53489-0468-01
 ;;9002226.02101,"1198,53489-0468-01 ",.02)
 ;;53489-0468-01
 ;;9002226.02101,"1198,53489-0468-05 ",.01)
 ;;53489-0468-05
 ;;9002226.02101,"1198,53489-0468-05 ",.02)
 ;;53489-0468-05
 ;;9002226.02101,"1198,53489-0468-10 ",.01)
 ;;53489-0468-10
 ;;9002226.02101,"1198,53489-0468-10 ",.02)
 ;;53489-0468-10
 ;;9002226.02101,"1198,53489-0469-01 ",.01)
 ;;53489-0469-01
 ;;9002226.02101,"1198,53489-0469-01 ",.02)
 ;;53489-0469-01
 ;;9002226.02101,"1198,53489-0469-05 ",.01)
 ;;53489-0469-05
 ;;9002226.02101,"1198,53489-0469-05 ",.02)
 ;;53489-0469-05
 ;;9002226.02101,"1198,53489-0469-10 ",.01)
 ;;53489-0469-10
 ;;9002226.02101,"1198,53489-0469-10 ",.02)
 ;;53489-0469-10
 ;;9002226.02101,"1198,53746-0178-01 ",.01)
 ;;53746-0178-01
 ;;9002226.02101,"1198,53746-0178-01 ",.02)
 ;;53746-0178-01
 ;;9002226.02101,"1198,53746-0178-05 ",.01)
 ;;53746-0178-05
 ;;9002226.02101,"1198,53746-0178-05 ",.02)
 ;;53746-0178-05
 ;;9002226.02101,"1198,53746-0178-10 ",.01)
 ;;53746-0178-10
 ;;9002226.02101,"1198,53746-0178-10 ",.02)
 ;;53746-0178-10
 ;;9002226.02101,"1198,53746-0178-90 ",.01)
 ;;53746-0178-90
 ;;9002226.02101,"1198,53746-0178-90 ",.02)
 ;;53746-0178-90
 ;;9002226.02101,"1198,53746-0179-01 ",.01)
 ;;53746-0179-01
 ;;9002226.02101,"1198,53746-0179-01 ",.02)
 ;;53746-0179-01
 ;;9002226.02101,"1198,53746-0179-05 ",.01)
 ;;53746-0179-05
 ;;9002226.02101,"1198,53746-0179-05 ",.02)
 ;;53746-0179-05
 ;;9002226.02101,"1198,54458-0974-06 ",.01)
 ;;54458-0974-06
 ;;9002226.02101,"1198,54458-0974-06 ",.02)
 ;;54458-0974-06
 ;;9002226.02101,"1198,54569-4202-00 ",.01)
 ;;54569-4202-00
 ;;9002226.02101,"1198,54569-4202-00 ",.02)
 ;;54569-4202-00
 ;;9002226.02101,"1198,54569-4202-01 ",.01)
 ;;54569-4202-01
 ;;9002226.02101,"1198,54569-4202-01 ",.02)
 ;;54569-4202-01
 ;;9002226.02101,"1198,54569-4202-02 ",.01)
 ;;54569-4202-02
 ;;9002226.02101,"1198,54569-4202-02 ",.02)
 ;;54569-4202-02
 ;;9002226.02101,"1198,54569-4202-03 ",.01)
 ;;54569-4202-03
 ;;9002226.02101,"1198,54569-4202-03 ",.02)
 ;;54569-4202-03
 ;;9002226.02101,"1198,54569-4740-00 ",.01)
 ;;54569-4740-00
 ;;9002226.02101,"1198,54569-4740-00 ",.02)
 ;;54569-4740-00
 ;;9002226.02101,"1198,54569-4740-01 ",.01)
 ;;54569-4740-01
 ;;9002226.02101,"1198,54569-4740-01 ",.02)
 ;;54569-4740-01
 ;;9002226.02101,"1198,54569-4786-00 ",.01)
 ;;54569-4786-00
 ;;9002226.02101,"1198,54569-4786-00 ",.02)
 ;;54569-4786-00
 ;;9002226.02101,"1198,54569-4786-01 ",.01)
 ;;54569-4786-01
 ;;9002226.02101,"1198,54569-4786-01 ",.02)
 ;;54569-4786-01
 ;;9002226.02101,"1198,54569-5210-00 ",.01)
 ;;54569-5210-00
 ;;9002226.02101,"1198,54569-5210-00 ",.02)
 ;;54569-5210-00
 ;;9002226.02101,"1198,54569-5210-01 ",.01)
 ;;54569-5210-01
 ;;9002226.02101,"1198,54569-5210-01 ",.02)
 ;;54569-5210-01
 ;;9002226.02101,"1198,54569-5211-00 ",.01)
 ;;54569-5211-00
 ;;9002226.02101,"1198,54569-5211-00 ",.02)
 ;;54569-5211-00
 ;;9002226.02101,"1198,54569-5211-01 ",.01)
 ;;54569-5211-01
 ;;9002226.02101,"1198,54569-5211-01 ",.02)
 ;;54569-5211-01
 ;;9002226.02101,"1198,54569-5252-00 ",.01)
 ;;54569-5252-00
 ;;9002226.02101,"1198,54569-5252-00 ",.02)
 ;;54569-5252-00
 ;;9002226.02101,"1198,54569-5252-01 ",.01)
 ;;54569-5252-01
 ;;9002226.02101,"1198,54569-5252-01 ",.02)
 ;;54569-5252-01
 ;;9002226.02101,"1198,54569-5252-02 ",.01)
 ;;54569-5252-02
 ;;9002226.02101,"1198,54569-5252-02 ",.02)
 ;;54569-5252-02
 ;;9002226.02101,"1198,54569-5353-00 ",.01)
 ;;54569-5353-00
 ;;9002226.02101,"1198,54569-5353-00 ",.02)
 ;;54569-5353-00
 ;;9002226.02101,"1198,54569-5353-02 ",.01)
 ;;54569-5353-02
 ;;9002226.02101,"1198,54569-5353-02 ",.02)
 ;;54569-5353-02
 ;;9002226.02101,"1198,54569-5353-03 ",.01)
 ;;54569-5353-03
 ;;9002226.02101,"1198,54569-5353-03 ",.02)
 ;;54569-5353-03
 ;;9002226.02101,"1198,54569-5353-04 ",.01)
 ;;54569-5353-04
 ;;9002226.02101,"1198,54569-5353-04 ",.02)
 ;;54569-5353-04
 ;;9002226.02101,"1198,54569-5360-00 ",.01)
 ;;54569-5360-00
 ;;9002226.02101,"1198,54569-5360-00 ",.02)
 ;;54569-5360-00
 ;;9002226.02101,"1198,54569-5360-03 ",.01)
 ;;54569-5360-03
 ;;9002226.02101,"1198,54569-5360-03 ",.02)
 ;;54569-5360-03
 ;;9002226.02101,"1198,54569-5373-00 ",.01)
 ;;54569-5373-00
 ;;9002226.02101,"1198,54569-5373-00 ",.02)
 ;;54569-5373-00
 ;;9002226.02101,"1198,54569-5373-02 ",.01)
 ;;54569-5373-02
 ;;9002226.02101,"1198,54569-5373-02 ",.02)
 ;;54569-5373-02
 ;;9002226.02101,"1198,54569-5546-00 ",.01)
 ;;54569-5546-00
 ;;9002226.02101,"1198,54569-5546-00 ",.02)
 ;;54569-5546-00
 ;;9002226.02101,"1198,54569-5546-01 ",.01)
 ;;54569-5546-01
 ;;9002226.02101,"1198,54569-5546-01 ",.02)
 ;;54569-5546-01
 ;;9002226.02101,"1198,54569-5546-02 ",.01)
 ;;54569-5546-02
 ;;9002226.02101,"1198,54569-5546-02 ",.02)
 ;;54569-5546-02
 ;;9002226.02101,"1198,54569-5603-00 ",.01)
 ;;54569-5603-00
 ;;9002226.02101,"1198,54569-5603-00 ",.02)
 ;;54569-5603-00
 ;;9002226.02101,"1198,54569-5618-00 ",.01)
 ;;54569-5618-00
 ;;9002226.02101,"1198,54569-5618-00 ",.02)
 ;;54569-5618-00
 ;;9002226.02101,"1198,54569-5618-01 ",.01)
 ;;54569-5618-01
 ;;9002226.02101,"1198,54569-5618-01 ",.02)
 ;;54569-5618-01
 ;;9002226.02101,"1198,54569-5619-00 ",.01)
 ;;54569-5619-00
 ;;9002226.02101,"1198,54569-5619-00 ",.02)
 ;;54569-5619-00
 ;;9002226.02101,"1198,54569-5619-01 ",.01)
 ;;54569-5619-01
 ;;9002226.02101,"1198,54569-5619-01 ",.02)
 ;;54569-5619-01
 ;;9002226.02101,"1198,54569-5991-00 ",.01)
 ;;54569-5991-00
 ;;9002226.02101,"1198,54569-5991-00 ",.02)
 ;;54569-5991-00
 ;;9002226.02101,"1198,54569-5992-00 ",.01)
 ;;54569-5992-00
 ;;9002226.02101,"1198,54569-5992-00 ",.02)
 ;;54569-5992-00
 ;;9002226.02101,"1198,54569-5993-00 ",.01)
 ;;54569-5993-00
 ;;9002226.02101,"1198,54569-5993-00 ",.02)
 ;;54569-5993-00
 ;;9002226.02101,"1198,54569-5993-01 ",.01)
 ;;54569-5993-01
 ;;9002226.02101,"1198,54569-5993-01 ",.02)
 ;;54569-5993-01
 ;;9002226.02101,"1198,54738-0925-01 ",.01)
 ;;54738-0925-01
 ;;9002226.02101,"1198,54738-0925-01 ",.02)
 ;;54738-0925-01
 ;;9002226.02101,"1198,54738-0925-02 ",.01)
 ;;54738-0925-02
 ;;9002226.02101,"1198,54738-0925-02 ",.02)
 ;;54738-0925-02
 ;;9002226.02101,"1198,54738-0925-03 ",.01)
 ;;54738-0925-03
 ;;9002226.02101,"1198,54738-0925-03 ",.02)
 ;;54738-0925-03
 ;;9002226.02101,"1198,54738-0926-01 ",.01)
 ;;54738-0926-01
 ;;9002226.02101,"1198,54738-0926-01 ",.02)
 ;;54738-0926-01
 ;;9002226.02101,"1198,54738-0926-02 ",.01)
 ;;54738-0926-02
 ;;9002226.02101,"1198,54738-0926-02 ",.02)
 ;;54738-0926-02
 ;;9002226.02101,"1198,54738-0926-03 ",.01)
 ;;54738-0926-03
 ;;9002226.02101,"1198,54738-0926-03 ",.02)
 ;;54738-0926-03
 ;;9002226.02101,"1198,54738-0927-01 ",.01)
 ;;54738-0927-01
 ;;9002226.02101,"1198,54738-0927-01 ",.02)
 ;;54738-0927-01
 ;;9002226.02101,"1198,54738-0927-02 ",.01)
 ;;54738-0927-02
 ;;9002226.02101,"1198,54738-0927-02 ",.02)
 ;;54738-0927-02
 ;;9002226.02101,"1198,54738-0927-03 ",.01)
 ;;54738-0927-03
 ;;9002226.02101,"1198,54738-0927-03 ",.02)
 ;;54738-0927-03
 ;;9002226.02101,"1198,54868-0795-00 ",.01)
 ;;54868-0795-00
 ;;9002226.02101,"1198,54868-0795-00 ",.02)
 ;;54868-0795-00
 ;;9002226.02101,"1198,54868-0830-00 ",.01)
 ;;54868-0830-00
 ;;9002226.02101,"1198,54868-0830-00 ",.02)
 ;;54868-0830-00
 ;;9002226.02101,"1198,54868-0830-01 ",.01)
 ;;54868-0830-01
 ;;9002226.02101,"1198,54868-0830-01 ",.02)
 ;;54868-0830-01
 ;;9002226.02101,"1198,54868-1097-00 ",.01)
 ;;54868-1097-00
 ;;9002226.02101,"1198,54868-1097-00 ",.02)
 ;;54868-1097-00
 ;;9002226.02101,"1198,54868-1097-01 ",.01)
 ;;54868-1097-01
 ;;9002226.02101,"1198,54868-1097-01 ",.02)
 ;;54868-1097-01
 ;;9002226.02101,"1198,54868-2894-00 ",.01)
 ;;54868-2894-00
 ;;9002226.02101,"1198,54868-2894-00 ",.02)
 ;;54868-2894-00
 ;;9002226.02101,"1198,54868-3545-00 ",.01)
 ;;54868-3545-00
 ;;9002226.02101,"1198,54868-3545-00 ",.02)
 ;;54868-3545-00
 ;;9002226.02101,"1198,54868-3545-01 ",.01)
 ;;54868-3545-01
 ;;9002226.02101,"1198,54868-3545-01 ",.02)
 ;;54868-3545-01
 ;;9002226.02101,"1198,54868-3545-02 ",.01)
 ;;54868-3545-02
 ;;9002226.02101,"1198,54868-3545-02 ",.02)
 ;;54868-3545-02
 ;;9002226.02101,"1198,54868-3545-03 ",.01)
 ;;54868-3545-03
 ;;9002226.02101,"1198,54868-3545-03 ",.02)
 ;;54868-3545-03
 ;;9002226.02101,"1198,54868-3546-00 ",.01)
 ;;54868-3546-00
 ;;9002226.02101,"1198,54868-3546-00 ",.02)
 ;;54868-3546-00
 ;;9002226.02101,"1198,54868-3546-01 ",.01)
 ;;54868-3546-01
 ;;9002226.02101,"1198,54868-3546-01 ",.02)
 ;;54868-3546-01
 ;;9002226.02101,"1198,54868-4160-00 ",.01)
 ;;54868-4160-00
 ;;9002226.02101,"1198,54868-4160-00 ",.02)
 ;;54868-4160-00
 ;;9002226.02101,"1198,54868-4160-01 ",.01)
 ;;54868-4160-01
 ;;9002226.02101,"1198,54868-4160-01 ",.02)
 ;;54868-4160-01
 ;;9002226.02101,"1198,54868-4529-00 ",.01)
 ;;54868-4529-00
 ;;9002226.02101,"1198,54868-4529-00 ",.02)
 ;;54868-4529-00
 ;;9002226.02101,"1198,54868-4529-01 ",.01)
 ;;54868-4529-01
 ;;9002226.02101,"1198,54868-4529-01 ",.02)
 ;;54868-4529-01
 ;;9002226.02101,"1198,54868-4529-02 ",.01)
 ;;54868-4529-02
 ;;9002226.02101,"1198,54868-4529-02 ",.02)
 ;;54868-4529-02
 ;;9002226.02101,"1198,54868-4529-03 ",.01)
 ;;54868-4529-03
 ;;9002226.02101,"1198,54868-4529-03 ",.02)
 ;;54868-4529-03
 ;;9002226.02101,"1198,54868-4561-00 ",.01)
 ;;54868-4561-00
 ;;9002226.02101,"1198,54868-4561-00 ",.02)
 ;;54868-4561-00
 ;;9002226.02101,"1198,54868-4561-01 ",.01)
 ;;54868-4561-01
 ;;9002226.02101,"1198,54868-4561-01 ",.02)
 ;;54868-4561-01
 ;;9002226.02101,"1198,54868-4561-02 ",.01)
 ;;54868-4561-02
 ;;9002226.02101,"1198,54868-4561-02 ",.02)
 ;;54868-4561-02
 ;;9002226.02101,"1198,54868-4561-03 ",.01)
 ;;54868-4561-03
 ;;9002226.02101,"1198,54868-4561-03 ",.02)
 ;;54868-4561-03
 ;;9002226.02101,"1198,54868-4561-04 ",.01)
 ;;54868-4561-04
 ;;9002226.02101,"1198,54868-4561-04 ",.02)
 ;;54868-4561-04
 ;;9002226.02101,"1198,54868-4564-00 ",.01)
 ;;54868-4564-00
 ;;9002226.02101,"1198,54868-4564-00 ",.02)
 ;;54868-4564-00