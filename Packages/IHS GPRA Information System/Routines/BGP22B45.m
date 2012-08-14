BGP22B45 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 21, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1196,66336-0810-30 ",.01)
 ;;66336-0810-30
 ;;9002226.02101,"1196,66336-0810-30 ",.02)
 ;;66336-0810-30
 ;;9002226.02101,"1196,66336-0810-90 ",.01)
 ;;66336-0810-90
 ;;9002226.02101,"1196,66336-0810-90 ",.02)
 ;;66336-0810-90
 ;;9002226.02101,"1196,66336-0867-30 ",.01)
 ;;66336-0867-30
 ;;9002226.02101,"1196,66336-0867-30 ",.02)
 ;;66336-0867-30
 ;;9002226.02101,"1196,66336-0867-90 ",.01)
 ;;66336-0867-90
 ;;9002226.02101,"1196,66336-0867-90 ",.02)
 ;;66336-0867-90
 ;;9002226.02101,"1196,66336-0946-30 ",.01)
 ;;66336-0946-30
 ;;9002226.02101,"1196,66336-0946-30 ",.02)
 ;;66336-0946-30
 ;;9002226.02101,"1196,66336-0946-60 ",.01)
 ;;66336-0946-60
 ;;9002226.02101,"1196,66336-0946-60 ",.02)
 ;;66336-0946-60
 ;;9002226.02101,"1196,66336-0946-90 ",.01)
 ;;66336-0946-90
 ;;9002226.02101,"1196,66336-0946-90 ",.02)
 ;;66336-0946-90
 ;;9002226.02101,"1196,66336-0972-30 ",.01)
 ;;66336-0972-30
 ;;9002226.02101,"1196,66336-0972-30 ",.02)
 ;;66336-0972-30
 ;;9002226.02101,"1196,66336-0972-90 ",.01)
 ;;66336-0972-90
 ;;9002226.02101,"1196,66336-0972-90 ",.02)
 ;;66336-0972-90
 ;;9002226.02101,"1196,66685-0301-00 ",.01)
 ;;66685-0301-00
 ;;9002226.02101,"1196,66685-0301-00 ",.02)
 ;;66685-0301-00
 ;;9002226.02101,"1196,66685-0301-02 ",.01)
 ;;66685-0301-02
 ;;9002226.02101,"1196,66685-0301-02 ",.02)
 ;;66685-0301-02
 ;;9002226.02101,"1196,66685-0302-00 ",.01)
 ;;66685-0302-00
 ;;9002226.02101,"1196,66685-0302-00 ",.02)
 ;;66685-0302-00
 ;;9002226.02101,"1196,66685-0302-02 ",.01)
 ;;66685-0302-02
 ;;9002226.02101,"1196,66685-0302-02 ",.02)
 ;;66685-0302-02
 ;;9002226.02101,"1196,66685-0303-00 ",.01)
 ;;66685-0303-00
 ;;9002226.02101,"1196,66685-0303-00 ",.02)
 ;;66685-0303-00
 ;;9002226.02101,"1196,66685-0303-02 ",.01)
 ;;66685-0303-02
 ;;9002226.02101,"1196,66685-0303-02 ",.02)
 ;;66685-0303-02
 ;;9002226.02101,"1196,66685-0304-00 ",.01)
 ;;66685-0304-00
 ;;9002226.02101,"1196,66685-0304-00 ",.02)
 ;;66685-0304-00
 ;;9002226.02101,"1196,66685-0304-02 ",.01)
 ;;66685-0304-02
 ;;9002226.02101,"1196,66685-0304-02 ",.02)
 ;;66685-0304-02
 ;;9002226.02101,"1196,66685-0701-01 ",.01)
 ;;66685-0701-01
 ;;9002226.02101,"1196,66685-0701-01 ",.02)
 ;;66685-0701-01
 ;;9002226.02101,"1196,66685-0701-02 ",.01)
 ;;66685-0701-02
 ;;9002226.02101,"1196,66685-0701-02 ",.02)
 ;;66685-0701-02
 ;;9002226.02101,"1196,66685-0702-01 ",.01)
 ;;66685-0702-01
 ;;9002226.02101,"1196,66685-0702-01 ",.02)
 ;;66685-0702-01
 ;;9002226.02101,"1196,66685-0702-02 ",.01)
 ;;66685-0702-02
 ;;9002226.02101,"1196,66685-0702-02 ",.02)
 ;;66685-0702-02
 ;;9002226.02101,"1196,66685-0702-03 ",.01)
 ;;66685-0702-03
 ;;9002226.02101,"1196,66685-0702-03 ",.02)
 ;;66685-0702-03
 ;;9002226.02101,"1196,66685-0703-01 ",.01)
 ;;66685-0703-01
 ;;9002226.02101,"1196,66685-0703-01 ",.02)
 ;;66685-0703-01
 ;;9002226.02101,"1196,66685-0703-02 ",.01)
 ;;66685-0703-02
 ;;9002226.02101,"1196,66685-0703-02 ",.02)
 ;;66685-0703-02
 ;;9002226.02101,"1196,66685-0703-03 ",.01)
 ;;66685-0703-03
 ;;9002226.02101,"1196,66685-0703-03 ",.02)
 ;;66685-0703-03
 ;;9002226.02101,"1196,66685-0704-01 ",.01)
 ;;66685-0704-01
 ;;9002226.02101,"1196,66685-0704-01 ",.02)
 ;;66685-0704-01
 ;;9002226.02101,"1196,66685-0704-02 ",.01)
 ;;66685-0704-02
 ;;9002226.02101,"1196,66685-0704-02 ",.02)
 ;;66685-0704-02
 ;;9002226.02101,"1196,66685-0704-03 ",.01)
 ;;66685-0704-03
 ;;9002226.02101,"1196,66685-0704-03 ",.02)
 ;;66685-0704-03
 ;;9002226.02101,"1196,66685-0705-01 ",.01)
 ;;66685-0705-01
 ;;9002226.02101,"1196,66685-0705-01 ",.02)
 ;;66685-0705-01
 ;;9002226.02101,"1196,66685-0705-02 ",.01)
 ;;66685-0705-02
 ;;9002226.02101,"1196,66685-0705-02 ",.02)
 ;;66685-0705-02
 ;;9002226.02101,"1196,66685-0706-01 ",.01)
 ;;66685-0706-01
 ;;9002226.02101,"1196,66685-0706-01 ",.02)
 ;;66685-0706-01
 ;;9002226.02101,"1196,66685-0706-02 ",.01)
 ;;66685-0706-02
 ;;9002226.02101,"1196,66685-0706-02 ",.02)
 ;;66685-0706-02
 ;;9002226.02101,"1196,66685-0706-03 ",.01)
 ;;66685-0706-03
 ;;9002226.02101,"1196,66685-0706-03 ",.02)
 ;;66685-0706-03
 ;;9002226.02101,"1196,66685-0706-04 ",.01)
 ;;66685-0706-04
 ;;9002226.02101,"1196,66685-0706-04 ",.02)
 ;;66685-0706-04
 ;;9002226.02101,"1196,67253-0106-10 ",.01)
 ;;67253-0106-10
 ;;9002226.02101,"1196,67253-0106-10 ",.02)
 ;;67253-0106-10
 ;;9002226.02101,"1196,67253-0107-10 ",.01)
 ;;67253-0107-10
 ;;9002226.02101,"1196,67253-0107-10 ",.02)
 ;;67253-0107-10
 ;;9002226.02101,"1196,67253-0108-10 ",.01)
 ;;67253-0108-10
 ;;9002226.02101,"1196,67253-0108-10 ",.02)
 ;;67253-0108-10
 ;;9002226.02101,"1196,67253-0671-10 ",.01)
 ;;67253-0671-10
 ;;9002226.02101,"1196,67253-0671-10 ",.02)
 ;;67253-0671-10
 ;;9002226.02101,"1196,67253-0672-10 ",.01)
 ;;67253-0672-10
 ;;9002226.02101,"1196,67253-0672-10 ",.02)
 ;;67253-0672-10
 ;;9002226.02101,"1196,67253-0672-11 ",.01)
 ;;67253-0672-11
 ;;9002226.02101,"1196,67253-0672-11 ",.02)
 ;;67253-0672-11
 ;;9002226.02101,"1196,67253-0673-10 ",.01)
 ;;67253-0673-10
 ;;9002226.02101,"1196,67253-0673-10 ",.02)
 ;;67253-0673-10
 ;;9002226.02101,"1196,67253-0673-11 ",.01)
 ;;67253-0673-11
 ;;9002226.02101,"1196,67253-0673-11 ",.02)
 ;;67253-0673-11
 ;;9002226.02101,"1196,67253-0674-10 ",.01)
 ;;67253-0674-10
 ;;9002226.02101,"1196,67253-0674-10 ",.02)
 ;;67253-0674-10
 ;;9002226.02101,"1196,67253-0674-11 ",.01)
 ;;67253-0674-11
 ;;9002226.02101,"1196,67253-0674-11 ",.02)
 ;;67253-0674-11
 ;;9002226.02101,"1196,67544-0042-15 ",.01)
 ;;67544-0042-15
 ;;9002226.02101,"1196,67544-0042-15 ",.02)
 ;;67544-0042-15
 ;;9002226.02101,"1196,67544-0042-30 ",.01)
 ;;67544-0042-30
 ;;9002226.02101,"1196,67544-0042-30 ",.02)
 ;;67544-0042-30
 ;;9002226.02101,"1196,67544-0042-45 ",.01)
 ;;67544-0042-45
 ;;9002226.02101,"1196,67544-0042-45 ",.02)
 ;;67544-0042-45
 ;;9002226.02101,"1196,67544-0042-53 ",.01)
 ;;67544-0042-53
 ;;9002226.02101,"1196,67544-0042-53 ",.02)
 ;;67544-0042-53
 ;;9002226.02101,"1196,67544-0042-60 ",.01)
 ;;67544-0042-60
 ;;9002226.02101,"1196,67544-0042-60 ",.02)
 ;;67544-0042-60
 ;;9002226.02101,"1196,67544-0042-70 ",.01)
 ;;67544-0042-70
 ;;9002226.02101,"1196,67544-0042-70 ",.02)
 ;;67544-0042-70
 ;;9002226.02101,"1196,67544-0042-73 ",.01)
 ;;67544-0042-73
 ;;9002226.02101,"1196,67544-0042-73 ",.02)
 ;;67544-0042-73
 ;;9002226.02101,"1196,67544-0042-80 ",.01)
 ;;67544-0042-80
 ;;9002226.02101,"1196,67544-0042-80 ",.02)
 ;;67544-0042-80
 ;;9002226.02101,"1196,67544-0042-92 ",.01)
 ;;67544-0042-92
 ;;9002226.02101,"1196,67544-0042-92 ",.02)
 ;;67544-0042-92
 ;;9002226.02101,"1196,67544-0042-94 ",.01)
 ;;67544-0042-94
 ;;9002226.02101,"1196,67544-0042-94 ",.02)
 ;;67544-0042-94
 ;;9002226.02101,"1196,67544-0062-30 ",.01)
 ;;67544-0062-30
 ;;9002226.02101,"1196,67544-0062-30 ",.02)
 ;;67544-0062-30
 ;;9002226.02101,"1196,67544-0062-60 ",.01)
 ;;67544-0062-60
 ;;9002226.02101,"1196,67544-0062-60 ",.02)
 ;;67544-0062-60
 ;;9002226.02101,"1196,67544-0062-82 ",.01)
 ;;67544-0062-82
 ;;9002226.02101,"1196,67544-0062-82 ",.02)
 ;;67544-0062-82
 ;;9002226.02101,"1196,67544-0128-15 ",.01)
 ;;67544-0128-15
 ;;9002226.02101,"1196,67544-0128-15 ",.02)
 ;;67544-0128-15
 ;;9002226.02101,"1196,67544-0128-30 ",.01)
 ;;67544-0128-30
 ;;9002226.02101,"1196,67544-0128-30 ",.02)
 ;;67544-0128-30
 ;;9002226.02101,"1196,67544-0128-45 ",.01)
 ;;67544-0128-45
 ;;9002226.02101,"1196,67544-0128-45 ",.02)
 ;;67544-0128-45
 ;;9002226.02101,"1196,67544-0128-53 ",.01)
 ;;67544-0128-53
 ;;9002226.02101,"1196,67544-0128-53 ",.02)
 ;;67544-0128-53
 ;;9002226.02101,"1196,67544-0128-60 ",.01)
 ;;67544-0128-60
 ;;9002226.02101,"1196,67544-0128-60 ",.02)
 ;;67544-0128-60
 ;;9002226.02101,"1196,67544-0134-30 ",.01)
 ;;67544-0134-30
 ;;9002226.02101,"1196,67544-0134-30 ",.02)
 ;;67544-0134-30
 ;;9002226.02101,"1196,67544-0134-45 ",.01)
 ;;67544-0134-45
 ;;9002226.02101,"1196,67544-0134-45 ",.02)
 ;;67544-0134-45
 ;;9002226.02101,"1196,67544-0134-60 ",.01)
 ;;67544-0134-60
 ;;9002226.02101,"1196,67544-0134-60 ",.02)
 ;;67544-0134-60
 ;;9002226.02101,"1196,67544-0134-80 ",.01)
 ;;67544-0134-80
 ;;9002226.02101,"1196,67544-0134-80 ",.02)
 ;;67544-0134-80
 ;;9002226.02101,"1196,67544-0148-15 ",.01)
 ;;67544-0148-15
 ;;9002226.02101,"1196,67544-0148-15 ",.02)
 ;;67544-0148-15
 ;;9002226.02101,"1196,67544-0148-30 ",.01)
 ;;67544-0148-30
 ;;9002226.02101,"1196,67544-0148-30 ",.02)
 ;;67544-0148-30
 ;;9002226.02101,"1196,67544-0148-45 ",.01)
 ;;67544-0148-45
 ;;9002226.02101,"1196,67544-0148-45 ",.02)
 ;;67544-0148-45
 ;;9002226.02101,"1196,67544-0148-53 ",.01)
 ;;67544-0148-53
 ;;9002226.02101,"1196,67544-0148-53 ",.02)
 ;;67544-0148-53
 ;;9002226.02101,"1196,67544-0148-60 ",.01)
 ;;67544-0148-60
 ;;9002226.02101,"1196,67544-0148-60 ",.02)
 ;;67544-0148-60
 ;;9002226.02101,"1196,67544-0148-80 ",.01)
 ;;67544-0148-80
 ;;9002226.02101,"1196,67544-0148-80 ",.02)
 ;;67544-0148-80
 ;;9002226.02101,"1196,67544-0150-45 ",.01)
 ;;67544-0150-45
 ;;9002226.02101,"1196,67544-0150-45 ",.02)
 ;;67544-0150-45
 ;;9002226.02101,"1196,67544-0150-60 ",.01)
 ;;67544-0150-60
 ;;9002226.02101,"1196,67544-0150-60 ",.02)
 ;;67544-0150-60
 ;;9002226.02101,"1196,67544-0150-73 ",.01)
 ;;67544-0150-73
 ;;9002226.02101,"1196,67544-0150-73 ",.02)
 ;;67544-0150-73
 ;;9002226.02101,"1196,67544-0150-92 ",.01)
 ;;67544-0150-92
 ;;9002226.02101,"1196,67544-0150-92 ",.02)
 ;;67544-0150-92
 ;;9002226.02101,"1196,67544-0159-15 ",.01)
 ;;67544-0159-15
 ;;9002226.02101,"1196,67544-0159-15 ",.02)
 ;;67544-0159-15
 ;;9002226.02101,"1196,67544-0159-30 ",.01)
 ;;67544-0159-30
 ;;9002226.02101,"1196,67544-0159-30 ",.02)
 ;;67544-0159-30
 ;;9002226.02101,"1196,67544-0159-45 ",.01)
 ;;67544-0159-45
 ;;9002226.02101,"1196,67544-0159-45 ",.02)
 ;;67544-0159-45
 ;;9002226.02101,"1196,67544-0159-58 ",.01)
 ;;67544-0159-58
 ;;9002226.02101,"1196,67544-0159-58 ",.02)
 ;;67544-0159-58
 ;;9002226.02101,"1196,67544-0159-60 ",.01)
 ;;67544-0159-60
 ;;9002226.02101,"1196,67544-0159-60 ",.02)
 ;;67544-0159-60
 ;;9002226.02101,"1196,67544-0159-80 ",.01)
 ;;67544-0159-80
 ;;9002226.02101,"1196,67544-0159-80 ",.02)
 ;;67544-0159-80
 ;;9002226.02101,"1196,67544-0160-60 ",.01)
 ;;67544-0160-60
 ;;9002226.02101,"1196,67544-0160-60 ",.02)
 ;;67544-0160-60
 ;;9002226.02101,"1196,67544-0160-80 ",.01)
 ;;67544-0160-80
 ;;9002226.02101,"1196,67544-0160-80 ",.02)
 ;;67544-0160-80
 ;;9002226.02101,"1196,67544-0165-60 ",.01)
 ;;67544-0165-60
 ;;9002226.02101,"1196,67544-0165-60 ",.02)
 ;;67544-0165-60
 ;;9002226.02101,"1196,67544-0165-80 ",.01)
 ;;67544-0165-80
 ;;9002226.02101,"1196,67544-0165-80 ",.02)
 ;;67544-0165-80
 ;;9002226.02101,"1196,67544-0166-80 ",.01)
 ;;67544-0166-80
 ;;9002226.02101,"1196,67544-0166-80 ",.02)
 ;;67544-0166-80
 ;;9002226.02101,"1196,67544-0173-30 ",.01)
 ;;67544-0173-30
 ;;9002226.02101,"1196,67544-0173-30 ",.02)
 ;;67544-0173-30
 ;;9002226.02101,"1196,67544-0173-45 ",.01)
 ;;67544-0173-45
 ;;9002226.02101,"1196,67544-0173-45 ",.02)
 ;;67544-0173-45
 ;;9002226.02101,"1196,67544-0173-53 ",.01)
 ;;67544-0173-53
 ;;9002226.02101,"1196,67544-0173-53 ",.02)
 ;;67544-0173-53
 ;;9002226.02101,"1196,67544-0173-60 ",.01)
 ;;67544-0173-60
 ;;9002226.02101,"1196,67544-0173-60 ",.02)
 ;;67544-0173-60
 ;;9002226.02101,"1196,67544-0174-30 ",.01)
 ;;67544-0174-30
 ;;9002226.02101,"1196,67544-0174-30 ",.02)
 ;;67544-0174-30
 ;;9002226.02101,"1196,67544-0174-45 ",.01)
 ;;67544-0174-45
 ;;9002226.02101,"1196,67544-0174-45 ",.02)
 ;;67544-0174-45
 ;;9002226.02101,"1196,67544-0174-60 ",.01)
 ;;67544-0174-60
 ;;9002226.02101,"1196,67544-0174-60 ",.02)
 ;;67544-0174-60
 ;;9002226.02101,"1196,67544-0174-80 ",.01)
 ;;67544-0174-80
 ;;9002226.02101,"1196,67544-0174-80 ",.02)
 ;;67544-0174-80
 ;;9002226.02101,"1196,67544-0175-80 ",.01)
 ;;67544-0175-80
 ;;9002226.02101,"1196,67544-0175-80 ",.02)
 ;;67544-0175-80
 ;;9002226.02101,"1196,67544-0177-45 ",.01)
 ;;67544-0177-45
 ;;9002226.02101,"1196,67544-0177-45 ",.02)
 ;;67544-0177-45
 ;;9002226.02101,"1196,67544-0192-30 ",.01)
 ;;67544-0192-30
 ;;9002226.02101,"1196,67544-0192-30 ",.02)
 ;;67544-0192-30
 ;;9002226.02101,"1196,67544-0192-45 ",.01)
 ;;67544-0192-45
 ;;9002226.02101,"1196,67544-0192-45 ",.02)
 ;;67544-0192-45
 ;;9002226.02101,"1196,67544-0192-53 ",.01)
 ;;67544-0192-53
 ;;9002226.02101,"1196,67544-0192-53 ",.02)
 ;;67544-0192-53
 ;;9002226.02101,"1196,67544-0192-60 ",.01)
 ;;67544-0192-60
 ;;9002226.02101,"1196,67544-0192-60 ",.02)
 ;;67544-0192-60
 ;;9002226.02101,"1196,67544-0201-45 ",.01)
 ;;67544-0201-45
 ;;9002226.02101,"1196,67544-0201-45 ",.02)
 ;;67544-0201-45
 ;;9002226.02101,"1196,67544-0202-15 ",.01)
 ;;67544-0202-15
 ;;9002226.02101,"1196,67544-0202-15 ",.02)
 ;;67544-0202-15
 ;;9002226.02101,"1196,67544-0202-30 ",.01)
 ;;67544-0202-30
 ;;9002226.02101,"1196,67544-0202-30 ",.02)
 ;;67544-0202-30
 ;;9002226.02101,"1196,67544-0202-45 ",.01)
 ;;67544-0202-45
 ;;9002226.02101,"1196,67544-0202-45 ",.02)
 ;;67544-0202-45
 ;;9002226.02101,"1196,67544-0202-80 ",.01)
 ;;67544-0202-80
 ;;9002226.02101,"1196,67544-0202-80 ",.02)
 ;;67544-0202-80
 ;;9002226.02101,"1196,67544-0212-45 ",.01)
 ;;67544-0212-45
 ;;9002226.02101,"1196,67544-0212-45 ",.02)
 ;;67544-0212-45
 ;;9002226.02101,"1196,67544-0212-53 ",.01)
 ;;67544-0212-53
 ;;9002226.02101,"1196,67544-0212-53 ",.02)
 ;;67544-0212-53
 ;;9002226.02101,"1196,67544-0216-80 ",.01)
 ;;67544-0216-80
 ;;9002226.02101,"1196,67544-0216-80 ",.02)
 ;;67544-0216-80
 ;;9002226.02101,"1196,67544-0218-60 ",.01)
 ;;67544-0218-60