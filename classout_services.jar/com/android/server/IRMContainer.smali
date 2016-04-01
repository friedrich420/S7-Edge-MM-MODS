.class public Lcom/android/server/IRMContainer;
.super Lcom/android/server/SEAMSContainer;
.source "IRMContainer.java"


# static fields
.field private static final IRMCONTAINER_SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/irm"

.field private static final IRMCONTAINER_TYPE:I = 0x4

.field private static final IRM_CATEGORY:I = 0x2be

.field private static IRM_MAC_PERM:Ljava/lang/String; = null

.field private static final IRM_PLATFORM_DATATYPE:Ljava/lang/String; = "platform_app_data_file"

.field private static final IRM_PLATFORM_DOMAIN:Ljava/lang/String; = "irm_platform_app"

.field private static final IRM_PLATFORM_SEINFO:Ljava/lang/String; = "irm_platform"

.field private static IRM_SEAPP_CONTEXTS:Ljava/lang/String; = null

.field private static final IRM_UNTRUST_DATATYPE:Ljava/lang/String; = "app_data_file"

.field private static final IRM_UNTRUST_DOMAIN:Ljava/lang/String; = "irm_app"

.field private static final IRM_UNTRUST_SEINFO:Ljava/lang/String; = "irm"

.field private static final REMOVE_IRMCONTAINER_TYPE:I = 0x9

.field private static final TAG:Ljava/lang/String; = "IRMContainer"

.field private static final USER_NORMAL_APP:Ljava/lang/String; = "_app"

.field private static mSKLog:Lcom/android/server/SKLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const-string v0, "/data/security/irm/mac_permissions.xml"

    sput-object v0, IRM_MAC_PERM:Ljava/lang/String;

    .line 68
    const-string v0, "/data/security/irm/seapp_contexts"

    sput-object v0, IRM_SEAPP_CONTEXTS:Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, mSKLog:Lcom/android/server/SKLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/server/SEAMSContainer;-><init>()V

    .line 90
    sput-object p1, mContext:Landroid/content/Context;

    .line 91
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    .line 92
    return-void
.end method


