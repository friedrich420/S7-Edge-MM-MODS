.class public Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;
.super Landroid/app/enterprise/IBluetoothSecureModePolicy$Stub;
.source "BluetoothSecureModePolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "BTSecureModePolicyService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mSecureManager:Landroid/bluetooth/BluetoothSecureManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/enterprise/IBluetoothSecureModePolicy$Stub;-><init>()V

    .line 54
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 57
    return-void
.end method

.method private enforceOwnerOnlyBluetoothSecureModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 82
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_BLUETOOTH_SECUREMODE"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 61
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 64
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getInstance()Landroid/bluetooth/BluetoothSecureManager;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    if-nez v0, :cond_a

    .line 72
    invoke-static {}, Landroid/bluetooth/BluetoothSecureManager;->getInstant()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v0

    iput-object v0, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    .line 74
    :cond_a
    iget-object v0, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    return-object v0
.end method

.method private shouldAllowDisableSecureMode(I)Z
    .registers 10
    .param p1, "adminUid"    # I

    .prologue
    .line 566
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidList()Ljava/util/ArrayList;

    move-result-object v1

    .line 567
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 569
    .local v0, "adminId":Ljava/lang/Long;
    const/4 v3, 0x0

    .line 570
    .local v3, "isSecureModeSettingEnabled":Z
    :try_start_17
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v5

    const-string v6, "BluetoothSecureModeTable"

    const-string v7, "BluetoothSecureModeEnabled"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 575
    if-eqz v3, :cond_a

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2a} :catch_31

    move-result v4

    if-ne p1, v4, :cond_a

    .line 576
    const/4 v4, 0x1

    .line 581
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v3    # "isSecureModeSettingEnabled":Z
    :goto_2e
    return v4

    :cond_2f
    const/4 v4, 0x0

    goto :goto_2e

    .line 577
    .restart local v0    # "adminId":Ljava/lang/Long;
    .restart local v3    # "isSecureModeSettingEnabled":Z
    :catch_31
    move-exception v4

    goto :goto_a
.end method

.method private shouldAllowEnableSecureMode()Z
    .registers 9

    .prologue
    .line 547
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidList()Ljava/util/ArrayList;

    move-result-object v1

    .line 548
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 550
    .local v0, "adminId":Ljava/lang/Long;
    const/4 v3, 0x0

    .line 551
    .local v3, "isSecureModeSettingEnabled":Z
    :try_start_17
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v5

    const-string v6, "BluetoothSecureModeTable"

    const-string v7, "BluetoothSecureModeEnabled"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_24} :catch_2b

    move-result v3

    .line 556
    if-eqz v3, :cond_a

    .line 557
    const/4 v4, 0x0

    .line 562
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v3    # "isSecureModeSettingEnabled":Z
    :goto_28
    return v4

    :cond_29
    const/4 v4, 0x1

    goto :goto_28

    .line 558
    .restart local v0    # "adminId":Ljava/lang/Long;
    .restart local v3    # "isSecureModeSettingEnabled":Z
    :catch_2b
    move-exception v4

    goto :goto_a
.end method

