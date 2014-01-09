BGP33J12 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 23, 2013;
 ;;13.0;IHS CLINICAL REPORTING;**1**;NOV 20, 2012;Build 7
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"55045-1918-06 ")
 ;;4269
 ;;21,"55045-1918-07 ")
 ;;4270
 ;;21,"55045-1918-08 ")
 ;;4271
 ;;21,"55045-1918-09 ")
 ;;4272
 ;;21,"55045-2004-00 ")
 ;;4273
 ;;21,"55045-2004-04 ")
 ;;4274
 ;;21,"55045-2004-05 ")
 ;;4275
 ;;21,"55045-2004-06 ")
 ;;4276
 ;;21,"55045-2004-08 ")
 ;;4277
 ;;21,"55045-2006-00 ")
 ;;4278
 ;;21,"55045-2006-01 ")
 ;;4279
 ;;21,"55045-2006-02 ")
 ;;4280
 ;;21,"55045-2006-03 ")
 ;;4281
 ;;21,"55045-2006-04 ")
 ;;4282
 ;;21,"55045-2006-05 ")
 ;;4283
 ;;21,"55045-2006-06 ")
 ;;4284
 ;;21,"55045-2006-07 ")
 ;;4285
 ;;21,"55045-2006-08 ")
 ;;4286
 ;;21,"55045-2006-09 ")
 ;;4287
 ;;21,"55045-2012-02 ")
 ;;4288
 ;;21,"55045-2012-05 ")
 ;;4289
 ;;21,"55045-2012-08 ")
 ;;4290
 ;;21,"55045-2012-09 ")
 ;;4291
 ;;21,"55045-2067-07 ")
 ;;4292
 ;;21,"55045-2076-02 ")
 ;;4293
 ;;21,"55045-2076-03 ")
 ;;4294
 ;;21,"55045-2076-04 ")
 ;;4295
 ;;21,"55045-2076-06 ")
 ;;4296
 ;;21,"55045-2155-03 ")
 ;;4297
 ;;21,"55045-2162-04 ")
 ;;4298
 ;;21,"55045-2162-07 ")
 ;;4299
 ;;21,"55045-2162-08 ")
 ;;4300
 ;;21,"55045-2302-03 ")
 ;;4301
 ;;21,"55045-2372-05 ")
 ;;4302
 ;;21,"55045-2373-05 ")
 ;;4303
 ;;21,"55045-2373-06 ")
 ;;4304
 ;;21,"55045-2373-08 ")
 ;;4305
 ;;21,"55045-2426-01 ")
 ;;4306
 ;;21,"55045-2426-02 ")
 ;;4307
 ;;21,"55045-2426-03 ")
 ;;4308
 ;;21,"55045-2426-06 ")
 ;;4309
 ;;21,"55045-2426-07 ")
 ;;4310
 ;;21,"55045-2426-08 ")
 ;;4311
 ;;21,"55045-2492-06 ")
 ;;4312
 ;;21,"55045-2597-01 ")
 ;;4313
 ;;21,"55045-2597-02 ")
 ;;4314
 ;;21,"55045-2597-03 ")
 ;;4315
 ;;21,"55045-2597-05 ")
 ;;4316
 ;;21,"55045-2597-06 ")
 ;;4317
 ;;21,"55045-2597-08 ")
 ;;4318
 ;;21,"55045-2598-03 ")
 ;;4319
 ;;21,"55045-2610-01 ")
 ;;4320
 ;;21,"55045-2610-02 ")
 ;;4321
 ;;21,"55045-2610-04 ")
 ;;4322
 ;;21,"55045-2610-06 ")
 ;;4323
 ;;21,"55045-2610-07 ")
 ;;4324
 ;;21,"55045-2610-09 ")
 ;;4325
 ;;21,"55045-2672-01 ")
 ;;4326
 ;;21,"55045-2672-02 ")
 ;;4327
 ;;21,"55045-2672-06 ")
 ;;4328
 ;;21,"55045-2672-08 ")
 ;;4329
 ;;21,"55045-2672-09 ")
 ;;4330
 ;;21,"55045-2756-00 ")
 ;;4331
 ;;21,"55045-2843-01 ")
 ;;4332
 ;;21,"55045-2843-05 ")
 ;;4333
 ;;21,"55045-2843-07 ")
 ;;4334
 ;;21,"55045-2953-02 ")
 ;;4335
 ;;21,"55045-2953-04 ")
 ;;4336
 ;;21,"55045-2953-05 ")
 ;;4337
 ;;21,"55045-2953-06 ")
 ;;4338
 ;;21,"55045-2953-07 ")
 ;;4339
 ;;21,"55045-2953-08 ")
 ;;4340
 ;;21,"55045-2966-03 ")
 ;;4341
 ;;21,"55045-2966-07 ")
 ;;4342
 ;;21,"55045-2966-08 ")
 ;;4343
 ;;21,"55045-2992-02 ")
 ;;4344
 ;;21,"55045-2993-02 ")
 ;;4345
 ;;21,"55045-3016-07 ")
 ;;4346
 ;;21,"55045-3080-00 ")
 ;;4347
 ;;21,"55045-3080-01 ")
 ;;4348
 ;;21,"55045-3080-02 ")
 ;;4349
 ;;21,"55045-3080-03 ")
 ;;4350
 ;;21,"55045-3080-05 ")
 ;;4351
 ;;21,"55045-3080-07 ")
 ;;4352
 ;;21,"55045-3080-08 ")
 ;;4353
 ;;21,"55045-3081-00 ")
 ;;4354
 ;;21,"55045-3081-01 ")
 ;;4355
 ;;21,"55045-3081-02 ")
 ;;4356
 ;;21,"55045-3081-03 ")
 ;;4357
 ;;21,"55045-3081-06 ")
 ;;4358
 ;;21,"55045-3081-07 ")
 ;;4359
 ;;21,"55045-3081-08 ")
 ;;4360
 ;;21,"55045-3081-09 ")
 ;;4361
 ;;21,"55045-3142-01 ")
 ;;4362
 ;;21,"55045-3142-05 ")
 ;;4363
 ;;21,"55045-3142-07 ")
 ;;4364
 ;;21,"55045-3194-01 ")
 ;;4365
 ;;21,"55045-3194-03 ")
 ;;4366
 ;;21,"55045-3194-04 ")
 ;;4367
 ;;21,"55045-3194-06 ")
 ;;4368
 ;;21,"55045-3194-09 ")
 ;;4369
 ;;21,"55045-3232-01 ")
 ;;4370
 ;;21,"55045-3233-08 ")
 ;;4371
 ;;21,"55045-3260-01 ")
 ;;4372
 ;;21,"55045-3260-06 ")
 ;;4373
 ;;21,"55045-3260-09 ")
 ;;4374
 ;;21,"55045-3268-04 ")
 ;;4375
 ;;21,"55045-3268-06 ")
 ;;4376
 ;;21,"55045-3268-08 ")
 ;;4377
 ;;21,"55045-3288-02 ")
 ;;4378
 ;;21,"55045-3288-05 ")
 ;;4379
 ;;21,"55045-3288-08 ")
 ;;4380
 ;;21,"55045-3306-04 ")
 ;;4381
 ;;21,"55045-3306-05 ")
 ;;4382
 ;;21,"55045-3306-06 ")
 ;;4383
 ;;21,"55045-3306-08 ")
 ;;4384
 ;;21,"55045-3310-08 ")
 ;;4385
 ;;21,"55045-3355-00 ")
 ;;4386
 ;;21,"55045-3355-01 ")
 ;;4387
 ;;21,"55045-3385-05 ")
 ;;4388
 ;;21,"55045-3414-05 ")
 ;;4389
 ;;21,"55045-3442-06 ")
 ;;4390
 ;;21,"55045-3452-01 ")
 ;;4391
 ;;21,"55045-3466-08 ")
 ;;4392
 ;;21,"55045-3467-01 ")
 ;;4393
 ;;21,"55045-3479-06 ")
 ;;4394
 ;;21,"55045-3483-02 ")
 ;;4395
 ;;21,"55045-3490-01 ")
 ;;4396
 ;;21,"55045-3503-01 ")
 ;;4397
 ;;21,"55045-3511-01 ")
 ;;4398
 ;;21,"55045-3511-02 ")
 ;;4399
 ;;21,"55045-3516-01 ")
 ;;4400
 ;;21,"55045-3519-01 ")
 ;;4401
 ;;21,"55045-3532-01 ")
 ;;4402
 ;;21,"55045-3570-01 ")
 ;;4403
 ;;21,"55045-3693-01 ")
 ;;4404
 ;;21,"55045-3698-03 ")
 ;;4405
 ;;21,"55045-3725-01 ")
 ;;4406
 ;;21,"55045-3726-02 ")
 ;;4407
 ;;21,"55045-3727-01 ")
 ;;4408
 ;;21,"55111-0125-06 ")
 ;;4409
 ;;21,"55111-0126-01 ")
 ;;4410
 ;;21,"55111-0126-05 ")
 ;;4411
 ;;21,"55111-0127-01 ")
 ;;4412
 ;;21,"55111-0127-05 ")
 ;;4413
 ;;21,"55111-0128-50 ")
 ;;4414
 ;;21,"55111-0160-50 ")
 ;;4415
 ;;21,"55111-0161-50 ")
 ;;4416
 ;;21,"55111-0162-01 ")
 ;;4417
 ;;21,"55111-0279-50 ")
 ;;4418
 ;;21,"55111-0280-50 ")
 ;;4419
 ;;21,"55111-0281-30 ")
 ;;4420
 ;;21,"55111-0422-01 ")
 ;;4421
 ;;21,"55111-0422-30 ")
 ;;4422
 ;;21,"55111-0423-30 ")
 ;;4423
 ;;21,"55111-0637-01 ")
 ;;4424
 ;;21,"55111-0638-01 ")
 ;;4425
 ;;21,"55111-0639-60 ")
 ;;4426
 ;;21,"55150-0111-10 ")
 ;;4427
 ;;21,"55150-0112-10 ")
 ;;4428
 ;;21,"55150-0113-10 ")
 ;;4429
 ;;21,"55150-0114-20 ")
 ;;4430
 ;;21,"55150-0115-99 ")
 ;;4431
 ;;21,"55289-0008-10 ")
 ;;4432
 ;;21,"55289-0008-20 ")
 ;;4433
 ;;21,"55289-0019-06 ")
 ;;4434
 ;;21,"55289-0019-15 ")
 ;;4435
 ;;21,"55289-0019-21 ")
 ;;4436
 ;;21,"55289-0019-24 ")
 ;;4437
 ;;21,"55289-0019-30 ")
 ;;4438
 ;;21,"55289-0019-40 ")
 ;;4439
 ;;21,"55289-0019-60 ")
 ;;4440
 ;;21,"55289-0019-97 ")
 ;;4441
 ;;21,"55289-0020-04 ")
 ;;4442
 ;;21,"55289-0020-06 ")
 ;;4443
 ;;21,"55289-0020-09 ")
 ;;4444
 ;;21,"55289-0020-14 ")
 ;;4445
 ;;21,"55289-0020-15 ")
 ;;4446
 ;;21,"55289-0020-21 ")
 ;;4447
 ;;21,"55289-0020-24 ")
 ;;4448
 ;;21,"55289-0020-28 ")
 ;;4449
 ;;21,"55289-0020-30 ")
 ;;4450
 ;;21,"55289-0020-40 ")
 ;;4451
 ;;21,"55289-0020-42 ")
 ;;4452
 ;;21,"55289-0020-50 ")
 ;;4453
 ;;21,"55289-0020-56 ")
 ;;4454
 ;;21,"55289-0020-60 ")
 ;;4455
 ;;21,"55289-0020-63 ")
 ;;4456
 ;;21,"55289-0021-10 ")
 ;;4457
 ;;21,"55289-0021-14 ")
 ;;4458
 ;;21,"55289-0021-20 ")
 ;;4459
 ;;21,"55289-0021-28 ")
 ;;4460
 ;;21,"55289-0025-04 ")
 ;;4461
 ;;21,"55289-0025-20 ")
 ;;4462
 ;;21,"55289-0025-28 ")
 ;;4463
 ;;21,"55289-0025-30 ")
 ;;4464
 ;;21,"55289-0025-40 ")
 ;;4465
 ;;21,"55289-0027-20 ")
 ;;4466
 ;;21,"55289-0033-28 ")
 ;;4467
 ;;21,"55289-0033-40 ")
 ;;4468
 ;;21,"55289-0043-14 ")
 ;;4469
 ;;21,"55289-0050-40 ")
 ;;4470
 ;;21,"55289-0057-01 ")
 ;;4471
 ;;21,"55289-0057-06 ")
 ;;4472
 ;;21,"55289-0057-10 ")
 ;;4473
 ;;21,"55289-0057-15 ")
 ;;4474
 ;;21,"55289-0057-20 ")
 ;;4475
 ;;21,"55289-0057-24 ")
 ;;4476
 ;;21,"55289-0057-28 ")
 ;;4477
 ;;21,"55289-0057-30 ")
 ;;4478
 ;;21,"55289-0057-40 ")
 ;;4479
 ;;21,"55289-0057-97 ")
 ;;4480
 ;;21,"55289-0058-01 ")
 ;;4481
 ;;21,"55289-0058-04 ")
 ;;4482
 ;;21,"55289-0058-08 ")
 ;;4483
 ;;21,"55289-0058-10 ")
 ;;4484
 ;;21,"55289-0058-14 ")
 ;;4485
 ;;21,"55289-0058-17 ")
 ;;4486
 ;;21,"55289-0058-20 ")
 ;;4487
 ;;21,"55289-0058-21 ")
 ;;4488
 ;;21,"55289-0058-24 ")
 ;;4489
 ;;21,"55289-0058-28 ")
 ;;4490
 ;;21,"55289-0058-30 ")
 ;;4491
 ;;21,"55289-0058-40 ")
 ;;4492
 ;;21,"55289-0058-56 ")
 ;;4493
 ;;21,"55289-0072-01 ")
 ;;4494
 ;;21,"55289-0072-40 ")
 ;;4495
 ;;21,"55289-0075-40 ")
 ;;4496
 ;;21,"55289-0075-56 ")
 ;;4497
 ;;21,"55289-0077-10 ")
 ;;4498
 ;;21,"55289-0081-20 ")
 ;;4499
 ;;21,"55289-0094-10 ")
 ;;4500
 ;;21,"55289-0094-20 ")
 ;;4501
 ;;21,"55289-0094-30 ")
 ;;4502
 ;;21,"55289-0094-40 ")
 ;;4503
 ;;21,"55289-0107-02 ")
 ;;4504
 ;;21,"55289-0107-06 ")
 ;;4505
 ;;21,"55289-0107-10 ")
 ;;4506
 ;;21,"55289-0107-12 ")
 ;;4507
 ;;21,"55289-0107-14 ")
 ;;4508
 ;;21,"55289-0107-20 ")
 ;;4509
 ;;21,"55289-0107-28 ")
 ;;4510
 ;;21,"55289-0107-30 ")
 ;;4511
 ;;21,"55289-0107-40 ")
 ;;4512
 ;;21,"55289-0107-50 ")
 ;;4513
 ;;21,"55289-0107-56 ")
 ;;4514
 ;;21,"55289-0107-60 ")
 ;;4515
 ;;21,"55289-0107-79 ")
 ;;4516
 ;;21,"55289-0107-93 ")
 ;;4517
 ;;21,"55289-0110-03 ")
 ;;4518
 ;;21,"55289-0110-09 ")
 ;;4519
 ;;21,"55289-0110-20 ")
 ;;4520
 ;;21,"55289-0110-28 ")
 ;;4521
 ;;21,"55289-0110-30 ")
 ;;4522
 ;;21,"55289-0110-40 ")
 ;;4523
 ;;21,"55289-0110-56 ")
 ;;4524
 ;;21,"55289-0111-20 ")
 ;;4525
 ;;21,"55289-0111-28 ")
 ;;4526
 ;;21,"55289-0111-40 ")
 ;;4527
 ;;21,"55289-0111-56 ")
 ;;4528
 ;;21,"55289-0111-80 ")
 ;;4529
 ;;21,"55289-0112-01 ")
 ;;4530
 ;;21,"55289-0112-04 ")
 ;;4531
 ;;21,"55289-0112-10 ")
 ;;4532
 ;;21,"55289-0112-15 ")
 ;;4533
 ;;21,"55289-0112-20 ")
 ;;4534
 ;;21,"55289-0112-28 ")
 ;;4535
 ;;21,"55289-0112-40 ")
 ;;4536
 ;;21,"55289-0112-56 ")
 ;;4537
 ;;21,"55289-0112-98 ")
 ;;4538
 ;;21,"55289-0182-06 ")
 ;;4539
 ;;21,"55289-0182-09 ")
 ;;4540
 ;;21,"55289-0182-14 ")
 ;;4541
 ;;21,"55289-0182-30 ")
 ;;4542
 ;;21,"55289-0182-40 ")
 ;;4543
 ;;21,"55289-0201-30 ")
 ;;4544
 ;;21,"55289-0202-30 ")
 ;;4545
 ;;21,"55289-0204-20 ")
 ;;4546
 ;;21,"55289-0206-10 ")
 ;;4547
 ;;21,"55289-0206-20 ")
 ;;4548
 ;;21,"55289-0206-28 ")
 ;;4549
 ;;21,"55289-0206-30 ")
 ;;4550
 ;;21,"55289-0206-40 ")
 ;;4551
 ;;21,"55289-0206-56 ")
 ;;4552
 ;;21,"55289-0206-97 ")
 ;;4553
 ;;21,"55289-0207-04 ")
 ;;4554
 ;;21,"55289-0207-15 ")
 ;;4555
 ;;21,"55289-0207-20 ")
 ;;4556
 ;;21,"55289-0207-28 ")
 ;;4557
 ;;21,"55289-0207-30 ")
 ;;4558
 ;;21,"55289-0207-40 ")
 ;;4559
 ;;21,"55289-0217-28 ")
 ;;4560
 ;;21,"55289-0217-40 ")
 ;;4561
 ;;21,"55289-0232-30 ")
 ;;4562
 ;;21,"55289-0235-60 ")
 ;;4563
 ;;21,"55289-0241-02 ")
 ;;4564
 ;;21,"55289-0241-04 ")
 ;;4565
 ;;21,"55289-0241-06 ")
 ;;4566
 ;;21,"55289-0241-10 ")
 ;;4567
 ;;21,"55289-0241-14 ")
 ;;4568
 ;;21,"55289-0241-15 ")
 ;;4569
 ;;21,"55289-0241-17 ")
 ;;4570
 ;;21,"55289-0241-20 ")
 ;;4571
 ;;21,"55289-0241-28 ")
 ;;4572
 ;;21,"55289-0241-60 ")
 ;;4573
 ;;21,"55289-0241-97 ")
 ;;4574
 ;;21,"55289-0242-09 ")
 ;;4575
 ;;21,"55289-0242-15 ")
 ;;4576
 ;;21,"55289-0242-21 ")
 ;;4577
 ;;21,"55289-0263-06 ")
 ;;4578
 ;;21,"55289-0263-14 ")
 ;;4579
 ;;21,"55289-0274-02 ")
 ;;4580
 ;;21,"55289-0274-03 ")
 ;;4581
 ;;21,"55289-0296-15 ")
 ;;4582
 ;;21,"55289-0310-04 ")
 ;;4583
 ;;21,"55289-0310-06 ")
 ;;4584
 ;;21,"55289-0310-14 ")
 ;;4585
 ;;21,"55289-0371-03 ")
 ;;4586
 ;;21,"55289-0371-06 ")
 ;;4587
 ;;21,"55289-0371-10 ")
 ;;4588
 ;;21,"55289-0371-14 ")
 ;;4589
 ;;21,"55289-0371-15 ")
 ;;4590
 ;;21,"55289-0371-20 ")
 ;;4591
 ;;21,"55289-0371-30 ")
 ;;4592
 ;;21,"55289-0371-40 ")
 ;;4593
 ;;21,"55289-0371-50 ")
 ;;4594
 ;;21,"55289-0371-79 ")
 ;;4595
 ;;21,"55289-0371-97 ")
 ;;4596
 ;;21,"55289-0372-10 ")
 ;;4597
 ;;21,"55289-0372-14 ")
 ;;4598
 ;;21,"55289-0372-20 ")
 ;;4599
 ;;21,"55289-0372-97 ")
 ;;4600
 ;;21,"55289-0385-04 ")
 ;;4601
 ;;21,"55289-0385-30 ")
 ;;4602
 ;;21,"55289-0390-02 ")
 ;;4603
 ;;21,"55289-0390-10 ")
 ;;4604
 ;;21,"55289-0390-20 ")
 ;;4605
 ;;21,"55289-0390-28 ")
 ;;4606
 ;;21,"55289-0390-79 ")
 ;;4607
 ;;21,"55289-0393-02 ")
 ;;4608
 ;;21,"55289-0394-05 ")
 ;;4609
 ;;21,"55289-0394-07 ")
 ;;4610
 ;;21,"55289-0405-10 ")
 ;;4611
 ;;21,"55289-0405-14 ")
 ;;4612
 ;;21,"55289-0405-20 ")
 ;;4613
 ;;21,"55289-0426-21 ")
 ;;4614
 ;;21,"55289-0441-04 ")
 ;;4615
 ;;21,"55289-0441-15 ")
 ;;4616
 ;;21,"55289-0441-17 ")
 ;;4617
 ;;21,"55289-0441-20 ")
 ;;4618
 ;;21,"55289-0441-28 ")
 ;;4619
 ;;21,"55289-0441-30 ")
 ;;4620
 ;;21,"55289-0441-40 ")
 ;;4621
 ;;21,"55289-0441-42 ")
 ;;4622
 ;;21,"55289-0441-56 ")
 ;;4623
 ;;21,"55289-0441-80 ")
 ;;4624
 ;;21,"55289-0441-97 ")
 ;;4625
 ;;21,"55289-0446-01 ")
 ;;4626
 ;;21,"55289-0446-10 ")
 ;;4627
 ;;21,"55289-0446-12 ")
 ;;4628
 ;;21,"55289-0446-14 ")
 ;;4629
 ;;21,"55289-0446-16 ")
 ;;4630
 ;;21,"55289-0446-20 ")
 ;;4631
 ;;21,"55289-0446-28 ")
 ;;4632
 ;;21,"55289-0446-30 ")
 ;;4633
 ;;21,"55289-0446-40 ")
 ;;4634
 ;;21,"55289-0446-56 ")
 ;;4635
 ;;21,"55289-0446-60 ")
 ;;4636
 ;;21,"55289-0457-10 ")
 ;;4637
 ;;21,"55289-0457-20 ")
 ;;4638
 ;;21,"55289-0459-06 ")
 ;;4639
 ;;21,"55289-0459-10 ")
 ;;4640
 ;;21,"55289-0459-12 ")
 ;;4641
 ;;21,"55289-0459-14 ")
 ;;4642
 ;;21,"55289-0502-16 ")
 ;;4643
 ;;21,"55289-0502-30 ")
 ;;4644
 ;;21,"55289-0502-60 ")
 ;;4645
 ;;21,"55289-0512-10 ")
 ;;4646
 ;;21,"55289-0512-14 ")
 ;;4647
 ;;21,"55289-0512-28 ")
 ;;4648
 ;;21,"55289-0525-21 ")
 ;;4649
 ;;21,"55289-0525-30 ")
 ;;4650
 ;;21,"55289-0525-40 ")
 ;;4651
 ;;21,"55289-0525-42 ")
 ;;4652
 ;;21,"55289-0525-63 ")
 ;;4653
 ;;21,"55289-0542-10 ")
 ;;4654