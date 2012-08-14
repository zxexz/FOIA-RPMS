INHPSA3 ; FRW,KAC ; 22 Oct 1999 16:02 ; Interface Control - applications - data (continued)
 ;;3.01;BHL IHS Interfaces with GIS;;JUL 01, 2001
 ;COPYRIGHT 1991-2000 SAIC
 ;
 Q
 ;
DATA ;data - INHPSAM for description of structure
 ;;;       DESTINATION:   EMPTY
MHC ;;     DESTINATION: MHCMIS
 ;;4005^^MHCMIS
 ;;4004^^MHCMIS TRANSMITTER
 ;;4000^^HL CIW IVP ORDER OUT
 ;;4000^^HL DG ADMIT OUT (MHC)
 ;;4000^^HL DG CANCEL ADMIT OUT (MHC)
 ;;4000^^HL DG CANCEL DISCHARGE OUT (MHC)
 ;;4000^^HL DG CANCEL TRANSFER OUT (MHC)
 ;;4000^^HL DG DISCHARGE PATIENT OUT (MHC)
 ;;4000^^HL DG MERGE PATIENT OUT (MHC)
 ;;4000^^HL DG REG OUT (MHC)
 ;;4000^^HL DG TRANSFER OUT (MHC)
 ;;4000^^HL DG UPDATE OUT (MHC)
 ;;4000^^HL DG UPDATE PATIENT OUT (MHC)
 ;;4000^^HL LAB AP RESULTS - MHC
 ;;4000^^HL LAB CH RESULTS - MHC
 ;;4000^^HL LAB BB RESULTS - OUT
 ;;4000^^HL LAB BB RESULTS - MHC
 ;;4000^^HL LAB METHOD (C)
 ;;4000^^HL LAB MI RESULTS - MHC
 ;;4000^^HL OR IV
 ;;4000^^HL OR IVD
 ;;4000^^HL OR IVF
 ;;4000^^HL OR IVH
 ;;4000^^HL OR IVH MODIFY
 ;;4000^^HL OR IVP
 ;;4000^^HL OR UNIT DOSE
 ;;4000^^HL PAS APPOINTMENT (MHCMIS)
 ;;4000^^HL PSO NEW PRESCRIPTION
 ;;4000^^HL PSO RX ACTION (MHCMIS)
 ;;4000^^HL RAD RESULTS (MHCMIS)
 ;;4000^^HL RAD EXAM ONLY
 ;;4000^^HL RAD EXAM ONLY (MHCMIS)
 ;;4000^^INCOMING ACK^1
 ;;4000^^HL GIS ACCEPT ACKNOWLEDGEMENT^1
 ;;4000^^HL GIS APPL ACKNOWLEDGEMENT^1
 ;;4000^^HL MASTER FILE NOTIFICATION (MHC)
 ;;4000^^HL LAB CPT WORKLOAD - MHC
 ;;