# virtual methods
.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 34
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 308
    const/16 v19, 0x0

    .line 309
    .local v19, "appNotInstalled":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v28

    .line 313
    .local v28, "userId":I
    const/4 v4, 0x7

    move/from16 v0, p4

    if-eq v0, v4, :cond_32

    const/16 v4, 0x8

    move/from16 v0, p4

    if-eq v0, v4, :cond_32

    .line 314
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Apptype not IRM_APPTYPE "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const/4 v4, -0x3

    .line 459
    :goto_31
    return v4

    .line 319
    :cond_32
    invoke-static/range {p1 .. p1}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 320
    if-nez p1, :cond_43

    .line 321
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, " addAppToContainer failed, no packageName found"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/4 v4, -0x1

    goto :goto_31

    .line 324
    :cond_43
    const/16 v4, 0x2be

    move/from16 v0, p3

    if-eq v0, v4, :cond_55

    .line 325
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, " invalid container ID"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const/16 v4, -0xc

    goto :goto_31

    .line 328
    :cond_55
    invoke-virtual/range {p0 .. p0}, getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v23

    .line 329
    .local v23, "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v23, :cond_67

    .line 330
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string/jumbo v6, "irmMDMID is null, Returning null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/4 v4, -0x2

    goto :goto_31

    .line 334
    :cond_67
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move/from16 v0, p3

    invoke-static {v4, v5, v0}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_82

    .line 335
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, "Given Container ID not created by Caller - Returning Refused"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/4 v4, -0x2

    goto :goto_31

    .line 342
    :cond_82
    const/16 v20, 0x0

    .line 343
    .local v20, "certMatch":Z
    const/4 v12, 0x0

    .line 344
    .local v12, "signature":Ljava/lang/String;
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v26, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v26

    .line 346
    if-nez p2, :cond_9c

    .line 348
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, " Input Certificate is null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const/16 v4, -0xe

    goto :goto_31

    .line 351
    :cond_9c
    if-nez v26, :cond_c9

    .line 353
    const/4 v4, 0x0

    aget-object v12, p2, v4

    .line 354
    const/16 v19, 0x1

    .line 378
    :cond_a3
    new-instance v24, Ljava/io/File;

    sget-object v4, IRM_MAC_PERM:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    .local v24, "macPermFile":Ljava/io/File;
    new-instance v25, Ljava/io/File;

    sget-object v4, IRM_SEAPP_CONTEXTS:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 384
    .local v25, "seappConfig":Ljava/io/File;
    const/16 v21, 0x0

    .line 389
    .local v21, "containerAllowCat":Ljava/lang/String;
    :try_start_b7
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v18

    .line 393
    .local v18, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v18, :cond_ec

    .line 394
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, "addAppToContainer, Application Info is null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_c6} :catch_1ec

    .line 395
    const/4 v4, -0x1

    goto/16 :goto_31

    .line 356
    .end local v18    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v21    # "containerAllowCat":Ljava/lang/String;
    .end local v24    # "macPermFile":Ljava/io/File;
    .end local v25    # "seappConfig":Ljava/io/File;
    :cond_c9
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "signature":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 359
    .restart local v12    # "signature":Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_dd

    .line 363
    const/16 v20, 0x1

    .line 368
    :cond_dd
    if-nez v20, :cond_a3

    .line 370
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, "addAppToContainer, input certificate does not match the certificate extracted from package"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const/16 v4, -0xd

    goto/16 :goto_31

    .line 398
    .restart local v18    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v21    # "containerAllowCat":Ljava/lang/String;
    .restart local v24    # "macPermFile":Ljava/io/File;
    .restart local v25    # "seappConfig":Ljava/io/File;
    :cond_ec
    :try_start_ec
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v4, :cond_1c7

    .line 399
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addAppToContainer, Got Application Info, seinfo is not null appInfo.category = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    move-object/from16 v0, v18

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->category:I

    const/16 v5, 0x2be

    if-ne v4, v5, :cond_125

    .line 401
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, "addAppToContainer, return ERROR_ALREADY_CONTAINER_APP"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const/16 v4, -0x9

    goto/16 :goto_31

    .line 408
    :cond_125
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v27

    .line 409
    .local v27, "uid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 410
    .local v7, "argPkgName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 411
    .local v8, "argSeinfo":Ljava/lang/String;
    const/4 v9, 0x0

    .line 412
    .local v9, "argDomain":Ljava/lang/String;
    const/4 v10, 0x0

    .line 413
    .local v10, "argDataType":Ljava/lang/String;
    const/4 v4, 0x7

    move/from16 v0, p4

    if-ne v0, v4, :cond_16b

    .line 414
    const-string/jumbo v8, "irm_platform"

    .line 415
    const-string/jumbo v9, "irm_platform_app"

    .line 416
    const-string/jumbo v10, "platform_app_data_file"

    .line 422
    :goto_14f
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/16 v11, 0x2be

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-gez v4, :cond_174

    .line 423
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, "addAppToContainer: addSEAppContext failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const/4 v4, -0x1

    goto/16 :goto_31

    .line 418
    :cond_16b
    const-string/jumbo v8, "irm"

    .line 419
    const-string/jumbo v9, "irm_app"

    .line 420
    const-string v10, "app_data_file"

    goto :goto_14f

    .line 426
    :cond_174
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    move-object/from16 v11, v24

    move-object/from16 v13, p1

    move-object v14, v8

    move/from16 v16, p4

    invoke-static/range {v11 .. v17}, addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v4

    if-eqz v4, :cond_193

    .line 427
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, "addAppToContainer: addEntryToMac failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const/4 v4, -0x1

    goto/16 :goto_31

    .line 430
    :cond_193
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1bc

    .line 431
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string/jumbo v6, "loadContainerSetting,POLICY_FAILED is returned."

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-static {v0, v12, v1, v4, v2}, removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 433
    const/4 v4, -0x1

    goto/16 :goto_31

    .line 438
    :cond_1bc
    const-string/jumbo v4, "selinux.reload_policy"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const/4 v4, 0x0

    goto/16 :goto_31

    .line 446
    .end local v7    # "argPkgName":Ljava/lang/String;
    .end local v8    # "argSeinfo":Ljava/lang/String;
    .end local v9    # "argDomain":Ljava/lang/String;
    .end local v10    # "argDataType":Ljava/lang/String;
    .end local v27    # "uid":I
    :cond_1c7
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addAppToContainer, "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " bbcseinfo is null"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e9
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_1e9} :catch_1ec

    .line 448
    const/4 v4, -0x1

    goto/16 :goto_31

    .line 450
    .end local v18    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1ec
    move-exception v22

    .line 452
    .local v22, "e":Ljava/lang/Exception;
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "leave addAppToContainer "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const/4 v4, -0x1

    goto/16 :goto_31
.end method