.method private validateBluetoothWhiteListConfig(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 528
    .local p1, "btList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;>;"
    const/4 v2, 0x0

    .line 530
    .local v2, "ret":Z
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 531
    :cond_9
    const-string v3, "BTSecureModePolicyService"

    const-string v4, "Bluetooth securemode whitelist is null or empty"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .end local v2    # "ret":Z
    :goto_10
    return v2

    .line 535
    .restart local v2    # "ret":Z
    :cond_11
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3a

    .line 536
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;

    .line 537
    .local v0, "btConfig":Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;
    iget-object v3, v0, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;->name:Ljava/lang/String;

    if-eqz v3, :cond_2f

    iget v3, v0, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;->cod:I

    if-ltz v3, :cond_2f

    iget-object v3, v0, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;->uuids:[Ljava/lang/String;

    if-eqz v3, :cond_2f

    iget-object v3, v0, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;->uuids:[Ljava/lang/String;

    array-length v3, v3

    if-gtz v3, :cond_37

    .line 538
    :cond_2f
    const-string v3, "BTSecureModePolicyService"

    const-string v4, "Bluetooth securemode whitelist values are invalid"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 535
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 543
    .end local v0    # "btConfig":Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;
    :cond_3a
    const/4 v2, 0x1

    goto :goto_10
.end method


# virtual methods
.method public addBluetoothDevicesToWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 419
    .local p2, "whiteListConfig":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;>;"
    const/4 v6, 0x1

    .line 420
    .local v6, "ret":Z
    invoke-direct {p0, p1}, enforceOwnerOnlyBluetoothSecureModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 422
    invoke-direct {p0, p2}, validateBluetoothWhiteListConfig(Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 423
    const/4 v10, 0x0

    .line 456
    :goto_c
    return v10

    .line 425
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 426
    .local v8, "token":J
    invoke-direct {p0}, getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v10

    if-eqz v10, :cond_5a

    .line 429
    if-eqz p2, :cond_57

    .line 430
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    :try_start_1a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_57

    .line 431
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;

    .line 432
    .local v2, "deviceInfo":Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;
    iget-object v5, v2, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;->name:Ljava/lang/String;

    .line 433
    .local v5, "name":Ljava/lang/String;
    iget v1, v2, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;->cod:I

    .line 434
    .local v1, "cod":I
    iget-object v7, v2, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;->uuids:[Ljava/lang/String;

    .line 435
    .local v7, "uuids":[Ljava/lang/String;
    iget-object v10, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v10, v5, v1, v7}, Landroid/bluetooth/BluetoothSecureManager;->addWhiteList(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v6

    .line 436
    if-nez v6, :cond_60

    .line 437
    const-string v10, "BTSecureModePolicyService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addBluetoothDevicesToWhiteList failed: name:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "cod: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_56} :catch_63
    .catchall {:try_start_1a .. :try_end_56} :catchall_70

    .line 438
    const/4 v6, 0x0

    .line 448
    .end local v1    # "cod":I
    .end local v2    # "deviceInfo":Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;
    .end local v4    # "i":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "uuids":[Ljava/lang/String;
    :cond_57
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 452
    :cond_5a
    :goto_5a
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .local v0, "ba":Landroid/bluetooth/BluetoothAdapter;
    move v10, v6

    .line 456
    goto :goto_c

    .line 430
    .end local v0    # "ba":Landroid/bluetooth/BluetoothAdapter;
    .restart local v1    # "cod":I
    .restart local v2    # "deviceInfo":Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;
    .restart local v4    # "i":I
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v7    # "uuids":[Ljava/lang/String;
    :cond_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 444
    .end local v1    # "cod":I
    .end local v2    # "deviceInfo":Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "uuids":[Ljava/lang/String;
    :catch_63
    move-exception v3

    .line 445
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_64
    const-string v10, "BTSecureModePolicyService"

    const-string v11, "Failed talking to BT Secure Manager "

    invoke-static {v10, v11, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_70

    .line 446
    const/4 v6, 0x0

    .line 448
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5a

    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_70
    move-exception v10

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method public disableSecureMode(Landroid/app/enterprise/ContextInfo;)Z
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 194
    const/4 v8, 0x0

    .line 195
    .local v8, "res":Z
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyBluetoothSecureModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 196
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 197
    .local v2, "adminUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 198
    .local v10, "token":J
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 199
    .local v9, "userId":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 200
    .local v4, "containerId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, shouldAllowDisableSecureMode(I)Z

    move-result v6

    .line 202
    .local v6, "isDisableSecureModeAllowed":Z
    invoke-direct/range {p0 .. p0}, getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v13

    if-eqz v13, :cond_f4

    if-eqz v6, :cond_f4

    .line 205
    :try_start_23
    move-object/from16 v0, p0

    iget-object v13, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "BluetoothSecureModeTable"

    const-string v15, "BluetoothSecureModeEnabled"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 210
    move-object/from16 v0, p0

    iget-object v13, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v14, "scan_mode"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 212
    move-object/from16 v0, p0

    iget-object v13, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v14, "pairing_mode"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 214
    move-object/from16 v0, p0

    iget-object v13, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v14, "hfp_enable"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 216
    move-object/from16 v0, p0

    iget-object v13, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v14, "a2dp_enable"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 218
    move-object/from16 v0, p0

    iget-object v13, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v14, "hid_enable"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 220
    move-object/from16 v0, p0

    iget-object v13, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v14, "hdp_enable"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 222
    move-object/from16 v0, p0

    iget-object v13, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v14, "pan_enable"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 224
    move-object/from16 v0, p0

    iget-object v13, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v14, "opp_enable"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 226
    move-object/from16 v0, p0

    iget-object v13, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v14, "pbap_enable"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 228
    move-object/from16 v0, p0

    iget-object v13, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v14, "gatt_enable"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 230
    move-object/from16 v0, p0

    iget-object v13, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v14, "map_enable"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 232
    move-object/from16 v0, p0

    iget-object v13, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v14, "ftp_enable"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 234
    move-object/from16 v0, p0

    iget-object v13, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v14, "sap_enable"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 236
    move-object/from16 v0, p0

    iget-object v13, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/bluetooth/BluetoothSecureManager;->enableWhiteList(Z)Z

    .line 239
    move-object/from16 v0, p0

    iget-object v13, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/bluetooth/BluetoothSecureManager;->enableWhiteList(Z)Z

    .line 241
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v12, "whitelistDevices":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;>;"
    invoke-virtual/range {p0 .. p1}, getBluetoothDevicesFromWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v12

    .line 245
    if-eqz v12, :cond_e8

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_e8

    .line 246
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, removeBluetoothDevicesFromWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    .line 248
    :cond_e8
    move-object/from16 v0, p0

    iget-object v13, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/bluetooth/BluetoothSecureManager;->enableSecureMode(Z)Z
    :try_end_f0
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_f0} :catch_101
    .catchall {:try_start_23 .. :try_end_f0} :catchall_127

    move-result v8

    .line 261
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 265
    .end local v12    # "whitelistDevices":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;>;"
    :cond_f4
    :goto_f4
    const-string v13, "BTSecureModePolicyService"

    const-string/jumbo v14, "disableSecureMode BT shutdown"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 271
    .local v3, "ba":Landroid/bluetooth/BluetoothAdapter;
    return v8

    .line 251
    .end local v3    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :catch_101
    move-exception v7

    .line 252
    .local v7, "re":Landroid/os/RemoteException;
    :try_start_102
    const-string v13, "BTSecureModePolicyService"

    const-string v14, "Failed talking to BT Secure Manager "

    invoke-static {v13, v14, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_109
    .catchall {:try_start_102 .. :try_end_109} :catchall_127

    .line 254
    :try_start_109
    move-object/from16 v0, p0

    iget-object v13, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "BluetoothSecureModeTable"

    const-string v15, "BluetoothSecureModeEnabled"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_118} :catch_11c
    .catchall {:try_start_109 .. :try_end_118} :catchall_127

    .line 261
    :goto_118
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_f4

    .line 257
    :catch_11c
    move-exception v5

    .line 258
    .local v5, "e":Ljava/lang/Exception;
    :try_start_11d
    const-string v13, "BTSecureModePolicyService"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_126
    .catchall {:try_start_11d .. :try_end_126} :catchall_127

    goto :goto_118

    .line 261
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "re":Landroid/os/RemoteException;
    :catchall_127
    move-exception v13

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13
.end method

.method public enableDeviceWhiteList(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 351
    const/4 v2, 0x0

    .line 352
    .local v2, "res":Z
    invoke-direct {p0, p1}, enforceOwnerOnlyBluetoothSecureModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 353
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 356
    .local v4, "token":J
    :try_start_9
    invoke-direct {p0}, getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 357
    iget-object v3, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v3, p2}, Landroid/bluetooth/BluetoothSecureManager;->enableWhiteList(Z)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_1d
    .catchall {:try_start_9 .. :try_end_14} :catchall_29

    move-result v2

    .line 363
    :cond_15
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 365
    :goto_18
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 369
    .local v0, "ba":Landroid/bluetooth/BluetoothAdapter;
    return v2

    .line 360
    .end local v0    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :catch_1d
    move-exception v1

    .line 361
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1e
    const-string v3, "BTSecureModePolicyService"

    const-string v6, "Failed talking to BT Secure Manager "

    invoke-static {v3, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_29

    .line 363
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_18

    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_29
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public enableSecureMode(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/BluetoothSecureModeConfig;Ljava/util/List;)Z
    .registers 26
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "configObj"    # Landroid/app/enterprise/BluetoothSecureModeConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Landroid/app/enterprise/BluetoothSecureModeConfig;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 91
    .local p3, "whiteList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;>;"
    const/4 v13, 0x0

    .line 92
    .local v13, "res":Z
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyBluetoothSecureModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 93
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 94
    .local v4, "adminUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 95
    .local v14, "token":J
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v16

    .line 96
    .local v16, "userId":I
    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 97
    .local v7, "containerId":I
    invoke-direct/range {p0 .. p0}, shouldAllowEnableSecureMode()Z

    move-result v10

    .line 99
    .local v10, "isEnableSecureModeAllowed":Z
    const-string v18, "BTSecureModePolicyService"

    const-string/jumbo v19, "enableSecureMode"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct/range {p0 .. p0}, getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v18

    if-eqz v18, :cond_252

    if-eqz v10, :cond_252

    .line 103
    if-eqz p3, :cond_88

    :try_start_2b
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_88

    .line 104
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, validateBluetoothWhiteListConfig(Ljava/util/List;)Z
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_38} :catch_28c
    .catchall {:try_start_2b .. :try_end_38} :catchall_2be

    move-result v18

    if-nez v18, :cond_41

    .line 105
    const/16 v18, 0x0

    .line 180
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 187
    :goto_40
    return v18

    .line 107
    :cond_41
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_42
    :try_start_42
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_88

    .line 108
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_85

    .line 109
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;

    move-object/from16 v0, v18

    iget-object v11, v0, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;->name:Ljava/lang/String;

    .line 110
    .local v11, "name":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;

    move-object/from16 v0, v18

    iget v6, v0, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;->cod:I

    .line 111
    .local v6, "cod":I
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;->uuids:[Ljava/lang/String;

    move-object/from16 v17, v0

    .line 112
    .local v17, "uuids":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v6, v1}, Landroid/bluetooth/BluetoothSecureManager;->addWhiteList(Ljava/lang/String;I[Ljava/lang/String;)Z

    .line 107
    .end local v6    # "cod":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v17    # "uuids":[Ljava/lang/String;
    :cond_85
    add-int/lit8 v9, v9, 0x1

    goto :goto_42

    .line 117
    .end local v9    # "i":I
    :cond_88
    if-eqz p2, :cond_24f

    .line 118
    const-string v18, "BTSecureModePolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "configObj.whitelistEnable = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->whitelistEnable:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->whitelistEnable:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c1

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/bluetooth/BluetoothSecureManager;->enableWhiteList(Z)Z

    .line 122
    :cond_c1
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    const-string v19, "BluetoothSecureModeTable"

    const-string v20, "BluetoothSecureModeEnabled"

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    move-object/from16 v19, v0

    const-string/jumbo v20, "scan_mode"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->scanMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_25a

    const/16 v18, 0x1

    :goto_eb
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    move-object/from16 v19, v0

    const-string/jumbo v20, "pairing_mode"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->pairingMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_25e

    const/16 v18, 0x1

    :goto_107
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    move-object/from16 v19, v0

    const-string/jumbo v20, "hfp_enable"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->hfpEnable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_262

    const/16 v18, 0x1

    :goto_123
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    move-object/from16 v19, v0

    const-string v20, "a2dp_enable"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->a2dpEnable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_266

    const/16 v18, 0x1

    :goto_13e
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    move-object/from16 v19, v0

    const-string/jumbo v20, "hid_enable"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->hidEnable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_26a

    const/16 v18, 0x1

    :goto_15a
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    move-object/from16 v19, v0

    const-string/jumbo v20, "hdp_enable"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->hdpEnable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_26e

    const/16 v18, 0x1

    :goto_176
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    move-object/from16 v19, v0

    const-string/jumbo v20, "pan_enable"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->panEnable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_272

    const/16 v18, 0x1

    :goto_192
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    move-object/from16 v19, v0

    const-string/jumbo v20, "opp_enable"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->oppEnable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_276

    const/16 v18, 0x1

    :goto_1ae
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    move-object/from16 v19, v0

    const-string/jumbo v20, "pbap_enable"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->pbapEnable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_27a

    const/16 v18, 0x1

    :goto_1ca
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    move-object/from16 v19, v0

    const-string/jumbo v20, "gatt_enable"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->gattEnable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_27e

    const/16 v18, 0x1

    :goto_1e6
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    move-object/from16 v19, v0

    const-string/jumbo v20, "map_enable"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->mapEnable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_282

    const/16 v18, 0x1

    :goto_202
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    move-object/from16 v19, v0

    const-string/jumbo v20, "ftp_enable"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->ftpEnable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_286

    const/16 v18, 0x1

    :goto_21e
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    move-object/from16 v19, v0

    const-string/jumbo v20, "sap_enable"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->sapEnable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_289

    const/16 v18, 0x1

    :goto_23a
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/bluetooth/BluetoothSecureManager;->enableSecureMode(Z)Z
    :try_end_24e
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_24e} :catch_28c
    .catchall {:try_start_42 .. :try_end_24e} :catchall_2be

    move-result v13

    .line 180
    :cond_24f
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 183
    :cond_252
    :goto_252
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    .local v5, "ba":Landroid/bluetooth/BluetoothAdapter;
    move/from16 v18, v13

    .line 187
    goto/16 :goto_40

    .line 126
    .end local v5    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_25a
    const/16 v18, 0x0

    goto/16 :goto_eb

    .line 129
    :cond_25e
    const/16 v18, 0x0

    goto/16 :goto_107

    .line 132
    :cond_262
    const/16 v18, 0x0

    goto/16 :goto_123

    .line 135
    :cond_266
    const/16 v18, 0x0

    goto/16 :goto_13e

    .line 138
    :cond_26a
    const/16 v18, 0x0

    goto/16 :goto_15a

    .line 141
    :cond_26e
    const/16 v18, 0x0

    goto/16 :goto_176

    .line 144
    :cond_272
    const/16 v18, 0x0

    goto/16 :goto_192

    .line 147
    :cond_276
    const/16 v18, 0x0

    goto/16 :goto_1ae

    .line 150
    :cond_27a
    const/16 v18, 0x0

    goto/16 :goto_1ca

    .line 153
    :cond_27e
    const/16 v18, 0x0

    goto/16 :goto_1e6

    .line 156
    :cond_282
    const/16 v18, 0x0

    goto/16 :goto_202

    .line 159
    :cond_286
    const/16 v18, 0x0

    goto :goto_21e

    .line 162
    :cond_289
    const/16 v18, 0x0

    goto :goto_23a

    .line 170
    :catch_28c
    move-exception v12

    .line 171
    .local v12, "re":Landroid/os/RemoteException;
    :try_start_28d
    const-string v18, "BTSecureModePolicyService"

    const-string v19, "Failed talking to BT Secure Manager "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v12}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_298
    .catchall {:try_start_28d .. :try_end_298} :catchall_2be

    .line 173
    :try_start_298
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    const-string v19, "BluetoothSecureModeTable"

    const-string v20, "BluetoothSecureModeEnabled"

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_2af
    .catch Ljava/lang/Exception; {:try_start_298 .. :try_end_2af} :catch_2b3
    .catchall {:try_start_298 .. :try_end_2af} :catchall_2be

    .line 180
    :goto_2af
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_252

    .line 176
    :catch_2b3
    move-exception v8

    .line 177
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2b4
    const-string v18, "BTSecureModePolicyService"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2bd
    .catchall {:try_start_2b4 .. :try_end_2bd} :catchall_2be

    goto :goto_2af

    .line 180
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v12    # "re":Landroid/os/RemoteException;
    :catchall_2be
    move-exception v18

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v18
.end method

.method public getBluetoothDevicesFromWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    :try_start_0
    invoke-direct {p0}, getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v7

    if-eqz v7, :cond_41

    .line 393
    iget-object v7, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothSecureManager;->getWhiteListFirstIndex()I

    move-result v2

    .line 394
    .local v2, "index":I
    const/4 v6, 0x0

    .line 395
    .local v6, "whiteListSize":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v5, "whiteListDevices":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;>;"
    :goto_12
    if-ltz v2, :cond_42

    .line 397
    iget-object v7, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v7, v2}, Landroid/bluetooth/BluetoothSecureManager;->getWhiteListName(I)Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "name":Ljava/lang/String;
    iget-object v7, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v7, v2}, Landroid/bluetooth/BluetoothSecureManager;->getWhiteListCod(I)I

    move-result v0

    .line 399
    .local v0, "cod":I
    iget-object v7, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v7, v2}, Landroid/bluetooth/BluetoothSecureManager;->getWhiteListUuids(I)[Ljava/lang/String;

    move-result-object v4

    .line 400
    .local v4, "uuids":[Ljava/lang/String;
    new-instance v7, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;

    invoke-direct {v7, v3, v0, v4}, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    add-int/lit8 v6, v6, 0x1

    .line 402
    iget-object v7, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v7, v2}, Landroid/bluetooth/BluetoothSecureManager;->getWhiteListNextIndex(I)I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_35} :catch_37

    move-result v2

    .line 403
    goto :goto_12

    .line 407
    .end local v0    # "cod":I
    .end local v2    # "index":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "uuids":[Ljava/lang/String;
    .end local v5    # "whiteListDevices":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;>;"
    .end local v6    # "whiteListSize":I
    :catch_37
    move-exception v1

    .line 408
    .local v1, "e":Landroid/os/RemoteException;
    const-string v7, "BTSecureModePolicyService"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_41
    const/4 v5, 0x0

    :cond_42
    return-object v5
.end method

.method public getSecureModeConfiguration(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/BluetoothSecureModeConfig;
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 279
    new-instance v0, Landroid/app/enterprise/BluetoothSecureModeConfig;

    invoke-direct {v0}, Landroid/app/enterprise/BluetoothSecureModeConfig;-><init>()V

    .line 281
    .local v0, "currentConfig":Landroid/app/enterprise/BluetoothSecureModeConfig;
    invoke-direct {p0}, getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v4

    if-eqz v4, :cond_f6

    .line 283
    :try_start_d
    iget-object v4, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v5, "scan_mode"

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_cd

    move v4, v2

    :goto_19
    iput-boolean v4, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->scanMode:Z

    .line 286
    iget-object v4, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v5, "pairing_mode"

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_d0

    move v4, v2

    :goto_27
    iput-boolean v4, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->pairingMode:Z

    .line 289
    iget-object v4, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v5, "hfp_enable"

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_d3

    move v4, v2

    :goto_35
    iput-boolean v4, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->hfpEnable:Z

    .line 292
    iget-object v4, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v5, "a2dp_enable"

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_d6

    move v4, v2

    :goto_42
    iput-boolean v4, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->a2dpEnable:Z

    .line 295
    iget-object v4, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v5, "hid_enable"

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_d9

    move v4, v2

    :goto_50
    iput-boolean v4, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->hidEnable:Z

    .line 298
    iget-object v4, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v5, "hdp_enable"

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_dc

    move v4, v2

    :goto_5e
    iput-boolean v4, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->hdpEnable:Z

    .line 301
    iget-object v4, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v5, "pan_enable"

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_de

    move v4, v2

    :goto_6c
    iput-boolean v4, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->panEnable:Z

    .line 304
    iget-object v4, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v5, "opp_enable"

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_e0

    move v4, v2

    :goto_7a
    iput-boolean v4, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->oppEnable:Z

    .line 307
    iget-object v4, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v5, "pbap_enable"

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_e2

    move v4, v2

    :goto_88
    iput-boolean v4, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->pbapEnable:Z

    .line 310
    iget-object v4, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v5, "gatt_enable"

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_e4

    move v4, v2

    :goto_96
    iput-boolean v4, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->gattEnable:Z

    .line 313
    iget-object v4, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v5, "map_enable"

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_e6

    move v4, v2

    :goto_a4
    iput-boolean v4, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->mapEnable:Z

    .line 316
    iget-object v4, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v5, "ftp_enable"

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_e8

    move v4, v2

    :goto_b2
    iput-boolean v4, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->ftpEnable:Z

    .line 319
    iget-object v4, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v5, "sap_enable"

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_ea

    move v4, v2

    :goto_c0
    iput-boolean v4, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->sapEnable:Z

    .line 322
    iget-object v4, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothSecureManager;->isWhiteListEnabled()Z

    move-result v4

    if-ne v4, v2, :cond_ec

    :goto_ca
    iput-boolean v2, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->whitelistEnable:Z
    :try_end_cc
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_cc} :catch_ee

    .line 330
    .end local v0    # "currentConfig":Landroid/app/enterprise/BluetoothSecureModeConfig;
    :goto_cc
    return-object v0

    .restart local v0    # "currentConfig":Landroid/app/enterprise/BluetoothSecureModeConfig;
    :cond_cd
    move v4, v3

    .line 283
    goto/16 :goto_19

    :cond_d0
    move v4, v3

    .line 286
    goto/16 :goto_27

    :cond_d3
    move v4, v3

    .line 289
    goto/16 :goto_35

    :cond_d6
    move v4, v3

    .line 292
    goto/16 :goto_42

    :cond_d9
    move v4, v3

    .line 295
    goto/16 :goto_50

    :cond_dc
    move v4, v3

    .line 298
    goto :goto_5e

    :cond_de
    move v4, v3

    .line 301
    goto :goto_6c

    :cond_e0
    move v4, v3

    .line 304
    goto :goto_7a

    :cond_e2
    move v4, v3

    .line 307
    goto :goto_88

    :cond_e4
    move v4, v3

    .line 310
    goto :goto_96

    :cond_e6
    move v4, v3

    .line 313
    goto :goto_a4

    :cond_e8
    move v4, v3

    .line 316
    goto :goto_b2

    :cond_ea
    move v4, v3

    .line 319
    goto :goto_c0

    :cond_ec
    move v2, v3

    .line 322
    goto :goto_ca

    .line 326
    :catch_ee
    move-exception v1

    .line 327
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BTSecureModePolicyService"

    const-string v3, "Failed talking to BT Secure Manager "

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_f6
    const/4 v0, 0x0

    goto :goto_cc
.end method

.method public isDeviceWhiteListEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 377
    :try_start_0
    invoke-direct {p0}, getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 378
    iget-object v1, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSecureManager;->isWhiteListEnabled()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 383
    :goto_c
    return v1

    .line 380
    :catch_d
    move-exception v0

    .line 381
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BTSecureModePolicyService"

    const-string v2, "Failed talking to BT Secure Manager "

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 383
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public isSecureModeEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 337
    invoke-direct {p0}, getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 339
    :try_start_6
    iget-object v1, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSecureManager;->isSecureModeEnabled()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 344
    :goto_c
    return v1

    .line 340
    :catch_d
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BTSecureModePolicyService"

    const-string v2, "Failed talking to BT Secure Manager "

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 344
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 509
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 525
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 513
    iget-object v1, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    if-eqz v1, :cond_12

    .line 515
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 516
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-virtual {p0, v0}, isSecureModeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 517
    invoke-virtual {p0, v0}, disableSecureMode(Landroid/app/enterprise/ContextInfo;)Z

    .line 520
    .end local v0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_12
    return-void
.end method

.method public removeBluetoothDevicesFromWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 464
    .local p2, "whiteListConfig":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;>;"
    const/4 v6, 0x1

    .line 465
    .local v6, "ret":Z
    invoke-direct {p0, p1}, enforceOwnerOnlyBluetoothSecureModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 467
    invoke-direct {p0, p2}, validateBluetoothWhiteListConfig(Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 468
    const/4 v7, 0x0

    .line 498
    :goto_c
    return v7

    .line 470
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 471
    .local v8, "token":J
    invoke-direct {p0}, getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v7

    if-eqz v7, :cond_59

    .line 474
    if-eqz p2, :cond_56

    .line 475
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    :try_start_1a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_56

    .line 476
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;

    .line 477
    .local v2, "deviceInfo":Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;
    iget-object v5, v2, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;->name:Ljava/lang/String;

    .line 478
    .local v5, "name":Ljava/lang/String;
    iget v1, v2, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;->cod:I

    .line 479
    .local v1, "cod":I
    iget-object v7, p0, mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v7, v5, v1}, Landroid/bluetooth/BluetoothSecureManager;->removeWhiteList(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_5f

    .line 480
    const-string v7, "BTSecureModePolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "removeWhiteList failed: name:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "cod: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_55} :catch_62
    .catchall {:try_start_1a .. :try_end_55} :catchall_6f

    .line 481
    const/4 v6, 0x0

    .line 491
    .end local v1    # "cod":I
    .end local v2    # "deviceInfo":Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;
    .end local v4    # "i":I
    .end local v5    # "name":Ljava/lang/String;
    :cond_56
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 494
    :cond_59
    :goto_59
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .local v0, "ba":Landroid/bluetooth/BluetoothAdapter;
    move v7, v6

    .line 498
    goto :goto_c

    .line 475
    .end local v0    # "ba":Landroid/bluetooth/BluetoothAdapter;
    .restart local v1    # "cod":I
    .restart local v2    # "deviceInfo":Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;
    .restart local v4    # "i":I
    .restart local v5    # "name":Ljava/lang/String;
    :cond_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 487
    .end local v1    # "cod":I
    .end local v2    # "deviceInfo":Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;
    .end local v5    # "name":Ljava/lang/String;
    :catch_62
    move-exception v3

    .line 488
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_63
    const-string v7, "BTSecureModePolicyService"

    const-string v10, "Failed talking to BT Secure Manager"

    invoke-static {v7, v10, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_6f

    .line 489
    const/4 v6, 0x0

    .line 491
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_59

    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_6f
    move-exception v7

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 504
    return-void
.end method
