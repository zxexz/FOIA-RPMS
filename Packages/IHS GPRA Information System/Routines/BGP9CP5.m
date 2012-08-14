BGP9CP5 ; IHS/CMI/LAB - IHS gpra print ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
 ;
PNALL ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP9CP Q:BGPQUIT  D L1H^BGP9CP
 S BGPNOBA=1
 D WRACE^BGP9CPU(DFN)
 Q:BGPQUIT
 D WDOB^BGP9CPU(DFN)
 Q:BGPQUIT
 D WZIP^BGP9CPU(DFN)
 Q:BGPQUIT
 D WINS^BGP9CPU(BGPVSIT,DFN)
 Q:BGPQUIT
 D WADM^BGP9CPU(BGPVINP)
 Q:BGPQUIT
 D WADM92^BGP9CPU(BGPVINP)
 Q:BGPQUIT
 D WADMS92^BGP9CPU(BGPVINP)
 Q:BGPQUIT
 D WDT^BGP9CPU(BGPVINP)
 Q:BGPQUIT
 D WDSGS92^BGP9CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP) D WTT^BGP9CPU(BGPVINP) Q:BGPQUIT
 K BGPNOBA
 D WPNEUPOV^BGP9CPU3(BGPVSIT)
 Q:BGPQUIT
 S BGPNOBA=1
 D OTHDPOVS^BGP9CPU(BGPVSIT)
 Q:BGPQUIT
 D WPRINPRO^BGP9CPU2
 Q:BGPQUIT
 D WOTHPROS^BGP9CPU2
 K BGPNOBA
 Q
 ;
PN1 ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP9CP Q:BGPQUIT  D L1H^BGP9CP
 I $$TRANSIN^BGP9CU(BGPVINP) D TRANSIN Q:BGPQUIT
 D WDT^BGP9CPU3(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP) D WTT^BGP9CPU3(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP),$$DODA^BGP9CU(BGPVSIT,BGPVINP) D TRANSN Q:BGPQUIT
 D WPPDPOV^BGP9CPU3(BGPVSIT)
 Q:BGPQUIT
 D OTHDPOVS^BGP9CPU3(BGPVSIT)
 Q:BGPQUIT
 I 'BGPEXCL D
 .S X=$$ERPNEU^BGP9CU(DFN,$$FMADD^XLFDT($P($P(BGPVSIT0,U),"."),-1),$P($P(BGPVSIT0,U),"."),"BGP CMS PNEUMONIA DXS")
 .D WERPNEU^BGP9CPU3
 .S X=$$ADMDX^BGP9CU(BGPVINP,"BGP CMS PNEUMONIA DXS")
 .D WADMDX^BGP9CPU3
 Q:BGPQUIT
 S X=$$COMFORT^BGP9CU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WCOMFORT^BGP9CPU3(X)
 Q:BGPQUIT
 K BGPDATA,BGPSCAN
 D CHESTXRY^BGP9CU(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-1),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPDATA)
 D CTSCAN^BGP9CU(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-1),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPSCAN)
 D WCHEST^BGP9CPU3
 Q:BGPQUIT
 I 'BGPEXCL D
 .S X=$$LASTDX^BGP9UTL1(DFN,"BGP CMS CYSTIC FIBROSIS DXS",$$DOB^AUPNPAT(DFN),$$DSCH^BGP9CU(BGPVINP))
 .D WCYSTIC^BGP9CPU3
 K BGPDATA
 D ABGPO^BGP9CU(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-1),$$FMADD^XLFDT($$DSCH^BGP9CU(BGPVINP)),.BGPDATA)
 D WABGPO^BGP9CPU3
 Q:BGPQUIT
 K BGPDATA
 D ALLALG1^BGP9CU1(DFN,DT,$$DSCH^BGP9CU(BGPVINP),.BGPDATA)
 D WALLALG^BGP9CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALGA1^BGP9CU1(DFN,DT,.BGPDATA)
 D WALLALGT^BGP9CPU
 K BGPDATA
 D IVUD^BGP9CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP9CU(BGPVINP),,.BGPDATA)
 D WIVUD^BGP9CPU
 Q
 ;
