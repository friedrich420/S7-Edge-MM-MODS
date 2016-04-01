.class public Lcom/android/server/MyContainer;
.super Lcom/android/server/SEAMSContainer;
.source "MyContainer.java"


# static fields
.field private static final MAX_MYCONTAIN_NUM:I = 0x12c

.field private static MYCONTAINER_MAC_PERM:Ljava/lang/String; = null

.field private static final MYCONTAINER_SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/mycontainer"

.field private static MYCONTAINER_SEAPP_CONTEXT:Ljava/lang/String; = null

.field private static final MYCONTAINER_TYPE:I = 0x2

.field private static final MYCONTAIN_START_NUM:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "MyContainer"

.field private static mSKLog:Lcom/android/server/SKLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const-string v0, "/data/security/mycontainer/mac_permissions.xml"

    sput-object v0, MYCONTAINER_MAC_PERM:Ljava/lang/String;

    .line 69
    const-string v0, "/data/security/mycontainer/seapp_contexts"

    sput-object v0, MYCONTAINER_SEAPP_CONTEXT:Ljava/lang/String;

    .line 75
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, mSKLog:Lcom/android/server/SKLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/server/SEAMSContainer;-><init>()V

    .line 84
    sput-object p1, mContext:Landroid/content/Context;

    .line 85
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    .line 86
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    sget-object v1, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 87
    return-void
.end method


