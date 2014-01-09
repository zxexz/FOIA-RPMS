BPXRMP8D ;IHS/CIA/MGH - Patch 8 DELETES. ;16-Nov-2011 15:20;DU
 ;;1.5;CLINICAL REMINDERS;**1008**;Jun 19, 2000;Build 25
 ;Delete old items in reminder exchange
 ;
 ;===============================================================
DELEI ;If the Exchange File entry already exists delete it.
 ;
 N IND,LIST,PXRMVAL,NUM
 ;
 S PXRMVAL(1)="IHS-ALCOHOL SCREEN 2009"
 D BDEL
 S PXRMVAL(1)="IHS-ALCOHOL SCREEN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-ASTHMA PRIM PROV 2009"
 D BDEL
 S PXRMVAL(1)="IHS-ASTHMA PRIM PROV 2011"
 D BDEL
 S PXRMVAL(1)="IHS-ASTHMA SEVERITY 2009"
 D BDEL
 S PXRMVAL(1)="IHS-ASTHMA STEROID 2011"
 D BDEL
 S PXRMVAL(1)="IHS-ASTHMA PLAN 2009"
 D BDEL
 S PXRMVAL(1)="IHS-ASTHMA PLAN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-ASTHMA SEVERITY 2009"
 D BDEL
 S PXRMVAL(1)="IHS-ASTHMA SEVERITY 2011"
 D BDEL
 S PXRMVAL(1)="IHS-ASTHMA STEROID 2009"
 D BDEL
 S PXRMVAL(1)="IHS-ASTHMA STEROID 2011"
 D BDEL
 S PXRMVAL(1)="IHS-ANTICOAG CBC 2011"
 D BDEL
 S PXRMVAL(1)="IHS-ANTICOAG DURATION OF TX 2011"
 D BDEL
 S PXRMVAL(1)="IHS-ANTICOAG INR GOAL 2011"
 D BDEL
 S PXRMVAL(1)="IHS-ANTICOAG OCCULT BLOOD 2011"
 D BDEL
 S PXRMVAL(1)="HS-ANTICOAG THERAPY EHD DATE 2011"
 D BDEL
 S PXRMVAL(1)="IHS-ANTICOAG UA 2011"
 D BDEL
 S PXRMVAL(1)="IHS-DIAB ASPIRIN 2007"
 D BDEL
 S PXRMVAL(1)="IHS-BLOOD PRESSURE"
 D BDEL
 S PXRMVAL(1)="IHS-BLOOD PRESSURE 2011"
 D BDEL
 S PXRMVAL(1)="IHS-COLON CANCER 2009"
 D BDEL
 S PXRMVAL(1)="IHS-COLON CANCER 2011"
 D BDEL
 S PXRMVAL(1)="IHS-DENTAL VISIT"
 D BDEL
 S PXRMVAL(1)="IHS-DENTAL VISIT 2011"
 D BDEL
 S PXRMVAL(1)="IHS-DEPRESSION SCREEN 2008"
 D BDEL
 S PXRMVAL(1)="IHS-DEPRESSION SCREEN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-DOMESTIC VIOLENCE 2009"
 D BDEL
 S PXRMVAL(1)="IHS-DOMESTIC VIOLENCE 2011"
 D BDEL
 S PXRMVAL(1)="IHS-DIAB ACE/ARB 2007"
 D BDEL
 S PXRMVAL(1)="IHS-DIAB ACE/ARB 2011"
 D BDEL
 S PXRMVAL(1)="IHS-DIAB ASPIRIN 2009"
 D BDEL
 S PXRMVAL(1)="IHS-DIAB ASPIRIN FEMALE 2011"
 D BDEL
 S PXRMVAL(1)="IHS-DIAB ASPIRIN MALE 2011"
 D BDEL
 S PXRMVAL(1)="IHS-DIAB DENTAL EXAM"
 D BDEL
 S PXRMVAL(1)="IHS-DIAB EYE EXAM 2007"
 D BDEL
 S PXRMVAL(1)="IHS-DIAB EYE EXAM 2011"
 D BDEL
 S PXRMVAL(1)="IHS-DIAB FOOT EXAM 2008"
 D BDEL
 S PXRMVAL(1)="IHS-DIAB FOOT EXAM 2011"
 D BDEL
 S PXRMVAL(1)="IHS-DIAB HGBA1C 2007"
 D BDEL
 S PXRMVAL(1)="IHS-DIAB HGBA1C 2011"
 D BDEL
 S PXRMVAL(1)="IHS-DIABETES SCREENING"
 D BDEL
 S PXRMVAL(1)="IHS-DIABETES SCREENING 2011"
 D BDEL
 S PXRMVAL(1)="IHS-EPSDT EVALUATION"
 D BDEL
 S PXRMVAL(1)="IHS-EPSDT EVALUATION 2011"
 D BDEL
 S PXRMVAL(1)="IHS-HCT/HGB"
 D BDEL
 S PXRMVAL(1)="IHS-HCT/HGB 2011"
 D BDEL
 S PXRMVAL(1)="IHS-HEARING TEST 2009"
 D BDEL
 S PXRMVAL(1)="IHS-HEARING TEST 2011"
 D BDEL
 S PXRMVAL(1)="HS-HEP A ADULT IMMUN 2008"
 D BDEL
 S PXRMVAL(1)="HS-HEP A ADULT IMMUN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-HEP B ADULT IMMUN 2008"
 D BDEL
 S PXRMVAL(1)="IHS-HEP B ADULT IMMUN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-HIV SCREEN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-INFLUENZA IMMUN 2008"
 D BDEL
 S PXRMVAL(1)="IHS-INFLUENZA IMMUN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-HPV IMMUN 2008"
 D BDEL
 S PXRMVAL(1)="IHS-HPV IMMUN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-LIPID FEMALE"
 D BDEL
 S PXRMVAL(1)="IHS-LIPID FEMALE 2011"
 D BDEL
 S PXRMVAL(1)="IHS-LIPID MALE"
 D BDEL
 S PXRMVAL(1)="IHS-LIPID MALE 2011"
 D BDEL
 S PXRMVAL(1)="IHS-MAMMOGRAM 2009"
 D BDEL
 S PXRMVAL(1)="IHS-MAMMOGRAM 2011"
 D BDEL
 S PXRMVAL(1)="IHS-MENINGITIS IMMUN 2008"
 D BDEL
 S PXRMVAL(1)="IHS-MENINGITIS IMMUN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-OSTEOPOROSIS SCREENING"
 D BDEL
 S PXRMVAL(1)="IHS-OSTEOPOROSIS SCREEN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-PAP SMEAR 2009"
 D BDEL
 S PXRMVAL(1)="IHS-PAP SMEAR 2011"
 D BDEL
 S PXRMVAL(1)="IHS-PED DT IMMUN 2008"
 D BDEL
 S PXRMVAL(1)="IHS-PED DT IMMUN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-PED DTAP IMMUN 2008"
 D BDEL
 S PXRMVAL(1)="IHS-PED DTAP IMMUN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-PED FLU IMMUN 2008"
 D BDEL
 S PXRMVAL(1)="IHS-PED FLU IMMUN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-PED HEPA IMMUN 2008"
 D BDEL
 S PXRMVAL(1)="IHS-PED HEPA IMMUN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-PED HEPB IMMUN 2008"
 D BDEL
 S PXRMVAL(1)="IHS-PED HEPB IMMUN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-PED HIBTITER IMMUN 2008"
 D BDEL
 S PXRMVAL(1)="IHS-PED HIBTITER IMMUN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-PED MMR IMMUN 2008"
 D BDEL
 S PXRMVAL(1)="IHS-PED MMR IMMUN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-PED PEDIARIX IMMUN 2008"
 D BDEL
 S PXRMVAL(1)="IHS-PED PEDIARIX IMMUN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-PED PEDVAXHIB IMMUN 2008"
 D BDEL
 S PXRMVAL(1)="IHS-PED PEDVAXHIB IMMUN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-PED PNEUMOCOCCAL IMMUN 2008"
 D BDEL
 S PXRMVAL(1)="IHS-PED PNEUMOCOCCAL IMMUN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-PED POLIO IMMUN 2008"
 D BDEL
 S PXRMVAL(1)="IHS-PED POLIO IMMUN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-PED ROTAVIRUS IMMUN 2008"
 D BDEL
 S PXRMVAL(1)="IHS-PED ROTAVIRUS IMMUN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-PED VARICELLA IMMUN 2008"
 D BDEL
 S PXRMVAL(1)="IHS-PED VARICELLA IMMUN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-PNEUMOVAX IMMUN 2008"
 D BDEL
 S PXRMVAL(1)="IHS-PNEUMOVAX IMMUN 2011"
 D BDEL
 S PXRMVAL(1)="HS-RUBELLA IMMUN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-SENIOR HEIGHT"
 D BDEL
 S PXRMVAL(1)="IHS-SENIOR HEIGHT 2011"
 D BDEL
 S PXRMVAL(1)="IHS-SENIOR VISION 2009"
 D BDEL
 S PXRMVAL(1)="IHS-SENIOR VISION 2011"
 D BDEL
 S PXRMVAL(1)="IHS-TD IMMUN 2008"
 D BDEL
 S PXRMVAL(1)="IHS-TD IMMUN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-TDAP IMMUN 2008"
 D BDEL
 S PXRMVAL(1)="IHS-TDAP IMMUN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-TOBACCO SCREEN 2009"
 D BDEL
 S PXRMVAL(1)="IHS-TOBACCO SCREEN 2011"
 D BDEL
 S PXRMVAL(1)="IHS-WEIGHT"
 D BDEL
 S PXRMVAL(1)="IHS-WEIGHT 2011"
 D BDEL
 Q
BDEL ;DELETE THE ITEMS
 D FIND^DIC(811.8,"","","U",.PXRMVAL,"","","","","LIST")
 S NUM=$P(LIST("DILIST",0),U,1)
 I NUM'=0 D
 .F IND=1:1:NUM D
 .. N DA,DIK
 .. S DIK="^PXD(811.8,"
 .. S DA=LIST("DILIST",2,IND)
 .. D ^DIK
 Q