PN2 ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP9CP Q:BGPQUIT  D L1H^BGP9CP
 D WDT9^BGP9CPU3(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP) D WTT^BGP9CPU3(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP) D TRANSN2 Q:BGPQUIT
 D WPPDPOV^BGP9CPU3(BGPVSIT)
 Q:BGPQUIT
 D OTHDPOVS^BGP9CPU3(BGPVSIT)
 Q:BGPQUIT
 S X=$$COMFORT^BGP9CU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WCOMFORT^BGP9CPU3(X)
 Q:BGPQUIT
 K BGPDATA,BGPSCAN
 D CHESTXRY^BGP9CU(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-1),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPDATA)
 D CTSCAN^BGP9CU(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-1),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPSCAN)
 D WCHEST^BGP9CPU3
 Q:BGPQUIT
 I 'BGPEXCL D
 .S X=$$LASTDX^BGP9UTL1(DFN,"BGP CMS CYSTIC FIBROSIS DXS",$$DOB^AUPNPAT(DFN),$$DSCH^BGP9CU(BGPVINP))
 .D WCYSTIC^BGP9CPU3
 K BGPDATA
 D PNEUVAX^BGP9CU2(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP9CU(BGPVINP),$$DSCH^BGP9CU(BGPVINP),.BGPDATA)
 D WPNEUMO^BGP9CPU3
 Q:BGPQUIT
 K BGPDATA
 D ALLALG1^BGP9CU1(DFN,DT,$$DSCH^BGP9CU(BGPVINP),.BGPDATA)
 D WALLALG^BGP9CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALGA1^BGP9CU1(DFN,DT,.BGPDATA)
 D WALLALGT^BGP9CPU
 K BGPDATA
 D IVUD^BGP9CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP9CU(BGPVINP),,.BGPDATA)
 D WIVUD^BGP9CPU
 Q
 ; 
PN3B ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP9CP Q:BGPQUIT  D L1H^BGP9CP
 I $$TRANSIN^BGP9CU(BGPVINP) D TRANSIN3 Q:BGPQUIT
 I 'BGPEXCL D WDOD^BGP9CPU3(DFN)
 Q:BGPQUIT
 D WDT^BGP9CPU3(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP) D WTT^BGP9CPU3(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP) D TRANSN3 Q:BGPQUIT
 D WPPDPOV^BGP9CPU3(BGPVSIT)
 Q:BGPQUIT
 D OTHDPOVS^BGP9CPU3(BGPVSIT)
 Q:BGPQUIT
 I 'BGPEXCL D
 .S X=$$ERPNEU^BGP9CU(DFN,$$FMADD^XLFDT($P($P(BGPVSIT0,U),"."),-1),$P($P(BGPVSIT0,U),"."),"BGP CMS PNEUMONIA DXS")
 .D WERPNEU^BGP9CPU3
 .;S X=$$ADMDX^BGP9CU(BGPVINP,"BGP CMS PNEUMONIA DXS")
 .D WADMDX^BGP9CPU3
 Q:BGPQUIT
 S X=$$COMFORT^BGP9CU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WCOMFORT^BGP9CPU3(X)
 Q:BGPQUIT
 K BGPDATA,BGPSCAN
 D CHESTXRY^BGP9CU(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-1),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPDATA)
 D CTSCAN^BGP9CU(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-1),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPSCAN)
 D WCHEST^BGP9CPU3
 Q:BGPQUIT
 I 'BGPEXCL D
 .S X=$$LASTDX^BGP9UTL1(DFN,"BGP CMS CYSTIC FIBROSIS DXS",$$DOB^AUPNPAT(DFN),$$DSCH^BGP9CU(BGPVINP))
 .D WCYSTIC^BGP9CPU3
 K BGPDATA
 ;antibiotic rx status?
 D ANTIRX^BGP9CU3(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),.BGPDATA)
 D WANTIRX^BGP9CPU3
 Q:BGPQUIT
 K BGPDATA
 D ERBCP^BGP9CU3(DFN,$$FMADD^XLFDT($P($P(BGPVSIT0,U),"."),-1),$P($P(BGPVSIT0,U),"."),.BGPDATA)
 D WERBC^BGP9CPU3
 Q:BGPQUIT
 K BGPDATA
 D ALLALG1^BGP9CU1(DFN,DT,$$DSCH^BGP9CU(BGPVINP),.BGPDATA)
 D WALLALG^BGP9CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALGA1^BGP9CU1(DFN,DT,.BGPDATA)
 D WALLALGT^BGP9CPU
 K BGPDATA
 D IVUD^BGP9CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP9CU(BGPVINP),,.BGPDATA)
 D WIVUD^BGP9CPU
 Q
 ; 
