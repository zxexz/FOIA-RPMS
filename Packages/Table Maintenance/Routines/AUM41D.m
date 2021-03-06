AUM41D ;IHS/ASDST/DMJ,SDR,GTH - ICD 9 CODES FOR FY 2004 ; [ 09/09/2003  1:09 PM ]
 ;;04.1;TABLE MAINTENANCE;;SEP 28,2001
 ;
ICD9PNEW ;;ICD OPERATION/PROCEDURE, NEW PROCEDURE CODES: CODE NUMBER(#.01)^OPERATION/PROCEDURE(#4)^DESCRIPTION(#10)^Use with Sex(#9.5)^MDC(#80.12)-DRG(#80.12,1-6) (multiples are separated by "~"
 ;;00.15^HIGH INFUSION INTERLEUKIN-2^HIGH-DOSE INFUSION INTERLEUKIN-2 [IL-2]^^17-492
 ;;37.51^HEART TRANSPLANTATION^HEART TRANSPLANTATION
 ;;37.52^IMPLANT TOTAL REPLACE HEART SYS^IMPLANTATION OF TOTAL REPLACEMENT HEART SYSTEM^^5-525
 ;;37.53^REPLACE THORAC TOTAL REPLA HRT^REPLACEMENT OR REPAIR OF THORACIC UNIT OF TOTAL REPLACEMENT HEART SYSTEM^^5-525
 ;;37.54^REPLACE OTHER IMPLANTABLE HRT^REPLACEMENT OR REPAIR OF OTHER IMPLANTABLE COMPONENT OF TOTAL REPLACEMENT HEART SYSTEM^^5-525
 ;;68.31^LAPAROSCOPIC HYSTERECTOMY LSH^LAPAROSCOPIC SUPRACERVICAL HYSTERECTOMY [LSH]^FEMALE^13-354,355,357,358,359~14-375,358,359
 ;;68.39^OTHER SUB ABD HYSTERECTOMY^OTHER SUBTOTAL ABDOMINAL HYSTERECTOMY, NOS^FEMALE^13-354,355,357,358,359~14-375
 ;;81.62^FUSION OF 2-3 VERTEBRAE^FUSION OR REFUSION OF 2-3 VERTEBRAE
 ;;81.63^FUSION OF 4-8 VERTEBRAE^FUSION OR REFUSION OF 4-8 VERTEBRAE
 ;;81.64^FUSION OF 9 OR MORE VERTEBRAE^FUSION OR REFUSION OF 9 OR MORE VERTEBRAE
 ;;END
ICD9DINA ;;ICD 9 DIAGNOSIS, INACTIVE CODES: CODE NUMBER(#.01)^DESCRIPTION(#10)^INACTIVE DATE(#102)
 ;;255.1^HYPERALDOSTERONISM^OCT 1, 2003
 ;;277.8^OTHER SPECIFIED DISORDERS OF METABOLISM^OCT 1, 2003
 ;;282.4^THALASSEMIAS^OCT 1, 2003
 ;;289.8^OTHER SPECIFIED DISEASES OF BLOOD AND BLOOD-FORMING ORGANS^OCT 1, 2003
 ;;331.1^PICK'S DISEASE^OCT 1, 2003
 ;;348.3^ENCEPHALOPATHY, UNSPECIFIED^OCT 1, 2003
 ;;358.0^MYASTHENIA GRAVIS^OCT 1, 2003
 ;;458.2^IATROGENIC HYPOTENSION^OCT 1, 2003
 ;;530.2^ULCER OF ESOPHAGUS^OCT 1, 2003
 ;;600.0^HYPERTROPHY (BENIGN) OF PROSTATE^OCT 1, 2003
 ;;600.1^NODULAR PROSTATE^OCT 1, 2003
 ;;600.2^BENIGN LOCALIZED HYPERPLASIA OF PROSTATE^OCT 1, 2003
 ;;600.9^HYPERPLASIA OF PROSTATE, UNSPECIFIED^OCT 1, 2003
 ;;719.70^DIFFICULTY IN WALKING, SITE UNSPECIFIED^OCT 1, 2003
 ;;719.75^DIFFICULTY IN WALKING, PELVIC REGION AND THIGH^OCT 1, 2003
 ;;719.76^DIFFICULTY IN WALKING, LOWER LEG^OCT 1, 2003
 ;;719.77^DIFFICULTY IN WALKING, ANKLE AND FOOT^OCT 1, 2003
 ;;719.78^DIFFICULTY IN WALKING, OTHER SPECIFIED SITES^OCT 1, 2003
 ;;719.79^DIFFICULTY IN WALKING, MULTIPLE SITES^OCT 1, 2003
 ;;752.8^OTHER SPECIFIED ANOMALIES OF GENITAL ORGANS^OCT 1, 2003
 ;;766.2^POST TERM INFANT, NOT "HEAVY FOR DATES"^OCT 1, 2003
 ;;767.1^INJURIES TO SCALP^OCT 1, 2003
 ;;790.2^ABNORMAL GLUCOSE TOLERANCE TEST^OCT 1, 2003
 ;;799.8^OTHER ILL-DEFINED CONDITIONS^OCT 1, 2003
 ;;850.1^CONCUSSION, WITH BRIEF LOSS OF CONSCIOUSNESS^OCT 1, 2003
 ;;959.1^INJURY, TRUNK^OCT 1, 2003
 ;;V04.8^NEED FOR PROPHYLACTIC VACCINATION AND INOCULATION AGAINST CERTAIN VIRAL DISEASE, INFLUENZA^OCT 1, 2003
 ;;V43.2^ORGAN OR TISSUE REPLACED BY OTHER MEANS, HEART^OCT 1, 2003
 ;;V53.9^FITTING AND ADJUSTMENT OF OTHER DEVICE, OTHER AND UNSPECIFIED DEVICE^OCT 1, 2003
 ;;V54.0^AFTERCARE INVOLVING REMOVAL OF FRACTURE PLATE OR OTHER INTERNAL FIXATION DEVICE^OCT 1, 2003
 ;;V64.4^LAPAROSCOPIC SURGICAL PROCEDURE CONVERTED TO OPEN PROCEDURE^OCT 1, 2003
 ;;V65.1^PERSON CONSULTING ON BEHALF OF ANOTHER PERSON^OCT 1, 2003
 ;;END
 ;
PRNT ;
 S U="^"
 W !," CODE",?10,"DIAGNOSIS",!?10,"DESCRIPTION",!," -----",?10,"-----------"
 NEW X,Y,P2,P3
 F X=1:1 S Y=$P($T(ICD9NEW+X),";",3),P2=$P(Y,U,2),P3=$P(Y,U,3) Q:Y="END"  W !," ",$P(Y,U,1),?10,$S($L(P3):P3,1:P2),!?10,P2
 Q
 ;