NMIS ;;     DESTINATION: HL NMIS - OUT
 ;;4005^^HL NMIS - OUT
 ;;4004^^NMIS TRANSMITTER
 ;;4000^^HL CIW DIET ORDER - OUT (NMIS)
 ;;4000^^HL DG ADMIT OUT (NMIS)
 ;;4000^^HL DG CANCEL ADMIT OUT (NMIS)
 ;;4000^^HL DG CANCEL DISCHARGE OUT (NMIS)
 ;;4000^^HL DG CANCEL TRANSFER OUT (NMIS)
 ;;4000^^HL DG DISCHARGE PATIENT OUT (NMIS)
 ;;4000^^HL DG GO ON LEAVE OF ABSENCE OUT (NMIS)
 ;;4000^^HL DG ID DUP OUT (NMIS)
 ;;4000^^HL DG MERGE PATIENT OUT (NMIS)
 ;;4000^^HL DG REG OUT (NMIS)
 ;;4000^^HL DG RET FROM LEAVE OF ABSENCE OUT (NMIS)
 ;;4000^^HL DG SWAP BEDS OUT (NMIS)
 ;;4000^^HL DG TRANSFER OUT (NMIS)
 ;;4000^^HL DG UN-ID DUP OUT (NMIS)
 ;;4000^^HL DG UPDATE OUT (NMIS)
 ;;4000^^HL DG UPDATE PATIENT OUT (NMIS)
 ;;4000^^HL LAB CH RESULTS - NMIS
 ;;4000^^HL LAB CH RESULTS PASQ - NMIS
 ;;4000^^HL OR BROADCAST RX (NMIS)
 ;;4000^^HL OR IVD (NMIS)
 ;;4000^^HL OR IVD ORDER (NMIS)
 ;;4000^^HL OR IVF (NMIS)
 ;;4000^^HL OR IVH (NMIS)
 ;;4000^^HL OR IVH COMPLEX IVF (NMIS)
 ;;4000^^HL OR IVP (NMIS)
 ;;4000^^HL OR IVP ORDER OUT (NMIS)
 ;;4000^^HL OR MED ORDER (NMIS)
 ;;4000^^HL OR UNIT DOSE (NMIS)
 ;;4000^^HL OR SIMPLE IVF (NMIS)
 ;;4000^^HL PAS APPOINTMENT (NMIS)
 ;;4000^^INCOMING ACK^1
 ;;4000^^HL GIS ACCEPT ACKNOWLEDGEMENT^1
 ;;4000^^HL GIS APPL ACKNOWLEDGEMENT^1
 ;;
PAR ;;PARRTS Interface
 ;;4004^^PARRTS TRANSMITTER
 ;;4000^^HL DG ADMIT OUT (PARRTS)
 ;;4000^^HL DG CANCEL ADMIT OUT (PARRTS)
 ;;4000^^HL DG DISCHARGE PATIENT OUT (PARRTS)
 ;;4000^^HL DG CANCEL DISCHARGE OUT (PARRTS)
 ;;4000^^HL DG UPDATE OUT (PARRTS)
 ;;4000^^HL DG UPDATE PATIENT OUT (PARRTS)
 ;;4000^^HL DG REG OUT (PARRTS)
 ;;4000^^INCOMING ACK^1
 ;;4000^^HL GIS ACCEPT ACKNOWLEDGEMENT^1
 ;;4000^^HL GIS APPL ACKNOWLEDGEMENT^1
 ;;
PWS ;;     DESTINATION: HL INH LOGON REQUEST FROM REMOTE SYSTEM
 ;;4005^^HL INH LOGON REQUEST FROM REMOTE SYSTEM
 ;;4004^^CHCS LOGON SERVER
 ;;4004^^PWS APP SERVER
 ;;4000^^HL PWS LOGON REQUEST FROM REMOTE SYSTEM
 ;;4000^^HL PWS LOGON REQUEST FROM REMOTE SYSTEM - ACK
 ;;4000^^HL INH APPLICATION SERVER LOGOFF
 ;;4000^^HL INH APPLICATION SERVER LOGOFF - ACK
 ;;4000^^HL INH APPLICATION SERVER LOGON
 ;;4000^^HL INH APPLICATION SERVER LOGON - ACK
 ;;4000^^HL ORPW LAB ORDER ACK
 ;;4000^^HL ORPW LAB ORDER IN
 ;;4000^^HL ORPW LAB ORDER - OUT
 ;;4000^^HL ORPW PATIENT ACK
 ;;4000^^HL ORPW PATIENT LOOKUP - IN
 ;;4000^^HL ORPW PATIENT LOOKUP ACK
 ;;4000^^HL ORPW PATIENT SELECT
 ;;4000^^HL ORPW RAD ORDER ACK
 ;;4000^^HL ORPW RAD ORDER - IN
 ;;4000^^HL ORPW RAD ORDER - OUT
 ;;4000^^HL ORPW RX ORDER ACK
 ;;4000^^HL ORPW RX ORDER - IN
 ;;4000^^HL ORPW RX ORDER - OUT
 ;;4000^^INCOMING ACK^1
 ;;4000^^HL GIS ACCEPT ACKNOWLEDGEMENT^1
 ;;4000^^HL GIS APPL ACKNOWLEDGEMENT^1
 ;;
