BQIATXJ ;PRXM/HC/ALA-CREATED BY ^ATXSTX ON SEP 19, 2006;
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;;BQI STATIN NDC
 ;
 ; This routine loads Taxonomy BQI STATIN NDC
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"00003-5154-05 ")
 ;;184
 ;;21,"00003-5154-06 ")
 ;;185
 ;;21,"00003-5168-11 ")
 ;;305
 ;;21,"00003-5169-11 ")
 ;;306
 ;;21,"00003-5173-11 ")
 ;;307
 ;;21,"00003-5174-11 ")
 ;;308
 ;;21,"00003-5178-05 ")
 ;;192
 ;;21,"00003-5178-06 ")
 ;;193
 ;;21,"00003-5178-75 ")
 ;;194
 ;;21,"00003-5183-11 ")
 ;;309
 ;;21,"00003-5184-11 ")
 ;;310
 ;;21,"00003-5194-10 ")
 ;;200
 ;;21,"00003-5194-33 ")
 ;;201
 ;;21,"00003-5195-10 ")
 ;;206
 ;;21,"00003-5195-33 ")
 ;;207
 ;;21,"00006-0543-28 ")
 ;;256
 ;;21,"00006-0543-31 ")
 ;;257
 ;;21,"00006-0543-54 ")
 ;;258
 ;;21,"00006-0543-61 ")
 ;;259
 ;;21,"00006-0543-82 ")
 ;;260
 ;;21,"00006-0726-28 ")
 ;;208
 ;;21,"00006-0726-31 ")
 ;;209
 ;;21,"00006-0726-54 ")
 ;;210
 ;;21,"00006-0726-61 ")
 ;;211
 ;;21,"00006-0726-82 ")
 ;;212
 ;;21,"00006-0730-61 ")
 ;;101
 ;;21,"00006-0731-28 ")
 ;;121
 ;;21,"00006-0731-61 ")
 ;;122
 ;;21,"00006-0731-82 ")
 ;;123
 ;;21,"00006-0731-87 ")
 ;;124
 ;;21,"00006-0731-94 ")
 ;;125
 ;;21,"00006-0732-61 ")
 ;;154
 ;;21,"00006-0732-82 ")
 ;;155
 ;;21,"00006-0732-87 ")
 ;;156
 ;;21,"00006-0732-94 ")
 ;;157
 ;;21,"00006-0735-28 ")
 ;;213
 ;;21,"00006-0735-31 ")
 ;;214
 ;;21,"00006-0735-54 ")
 ;;215
 ;;21,"00006-0735-61 ")
 ;;216
 ;;21,"00006-0735-82 ")
 ;;217
 ;;21,"00006-0735-87 ")
 ;;218
 ;;21,"00006-0740-28 ")
 ;;228
 ;;21,"00006-0740-31 ")
 ;;229
 ;;21,"00006-0740-54 ")
 ;;230
 ;;21,"00006-0740-61 ")
 ;;231
 ;;21,"00006-0740-82 ")
 ;;232
 ;;21,"00006-0740-87 ")
 ;;233
 ;;21,"00006-0749-28 ")
 ;;242
 ;;21,"00006-0749-31 ")
 ;;243
 ;;21,"00006-0749-54 ")
 ;;244
 ;;21,"00006-0749-61 ")
 ;;245
 ;;21,"00006-0749-82 ")
 ;;246
 ;;21,"00069-2150-30 ")
 ;;315
 ;;21,"00069-2160-30 ")
 ;;317
 ;;21,"00069-2170-30 ")
 ;;316
 ;;21,"00069-2180-30 ")
 ;;318
 ;;21,"00069-2190-30 ")
 ;;311
 ;;21,"00069-2250-30 ")
 ;;313
 ;;21,"00069-2260-30 ")
 ;;312
 ;;21,"00069-2270-30 ")
 ;;314
 ;;21,"00069-2960-30 ")
 ;;319
 ;;21,"00069-2970-30 ")
 ;;320
 ;;21,"00069-2980-30 ")
 ;;321
 ;;21,"00071-0155-23 ")
 ;;275
 ;;21,"00071-0155-34 ")
 ;;276
 ;;21,"00071-0155-40 ")
 ;;277
 ;;21,"00071-0156-23 ")
 ;;283
 ;;21,"00071-0156-40 ")
 ;;284
 ;;21,"00071-0156-94 ")
 ;;285
 ;;21,"00071-0157-23 ")
 ;;289
 ;;21,"00071-0157-73 ")
 ;;290
 ;;21,"00071-0158-23 ")
 ;;294
 ;;21,"00071-0158-73 ")
 ;;295
 ;;21,"00078-0176-05 ")
 ;;263
 ;;21,"00078-0176-15 ")
 ;;264
 ;;21,"00078-0234-05 ")
 ;;269
 ;;21,"00078-0234-15 ")
 ;;270
 ;;21,"00078-0354-05 ")
 ;;273
 ;;21,"00078-0354-15 ")
 ;;274
 ;;21,"00093-0576-06 ")
 ;;126
 ;;21,"00093-0576-10 ")
 ;;127
 ;;21,"00093-0926-06 ")
 ;;102
 ;;21,"00093-0926-10 ")
 ;;103
 ;;21,"00093-0928-06 ")
 ;;158
 ;;21,"00093-0928-10 ")
 ;;159
 ;;21,"00185-0070-01 ")
 ;;104
 ;;21,"00185-0070-10 ")
 ;;105
 ;;21,"00185-0070-60 ")
 ;;106
 ;;21,"00185-0072-01 ")
 ;;128
 ;;21,"00185-0072-10 ")
 ;;129
 ;;21,"00185-0072-60 ")
 ;;130
 ;;21,"00185-0074-01 ")
 ;;160
 ;;21,"00185-0074-10 ")
 ;;161
 ;;21,"00185-0074-60 ")
 ;;162
 ;;21,"00228-2633-06 ")
 ;;107
 ;;21,"00228-2633-50 ")
 ;;108
 ;;21,"00228-2634-06 ")
 ;;131
 ;;21,"00228-2634-50 ")
 ;;132
 ;;21,"00228-2635-06 ")
 ;;163
 ;;21,"00228-2635-50 ")
 ;;164
 ;;21,"00247-1139-30 ")
 ;;332
 ;;21,"00247-1139-60 ")
 ;;333
 ;;21,"00247-1140-30 ")
 ;;334
 ;;21,"00247-1152-30 ")
 ;;335
 ;;21,"00247-1152-60 ")
 ;;336
 ;;21,"00247-1153-30 ")
 ;;337
 ;;21,"00247-1153-60 ")
 ;;338
 ;;21,"00247-1276-30 ")
 ;;339
 ;;21,"00310-0751-39 ")
 ;;299
 ;;21,"00310-0751-90 ")
 ;;300
 ;;21,"00310-0752-39 ")
 ;;301
 ;;21,"00310-0752-90 ")
 ;;302
 ;;21,"00310-0754-30 ")
 ;;303
 ;;21,"00310-0755-90 ")
 ;;304
 ;;21,"00378-6510-91 ")
 ;;109
 ;;21,"00378-6520-05 ")
 ;;133
 ;;21,"00378-6520-91 ")
 ;;134
 ;;21,"00378-6540-05 ")
 ;;165
 ;;21,"00378-6540-91 ")
 ;;166
 ;;21,"00781-1210-10 ")
 ;;340
 ;;21,"00781-1210-60 ")
 ;;135
 ;;21,"00781-1213-10 ")
 ;;341
 ;;21,"00781-1213-60 ")
 ;;167
 ;;21,"00781-1323-05 ")
 ;;342
 ;;21,"00781-1323-60 ")
 ;;110
 ;;21,"12280-0038-90 ")
 ;;186
 ;;21,"12280-0108-60 ")
 ;;136
 ;;21,"12280-0181-30 ")
 ;;326
 ;;21,"49884-0754-01 ")
 ;;111
 ;;21,"49884-0754-10 ")
 ;;112
 ;;21,"49884-0755-01 ")
 ;;137
 ;;21,"49884-0755-10 ")
 ;;138
 ;;21,"49884-0756-01 ")
 ;;168
 ;;21,"49884-0756-10 ")
 ;;169
 ;;21,"49999-0293-30 ")
 ;;343
 ;;21,"49999-0306-30 ")
 ;;344
 ;;21,"49999-0392-30 ")
 ;;345
 ;;21,"49999-0470-60 ")
 ;;346
 ;;21,"49999-0471-30 ")
 ;;347
 ;;21,"49999-0471-60 ")
 ;;1
 ;;21,"51079-0974-01 ")
 ;;2
 ;;21,"51079-0974-20 ")
 ;;113
 ;;21,"51079-0975-01 ")
 ;;3
 ;;21,"51079-0975-20 ")
 ;;139
 ;;21,"51079-0976-01 ")
 ;;4
 ;;21,"51079-0976-20 ")
 ;;170
 ;;21,"52959-0046-30 ")
 ;;291
 ;;21,"52959-0112-30 ")
 ;;247
 ;
OTHER ; OTHER ROUTINES
 D ^BQIATXJB
 D ^BQIATXJC
 D ^BQIATXJD
 D ^BQIATXJE
 D ^BQIATXJF
 D ^BQIATXJG
 D ^BQIATXJH
 D ^BQIATXJI
 D ^BQIATXJJ
 D ^BQIATXJK
 Q