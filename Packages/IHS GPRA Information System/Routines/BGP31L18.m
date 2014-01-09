BGP31L18 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 29, 2012;
 ;;13.0;IHS CLINICAL REPORTING;;NOV 20, 2012;Build 81
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"618,50383-0576-30 ",.01)
 ;;50383-0576-30
 ;;9002226.02101,"618,50383-0576-30 ",.02)
 ;;50383-0576-30
 ;;9002226.02101,"618,50383-0796-16 ",.01)
 ;;50383-0796-16
 ;;9002226.02101,"618,50383-0796-16 ",.02)
 ;;50383-0796-16
 ;;9002226.02101,"618,50383-0801-16 ",.01)
 ;;50383-0801-16
 ;;9002226.02101,"618,50383-0801-16 ",.02)
 ;;50383-0801-16
 ;;9002226.02101,"618,50383-0803-16 ",.01)
 ;;50383-0803-16
 ;;9002226.02101,"618,50383-0803-16 ",.02)
 ;;50383-0803-16
 ;;9002226.02101,"618,50383-0804-16 ",.01)
 ;;50383-0804-16
 ;;9002226.02101,"618,50383-0804-16 ",.02)
 ;;50383-0804-16
 ;;9002226.02101,"618,50383-0842-16 ",.01)
 ;;50383-0842-16
 ;;9002226.02101,"618,50383-0842-16 ",.02)
 ;;50383-0842-16
 ;;9002226.02101,"618,50383-0871-30 ",.01)
 ;;50383-0871-30
 ;;9002226.02101,"618,50383-0871-30 ",.02)
 ;;50383-0871-30
 ;;9002226.02101,"618,50383-0874-16 ",.01)
 ;;50383-0874-16
 ;;9002226.02101,"618,50383-0874-16 ",.02)
 ;;50383-0874-16
 ;;9002226.02101,"618,50436-4379-02 ",.01)
 ;;50436-4379-02
 ;;9002226.02101,"618,50436-4379-02 ",.02)
 ;;50436-4379-02
 ;;9002226.02101,"618,50436-4379-03 ",.01)
 ;;50436-4379-03
 ;;9002226.02101,"618,50436-4379-03 ",.02)
 ;;50436-4379-03
 ;;9002226.02101,"618,50991-0412-16 ",.01)
 ;;50991-0412-16
 ;;9002226.02101,"618,50991-0412-16 ",.02)
 ;;50991-0412-16
 ;;9002226.02101,"618,50991-0513-01 ",.01)
 ;;50991-0513-01
 ;;9002226.02101,"618,50991-0513-01 ",.02)
 ;;50991-0513-01
 ;;9002226.02101,"618,50991-0527-01 ",.01)
 ;;50991-0527-01
 ;;9002226.02101,"618,50991-0527-01 ",.02)
 ;;50991-0527-01
 ;;9002226.02101,"618,50991-0528-16 ",.01)
 ;;50991-0528-16
 ;;9002226.02101,"618,50991-0528-16 ",.02)
 ;;50991-0528-16
 ;;9002226.02101,"618,50991-0607-16 ",.01)
 ;;50991-0607-16
 ;;9002226.02101,"618,50991-0607-16 ",.02)
 ;;50991-0607-16
 ;;9002226.02101,"618,50991-0612-16 ",.01)
 ;;50991-0612-16
 ;;9002226.02101,"618,50991-0612-16 ",.02)
 ;;50991-0612-16
 ;;9002226.02101,"618,50991-0614-16 ",.01)
 ;;50991-0614-16
 ;;9002226.02101,"618,50991-0614-16 ",.02)
 ;;50991-0614-16
 ;;9002226.02101,"618,50991-0616-16 ",.01)
 ;;50991-0616-16
 ;;9002226.02101,"618,50991-0616-16 ",.02)
 ;;50991-0616-16
 ;;9002226.02101,"618,50991-0814-16 ",.01)
 ;;50991-0814-16
 ;;9002226.02101,"618,50991-0814-16 ",.02)
 ;;50991-0814-16
 ;;9002226.02101,"618,50991-0911-01 ",.01)
 ;;50991-0911-01
 ;;9002226.02101,"618,50991-0911-01 ",.02)
 ;;50991-0911-01
 ;;9002226.02101,"618,50991-0927-16 ",.01)
 ;;50991-0927-16
 ;;9002226.02101,"618,50991-0927-16 ",.02)
 ;;50991-0927-16
 ;;9002226.02101,"618,51079-0066-01 ",.01)
 ;;51079-0066-01
 ;;9002226.02101,"618,51079-0066-01 ",.02)
 ;;51079-0066-01
 ;;9002226.02101,"618,51079-0066-17 ",.01)
 ;;51079-0066-17
 ;;9002226.02101,"618,51079-0066-17 ",.02)
 ;;51079-0066-17
 ;;9002226.02101,"618,51079-0066-19 ",.01)
 ;;51079-0066-19
 ;;9002226.02101,"618,51079-0066-19 ",.02)
 ;;51079-0066-19
 ;;9002226.02101,"618,51079-0066-20 ",.01)
 ;;51079-0066-20
 ;;9002226.02101,"618,51079-0066-20 ",.02)
 ;;51079-0066-20
 ;;9002226.02101,"618,51079-0077-20 ",.01)
 ;;51079-0077-20
 ;;9002226.02101,"618,51079-0077-20 ",.02)
 ;;51079-0077-20
 ;;9002226.02101,"618,51079-0078-20 ",.01)
 ;;51079-0078-20
 ;;9002226.02101,"618,51079-0078-20 ",.02)
 ;;51079-0078-20
 ;;9002226.02101,"618,51079-0220-01 ",.01)
 ;;51079-0220-01
 ;;9002226.02101,"618,51079-0220-01 ",.02)
 ;;51079-0220-01
 ;;9002226.02101,"618,51079-0220-20 ",.01)
 ;;51079-0220-20
 ;;9002226.02101,"618,51079-0220-20 ",.02)
 ;;51079-0220-20
 ;;9002226.02101,"618,51079-0221-01 ",.01)
 ;;51079-0221-01
 ;;9002226.02101,"618,51079-0221-01 ",.02)
 ;;51079-0221-01
 ;;9002226.02101,"618,51079-0221-17 ",.01)
 ;;51079-0221-17
 ;;9002226.02101,"618,51079-0221-17 ",.02)
 ;;51079-0221-17
 ;;9002226.02101,"618,51079-0221-19 ",.01)
 ;;51079-0221-19
 ;;9002226.02101,"618,51079-0221-19 ",.02)
 ;;51079-0221-19
 ;;9002226.02101,"618,51079-0221-20 ",.01)
 ;;51079-0221-20
 ;;9002226.02101,"618,51079-0221-20 ",.02)
 ;;51079-0221-20
 ;;9002226.02101,"618,51079-0222-01 ",.01)
 ;;51079-0222-01
 ;;9002226.02101,"618,51079-0222-01 ",.02)
 ;;51079-0222-01
 ;;9002226.02101,"618,51079-0222-20 ",.01)
 ;;51079-0222-20
 ;;9002226.02101,"618,51079-0222-20 ",.02)
 ;;51079-0222-20
 ;;9002226.02101,"618,51079-0404-01 ",.01)
 ;;51079-0404-01
 ;;9002226.02101,"618,51079-0404-01 ",.02)
 ;;51079-0404-01
 ;;9002226.02101,"618,51079-0404-20 ",.01)
 ;;51079-0404-20
 ;;9002226.02101,"618,51079-0404-20 ",.02)
 ;;51079-0404-20
 ;;9002226.02101,"618,51079-0406-01 ",.01)
 ;;51079-0406-01
 ;;9002226.02101,"618,51079-0406-01 ",.02)
 ;;51079-0406-01
 ;;9002226.02101,"618,51079-0406-17 ",.01)
 ;;51079-0406-17
 ;;9002226.02101,"618,51079-0406-17 ",.02)
 ;;51079-0406-17
 ;;9002226.02101,"618,51079-0406-19 ",.01)
 ;;51079-0406-19
 ;;9002226.02101,"618,51079-0406-19 ",.02)
 ;;51079-0406-19
 ;;9002226.02101,"618,51079-0406-20 ",.01)
 ;;51079-0406-20
 ;;9002226.02101,"618,51079-0406-20 ",.02)
 ;;51079-0406-20
 ;;9002226.02101,"618,51079-0407-01 ",.01)
 ;;51079-0407-01
 ;;9002226.02101,"618,51079-0407-01 ",.02)
 ;;51079-0407-01
 ;;9002226.02101,"618,51079-0407-20 ",.01)
 ;;51079-0407-20
 ;;9002226.02101,"618,51079-0407-20 ",.02)
 ;;51079-0407-20
 ;;9002226.02101,"618,51079-0413-01 ",.01)
 ;;51079-0413-01
 ;;9002226.02101,"618,51079-0413-01 ",.02)
 ;;51079-0413-01
 ;;9002226.02101,"618,51079-0413-20 ",.01)
 ;;51079-0413-20
 ;;9002226.02101,"618,51079-0413-20 ",.02)
 ;;51079-0413-20
 ;;9002226.02101,"618,51079-0530-01 ",.01)
 ;;51079-0530-01
 ;;9002226.02101,"618,51079-0530-01 ",.02)
 ;;51079-0530-01
 ;;9002226.02101,"618,51079-0530-20 ",.01)
 ;;51079-0530-20
 ;;9002226.02101,"618,51079-0530-20 ",.02)
 ;;51079-0530-20
 ;;9002226.02101,"618,51079-0531-01 ",.01)
 ;;51079-0531-01
 ;;9002226.02101,"618,51079-0531-01 ",.02)
 ;;51079-0531-01
 ;;9002226.02101,"618,51079-0531-20 ",.01)
 ;;51079-0531-20
 ;;9002226.02101,"618,51079-0531-20 ",.02)
 ;;51079-0531-20
 ;;9002226.02101,"618,51079-0532-01 ",.01)
 ;;51079-0532-01
 ;;9002226.02101,"618,51079-0532-01 ",.02)
 ;;51079-0532-01
 ;;9002226.02101,"618,51079-0532-20 ",.01)
 ;;51079-0532-20
 ;;9002226.02101,"618,51079-0532-20 ",.02)
 ;;51079-0532-20
 ;;9002226.02101,"618,51079-0535-10 ",.01)
 ;;51079-0535-10
 ;;9002226.02101,"618,51079-0535-10 ",.02)
 ;;51079-0535-10
 ;;9002226.02101,"618,51079-0796-01 ",.01)
 ;;51079-0796-01
 ;;9002226.02101,"618,51079-0796-01 ",.02)
 ;;51079-0796-01
 ;;9002226.02101,"618,51079-0796-20 ",.01)
 ;;51079-0796-20
 ;;9002226.02101,"618,51079-0796-20 ",.02)
 ;;51079-0796-20
 ;;9002226.02101,"618,51079-0806-01 ",.01)
 ;;51079-0806-01
 ;;9002226.02101,"618,51079-0806-01 ",.02)
 ;;51079-0806-01
 ;;9002226.02101,"618,51079-0806-20 ",.01)
 ;;51079-0806-20
 ;;9002226.02101,"618,51079-0806-20 ",.02)
 ;;51079-0806-20
 ;;9002226.02101,"618,51079-0816-01 ",.01)
 ;;51079-0816-01
 ;;9002226.02101,"618,51079-0816-01 ",.02)
 ;;51079-0816-01
 ;;9002226.02101,"618,51079-0816-20 ",.01)
 ;;51079-0816-20
 ;;9002226.02101,"618,51079-0816-20 ",.02)
 ;;51079-0816-20
 ;;9002226.02101,"618,51079-0874-30 ",.01)
 ;;51079-0874-30
 ;;9002226.02101,"618,51079-0874-30 ",.02)
 ;;51079-0874-30
 ;;9002226.02101,"618,51079-0895-01 ",.01)
 ;;51079-0895-01
 ;;9002226.02101,"618,51079-0895-01 ",.02)
 ;;51079-0895-01
 ;;9002226.02101,"618,51079-0895-20 ",.01)
 ;;51079-0895-20
 ;;9002226.02101,"618,51079-0895-20 ",.02)
 ;;51079-0895-20
 ;;9002226.02101,"618,51234-0155-04 ",.01)
 ;;51234-0155-04
 ;;9002226.02101,"618,51234-0155-04 ",.02)
 ;;51234-0155-04
 ;;9002226.02101,"618,51234-0157-04 ",.01)
 ;;51234-0157-04
 ;;9002226.02101,"618,51234-0157-04 ",.02)
 ;;51234-0157-04
 ;;9002226.02101,"618,51655-0078-24 ",.01)
 ;;51655-0078-24
 ;;9002226.02101,"618,51655-0078-24 ",.02)
 ;;51655-0078-24
 ;;9002226.02101,"618,51655-0078-30 ",.01)
 ;;51655-0078-30
 ;;9002226.02101,"618,51655-0078-30 ",.02)
 ;;51655-0078-30
 ;;9002226.02101,"618,51655-0079-24 ",.01)
 ;;51655-0079-24
 ;;9002226.02101,"618,51655-0079-24 ",.02)
 ;;51655-0079-24
 ;;9002226.02101,"618,51655-0079-27 ",.01)
 ;;51655-0079-27
 ;;9002226.02101,"618,51655-0079-27 ",.02)
 ;;51655-0079-27
 ;;9002226.02101,"618,51655-0084-27 ",.01)
 ;;51655-0084-27
 ;;9002226.02101,"618,51655-0084-27 ",.02)
 ;;51655-0084-27
 ;;9002226.02101,"618,51655-0088-24 ",.01)
 ;;51655-0088-24
 ;;9002226.02101,"618,51655-0088-24 ",.02)
 ;;51655-0088-24
 ;;9002226.02101,"618,51655-0088-25 ",.01)
 ;;51655-0088-25
 ;;9002226.02101,"618,51655-0088-25 ",.02)
 ;;51655-0088-25
 ;;9002226.02101,"618,51655-0088-52 ",.01)
 ;;51655-0088-52
 ;;9002226.02101,"618,51655-0088-52 ",.02)
 ;;51655-0088-52
 ;;9002226.02101,"618,51655-0113-27 ",.01)
 ;;51655-0113-27
 ;;9002226.02101,"618,51655-0113-27 ",.02)
 ;;51655-0113-27
 ;;9002226.02101,"618,51655-0162-24 ",.01)
 ;;51655-0162-24
 ;;9002226.02101,"618,51655-0162-24 ",.02)
 ;;51655-0162-24
 ;;9002226.02101,"618,51655-0185-52 ",.01)
 ;;51655-0185-52
 ;;9002226.02101,"618,51655-0185-52 ",.02)
 ;;51655-0185-52
 ;;9002226.02101,"618,51655-0233-24 ",.01)
 ;;51655-0233-24
 ;;9002226.02101,"618,51655-0233-24 ",.02)
 ;;51655-0233-24
 ;;9002226.02101,"618,51655-0233-25 ",.01)
 ;;51655-0233-25
 ;;9002226.02101,"618,51655-0233-25 ",.02)
 ;;51655-0233-25
 ;;9002226.02101,"618,51655-0264-24 ",.01)
 ;;51655-0264-24
 ;;9002226.02101,"618,51655-0264-24 ",.02)
 ;;51655-0264-24
 ;;9002226.02101,"618,51674-0014-04 ",.01)
 ;;51674-0014-04
 ;;9002226.02101,"618,51674-0014-04 ",.02)
 ;;51674-0014-04
 ;;9002226.02101,"618,51674-0307-01 ",.01)
 ;;51674-0307-01
 ;;9002226.02101,"618,51674-0307-01 ",.02)
 ;;51674-0307-01
 ;;9002226.02101,"618,51724-0052-04 ",.01)
 ;;51724-0052-04
 ;;9002226.02101,"618,51724-0052-04 ",.02)
 ;;51724-0052-04
 ;;9002226.02101,"618,51724-0214-01 ",.01)
 ;;51724-0214-01
 ;;9002226.02101,"618,51724-0214-01 ",.02)
 ;;51724-0214-01
 ;;9002226.02101,"618,51991-0016-16 ",.01)
 ;;51991-0016-16
 ;;9002226.02101,"618,51991-0016-16 ",.02)
 ;;51991-0016-16
 ;;9002226.02101,"618,51991-0050-01 ",.01)
 ;;51991-0050-01
 ;;9002226.02101,"618,51991-0050-01 ",.02)
 ;;51991-0050-01
 ;;9002226.02101,"618,51991-0060-01 ",.01)
 ;;51991-0060-01
 ;;9002226.02101,"618,51991-0060-01 ",.02)
 ;;51991-0060-01
 ;;9002226.02101,"618,51991-0066-01 ",.01)
 ;;51991-0066-01
 ;;9002226.02101,"618,51991-0066-01 ",.02)
 ;;51991-0066-01
 ;;9002226.02101,"618,51991-0092-01 ",.01)
 ;;51991-0092-01
 ;;9002226.02101,"618,51991-0092-01 ",.02)
 ;;51991-0092-01
 ;;9002226.02101,"618,51991-0093-01 ",.01)
 ;;51991-0093-01
 ;;9002226.02101,"618,51991-0093-01 ",.02)
 ;;51991-0093-01
 ;;9002226.02101,"618,51991-0145-01 ",.01)
 ;;51991-0145-01
 ;;9002226.02101,"618,51991-0145-01 ",.02)
 ;;51991-0145-01
 ;;9002226.02101,"618,51991-0170-01 ",.01)
 ;;51991-0170-01
 ;;9002226.02101,"618,51991-0170-01 ",.02)
 ;;51991-0170-01
 ;;9002226.02101,"618,51991-0209-16 ",.01)
 ;;51991-0209-16
 ;;9002226.02101,"618,51991-0209-16 ",.02)
 ;;51991-0209-16
 ;;9002226.02101,"618,51991-0213-16 ",.01)
 ;;51991-0213-16
 ;;9002226.02101,"618,51991-0213-16 ",.02)
 ;;51991-0213-16
 ;;9002226.02101,"618,51991-0217-01 ",.01)
 ;;51991-0217-01
 ;;9002226.02101,"618,51991-0217-01 ",.02)
 ;;51991-0217-01
 ;;9002226.02101,"618,51991-0226-16 ",.01)
 ;;51991-0226-16
 ;;9002226.02101,"618,51991-0226-16 ",.02)
 ;;51991-0226-16
 ;;9002226.02101,"618,51991-0227-16 ",.01)
 ;;51991-0227-16
 ;;9002226.02101,"618,51991-0227-16 ",.02)
 ;;51991-0227-16
 ;;9002226.02101,"618,51991-0228-16 ",.01)
 ;;51991-0228-16
 ;;9002226.02101,"618,51991-0228-16 ",.02)
 ;;51991-0228-16
 ;;9002226.02101,"618,51991-0229-01 ",.01)
 ;;51991-0229-01
 ;;9002226.02101,"618,51991-0229-01 ",.02)
 ;;51991-0229-01
 ;;9002226.02101,"618,51991-0309-16 ",.01)
 ;;51991-0309-16
 ;;9002226.02101,"618,51991-0309-16 ",.02)
 ;;51991-0309-16
 ;;9002226.02101,"618,51991-0366-01 ",.01)
 ;;51991-0366-01
 ;;9002226.02101,"618,51991-0366-01 ",.02)
 ;;51991-0366-01
 ;;9002226.02101,"618,51991-0426-16 ",.01)
 ;;51991-0426-16
 ;;9002226.02101,"618,51991-0426-16 ",.02)
 ;;51991-0426-16
 ;;9002226.02101,"618,51991-0427-16 ",.01)
 ;;51991-0427-16
 ;;9002226.02101,"618,51991-0427-16 ",.02)
 ;;51991-0427-16
 ;;9002226.02101,"618,51991-0440-41 ",.01)
 ;;51991-0440-41
 ;;9002226.02101,"618,51991-0440-41 ",.02)
 ;;51991-0440-41
 ;;9002226.02101,"618,51991-0443-16 ",.01)
 ;;51991-0443-16
 ;;9002226.02101,"618,51991-0443-16 ",.02)
 ;;51991-0443-16
 ;;9002226.02101,"618,51991-0478-16 ",.01)
 ;;51991-0478-16
 ;;9002226.02101,"618,51991-0478-16 ",.02)
 ;;51991-0478-16
 ;;9002226.02101,"618,51991-0524-16 ",.01)
 ;;51991-0524-16
 ;;9002226.02101,"618,51991-0524-16 ",.02)
 ;;51991-0524-16
 ;;9002226.02101,"618,51991-0531-16 ",.01)
 ;;51991-0531-16
 ;;9002226.02101,"618,51991-0531-16 ",.02)
 ;;51991-0531-16
 ;;9002226.02101,"618,51991-0532-16 ",.01)
 ;;51991-0532-16
 ;;9002226.02101,"618,51991-0532-16 ",.02)
 ;;51991-0532-16
 ;;9002226.02101,"618,51991-0591-01 ",.01)
 ;;51991-0591-01
 ;;9002226.02101,"618,51991-0591-01 ",.02)
 ;;51991-0591-01
 ;;9002226.02101,"618,51991-0657-16 ",.01)
 ;;51991-0657-16
 ;;9002226.02101,"618,51991-0657-16 ",.02)
 ;;51991-0657-16
 ;;9002226.02101,"618,51991-0660-16 ",.01)
 ;;51991-0660-16
 ;;9002226.02101,"618,51991-0660-16 ",.02)
 ;;51991-0660-16
 ;;9002226.02101,"618,52041-0005-42 ",.01)
 ;;52041-0005-42
 ;;9002226.02101,"618,52041-0005-42 ",.02)
 ;;52041-0005-42
 ;;9002226.02101,"618,52083-0236-04 ",.01)
 ;;52083-0236-04
 ;;9002226.02101,"618,52083-0236-04 ",.02)
 ;;52083-0236-04