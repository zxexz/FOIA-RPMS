ORRCLNP ; SLC/JER - Person functions for CM ; 25 Jul 2003  9:31 AM
 ;;1.0;CARE MANAGEMENT;;Jul 15, 2003
EMAIL(USER) ; e-mail address
 Q $$NETNAME^XMXUTIL(USER)
NAME(USER) ; Person Name
 Q $$NAME^XUSER(USER)
SSNL4(USER) ; SSN Last4
 N ORRCY
 S ORRCY=$P($G(^VA(200,USER,1)),U,9)
 Q $S(+ORRCY:$E(ORRCY,6,10),1:ORRCY)
SEX(USER) ; Person SEX
 Q $P($G(^VA(200,USER,1)),U,2)
PROVIDER(USER) ; Boolean fn: is user a provider
 Q $S(+$D(^XUSEC("PROVIDER",USER)):1,+$$ISA^USRLM(USER,"PROVIDER"):1,1:0)