DDSA ;;     DESTINATION: HL INH LOGON REQUEST FROM REMOTE SYSTEM
 ;;4005^^HL INH LOGON REQUEST FROM REMOTE SYSTEM
 ;;4004^^DDSA TRANSMITTER
 ;;4004^^CHCS LOGON SERVER
 ;;4004^^PWS APP SERVER
 ;;4000^^HL PWS LOGON REQUEST FROM REMOTE SYSTEM^1
 ;;4000^^HL PWS LOGON REQUEST FROM REMOTE SYSTEM - ACK^1
 ;;4000^^HL INH APPLICATION SERVER LOGOFF^1
 ;;4000^^HL INH APPLICATION SERVER LOGOFF - ACK^1
 ;;4000^^HL INH APPLICATION SERVER LOGON^1
 ;;4000^^HL INH APPLICATION SERVER LOGON - ACK^1
 ;;4000^^HL ORPW PATIENT LOOKUP - IN^1
 ;;4000^^HL ORPW PATIENT LOOKUP ACK^1
 ;;4000^^HL DDSA PATIENT REQUEST - IN
 ;;4000^^HL DDSA PATIENT REQUEST - ACK
 ;;4000^^HL DDSA APPT REQUEST - IN
 ;;4000^^HL DDSA APPT REQUEST - ACK
 ;;4000^^HL DDSA QR PAT DEM - IN
 ;;4000^^HL DDSA QR PAT DEM - ACK
 ;;4000^^HL DDSA QR APPT HIS - IN
 ;;4000^^HL DDSA QR APPT HIS - ACK
 ;;4000^^HL MASTER FILE NOTIFICATION (DDSA)
 ;;4000^^INCOMING ACK^1
 ;;4000^^HL GIS ACCEPT ACKNOWLEDGEMENT^1
 ;;4000^^HL GIS APPL ACKNOWLEDGEMENT^1
 ;;
TSC ;;     DESTINATION: HL TSC OUT and HL TSC IN
 ;;4005^^HL TSC OUT
 ;;4004^^TSC RECEIVER
 ;;4004^^TSC TRANSMITTER
 ;;4000^^HL CP S12 NEW APPT BOOKING OUT CHILD
 ;;4000^^HL CP S14 APPT MODIFICATION OUT CHILD
 ;;4000^^HL CP S15 APPT CANCELLATION OUT CHILD
 ;;4000^^HL CP Z01 PROVIDER (CHILD-O)
 ;;4000^^HL CP Z01 PROVIDER IN
 ;;4000^^HL CP Z02 PLACE OF CARE (CHILD-O)
 ;;4000^^HL CP Z02 PLACE OF CARE IN
 ;;4000^^HL CP Z03 GROUP (CHILD-O)
 ;;4000^^HL CP Z03 GROUP IN
 ;;4000^^HL CP Z04 GROUP POC (CHILD-O)
 ;;4000^^HL CP Z04 GROUP POC IN
 ;;4000^^HL CP Z05 GROUP AGR (CHILD-O)
 ;;4000^^HL CP Z05 GROUP AGR IN
 ;;4000^^HL CP Z06 GROUP PROVIDER (CHILD-O)
 ;;4000^^HL CP Z06 GROUP PROVIDER IN
 ;;4000^^HL CP Z07 GROUP PROV POC (CHILD-O)
 ;;4000^^HL CP Z07 GROUP PROV POC IN
 ;;4000^^HL CP Z08 GROUP PROV AGR (CHILD-O)
 ;;4000^^HL CP Z08 GROUP PROV AGR IN
 ;;4000^^HL CP Z10 INSURANCE IN
 ;;4000^^HL CP Z10 INSURANCE (CHILD) OUT
 ;;4000^^HL CP Z20 ENROLLMENT DATA CHILD
 ;;4000^^HL CP Z30 MCP REFERRAL OUT CHILD
 ;;4000^^HL CP Z31 MCP APPT REFUSED OUT CHILD
 ;;4000^^HL DG MERGE PATIENT OUT (TSC)
 ;;4000^^HL DG REG OUT (TSC)
 ;;4000^^HL DG UPDATE OUT (TSC)
 ;;4000^^HL MASTER FILE NOTIFICATION (TSC)
 ;;4000^^HL MASTER FILE NOTIFICATION APPLICATION ACK - OUT^1
 ;;4000^^HL MASTER FILE NOTIFICATION - IN^1
 ;;4000^^HL TSC ACKNOWLEDGEMENT
 ;;4000^^INCOMING ACK^1
 ;;4000^^HL GIS ACCEPT ACKNOWLEDGEMENT^1
 ;;4000^^HL GIS APPL ACKNOWLEDGEMENT^1
 ;;