# virtual methods
.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 24
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 411
    const/4 v11, 0x0

    .line 415
    .local v11, "appNotInstalled":Z
    const/4 v5, 0x3

    move/from16 v0, p4

    if-eq v0, v5, :cond_16

    const/4 v5, 0x4

    move/from16 v0, p4

    if-eq v0, v5, :cond_16

    .line 416
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "Apptype not 3 or 4"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const/4 v5, -0x3

    .line 583
    :goto_15
    return v5

    .line 421
    :cond_16
    invoke-static/range {p1 .. p1}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 422
    if-nez p1, :cond_27

    .line 423
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, " addAppToContainer failed, no packageName found"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const/4 v5, -0x1

    goto :goto_15

    .line 426
    :cond_27
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v5

    if-nez v5, :cond_39

    .line 427
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, " invalid container ID"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const/16 v5, -0xc

    goto :goto_15

    .line 430
    :cond_39
    invoke-virtual/range {p0 .. p0}, getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v15

    .line 431
    .local v15, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v15, :cond_4b

    .line 432
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string/jumbo v8, "genericMDMID is null, Returning null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const/4 v5, -0x2

    goto :goto_15

    .line 436
    :cond_4b
    iget-object v5, v15, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v7, v15, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move/from16 v0, p3

    invoke-static {v5, v7, v0}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_62

    .line 437
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer, Given Container ID not created by Caller - Returning Refused"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const/4 v5, -0x2

    goto :goto_15

    .line 443
    :cond_62
    const/4 v12, 0x0

    .line 444
    .local v12, "certMatch":Z
    const/4 v4, 0x0

    .line 445
    .local v4, "signature":Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v16, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 447
    if-nez p2, :cond_7b

    .line 449
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer, Input Certificate is null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const/16 v5, -0xe

    goto :goto_15

    .line 452
    :cond_7b
    if-nez v16, :cond_c3

    .line 453
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer, signature is null, package not installed yet"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const/4 v5, 0x0

    aget-object v4, p2, v5

    .line 455
    const/4 v11, 0x1

    .line 479
    :cond_8a
    new-instance v3, Ljava/io/File;

    sget-object v5, MYCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 491
    .local v3, "macPermFile":Ljava/io/File;
    :try_start_91
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v18

    .line 492
    .local v18, "userId":I
    const/4 v13, 0x0

    .line 497
    .local v13, "containerAllowCat":Ljava/lang/String;
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 501
    .local v10, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x4

    move/from16 v0, p4

    if-ne v0, v5, :cond_e5

    .line 502
    if-eqz v10, :cond_10a

    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    if-eqz v5, :cond_10a

    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    const/16 v7, 0x66

    const/16 v8, 0xc8

    move/from16 v0, p4

    invoke-static {v5, v7, v8, v0}, checkCategoryRange(Ljava/lang/String;III)I

    move-result v5

    if-eqz v5, :cond_10a

    .line 505
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer, Given Package Name has a non-empty third party Container Allow Category"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_bf} :catch_21c

    .line 507
    const/16 v5, -0x9

    goto/16 :goto_15

    .line 457
    .end local v3    # "macPermFile":Ljava/io/File;
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "containerAllowCat":Ljava/lang/String;
    .end local v18    # "userId":I
    :cond_c3
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "signature":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 460
    .restart local v4    # "signature":Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d6

    .line 464
    const/4 v12, 0x1

    .line 469
    :cond_d6
    if-nez v12, :cond_8a

    .line 471
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer, input certificate does not match the certificate extracted from package"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/16 v5, -0xd

    goto/16 :goto_15

    .line 509
    .restart local v3    # "macPermFile":Ljava/io/File;
    .restart local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v13    # "containerAllowCat":Ljava/lang/String;
    .restart local v18    # "userId":I
    :cond_e5
    const/4 v5, 0x3

    move/from16 v0, p4

    if-ne v0, v5, :cond_10a

    .line 510
    if-eqz v10, :cond_10a

    :try_start_ec
    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    if-eqz v5, :cond_10a

    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    const/4 v7, 0x1

    const/16 v8, 0x2bc

    move/from16 v0, p4

    invoke-static {v5, v7, v8, v0}, checkCategoryRange(Ljava/lang/String;III)I

    move-result v5

    if-eqz v5, :cond_10a

    .line 513
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer_GENERIC_SECURED_APPTYPE, Given Package Name has a non-empty third party Container Allow Category"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const/16 v5, -0x9

    goto/16 :goto_15

    .line 518
    :cond_10a
    const/4 v5, 0x4

    move/from16 v0, p4

    if-eq v0, v5, :cond_127

    invoke-virtual/range {p0 .. p1}, isProcessRunning(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_127

    invoke-virtual/range {p0 .. p1}, checkIfSingleContainerOwnerIsBeingAdded(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_127

    .line 520
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer, App is Running and is not an Agent which owns a Single Container"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const/4 v5, -0x8

    goto/16 :goto_15

    .line 524
    :cond_127
    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v5, :cond_1f7

    .line 525
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer, Got Application Info, Seinfo is not null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget v5, v10, Landroid/content/pm/ApplicationInfo;->category:I

    if-lez v5, :cond_14b

    iget v5, v10, Landroid/content/pm/ApplicationInfo;->category:I

    const/16 v7, 0x1f5

    if-ge v5, v7, :cond_14b

    .line 527
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer, ERROR_ALREADY_CONTAINER_APP is returned"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const/16 v5, -0x9

    goto/16 :goto_15

    .line 529
    :cond_14b
    iget v5, v10, Landroid/content/pm/ApplicationInfo;->category:I

    if-nez v5, :cond_15b

    .line 530
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer, Got Application Info, appinfo.category is 0"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const/4 v5, -0x1

    goto/16 :goto_15

    .line 533
    :cond_15b
    const-string/jumbo v5, "default"

    iget-object v7, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16b

    .line 534
    const-string/jumbo v5, "untrusted"

    iput-object v5, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 539
    :cond_16b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    .line 540
    .local v17, "uid":I
    const/4 v6, 0x0

    .line 541
    .local v6, "newSeinfo":Ljava/lang/String;
    const/4 v5, 0x3

    move/from16 v0, p4

    if-ne v0, v5, :cond_1ad

    .line 542
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":s0:c"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 546
    :goto_192
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move/from16 v8, p4

    invoke-static/range {v3 .. v9}, addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v5

    if-eqz v5, :cond_1b0

    .line 547
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer: addEntryToMac failed"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const/4 v5, -0x1

    goto/16 :goto_15

    .line 544
    :cond_1ad
    iget-object v6, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto :goto_192

    .line 550
    :cond_1b0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v11}, loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1d4

    .line 551
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer: loadContainerSetting failed"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v3, v4, v0, v5, v1}, removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 553
    const/4 v5, -0x1

    goto/16 :goto_15

    .line 558
    :cond_1d4
    if-nez v11, :cond_1f4

    .line 559
    const/4 v5, 0x3

    move/from16 v0, p4

    if-ne v0, v5, :cond_1f4

    .line 563
    sget-object v5, mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1f4

    .line 564
    sget-object v5, mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    .line 583
    :cond_1f4
    const/4 v5, 0x0

    goto/16 :goto_15

    .line 570
    .end local v6    # "newSeinfo":Ljava/lang/String;
    .end local v17    # "uid":I
    :cond_1f7
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addAppToContainer, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " seinfo is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_219
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_219} :catch_21c

    .line 572
    const/4 v5, -0x1

    goto/16 :goto_15

    .line 574
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "containerAllowCat":Ljava/lang/String;
    .end local v18    # "userId":I
    :catch_21c
    move-exception v14

    .line 576
    .local v14, "e":Ljava/lang/Exception;
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string/jumbo v8, "leave addAppToContainer + Exception e + Returning Policy Failed"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const/4 v5, -0x1

    goto/16 :goto_15