PN4 ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP9CP Q:BGPQUIT  D L1H^BGP9CP
 I 'BGPEXCL D WDOD^BGP9CPU3(DFN)
 Q:BGPQUIT
 D WDT9^BGP9CPU3(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP) D WTT^BGP9CPU3(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP) D TRANSN2 Q:BGPQUIT
 D WPPDPOV^BGP9CPU3(BGPVSIT)
 Q:BGPQUIT
 D OTHDPOVS^BGP9CPU3(BGPVSIT)
 Q:BGPQUIT
 S X=$$COMFORT^BGP9CU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WCOMFORT^BGP9CPU3(X)
 Q:BGPQUIT
 K BGPDATA,BGPSCAN
 D CHESTXRY^BGP9CU(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-1),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPDATA)
 D CTSCAN^BGP9CU(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-1),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPSCAN)
 D WCHEST^BGP9CPU3
 Q:BGPQUIT
 I 'BGPEXCL D
 .S X=$$LASTDX^BGP9UTL1(DFN,"BGP CMS CYSTIC FIBROSIS DXS",$$DOB^AUPNPAT(DFN),$$DSCH^BGP9CU(BGPVINP))
 .D WCYSTIC^BGP9CPU3
 K BGPDATA
 ;antibiotic rx status?
 K BGPDATA
 S BGPC=0
 D SMOKER^BGP9CU2(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$DSCH^BGP9CU(BGPVINP),.BGPDATA)
 D WSMOKER^BGP9CPU
 Q:BGPQUIT
 K BGPDATA
 D CESS^BGP9CU2(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$$DSCH^BGP9CU(BGPVINP),.BGPDATA)
 D WCESS^BGP9CPU
 Q:BGPQUIT
 K BGPDATA
 D CESSMEDS^BGP9CU2(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$$DSCH^BGP9CU(BGPVINP),.BGPDATA)
 D WCESSMED^BGP9CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALG1^BGP9CU1(DFN,DT,$$DSCH^BGP9CU(BGPVINP),.BGPDATA)
 D WALLALG^BGP9CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALGA1^BGP9CU1(DFN,DT,.BGPDATA)
 D WALLALGT^BGP9CPU
 K BGPDATA
 D IVUD^BGP9CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP9CU(BGPVINP),,.BGPDATA)
 D WIVUD^BGP9CPU
 Q
 ; 
PN5B ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP9CP Q:BGPQUIT  D L1H^BGP9CP
 I $$TRANSIN^BGP9CU(BGPVINP) D TRANSIN Q:BGPQUIT
 I 'BGPEXCL D WDOD^BGP9CPU3(DFN)
 Q:BGPQUIT
 D WDT^BGP9CPU3(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP) D WTT^BGP9CPU3(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP) D TRANSN Q:BGPQUIT
 D WPPDPOV^BGP9CPU3(BGPVSIT)
 Q:BGPQUIT
 D OTHDPOVS^BGP9CPU3(BGPVSIT)
 Q:BGPQUIT
 I 'BGPEXCL D
 .S X=$$ERPNEU^BGP9CU(DFN,$$FMADD^XLFDT($P($P(BGPVSIT0,U),"."),-1),$P($P(BGPVSIT0,U),"."),"BGP CMS PNEUMONIA DXS")
 .D WERPNEU^BGP9CPU3
 .S X=$$ADMDX^BGP9CU(BGPVINP,"BGP CMS PNEUMONIA DXS")
 .D WADMDX^BGP9CPU3
 Q:BGPQUIT
 S X=$$COMFORT^BGP9CU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WCOMFORT^BGP9CPU3(X)
 Q:BGPQUIT
 K BGPDATA,BGPSCAN
 D CHESTXRY^BGP9CU(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-1),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPDATA)
 D CTSCAN^BGP9CU(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-1),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPSCAN)
 D WCHEST^BGP9CPU3
 Q:BGPQUIT
 ;antibiotic rx status?
 K BGPDATA
 D ANTIRX^BGP9CU3(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),.BGPDATA)
 D WANTIRX^BGP9CPU3
 Q:BGPQUIT
 I 'BGPEXCL D
 .S X=$$LASTDX^BGP9UTL1(DFN,"BGP CMS CYSTIC FIBROSIS DXS",$$DOB^AUPNPAT(DFN),$$DSCH^BGP9CU(BGPVINP))
 .D WCYSTIC^BGP9CPU3
 K BGPDATA
 ;D ERBCP^BGP9CU3(DFN,$$FMADD^XLFDT($P($P(BGPVSIT0,U),"."),-1),$P($P(BGPVSIT0,U),"."),.BGPDATA)
 ;D WERBC^BGP9CPU3
 Q:BGPQUIT
 K BGPDATA
 D ALLALG1^BGP9CU1(DFN,DT,$$DSCH^BGP9CU(BGPVINP),.BGPDATA)
 D WALLALG^BGP9CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALGA1^BGP9CU1(DFN,DT,.BGPDATA)
 D WALLALGT^BGP9CPU
 K BGPDATA
 D IVUD^BGP9CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP9CU(BGPVINP),,.BGPDATA)
 D WIVUD^BGP9CPU
 Q
 ;
