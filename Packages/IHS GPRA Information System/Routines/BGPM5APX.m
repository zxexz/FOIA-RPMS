BGPM5APX ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON AUG 16, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"51138003430 ")
 ;;1002
 ;;21,"51138003530 ")
 ;;1003
 ;;21,"51138003630 ")
 ;;1004
 ;;21,"51138006330 ")
 ;;1005
 ;;21,"51138006430 ")
 ;;1006
 ;;21,"51138006530 ")
 ;;1007
 ;;21,"51138006630 ")
 ;;1008
 ;;21,"51138006730 ")
 ;;1009
 ;;21,"51138006830 ")
 ;;1010
 ;;21,"51138013430 ")
 ;;1011
 ;;21,"51138013530 ")
 ;;1012
 ;;21,"51138013630 ")
 ;;1013
 ;;21,"51138013730 ")
 ;;1014
 ;;21,"51138013830 ")
 ;;1015
 ;;21,"51138013930 ")
 ;;1016
 ;;21,"51138021130 ")
 ;;1017
 ;;21,"51138021230 ")
 ;;1018
 ;;21,"51138021330 ")
 ;;1019
 ;;21,"51138021730 ")
 ;;1020
 ;;21,"51138021760 ")
 ;;1021
 ;;21,"51138021830 ")
 ;;1022
 ;;21,"51138021860 ")
 ;;1023
 ;;21,"51138021930 ")
 ;;1024
 ;;21,"51138021960 ")
 ;;1025
 ;;21,"51138022430 ")
 ;;1026
 ;;21,"51138022530 ")
 ;;1027
 ;;21,"51138022630 ")
 ;;1028
 ;;21,"51138023130 ")
 ;;1029
 ;;21,"51138023230 ")
 ;;1030
 ;;21,"51138023330 ")
 ;;1031
 ;;21,"51138030610 ")
 ;;1032
 ;;21,"51138030630 ")
 ;;1033
 ;;21,"51138030710 ")
 ;;1034
 ;;21,"51138030730 ")
 ;;1035
 ;;21,"51138030830 ")
 ;;1036
 ;;21,"51138032730 ")
 ;;1037
 ;;21,"51138032830 ")
 ;;1038
 ;;21,"51138032930 ")
 ;;1039
 ;;21,"51138033030 ")
 ;;1040
 ;;21,"51138033130 ")
 ;;1041
 ;;21,"51138033230 ")
 ;;1042
 ;;21,"51138033330 ")
 ;;1043
 ;;21,"51138033430 ")
 ;;1044
 ;;21,"51138033530 ")
 ;;1045
 ;;21,"51138033630 ")
 ;;1046
 ;;21,"51138034830 ")
 ;;1047
 ;;21,"51138034930 ")
 ;;1048
 ;;21,"51138035030 ")
 ;;1049
 ;;21,"51138035130 ")
 ;;1050
 ;;21,"51138044330 ")
 ;;1051
 ;;21,"51138044430 ")
 ;;1052
 ;;21,"51138049330 ")
 ;;1053
 ;;21,"51138049430 ")
 ;;1054
 ;;21,"51138050515 ")
 ;;1055
 ;;21,"51138050530 ")
 ;;1056
 ;;21,"51138050630 ")
 ;;1057
 ;;21,"51138050730 ")
 ;;1058
 ;;21,"51138050820 ")
 ;;1059
 ;;21,"51138050845 ")
 ;;1060
 ;;21,"51138052030 ")
 ;;1061
 ;;21,"51138052130 ")
 ;;1062
 ;;21,"51138052230 ")
 ;;1063
 ;;21,"51138052330 ")
 ;;1064
 ;;21,"51138052430 ")
 ;;1065
 ;;21,"51138052530 ")
 ;;1066
 ;;21,"51138055130 ")
 ;;1067
 ;;21,"51138055230 ")
 ;;1068
 ;;21,"51138055330 ")
 ;;1069
 ;;21,"51138055430 ")
 ;;1070
 ;;21,"51138055530 ")
 ;;1071
 ;;21,"51138055630 ")
 ;;1072
 ;;21,"51217370700 ")
 ;;1073
 ;;21,"51217371200 ")
 ;;1074
 ;;21,"51217371500 ")
 ;;1075
 ;;21,"51217372500 ")
 ;;1076
 ;;21,"51655023224 ")
 ;;1077
 ;;21,"51655023252 ")
 ;;1078
 ;;21,"51655023253 ")
 ;;1079
 ;;21,"51655023284 ")
 ;;1080
 ;;21,"51655027824 ")
 ;;1081
 ;;21,"51655028024 ")
 ;;1082
 ;;21,"51655028050 ")
 ;;1083
 ;;21,"51655028052 ")
 ;;1084
 ;;21,"51655028053 ")
 ;;1085
 ;;21,"51655028624 ")
 ;;1086
 ;;21,"51655028724 ")
 ;;1087
 ;;21,"51655029224 ")
 ;;1088
 ;;21,"51655029252 ")
 ;;1089
 ;;21,"51655029253 ")
 ;;1090
 ;;21,"51655062024 ")
 ;;1091
 ;;21,"51655067924 ")
 ;;1092
 ;;21,"51655067925 ")
 ;;1093
 ;;21,"51655067952 ")
 ;;1094
 ;;21,"51655067953 ")
 ;;1095
 ;;21,"51655067984 ")
 ;;1096
 ;;21,"51655072324 ")
 ;;1097
 ;;21,"51655072352 ")
 ;;1098
 ;;21,"51655072353 ")
 ;;1099
 ;;21,"51655074224 ")
 ;;1100
 ;;21,"51655074225 ")
 ;;1101
 ;;21,"51660052201 ")
 ;;1102
 ;;21,"51660052210 ")
 ;;1103
 ;;21,"51660052301 ")
 ;;1104
 ;;21,"51660052310 ")
 ;;1105
 ;;21,"51660052401 ")
 ;;1106
 ;;21,"51660052410 ")
 ;;1107
 ;;21,"51660052501 ")
 ;;1108
 ;;21,"51660052510 ")
 ;;1109
 ;;21,"51660053101 ")
 ;;1110
 ;;21,"51660053201 ")
 ;;1111
 ;;21,"51660053210 ")
 ;;1112
 ;;21,"51660053301 ")
 ;;1113
 ;;21,"51660053310 ")
 ;;1114
 ;;21,"51660053401 ")
 ;;1115
 ;;21,"51660053410 ")
 ;;1116
 ;;21,"51660053501 ")
 ;;1117
 ;;21,"51660053510 ")
 ;;1118
 ;;21,"51660053601 ")
 ;;1119
 ;;21,"51660053701 ")
 ;;1120
 ;;21,"51660053801 ")
 ;;1121
 ;;21,"51660054890 ")
 ;;1122
 ;;21,"51660054990 ")
 ;;1123
 ;;21,"51660055090 ")
 ;;1124
 ;;21,"51660055190 ")
 ;;1125
 ;;21,"51672403701 ")
 ;;1126
 ;;21,"51672403703 ")
 ;;1127
 ;;21,"51672403801 ")
 ;;1128
 ;;21,"51672403803 ")
 ;;1129
 ;;21,"51672403901 ")
 ;;1130
 ;;21,"51672403903 ")
 ;;1131
 ;;21,"51672404001 ")
 ;;1132
 ;;21,"51672404003 ")
 ;;1133
 ;;21,"51672404501 ")
 ;;1134
 ;;21,"51672404503 ")
 ;;1135
 ;;21,"51672404601 ")
 ;;1136
 ;;21,"51672404603 ")
 ;;1137
 ;;21,"51875095502 ")
 ;;1138
 ;;21,"51875095505 ")
 ;;1139
 ;;21,"52544066801 ")
 ;;1140
 ;;21,"52544066805 ")
 ;;1141
 ;;21,"52544066901 ")
 ;;1142
 ;;21,"52544066905 ")
 ;;1143
 ;;21,"52544067001 ")
 ;;1144
 ;;21,"52544067005 ")
 ;;1145
 ;;21,"52544067101 ")
 ;;1146
 ;;21,"52544068801 ")
 ;;1147
 ;;21,"52544068805 ")
 ;;1148
 ;;21,"52544068901 ")
 ;;1149
 ;;21,"52544068905 ")
 ;;1150
 ;;21,"52544069101 ")
 ;;1151
 ;;21,"52549403901 ")
 ;;1152
 ;;21,"52549403902 ")
 ;;1153
 ;;21,"52549403903 ")
 ;;1154
 ;;21,"52549404001 ")
 ;;1155
 ;;21,"52549404002 ")
 ;;1156
 ;;21,"52549404003 ")
 ;;1157
 ;;21,"52959013715 ")
 ;;1158
 ;;21,"52959018030 ")
 ;;1159
 ;;21,"52959018060 ")
 ;;1160
 ;;21,"52959049800 ")
 ;;1161
 ;;21,"52959072815 ")
 ;;1162
 ;;21,"52959072820 ")
 ;;1163
 ;;21,"52959072830 ")
 ;;1164
 ;;21,"52959072890 ")
 ;;1165
 ;;21,"52959072930 ")
 ;;1166
 ;;21,"52959072960 ")
 ;;1167
 ;;21,"52959072990 ")
 ;;1168
 ;;21,"52959075300 ")
 ;;1169
 ;;21,"52959075330 ")
 ;;1170
 ;;21,"52959075630 ")
 ;;1171
 ;;21,"52959085420 ")
 ;;1172
 ;;21,"52959085430 ")
 ;;1173
 ;;21,"52959094230 ")
 ;;1174
 ;;21,"52959097330 ")
 ;;1175
 ;;21,"52959099702 ")
 ;;1176
 ;;21,"52959099730 ")
 ;;1177
 ;;21,"52959099760 ")
 ;;1178
 ;;21,"52959099790 ")
 ;;1179
 ;;21,"53002043100 ")
 ;;1180
 ;;21,"53002043130 ")
 ;;1181
 ;;21,"53002043150 ")
 ;;1182
 ;;21,"53002043160 ")
 ;;1183
 ;;21,"53002043190 ")
 ;;1184
 ;;21,"53002102100 ")
 ;;1185
 ;;21,"53002102102 ")
 ;;1186
 ;;21,"53002102103 ")
 ;;1187
 ;;21,"53002102105 ")
 ;;1188
 ;;21,"53002102106 ")
 ;;1189
 ;;21,"53808010401 ")
 ;;1190
 ;;21,"53808021701 ")
 ;;1191
 ;;21,"53808024201 ")
 ;;1192
 ;;21,"53808024301 ")
 ;;1193
 ;;21,"53808024401 ")
 ;;1194
 ;;21,"53808034701 ")
 ;;1195
 ;;21,"53808034801 ")
 ;;1196
 ;;21,"53808037901 ")
 ;;1197
 ;;21,"53808045301 ")
 ;;1198
 ;;21,"53808061701 ")
 ;;1199
 ;;21,"53808064801 ")
 ;;1200
 ;;21,"53808066301 ")
 ;;1201
 ;;21,"53808070001 ")
 ;;1202
 ;;21,"53808070101 ")
 ;;1203
 ;;21,"53808070201 ")
 ;;1204
 ;;21,"53808070301 ")
 ;;1205
 ;;21,"53808091101 ")
 ;;1206
 ;;21,"53808091201 ")
 ;;1207
 ;;21,"53808096601 ")
 ;;1208
 ;;21,"53869022003 ")
 ;;1209
 ;;21,"53869022005 ")
 ;;1210
 ;;21,"53869022006 ")
 ;;1211
 ;;21,"53869022203 ")
 ;;1212
 ;;21,"53869022206 ")
 ;;1213
 ;;21,"53869022303 ")
 ;;1214
 ;;21,"53869022306 ")
 ;;1215
 ;;21,"53978017603 ")
 ;;1216
 ;;21,"53978023601 ")
 ;;1217
 ;;21,"53978023603 ")
 ;;1218
 ;;21,"53978023604 ")
 ;;1219
 ;;21,"53978023606 ")
 ;;1220
 ;;21,"53978051701 ")
 ;;1221
 ;;21,"53978051703 ")
 ;;1222
 ;;21,"53978051704 ")
 ;;1223
 ;;21,"53978051705 ")
 ;;1224
 ;;21,"53978051708 ")
 ;;1225
 ;;21,"53978093901 ")
 ;;1226
 ;;21,"53978093903 ")
 ;;1227
 ;;21,"53978093909 ")
 ;;1228
 ;;21,"53978100009 ")
 ;;1229
 ;;21,"53978101709 ")
 ;;1230
 ;;21,"53978112203 ")
 ;;1231
 ;;21,"53978301303 ")
 ;;1232
 ;;21,"53978301503 ")
 ;;1233
 ;;21,"53978301509 ")
 ;;1234
 ;;21,"53978301603 ")
 ;;1235
 ;;21,"53978301703 ")
 ;;1236
 ;;21,"53978301709 ")
 ;;1237
 ;;21,"53978306303 ")
 ;;1238
 ;;21,"54348072630 ")
 ;;1239
 ;;21,"54348072660 ")
 ;;1240
 ;;21,"54458099105 ")
 ;;1241
 ;;21,"54458099110 ")
 ;;1242
 ;;21,"54458099210 ")
 ;;1243
 ;;21,"54458099309 ")
 ;;1244
 ;;21,"54458099410 ")
 ;;1245
 ;;21,"54458099510 ")
 ;;1246
 ;;21,"54458099610 ")
 ;;1247
 ;;21,"54458099710 ")
 ;;1248
 ;;21,"54458099809 ")
 ;;1249
 ;;21,"54458099909 ")
 ;;1250
 ;;21,"54569060600 ")
 ;;1251
 ;;21,"54569060601 ")
 ;;1252
 ;;21,"54569060602 ")
 ;;1253
 ;;21,"54569060603 ")
 ;;1254
 ;;21,"54569060700 ")
 ;;1255
 ;;21,"54569060701 ")
 ;;1256
 ;;21,"54569060703 ")
 ;;1257
 ;;21,"54569061200 ")
 ;;1258
 ;;21,"54569175203 ")
 ;;1259
 ;;21,"54569194401 ")
 ;;1260
 ;;21,"54569194402 ")
 ;;1261
 ;;21,"54569194403 ")
 ;;1262
 ;;21,"54569205101 ")
 ;;1263
 ;;21,"54569205102 ")
 ;;1264
 ;;21,"54569266501 ")
 ;;1265
 ;;21,"54569266502 ")
 ;;1266
 ;;21,"54569325801 ")
 ;;1267
 ;;21,"54569330001 ")
 ;;1268
 ;;21,"54569371300 ")
 ;;1269
 ;;21,"54569371400 ")
 ;;1270
 ;;21,"54569377100 ")
 ;;1271
 ;;21,"54569398400 ")
 ;;1272
 ;;21,"54569398500 ")
 ;;1273
 ;;21,"54569424600 ")
 ;;1274
 ;;21,"54569424601 ")
 ;;1275
 ;;21,"54569424603 ")
 ;;1276
 ;;21,"54569424604 ")
 ;;1277
 ;;21,"54569424605 ")
 ;;1278
 ;;21,"54569424607 ")
 ;;1279
 ;;21,"54569424700 ")
 ;;1280
 ;;21,"54569424702 ")
 ;;1281
 ;;21,"54569424703 ")
 ;;1282
 ;;21,"54569424704 ")
 ;;1283
 ;;21,"54569427600 ")
 ;;1284
 ;;21,"54569457200 ")
 ;;1285
 ;;21,"54569459300 ")
 ;;1286
 ;;21,"54569459301 ")
 ;;1287
 ;;21,"54569459303 ")
 ;;1288
 ;;21,"54569469800 ")
 ;;1289
 ;;21,"54569471400 ")
 ;;1290
 ;;21,"54569471900 ")
 ;;1291
 ;;21,"54569471901 ")
 ;;1292
 ;;21,"54569476600 ")
 ;;1293
 ;;21,"54569476601 ")
 ;;1294
 ;;21,"54569476700 ")
 ;;1295
 ;;21,"54569482900 ")
 ;;1296
 ;;21,"54569489500 ")
 ;;1297
 ;;21,"54569494800 ")
 ;;1298
 ;;21,"54569499000 ")
 ;;1299
 ;;21,"54569513300 ")
 ;;1300
 ;;21,"54569513301 ")
 ;;1301
 ;;21,"54569513400 ")
 ;;1302
 ;;21,"54569513401 ")
 ;;1303
 ;;21,"54569513402 ")
 ;;1304
 ;;21,"54569513500 ")
 ;;1305
 ;;21,"54569513501 ")
 ;;1306
 ;;21,"54569536100 ")
 ;;1307
 ;;21,"54569536200 ")
 ;;1308
 ;;21,"54569543400 ")
 ;;1309
 ;;21,"54569543403 ")
 ;;1310
 ;;21,"54569543404 ")
 ;;1311
 ;;21,"54569543405 ")
 ;;1312
 ;;21,"54569543500 ")
 ;;1313
 ;;21,"54569543503 ")
 ;;1314
 ;;21,"54569543504 ")
 ;;1315
 ;;21,"54569543505 ")
 ;;1316
 ;;21,"54569543700 ")
 ;;1317
 ;;21,"54569543702 ")
 ;;1318
 ;;21,"54569543800 ")
 ;;1319
 ;;21,"54569543803 ")
 ;;1320
 ;;21,"54569547200 ")
 ;;1321
 ;;21,"54569547202 ")
 ;;1322
 ;;21,"54569560600 ")
 ;;1323
 ;;21,"54569562100 ")
 ;;1324
 ;;21,"54569566500 ")
 ;;1325
 ;;21,"54569566600 ")
 ;;1326
 ;;21,"54569566700 ")
 ;;1327
 ;;21,"54569570900 ")
 ;;1328
 ;;21,"54569571000 ")
 ;;1329
 ;;21,"54569571100 ")
 ;;1330
 ;;21,"54569572800 ")
 ;;1331
 ;;21,"54569580100 ")
 ;;1332
 ;;21,"54569586700 ")
 ;;1333
 ;;21,"54569590300 ")
 ;;1334
 ;;21,"54569591600 ")
 ;;1335
 ;;21,"54569593600 ")
 ;;1336
 ;;21,"54569599800 ")
 ;;1337
 ;;21,"54569609100 ")
 ;;1338
 ;;21,"54569609101 ")
 ;;1339
 ;;21,"54569609200 ")
 ;;1340
 ;;21,"54569609201 ")
 ;;1341
 ;;21,"54569609800 ")
 ;;1342
 ;;21,"54569622800 ")
 ;;1343
 ;;21,"54569851500 ")
 ;;1344
 ;;21,"54569852700 ")
 ;;1345
 ;;21,"54569858300 ")
 ;;1346
 ;;21,"54569858400 ")
 ;;1347
 ;;21,"54569859200 ")
 ;;1348
 ;;21,"54569859500 ")
 ;;1349
 ;;21,"54868054100 ")
 ;;1350
 ;;21,"54868054101 ")
 ;;1351
 ;;21,"54868054103 ")
 ;;1352
 ;;21,"54868054104 ")
 ;;1353