.method public createSEContainer(II)I
    .registers 17
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 105
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    .line 107
    .local v13, "userId":I
    :try_start_7
    new-instance v11, Ljava/io/File;

    const-string v1, "/data/security/irm"

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v11, "irmContainerDir":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_21

    .line 110
    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    .line 111
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 112
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_21} :catch_3a

    .line 120
    :cond_21
    new-instance v0, Ljava/io/File;

    sget-object v1, IRM_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "macPermFile":Ljava/io/File;
    invoke-virtual {p0}, getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v12

    .line 123
    .local v12, "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v12, :cond_49

    .line 124
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "IRMContainer"

    const-string/jumbo v3, "createSEContainer, irmMDMID is null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v9, -0x1

    .line 160
    .end local v0    # "macPermFile":Ljava/io/File;
    .end local v11    # "irmContainerDir":Ljava/io/File;
    .end local v12    # "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_39
    :goto_39
    return v9

    .line 114
    :catch_3a
    move-exception v10

    .line 115
    .local v10, "e":Ljava/lang/Exception;
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "IRMContainer"

    const-string v3, "Issue with irmContainerDir directory"

    invoke-virtual {v1, v2, v3, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    const/4 v9, -0x1

    goto :goto_39

    .line 128
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v0    # "macPermFile":Ljava/io/File;
    .restart local v11    # "irmContainerDir":Ljava/io/File;
    .restart local v12    # "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_49
    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    aput-object v2, v8, v1

    .line 129
    .local v8, "certificates":[Ljava/lang/String;
    iget-object v1, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 134
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v7, Landroid/content/pm/ApplicationInfo;->category:I

    if-eqz v1, :cond_68

    .line 135
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "IRMContainer"

    const-string/jumbo v3, "createIRMContainer, The Agent is a Container App"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/16 v9, -0x9

    goto :goto_39

    .line 138
    :cond_68
    iget-object v1, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->createContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 139
    .local v9, "containerID":I
    const/4 v1, -0x7

    if-ne v9, v1, :cond_80

    .line 140
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "IRMContainer"

    const-string v3, "IRM Container Count Overflow"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v9, -0x7

    goto :goto_39

    .line 144
    :cond_80
    const/16 v1, 0x2be

    if-ne v9, v1, :cond_39

    .line 145
    iget-object v1, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iget-object v2, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v1

    if-eqz v1, :cond_ab

    .line 146
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "IRMContainer"

    const-string/jumbo v3, "createSEContainer: addEntryToMac failed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v9}, Lcom/android/server/pm/PackageManagerService;->removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    .line 148
    const/4 v9, -0x1

    goto :goto_39

    .line 150
    :cond_ab
    iget-object v1, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v13, v2}, loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_39

    .line 151
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "IRMContainer"

    const-string/jumbo v3, "createSEContainer: loadcontainersetting failed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v1, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iget-object v2, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    invoke-static {v0, v1, v2, v3, v4}, removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 153
    iget-object v1, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v9}, Lcom/android/server/pm/PackageManagerService;->removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    .line 154
    const/4 v9, -0x1

    goto/16 :goto_39
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .registers 8
    .param p1, "containerID"    # I
    .param p2, "appType"    # I

    .prologue
    const/4 v1, 0x0

    .line 237
    const/16 v2, 0x2be

    if-ne p1, v2, :cond_35

    .line 241
    invoke-virtual {p0}, getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v0

    .line 242
    .local v0, "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v0, :cond_16

    .line 243
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "IRMContainer"

    const-string/jumbo v4, "irmMDMID is null, Returning null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .end local v0    # "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :goto_15
    return-object v1

    .line 246
    .restart local v0    # "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_16
    iget-object v2, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 247
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "IRMContainer"

    const-string v4, "Given Container ID not created by Caller - Returning Refused"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 250
    :cond_2a
    const/4 v2, 0x7

    if-ne p2, v2, :cond_35

    .line 251
    iget-object v1, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->getPackageNamesFromSEContainerID(III)[Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    .line 254
    .end local v0    # "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_35
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "IRMContainer"

    const-string v4, "Given Container ID is not my Container ID, returning null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method protected getSEAppContextLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p1, "userType"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "fileType"    # Ljava/lang/String;
    .param p6, "category"    # I

    .prologue
    .line 592
    if-nez p1, :cond_4

    .line 593
    const-string p1, "_app"

    .line 595
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seinfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 262
    invoke-virtual {p0}, getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v0

    .line 263
    .local v0, "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v0, :cond_12

    .line 265
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "IRMContainer"

    const-string/jumbo v3, "getSEContainerIDs, irmMDMID is null, Returning null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/4 v1, 0x0

    .line 269
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

    .line 282
    invoke-static {p1}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 283
    invoke-virtual {p0}, getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v6

    .line 284
    .local v6, "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v6, :cond_16

    .line 286
    sget-object v0, mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "IRMContainer"

    const-string/jumbo v2, "irmMDMID is null, Returning null"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :goto_15
    return-object v7

    .line 290
    :cond_16
    const/4 v0, 0x7

    if-ne p2, v0, :cond_2d

    .line 291
    iget-object v0, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v2, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    const/4 v4, 0x4

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->getSEContainerIDFromPackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v8

    .line 292
    .local v8, "retContainerID":I
    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v0, 0x0

    aput v8, v7, v0

    .line 293
    .local v7, "retContainerArray":[I
    goto :goto_15

    .line 295
    .end local v7    # "retContainerArray":[I
    .end local v8    # "retContainerID":I
    :cond_2d
    sget-object v0, mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "IRMContainer"

    const-string/jumbo v2, "getSEContainerIDsFromPackageName, null is returned"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method public getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, "signature":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    sget-object v2, IRM_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, "macPermFile":Ljava/io/File;
    invoke-static {v0, p1}, getSignatureEntryFromMac(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 304
    return-object v1
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 37
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 463
    const/16 v22, 0x0

    .line 467
    .local v22, "appNotInstalled":Z
    const/4 v4, 0x7

    move/from16 v0, p4

    if-eq v0, v4, :cond_18

    const/16 v4, 0x8

    move/from16 v0, p4

    if-eq v0, v4, :cond_18

    .line 468
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, "Apptype not IRM_APPTYPE"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const/4 v4, -0x3

    .line 588
    :goto_17
    return v4

    .line 471
    :cond_18
    invoke-static/range {p1 .. p1}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 472
    if-nez p1, :cond_29

    .line 473
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, " removeAppFromContainer failed, no packageName found"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const/4 v4, -0x1

    goto :goto_17

    .line 476
    :cond_29
    invoke-virtual/range {p0 .. p0}, getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v25

    .line 477
    .local v25, "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v25, :cond_3b

    .line 478
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string/jumbo v6, "irmMDMID is null, Returning null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const/4 v4, -0x2

    goto :goto_17

    .line 481
    :cond_3b
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move/from16 v0, p3

    invoke-static {v4, v5, v0}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_56

    .line 482
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, "Given Container ID not created by Caller - Returning Refused - Container Allow Package Case"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const/4 v4, -0x2

    goto :goto_17

    .line 486
    :cond_56
    const/16 v23, 0x0

    .line 487
    .local v23, "certMatch":Z
    const/4 v12, 0x0

    .line 488
    .local v12, "signature":Ljava/lang/String;
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v29, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v29

    .line 490
    if-nez p2, :cond_70

    .line 492
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, " Input Certificate is null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const/16 v4, -0xe

    goto :goto_17

    .line 495
    :cond_70
    if-nez v29, :cond_d0

    .line 498
    const/4 v4, 0x0

    aget-object v12, p2, v4

    .line 499
    const/16 v22, 0x1

    .line 523
    :cond_77
    new-instance v26, Ljava/io/File;

    sget-object v4, IRM_MAC_PERM:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 524
    .local v26, "macPermFile":Ljava/io/File;
    new-instance v28, Ljava/io/File;

    sget-object v4, IRM_SEAPP_CONTEXTS:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 530
    .local v28, "seappConfig":Ljava/io/File;
    :try_start_89
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v30

    .line 531
    .local v30, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v27

    .line 532
    .local v27, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v31

    .line 537
    .local v31, "userId":I
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v21

    .line 541
    .local v21, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v4, :cond_1a0

    .line 546
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-static {v0, v12, v1, v4, v2}, removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_f4

    .line 547
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string/jumbo v6, "removeEntryFromMac failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_cd} :catch_1c6

    .line 548
    const/4 v4, -0x1

    goto/16 :goto_17

    .line 501
    .end local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v26    # "macPermFile":Ljava/io/File;
    .end local v27    # "pid":I
    .end local v28    # "seappConfig":Ljava/io/File;
    .end local v30    # "uid":I
    .end local v31    # "userId":I
    :cond_d0
    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "signature":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 504
    .restart local v12    # "signature":Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e4

    .line 508
    const/16 v23, 0x1

    .line 513
    :cond_e4
    if-nez v23, :cond_77

    .line 515
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string/jumbo v6, "removeAppFromContainer, input certificate does not match the certificate extracted from package"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const/16 v4, -0xd

    goto/16 :goto_17

    .line 550
    .restart local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v26    # "macPermFile":Ljava/io/File;
    .restart local v27    # "pid":I
    .restart local v28    # "seappConfig":Ljava/io/File;
    .restart local v30    # "uid":I
    .restart local v31    # "userId":I
    :cond_f4
    :try_start_f4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 551
    .local v7, "newPkgName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 552
    .local v8, "argSeinfo":Ljava/lang/String;
    const/4 v9, 0x0

    .line 553
    .local v9, "argDomain":Ljava/lang/String;
    const/4 v10, 0x0

    .line 554
    .local v10, "argDataType":Ljava/lang/String;
    const/4 v4, 0x7

    move/from16 v0, p4

    if-ne v0, v4, :cond_152

    .line 555
    const-string/jumbo v8, "irm_platform"

    .line 556
    const-string/jumbo v9, "irm_platform_app"

    .line 557
    const-string/jumbo v10, "platform_app_data_file"

    .line 563
    :goto_11a
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/16 v11, 0x2be

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_15b

    .line 564
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, "cound not successfully remove irm entry from seapp_contexts"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    move-object/from16 v0, v21

    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    move-object/from16 v11, v26

    move-object/from16 v13, p1

    move/from16 v16, p4

    invoke-static/range {v11 .. v17}, addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    .line 566
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5}, loadContainerSetting(Ljava/lang/String;IZ)I

    .line 567
    const/4 v4, -0x1

    goto/16 :goto_17

    .line 559
    :cond_152
    const-string/jumbo v8, "irm"

    .line 560
    const-string/jumbo v9, "irm_app"

    .line 561
    const-string v10, "app_data_file"

    goto :goto_11a

    .line 570
    :cond_15b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_195

    .line 571
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    const-string v15, "_app"

    const/16 v20, 0x2be

    move-object/from16 v13, p0

    move-object/from16 v16, p1

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-virtual/range {v13 .. v20}, addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 572
    move-object/from16 v0, v21

    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    move-object/from16 v11, v26

    move-object/from16 v13, p1

    move/from16 v16, p4

    invoke-static/range {v11 .. v17}, addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    .line 573
    const/4 v4, -0x1

    goto/16 :goto_17

    .line 576
    :cond_195
    const-string/jumbo v4, "selinux.reload_policy"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const/4 v4, 0x0

    goto/16 :goto_17

    .line 578
    .end local v7    # "newPkgName":Ljava/lang/String;
    .end local v8    # "argSeinfo":Ljava/lang/String;
    .end local v9    # "argDomain":Ljava/lang/String;
    .end local v10    # "argDataType":Ljava/lang/String;
    :cond_1a0
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "removeAppFromContainer, "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " seinfo is null"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c3
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_1c3} :catch_1c6

    .line 579
    const/4 v4, -0x1

    goto/16 :goto_17

    .line 581
    .end local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v27    # "pid":I
    .end local v30    # "uid":I
    .end local v31    # "userId":I
    :catch_1c6
    move-exception v24

    .line 582
    .local v24, "e":Ljava/lang/Exception;
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "leave removeAppFromContainer "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const/4 v4, -0x1

    goto/16 :goto_17
.end method

.method public removeSEContainer(III)I
    .registers 12
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "containerID"    # I

    .prologue
    const/4 v3, -0x1

    .line 175
    new-instance v1, Ljava/io/File;

    sget-object v4, IRM_MAC_PERM:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v1, "macPermFile":Ljava/io/File;
    invoke-virtual {p0}, getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v0

    .line 178
    .local v0, "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v0, :cond_19

    .line 179
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string/jumbo v6, "irmMDMID is null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_18
    return v3

    .line 189
    :cond_19
    const/16 v4, 0x2be

    if-ne p3, v4, :cond_67

    .line 193
    const/4 v4, 0x7

    invoke-virtual {p0, p3, v4}, getPackageNamesFromSEContainer(II)[Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "packageNames":[Ljava/lang/String;
    if-eqz v2, :cond_27

    array-length v4, v2

    if-nez v4, :cond_5b

    .line 198
    :cond_27
    iget-object v4, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, p3}, Lcom/android/server/pm/PackageManagerService;->removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_50

    .line 202
    iget-object v4, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x9

    invoke-static {v1, v4, v5, v6, v7}, removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 203
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string/jumbo v6, "removeEntryFromMac failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 209
    :cond_4e
    const/4 v3, 0x0

    goto :goto_18

    .line 212
    :cond_50
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string/jumbo v6, "remove IRM Container ID Failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 215
    :cond_5b
    sget-object v3, mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "IRMContainer"

    const-string v5, "CONTAINER not empty"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/16 v3, -0xb

    goto :goto_18

    .line 222
    .end local v2    # "packageNames":[Ljava/lang/String;
    :cond_67
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string/jumbo v6, "removeSEContainer, POLICY_FAILED is returned"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method