PN6 ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP9CP Q:BGPQUIT  D L1H^BGP9CP
 I $$TRANSIN^BGP9CU(BGPVINP) D TRANSIN Q:BGPQUIT
 I 'BGPEXCL D WDOD^BGP9CPU3(DFN)
 Q:BGPQUIT
 D WDT^BGP9CPU3(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP) D WTT^BGP9CPU3(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP) D TRANSN Q:BGPQUIT
 D WPPDPOV^BGP9CPU3(BGPVSIT)
 Q:BGPQUIT
 D OTHDPOVS^BGP9CPU3(BGPVSIT)
 Q:BGPQUIT
 I 'BGPEXCL D
 .S X=$$ERPNEU^BGP9CU(DFN,$$FMADD^XLFDT($P($P(BGPVSIT0,U),"."),-1),$P($P(BGPVSIT0,U),"."),"BGP CMS PNEUMONIA DXS")
 .D WERPNEU^BGP9CPU3
 .S X=$$ADMDX^BGP9CU(BGPVINP,"BGP CMS PNEUMONIA DXS")
 .D WADMDX^BGP9CPU3
 Q:BGPQUIT
 S X=$$COMFORT^BGP9CU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WCOMFORT^BGP9CPU3(X)
 Q:BGPQUIT
 K BGPDATA
 I 'BGPEXCL D  Q:BGPQUIT
 .K BGPDATA
 .D EXCLCOMP^BGP9CU4(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPDATA)
 .D WEXCL1^BGP9CPU3
 .Q:BGPQUIT
 .S X=$$PRIORHOS^BGP9CU4(DFN,$$FMADD^XLFDT($P($P(BGPVSIT0,U),"."),-14),$P($P(BGPVSIT0,U),"."),BGPVSIT)
 .S Y=$$HOS2DAYS^BGP9CU4(DFN,$$FMADD^XLFDT($P($P(BGPVSIT0,U),"."),-90),$P($P(BGPVSIT0,U),"."))
 .D WPRIORHO^BGP9CPU3
 .Q:BGPQUIT
 .S X=$$NURSHOME^BGP9CU4(DFN,$$FMADD^XLFDT($P($P(BGPVSIT0,U),"."),-90),$P($P(BGPVSIT0,U),"."))
 .D WNURSHOM^BGP9CPU3
 .Q:BGPQUIT
 .S X=$$WOUNDCAR^BGP9CU4(DFN,$$FMADD^XLFDT($P($P(BGPVSIT0,U),"."),-30),$P($P(BGPVSIT0,U),"."))
 .D WWOUND^BGP9CPU3
 K BGPDATA,BGPSCAN
 D CHESTXRY^BGP9CU(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-1),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPDATA)
 D CTSCAN^BGP9CU(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-1),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPSCAN)
 D WCHEST^BGP9CPU3
 Q:BGPQUIT
 S X=$$ADMDX^BGP9CU(BGPVINP,"BGP CMS OTHER INFECTION DXS")
 D WOTHINF^BGP9CPU3
 Q:BGPQUIT
 K BGPDATA
 I 'BGPEXCL D  Q:BGPQUIT
 .S X=$$LASTDX^BGP9UTL1(DFN,"BGP CMS CYSTIC FIBROSIS DXS",$$DOB^AUPNPAT(DFN),$$DSCH^BGP9CU(BGPVINP))
 .D WCYSTIC^BGP9CPU3
 K BGPDATA
 S BGPPSE=$$PSEUDO^BGP9CU4(BGPVINP)
 S BGPCOPD=$$COPD^BGP9CU4(DFN,$$DSCH^BGP9CU(BGPVINP))
 D WPSEUDO^BGP9CPU3
 Q:BGPQUIT
 ;antibiotic rx status?
 K BGPDATA
 D ANTIRX^BGP9CU3(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),.BGPDATA)
 D WANTIRX^BGP9CPU3
 Q:BGPQUIT
 ;D ERBCP^BGP9CU3(DFN,$$FMADD^XLFDT($P($P(BGPVSIT0,U),"."),-1),$P($P(BGPVSIT0,U),"."),.BGPDATA)
 ;D WERBC^BGP9CPU3
 Q:BGPQUIT
 K BGPDATA
 D ALLALG1^BGP9CU1(DFN,DT,$$DSCH^BGP9CU(BGPVINP),.BGPDATA)
 D WALLALG^BGP9CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALGA1^BGP9CU1(DFN,DT,.BGPDATA)
 D WALLALGT^BGP9CPU
 K BGPDATA
 D IVUD^BGP9CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP9CU(BGPVINP),,.BGPDATA)
 D WIVUD^BGP9CPU
 Q
 ; 
