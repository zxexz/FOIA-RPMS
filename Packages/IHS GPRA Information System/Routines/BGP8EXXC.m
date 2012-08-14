BGP8EXXC ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
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
 ;;9002226.02101,"622,00147-0251-10 ",.02)
 ;;00147-0251-10
 ;;9002226.02101,"622,00147-0251-20 ",.01)
 ;;00147-0251-20
 ;;9002226.02101,"622,00147-0251-20 ",.02)
 ;;00147-0251-20
 ;;9002226.02101,"622,00147-0253-10 ",.01)
 ;;00147-0253-10
 ;;9002226.02101,"622,00147-0253-10 ",.02)
 ;;00147-0253-10
 ;;9002226.02101,"622,00147-0253-20 ",.01)
 ;;00147-0253-20
 ;;9002226.02101,"622,00147-0253-20 ",.02)
 ;;00147-0253-20
 ;;9002226.02101,"622,00147-0254-10 ",.01)
 ;;00147-0254-10
 ;;9002226.02101,"622,00147-0254-10 ",.02)
 ;;00147-0254-10
 ;;9002226.02101,"622,00147-0254-20 ",.01)
 ;;00147-0254-20
 ;;9002226.02101,"622,00147-0254-20 ",.02)
 ;;00147-0254-20
 ;;9002226.02101,"622,00182-0205-01 ",.01)
 ;;00182-0205-01
 ;;9002226.02101,"622,00182-0205-01 ",.02)
 ;;00182-0205-01
 ;;9002226.02101,"622,00182-0205-10 ",.01)
 ;;00182-0205-10
 ;;9002226.02101,"622,00182-0205-10 ",.02)
 ;;00182-0205-10
 ;;9002226.02101,"622,00182-0870-01 ",.01)
 ;;00182-0870-01
 ;;9002226.02101,"622,00182-0870-01 ",.02)
 ;;00182-0870-01
 ;;9002226.02101,"622,00182-0870-02 ",.01)
 ;;00182-0870-02
 ;;9002226.02101,"622,00182-0870-02 ",.02)
 ;;00182-0870-02
 ;;9002226.02101,"622,00182-1066-01 ",.01)
 ;;00182-1066-01
 ;;9002226.02101,"622,00182-1066-01 ",.02)
 ;;00182-1066-01
 ;;9002226.02101,"622,00182-1066-10 ",.01)
 ;;00182-1066-10
 ;;9002226.02101,"622,00182-1066-10 ",.02)
 ;;00182-1066-10
 ;;9002226.02101,"622,00182-1173-01 ",.01)
 ;;00182-1173-01
 ;;9002226.02101,"622,00182-1173-01 ",.02)
 ;;00182-1173-01
 ;;9002226.02101,"622,00182-1173-10 ",.01)
 ;;00182-1173-10
 ;;9002226.02101,"622,00182-1173-10 ",.02)
 ;;00182-1173-10
 ;;9002226.02101,"622,00182-1174-01 ",.01)
 ;;00182-1174-01
 ;;9002226.02101,"622,00182-1174-01 ",.02)
 ;;00182-1174-01
 ;;9002226.02101,"622,00182-1436-01 ",.01)
 ;;00182-1436-01
 ;;9002226.02101,"622,00182-1436-01 ",.02)
 ;;00182-1436-01
 ;;9002226.02101,"622,00182-9147-01 ",.01)
 ;;00182-9147-01
 ;;9002226.02101,"622,00182-9147-01 ",.02)
 ;;00182-9147-01
 ;;9002226.02101,"622,00185-0084-01 ",.01)
 ;;00185-0084-01
 ;;9002226.02101,"622,00185-0084-01 ",.02)
 ;;00185-0084-01
 ;;9002226.02101,"622,00185-0111-01 ",.01)
 ;;00185-0111-01
 ;;9002226.02101,"622,00185-0111-01 ",.02)
 ;;00185-0111-01
 ;;9002226.02101,"622,00185-0401-01 ",.01)
 ;;00185-0401-01
 ;;9002226.02101,"622,00185-0401-01 ",.02)
 ;;00185-0401-01
 ;;9002226.02101,"622,00185-0404-01 ",.01)
 ;;00185-0404-01
 ;;9002226.02101,"622,00185-0404-01 ",.02)
 ;;00185-0404-01
 ;;9002226.02101,"622,00185-0635-10 ",.01)
 ;;00185-0635-10
 ;;9002226.02101,"622,00185-0635-10 ",.02)
 ;;00185-0635-10
 ;;9002226.02101,"622,00185-0640-10 ",.01)
 ;;00185-0640-10
 ;;9002226.02101,"622,00185-0640-10 ",.02)
 ;;00185-0640-10
 ;;9002226.02101,"622,00185-0644-01 ",.01)
 ;;00185-0644-01
 ;;9002226.02101,"622,00185-0644-01 ",.02)
 ;;00185-0644-01
 ;;9002226.02101,"622,00185-0644-10 ",.01)
 ;;00185-0644-10
 ;;9002226.02101,"622,00185-0644-10 ",.02)
 ;;00185-0644-10
 ;;9002226.02101,"622,00185-0647-01 ",.01)
 ;;00185-0647-01
 ;;9002226.02101,"622,00185-0647-01 ",.02)
 ;;00185-0647-01
 ;;9002226.02101,"622,00185-0647-10 ",.01)
 ;;00185-0647-10
 ;;9002226.02101,"622,00185-0647-10 ",.02)
 ;;00185-0647-10
 ;;9002226.02101,"622,00185-4055-10 ",.01)
 ;;00185-4055-10
 ;;9002226.02101,"622,00185-4055-10 ",.02)
 ;;00185-4055-10
 ;;9002226.02101,"622,00185-4057-01 ",.01)
 ;;00185-4057-01
 ;;9002226.02101,"622,00185-4057-01 ",.02)
 ;;00185-4057-01
 ;;9002226.02101,"622,00185-4057-10 ",.01)
 ;;00185-4057-10
 ;;9002226.02101,"622,00185-4057-10 ",.02)
 ;;00185-4057-10
 ;;9002226.02101,"622,00185-4095-10 ",.01)
 ;;00185-4095-10
 ;;9002226.02101,"622,00185-4095-10 ",.02)
 ;;00185-4095-10
 ;;9002226.02101,"622,00185-5000-01 ",.01)
 ;;00185-5000-01
 ;;9002226.02101,"622,00185-5000-01 ",.02)
 ;;00185-5000-01
 ;;9002226.02101,"622,00185-5000-10 ",.01)
 ;;00185-5000-10
 ;;9002226.02101,"622,00185-5000-10 ",.02)
 ;;00185-5000-10
 ;;9002226.02101,"622,00185-5254-01 ",.01)
 ;;00185-5254-01
 ;;9002226.02101,"622,00185-5254-01 ",.02)
 ;;00185-5254-01
 ;;9002226.02101,"622,00185-5254-10 ",.01)
 ;;00185-5254-10
 ;;9002226.02101,"622,00185-5254-10 ",.02)
 ;;00185-5254-10
 ;;9002226.02101,"622,00187-0497-01 ",.01)
 ;;00187-0497-01
 ;;9002226.02101,"622,00187-0497-01 ",.02)
 ;;00187-0497-01
 ;;9002226.02101,"622,00187-0497-02 ",.01)
 ;;00187-0497-02
 ;;9002226.02101,"622,00187-0497-02 ",.02)
 ;;00187-0497-02
 ;;9002226.02101,"622,00187-0498-01 ",.01)
 ;;00187-0498-01
 ;;9002226.02101,"622,00187-0498-01 ",.02)
 ;;00187-0498-01
 ;;9002226.02101,"622,00187-0498-02 ",.01)
 ;;00187-0498-02
 ;;9002226.02101,"622,00187-0498-02 ",.02)
 ;;00187-0498-02
 ;;9002226.02101,"622,00228-2089-10 ",.01)
 ;;00228-2089-10
 ;;9002226.02101,"622,00228-2089-10 ",.02)
 ;;00228-2089-10
 ;;9002226.02101,"622,00228-2091-10 ",.01)
 ;;00228-2091-10
 ;;9002226.02101,"622,00228-2091-10 ",.02)
 ;;00228-2091-10
 ;;9002226.02101,"622,00228-2092-10 ",.01)
 ;;00228-2092-10
 ;;9002226.02101,"622,00228-2092-10 ",.02)
 ;;00228-2092-10
 ;;9002226.02101,"622,00228-3016-11 ",.01)
 ;;00228-3016-11
 ;;9002226.02101,"622,00228-3016-11 ",.02)
 ;;00228-3016-11
 ;;9002226.02101,"622,00228-3016-96 ",.01)
 ;;00228-3016-96
 ;;9002226.02101,"622,00228-3016-96 ",.02)
 ;;00228-3016-96
 ;;9002226.02101,"622,00314-0135-20 ",.01)
 ;;00314-0135-20
 ;;9002226.02101,"622,00314-0135-20 ",.02)
 ;;00314-0135-20
 ;;9002226.02101,"622,00314-0206-10 ",.01)
 ;;00314-0206-10
 ;;9002226.02101,"622,00314-0206-10 ",.02)
 ;;00314-0206-10
 ;;9002226.02101,"622,00314-5462-10 ",.01)
 ;;00314-5462-10
 ;;9002226.02101,"622,00314-5462-10 ",.02)
 ;;00314-5462-10
 ;;9002226.02101,"622,00349-8834-01 ",.01)
 ;;00349-8834-01
 ;;9002226.02101,"622,00349-8834-01 ",.02)
 ;;00349-8834-01
 ;;9002226.02101,"622,00364-0479-01 ",.01)
 ;;00364-0479-01
 ;;9002226.02101,"622,00364-0479-01 ",.02)
 ;;00364-0479-01
 ;;9002226.02101,"622,00364-0479-02 ",.01)
 ;;00364-0479-02
 ;;9002226.02101,"622,00364-0479-02 ",.02)
 ;;00364-0479-02
 ;;9002226.02101,"622,00364-0561-01 ",.01)
 ;;00364-0561-01
 ;;9002226.02101,"622,00364-0561-01 ",.02)
 ;;00364-0561-01
 ;;9002226.02101,"622,00364-0561-02 ",.01)
 ;;00364-0561-02
 ;;9002226.02101,"622,00364-0561-02 ",.02)
 ;;00364-0561-02
 ;;9002226.02101,"622,00364-0562-01 ",.01)
 ;;00364-0562-01
 ;;9002226.02101,"622,00364-0562-01 ",.02)
 ;;00364-0562-01
 ;;9002226.02101,"622,00364-0562-02 ",.01)
 ;;00364-0562-02
 ;;9002226.02101,"622,00364-0562-02 ",.02)
 ;;00364-0562-02
 ;;9002226.02101,"622,00405-0125-01 ",.01)
 ;;00405-0125-01
 ;;9002226.02101,"622,00405-0125-01 ",.02)
 ;;00405-0125-01
 ;;9002226.02101,"622,00405-0125-03 ",.01)
 ;;00405-0125-03
 ;;9002226.02101,"622,00405-0125-03 ",.02)
 ;;00405-0125-03
 ;;9002226.02101,"622,00405-0126-01 ",.01)
 ;;00405-0126-01
 ;;9002226.02101,"622,00405-0126-01 ",.02)
 ;;00405-0126-01
 ;;9002226.02101,"622,00405-0126-03 ",.01)
 ;;00405-0126-03
 ;;9002226.02101,"622,00405-0126-03 ",.02)
 ;;00405-0126-03
 ;;9002226.02101,"622,00405-0127-01 ",.01)
 ;;00405-0127-01
 ;;9002226.02101,"622,00405-0127-01 ",.02)
 ;;00405-0127-01
 ;;9002226.02101,"622,00405-0127-03 ",.01)
 ;;00405-0127-03
 ;;9002226.02101,"622,00405-0127-03 ",.02)
 ;;00405-0127-03
 ;;9002226.02101,"622,00405-0128-01 ",.01)
 ;;00405-0128-01
 ;;9002226.02101,"622,00405-0128-01 ",.02)
 ;;00405-0128-01
 ;;9002226.02101,"622,00405-4796-01 ",.01)
 ;;00405-4796-01
 ;;9002226.02101,"622,00405-4796-01 ",.02)
 ;;00405-4796-01
 ;;9002226.02101,"622,00405-4796-03 ",.01)
 ;;00405-4796-03
 ;;9002226.02101,"622,00405-4796-03 ",.02)
 ;;00405-4796-03
 ;;9002226.02101,"622,00406-1121-01 ",.01)
 ;;00406-1121-01
 ;;9002226.02101,"622,00406-1121-01 ",.02)
 ;;00406-1121-01
 ;;9002226.02101,"622,00406-1121-10 ",.01)
 ;;00406-1121-10
 ;;9002226.02101,"622,00406-1121-10 ",.02)
 ;;00406-1121-10
 ;;9002226.02101,"622,00406-1122-01 ",.01)
 ;;00406-1122-01
 ;;9002226.02101,"622,00406-1122-01 ",.02)
 ;;00406-1122-01
 ;;9002226.02101,"622,00406-1122-10 ",.01)
 ;;00406-1122-10
 ;;9002226.02101,"622,00406-1122-10 ",.02)
 ;;00406-1122-10
 ;;9002226.02101,"622,00406-1124-01 ",.01)
 ;;00406-1124-01
 ;;9002226.02101,"622,00406-1124-01 ",.02)
 ;;00406-1124-01
 ;;9002226.02101,"622,00406-1124-10 ",.01)
 ;;00406-1124-10
 ;;9002226.02101,"622,00406-1124-10 ",.02)
 ;;00406-1124-10
 ;;9002226.02101,"622,00406-1423-01 ",.01)
 ;;00406-1423-01
 ;;9002226.02101,"622,00406-1423-01 ",.02)
 ;;00406-1423-01
 ;;9002226.02101,"622,00406-1451-01 ",.01)
 ;;00406-1451-01
 ;;9002226.02101,"622,00406-1451-01 ",.02)
 ;;00406-1451-01
 ;;9002226.02101,"622,00406-1552-01 ",.01)
 ;;00406-1552-01
 ;;9002226.02101,"622,00406-1552-01 ",.02)
 ;;00406-1552-01
 ;;9002226.02101,"622,00406-1554-01 ",.01)
 ;;00406-1554-01
 ;;9002226.02101,"622,00406-1554-01 ",.02)
 ;;00406-1554-01
 ;;9002226.02101,"622,00406-1558-01 ",.01)
 ;;00406-1558-01
 ;;9002226.02101,"622,00406-1558-01 ",.02)
 ;;00406-1558-01
 ;;9002226.02101,"622,00406-8854-01 ",.01)
 ;;00406-8854-01
 ;;9002226.02101,"622,00406-8854-01 ",.02)
 ;;00406-8854-01
 ;;9002226.02101,"622,00406-8884-01 ",.01)
 ;;00406-8884-01
 ;;9002226.02101,"622,00406-8884-01 ",.02)
 ;;00406-8884-01
 ;;9002226.02101,"622,00406-8885-01 ",.01)
 ;;00406-8885-01
 ;;9002226.02101,"622,00406-8885-01 ",.02)
 ;;00406-8885-01
 ;;9002226.02101,"622,00406-8886-01 ",.01)
 ;;00406-8886-01
 ;;9002226.02101,"622,00406-8886-01 ",.02)
 ;;00406-8886-01
 ;;9002226.02101,"622,00406-8891-01 ",.01)
 ;;00406-8891-01
 ;;9002226.02101,"622,00406-8891-01 ",.02)
 ;;00406-8891-01
 ;;9002226.02101,"622,00406-8892-01 ",.01)
 ;;00406-8892-01
 ;;9002226.02101,"622,00406-8892-01 ",.02)
 ;;00406-8892-01
 ;;9002226.02101,"622,00406-8893-01 ",.01)
 ;;00406-8893-01
 ;;9002226.02101,"622,00406-8893-01 ",.02)
 ;;00406-8893-01
 ;;9002226.02101,"622,00406-8894-01 ",.01)
 ;;00406-8894-01
 ;;9002226.02101,"622,00406-8894-01 ",.02)
 ;;00406-8894-01
 ;;9002226.02101,"622,00406-8958-01 ",.01)
 ;;00406-8958-01
 ;;9002226.02101,"622,00406-8958-01 ",.02)
 ;;00406-8958-01
 ;;9002226.02101,"622,00406-8959-01 ",.01)
 ;;00406-8959-01
 ;;9002226.02101,"622,00406-8959-01 ",.02)
 ;;00406-8959-01
 ;;9002226.02101,"622,00406-8960-01 ",.01)
 ;;00406-8960-01
 ;;9002226.02101,"622,00406-8960-01 ",.02)
 ;;00406-8960-01
 ;;9002226.02101,"622,00406-8961-01 ",.01)
 ;;00406-8961-01
 ;;9002226.02101,"622,00406-8961-01 ",.02)
 ;;00406-8961-01
 ;;9002226.02101,"622,00406-8962-01 ",.01)
 ;;00406-8962-01
 ;;9002226.02101,"622,00406-8962-01 ",.02)
 ;;00406-8962-01
 ;;9002226.02101,"622,00463-2043-10 ",.01)
 ;;00463-2043-10
 ;;9002226.02101,"622,00463-2043-10 ",.02)
 ;;00463-2043-10
 ;;9002226.02101,"622,00463-3029-10 ",.01)
 ;;00463-3029-10
 ;;9002226.02101,"622,00463-3029-10 ",.02)
 ;;00463-3029-10
 ;;9002226.02101,"622,00463-3036-10 ",.01)
 ;;00463-3036-10
 ;;9002226.02101,"622,00463-3036-10 ",.02)
 ;;00463-3036-10
 ;;9002226.02101,"622,00463-6266-10 ",.01)
 ;;00463-6266-10
 ;;9002226.02101,"622,00463-6266-10 ",.02)
 ;;00463-6266-10
 ;;9002226.02101,"622,00463-6273-10 ",.01)
 ;;00463-6273-10
 ;;9002226.02101,"622,00463-6273-10 ",.02)
 ;;00463-6273-10
 ;;9002226.02101,"622,00478-5451-01 ",.01)
 ;;00478-5451-01
 ;;9002226.02101,"622,00478-5451-01 ",.02)
 ;;00478-5451-01
 ;;9002226.02101,"622,00478-5451-05 ",.01)
 ;;00478-5451-05
 ;;9002226.02101,"622,00478-5451-05 ",.02)
 ;;00478-5451-05
 ;;9002226.02101,"622,00478-5451-10 ",.01)
 ;;00478-5451-10
 ;;9002226.02101,"622,00478-5451-10 ",.02)
 ;;00478-5451-10
 ;;9002226.02101,"622,00478-5452-01 ",.01)
 ;;00478-5452-01
 ;;9002226.02101,"622,00478-5452-01 ",.02)
 ;;00478-5452-01
 ;;9002226.02101,"622,00478-5452-05 ",.01)
 ;;00478-5452-05
 ;;9002226.02101,"622,00478-5452-05 ",.02)
 ;;00478-5452-05
 ;;9002226.02101,"622,00478-5452-10 ",.01)
 ;;00478-5452-10
 ;;9002226.02101,"622,00478-5452-10 ",.02)
 ;;00478-5452-10
 ;;9002226.02101,"622,00478-5460-01 ",.01)
 ;;00478-5460-01
 ;;9002226.02101,"622,00478-5460-01 ",.02)
 ;;00478-5460-01
 ;;9002226.02101,"622,00478-5460-10 ",.01)
 ;;00478-5460-10
 ;;9002226.02101,"622,00478-5460-10 ",.02)
 ;;00478-5460-10
 ;;9002226.02101,"622,00478-5460-50 ",.01)
 ;;00478-5460-50
 ;;9002226.02101,"622,00478-5460-50 ",.02)
 ;;00478-5460-50
 ;;9002226.02101,"622,00478-5462-01 ",.01)
 ;;00478-5462-01
 ;;9002226.02101,"622,00478-5462-01 ",.02)
 ;;00478-5462-01
 ;;9002226.02101,"622,00478-5462-02 ",.01)
 ;;00478-5462-02
 ;;9002226.02101,"622,00478-5462-02 ",.02)
 ;;00478-5462-02
 ;;9002226.02101,"622,00478-5462-05 ",.01)
 ;;00478-5462-05
 ;;9002226.02101,"622,00478-5462-05 ",.02)
 ;;00478-5462-05
 ;;9002226.02101,"622,00478-5462-10 ",.01)
 ;;00478-5462-10
 ;;9002226.02101,"622,00478-5462-10 ",.02)
 ;;00478-5462-10
 ;;9002226.02101,"622,00478-5469-01 ",.01)
 ;;00478-5469-01
 ;;9002226.02101,"622,00478-5469-01 ",.02)
 ;;00478-5469-01
 ;;9002226.02101,"622,00478-5469-10 ",.01)
 ;;00478-5469-10
 ;;9002226.02101,"622,00478-5469-10 ",.02)
 ;;00478-5469-10
 ;;9002226.02101,"622,00525-0509-01 ",.01)
 ;;00525-0509-01
 ;;9002226.02101,"622,00525-0509-01 ",.02)
 ;;00525-0509-01
 ;;9002226.02101,"622,00527-1317-01 ",.01)
 ;;00527-1317-01
 ;;9002226.02101,"622,00527-1317-01 ",.02)
 ;;00527-1317-01
 ;;9002226.02101,"622,00527-1317-10 ",.01)
 ;;00527-1317-10
 ;;9002226.02101,"622,00527-1317-10 ",.02)
 ;;00527-1317-10
 ;;9002226.02101,"622,00536-4236-01 ",.01)
 ;;00536-4236-01
 ;;9002226.02101,"622,00536-4236-01 ",.02)
 ;;00536-4236-01
 ;;9002226.02101,"622,00536-5925-01 ",.01)
 ;;00536-5925-01
 ;;9002226.02101,"622,00536-5925-01 ",.02)
 ;;00536-5925-01