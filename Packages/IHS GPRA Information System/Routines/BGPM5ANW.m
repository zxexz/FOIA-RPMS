BGPM5ANW ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON AUG 17, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;;BGPMU CANCER DX
 ;
 ; This routine loads Taxonomy BGPMU CANCER DX
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
 ;;21,"140.0 ")
 ;;1
 ;;21,"140.1 ")
 ;;2
 ;;21,"140.3 ")
 ;;3
 ;;21,"140.4 ")
 ;;4
 ;;21,"140.5 ")
 ;;5
 ;;21,"140.6 ")
 ;;6
 ;;21,"140.8 ")
 ;;7
 ;;21,"140.9 ")
 ;;8
 ;;21,"141 ")
 ;;9
 ;;21,"141.0 ")
 ;;10
 ;;21,"141.1 ")
 ;;11
 ;;21,"141.2 ")
 ;;12
 ;;21,"141.3 ")
 ;;13
 ;;21,"141.4 ")
 ;;14
 ;;21,"141.5 ")
 ;;15
 ;;21,"141.6 ")
 ;;16
 ;;21,"141.8 ")
 ;;17
 ;;21,"141.9 ")
 ;;18
 ;;21,"142 ")
 ;;19
 ;;21,"142.0 ")
 ;;20
 ;;21,"142.1 ")
 ;;21
 ;;21,"142.2 ")
 ;;22
 ;;21,"142.8 ")
 ;;23
 ;;21,"142.9 ")
 ;;24
 ;;21,"143 ")
 ;;25
 ;;21,"143.0 ")
 ;;26
 ;;21,"143.1 ")
 ;;27
 ;;21,"143.8 ")
 ;;28
 ;;21,"143.9 ")
 ;;29
 ;;21,"144 ")
 ;;30
 ;;21,"144.0 ")
 ;;31
 ;;21,"144.1 ")
 ;;32
 ;;21,"144.8 ")
 ;;33
 ;;21,"144.9 ")
 ;;34
 ;;21,"145 ")
 ;;35
 ;;21,"145.0 ")
 ;;36
 ;;21,"145.1 ")
 ;;37
 ;;21,"145.2 ")
 ;;38
 ;;21,"145.3 ")
 ;;39
 ;;21,"145.4 ")
 ;;40
 ;;21,"145.5 ")
 ;;41
 ;;21,"145.6 ")
 ;;42
 ;;21,"145.8 ")
 ;;43
 ;;21,"145.9 ")
 ;;44
 ;;21,"146 ")
 ;;45
 ;;21,"146.0 ")
 ;;46
 ;;21,"146.1 ")
 ;;47
 ;;21,"146.2 ")
 ;;48
 ;;21,"146.3 ")
 ;;49
 ;;21,"146.4 ")
 ;;50
 ;;21,"146.5 ")
 ;;51
 ;;21,"146.6 ")
 ;;52
 ;;21,"146.7 ")
 ;;53
 ;;21,"146.8 ")
 ;;54
 ;;21,"146.9 ")
 ;;55
 ;;21,"147 ")
 ;;56
 ;;21,"147.0 ")
 ;;57
 ;;21,"147.1 ")
 ;;58
 ;;21,"147.2 ")
 ;;59
 ;;21,"147.3 ")
 ;;60
 ;;21,"147.8 ")
 ;;61
 ;;21,"147.9 ")
 ;;62
 ;;21,"148 ")
 ;;63
 ;;21,"148.0 ")
 ;;64
 ;;21,"148.1 ")
 ;;65
 ;;21,"148.2 ")
 ;;66
 ;;21,"148.3 ")
 ;;67
 ;;21,"148.8 ")
 ;;68
 ;;21,"148.9 ")
 ;;69
 ;;21,"149 ")
 ;;70
 ;;21,"149.0 ")
 ;;71
 ;;21,"149.1 ")
 ;;72
 ;;21,"149.8 ")
 ;;73
 ;;21,"149.9 ")
 ;;74
 ;;21,"150 ")
 ;;75
 ;;21,"150.0 ")
 ;;76
 ;;21,"150.1 ")
 ;;77
 ;;21,"150.2 ")
 ;;78
 ;;21,"150.3 ")
 ;;79
 ;;21,"150.4 ")
 ;;80
 ;;21,"150.5 ")
 ;;81
 ;;21,"150.8 ")
 ;;82
 ;;21,"150.9 ")
 ;;83
 ;;21,"151 ")
 ;;84
 ;;21,"151.0 ")
 ;;85
 ;;21,"151.1 ")
 ;;86
 ;;21,"151.2 ")
 ;;87
 ;;21,"151.3 ")
 ;;88
 ;;21,"151.4 ")
 ;;89
 ;;21,"151.5 ")
 ;;90
 ;;21,"151.6 ")
 ;;91
 ;;21,"151.8 ")
 ;;92
 ;;21,"151.9 ")
 ;;93
 ;;21,"152 ")
 ;;94
 ;;21,"152.0 ")
 ;;95
 ;;21,"152.1 ")
 ;;96
 ;;21,"152.2 ")
 ;;97
 ;;21,"152.3 ")
 ;;98
 ;;21,"152.8 ")
 ;;99
 ;;21,"152.9 ")
 ;;100
 ;;21,"153 ")
 ;;101
 ;;21,"153.0 ")
 ;;102
 ;;21,"153.1 ")
 ;;103
 ;;21,"153.2 ")
 ;;104
 ;;21,"153.3 ")
 ;;105
 ;;21,"153.4 ")
 ;;106
 ;;21,"153.5 ")
 ;;107
 ;;21,"153.6 ")
 ;;108
 ;;21,"153.7 ")
 ;;109
 ;;21,"153.8 ")
 ;;110
 ;;21,"153.9 ")
 ;;111
 ;;21,"154 ")
 ;;112
 ;;21,"154.0 ")
 ;;113
 ;;21,"154.1 ")
 ;;114
 ;;21,"154.2 ")
 ;;115
 ;;21,"154.3 ")
 ;;116
 ;;21,"154.8 ")
 ;;117
 ;;21,"155 ")
 ;;118
 ;;21,"155.0 ")
 ;;119
 ;;21,"155.1 ")
 ;;120
 ;;21,"155.2 ")
 ;;121
 ;;21,"156 ")
 ;;122
 ;;21,"156.0 ")
 ;;123
 ;;21,"156.1 ")
 ;;124
 ;;21,"156.2 ")
 ;;125
 ;;21,"156.8 ")
 ;;126
 ;;21,"156.9 ")
 ;;127
 ;;21,"157 ")
 ;;128
 ;;21,"157.0 ")
 ;;129
 ;;21,"157.1 ")
 ;;130
 ;;21,"157.2 ")
 ;;131
 ;;21,"157.3 ")
 ;;132
 ;;21,"157.4 ")
 ;;133
 ;;21,"157.8 ")
 ;;134
 ;;21,"157.9 ")
 ;;135
 ;;21,"158 ")
 ;;136
 ;;21,"158.0 ")
 ;;137
 ;;21,"158.8 ")
 ;;138
 ;;21,"158.9 ")
 ;;139
 ;;21,"159 ")
 ;;140
 ;;21,"159.0 ")
 ;;141
 ;;21,"159.1 ")
 ;;142
 ;;21,"159.8 ")
 ;;143
 ;;21,"159.9 ")
 ;;144
 ;;21,"160 ")
 ;;145
 ;;21,"160.0 ")
 ;;146
 ;;21,"160.1 ")
 ;;147
 ;;21,"160.2 ")
 ;;148
 ;;21,"160.3 ")
 ;;149
 ;;21,"160.4 ")
 ;;150
 ;;21,"160.5 ")
 ;;151
 ;;21,"160.8 ")
 ;;152
 ;;21,"160.9 ")
 ;;153
 ;;21,"161 ")
 ;;154
 ;;21,"161.0 ")
 ;;155
 ;;21,"161.1 ")
 ;;156
 ;;21,"161.2 ")
 ;;157
 ;;21,"161.3 ")
 ;;158
 ;;21,"161.8 ")
 ;;159
 ;;21,"161.9 ")
 ;;160
 ;;21,"162 ")
 ;;161
 ;;21,"162.0 ")
 ;;162
 ;;21,"162.2 ")
 ;;163
 ;;21,"162.3 ")
 ;;164
 ;;21,"162.4 ")
 ;;165
 ;;21,"162.5 ")
 ;;166
 ;;21,"162.8 ")
 ;;167
 ;;21,"162.9 ")
 ;;168
 ;;21,"163 ")
 ;;169
 ;;21,"163.0 ")
 ;;170
 ;;21,"163.1 ")
 ;;171
 ;;21,"163.8 ")
 ;;172
 ;;21,"163.9 ")
 ;;173
 ;;21,"164 ")
 ;;174
 ;;21,"164.0 ")
 ;;175
 ;;21,"164.1 ")
 ;;176
 ;;21,"164.2 ")
 ;;177
 ;;21,"164.3 ")
 ;;178
 ;;21,"164.8 ")
 ;;179
 ;;21,"164.9 ")
 ;;180
 ;;21,"165 ")
 ;;181
 ;;21,"165.0 ")
 ;;182
 ;;21,"165.8 ")
 ;;183
 ;;21,"165.9 ")
 ;;184
 ;;21,"170 ")
 ;;185
 ;;21,"170.0 ")
 ;;186
 ;;21,"170.1 ")
 ;;187
 ;;21,"170.2 ")
 ;;188
 ;;21,"170.3 ")
 ;;189
 ;;21,"170.4 ")
 ;;190
 ;;21,"170.5 ")
 ;;191
 ;;21,"170.6 ")
 ;;192
 ;;21,"170.7 ")
 ;;193
 ;;21,"170.8 ")
 ;;194
 ;;21,"170.9 ")
 ;;195
 ;;21,"171 ")
 ;;196
 ;;21,"171.0 ")
 ;;197
 ;;21,"171.2 ")
 ;;198
 ;;21,"171.3 ")
 ;;199
 ;;21,"171.4 ")
 ;;200
 ;;21,"171.5 ")
 ;;201
 ;;21,"171.6 ")
 ;;202
 ;;21,"171.7 ")
 ;;203
 ;;21,"171.8 ")
 ;;204
 ;;21,"171.9 ")
 ;;205
 ;;21,"172 ")
 ;;206
 ;;21,"172.0 ")
 ;;207
 ;;21,"172.1 ")
 ;;208
 ;;21,"172.2 ")
 ;;209
 ;;21,"172.3 ")
 ;;210
 ;;21,"172.4 ")
 ;;211
 ;;21,"172.5 ")
 ;;212
 ;;21,"172.6 ")
 ;;213
 ;;21,"172.7 ")
 ;;214
 ;;21,"172.8 ")
 ;;215
 ;;21,"172.9 ")
 ;;216
 ;;21,"173 ")
 ;;217
 ;;21,"173.0 ")
 ;;218
 ;;21,"173.1 ")
 ;;219
 ;;21,"173.2 ")
 ;;220
 ;;21,"173.3 ")
 ;;221
 ;;21,"173.4 ")
 ;;222
 ;;21,"173.5 ")
 ;;223
 ;;21,"173.6 ")
 ;;224
 ;;21,"173.7 ")
 ;;225
 ;;21,"173.8 ")
 ;;226
 ;;21,"173.9 ")
 ;;227
 ;;21,"174 ")
 ;;228
 ;;21,"174.0 ")
 ;;229
 ;;21,"174.1 ")
 ;;230
 ;;21,"174.2 ")
 ;;231
 ;;21,"174.3 ")
 ;;232
 ;;21,"174.4 ")
 ;;233
 ;;21,"174.5 ")
 ;;234
 ;;21,"174.6 ")
 ;;235
 ;;21,"174.8 ")
 ;;236
 ;;21,"174.9 ")
 ;;237
 ;;21,"175 ")
 ;;238
 ;;21,"175.0 ")
 ;;239
 ;;21,"175.9 ")
 ;;240
 ;;21,"176 ")
 ;;241
 ;;21,"176.0 ")
 ;;242
 ;;21,"176.1 ")
 ;;243
 ;;21,"176.2 ")
 ;;244
 ;;21,"176.3 ")
 ;;245
 ;;21,"176.4 ")
 ;;246
 ;;21,"176.5 ")
 ;;247
 ;;21,"176.8 ")
 ;;248
 ;;21,"176.9 ")
 ;;249
 ;;21,"179 ")
 ;;250
 ;;21,"180 ")
 ;;251
 ;;21,"180.0 ")
 ;;252
 ;;21,"180.1 ")
 ;;253
 ;;21,"180.8 ")
 ;;254
 ;;21,"180.9 ")
 ;;255
 ;;21,"181 ")
 ;;256
 ;;21,"182 ")
 ;;257
 ;;21,"182.0 ")
 ;;258
 ;;21,"182.1 ")
 ;;259
 ;;21,"182.8 ")
 ;;260
 ;;21,"183 ")
 ;;261
 ;;21,"183.0 ")
 ;;262
 ;;21,"183.2 ")
 ;;263
 ;;21,"183.3 ")
 ;;264
 ;;21,"183.4 ")
 ;;265
 ;;21,"183.5 ")
 ;;266
 ;;21,"183.8 ")
 ;;267
 ;;21,"183.9 ")
 ;;268
 ;;21,"184 ")
 ;;269
 ;;21,"184.0 ")
 ;;270
 ;;21,"184.1 ")
 ;;271
 ;;21,"184.2 ")
 ;;272
 ;;21,"184.3 ")
 ;;273
 ;;21,"184.4 ")
 ;;274
 ;;21,"184.8 ")
 ;;275
 ;;21,"184.9 ")
 ;;276
 ;;21,"185 ")
 ;;277
 ;;21,"186 ")
 ;;278
 ;;21,"186.0 ")
 ;;279
 ;;21,"186.9 ")
 ;;280
 ;;21,"187 ")
 ;;281
 ;;21,"187.1 ")
 ;;282
 ;;21,"187.2 ")
 ;;283
 ;;21,"187.3 ")
 ;;284
 ;;21,"187.4 ")
 ;;285
 ;;21,"187.5 ")
 ;;286
 ;;21,"187.6 ")
 ;;287
 ;;21,"187.7 ")
 ;;288
 ;;21,"187.8 ")
 ;;289
 ;;21,"187.9 ")
 ;;290
 ;;21,"188 ")
 ;;291
 ;;21,"188.0 ")
 ;;292
 ;;21,"188.1 ")
 ;;293
 ;;21,"188.2 ")
 ;;294
 ;;21,"188.3 ")
 ;;295
 ;;21,"188.4 ")
 ;;296
 ;;21,"188.5 ")
 ;;297
 ;;21,"188.6 ")
 ;;298
 ;;21,"188.7 ")
 ;;299
 ;;21,"188.8 ")
 ;;300
 ;;21,"188.9 ")
 ;;301
 ;;21,"189 ")
 ;;302
 ;;21,"189.0 ")
 ;;303
 ;;21,"189.1 ")
 ;;304
 ;;21,"189.2 ")
 ;;305
 ;;21,"189.3 ")
 ;;306
 ;;21,"189.4 ")
 ;;307
 ;;21,"189.8 ")
 ;;308
 ;;21,"189.9 ")
 ;;309
 ;;21,"190 ")
 ;;310
 ;;21,"190.0 ")
 ;;311
 ;;21,"190.1 ")
 ;;312
 ;;21,"190.2 ")
 ;;313
 ;;21,"190.3 ")
 ;;314
 ;;21,"190.4 ")
 ;;315
 ;;21,"190.5 ")
 ;;316
 ;;21,"190.6 ")
 ;;317
 ;;21,"190.7 ")
 ;;318
 ;;21,"190.8 ")
 ;;319
 ;;21,"190.9 ")
 ;;320
 ;;21,"191 ")
 ;;321
 ;;21,"191.0 ")
 ;;322
 ;;21,"191.1 ")
 ;;323
 ;;21,"191.2 ")
 ;;324
 ;;21,"191.3 ")
 ;;325
 ;;21,"191.4 ")
 ;;326
 ;;21,"191.5 ")
 ;;327
 ;;21,"191.6 ")
 ;;328
 ;;21,"191.7 ")
 ;;329
 ;;21,"191.8 ")
 ;;330
 ;;21,"191.9 ")
 ;;331
 ;;21,"192 ")
 ;;332
 ;;21,"192.0 ")
 ;;333
 ;;21,"192.1 ")
 ;;334
 ;;21,"192.2 ")
 ;;335
 ;;21,"192.3 ")
 ;;336
 ;;21,"192.8 ")
 ;;337
 ;;21,"192.9 ")
 ;;338
 ;;21,"193 ")
 ;;339
 ;;21,"194 ")
 ;;340
 ;;21,"194.0 ")
 ;;341
 ;;21,"194.1 ")
 ;;342
 ;;21,"194.3 ")
 ;;343
 ;;21,"194.4 ")
 ;;344
 ;;21,"194.5 ")
 ;;345
 ;;21,"194.6 ")
 ;;346
 ;;21,"194.8 ")
 ;;347
 ;;21,"194.9 ")
 ;;348
 ;;21,"195 ")
 ;;349
 ;;21,"195.0 ")
 ;;350
 ;;21,"195.1 ")
 ;;351
 ;;21,"195.2 ")
 ;;352
 ;;21,"195.3 ")
 ;;353
 ;;21,"195.4 ")
 ;;354
 ;;21,"195.5 ")
 ;;355
 ;;21,"195.8 ")
 ;;356
 ;;21,"196 ")
 ;;357
 ;;21,"196.0 ")
 ;;358
 ;;21,"196.1 ")
 ;;359
 ;;21,"196.2 ")
 ;;360
 ;;21,"196.3 ")
 ;;361
 ;;21,"196.5 ")
 ;;362
 ;;21,"196.6 ")
 ;;363
 ;;21,"196.8 ")
 ;;364
 ;;21,"196.9 ")
 ;;365
 ;;21,"197 ")
 ;;366
 ;;21,"197.0 ")
 ;;367
 ;;21,"197.1 ")
 ;;368
 ;;21,"197.2 ")
 ;;369
 ;;21,"197.3 ")
 ;;370
 ;;21,"197.4 ")
 ;;371
 ;;21,"197.5 ")
 ;;372
 ;;21,"197.6 ")
 ;;373
 ;;21,"197.7 ")
 ;;374
 ;;21,"197.8 ")
 ;;375
 ;;21,"198 ")
 ;;376
 ;;21,"198.0 ")
 ;;377
 ;;21,"198.1 ")
 ;;378
 ;;21,"198.2 ")
 ;;379
 ;;21,"198.3 ")
 ;;380
 ;;21,"198.4 ")
 ;;381
 ;;21,"198.5 ")
 ;;382
 ;;21,"198.6 ")
 ;;383
 ;;21,"198.7 ")
 ;;384
 ;;21,"198.8 ")
 ;;385
 ;;21,"198.81 ")
 ;;386
 ;;21,"198.82 ")
 ;;387
 ;;21,"198.89 ")
 ;;388
 ;;21,"199 ")
 ;;389
 ;;21,"199.0 ")
 ;;390
 ;;21,"199.1 ")
 ;;391
 ;;21,"199.2 ")
 ;;392
 ;;21,"200 ")
 ;;393
 ;;21,"200.0 ")
 ;;394
 ;;21,"200.00 ")
 ;;395
 ;;21,"200.01 ")
 ;;396
 ;;21,"200.02 ")
 ;;397
 ;;21,"200.03 ")
 ;;398
 ;;21,"200.04 ")
 ;;399
 ;;21,"200.05 ")
 ;;400
 ;;21,"200.06 ")
 ;;401
 ;;21,"200.07 ")
 ;;402
 ;;21,"200.08 ")
 ;;403
 ;;21,"200.1 ")
 ;;404
 ;;21,"200.10 ")
 ;;405
 ;;21,"200.11 ")
 ;;406
 ;;21,"200.12 ")
 ;;407
 ;;21,"200.13 ")
 ;;408
 ;;21,"200.14 ")
 ;;409
 ;;21,"200.15 ")
 ;;410
 ;;21,"200.16 ")
 ;;411
 ;;21,"200.17 ")
 ;;412
 ;;21,"200.18 ")
 ;;413
 ;;21,"200.2 ")
 ;;414
 ;;21,"200.20 ")
 ;;415
 ;;21,"200.21 ")
 ;;416
 ;;21,"200.22 ")
 ;;417
 ;;21,"200.23 ")
 ;;418
 ;;21,"200.24 ")
 ;;419
 ;;21,"200.25 ")
 ;;420
 ;;21,"200.26 ")
 ;;421
 ;;21,"200.27 ")
 ;;422
 ;;21,"200.28 ")
 ;;423
 ;;21,"200.3 ")
 ;;424
 ;;21,"200.30 ")
 ;;425
 ;;21,"200.31 ")
 ;;426
 ;;21,"200.32 ")
 ;;427
 ;;21,"200.33 ")
 ;;428
 ;;21,"200.34 ")
 ;;429
 ;;21,"200.35 ")
 ;;430
 ;;21,"200.36 ")
 ;;431
 ;;21,"200.37 ")
 ;;432
 ;;21,"200.38 ")
 ;;433
 ;;21,"200.4 ")
 ;;434
 ;;21,"200.40 ")
 ;;435
 ;
OTHER ; OTHER ROUTINES
 D ^BGPM5ANX
 D ^BGPM5ANY
 D ^BGPM5ANZ
 D ^BGPM5AO
 D ^BGPM5AOA
 D ^BGPM5AOB
 D ^BGPM5AOC
 D ^BGPM5AOD
 D ^BGPM5AOE
 D ^BGPM5AOF
 Q