BGP7LXGK ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 28, 2006 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"624,51432-0645-20 ",.02)
 ;;51432-0645-20
 ;;9002226.02101,"624,51432-0751-10 ",.01)
 ;;51432-0751-10
 ;;9002226.02101,"624,51432-0751-10 ",.02)
 ;;51432-0751-10
 ;;9002226.02101,"624,51432-0839-03 ",.01)
 ;;51432-0839-03
 ;;9002226.02101,"624,51432-0839-03 ",.02)
 ;;51432-0839-03
 ;;9002226.02101,"624,51432-0921-03 ",.01)
 ;;51432-0921-03
 ;;9002226.02101,"624,51432-0921-03 ",.02)
 ;;51432-0921-03
 ;;9002226.02101,"624,51432-0921-05 ",.01)
 ;;51432-0921-05
 ;;9002226.02101,"624,51432-0921-05 ",.02)
 ;;51432-0921-05
 ;;9002226.02101,"624,51432-0922-03 ",.01)
 ;;51432-0922-03
 ;;9002226.02101,"624,51432-0922-03 ",.02)
 ;;51432-0922-03
 ;;9002226.02101,"624,51432-0956-03 ",.01)
 ;;51432-0956-03
 ;;9002226.02101,"624,51432-0956-03 ",.02)
 ;;51432-0956-03
 ;;9002226.02101,"624,51432-0956-06 ",.01)
 ;;51432-0956-06
 ;;9002226.02101,"624,51432-0956-06 ",.02)
 ;;51432-0956-06
 ;;9002226.02101,"624,51655-0801-24 ",.01)
 ;;51655-0801-24
 ;;9002226.02101,"624,51655-0801-24 ",.02)
 ;;51655-0801-24
 ;;9002226.02101,"624,51655-0801-25 ",.01)
 ;;51655-0801-25
 ;;9002226.02101,"624,51655-0801-25 ",.02)
 ;;51655-0801-25
 ;;9002226.02101,"624,51655-0801-26 ",.01)
 ;;51655-0801-26
 ;;9002226.02101,"624,51655-0801-26 ",.02)
 ;;51655-0801-26
 ;;9002226.02101,"624,51655-0801-82 ",.01)
 ;;51655-0801-82
 ;;9002226.02101,"624,51655-0801-82 ",.02)
 ;;51655-0801-82
 ;;9002226.02101,"624,51655-0833-24 ",.01)
 ;;51655-0833-24
 ;;9002226.02101,"624,51655-0833-24 ",.02)
 ;;51655-0833-24
 ;;9002226.02101,"624,51655-0833-25 ",.01)
 ;;51655-0833-25
 ;;9002226.02101,"624,51655-0833-25 ",.02)
 ;;51655-0833-25
 ;;9002226.02101,"624,51655-0833-26 ",.01)
 ;;51655-0833-26
 ;;9002226.02101,"624,51655-0833-26 ",.02)
 ;;51655-0833-26
 ;;9002226.02101,"624,51655-0833-82 ",.01)
 ;;51655-0833-82
 ;;9002226.02101,"624,51655-0833-82 ",.02)
 ;;51655-0833-82
 ;;9002226.02101,"624,51655-0848-83 ",.01)
 ;;51655-0848-83
 ;;9002226.02101,"624,51655-0848-83 ",.02)
 ;;51655-0848-83
 ;;9002226.02101,"624,51655-0848-92 ",.01)
 ;;51655-0848-92
 ;;9002226.02101,"624,51655-0848-92 ",.02)
 ;;51655-0848-92
 ;;9002226.02101,"624,51655-0848-93 ",.01)
 ;;51655-0848-93
 ;;9002226.02101,"624,51655-0848-93 ",.02)
 ;;51655-0848-93
 ;;9002226.02101,"624,51991-0325-01 ",.01)
 ;;51991-0325-01
 ;;9002226.02101,"624,51991-0325-01 ",.02)
 ;;51991-0325-01
 ;;9002226.02101,"624,51991-0335-15 ",.01)
 ;;51991-0335-15
 ;;9002226.02101,"624,51991-0335-15 ",.02)
 ;;51991-0335-15
 ;;9002226.02101,"624,51991-0345-01 ",.01)
 ;;51991-0345-01
 ;;9002226.02101,"624,51991-0345-01 ",.02)
 ;;51991-0345-01
 ;;9002226.02101,"624,51991-0715-01 ",.01)
 ;;51991-0715-01
 ;;9002226.02101,"624,51991-0715-01 ",.02)
 ;;51991-0715-01
 ;;9002226.02101,"624,52041-0015-15 ",.01)
 ;;52041-0015-15
 ;;9002226.02101,"624,52041-0015-15 ",.02)
 ;;52041-0015-15
 ;;9002226.02101,"624,52544-0785-01 ",.01)
 ;;52544-0785-01
 ;;9002226.02101,"624,52544-0785-01 ",.02)
 ;;52544-0785-01
 ;;9002226.02101,"624,52544-0785-05 ",.01)
 ;;52544-0785-05
 ;;9002226.02101,"624,52544-0785-05 ",.02)
 ;;52544-0785-05
 ;;9002226.02101,"624,52544-0786-01 ",.01)
 ;;52544-0786-01
 ;;9002226.02101,"624,52544-0786-01 ",.02)
 ;;52544-0786-01
 ;;9002226.02101,"624,52544-0786-05 ",.01)
 ;;52544-0786-05
 ;;9002226.02101,"624,52544-0786-05 ",.02)
 ;;52544-0786-05
 ;;9002226.02101,"624,52544-0786-10 ",.01)
 ;;52544-0786-10
 ;;9002226.02101,"624,52544-0786-10 ",.02)
 ;;52544-0786-10
 ;;9002226.02101,"624,52544-0787-01 ",.01)
 ;;52544-0787-01
 ;;9002226.02101,"624,52544-0787-01 ",.02)
 ;;52544-0787-01
 ;;9002226.02101,"624,52544-0787-05 ",.01)
 ;;52544-0787-05
 ;;9002226.02101,"624,52544-0787-05 ",.02)
 ;;52544-0787-05
 ;;9002226.02101,"624,52555-0092-01 ",.01)
 ;;52555-0092-01
 ;;9002226.02101,"624,52555-0092-01 ",.02)
 ;;52555-0092-01
 ;;9002226.02101,"624,52555-0429-01 ",.01)
 ;;52555-0429-01
 ;;9002226.02101,"624,52555-0429-01 ",.02)
 ;;52555-0429-01
 ;;9002226.02101,"624,52604-6790-08 ",.01)
 ;;52604-6790-08
 ;;9002226.02101,"624,52604-6790-08 ",.02)
 ;;52604-6790-08
 ;;9002226.02101,"624,52604-6792-02 ",.01)
 ;;52604-6792-02
 ;;9002226.02101,"624,52604-6792-02 ",.02)
 ;;52604-6792-02
 ;;9002226.02101,"624,52765-1377-00 ",.01)
 ;;52765-1377-00
 ;;9002226.02101,"624,52765-1377-00 ",.02)
 ;;52765-1377-00
 ;;9002226.02101,"624,52959-0047-03 ",.01)
 ;;52959-0047-03
 ;;9002226.02101,"624,52959-0047-03 ",.02)
 ;;52959-0047-03
 ;;9002226.02101,"624,52959-0047-05 ",.01)
 ;;52959-0047-05
 ;;9002226.02101,"624,52959-0047-05 ",.02)
 ;;52959-0047-05
 ;;9002226.02101,"624,52959-0047-06 ",.01)
 ;;52959-0047-06
 ;;9002226.02101,"624,52959-0047-06 ",.02)
 ;;52959-0047-06
 ;;9002226.02101,"624,52959-0047-10 ",.01)
 ;;52959-0047-10
 ;;9002226.02101,"624,52959-0047-10 ",.02)
 ;;52959-0047-10
 ;;9002226.02101,"624,52959-0047-12 ",.01)
 ;;52959-0047-12
 ;;9002226.02101,"624,52959-0047-12 ",.02)
 ;;52959-0047-12
 ;;9002226.02101,"624,52959-0047-15 ",.01)
 ;;52959-0047-15
 ;;9002226.02101,"624,52959-0047-15 ",.02)
 ;;52959-0047-15
 ;;9002226.02101,"624,52959-0047-20 ",.01)
 ;;52959-0047-20
 ;;9002226.02101,"624,52959-0047-20 ",.02)
 ;;52959-0047-20
 ;;9002226.02101,"624,52959-0047-21 ",.01)
 ;;52959-0047-21
 ;;9002226.02101,"624,52959-0047-21 ",.02)
 ;;52959-0047-21
 ;;9002226.02101,"624,52959-0047-25 ",.01)
 ;;52959-0047-25
 ;;9002226.02101,"624,52959-0047-25 ",.02)
 ;;52959-0047-25
 ;;9002226.02101,"624,52959-0047-30 ",.01)
 ;;52959-0047-30
 ;;9002226.02101,"624,52959-0047-30 ",.02)
 ;;52959-0047-30
 ;;9002226.02101,"624,52959-0047-45 ",.01)
 ;;52959-0047-45
 ;;9002226.02101,"624,52959-0047-45 ",.02)
 ;;52959-0047-45
 ;;9002226.02101,"624,52959-0047-50 ",.01)
 ;;52959-0047-50
 ;;9002226.02101,"624,52959-0047-50 ",.02)
 ;;52959-0047-50
 ;;9002226.02101,"624,52959-0047-60 ",.01)
 ;;52959-0047-60
 ;;9002226.02101,"624,52959-0047-60 ",.02)
 ;;52959-0047-60
 ;;9002226.02101,"624,52959-0175-02 ",.01)
 ;;52959-0175-02
 ;;9002226.02101,"624,52959-0175-02 ",.02)
 ;;52959-0175-02
 ;;9002226.02101,"624,52959-0175-30 ",.01)
 ;;52959-0175-30
 ;;9002226.02101,"624,52959-0175-30 ",.02)
 ;;52959-0175-30
 ;;9002226.02101,"624,52959-0274-30 ",.01)
 ;;52959-0274-30
 ;;9002226.02101,"624,52959-0274-30 ",.02)
 ;;52959-0274-30
 ;;9002226.02101,"624,52959-0295-30 ",.01)
 ;;52959-0295-30
 ;;9002226.02101,"624,52959-0295-30 ",.02)
 ;;52959-0295-30
 ;;9002226.02101,"624,52959-0295-50 ",.01)
 ;;52959-0295-50
 ;;9002226.02101,"624,52959-0295-50 ",.02)
 ;;52959-0295-50
 ;;9002226.02101,"624,52959-0306-20 ",.01)
 ;;52959-0306-20
 ;;9002226.02101,"624,52959-0306-20 ",.02)
 ;;52959-0306-20
 ;;9002226.02101,"624,52959-0306-30 ",.01)
 ;;52959-0306-30
 ;;9002226.02101,"624,52959-0306-30 ",.02)
 ;;52959-0306-30
 ;;9002226.02101,"624,52959-0369-00 ",.01)
 ;;52959-0369-00
 ;;9002226.02101,"624,52959-0369-00 ",.02)
 ;;52959-0369-00
 ;;9002226.02101,"624,52959-0369-06 ",.01)
 ;;52959-0369-06
 ;;9002226.02101,"624,52959-0369-06 ",.02)
 ;;52959-0369-06
 ;;9002226.02101,"624,52959-0369-30 ",.01)
 ;;52959-0369-30
 ;;9002226.02101,"624,52959-0369-30 ",.02)
 ;;52959-0369-30
 ;;9002226.02101,"624,52959-0369-40 ",.01)
 ;;52959-0369-40
 ;;9002226.02101,"624,52959-0369-40 ",.02)
 ;;52959-0369-40
 ;;9002226.02101,"624,52959-1378-03 ",.01)
 ;;52959-1378-03
 ;;9002226.02101,"624,52959-1378-03 ",.02)
 ;;52959-1378-03
 ;;9002226.02101,"624,53020-0103-10 ",.01)
 ;;53020-0103-10
 ;;9002226.02101,"624,53020-0103-10 ",.02)
 ;;53020-0103-10
 ;;9002226.02101,"624,53489-0232-01 ",.01)
 ;;53489-0232-01
 ;;9002226.02101,"624,53489-0232-01 ",.02)
 ;;53489-0232-01
 ;;9002226.02101,"624,53489-0239-01 ",.01)
 ;;53489-0239-01
 ;;9002226.02101,"624,53489-0239-01 ",.02)
 ;;53489-0239-01
 ;;9002226.02101,"624,53489-0240-01 ",.01)
 ;;53489-0240-01
 ;;9002226.02101,"624,53489-0240-01 ",.02)
 ;;53489-0240-01
 ;;9002226.02101,"624,53489-0241-01 ",.01)
 ;;53489-0241-01
 ;;9002226.02101,"624,53489-0241-01 ",.02)
 ;;53489-0241-01
 ;;9002226.02101,"624,53633-0097-01 ",.01)
 ;;53633-0097-01
 ;;9002226.02101,"624,53633-0097-01 ",.02)
 ;;53633-0097-01
 ;;9002226.02101,"624,53633-0097-10 ",.01)
 ;;53633-0097-10
 ;;9002226.02101,"624,53633-0097-10 ",.02)
 ;;53633-0097-10
 ;;9002226.02101,"624,53633-0097-11 ",.01)
 ;;53633-0097-11
 ;;9002226.02101,"624,53633-0097-11 ",.02)
 ;;53633-0097-11
 ;;9002226.02101,"624,53633-0101-01 ",.01)
 ;;53633-0101-01
 ;;9002226.02101,"624,53633-0101-01 ",.02)
 ;;53633-0101-01
 ;;9002226.02101,"624,53633-0101-10 ",.01)
 ;;53633-0101-10
 ;;9002226.02101,"624,53633-0101-10 ",.02)
 ;;53633-0101-10
 ;;9002226.02101,"624,53633-0101-11 ",.01)
 ;;53633-0101-11
 ;;9002226.02101,"624,53633-0101-11 ",.02)
 ;;53633-0101-11
 ;;9002226.02101,"624,54274-0131-10 ",.01)
 ;;54274-0131-10
 ;;9002226.02101,"624,54274-0131-10 ",.02)
 ;;54274-0131-10
 ;;9002226.02101,"624,54274-0157-50 ",.01)
 ;;54274-0157-50
 ;;9002226.02101,"624,54274-0157-50 ",.02)
 ;;54274-0157-50
 ;;9002226.02101,"624,54274-0158-50 ",.01)
 ;;54274-0158-50
 ;;9002226.02101,"624,54274-0158-50 ",.02)
 ;;54274-0158-50
 ;;9002226.02101,"624,54274-0267-50 ",.01)
 ;;54274-0267-50
 ;;9002226.02101,"624,54274-0267-50 ",.02)
 ;;54274-0267-50
 ;;9002226.02101,"624,54274-0268-50 ",.01)
 ;;54274-0268-50
 ;;9002226.02101,"624,54274-0268-50 ",.02)
 ;;54274-0268-50
 ;;9002226.02101,"624,54274-0269-50 ",.01)
 ;;54274-0269-50
 ;;9002226.02101,"624,54274-0269-50 ",.02)
 ;;54274-0269-50
 ;;9002226.02101,"624,54274-0289-10 ",.01)
 ;;54274-0289-10
 ;;9002226.02101,"624,54274-0289-10 ",.02)
 ;;54274-0289-10
 ;;9002226.02101,"624,54274-0358-50 ",.01)
 ;;54274-0358-50
 ;;9002226.02101,"624,54274-0358-50 ",.02)
 ;;54274-0358-50
 ;;9002226.02101,"624,54274-0412-10 ",.01)
 ;;54274-0412-10
 ;;9002226.02101,"624,54274-0412-10 ",.02)
 ;;54274-0412-10
 ;;9002226.02101,"624,54274-0412-50 ",.01)
 ;;54274-0412-50
 ;;9002226.02101,"624,54274-0412-50 ",.02)
 ;;54274-0412-50
 ;;9002226.02101,"624,54274-0939-10 ",.01)
 ;;54274-0939-10
 ;;9002226.02101,"624,54274-0939-10 ",.02)
 ;;54274-0939-10
 ;;9002226.02101,"624,54348-0021-30 ",.01)
 ;;54348-0021-30
 ;;9002226.02101,"624,54348-0021-30 ",.02)
 ;;54348-0021-30
 ;;9002226.02101,"624,54348-0022-30 ",.01)
 ;;54348-0022-30
 ;;9002226.02101,"624,54348-0022-30 ",.02)
 ;;54348-0022-30
 ;;9002226.02101,"624,54569-0173-00 ",.01)
 ;;54569-0173-00
 ;;9002226.02101,"624,54569-0173-00 ",.02)
 ;;54569-0173-00
 ;;9002226.02101,"624,54569-0427-00 ",.01)
 ;;54569-0427-00
 ;;9002226.02101,"624,54569-0427-00 ",.02)
 ;;54569-0427-00
 ;;9002226.02101,"624,54569-0428-03 ",.01)
 ;;54569-0428-03
 ;;9002226.02101,"624,54569-0428-03 ",.02)
 ;;54569-0428-03
 ;;9002226.02101,"624,54569-0936-00 ",.01)
 ;;54569-0936-00
 ;;9002226.02101,"624,54569-0936-00 ",.02)
 ;;54569-0936-00
 ;;9002226.02101,"624,54569-0936-02 ",.01)
 ;;54569-0936-02
 ;;9002226.02101,"624,54569-0936-02 ",.02)
 ;;54569-0936-02
 ;;9002226.02101,"624,54569-0936-03 ",.01)
 ;;54569-0936-03
 ;;9002226.02101,"624,54569-0936-03 ",.02)
 ;;54569-0936-03
 ;;9002226.02101,"624,54569-0936-04 ",.01)
 ;;54569-0936-04
 ;;9002226.02101,"624,54569-0936-04 ",.02)
 ;;54569-0936-04
 ;;9002226.02101,"624,54569-0936-05 ",.01)
 ;;54569-0936-05
 ;;9002226.02101,"624,54569-0936-05 ",.02)
 ;;54569-0936-05
 ;;9002226.02101,"624,54569-0936-06 ",.01)
 ;;54569-0936-06
 ;;9002226.02101,"624,54569-0936-06 ",.02)
 ;;54569-0936-06
 ;;9002226.02101,"624,54569-0936-07 ",.01)
 ;;54569-0936-07
 ;;9002226.02101,"624,54569-0936-07 ",.02)
 ;;54569-0936-07
 ;;9002226.02101,"624,54569-0936-08 ",.01)
 ;;54569-0936-08
 ;;9002226.02101,"624,54569-0936-08 ",.02)
 ;;54569-0936-08
 ;;9002226.02101,"624,54569-0936-09 ",.01)
 ;;54569-0936-09
 ;;9002226.02101,"624,54569-0936-09 ",.02)
 ;;54569-0936-09
 ;;9002226.02101,"624,54569-0937-00 ",.01)
 ;;54569-0937-00
 ;;9002226.02101,"624,54569-0937-00 ",.02)
 ;;54569-0937-00
 ;;9002226.02101,"624,54569-0938-04 ",.01)
 ;;54569-0938-04
 ;;9002226.02101,"624,54569-0938-04 ",.02)
 ;;54569-0938-04
 ;;9002226.02101,"624,54569-0947-00 ",.01)
 ;;54569-0947-00
 ;;9002226.02101,"624,54569-0947-00 ",.02)
 ;;54569-0947-00
 ;;9002226.02101,"624,54569-0947-03 ",.01)
 ;;54569-0947-03
 ;;9002226.02101,"624,54569-0947-03 ",.02)
 ;;54569-0947-03
 ;;9002226.02101,"624,54569-0948-00 ",.01)
 ;;54569-0948-00
 ;;9002226.02101,"624,54569-0948-00 ",.02)
 ;;54569-0948-00
 ;;9002226.02101,"624,54569-0949-00 ",.01)
 ;;54569-0949-00
 ;;9002226.02101,"624,54569-0949-00 ",.02)
 ;;54569-0949-00
 ;;9002226.02101,"624,54569-0949-01 ",.01)
 ;;54569-0949-01
 ;;9002226.02101,"624,54569-0949-01 ",.02)
 ;;54569-0949-01
 ;;9002226.02101,"624,54569-0949-02 ",.01)
 ;;54569-0949-02
 ;;9002226.02101,"624,54569-0949-02 ",.02)
 ;;54569-0949-02
 ;;9002226.02101,"624,54569-0949-03 ",.01)
 ;;54569-0949-03
 ;;9002226.02101,"624,54569-0949-03 ",.02)
 ;;54569-0949-03
 ;;9002226.02101,"624,54569-0949-04 ",.01)
 ;;54569-0949-04
 ;;9002226.02101,"624,54569-0949-04 ",.02)
 ;;54569-0949-04
 ;;9002226.02101,"624,54569-0949-05 ",.01)
 ;;54569-0949-05
 ;;9002226.02101,"624,54569-0949-05 ",.02)
 ;;54569-0949-05
 ;;9002226.02101,"624,54569-0949-06 ",.01)
 ;;54569-0949-06
 ;;9002226.02101,"624,54569-0949-06 ",.02)
 ;;54569-0949-06
 ;;9002226.02101,"624,54569-0949-07 ",.01)
 ;;54569-0949-07
 ;;9002226.02101,"624,54569-0949-07 ",.02)
 ;;54569-0949-07
 ;;9002226.02101,"624,54569-1413-00 ",.01)
 ;;54569-1413-00
 ;;9002226.02101,"624,54569-1413-00 ",.02)
 ;;54569-1413-00
 ;;9002226.02101,"624,54569-2376-02 ",.01)
 ;;54569-2376-02