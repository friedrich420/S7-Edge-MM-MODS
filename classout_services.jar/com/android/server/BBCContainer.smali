.class public Lcom/android/server/BBCContainer;
.super Lcom/android/server/SEAMSContainer;
.source "BBCContainer.java"


# static fields
.field private static BBCCONTAINER_MAC_PERM:Ljava/lang/String; = null

.field private static final BBCCONTAINER_SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/bbccontainer"

.field private static final BBCCONTAINER_TYPE:I = 0x3

.field private static final BBCCONTAIN_START_NUM:I = 0x1f5

.field private static final MAX_BBCCONTAIN_NUM:I = 0xc7

.field private static final TAG:Ljava/lang/String; = "BBCContainer"

.field private static mSKLog:Lcom/android/server/SKLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const-string v0, "/data/security/bbccontainer/mac_permissions.xml"

    sput-object v0, BBCCONTAINER_MAC_PERM:Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, mSKLog:Lcom/android/server/SKLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/server/SEAMSContainer;-><init>()V

    .line 82
    sput-object p1, mContext:Landroid/content/Context;

    .line 83
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    .line 84
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
    .line 316
    const/4 v11, 0x0

    .line 320
    .local v11, "appNotInstalled":Z
    const/4 v5, 0x5

    move/from16 v0, p4

    if-eq v0, v5, :cond_11

    .line 321
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    const-string v8, "Apptype not 5"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/4 v5, -0x3

    .line 467
    :goto_10
    return v5

    .line 326
    :cond_11
    invoke-static/range {p1 .. p1}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 327
    if-nez p1, :cond_22

    .line 328
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    const-string v8, " addAppToContainer failed, no packageName found"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const/4 v5, -0x1

    goto :goto_10

    .line 331
    :cond_22
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v5

    if-nez v5, :cond_34

    .line 332
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    const-string v8, " invalid container ID"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const/16 v5, -0xc

    goto :goto_10

    .line 335
    :cond_34
    invoke-virtual/range {p0 .. p0}, getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v12

    .line 336
    .local v12, "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v12, :cond_45

    .line 337
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    const-string v8, "bbcMDMID is null, Returning null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const/4 v5, -0x2

    goto :goto_10

    .line 341
    :cond_45
    iget-object v5, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v7, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move/from16 v0, p3

    invoke-static {v5, v7, v0}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_5c

    .line 342
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    const-string v8, "Given Container ID not created by Caller - Returning Refused"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const/4 v5, -0x2

    goto :goto_10

    .line 349
    :cond_5c
    const/4 v13, 0x0

    .line 350
    .local v13, "certMatch":Z
    const/4 v4, 0x0

    .line 351
    .local v4, "signature":Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v16, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 353
    if-nez p2, :cond_75

    .line 355
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    const-string v8, " Input Certificate is null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const/16 v5, -0xe

    goto :goto_10

    .line 358
    :cond_75
    if-nez v16, :cond_99

    .line 360
    const/4 v5, 0x0

    aget-object v4, p2, v5

    .line 361
    const/4 v11, 0x1

    .line 385
    :cond_7b
    new-instance v3, Ljava/io/File;

    sget-object v5, BBCCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    .local v3, "macPermFile":Ljava/io/File;
    :try_start_82
    invoke-static {}, getBbcEnabled()I

    move-result v18

    .line 398
    .local v18, "userId":I
    const/4 v14, 0x0

    .line 403
    .local v14, "containerAllowCat":Ljava/lang/String;
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 407
    .local v10, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v10, :cond_bb

    .line 408
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    const-string v8, "addAppToContainer, Application Info is null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_96} :catch_1b1

    .line 409
    const/4 v5, -0x1

    goto/16 :goto_10

    .line 363
    .end local v3    # "macPermFile":Ljava/io/File;
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "containerAllowCat":Ljava/lang/String;
    .end local v18    # "userId":I
    :cond_99
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "signature":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 366
    .restart local v4    # "signature":Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 370
    const/4 v13, 0x1

    .line 375
    :cond_ac
    if-nez v13, :cond_7b

    .line 377
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    const-string v8, "addAppToContainer, input certificate does not match the certificate extracted from package"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const/16 v5, -0xd

    goto/16 :goto_10

    .line 412
    .restart local v3    # "macPermFile":Ljava/io/File;
    .restart local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v14    # "containerAllowCat":Ljava/lang/String;
    .restart local v18    # "userId":I
    :cond_bb
    :try_start_bb
    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    if-eqz v5, :cond_18c

    .line 413
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addAppToContainer, Got Application Info, bbcseinfo is not null appInfo.category = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v10, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget v5, v10, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    if-lez v5, :cond_f2

    iget v5, v10, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    const/16 v7, 0x2bc

    if-ge v5, v7, :cond_f2

    .line 415
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    const-string v8, "addAppToContainer, return ERROR_ALREADY_CONTAINER_APP"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const/16 v5, -0x9

    goto/16 :goto_10

    .line 418
    :cond_f2
    const-string/jumbo v5, "default"

    iget-object v7, v10, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_102

    .line 419
    const-string/jumbo v5, "untrusted"

    iput-object v5, v10, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    .line 424
    :cond_102
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    .line 425
    .local v17, "uid":I
    const/4 v6, 0x0

    .line 426
    .local v6, "newSeinfo":Ljava/lang/String;
    const/4 v5, 0x5

    move/from16 v0, p4

    if-ne v0, v5, :cond_129

    .line 427
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v10, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

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

    .line 429
    :cond_129
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move/from16 v8, p4

    invoke-static/range {v3 .. v9}, addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v5

    if-eqz v5, :cond_144

    .line 430
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    const-string v8, "addAppToContainer: addEntryToMac failed"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const/4 v5, -0x1

    goto/16 :goto_10

    .line 434
    :cond_144
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v11}, loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_169

    .line 435
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    const-string/jumbo v8, "loadContainerSetting,POLICY_FAILED is returned."

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v3, v4, v0, v5, v1}, removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 437
    const/4 v5, -0x1

    goto/16 :goto_10

    .line 442
    :cond_169
    if-nez v11, :cond_189

    .line 443
    const/4 v5, 0x5

    move/from16 v0, p4

    if-ne v0, v5, :cond_189

    .line 447
    sget-object v5, mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_189

    .line 448
    sget-object v5, mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    .line 467
    :cond_189
    const/4 v5, 0x0

    goto/16 :goto_10

    .line 454
    .end local v6    # "newSeinfo":Ljava/lang/String;
    .end local v17    # "uid":I
    :cond_18c
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addAppToContainer, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bbcseinfo is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_1ae} :catch_1b1

    .line 456
    const/4 v5, -0x1

    goto/16 :goto_10

    .line 458
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "containerAllowCat":Ljava/lang/String;
    .end local v18    # "userId":I
    :catch_1b1
    move-exception v15

    .line 460
    .local v15, "e":Ljava/lang/Exception;
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "leave addAppToContainer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const/4 v5, -0x1

    goto/16 :goto_10
