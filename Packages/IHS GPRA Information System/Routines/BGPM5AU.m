BGPM5AU ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON AUG 29, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"63629131703 ")
 ;;4325
 ;;21,"63629131704 ")
 ;;4326
 ;;21,"63629131705 ")
 ;;4327
 ;;21,"63629131900 ")
 ;;4328
 ;;21,"63629131901 ")
 ;;4329
 ;;21,"63629131902 ")
 ;;4330
 ;;21,"63629131903 ")
 ;;4331
 ;;21,"63629131904 ")
 ;;4332
 ;;21,"63629131905 ")
 ;;4333
 ;;21,"63629131906 ")
 ;;4334
 ;;21,"63629131907 ")
 ;;4335
 ;;21,"63629131908 ")
 ;;4336
 ;;21,"63629131909 ")
 ;;4337
 ;;21,"63629132001 ")
 ;;4338
 ;;21,"63629132002 ")
 ;;4339
 ;;21,"63629132003 ")
 ;;4340
 ;;21,"63629132004 ")
 ;;4341
 ;;21,"63629132005 ")
 ;;4342
 ;;21,"63629132006 ")
 ;;4343
 ;;21,"63629132007 ")
 ;;4344
 ;;21,"63629132008 ")
 ;;4345
 ;;21,"63629132101 ")
 ;;4346
 ;;21,"63629132102 ")
 ;;4347
 ;;21,"63629132103 ")
 ;;4348
 ;;21,"63629132601 ")
 ;;4349
 ;;21,"63629132602 ")
 ;;4350
 ;;21,"63629132603 ")
 ;;4351
 ;;21,"63629132604 ")
 ;;4352
 ;;21,"63629132605 ")
 ;;4353
 ;;21,"63629132606 ")
 ;;4354
 ;;21,"63629132607 ")
 ;;4355
 ;;21,"63629132608 ")
 ;;4356
 ;;21,"63629132609 ")
 ;;4357
 ;;21,"63629134801 ")
 ;;4358
 ;;21,"63629134802 ")
 ;;4359
 ;;21,"63629134803 ")
 ;;4360
 ;;21,"63629135001 ")
 ;;4361
 ;;21,"63629135002 ")
 ;;4362
 ;;21,"63629135003 ")
 ;;4363
 ;;21,"63629135101 ")
 ;;4364
 ;;21,"63629135102 ")
 ;;4365
 ;;21,"63629135103 ")
 ;;4366
 ;;21,"63629135104 ")
 ;;4367
 ;;21,"63629135701 ")
 ;;4368
 ;;21,"63629135702 ")
 ;;4369
 ;;21,"63629135703 ")
 ;;4370
 ;;21,"63629135801 ")
 ;;4371
 ;;21,"63629135802 ")
 ;;4372
 ;;21,"63629135803 ")
 ;;4373
 ;;21,"63629135804 ")
 ;;4374
 ;;21,"63629135805 ")
 ;;4375
 ;;21,"63629135806 ")
 ;;4376
 ;;21,"63629135807 ")
 ;;4377
 ;;21,"63629135808 ")
 ;;4378
 ;;21,"63629150101 ")
 ;;4379
 ;;21,"63629150102 ")
 ;;4380
 ;;21,"63629150103 ")
 ;;4381
 ;;21,"63629150104 ")
 ;;4382
 ;;21,"63629150105 ")
 ;;4383
 ;;21,"63629150201 ")
 ;;4384
 ;;21,"63629150202 ")
 ;;4385
 ;;21,"63629150203 ")
 ;;4386
 ;;21,"63629150204 ")
 ;;4387
 ;;21,"63629150205 ")
 ;;4388
 ;;21,"63629150206 ")
 ;;4389
 ;;21,"63629150207 ")
 ;;4390
 ;;21,"63629153101 ")
 ;;4391
 ;;21,"63629153102 ")
 ;;4392
 ;;21,"63629153103 ")
 ;;4393
 ;;21,"63629153104 ")
 ;;4394
 ;;21,"63629153105 ")
 ;;4395
 ;;21,"63629153106 ")
 ;;4396
 ;;21,"63629153107 ")
 ;;4397
 ;;21,"63629153108 ")
 ;;4398
 ;;21,"63629153109 ")
 ;;4399
 ;;21,"63629161401 ")
 ;;4400
 ;;21,"63629161402 ")
 ;;4401
 ;;21,"63629161403 ")
 ;;4402
 ;;21,"63629172400 ")
 ;;4403
 ;;21,"63629172401 ")
 ;;4404
 ;;21,"63629172402 ")
 ;;4405
 ;;21,"63629172403 ")
 ;;4406
 ;;21,"63629172404 ")
 ;;4407
 ;;21,"63629172405 ")
 ;;4408
 ;;21,"63629172406 ")
 ;;4409
 ;;21,"63629172407 ")
 ;;4410
 ;;21,"63629172408 ")
 ;;4411
 ;;21,"63629172409 ")
 ;;4412
 ;;21,"63629175901 ")
 ;;4413
 ;;21,"63629175902 ")
 ;;4414
 ;;21,"63629175903 ")
 ;;4415
 ;;21,"63629175904 ")
 ;;4416
 ;;21,"63629175905 ")
 ;;4417
 ;;21,"63629176500 ")
 ;;4418
 ;;21,"63629176501 ")
 ;;4419
 ;;21,"63629176502 ")
 ;;4420
 ;;21,"63629176503 ")
 ;;4421
 ;;21,"63629176504 ")
 ;;4422
 ;;21,"63629176505 ")
 ;;4423
 ;;21,"63629176506 ")
 ;;4424
 ;;21,"63629176507 ")
 ;;4425
 ;;21,"63629176508 ")
 ;;4426
 ;;21,"63629176509 ")
 ;;4427
 ;;21,"63629183401 ")
 ;;4428
 ;;21,"63629183402 ")
 ;;4429
 ;;21,"63629183403 ")
 ;;4430
 ;;21,"63629183404 ")
 ;;4431
 ;;21,"63629183501 ")
 ;;4432
 ;;21,"63629183502 ")
 ;;4433
 ;;21,"63629183503 ")
 ;;4434
 ;;21,"63629260901 ")
 ;;4435
 ;;21,"63629260902 ")
 ;;4436
 ;;21,"63629260903 ")
 ;;4437
 ;;21,"63629261001 ")
 ;;4438
 ;;21,"63629261002 ")
 ;;4439
 ;;21,"63629261003 ")
 ;;4440
 ;;21,"63629268501 ")
 ;;4441
 ;;21,"63629268502 ")
 ;;4442
 ;;21,"63629273801 ")
 ;;4443
 ;;21,"63629273802 ")
 ;;4444
 ;;21,"63629275501 ")
 ;;4445
 ;;21,"63629275502 ")
 ;;4446
 ;;21,"63629275901 ")
 ;;4447
 ;;21,"63629275902 ")
 ;;4448
 ;;21,"63629275903 ")
 ;;4449
 ;;21,"63629275904 ")
 ;;4450
 ;;21,"63629275905 ")
 ;;4451
 ;;21,"63629279601 ")
 ;;4452
 ;;21,"63629279602 ")
 ;;4453
 ;;21,"63629281700 ")
 ;;4454
 ;;21,"63629281701 ")
 ;;4455
 ;;21,"63629281702 ")
 ;;4456
 ;;21,"63629281703 ")
 ;;4457
 ;;21,"63629281704 ")
 ;;4458
 ;;21,"63629281705 ")
 ;;4459
 ;;21,"63629281706 ")
 ;;4460
 ;;21,"63629281707 ")
 ;;4461
 ;;21,"63629281708 ")
 ;;4462
 ;;21,"63629281709 ")
 ;;4463
 ;;21,"63629287101 ")
 ;;4464
 ;;21,"63629288701 ")
 ;;4465
 ;;21,"63629288702 ")
 ;;4466
 ;;21,"63629288703 ")
 ;;4467
 ;;21,"63629288704 ")
 ;;4468
 ;;21,"63629289501 ")
 ;;4469
 ;;21,"63629289502 ")
 ;;4470
 ;;21,"63629292401 ")
 ;;4471
 ;;21,"63629292402 ")
 ;;4472
 ;;21,"63629292403 ")
 ;;4473
 ;;21,"63629292404 ")
 ;;4474
 ;;21,"63629292405 ")
 ;;4475
 ;;21,"63629292406 ")
 ;;4476
 ;;21,"63629292407 ")
 ;;4477
 ;;21,"63629293801 ")
 ;;4478
 ;;21,"63629305701 ")
 ;;4479
 ;;21,"63629356201 ")
 ;;4480
 ;;21,"63629356202 ")
 ;;4481
 ;;21,"63629367101 ")
 ;;4482
 ;;21,"63629367102 ")
 ;;4483
 ;;21,"63629367103 ")
 ;;4484
 ;;21,"63629367104 ")
 ;;4485
 ;;21,"63629367105 ")
 ;;4486
 ;;21,"63629386801 ")
 ;;4487
 ;;21,"63629386802 ")
 ;;4488
 ;;21,"63629386803 ")
 ;;4489
 ;;21,"63629386804 ")
 ;;4490
 ;;21,"63629386805 ")
 ;;4491
 ;;21,"63739005910 ")
 ;;4492
 ;;21,"63739022810 ")
 ;;4493
 ;;21,"63739040010 ")
 ;;4494
 ;;21,"63739042710 ")
 ;;4495
 ;;21,"63739049142 ")
 ;;4496
 ;;21,"63874010101 ")
 ;;4497
 ;;21,"63874010103 ")
 ;;4498
 ;;21,"63874010105 ")
 ;;4499
 ;;21,"63874010109 ")
 ;;4500
 ;;21,"63874010115 ")
 ;;4501
 ;;21,"63874010118 ")
 ;;4502
 ;;21,"63874010120 ")
 ;;4503
 ;;21,"63874010121 ")
 ;;4504
 ;;21,"63874010124 ")
 ;;4505
 ;;21,"63874010128 ")
 ;;4506
 ;;21,"63874010130 ")
 ;;4507
 ;;21,"63874010140 ")
 ;;4508
 ;;21,"63874010145 ")
 ;;4509
 ;;21,"63874010150 ")
 ;;4510
 ;;21,"63874010201 ")
 ;;4511
 ;;21,"63874010203 ")
 ;;4512
 ;;21,"63874010204 ")
 ;;4513
 ;;21,"63874010205 ")
 ;;4514
 ;;21,"63874010209 ")
 ;;4515
 ;;21,"63874010210 ")
 ;;4516
 ;;21,"63874010212 ")
 ;;4517
 ;;21,"63874010214 ")
 ;;4518
 ;;21,"63874010215 ")
 ;;4519
 ;;21,"63874010218 ")
 ;;4520
 ;;21,"63874010220 ")
 ;;4521
 ;;21,"63874010221 ")
 ;;4522
 ;;21,"63874010224 ")
 ;;4523
 ;;21,"63874010228 ")
 ;;4524
 ;;21,"63874010230 ")
 ;;4525
 ;;21,"63874010240 ")
 ;;4526
 ;;21,"63874010245 ")
 ;;4527
 ;;21,"63874010250 ")
 ;;4528
 ;;21,"63874010801 ")
 ;;4529
 ;;21,"63874010810 ")
 ;;4530
 ;;21,"63874010812 ")
 ;;4531
 ;;21,"63874010814 ")
 ;;4532
 ;;21,"63874010815 ")
 ;;4533
 ;;21,"63874010818 ")
 ;;4534
 ;;21,"63874010820 ")
 ;;4535
 ;;21,"63874010824 ")
 ;;4536
 ;;21,"63874010828 ")
 ;;4537
 ;;21,"63874010830 ")
 ;;4538
 ;;21,"63874010840 ")
 ;;4539
 ;;21,"63874010860 ")
 ;;4540
 ;;21,"63874010903 ")
 ;;4541
 ;;21,"63874010910 ")
 ;;4542
 ;;21,"63874010912 ")
 ;;4543
 ;;21,"63874010914 ")
 ;;4544
 ;;21,"63874010915 ")
 ;;4545
 ;;21,"63874010916 ")
 ;;4546
 ;;21,"63874010918 ")
 ;;4547
 ;;21,"63874010920 ")
 ;;4548
 ;;21,"63874010921 ")
 ;;4549
 ;;21,"63874010924 ")
 ;;4550
 ;;21,"63874010928 ")
 ;;4551
 ;;21,"63874010930 ")
 ;;4552
 ;;21,"63874010940 ")
 ;;4553
 ;;21,"63874010950 ")
 ;;4554
 ;;21,"63874010960 ")
 ;;4555
 ;;21,"63874011001 ")
 ;;4556
 ;;21,"63874011020 ")
 ;;4557
 ;;21,"63874011028 ")
 ;;4558
 ;;21,"63874011030 ")
 ;;4559
 ;;21,"63874011040 ")
 ;;4560
 ;;21,"63874011050 ")
 ;;4561
 ;;21,"63874011101 ")
 ;;4562
 ;;21,"63874011103 ")
 ;;4563
 ;;21,"63874011104 ")
 ;;4564
 ;;21,"63874011112 ")
 ;;4565
 ;;21,"63874011114 ")
 ;;4566
 ;;21,"63874011115 ")
 ;;4567
 ;;21,"63874011116 ")
 ;;4568
 ;;21,"63874011120 ")
 ;;4569
 ;;21,"63874011121 ")
 ;;4570
 ;;21,"63874011124 ")
 ;;4571
 ;;21,"63874011128 ")
 ;;4572
 ;;21,"63874011130 ")
 ;;4573
 ;;21,"63874011140 ")
 ;;4574
 ;;21,"63874011150 ")
 ;;4575
 ;;21,"63874011156 ")
 ;;4576
 ;;21,"63874011160 ")
 ;;4577
 ;;21,"63874011172 ")
 ;;4578
 ;;21,"63874011174 ")
 ;;4579
 ;;21,"63874011177 ")
 ;;4580
 ;;21,"63874011180 ")
 ;;4581
 ;;21,"63874011201 ")
 ;;4582
 ;;21,"63874011203 ")
 ;;4583
 ;;21,"63874011204 ")
 ;;4584
 ;;21,"63874011205 ")
 ;;4585
 ;;21,"63874011206 ")
 ;;4586
 ;;21,"63874011208 ")
 ;;4587
 ;;21,"63874011210 ")
 ;;4588
 ;;21,"63874011212 ")
 ;;4589
 ;;21,"63874011214 ")
 ;;4590
 ;;21,"63874011215 ")
 ;;4591
 ;;21,"63874011216 ")
 ;;4592
 ;;21,"63874011218 ")
 ;;4593
 ;;21,"63874011220 ")
 ;;4594
 ;;21,"63874011221 ")
 ;;4595
 ;;21,"63874011224 ")
 ;;4596
 ;;21,"63874011225 ")
 ;;4597
 ;;21,"63874011228 ")
 ;;4598
 ;;21,"63874011230 ")
 ;;4599
 ;;21,"63874011240 ")
 ;;4600
 ;;21,"63874011250 ")
 ;;4601
 ;;21,"63874011256 ")
 ;;4602
 ;;21,"63874011260 ")
 ;;4603
 ;;21,"63874011272 ")
 ;;4604
 ;;21,"63874011274 ")
 ;;4605
 ;;21,"63874011277 ")
 ;;4606
 ;;21,"63874011301 ")
 ;;4607
 ;;21,"63874011303 ")
 ;;4608
 ;;21,"63874011308 ")
 ;;4609
 ;;21,"63874011309 ")
 ;;4610
 ;;21,"63874011310 ")
 ;;4611
 ;;21,"63874011312 ")
 ;;4612
 ;;21,"63874011314 ")
 ;;4613
 ;;21,"63874011315 ")
 ;;4614
 ;;21,"63874011320 ")
 ;;4615
 ;;21,"63874011321 ")
 ;;4616
 ;;21,"63874011324 ")
 ;;4617
 ;;21,"63874011328 ")
 ;;4618
 ;;21,"63874011330 ")
 ;;4619
 ;;21,"63874011340 ")
 ;;4620
 ;;21,"63874011350 ")
 ;;4621
 ;;21,"63874011401 ")
 ;;4622
 ;;21,"63874011403 ")
 ;;4623
 ;;21,"63874011407 ")
 ;;4624
 ;;21,"63874011410 ")
 ;;4625
 ;;21,"63874011420 ")
 ;;4626
 ;;21,"63874011421 ")
 ;;4627
 ;;21,"63874011424 ")
 ;;4628
 ;;21,"63874011425 ")
 ;;4629
 ;;21,"63874011428 ")
 ;;4630
 ;;21,"63874011430 ")
 ;;4631
 ;;21,"63874011440 ")
 ;;4632
 ;;21,"63874011450 ")
 ;;4633
 ;;21,"63874011801 ")
 ;;4634
 ;;21,"63874011803 ")
 ;;4635
 ;;21,"63874011806 ")
 ;;4636
 ;;21,"63874011807 ")
 ;;4637
 ;;21,"63874011810 ")
 ;;4638
 ;;21,"63874011812 ")
 ;;4639
 ;;21,"63874011814 ")
 ;;4640
 ;;21,"63874011815 ")
 ;;4641
 ;;21,"63874011818 ")
 ;;4642
 ;;21,"63874011820 ")
 ;;4643
 ;;21,"63874011821 ")
 ;;4644
 ;;21,"63874011824 ")
 ;;4645
 ;;21,"63874011828 ")
 ;;4646
 ;;21,"63874011830 ")
 ;;4647
 ;;21,"63874011840 ")
 ;;4648
 ;;21,"63874011850 ")
 ;;4649
 ;;21,"63874011860 ")
 ;;4650
 ;;21,"63874011901 ")
 ;;4651
 ;;21,"63874011921 ")
 ;;4652
 ;;21,"63874011930 ")
 ;;4653
 ;;21,"63874012001 ")
 ;;4654
 ;;21,"63874012012 ")
 ;;4655
 ;;21,"63874012020 ")
 ;;4656
 ;;21,"63874012030 ")
 ;;4657
 ;;21,"63874012301 ")
 ;;4658
 ;;21,"63874012312 ")
 ;;4659
 ;;21,"63874012314 ")
 ;;4660
 ;;21,"63874012315 ")
 ;;4661
 ;;21,"63874012320 ")
 ;;4662
 ;;21,"63874012321 ")
 ;;4663
 ;;21,"63874012324 ")
 ;;4664
 ;;21,"63874012328 ")
 ;;4665
 ;;21,"63874012330 ")
 ;;4666
 ;;21,"63874012340 ")
 ;;4667
 ;;21,"63874012350 ")
 ;;4668
 ;;21,"63874012360 ")
 ;;4669
 ;;21,"63874012401 ")
 ;;4670
 ;;21,"63874012402 ")
 ;;4671
 ;;21,"63874012410 ")
 ;;4672
 ;;21,"63874012412 ")
 ;;4673
 ;;21,"63874012414 ")
 ;;4674
 ;;21,"63874012415 ")
 ;;4675
 ;;21,"63874012420 ")
 ;;4676