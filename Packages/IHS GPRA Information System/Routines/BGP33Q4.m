BGP33Q4 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 23, 2013;
 ;;13.0;IHS CLINICAL REPORTING;**1**;NOV 20, 2012;Build 7
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"54868-4421-00 ")
 ;;1181
 ;;21,"54868-4421-01 ")
 ;;1182
 ;;21,"54868-4421-02 ")
 ;;1183
 ;;21,"54868-4423-01 ")
 ;;1184
 ;;21,"54868-4424-00 ")
 ;;1185
 ;;21,"54868-4424-01 ")
 ;;1186
 ;;21,"54868-4424-02 ")
 ;;1187
 ;;21,"54868-4424-03 ")
 ;;1188
 ;;21,"54868-4435-00 ")
 ;;1189
 ;;21,"54868-4435-01 ")
 ;;1190
 ;;21,"54868-4435-02 ")
 ;;1191
 ;;21,"54868-4435-03 ")
 ;;1192
 ;;21,"54868-4576-00 ")
 ;;1193
 ;;21,"54868-4576-01 ")
 ;;1194
 ;;21,"54868-4576-02 ")
 ;;1195
 ;;21,"54868-4576-03 ")
 ;;1196
 ;;21,"54868-4577-00 ")
 ;;1197
 ;;21,"54868-4577-01 ")
 ;;1198
 ;;21,"54868-4577-03 ")
 ;;1199
 ;;21,"54868-4578-00 ")
 ;;1200
 ;;21,"54868-4578-01 ")
 ;;1201
 ;;21,"54868-4578-02 ")
 ;;1202
 ;;21,"54868-4578-03 ")
 ;;1203
 ;;21,"54868-4621-00 ")
 ;;1204
 ;;21,"54868-4661-00 ")
 ;;1205
 ;;21,"54868-4661-01 ")
 ;;1206
 ;;21,"54868-4661-02 ")
 ;;1207
 ;;21,"54868-4661-03 ")
 ;;1208
 ;;21,"54868-4844-00 ")
 ;;1209
 ;;21,"54868-4844-01 ")
 ;;1210
 ;;21,"54868-4844-02 ")
 ;;1211
 ;;21,"54868-4903-00 ")
 ;;1212
 ;;21,"54868-4903-01 ")
 ;;1213
 ;;21,"54868-4903-02 ")
 ;;1214
 ;;21,"54868-4921-00 ")
 ;;1215
 ;;21,"54868-4921-01 ")
 ;;1216
 ;;21,"54868-4932-00 ")
 ;;1217
 ;;21,"54868-4932-01 ")
 ;;1218
 ;;21,"54868-5013-00 ")
 ;;1219
 ;;21,"54868-5021-00 ")
 ;;1220
 ;;21,"54868-5021-01 ")
 ;;1221
 ;;21,"54868-5021-02 ")
 ;;1222
 ;;21,"54868-5068-00 ")
 ;;1223
 ;;21,"54868-5068-01 ")
 ;;1224
 ;;21,"54868-5068-02 ")
 ;;1225
 ;;21,"54868-5068-03 ")
 ;;1226
 ;;21,"54868-5095-00 ")
 ;;1227
 ;;21,"54868-5095-01 ")
 ;;1228
 ;;21,"54868-5095-02 ")
 ;;1229
 ;;21,"54868-5095-03 ")
 ;;1230
 ;;21,"54868-5295-00 ")
 ;;1231
 ;;21,"54868-5295-01 ")
 ;;1232
 ;;21,"54868-5344-00 ")
 ;;1233
 ;;21,"54868-5344-01 ")
 ;;1234
 ;;21,"54868-5344-02 ")
 ;;1235
 ;;21,"54868-5395-00 ")
 ;;1236
 ;;21,"54868-5400-00 ")
 ;;1237
 ;;21,"54868-5400-01 ")
 ;;1238
 ;;21,"54868-5520-00 ")
 ;;1239
 ;;21,"54868-5524-00 ")
 ;;1240
 ;;21,"54868-5524-01 ")
 ;;1241
 ;;21,"54868-5549-00 ")
 ;;1242
 ;;21,"54868-5549-01 ")
 ;;1243
 ;;21,"54868-5564-00 ")
 ;;1244
 ;;21,"54868-5564-01 ")
 ;;1245
 ;;21,"54868-5614-00 ")
 ;;1246
 ;;21,"54868-5729-00 ")
 ;;1247
 ;;21,"54868-5729-01 ")
 ;;1248
 ;;21,"54868-5729-02 ")
 ;;1249
 ;;21,"54868-5729-03 ")
 ;;1250
 ;;21,"54868-5729-04 ")
 ;;1251
 ;;21,"54868-5730-00 ")
 ;;1252
 ;;21,"54868-5730-01 ")
 ;;1253
 ;;21,"54868-5730-02 ")
 ;;1254
 ;;21,"54868-5730-03 ")
 ;;1255
 ;;21,"54868-5731-00 ")
 ;;1256
 ;;21,"54868-5731-01 ")
 ;;1257
 ;;21,"54868-5731-02 ")
 ;;1258
 ;;21,"54868-5731-03 ")
 ;;1259
 ;;21,"54868-5732-00 ")
 ;;1260
 ;;21,"54868-5755-00 ")
 ;;1261
 ;;21,"54868-5755-01 ")
 ;;1262
 ;;21,"54868-5771-00 ")
 ;;1263
 ;;21,"54868-5771-01 ")
 ;;1264
 ;;21,"54868-5773-00 ")
 ;;1265
 ;;21,"54868-5773-01 ")
 ;;1266
 ;;21,"54868-5773-02 ")
 ;;1267
 ;;21,"54868-5773-03 ")
 ;;1268
 ;;21,"54868-5817-00 ")
 ;;1269
 ;;21,"54868-5817-01 ")
 ;;1270
 ;;21,"54868-5869-00 ")
 ;;1271
 ;;21,"54868-5869-01 ")
 ;;1272
 ;;21,"54868-5944-00 ")
 ;;1273
 ;;21,"54868-6018-00 ")
 ;;1274
 ;;21,"54868-6019-00 ")
 ;;1275
 ;;21,"54868-6019-01 ")
 ;;1276
 ;;21,"54921-0101-10 ")
 ;;1277
 ;;21,"54921-0101-39 ")
 ;;1278
 ;;21,"54921-0105-10 ")
 ;;1279
 ;;21,"54921-0105-34 ")
 ;;1280
 ;;21,"54921-0105-39 ")
 ;;1281
 ;;21,"54921-0107-10 ")
 ;;1282
 ;;21,"54921-0115-10 ")
 ;;1283
 ;;21,"55045-1236-07 ")
 ;;1284
 ;;21,"55045-1236-08 ")
 ;;1285
 ;;21,"55045-1236-09 ")
 ;;1286
 ;;21,"55045-1860-06 ")
 ;;1287
 ;;21,"55045-2078-01 ")
 ;;1288
 ;;21,"55045-2078-06 ")
 ;;1289
 ;;21,"55045-2078-08 ")
 ;;1290
 ;;21,"55045-2217-00 ")
 ;;1291
 ;;21,"55045-2217-02 ")
 ;;1292
 ;;21,"55045-2217-06 ")
 ;;1293
 ;;21,"55045-2217-08 ")
 ;;1294
 ;;21,"55045-2217-09 ")
 ;;1295
 ;;21,"55045-2269-08 ")
 ;;1296
 ;;21,"55045-2269-09 ")
 ;;1297
 ;;21,"55045-2282-00 ")
 ;;1298
 ;;21,"55045-2282-02 ")
 ;;1299
 ;;21,"55045-2282-06 ")
 ;;1300
 ;;21,"55045-2282-07 ")
 ;;1301
 ;;21,"55045-2282-08 ")
 ;;1302
 ;;21,"55045-2282-09 ")
 ;;1303
 ;;21,"55045-2431-01 ")
 ;;1304
 ;;21,"55045-2431-08 ")
 ;;1305
 ;;21,"55045-2498-01 ")
 ;;1306
 ;;21,"55045-2498-08 ")
 ;;1307
 ;;21,"55045-2755-08 ")
 ;;1308
 ;;21,"55045-2990-08 ")
 ;;1309
 ;;21,"55045-3006-08 ")
 ;;1310
 ;;21,"55045-3160-00 ")
 ;;1311
 ;;21,"55045-3361-01 ")
 ;;1312
 ;;21,"55045-3361-08 ")
 ;;1313
 ;;21,"55045-3371-08 ")
 ;;1314
 ;;21,"55045-3762-08 ")
 ;;1315
 ;;21,"55045-3798-01 ")
 ;;1316
 ;;21,"55111-0252-01 ")
 ;;1317
 ;;21,"55111-0252-05 ")
 ;;1318
 ;;21,"55111-0253-01 ")
 ;;1319
 ;;21,"55111-0253-05 ")
 ;;1320
 ;;21,"55111-0254-01 ")
 ;;1321
 ;;21,"55111-0254-05 ")
 ;;1322
 ;;21,"55111-0255-01 ")
 ;;1323
 ;;21,"55111-0255-05 ")
 ;;1324
 ;;21,"55111-0466-01 ")
 ;;1325
 ;;21,"55111-0466-05 ")
 ;;1326
 ;;21,"55111-0467-01 ")
 ;;1327
 ;;21,"55111-0467-05 ")
 ;;1328
 ;;21,"55111-0468-01 ")
 ;;1329
 ;;21,"55111-0468-05 ")
 ;;1330
 ;;21,"55111-0469-01 ")
 ;;1331
 ;;21,"55111-0469-05 ")
 ;;1332
 ;;21,"55289-0093-30 ")
 ;;1333
 ;;21,"55289-0093-60 ")
 ;;1334
 ;;21,"55289-0093-90 ")
 ;;1335
 ;;21,"55289-0093-93 ")
 ;;1336
 ;;21,"55289-0093-97 ")
 ;;1337
 ;;21,"55289-0227-01 ")
 ;;1338
 ;;21,"55289-0227-30 ")
 ;;1339
 ;;21,"55289-0227-90 ")
 ;;1340
 ;;21,"55289-0227-97 ")
 ;;1341
 ;;21,"55289-0228-01 ")
 ;;1342
 ;;21,"55289-0228-03 ")
 ;;1343
 ;;21,"55289-0228-06 ")
 ;;1344
 ;;21,"55289-0228-14 ")
 ;;1345
 ;;21,"55289-0228-30 ")
 ;;1346
 ;;21,"55289-0228-60 ")
 ;;1347
 ;;21,"55289-0228-90 ")
 ;;1348
 ;;21,"55289-0228-97 ")
 ;;1349
 ;;21,"55289-0233-01 ")
 ;;1350
 ;;21,"55289-0233-12 ")
 ;;1351
 ;;21,"55289-0233-60 ")
 ;;1352
 ;;21,"55289-0233-90 ")
 ;;1353
 ;;21,"55289-0233-97 ")
 ;;1354
 ;;21,"55289-0234-01 ")
 ;;1355
 ;;21,"55289-0234-30 ")
 ;;1356
 ;;21,"55289-0234-90 ")
 ;;1357
 ;;21,"55289-0254-30 ")
 ;;1358
 ;;21,"55289-0382-30 ")
 ;;1359
 ;;21,"55289-0382-93 ")
 ;;1360
 ;;21,"55289-0413-28 ")
 ;;1361
 ;;21,"55289-0413-30 ")
 ;;1362
 ;;21,"55289-0413-60 ")
 ;;1363
 ;;21,"55289-0413-90 ")
 ;;1364
 ;;21,"55289-0413-93 ")
 ;;1365
 ;;21,"55289-0413-94 ")
 ;;1366
 ;;21,"55289-0413-97 ")
 ;;1367
 ;;21,"55289-0587-30 ")
 ;;1368
 ;;21,"55289-0627-30 ")
 ;;1369
 ;;21,"55289-0630-30 ")
 ;;1370
 ;;21,"55289-0653-30 ")
 ;;1371
 ;;21,"55289-0653-90 ")
 ;;1372
 ;;21,"55289-0855-30 ")
 ;;1373
 ;;21,"55289-0902-30 ")
 ;;1374
 ;;21,"55289-0986-30 ")
 ;;1375
 ;;21,"55289-0988-30 ")
 ;;1376
 ;;21,"55289-0993-30 ")
 ;;1377
 ;;21,"55289-0993-60 ")
 ;;1378
 ;;21,"55289-0993-90 ")
 ;;1379
 ;;21,"55887-0048-60 ")
 ;;1380
 ;;21,"55887-0049-30 ")
 ;;1381
 ;;21,"55887-0049-60 ")
 ;;1382
 ;;21,"55887-0074-01 ")
 ;;1383
 ;;21,"55887-0074-30 ")
 ;;1384
 ;;21,"55887-0074-60 ")
 ;;1385
 ;;21,"55887-0074-90 ")
 ;;1386
 ;;21,"55887-0180-01 ")
 ;;1387
 ;;21,"55887-0180-30 ")
 ;;1388
 ;;21,"55887-0242-30 ")
 ;;1389
 ;;21,"55887-0259-30 ")
 ;;1390
 ;;21,"55887-0267-30 ")
 ;;1391
 ;;21,"55887-0274-01 ")
 ;;1392
 ;;21,"55887-0274-30 ")
 ;;1393
 ;;21,"55887-0274-60 ")
 ;;1394
 ;;21,"55887-0274-90 ")
 ;;1395
 ;;21,"55887-0348-30 ")
 ;;1396
 ;;21,"55887-0349-20 ")
 ;;1397
 ;;21,"55887-0349-30 ")
 ;;1398
 ;;21,"55887-0349-90 ")
 ;;1399
 ;;21,"55887-0453-30 ")
 ;;1400
 ;;21,"55887-0453-60 ")
 ;;1401
 ;;21,"55887-0474-01 ")
 ;;1402
 ;;21,"55887-0474-30 ")
 ;;1403
 ;;21,"55887-0474-60 ")
 ;;1404
 ;;21,"55887-0474-90 ")
 ;;1405
 ;;21,"55887-0474-92 ")
 ;;1406
 ;;21,"55887-0559-01 ")
 ;;1407
 ;;21,"55887-0559-30 ")
 ;;1408
 ;;21,"55887-0559-60 ")
 ;;1409
 ;;21,"55887-0559-90 ")
 ;;1410
 ;;21,"55887-0575-60 ")
 ;;1411
 ;;21,"55887-0585-01 ")
 ;;1412
 ;;21,"55887-0585-30 ")
 ;;1413
 ;;21,"55887-0585-60 ")
 ;;1414
 ;;21,"55887-0585-82 ")
 ;;1415
 ;;21,"55887-0585-90 ")
 ;;1416
 ;;21,"55887-0599-30 ")
 ;;1417
 ;;21,"55887-0599-60 ")
 ;;1418
 ;;21,"55887-0599-90 ")
 ;;1419
 ;;21,"55887-0613-30 ")
 ;;1420
 ;;21,"55887-0613-60 ")
 ;;1421
 ;;21,"55887-0613-82 ")
 ;;1422
 ;;21,"55887-0625-01 ")
 ;;1423
 ;;21,"55887-0625-30 ")
 ;;1424
 ;;21,"55887-0625-60 ")
 ;;1425
 ;;21,"55887-0625-90 ")
 ;;1426
 ;;21,"55887-0729-30 ")
 ;;1427
 ;;21,"55887-0731-60 ")
 ;;1428
 ;;21,"55887-0792-90 ")
 ;;1429
 ;;21,"55887-0832-20 ")
 ;;1430
 ;;21,"55887-0832-30 ")
 ;;1431
 ;;21,"55887-0832-60 ")
 ;;1432
 ;;21,"55887-0838-01 ")
 ;;1433
 ;;21,"55887-0838-30 ")
 ;;1434
 ;;21,"55887-0838-60 ")
 ;;1435
 ;;21,"55887-0838-90 ")
 ;;1436
 ;;21,"55887-0998-30 ")
 ;;1437
 ;;21,"55887-0998-60 ")
 ;;1438
 ;;21,"55887-0998-90 ")
 ;;1439
 ;;21,"57664-0166-08 ")
 ;;1440
 ;;21,"57664-0166-18 ")
 ;;1441
 ;;21,"57664-0166-52 ")
 ;;1442
 ;;21,"57664-0166-58 ")
 ;;1443
 ;;21,"57664-0167-08 ")
 ;;1444
 ;;21,"57664-0167-18 ")
 ;;1445
 ;;21,"57664-0167-52 ")
 ;;1446
 ;;21,"57664-0167-58 ")
 ;;1447
 ;;21,"57664-0242-13 ")
 ;;1448
 ;;21,"57664-0242-18 ")
 ;;1449
 ;;21,"57664-0242-88 ")
 ;;1450
 ;;21,"57664-0244-13 ")
 ;;1451
 ;;21,"57664-0244-18 ")
 ;;1452
 ;;21,"57664-0244-88 ")
 ;;1453
 ;;21,"57664-0245-13 ")
 ;;1454
 ;;21,"57664-0245-18 ")
 ;;1455
 ;;21,"57664-0245-88 ")
 ;;1456
 ;;21,"57664-0247-13 ")
 ;;1457
 ;;21,"57664-0247-18 ")
 ;;1458
 ;;21,"57664-0247-88 ")
 ;;1459
 ;;21,"57664-0264-18 ")
 ;;1460
 ;;21,"57664-0264-88 ")
 ;;1461
 ;;21,"57664-0265-18 ")
 ;;1462
 ;;21,"57664-0265-88 ")
 ;;1463
 ;;21,"57664-0266-18 ")
 ;;1464
 ;;21,"57664-0266-88 ")
 ;;1465
 ;;21,"57664-0477-08 ")
 ;;1466
 ;;21,"57664-0477-18 ")
 ;;1467
 ;;21,"57664-0477-52 ")
 ;;1468
 ;;21,"57664-0477-58 ")
 ;;1469
 ;;21,"57664-0506-08 ")
 ;;1470
 ;;21,"57664-0506-18 ")
 ;;1471
 ;;21,"57664-0506-52 ")
 ;;1472
 ;;21,"57664-0506-58 ")
 ;;1473
 ;;21,"57866-3155-01 ")
 ;;1474
 ;;21,"57866-3330-01 ")
 ;;1475
 ;;21,"57866-3330-03 ")
 ;;1476
 ;;21,"57866-3331-01 ")
 ;;1477
 ;;21,"57866-3331-02 ")
 ;;1478
 ;;21,"57866-3331-03 ")
 ;;1479
 ;;21,"57866-3332-01 ")
 ;;1480
 ;;21,"57866-3332-03 ")
 ;;1481
 ;;21,"57866-6578-01 ")
 ;;1482
 ;;21,"57866-6579-01 ")
 ;;1483
 ;;21,"57866-7068-01 ")
 ;;1484
 ;;21,"57866-7068-02 ")
 ;;1485
 ;;21,"58016-0001-00 ")
 ;;1486
 ;;21,"58016-0001-30 ")
 ;;1487
 ;;21,"58016-0001-60 ")
 ;;1488
 ;;21,"58016-0001-90 ")
 ;;1489
 ;;21,"58016-0045-00 ")
 ;;1490
 ;;21,"58016-0045-30 ")
 ;;1491
 ;;21,"58016-0045-60 ")
 ;;1492
 ;;21,"58016-0045-90 ")
 ;;1493
 ;;21,"58016-0188-00 ")
 ;;1494
 ;;21,"58016-0188-02 ")
 ;;1495
 ;;21,"58016-0188-30 ")
 ;;1496
 ;;21,"58016-0188-60 ")
 ;;1497
 ;;21,"58016-0188-90 ")
 ;;1498
 ;;21,"58016-0286-00 ")
 ;;1499
 ;;21,"58016-0286-02 ")
 ;;1500
 ;;21,"58016-0286-30 ")
 ;;1501
 ;;21,"58016-0286-60 ")
 ;;1502
 ;;21,"58016-0286-90 ")
 ;;1503
 ;;21,"58016-0300-00 ")
 ;;1504
 ;;21,"58016-0300-30 ")
 ;;1505
 ;;21,"58016-0300-60 ")
 ;;1506
 ;;21,"58016-0300-90 ")
 ;;1507
 ;;21,"58016-0331-00 ")
 ;;1508
 ;;21,"58016-0331-30 ")
 ;;1509
 ;;21,"58016-0331-60 ")
 ;;1510
 ;;21,"58016-0331-90 ")
 ;;1511
 ;;21,"58016-0333-00 ")
 ;;1512
 ;;21,"58016-0333-15 ")
 ;;1513
 ;;21,"58016-0333-30 ")
 ;;1514
 ;;21,"58016-0333-60 ")
 ;;1515
 ;;21,"58016-0373-00 ")
 ;;1516
 ;;21,"58016-0373-02 ")
 ;;1517
 ;;21,"58016-0373-90 ")
 ;;1518
 ;;21,"58016-0442-00 ")
 ;;1519
 ;;21,"58016-0442-02 ")
 ;;1520
 ;;21,"58016-0442-30 ")
 ;;1521
 ;;21,"58016-0442-60 ")
 ;;1522
 ;;21,"58016-0442-90 ")
 ;;1523
 ;;21,"58016-0442-99 ")
 ;;1524
 ;;21,"58016-0526-00 ")
 ;;1525
 ;;21,"58016-0526-02 ")
 ;;1526
 ;;21,"58016-0526-30 ")
 ;;1527
 ;;21,"58016-0526-60 ")
 ;;1528
 ;;21,"58016-0526-90 ")
 ;;1529
 ;;21,"58016-0528-00 ")
 ;;1530
 ;;21,"58016-0528-30 ")
 ;;1531
 ;;21,"58016-0528-60 ")
 ;;1532
 ;;21,"58016-0529-00 ")
 ;;1533
 ;;21,"58016-0529-10 ")
 ;;1534
 ;;21,"58016-0529-30 ")
 ;;1535
 ;;21,"58016-0529-50 ")
 ;;1536
 ;;21,"58016-0531-00 ")
 ;;1537
 ;;21,"58016-0531-30 ")
 ;;1538
 ;;21,"58016-0532-00 ")
 ;;1539
 ;;21,"58016-0532-02 ")
 ;;1540
 ;;21,"58016-0532-30 ")
 ;;1541
 ;;21,"58016-0532-60 ")
 ;;1542
 ;;21,"58016-0582-00 ")
 ;;1543
 ;;21,"58016-0582-15 ")
 ;;1544
 ;;21,"58016-0582-20 ")
 ;;1545
 ;;21,"58016-0582-30 ")
 ;;1546
 ;;21,"58016-0582-60 ")
 ;;1547
 ;;21,"58016-0604-00 ")
 ;;1548
 ;;21,"58016-0604-30 ")
 ;;1549
 ;;21,"58016-0604-60 ")
 ;;1550
 ;;21,"58016-0604-90 ")
 ;;1551
 ;;21,"58016-0771-00 ")
 ;;1552
 ;;21,"58016-0771-12 ")
 ;;1553
 ;;21,"58016-0771-15 ")
 ;;1554
 ;;21,"58016-0771-20 ")
 ;;1555
 ;;21,"58016-0771-30 ")
 ;;1556
 ;;21,"58016-0771-60 ")
 ;;1557
 ;;21,"58016-0859-00 ")
 ;;1558
 ;;21,"58016-0859-30 ")
 ;;1559
 ;;21,"58016-0859-60 ")
 ;;1560
 ;;21,"58016-0859-90 ")
 ;;1561
 ;;21,"58016-0974-00 ")
 ;;1562
 ;;21,"58016-0974-30 ")
 ;;1563
 ;;21,"58016-0974-60 ")
 ;;1564
 ;;21,"58016-0974-90 ")
 ;;1565
 ;;21,"58177-0293-04 ")
 ;;1566