PN7 ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP9CP Q:BGPQUIT  D L1H^BGP9CP
 D WDT9^BGP9CPU3(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP) D WTT^BGP9CPU3(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP) D TRANSN Q:BGPQUIT
 D WPPDPOV^BGP9CPU3(BGPVSIT)
 Q:BGPQUIT
 D OTHDPOVS^BGP9CPU3(BGPVSIT)
 Q:BGPQUIT
 S X=$$COMFORT^BGP9CU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WCOMFORT^BGP9CPU3(X)
 Q:BGPQUIT
 D EXCL487^BGP9CPU3
 K BGPDATA,BGPSCAN
 D CHESTXRY^BGP9CU(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-1),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPDATA)
 D CTSCAN^BGP9CU(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-1),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPSCAN)
 D WCHEST^BGP9CPU3
 Q:BGPQUIT
 I 'BGPEXCL D
 .S X=$$LASTDX^BGP9UTL1(DFN,"BGP CMS CYSTIC FIBROSIS DXS",$$DOB^AUPNPAT(DFN),$$DSCH^BGP9CU(BGPVINP))
 .D WCYSTIC^BGP9CPU3
 K BGPDATA
 ;
 D FLUVAX^BGP9CU4(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$DSCH^BGP9CU(BGPVINP),$$DSCH^BGP9CU(BGPVINP),.BGPDATA)
 ;
 D WFLU^BGP9CPU3
 Q:BGPQUIT
 K BGPDATA
 D ALLALG1^BGP9CU1(DFN,DT,$$DSCH^BGP9CU(BGPVINP),.BGPDATA)
 D WALLALG^BGP9CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALGA1^BGP9CU1(DFN,DT,.BGPDATA)
 D WALLALGT^BGP9CPU
 K BGPDATA
 D IVUD^BGP9CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP9CU(BGPVINP),,.BGPDATA)
 D WIVUD^BGP9CPU
 Q
 ; 
TRANSIN ;
 I $Y>(BGPIOSL-4) D HDR^BGP9CP Q:BGPQUIT  D L1H^BGP9CP
 W !!?3,"NOTE:  Since Admission Type was ","""","Transferred,",""""," review patient's chart"
 W !,"to determine if patient should be excluded if transfer was from another"
 W !,"acute care hospital, including ER from another hospital.",!
 Q
 ;
TRANSN ;
 I $Y>(BGPIOSL-4) D HDR^BGP9CP Q:BGPQUIT  D L1H^BGP9CP
 W !!?3,"NOTE:  Since Discharge Type was ","""","Transferred,",""""," review patient's chart"
 W !,"to determine if patient should be excluded if transferred to another"
 W !,"acute care hospital or federal hospital.",!
 Q
TRANSN2 ;
 I $Y>(BGPIOSL-4) D HDR^BGP9CP Q:BGPQUIT  D L1H^BGP9CP
 W !!?3,"NOTE:  Since Discharge Type was ","""","Transferred,",""""," review patient's chart"
 W !,"to determine if patient should be excluded if transferred to another"
 W !,"short term hospital, federal hospital, or to hospice.",!
 Q
TRANSN3 ;
 I $Y>(BGPIOSL-4) D HDR^BGP9CP Q:BGPQUIT  D L1H^BGP9CP
 W !!?3,"NOTE:  Since Discharge Type was ","""","Transferred,",""""," review patient's chart"
 W !,"to determine if patient should be excluded if transferred to another"
 W !,"acute care hospital or federal hospital on day of or day after arrival.",!
 Q
TRANSIN3 ;
 I $Y>(BGPIOSL-4) D HDR^BGP9CP Q:BGPQUIT  D L1H^BGP9CP
 W !!?3,"NOTE:  Since Admission Type was ","""","Transferred,",""""," review patient's chart"
 W !,"to determine if patient should be excluded if transfer was from another"
 W !,"acute care or critical care access hospital, including ER from another hospital.",!
 Q
 ;