.end method

.method protected checkIfSingleContainerOwnerIsBeingAdded(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 189
    :try_start_1
    invoke-virtual {p0}, getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v1

    .line 190
    .local v1, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v1, :cond_f

    .line 191
    const-string v3, "MyContainer"

    const-string v4, "checkIfSingleContainerOwnerIsBeingAdded, genericMDMID is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :goto_e
    return v2

    .line 194
    .restart local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_f
    iget-object v3, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 198
    iget-object v3, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->checkIfSingleContainerOwnerIsBeingAdded(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_22

    move-result v2

    goto :goto_e

    .line 201
    .end local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :catch_22
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_26
    const-string v3, "MyContainer"

    const-string v4, "checkIfSingleContainerOwnerIsBeingAdded, false is returned"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public createSEContainer(II)I
    .registers 18
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 100
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v14

    .line 102
    .local v14, "userId":I
    :try_start_7
    new-instance v13, Ljava/io/File;

    const-string v1, "/data/security/mycontainer"

    invoke-direct {v13, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v13, "myContainerDir":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_33

    .line 104
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->hasGenericContainers()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 105
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string/jumbo v3, "createSEContainer, Issue with myContainerDir directory"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v10, -0x1

    .line 176
    .end local v13    # "myContainerDir":Ljava/io/File;
    :goto_25
    return v10

    .line 109
    .restart local v13    # "myContainerDir":Ljava/io/File;
    :cond_26
    invoke-virtual {v13}, Ljava/io/File;->mkdir()Z

    .line 110
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v13, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 111
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v13, v1, v2}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_33} :catch_4c

    .line 120
    :cond_33
    new-instance v0, Ljava/io/File;

    sget-object v1, MYCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "macPermFile":Ljava/io/File;
    invoke-virtual {p0}, getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v12

    .line 127
    .local v12, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v12, :cond_5c

    .line 128
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string/jumbo v3, "createSEContainer, genericMDMID is null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v10, -0x1

    goto :goto_25

    .line 114
    .end local v0    # "macPermFile":Ljava/io/File;
    .end local v12    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v13    # "myContainerDir":Ljava/io/File;
    :catch_4c
    move-exception v11

    .line 115
    .local v11, "e":Ljava/lang/Exception;
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string/jumbo v3, "createSEContainer, Issue with myContainerDir directory"

    invoke-virtual {v1, v2, v3, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    const/4 v10, -0x1

    goto :goto_25

    .line 134
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v0    # "macPermFile":Ljava/io/File;
    .restart local v12    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .restart local v13    # "myContainerDir":Ljava/io/File;
    :cond_5c
    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    aput-object v2, v9, v1

    .line 135
    .local v9, "certificates":[Ljava/lang/String;
    iget-object v1, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {v1, v9}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 140
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v8, Landroid/content/pm/ApplicationInfo;->category:I

    if-eqz v1, :cond_81

    iget v1, v8, Landroid/content/pm/ApplicationInfo;->category:I

    const/16 v2, 0x1f5

    if-ge v1, v2, :cond_81

    .line 141
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string/jumbo v3, "createSEContainer, The Agent is a Container App"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/16 v10, -0x9

    goto :goto_25

    .line 144
    :cond_81
    iget-object v1, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->createContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 145
    .local v10, "containerID":I
    const/4 v1, -0x7

    if-ne v10, v1, :cond_9a

    .line 146
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string/jumbo v3, "createContainer, Generic Container Count Overflow"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v10, -0x7

    goto :goto_25

    .line 149
    :cond_9a
    invoke-static {v10}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 150
    iget-object v1, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iget-object v2, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v8, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v1

    if-eqz v1, :cond_c8

    .line 153
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string/jumbo v3, "createSEContainer: addEntryToMac failed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v10}, Lcom/android/server/pm/PackageManagerService;->removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    .line 155
    const/4 v10, -0x1

    goto/16 :goto_25

    .line 157
    :cond_c8
    iget-object v1, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v14, v2}, loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f4

    .line 158
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string/jumbo v3, "createSEContainer: loadcontainersetting failed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v1, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iget-object v2, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 160
    iget-object v1, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v10}, Lcom/android/server/pm/PackageManagerService;->removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    .line 161
    const/4 v10, -0x1

    goto/16 :goto_25

    .line 168
    :cond_f4
    sget-object v1, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v10, v2}, Lcom/sec/enterprise/knox/seams/SEAMS;->setSEContainerClipboardMode(II)I

    .line 172
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.SECONTAINER_ADDED"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v7, "additionIntent":Landroid/content/Intent;
    const-string/jumbo v1, "secontainerid"

    invoke-virtual {v7, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    sget-object v1, mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 175
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast addition of secontainer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_25
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .registers 10
    .param p1, "containerID"    # I
    .param p2, "appType"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    .line 310
    invoke-static {p1}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 314
    invoke-virtual {p0}, getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v0

    .line 315
    .local v0, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v0, :cond_19

    .line 316
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    const-string/jumbo v4, "genericMDMID is null, Returning null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .end local v0    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :goto_18
    return-object v1

    .line 319
    .restart local v0    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_19
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "genericmdmid packagename = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "genericmdmid certs= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "container id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v2, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_82

    .line 323
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    const-string/jumbo v4, "getPackageNamesFromSEContainer, Given Container ID not created by Caller - Returning Refused"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 326
    :cond_82
    const/4 v2, 0x3

    if-ne p2, v2, :cond_8c

    .line 327
    iget-object v1, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, v6, p2}, Lcom/android/server/pm/PackageManagerService;->getPackageNamesFromSEContainerID(III)[Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 328
    :cond_8c
    const/4 v2, 0x4

    if-ne p2, v2, :cond_96

    .line 332
    iget-object v1, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, v6, p2}, Lcom/android/server/pm/PackageManagerService;->getContainerAllowPackageNamesFromSEContainer(III)[Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 335
    .end local v0    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_96
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    const-string/jumbo v4, "getPackageNamesFromSEContainer, Given Container ID is not my Container ID, returning null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18
.end method

.method public getSEContainerIDs()Ljava/util/HashSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    invoke-virtual {p0}, getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v0

    .line 383
    .local v0, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v0, :cond_12

    .line 385
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string/jumbo v3, "getSEContainerIDs, genericMDMID is null, Returning null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const/4 v1, 0x0

    .line 389
    :goto_11
    return-object v1

    :cond_12
    iget-object v1, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->getMyContainerIDs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    goto :goto_11
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appType"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x2

    .line 349
    invoke-static {p1}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 350
    invoke-virtual {p0}, getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v6

    .line 351
    .local v6, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v6, :cond_17

    .line 353
    sget-object v0, mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "MyContainer"

    const-string/jumbo v2, "genericMDMID is null, Returning null"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :goto_16
    return-object v7

    .line 357
    :cond_17
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2d

    .line 358
    iget-object v0, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v2, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->getSEContainerIDFromPackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v8

    .line 359
    .local v8, "retContainerID":I
    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v0, 0x0

    aput v8, v7, v0

    .line 360
    .local v7, "retContainerArray":[I
    goto :goto_16

    .line 361
    .end local v7    # "retContainerArray":[I
    .end local v8    # "retContainerID":I
    :cond_2d
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3d

    .line 362
    iget-object v0, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v2, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->getSEContainerIDsFromContainerAllowPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[I

    move-result-object v7

    goto :goto_16

    .line 364
    :cond_3d
    sget-object v0, mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "MyContainer"

    const-string/jumbo v2, "getSEContainerIDsfromPackageName, null is returned"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method public getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 370
    const/4 v1, 0x0

    .line 371
    .local v1, "signature":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    sget-object v2, MYCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, "macPermFile":Ljava/io/File;
    invoke-static {v0, p1}, getSignatureEntryFromMac(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    return-object v1
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 24
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 587
    const/4 v11, 0x0

    .line 591
    .local v11, "appNotInstalled":Z
    const/4 v5, 0x3

    move/from16 v0, p4

    if-eq v0, v5, :cond_16

    const/4 v5, 0x4

    move/from16 v0, p4

    if-eq v0, v5, :cond_16

    .line 592
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "Apptype not 3 or 4"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const/4 v5, -0x3

    .line 717
    :goto_15
    return v5

    .line 595
    :cond_16
    invoke-static/range {p1 .. p1}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 596
    if-nez p1, :cond_27

    .line 597
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, " removeAppFromContainer failed, no packageName found"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const/4 v5, -0x1

    goto :goto_15

    .line 600
    :cond_27
    invoke-virtual/range {p0 .. p0}, getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v14

    .line 601
    .local v14, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v14, :cond_39

    .line 602
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "removeAppFromContainer, genericMDMID is null, Returning null"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const/4 v5, -0x2

    goto :goto_15

    .line 605
    :cond_39
    iget-object v5, v14, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v6, v14, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move/from16 v0, p3

    invoke-static {v5, v6, v0}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_51

    .line 606
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "removeAppFromContainer, Given Container ID not created by Caller - Returning Refused - Container Allow Package Case"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const/4 v5, -0x2

    goto :goto_15

    .line 610
    :cond_51
    const/4 v12, 0x0

    .line 611
    .local v12, "certMatch":Z
    const/4 v4, 0x0

    .line 612
    .local v4, "signature":Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 613
    .local v16, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 614
    if-nez p2, :cond_6a

    .line 616
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, " removeAppFromContainer, Input Certificate is null"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const/16 v5, -0xe

    goto :goto_15

    .line 619
    :cond_6a
    if-nez v16, :cond_ae

    .line 620
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "removeAppFromContainer, signature is null, package not installed yet"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const/4 v5, 0x0

    aget-object v4, p2, v5

    .line 622
    const/4 v11, 0x1

    .line 646
    :cond_7a
    new-instance v3, Ljava/io/File;

    sget-object v5, MYCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 656
    .local v3, "macPermFile":Ljava/io/File;
    :try_start_81
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    .line 657
    .local v17, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    .line 658
    .local v15, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v18

    .line 662
    .local v18, "userId":I
    const/4 v5, 0x4

    move/from16 v0, p4

    if-eq v0, v5, :cond_d1

    invoke-virtual/range {p0 .. p1}, isProcessRunning(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d1

    invoke-virtual/range {p0 .. p1}, checkIfSingleContainerOwnerIsBeingAdded(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d1

    .line 664
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "removeAppFromContainer, App is Running and is not an Agent which owns a Single Container"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_ab} :catch_1ca

    .line 666
    const/4 v5, -0x8

    goto/16 :goto_15

    .line 624
    .end local v3    # "macPermFile":Ljava/io/File;
    .end local v15    # "pid":I
    .end local v17    # "uid":I
    .end local v18    # "userId":I
    :cond_ae
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "signature":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 627
    .restart local v4    # "signature":Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c1

    .line 631
    const/4 v12, 0x1

    .line 636
    :cond_c1
    if-nez v12, :cond_7a

    .line 638
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "removeAppFromContainer, input certificate does not match the certificate extracted from package"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const/16 v5, -0xd

    goto/16 :goto_15

    .line 668
    .restart local v3    # "macPermFile":Ljava/io/File;
    .restart local v15    # "pid":I
    .restart local v17    # "uid":I
    .restart local v18    # "userId":I
    :cond_d1
    :try_start_d1
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 672
    .local v10, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v5, :cond_1a4

    .line 673
    const/4 v5, 0x3

    move/from16 v0, p4

    if-ne v0, v5, :cond_15d

    .line 677
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v10, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v3, v4, v0, v5, v1}, removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_10a

    .line 678
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "removeAppFromContainer, removeEntryFromMac failed"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const/4 v5, -0x1

    goto/16 :goto_15

    .line 681
    :cond_10a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v11}, loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_142

    .line 682
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "removeAppFromContainer, loadContainerSetting failed"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v6, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v10, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v9}, addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    .line 684
    const/4 v5, -0x1

    goto/16 :goto_15

    .line 686
    :cond_142
    if-nez v11, :cond_15d

    .line 687
    sget-object v5, mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_15d

    .line 688
    sget-object v5, mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    .line 695
    :cond_15d
    const/4 v5, 0x4

    move/from16 v0, p4

    if-ne v0, v5, :cond_1d8

    .line 696
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v3, v4, v0, v5, v1}, removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_17d

    .line 697
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "removeAppFromContainer_GENERIC_TRUSTED_APPTYPE, removeEntryFromMac failed"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const/4 v5, -0x1

    goto/16 :goto_15

    .line 700
    :cond_17d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v11}, loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1d8

    .line 701
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "removeAppFromContainer_GENERIC_TRUSTED_APPTYPE, loadContainerSetting failed"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object v6, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v9}, addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    .line 703
    const/4 v5, -0x1

    goto/16 :goto_15

    .line 707
    :cond_1a4
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeAppFromContainer, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " seinfo is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_1c7} :catch_1ca

    .line 708
    const/4 v5, -0x1

    goto/16 :goto_15

    .line 710
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "pid":I
    .end local v17    # "uid":I
    .end local v18    # "userId":I
    :catch_1ca
    move-exception v13

    .line 711
    .local v13, "e":Ljava/lang/Exception;
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "removeAppFromContainer failed"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const/4 v5, -0x1

    goto/16 :goto_15

    .line 717
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v15    # "pid":I
    .restart local v17    # "uid":I
    .restart local v18    # "userId":I
    :cond_1d8
    const/4 v5, 0x0

    goto/16 :goto_15
