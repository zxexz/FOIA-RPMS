DPTDOD ; IHS/TUCSON/JCM - COMPARES DATE OF DEATH'S ;
 ;;1.0;PATIENT MERGE;;FEB 02, 1994
 ;
 ; Calls: EN^DPTDOB
 ;
START ;
 I $G(XDRCD(XDRFL,XDRCD,.351,"I"))']""!($G(XDRCD2(XDRFL,XDRCD2,.351,"I"))']"") G END
 D INIT
 D EN^DPTDOB
END Q
 ;
INIT ;
 K DPTDOB,DPTDOB2
 S DPTDOB=XDRCD(XDRFL,XDRCD,.351,"I"),DPTDOB2=XDRCD2(XDRFL,XDRCD2,.351,"I")
 S DPTDOB("MATCH")=$P(XDRDTEST(XDRDTO),U,6)
 S DPTDOB("NO MATCH")=$P(XDRDTEST(XDRDTO),U,7)
 Q