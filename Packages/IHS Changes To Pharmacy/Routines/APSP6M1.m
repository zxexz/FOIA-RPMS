APSP6M1 ;IHS/DSD/ENM - OUTPATIENT NEW MODS MSG II; [ 05/29/2001  4:45 PM ]
 ;;6.0;IHS PHARMACY MODIFICATIONS;**3**;01/02/01
TEXT ;PART II OF TEXT GRAB
 S APSPMSG(90,0)="ALLERGIES:"
 S APSPMSG(91,0)="ADVERSE REACTIONS:"
 S APSPMSG(92,0)="WANT TO ENTER ALLERGY INFORMATION ? NO// YES"
 S APSPMSG(93,0)="Does this patient have any known allergies? ^"
 S APSPMSG(94,0)=""
 S APSPMSG(95,0)="- Interactive Allergy Check (NOT COMPLETE/FOOLPROOF-can't check if merged with"
 S APSPMSG(96,0)="NDF File and doesn't know for example if allergic to penicillin, you are"
 S APSPMSG(97,0)="probably allergic to amoxicillin)"
 S APSPMSG(97.1)=""
 S APSPMSG(98,0)="- Automatic calculation of days supply (attempts to)"
 S APSPMSG(98.1,0)=""
 S APSPMSG(99,0)="- Outside Rx Option interactive and show in patient profile in RX Option."
 S APSPMSG(99.1)=""
 S APSPMSG(100,0)="- AWP and NDC information will be saved with the prescription (new, refill,"
 S APSPMSG(101,0)="and renew) rather that reverting to information in the Drug File."
 S APSPMSG(101.1,0)=""
 S APSPMSG(102,0)="- Change default on intervene on significant drug interaction from yes to no."
 S APSPMSG(102.1,0)=""
 S APSPMSG(103,0)="- Automatically update AWP when putting in new drug or editing NDC#"
 S APSPMSG(104,0)="(if in reference file)."
 S APSPMSG(104.1,0)=""
 S APSPMSG(105,0)="- NON-FORMULARY REQUESTS Option found on OUTPATIENT PHARMACY MANAGER Menu."
 S APSPMSG(106,0)="Note: Must mark drug non-formulary in the Drug File for field Non-Formulary"
 S APSPMSG(106.1,0)=""
 S APSPMSG(107,0)="- Drugs involved in drug intervention give more information"
 S APSPMSG(107.1,0)=""
 S APSPMSG(108,0)="- Patient's Medicaid, Medicare, Private Insurance Status shows in Rx filling"
 S APSPMSG(108.1,0)=""
 S APSPMSG(109,0)="- RX's in Outside RX interactive with drug interactions and drug allergies"
 S APSPMSG(110,0)="if outside drug is in site Drug File"
 S APSPMSG(110.1,0)=""
 S APSPMSG(111,0)="- New 'FAST DRUG OPTION'. See 'Enter/Edit Drug Pick Option on SUPERVISOR MENU"
 S APSPMSG(112,0)="to set up. This option allows you to pre-select the 'DRUG QUICK PICK NAME',"
 S APSPMSG(113,0)="SYNONYM, SEQUENCE, DRUG, SIG, QTY, COPIES, DAYS SUPPLY, # OF REFILLS,"
 S APSPMSG(114,0)="CHRONIC MED AND REMARKS for multiple drugs.  On the Rx (Prescriptions) Menu"
 S APSPMSG(115,0)="you can select the FAST PRESCRIPTION ENTRY Option and order mutiple Rx's"
 S APSPMSG(116,0)="with all pre-selected prescription questions."
 S APSPMSG(117,0)=" "
 S APSPMSG(117.1,0)="- Within the pharmacy fill and refill features, there is a new option"
 S APSPMSG(117.2,0)="added at the prescription print line (M) which will enable the printing"
 S APSPMSG(117.3,0)="of the Prescription Drug Education monograph sheets, once the"
 S APSPMSG(117.4,0)="Prescription Drug Education Database package have been installed."
 S APSPMSG(117.5,0)=" "
 S APSPMSG(118,0)="- On refills, a new field called JUMP TO now exist and will allow"
 S APSPMSG(119,0)="jumping to NDC, AWP, INSURER INFO AND BILLING STATUS fields in the refill mode"
 S APSPMSG(120,0)="when parameters above are turned 'off',"
 S APSPMSG(121,0)=" "
 S APSPMSG(121.1,0)="New option that allows the printing/reprinting of signature labels."
 S APSPMSG(121.2,0)=" "
 S APSPMSG(121.3,0)="New option that will identify NDC's, for active drugs, that are"
 S APSPMSG(121.4,0)=" "
 S APSPMSG(121.5,0)="in an inproper format. This report can be viewed on screen or queued to a"
 S APSPMSG(121.6,0)="printer."
 S APSPMSG(121.7,0)=" "
 S APSPMSG(122,0)="NEW SECURITY KEYS"
 S APSPMSG(123,0)="-----------------"
 S APSPMSG(124,0)=" "
 S APSPMSG(125,0)="APSQ NF MENU - This key allows access to the MAIN MENU FOR NON"
 S APSPMSG(126,0)="FORMULARY REQUESTS. This menu can be put on the core menu if wanted."
 S APSPMSG(127,0)=" "
 S APSPMSG(128,0)="APSQ NF REQUESTING PROVIDER - Gives access to the menu for the requesting"
 S APSPMSG(129,0)="provider to start a non formulary request."
 S APSPMSG(130,0)=" "
 S APSPMSG(131,0)="APSQ NF APPROVING PROVIDER - Gives access to the menu for the approving"
 S APSPMSG(132,0)="provider to sign a non formulary request."
 S APSPMSG(133,0)=" "
 S APSPMSG(134,0)="APSQ NF PHARMACIST - Gives access to the menu for the pharmacist to sign"
 S APSPMSG(135,0)="a non formulary request."
 S APSPMSG(136,0)=" "
 S APSPMSG(137,0)=""
 S APSPMSG(138,0)="APSQ NF PT REVIEW - Gives access to the menu for the pt reviewer to sign"
 S APSPMSG(139,0)="a non formulary request."
 S APSPMSG(140,0)=" "
 S APSPMSG(141,0)="NOTE: There is an hierachy for signing the non formulary request going"
 S APSPMSG(142,0)="from requesting provider, approving provider, pharmacist and finally pt"
 S APSPMSG(143,0)="reviewer. Once a request is signed by a person, that requests can be"
 S APSPMSG(144,0)="'unsigned' by only the person signing originally and only if it is NOT"
 S APSPMSG(145,0)="signed by the person next in line."
 S APSPMSG(146,0)=" "
 S APSPMSG(147,0)="APSQ NF MENU DELETE - Gives access to the delete options menu for"
 S APSPMSG(148,0)="non formulary requests."
 S APSPMSG(149,0)=" "
 S APSPMSG(150,0)="APSQ NF DELETE - Gives access to the individual delete options."
 S APSPMSG(150.1,0)=" "
 S APSPMSG(151,0)="NOTE: If a drug is marked non formulary in the Drug File, then that"
 S APSPMSG(152,0)="drug will be marked for an intervention when it is filled. Information"
 S APSPMSG(153,0)="will be given about the drug at the time of dispensing on its non"
 S APSPMSG(154,0)="formulary request status e.g. is a non formulary request started or not"
 S APSPMSG(155,0)="and if it has been approved by four of the signing persons."
 S APSPMSG(156,0)=" "
 S APSPMSG(157,0)="- Four new mail groups exist and are listed below."
 S APSPMSG(158,0)=" "
 S APSPMSG(159,0)="APSQ NF REQUESTING PROVIDER - For individuals who need to be notified "
 S APSPMSG(160,0)="when a non formulary request is made by a provider."
 S APSPMSG(161,0)=" "
 S APSPMSG(162,0)="APSQ NF APPROVING PROVIDER - For individuals who need to be notified when"
 S APSPMSG(163,0)="an approving provider has signed a non formulary request."
 S APSPMSG(163.1,0)=" "
 S APSPMSG(164,0)="APSQ NF PHARMACIST - For individuals who need to be notified when a Pharmacist"
 S APSPMSG(165,0)="has signed a non formulary request."
 S APSPMSG(166,0)=" "
 S APSPMSG(167,0)="APSQ NF PT REVIEWER - For individuals who need to be notified when a pt"
 S APSPMSG(168,0)="reviewer has signed the non formulary request."
 S APSPMSG(169,0)=" "
 S APSPMSG(170,0)="NOTE: Other ancilliary options exist for non formulary requests such as cost"
 S APSPMSG(171,0)="statistics, printing and sending to others non formulary requests."
 ;S XMTEXT="APSPMSG(",%H=$H D YX^%DTC
 Q