.end method

.method public createSEContainer(II)I
    .registers 17
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 97
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    .line 99
    .local v13, "userId":I
    :try_start_7
    new-instance v8, Ljava/io/File;

    const-string v1, "/data/security/bbccontainer"

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v8, "bbcContainerDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_32

    .line 101
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->hasBBCContainers()Z

    move-result v1

    if-nez v1, :cond_25

    .line 102
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "BBCContainer"

    const-string v3, "Issue with bbcContainerDir directory"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v11, -0x1

    .line 162
    .end local v8    # "bbcContainerDir":Ljava/io/File;
    :cond_24
    :goto_24
    return v11

    .line 106
    .restart local v8    # "bbcContainerDir":Ljava/io/File;
    :cond_25
    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    .line 107
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 108
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_32} :catch_4b

    .line 117
    :cond_32
    new-instance v0, Ljava/io/File;

    sget-object v1, BBCCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "macPermFile":Ljava/io/File;
    invoke-virtual {p0}, getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v9

    .line 124
    .local v9, "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v9, :cond_5a

    .line 125
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "BBCContainer"

    const-string/jumbo v3, "createSEContainer, bbcMDMID is null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v11, -0x1

    goto :goto_24

    .line 111
    .end local v0    # "macPermFile":Ljava/io/File;
    .end local v8    # "bbcContainerDir":Ljava/io/File;
    .end local v9    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :catch_4b
    move-exception v12

    .line 112
    .local v12, "e":Ljava/lang/Exception;
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "BBCContainer"

    const-string v3, "Issue with bbcContainerDir directory"

    invoke-virtual {v1, v2, v3, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    const/4 v11, -0x1

    goto :goto_24

    .line 129
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v0    # "macPermFile":Ljava/io/File;
    .restart local v8    # "bbcContainerDir":Ljava/io/File;
    .restart local v9    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_5a
    const/4 v1, 0x1

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    aput-object v2, v10, v1

    .line 130
    .local v10, "certificates":[Ljava/lang/String;
    iget-object v1, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {v1, v10}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 135
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v7, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    if-eqz v1, :cond_7f

    iget v1, v7, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    const/16 v2, 0x2bc

    if-ge v1, v2, :cond_7f

    .line 136
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "BBCContainer"

    const-string/jumbo v3, "createBBcContainer, The Agent is a Container App"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/16 v11, -0x9

    goto :goto_24

    .line 139
    :cond_7f
    iget-object v1, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->createContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 140
    .local v11, "containerID":I
    const/4 v1, -0x7

    if-ne v11, v1, :cond_97

    .line 141
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "BBCContainer"

    const-string v3, "BBC Container Count Overflow"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v11, -0x7

    goto :goto_24

    .line 145
    :cond_97
    invoke-static {v11}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 146
    iget-object v1, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iget-object v2, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v1

    if-eqz v1, :cond_c5

    .line 148
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "BBCContainer"

    const-string/jumbo v3, "createSEContainer: addEntryToMac failed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v11}, Lcom/android/server/pm/PackageManagerService;->removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    .line 150
    const/4 v11, -0x1

    goto/16 :goto_24

    .line 152
    :cond_c5
    iget-object v1, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v13, v2}, loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_24

    .line 153
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "BBCContainer"

    const-string/jumbo v3, "createBBCContainer: loadcontainersetting failed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v1, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iget-object v2, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v0, v1, v2, v3, v4}, removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 155
    iget-object v1, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v11}, Lcom/android/server/pm/PackageManagerService;->removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    .line 156
    const/4 v11, -0x1

    goto/16 :goto_24
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .registers 8
    .param p1, "containerID"    # I
    .param p2, "appType"    # I

    .prologue
    const/4 v1, 0x0

    .line 244
    invoke-static {p1}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 248
    invoke-virtual {p0}, getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v0

    .line 249
    .local v0, "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v0, :cond_17

    .line 250
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BBCContainer"

    const-string v4, "bbcMDMID is null, Returning null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .end local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :goto_16
    return-object v1

    .line 253
    .restart local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_17
    iget-object v2, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 254
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BBCContainer"

    const-string v4, "Given Container ID not created by Caller - Returning Refused"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 257
    :cond_2b
    const/4 v2, 0x5

    if-ne p2, v2, :cond_36

    .line 258
    iget-object v1, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->getPackageNamesFromSEContainerID(III)[Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    .line 261
    .end local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_36
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BBCContainer"

    const-string v4, "Given Container ID is not my Container ID, returning null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
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
    .line 305
    invoke-virtual {p0}, getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v0

    .line 306
    .local v0, "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v0, :cond_12

    .line 308
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "BBCContainer"

    const-string/jumbo v3, "getSEContainerIDs, bbcMDMID is null, Returning null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/4 v1, 0x0

    .line 312
    :goto_11
    return-object v1

    :cond_12
    iget-object v1, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->getBBCContainerIDs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    goto :goto_11
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appType"    # I

    .prologue
    const/4 v7, 0x0

    .line 275
    invoke-static {p1}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-virtual {p0}, getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v6

    .line 277
    .local v6, "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v6, :cond_15

    .line 279
    sget-object v0, mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "BBCContainer"

    const-string v2, "bbcMDMID is null, Returning null"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :goto_14
    return-object v7

    .line 283
    :cond_15
    const/4 v0, 0x5

    if-ne p2, v0, :cond_2c

    .line 284
    iget-object v0, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v2, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    const/4 v4, 0x3

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->getSEContainerIDFromPackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v8

    .line 285
    .local v8, "retContainerID":I
    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v0, 0x0

    aput v8, v7, v0

    .line 286
    .local v7, "retContainerArray":[I
    goto :goto_14

    .line 288
    .end local v7    # "retContainerArray":[I
    .end local v8    # "retContainerID":I
    :cond_2c
    sget-object v0, mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "BBCContainer"

    const-string/jumbo v2, "getSEContainerIDsFromPackageName, null is returned"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method

.method public getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 293
    const/4 v1, 0x0

    .line 294
    .local v1, "signature":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    sget-object v2, BBCCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, "macPermFile":Ljava/io/File;
    invoke-static {v0, p1}, getSignatureEntryFromMac(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    return-object v1
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 24
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 471
    const/4 v11, 0x0

    .line 475
    .local v11, "appNotInstalled":Z
    const/4 v5, 0x5

    move/from16 v0, p4

    if-eq v0, v5, :cond_11

    .line 476
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "BBCContainer"

    const-string v7, "Apptype not 5"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const/4 v5, -0x3

    .line 578
    :goto_10
    return v5

    .line 479
    :cond_11
    invoke-static/range {p1 .. p1}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 480
    if-nez p1, :cond_22

    .line 481
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "BBCContainer"

    const-string v7, " removeAppFromContainer failed, no packageName found"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const/4 v5, -0x1

    goto :goto_10

    .line 484
    :cond_22
    invoke-virtual/range {p0 .. p0}, getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v12

    .line 485
    .local v12, "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v12, :cond_33

    .line 486
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "BBCContainer"

    const-string v7, "bbcMDMID is null, Returning null"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const/4 v5, -0x2

    goto :goto_10

    .line 489
    :cond_33
    iget-object v5, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v6, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move/from16 v0, p3

    invoke-static {v5, v6, v0}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_4a

    .line 490
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "BBCContainer"

    const-string v7, "Given Container ID not created by Caller - Returning Refused - Container Allow Package Case"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const/4 v5, -0x2

    goto :goto_10

    .line 494
    :cond_4a
    const/4 v13, 0x0

    .line 495
    .local v13, "certMatch":Z
    const/4 v4, 0x0

    .line 496
    .local v4, "signature":Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v16, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 498
    if-nez p2, :cond_63

    .line 500
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "BBCContainer"

    const-string v7, " Input Certificate is null"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const/16 v5, -0xe

    goto :goto_10

    .line 503
    :cond_63
    if-nez v16, :cond_b5

    .line 506
    const/4 v5, 0x0

    aget-object v4, p2, v5

    .line 507
    const/4 v11, 0x1

    .line 531
    :cond_69
    new-instance v3, Ljava/io/File;

    sget-object v5, BBCCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 541
    .local v3, "macPermFile":Ljava/io/File;
    :try_start_70
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    .line 542
    .local v17, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    .line 543
    .local v15, "pid":I
    invoke-static {}, getBbcEnabled()I

    move-result v18

    .line 548
    .local v18, "userId":I
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 552
    .local v10, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    if-eqz v5, :cond_100

    .line 553
    const/4 v5, 0x5

    move/from16 v0, p4

    if-ne v0, v5, :cond_149

    .line 557
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v3, v4, v0, v5, v1}, removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_d8

    .line 558
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "BBCContainer"

    const-string/jumbo v7, "removeEntryFromMac failed"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_b2} :catch_126

    .line 559
    const/4 v5, -0x1

    goto/16 :goto_10

    .line 509
    .end local v3    # "macPermFile":Ljava/io/File;
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "pid":I
    .end local v17    # "uid":I
    .end local v18    # "userId":I
    :cond_b5
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "signature":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 512
    .restart local v4    # "signature":Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 516
    const/4 v13, 0x1

    .line 521
    :cond_c8
    if-nez v13, :cond_69

    .line 523
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "BBCContainer"

    const-string/jumbo v7, "removeAppFromContainer, input certificate does not match the certificate extracted from package"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const/16 v5, -0xd

    goto/16 :goto_10

    .line 561
    .restart local v3    # "macPermFile":Ljava/io/File;
    .restart local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v15    # "pid":I
    .restart local v17    # "uid":I
    .restart local v18    # "userId":I
    :cond_d8
    :try_start_d8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v11}, loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_149

    .line 562
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "BBCContainer"

    const-string/jumbo v7, "loadContainerSetting failed"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v6, v10, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move/from16 v8, p4

    invoke-static/range {v3 .. v9}, addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    .line 564
    const/4 v5, -0x1

    goto/16 :goto_10

    .line 568
    :cond_100
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "BBCContainer"

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
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_123} :catch_126

    .line 569
    const/4 v5, -0x1

    goto/16 :goto_10

    .line 571
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "pid":I
    .end local v17    # "uid":I
    .end local v18    # "userId":I
    :catch_126
    move-exception v14

    .line 572
    .local v14, "e":Ljava/lang/Exception;
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "BBCContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "leave removeAppFromContainer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const/4 v5, -0x1

    goto/16 :goto_10

    .line 578
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v15    # "pid":I
    .restart local v17    # "uid":I
    .restart local v18    # "userId":I
    :cond_149
    const/4 v5, 0x0

    goto/16 :goto_10