TSCL ;;     DESTINATION: HL TSC LOADER
 ;;4005^^HL TSC LOADER
 ;;4000^^HL CP LOADER A28 (CHILD-O)
 ;;4000^^HL CP LOADER A31 (CHILD-O)
 ;;4000^^HL CP LOADER Z01 (CHILD-O)
 ;;4000^^HL CP LOADER Z02 (CHILD-O)
 ;;4000^^HL CP LOADER Z03 (CHILD-O)
 ;;4000^^HL CP LOADER Z04 (CHILD-O)
 ;;4000^^HL CP LOADER Z05 (CHILD-O)
 ;;4000^^HL CP LOADER Z06 (CHILD-O)
 ;;4000^^HL CP LOADER Z07 (CHILD-O)
 ;;4000^^HL CP LOADER Z08 (CHILD-O)
 ;;4000^^HL CP LOADER Z10 (CHILD-O)
 ;;4000^^HL CP LOADER Z20 (CHILD-O)
 ;;4000^^HL MASTER FILE NOTIFICATION LOAD (TSC)
 ;;4000^^INCOMING ACK^1
 ;;4000^^HL GIS ACCEPT ACKNOWLEDGEMENT^1
 ;;4000^^HL GIS APPL ACKNOWLEDGEMENT^1
 ;;
TEST ;;       DESTINATION: TEST *
 ;;4004^^TEST RECEIVER
 ;;4004^^TEST TRANSMITTER
 ;;4004^^TEST SR RECEIVER
 ;;4004^^TEST SR TRANSMITTER
 ;;4000^^HL PATIENT QUERY
 ;;4000^^TEST ACK - IN
 ;;4000^^TEST CONTROL - VMS IN
 ;;4000^^TEST DAVE - VMS IN
 ;;4000^^TEST ACK - OUT
 ;;4000^^TEST CONTROL - OUT
 ;;4000^^TEST CONTROL - VMS OUT
 ;;4000^^TEST DAVE -DEST2
 ;;4000^^TEST DAVE - VMS OUT
 ;;4000^^TEST DAVE -DEST 1
 ;;4000^^TEST SLT (C1)
 ;;4000^^TEST SR OUT (C)
 ;;4000^^TEST SR 1 OUT (R)
 ;;4000^^TEST SR 2 OUT (R)
 ;;4000^^TEST SR Z01 IN
 ;;4000^^TEST SR IN - ACK
 ;;4000^^TEST DAVE-MULTIPLE
 ;;4000^^INCOMING ACK^1
 ;;4000^^HL GIS ACCEPT ACKNOWLEDGEMENT^1
 ;;4000^^HL GIS APPL ACKNOWLEDGEMENT^1
 ;;
TRAC ;;Traces Interface
 ;;4005^^HL TRACES
 ;;4004^^TRACES TRANSMITTER
 ;;4000^^HL DG ADMIT OUT (TRACES)
 ;;4000^^HL DG CANCEL ADMIT OUT (TRACES)
 ;;4000^^HL DG CANCEL DISCHARGE OUT (TRACES)
 ;;4000^^HL DG CANCEL TRANSFER OUT (TRACES)
 ;;4000^^HL DG DISCHARGE PATIENT OUT (TRACES)
 ;;4000^^HL DG MERGE PATIENT OUT (TRACES)
 ;;4000^^HL DG REG OUT (TRACES)
 ;;4000^^HL DG TRANSFER OUT (TRACES)
 ;;4000^^HL DG UPDATE OUT (TRACES)
 ;;4000^^HL DG UPDATE PATIENT OUT (TRACES)
 ;;4000^^HL MASTER FILE NOTIFICATION (TRACES)
 ;;