.end method

.method public removeSEContainer(III)I
    .registers 16
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "containerID"    # I

    .prologue
    const/4 v8, 0x0

    const/16 v7, -0xb

    const/4 v6, -0x1

    .line 220
    new-instance v1, Ljava/io/File;

    sget-object v9, MYCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .local v1, "macPermFile":Ljava/io/File;
    const/4 v4, -0x1

    .line 227
    .local v4, "status":I
    invoke-virtual {p0}, getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v0

    .line 228
    .local v0, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v0, :cond_1d

    .line 229
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "MyContainer"

    const-string/jumbo v9, "removeSEContainer, genericMDMID is null"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :goto_1c
    return v6

    .line 239
    :cond_1d
    invoke-static {p3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v9

    if-eqz v9, :cond_f4

    .line 240
    sget-object v9, mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v9

    invoke-virtual {v9, p3}, Lcom/sec/enterprise/knox/seams/SEAMS;->getSEContainerClipboardMode(I)I

    move-result v4

    .line 244
    const/4 v9, 0x3

    invoke-virtual {p0, p3, v9}, getPackageNamesFromSEContainer(II)[Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "packageNames":[Ljava/lang/String;
    if-eqz v2, :cond_37

    array-length v9, v2

    if-nez v9, :cond_e8

    .line 249
    :cond_37
    const/4 v9, 0x4

    invoke-virtual {p0, p3, v9}, getPackageNamesFromSEContainer(II)[Ljava/lang/String;

    move-result-object v5

    .line 250
    .local v5, "trustedPackages":[Ljava/lang/String;
    if-eqz v5, :cond_41

    array-length v9, v5

    if-nez v9, :cond_dc

    .line 254
    :cond_41
    iget-object v7, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v7, v9, v10, p3}, Lcom/android/server/pm/PackageManagerService;->removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_d0

    .line 258
    iget-object v7, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v7, v9, v10, v8}, removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_66

    .line 259
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "MyContainer"

    const-string/jumbo v9, "removeEntryFromMac failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 266
    :cond_66
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.SECONTAINER_REMOVED"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v3, "removalIntent":Landroid/content/Intent;
    const-string/jumbo v7, "secontainerid"

    invoke-virtual {v3, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    sget-object v7, mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 269
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "MyContainer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Broadcast removal of secontainer:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    if-ltz v4, :cond_c4

    .line 272
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Generic clipboard for containerID:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", deleting the entry now"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0, p3, v4}, deleteSEContainerClipboardTableEntry(II)I

    :cond_c1
    :goto_c1
    move v6, v8

    .line 279
    goto/16 :goto_1c

    .line 274
    :cond_c4
    if-ne v4, v6, :cond_c1

    .line 275
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v9, "Error retrieving status of Generic clipboard "

    invoke-virtual {v6, v7, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c1

    .line 282
    .end local v3    # "removalIntent":Landroid/content/Intent;
    :cond_d0
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "MyContainer"

    const-string/jumbo v9, "remove MyContainer ID Failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 285
    :cond_dc
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "MyContainer"

    const-string v9, "Trusted Package List not emPty"

    invoke-virtual {v6, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 286
    goto/16 :goto_1c

    .line 289
    .end local v5    # "trustedPackages":[Ljava/lang/String;
    :cond_e8
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "MyContainer"

    const-string v9, "CONTAINER not empty"

    invoke-virtual {v6, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 290
    goto/16 :goto_1c

    .line 294
    .end local v2    # "packageNames":[Ljava/lang/String;
    :cond_f4
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "MyContainer"

    const-string v9, "Not my containerID"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c
.end method