.end method

.method public removeSEContainer(III)I
    .registers 12
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "containerID"    # I

    .prologue
    const/4 v3, -0x1

    .line 177
    new-instance v1, Ljava/io/File;

    sget-object v4, BBCCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, "macPermFile":Ljava/io/File;
    invoke-virtual {p0}, getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v0

    .line 184
    .local v0, "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v0, :cond_18

    .line 185
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "BBCContainer"

    const-string v6, "bbcMDMID is null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :goto_17
    return v3

    .line 195
    :cond_18
    invoke-static {p3}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 199
    const/4 v4, 0x5

    invoke-virtual {p0, p3, v4}, getPackageNamesFromSEContainer(II)[Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "packageNames":[Ljava/lang/String;
    if-eqz v2, :cond_28

    array-length v4, v2

    if-nez v4, :cond_5b

    .line 204
    :cond_28
    iget-object v4, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, p3}, Lcom/android/server/pm/PackageManagerService;->removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_50

    .line 208
    iget-object v4, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    invoke-static {v1, v4, v5, v6, v7}, removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 209
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "BBCContainer"

    const-string/jumbo v6, "removeEntryFromMac failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 215
    :cond_4e
    const/4 v3, 0x0

    goto :goto_17

    .line 218
    :cond_50
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "BBCContainer"

    const-string/jumbo v6, "remove BBC Container ID Failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 222
    :cond_5b
    sget-object v3, mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "BBCContainer"

    const-string v5, "CONTAINER not empty"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/16 v3, -0xb

    goto :goto_17

    .line 229
    .end local v2    # "packageNames":[Ljava/lang/String;
    :cond_67
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "BBCContainer"

    const-string/jumbo v6, "removeSEContainer, POLICY_FAILED is returned"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method public updateAppToContainer(Ljava/lang/String;[Ljava/lang/String;IIIZ)I
    .registers 28
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "allowcategory"    # I
    .param p5, "appType"    # I
    .param p6, "removeFlag"    # Z

    .prologue
    .line 582
    const/4 v13, 0x0

    .line 586
    .local v13, "appNotInstalled":Z
    const/4 v5, 0x5

    move/from16 v0, p5

    if-eq v0, v5, :cond_11

    .line 587
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    const-string v8, "Apptype not 5"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const/4 v5, -0x3

    .line 714
    :goto_10
    return v5

    .line 592
    :cond_11
    invoke-static/range {p1 .. p1}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 593
    if-nez p1, :cond_22

    .line 594
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    const-string v8, " updateAppToContainer failed, no packageName found"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const/4 v5, -0x1

    goto :goto_10

    .line 597
    :cond_22
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v5

    if-nez v5, :cond_34

    .line 598
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    const-string v8, " invalid container ID"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const/16 v5, -0xc

    goto :goto_10

    .line 601
    :cond_34
    invoke-virtual/range {p0 .. p0}, getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v14

    .line 602
    .local v14, "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v14, :cond_45

    .line 603
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    const-string v8, "bbcMDMID is null, Returning null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const/4 v5, -0x2

    goto :goto_10

    .line 606
    :cond_45
    iget-object v5, v14, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v7, v14, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move/from16 v0, p3

    invoke-static {v5, v7, v0}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_5c

    .line 607
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    const-string v8, "Given Container ID not created by Caller - Returning Refused"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const/4 v5, -0x2

    goto :goto_10

    .line 613
    :cond_5c
    const/4 v15, 0x0

    .line 614
    .local v15, "certMatch":Z
    const/4 v4, 0x0

    .line 615
    .local v4, "signature":Ljava/lang/String;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .local v18, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 617
    if-nez p2, :cond_75

    .line 619
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    const-string v8, " Input Certificate is null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const/16 v5, -0xe

    goto :goto_10

    .line 622
    :cond_75
    if-nez v18, :cond_9b

    .line 624
    const/4 v5, 0x0

    aget-object v4, p2, v5

    .line 625
    const/4 v13, 0x1

    .line 648
    :cond_7b
    new-instance v3, Ljava/io/File;

    sget-object v5, BBCCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 653
    .local v3, "macPermFile":Ljava/io/File;
    :try_start_82
    invoke-static {}, getBbcEnabled()I

    move-result v20

    .line 654
    .local v20, "userId":I
    const/16 v16, 0x0

    .line 658
    .local v16, "containerAllowCat":Ljava/lang/String;
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    .line 662
    .local v12, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v12, :cond_be

    .line 663
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    const-string/jumbo v8, "updateAppToContainer, Application Info is null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_98} :catch_198

    .line 664
    const/4 v5, -0x1

    goto/16 :goto_10

    .line 627
    .end local v3    # "macPermFile":Ljava/io/File;
    .end local v12    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "containerAllowCat":Ljava/lang/String;
    .end local v20    # "userId":I
    :cond_9b
    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "signature":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 629
    .restart local v4    # "signature":Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 633
    const/4 v15, 0x1

    .line 638
    :cond_ae
    if-nez v15, :cond_7b

    .line 640
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    const-string/jumbo v8, "updateAppToContainer, input certificate does not match the certificate extracted from package"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const/16 v5, -0xd

    goto/16 :goto_10

    .line 666
    .restart local v3    # "macPermFile":Ljava/io/File;
    .restart local v12    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v16    # "containerAllowCat":Ljava/lang/String;
    .restart local v20    # "userId":I
    :cond_be
    :try_start_be
    iget-object v5, v12, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    if-eqz v5, :cond_172

    .line 667
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateAppToContainer, Got Application Info, bbcseinfo is not null appInfo.bbccategory = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v12, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string/jumbo v5, "default"

    iget-object v7, v12, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ef

    .line 669
    const-string/jumbo v5, "untrusted"

    iput-object v5, v12, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    .line 674
    :cond_ef
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    .line 675
    .local v19, "uid":I
    const/4 v6, 0x0

    .line 676
    .local v6, "newSeinfo":Ljava/lang/String;
    const/4 v5, 0x5

    move/from16 v0, p5

    if-ne v0, v5, :cond_116

    .line 677
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v12, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

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

    .line 679
    :cond_116
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    move-object/from16 v5, p1

    move/from16 v9, p5

    move/from16 v11, p6

    invoke-static/range {v3 .. v11}, updateEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)I

    move-result v5

    if-eqz v5, :cond_138

    .line 680
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    const-string/jumbo v8, "updateAppToContainer: updateEntryToMac failed"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const/4 v5, -0x1

    goto/16 :goto_10

    .line 683
    :cond_138
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v13}, loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_15d

    .line 684
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    const-string/jumbo v8, "loadContainerSetting,POLICY_FAILED is returned."

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v3, v4, v0, v5, v1}, removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 686
    const/4 v5, -0x1

    goto/16 :goto_10

    .line 691
    :cond_15d
    if-nez v13, :cond_16f

    .line 692
    const/4 v5, 0x5

    move/from16 v0, p5

    if-ne v0, v5, :cond_16f

    .line 696
    sget-object v5, mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    .line 714
    :cond_16f
    const/4 v5, 0x0

    goto/16 :goto_10

    .line 701
    .end local v6    # "newSeinfo":Ljava/lang/String;
    .end local v19    # "uid":I
    :cond_172
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateAppToContainer, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bbcseinfo is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_195
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_195} :catch_198

    .line 703
    const/4 v5, -0x1

    goto/16 :goto_10

    .line 705
    .end local v12    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "containerAllowCat":Ljava/lang/String;
    .end local v20    # "userId":I
    :catch_198
    move-exception v17

    .line 707
    .local v17, "e":Ljava/lang/Exception;
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "leave updateAppToContainer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const/4 v5, -0x1

    goto/16 :goto_10
.end method
