BGP2TI13 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 12, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1201,53002-1527-00 ",.02)
 ;;53002-1527-00
 ;;9002226.02101,"1201,53002-1527-03 ",.01)
 ;;53002-1527-03
 ;;9002226.02101,"1201,53002-1527-03 ",.02)
 ;;53002-1527-03
 ;;9002226.02101,"1201,53002-1528-00 ",.01)
 ;;53002-1528-00
 ;;9002226.02101,"1201,53002-1528-00 ",.02)
 ;;53002-1528-00
 ;;9002226.02101,"1201,53002-1528-03 ",.01)
 ;;53002-1528-03
 ;;9002226.02101,"1201,53002-1528-03 ",.02)
 ;;53002-1528-03
 ;;9002226.02101,"1201,53002-1569-00 ",.01)
 ;;53002-1569-00
 ;;9002226.02101,"1201,53002-1569-00 ",.02)
 ;;53002-1569-00
 ;;9002226.02101,"1201,53002-1569-03 ",.01)
 ;;53002-1569-03
 ;;9002226.02101,"1201,53002-1569-03 ",.02)
 ;;53002-1569-03
 ;;9002226.02101,"1201,53489-0607-01 ",.01)
 ;;53489-0607-01
 ;;9002226.02101,"1201,53489-0607-01 ",.02)
 ;;53489-0607-01
 ;;9002226.02101,"1201,53489-0607-06 ",.01)
 ;;53489-0607-06
 ;;9002226.02101,"1201,53489-0607-06 ",.02)
 ;;53489-0607-06
 ;;9002226.02101,"1201,53489-0608-01 ",.01)
 ;;53489-0608-01
 ;;9002226.02101,"1201,53489-0608-01 ",.02)
 ;;53489-0608-01
 ;;9002226.02101,"1201,53489-0608-06 ",.01)
 ;;53489-0608-06
 ;;9002226.02101,"1201,53489-0608-06 ",.02)
 ;;53489-0608-06
 ;;9002226.02101,"1201,53489-0608-10 ",.01)
 ;;53489-0608-10
 ;;9002226.02101,"1201,53489-0608-10 ",.02)
 ;;53489-0608-10
 ;;9002226.02101,"1201,53489-0609-01 ",.01)
 ;;53489-0609-01
 ;;9002226.02101,"1201,53489-0609-01 ",.02)
 ;;53489-0609-01
 ;;9002226.02101,"1201,53489-0609-06 ",.01)
 ;;53489-0609-06
 ;;9002226.02101,"1201,53489-0609-06 ",.02)
 ;;53489-0609-06
 ;;9002226.02101,"1201,53489-0609-10 ",.01)
 ;;53489-0609-10
 ;;9002226.02101,"1201,53489-0609-10 ",.02)
 ;;53489-0609-10
 ;;9002226.02101,"1201,54458-0925-10 ",.01)
 ;;54458-0925-10
 ;;9002226.02101,"1201,54458-0925-10 ",.02)
 ;;54458-0925-10
 ;;9002226.02101,"1201,54458-0926-10 ",.01)
 ;;54458-0926-10
 ;;9002226.02101,"1201,54458-0926-10 ",.02)
 ;;54458-0926-10
 ;;9002226.02101,"1201,54458-0927-10 ",.01)
 ;;54458-0927-10
 ;;9002226.02101,"1201,54458-0927-10 ",.02)
 ;;54458-0927-10
 ;;9002226.02101,"1201,54458-0928-04 ",.01)
 ;;54458-0928-04
 ;;9002226.02101,"1201,54458-0928-04 ",.02)
 ;;54458-0928-04
 ;;9002226.02101,"1201,54458-0932-10 ",.01)
 ;;54458-0932-10
 ;;9002226.02101,"1201,54458-0932-10 ",.02)
 ;;54458-0932-10
 ;;9002226.02101,"1201,54458-0933-10 ",.01)
 ;;54458-0933-10
 ;;9002226.02101,"1201,54458-0933-10 ",.02)
 ;;54458-0933-10
 ;;9002226.02101,"1201,54458-0934-10 ",.01)
 ;;54458-0934-10
 ;;9002226.02101,"1201,54458-0934-10 ",.02)
 ;;54458-0934-10
 ;;9002226.02101,"1201,54458-0936-10 ",.01)
 ;;54458-0936-10
 ;;9002226.02101,"1201,54458-0936-10 ",.02)
 ;;54458-0936-10
 ;;9002226.02101,"1201,54458-0937-10 ",.01)
 ;;54458-0937-10
 ;;9002226.02101,"1201,54458-0937-10 ",.02)
 ;;54458-0937-10
 ;;9002226.02101,"1201,54458-0938-10 ",.01)
 ;;54458-0938-10
 ;;9002226.02101,"1201,54458-0938-10 ",.02)
 ;;54458-0938-10
 ;;9002226.02101,"1201,54458-0982-10 ",.01)
 ;;54458-0982-10
 ;;9002226.02101,"1201,54458-0982-10 ",.02)
 ;;54458-0982-10
 ;;9002226.02101,"1201,54458-0983-10 ",.01)
 ;;54458-0983-10
 ;;9002226.02101,"1201,54458-0983-10 ",.02)
 ;;54458-0983-10
 ;;9002226.02101,"1201,54458-0984-10 ",.01)
 ;;54458-0984-10
 ;;9002226.02101,"1201,54458-0984-10 ",.02)
 ;;54458-0984-10
 ;;9002226.02101,"1201,54458-0985-07 ",.01)
 ;;54458-0985-07
 ;;9002226.02101,"1201,54458-0985-07 ",.02)
 ;;54458-0985-07
 ;;9002226.02101,"1201,54458-0985-10 ",.01)
 ;;54458-0985-10
 ;;9002226.02101,"1201,54458-0985-10 ",.02)
 ;;54458-0985-10
 ;;9002226.02101,"1201,54458-0986-10 ",.01)
 ;;54458-0986-10
 ;;9002226.02101,"1201,54458-0986-10 ",.02)
 ;;54458-0986-10
 ;;9002226.02101,"1201,54458-0987-09 ",.01)
 ;;54458-0987-09
 ;;9002226.02101,"1201,54458-0987-09 ",.02)
 ;;54458-0987-09
 ;;9002226.02101,"1201,54569-0613-00 ",.01)
 ;;54569-0613-00
 ;;9002226.02101,"1201,54569-0613-00 ",.02)
 ;;54569-0613-00
 ;;9002226.02101,"1201,54569-0613-02 ",.01)
 ;;54569-0613-02
 ;;9002226.02101,"1201,54569-0613-02 ",.02)
 ;;54569-0613-02
 ;;9002226.02101,"1201,54569-3256-00 ",.01)
 ;;54569-3256-00
 ;;9002226.02101,"1201,54569-3256-00 ",.02)
 ;;54569-3256-00
 ;;9002226.02101,"1201,54569-3256-01 ",.01)
 ;;54569-3256-01
 ;;9002226.02101,"1201,54569-3256-01 ",.02)
 ;;54569-3256-01
 ;;9002226.02101,"1201,54569-3821-00 ",.01)
 ;;54569-3821-00
 ;;9002226.02101,"1201,54569-3821-00 ",.02)
 ;;54569-3821-00
 ;;9002226.02101,"1201,54569-3821-01 ",.01)
 ;;54569-3821-01
 ;;9002226.02101,"1201,54569-3821-01 ",.02)
 ;;54569-3821-01
 ;;9002226.02101,"1201,54569-4071-00 ",.01)
 ;;54569-4071-00
 ;;9002226.02101,"1201,54569-4071-00 ",.02)
 ;;54569-4071-00
 ;;9002226.02101,"1201,54569-4180-01 ",.01)
 ;;54569-4180-01
 ;;9002226.02101,"1201,54569-4180-01 ",.02)
 ;;54569-4180-01
 ;;9002226.02101,"1201,54569-4346-01 ",.01)
 ;;54569-4346-01
 ;;9002226.02101,"1201,54569-4346-01 ",.02)
 ;;54569-4346-01
 ;;9002226.02101,"1201,54569-4403-00 ",.01)
 ;;54569-4403-00
 ;;9002226.02101,"1201,54569-4403-00 ",.02)
 ;;54569-4403-00
 ;;9002226.02101,"1201,54569-4404-00 ",.01)
 ;;54569-4404-00
 ;;9002226.02101,"1201,54569-4404-00 ",.02)
 ;;54569-4404-00
 ;;9002226.02101,"1201,54569-4466-00 ",.01)
 ;;54569-4466-00
 ;;9002226.02101,"1201,54569-4466-00 ",.02)
 ;;54569-4466-00
 ;;9002226.02101,"1201,54569-4466-01 ",.01)
 ;;54569-4466-01
 ;;9002226.02101,"1201,54569-4466-01 ",.02)
 ;;54569-4466-01
 ;;9002226.02101,"1201,54569-4466-02 ",.01)
 ;;54569-4466-02
 ;;9002226.02101,"1201,54569-4466-02 ",.02)
 ;;54569-4466-02
 ;;9002226.02101,"1201,54569-4467-00 ",.01)
 ;;54569-4467-00
 ;;9002226.02101,"1201,54569-4467-00 ",.02)
 ;;54569-4467-00
 ;;9002226.02101,"1201,54569-4467-01 ",.01)
 ;;54569-4467-01
 ;;9002226.02101,"1201,54569-4467-01 ",.02)
 ;;54569-4467-01
 ;;9002226.02101,"1201,54569-4584-00 ",.01)
 ;;54569-4584-00
 ;;9002226.02101,"1201,54569-4584-00 ",.02)
 ;;54569-4584-00
 ;;9002226.02101,"1201,54569-4587-00 ",.01)
 ;;54569-4587-00
 ;;9002226.02101,"1201,54569-4587-00 ",.02)
 ;;54569-4587-00
 ;;9002226.02101,"1201,54569-4587-01 ",.01)
 ;;54569-4587-01
 ;;9002226.02101,"1201,54569-4587-01 ",.02)
 ;;54569-4587-01
 ;;9002226.02101,"1201,54569-4610-00 ",.01)
 ;;54569-4610-00
 ;;9002226.02101,"1201,54569-4610-00 ",.02)
 ;;54569-4610-00
 ;;9002226.02101,"1201,54569-4761-00 ",.01)
 ;;54569-4761-00
 ;;9002226.02101,"1201,54569-4761-00 ",.02)
 ;;54569-4761-00
 ;;9002226.02101,"1201,54569-4761-01 ",.01)
 ;;54569-4761-01
 ;;9002226.02101,"1201,54569-4761-01 ",.02)
 ;;54569-4761-01
 ;;9002226.02101,"1201,54569-5345-00 ",.01)
 ;;54569-5345-00
 ;;9002226.02101,"1201,54569-5345-00 ",.02)
 ;;54569-5345-00
 ;;9002226.02101,"1201,54569-5345-01 ",.01)
 ;;54569-5345-01
 ;;9002226.02101,"1201,54569-5345-01 ",.02)
 ;;54569-5345-01
 ;;9002226.02101,"1201,54569-5346-00 ",.01)
 ;;54569-5346-00
 ;;9002226.02101,"1201,54569-5346-00 ",.02)
 ;;54569-5346-00
 ;;9002226.02101,"1201,54569-5346-02 ",.01)
 ;;54569-5346-02
 ;;9002226.02101,"1201,54569-5346-02 ",.02)
 ;;54569-5346-02
 ;;9002226.02101,"1201,54569-5347-00 ",.01)
 ;;54569-5347-00
 ;;9002226.02101,"1201,54569-5347-00 ",.02)
 ;;54569-5347-00
 ;;9002226.02101,"1201,54569-5347-02 ",.01)
 ;;54569-5347-02
 ;;9002226.02101,"1201,54569-5347-02 ",.02)
 ;;54569-5347-02
 ;;9002226.02101,"1201,54569-5382-00 ",.01)
 ;;54569-5382-00
 ;;9002226.02101,"1201,54569-5382-00 ",.02)
 ;;54569-5382-00
 ;;9002226.02101,"1201,54569-5498-00 ",.01)
 ;;54569-5498-00
 ;;9002226.02101,"1201,54569-5498-00 ",.02)
 ;;54569-5498-00
 ;;9002226.02101,"1201,54569-5600-00 ",.01)
 ;;54569-5600-00
 ;;9002226.02101,"1201,54569-5600-00 ",.02)
 ;;54569-5600-00
 ;;9002226.02101,"1201,54569-5600-01 ",.01)
 ;;54569-5600-01
 ;;9002226.02101,"1201,54569-5600-01 ",.02)
 ;;54569-5600-01
 ;;9002226.02101,"1201,54569-5640-00 ",.01)
 ;;54569-5640-00
 ;;9002226.02101,"1201,54569-5640-00 ",.02)
 ;;54569-5640-00
 ;;9002226.02101,"1201,54569-5648-00 ",.01)
 ;;54569-5648-00
 ;;9002226.02101,"1201,54569-5648-00 ",.02)
 ;;54569-5648-00
 ;;9002226.02101,"1201,54569-5672-00 ",.01)
 ;;54569-5672-00
 ;;9002226.02101,"1201,54569-5672-00 ",.02)
 ;;54569-5672-00
 ;;9002226.02101,"1201,54569-5672-02 ",.01)
 ;;54569-5672-02
 ;;9002226.02101,"1201,54569-5672-02 ",.02)
 ;;54569-5672-02
 ;;9002226.02101,"1201,54569-5704-00 ",.01)
 ;;54569-5704-00
 ;;9002226.02101,"1201,54569-5704-00 ",.02)
 ;;54569-5704-00
 ;;9002226.02101,"1201,54569-5746-00 ",.01)
 ;;54569-5746-00
 ;;9002226.02101,"1201,54569-5746-00 ",.02)
 ;;54569-5746-00
 ;;9002226.02101,"1201,54569-5766-00 ",.01)
 ;;54569-5766-00
 ;;9002226.02101,"1201,54569-5766-00 ",.02)
 ;;54569-5766-00
 ;;9002226.02101,"1201,54569-5768-00 ",.01)
 ;;54569-5768-00
 ;;9002226.02101,"1201,54569-5768-00 ",.02)
 ;;54569-5768-00
 ;;9002226.02101,"1201,54569-5793-00 ",.01)
 ;;54569-5793-00
 ;;9002226.02101,"1201,54569-5793-00 ",.02)
 ;;54569-5793-00
 ;;9002226.02101,"1201,54569-5793-01 ",.01)
 ;;54569-5793-01
 ;;9002226.02101,"1201,54569-5793-01 ",.02)
 ;;54569-5793-01
 ;;9002226.02101,"1201,54569-5794-00 ",.01)
 ;;54569-5794-00
 ;;9002226.02101,"1201,54569-5794-00 ",.02)
 ;;54569-5794-00
 ;;9002226.02101,"1201,54569-5794-01 ",.01)
 ;;54569-5794-01
 ;;9002226.02101,"1201,54569-5794-01 ",.02)
 ;;54569-5794-01
 ;;9002226.02101,"1201,54569-5833-00 ",.01)
 ;;54569-5833-00
 ;;9002226.02101,"1201,54569-5833-00 ",.02)
 ;;54569-5833-00
 ;;9002226.02101,"1201,54569-5833-01 ",.01)
 ;;54569-5833-01
 ;;9002226.02101,"1201,54569-5833-01 ",.02)
 ;;54569-5833-01
 ;;9002226.02101,"1201,54569-5833-02 ",.01)
 ;;54569-5833-02
 ;;9002226.02101,"1201,54569-5833-02 ",.02)
 ;;54569-5833-02
 ;;9002226.02101,"1201,54569-5833-03 ",.01)
 ;;54569-5833-03
 ;;9002226.02101,"1201,54569-5833-03 ",.02)
 ;;54569-5833-03
 ;;9002226.02101,"1201,54569-5834-00 ",.01)
 ;;54569-5834-00
 ;;9002226.02101,"1201,54569-5834-00 ",.02)
 ;;54569-5834-00
 ;;9002226.02101,"1201,54569-5834-01 ",.01)
 ;;54569-5834-01
 ;;9002226.02101,"1201,54569-5834-01 ",.02)
 ;;54569-5834-01
 ;;9002226.02101,"1201,54569-5834-02 ",.01)
 ;;54569-5834-02
 ;;9002226.02101,"1201,54569-5834-02 ",.02)
 ;;54569-5834-02
 ;;9002226.02101,"1201,54569-5834-03 ",.01)
 ;;54569-5834-03
 ;;9002226.02101,"1201,54569-5834-03 ",.02)
 ;;54569-5834-03
 ;;9002226.02101,"1201,54569-5834-04 ",.01)
 ;;54569-5834-04
 ;;9002226.02101,"1201,54569-5834-04 ",.02)
 ;;54569-5834-04
 ;;9002226.02101,"1201,54569-5881-00 ",.01)
 ;;54569-5881-00
 ;;9002226.02101,"1201,54569-5881-00 ",.02)
 ;;54569-5881-00
 ;;9002226.02101,"1201,54569-5951-00 ",.01)
 ;;54569-5951-00
 ;;9002226.02101,"1201,54569-5951-00 ",.02)
 ;;54569-5951-00
 ;;9002226.02101,"1201,54569-6054-01 ",.01)
 ;;54569-6054-01
 ;;9002226.02101,"1201,54569-6054-01 ",.02)
 ;;54569-6054-01
 ;;9002226.02101,"1201,54569-6099-00 ",.01)
 ;;54569-6099-00
 ;;9002226.02101,"1201,54569-6099-00 ",.02)
 ;;54569-6099-00
 ;;9002226.02101,"1201,54569-6113-00 ",.01)
 ;;54569-6113-00
 ;;9002226.02101,"1201,54569-6113-00 ",.02)
 ;;54569-6113-00
 ;;9002226.02101,"1201,54569-6113-01 ",.01)
 ;;54569-6113-01
 ;;9002226.02101,"1201,54569-6113-01 ",.02)
 ;;54569-6113-01
 ;;9002226.02101,"1201,54569-6282-00 ",.01)
 ;;54569-6282-00
 ;;9002226.02101,"1201,54569-6282-00 ",.02)
 ;;54569-6282-00
 ;;9002226.02101,"1201,54569-6282-01 ",.01)
 ;;54569-6282-01
 ;;9002226.02101,"1201,54569-6282-01 ",.02)
 ;;54569-6282-01
 ;;9002226.02101,"1201,54569-6283-00 ",.01)
 ;;54569-6283-00
 ;;9002226.02101,"1201,54569-6283-00 ",.02)
 ;;54569-6283-00
 ;;9002226.02101,"1201,54569-6283-01 ",.01)
 ;;54569-6283-01
 ;;9002226.02101,"1201,54569-6283-01 ",.02)
 ;;54569-6283-01
 ;;9002226.02101,"1201,54569-6284-00 ",.01)
 ;;54569-6284-00
 ;;9002226.02101,"1201,54569-6284-00 ",.02)
 ;;54569-6284-00
 ;;9002226.02101,"1201,54569-6284-01 ",.01)
 ;;54569-6284-01
 ;;9002226.02101,"1201,54569-6284-01 ",.02)
 ;;54569-6284-01
 ;;9002226.02101,"1201,54569-6285-00 ",.01)
 ;;54569-6285-00
 ;;9002226.02101,"1201,54569-6285-00 ",.02)
 ;;54569-6285-00
 ;;9002226.02101,"1201,54569-6285-01 ",.01)
 ;;54569-6285-01
 ;;9002226.02101,"1201,54569-6285-01 ",.02)
 ;;54569-6285-01
 ;;9002226.02101,"1201,54868-0686-01 ",.01)
 ;;54868-0686-01
 ;;9002226.02101,"1201,54868-0686-01 ",.02)
 ;;54868-0686-01
 ;;9002226.02101,"1201,54868-0686-02 ",.01)
 ;;54868-0686-02
 ;;9002226.02101,"1201,54868-0686-02 ",.02)
 ;;54868-0686-02
 ;;9002226.02101,"1201,54868-0686-03 ",.01)
 ;;54868-0686-03
 ;;9002226.02101,"1201,54868-0686-03 ",.02)
 ;;54868-0686-03
 ;;9002226.02101,"1201,54868-0686-04 ",.01)
 ;;54868-0686-04
 ;;9002226.02101,"1201,54868-0686-04 ",.02)
 ;;54868-0686-04
 ;;9002226.02101,"1201,54868-1087-00 ",.01)
 ;;54868-1087-00
 ;;9002226.02101,"1201,54868-1087-00 ",.02)
 ;;54868-1087-00
 ;;9002226.02101,"1201,54868-1087-01 ",.01)
 ;;54868-1087-01
 ;;9002226.02101,"1201,54868-1087-01 ",.02)
 ;;54868-1087-01
 ;;9002226.02101,"1201,54868-1207-00 ",.01)
 ;;54868-1207-00
 ;;9002226.02101,"1201,54868-1207-00 ",.02)
 ;;54868-1207-00
 ;;9002226.02101,"1201,54868-1207-01 ",.01)
 ;;54868-1207-01
 ;;9002226.02101,"1201,54868-1207-01 ",.02)
 ;;54868-1207-01
 ;;9002226.02101,"1201,54868-1890-00 ",.01)
 ;;54868-1890-00
 ;;9002226.02101,"1201,54868-1890-00 ",.02)
 ;;54868-1890-00
 ;;9002226.02101,"1201,54868-1890-01 ",.01)
 ;;54868-1890-01
 ;;9002226.02101,"1201,54868-1890-01 ",.02)
 ;;54868-1890-01
 ;;9002226.02101,"1201,54868-1968-00 ",.01)
 ;;54868-1968-00
 ;;9002226.02101,"1201,54868-1968-00 ",.02)
 ;;54868-1968-00
 ;;9002226.02101,"1201,54868-2287-01 ",.01)
 ;;54868-2287-01
 ;;9002226.02101,"1201,54868-2287-01 ",.02)
 ;;54868-2287-01