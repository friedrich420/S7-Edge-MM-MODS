.class public Landroid/sec/enterprise/BluetoothUtils;
.super Ljava/lang/Object;
.source "BluetoothUtils.java"


# static fields
.field public static final NO_PROFILE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothUtils"

.field static final TYPE_L2CAP:I = 0x3

.field static final TYPE_RFCOMM:I = 0x1

.field static final TYPE_SCO:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .registers 11
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "profile"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/16 v7, 0xa

    .line 444
    const-string v2, ""

    .line 445
    .local v2, "localName":Ljava/lang/String;
    const-string v1, ""

    .line 446
    .local v1, "localAddress":Ljava/lang/String;
    const-string v5, ""

    .line 447
    .local v5, "remoteName":Ljava/lang/String;
    const-string v4, ""

    .line 448
    .local v4, "remoteAddress":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 449
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_18

    .line 450
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    .line 451
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 453
    :cond_18
    if-eqz p2, :cond_22

    .line 454
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    .line 455
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 458
    :cond_22
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 459
    .local v3, "logMsg":Ljava/lang/StringBuilder;
    const/4 v6, -0x1

    if-eq p1, v6, :cond_33

    .line 460
    invoke-static {p1}, convertBluetoothProfile(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    :cond_33
    if-eqz v4, :cond_46

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_46

    .line 463
    const-string v6, "Remote Address: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 467
    :cond_46
    if-eqz v4, :cond_59

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_59

    .line 468
    const-string v6, "Remote Name: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    :cond_59
    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6c

    .line 473
    const-string v6, "Local Address: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 477
    :cond_6c
    if-eqz v1, :cond_7f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7f

    .line 478
    const-string v6, "Local Name: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 483
    :cond_7f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method public static bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 371
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v1

    .line 373
    .local v1, "service":Landroid/sec/enterprise/BluetoothPolicy;
    invoke-virtual {v1, p0, p1}, Landroid/sec/enterprise/BluetoothPolicy;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 377
    .end local v1    # "service":Landroid/sec/enterprise/BluetoothPolicy;
    :goto_b
    return-void

    .line 374
    :catch_c
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothUtils"

    const-string v3, "Exception on blutoothLog"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public static bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "remoteName"    # Ljava/lang/String;
    .param p2, "remoteAddress"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xa

    .line 404
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 405
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .local v1, "logMsg":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_2b

    .line 407
    const-string v2, "Local Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 410
    const-string v2, "Local Address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 414
    :cond_2b
    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3e

    .line 415
    const-string v2, "Remote Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    :cond_3e
    if-eqz p2, :cond_51

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_51

    .line 420
    const-string v2, "Remote Address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 424
    :cond_51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public static bluetoothSocketLog(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;II)V
    .registers 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "aPortNum"    # I
    .param p3, "aPortType"    # I

    .prologue
    .line 380
    if-nez p1, :cond_3

    .line 401
    :goto_2
    return-void

    .line 386
    :cond_3
    packed-switch p3, :pswitch_data_6e

    goto :goto_2

    .line 388
    :pswitch_7
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RFCOMM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_25} :catch_26

    goto :goto_2

    .line 398
    :catch_26
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothUtils"

    const-string v2, "Exception on bluetoothLogSocket"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 391
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2f
    :try_start_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 394
    :pswitch_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L2CAP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_6c} :catch_26

    goto :goto_2

    .line 386
    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_7
        :pswitch_2f
        :pswitch_4e
    .end packed-switch
.end method

.method private static convertBluetoothProfile(I)Ljava/lang/String;
    .registers 2
    .param p0, "profile"    # I

    .prologue
    .line 487
    packed-switch p0, :pswitch_data_1c

    .line 503
    :pswitch_3
    const-string v0, ""

    :goto_5
    return-object v0

    .line 489
    :pswitch_6
    const-string v0, "Profile: A2DP\n"

    goto :goto_5

    .line 491
    :pswitch_9
    const-string v0, "Profile: Headset and Handsfree\n"

    goto :goto_5

    .line 493
    :pswitch_c
    const-string v0, "Profile: HEALTH\n"

    goto :goto_5

    .line 495
    :pswitch_f
    const-string v0, "Profile: INPUT DEVICE\n"

    goto :goto_5

    .line 497
    :pswitch_12
    const-string v0, "Profile: MAP\n"

    goto :goto_5

    .line 499
    :pswitch_15
    const-string v0, "Profile: PAN\n"

    goto :goto_5

    .line 501
    :pswitch_18
    const-string v0, "Profile: PBAP\n"

    goto :goto_5

    .line 487
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
        :pswitch_c
        :pswitch_f
        :pswitch_15
        :pswitch_18
        :pswitch_3
        :pswitch_3
        :pswitch_12
    .end packed-switch
.end method

.method private static getBluetoothProfileEnabled(Landroid/os/ParcelUuid;)Z
    .registers 3
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 160
    const/4 v0, -0x1

    .line 162
    .local v0, "profile":I
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isSerialPort(Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 163
    const/16 v0, 0x80

    .line 187
    :cond_9
    :goto_9
    const/4 v1, -0x1

    if-eq v0, v1, :cond_70

    .line 188
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v1

    .line 192
    :goto_18
    return v1

    .line 165
    :cond_19
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isPbap(Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 167
    :cond_27
    const/4 v0, 0x4

    goto :goto_9

    .line 169
    :cond_29
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isSap(Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 170
    const/16 v0, 0x100

    goto :goto_9

    .line 172
    :cond_32
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->BasicPrinting:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 173
    const/16 v0, 0x200

    goto :goto_9

    .line 175
    :cond_3d
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isAudioSource(Landroid/os/ParcelUuid;)Z

    move-result v1

    if-nez v1, :cond_49

    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isAdvAudioDist(Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 176
    :cond_49
    const/16 v0, 0x8

    goto :goto_9

    .line 178
    :cond_4c
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 180
    :cond_5c
    const/4 v0, 0x1

    goto :goto_9

    .line 182
    :cond_5e
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 184
    :cond_6e
    const/4 v0, 0x2

    goto :goto_9

    .line 192
    :cond_70
    const/4 v1, 0x1

    goto :goto_18
.end method

.method public static isBluetoothLogEnabled()Z
    .registers 4

    .prologue
    .line 432
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v1

    .line 433
    .local v1, "service":Landroid/sec/enterprise/BluetoothPolicy;
    invoke-virtual {v1}, Landroid/sec/enterprise/BluetoothPolicy;->isBluetoothLogEnabled()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result v2

    .line 436
    :goto_c
    return v2

    .line 434
    :catch_d
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothUtils"

    const-string v3, "Exception on isBluetoothLogEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static isHeadsetAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 230
    if-nez p0, :cond_5

    .line 263
    :cond_4
    :goto_4
    return v1

    .line 234
    :cond_5
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v0

    .line 236
    .local v0, "service":Landroid/sec/enterprise/BluetoothPolicy;
    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 237
    const-string v1, "BluetoothUtils"

    const-string v3, "MDM - SPP Profile is disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 238
    goto :goto_4

    .line 244
    :cond_1e
    invoke-virtual {v0, v1}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 245
    const-string v1, "BluetoothUtils"

    const-string v3, "MDM: HSP profile  is disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 246
    goto :goto_4

    .line 251
    :cond_2d
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 252
    const-string v1, "BluetoothUtils"

    const-string v3, "MDM: HFP profile is disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 253
    goto :goto_4

    .line 256
    :cond_3d
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/sec/enterprise/BluetoothPolicy;->isBluetoothDeviceAllowed(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 257
    const-string v1, "BluetoothUtils"

    const-string v3, "MDM: Remote Device Blocked"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 258
    goto :goto_4
.end method

.method public static isPairingAllowedbySecurityPolicy(Ljava/lang/String;)Z
    .registers 5
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 268
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v0

    .line 270
    .local v0, "service":Landroid/sec/enterprise/BluetoothPolicy;
    invoke-virtual {v0}, Landroid/sec/enterprise/BluetoothPolicy;->isPairingEnabled()Z

    move-result v2

    if-nez v2, :cond_17

    .line 271
    const-string v2, "BluetoothUtils"

    const-string v3, "MDM: Pairing Blocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :goto_16
    return v1

    .line 275
    :cond_17
    invoke-virtual {v0, p0}, Landroid/sec/enterprise/BluetoothPolicy;->isBluetoothDeviceAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 276
    const-string v2, "BluetoothUtils"

    const-string v3, "MDM: Remote Device Blocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 280
    :cond_25
    const/4 v1, 0x1

    goto :goto_16
.end method

.method public static isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;)Z
    .registers 2
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 287
    const/4 v0, 0x1

    invoke-static {p0, v0}, isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;I)Z

    move-result v0

    return v0
.end method

.method public static isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;I)Z
    .registers 14
    .param p0, "uuid"    # Landroid/os/ParcelUuid;
    .param p1, "portType"    # I

    .prologue
    const/4 v11, 0x1

    const/16 v1, 0x80

    const/4 v10, 0x0

    .line 292
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v7

    .line 296
    .local v7, "service":Landroid/sec/enterprise/BluetoothPolicy;
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1e

    invoke-virtual {v7}, Landroid/sec/enterprise/BluetoothPolicy;->isOutgoingCallsAllowed()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 297
    const-string v0, "BluetoothUtils"

    const-string v1, "MDM: Outgoing Call is Disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 365
    :goto_1d
    return v0

    .line 300
    :cond_1e
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isAudioSource(Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isAdvAudioDist(Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_2a
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {v7, v1}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v0

    if-nez v0, :cond_41

    .line 303
    :cond_38
    const-string v0, "BluetoothUtils"

    const-string v1, "MDM: SPP or A2DP profile is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 304
    goto :goto_1d

    .line 306
    :cond_41
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isAvrcpTarget(Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isAvrcpController(Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_64

    :cond_4d
    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-virtual {v7, v1}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v0

    if-nez v0, :cond_64

    .line 309
    :cond_5b
    const-string v0, "BluetoothUtils"

    const-string v1, "MDM: AVRCP profile is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 310
    goto :goto_1d

    .line 313
    :cond_64
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-virtual {v7, v11}, Landroid/sec/enterprise/BluetoothPolicy;->getAllowBluetoothDataTransfer(Z)Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-virtual {v7, v1}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v0

    if-nez v0, :cond_a3

    .line 316
    :cond_78
    const-string v0, "BluetoothUtils"

    const-string v1, "MDM: OPP profile is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 320
    .local v8, "token":J
    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x0

    :try_start_86
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BluetoothUtils"

    const-string v5, "Exchanging data via bluetooth failed - restricted."

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_99
    .catchall {:try_start_86 .. :try_end_99} :catchall_9e

    .line 326
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v0, v10

    .line 329
    goto :goto_1d

    .line 326
    :catchall_9e
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 332
    .end local v8    # "token":J
    :cond_a3
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isMap(Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_b9

    invoke-virtual {v7, v1}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v0

    if-nez v0, :cond_b9

    .line 334
    const-string v0, "BluetoothUtils"

    const-string v1, "MDM: MAP profile is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 335
    goto/16 :goto_1d

    .line 338
    :cond_b9
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isSap(Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_d7

    const/16 v0, 0x100

    invoke-virtual {v7, v0}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_cd

    invoke-virtual {v7, v1}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v0

    if-nez v0, :cond_d7

    .line 341
    :cond_cd
    const-string v0, "BluetoothUtils"

    const-string v1, "MDM: SAP profile is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 342
    goto/16 :goto_1d

    .line 345
    :cond_d7
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/sec/enterprise/BluetoothPolicy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e7

    invoke-static {p0}, getBluetoothProfileEnabled(Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_10c

    .line 347
    :cond_e7
    const-string v0, "BluetoothUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MDM: profile UUID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 348
    goto/16 :goto_1d

    .line 352
    :cond_10c
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 353
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 355
    .restart local v8    # "token":J
    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x1

    :try_start_11b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BluetoothUtils"

    const-string v5, "Exchanging data via bluetooth succeeded."

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_12e
    .catchall {:try_start_11b .. :try_end_12e} :catchall_134

    .line 361
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v8    # "token":J
    :cond_131
    move v0, v11

    .line 365
    goto/16 :goto_1d

    .line 361
    .restart local v8    # "token":J
    :catchall_134
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public static isSocketAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelUuid;)Z
    .registers 16
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "aPortNum"    # I
    .param p2, "aPortType"    # I
    .param p3, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 90
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v9

    .line 92
    .local v9, "service":Landroid/sec/enterprise/BluetoothPolicy;
    const/4 v0, 0x1

    if-ne v0, p2, :cond_45

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/sec/enterprise/BluetoothPolicy;->getAllowBluetoothDataTransfer(Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0x80

    invoke-virtual {v9, v0}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v0

    if-nez v0, :cond_45

    .line 95
    :cond_1a
    const-string v0, "BluetoothUtils"

    const-string v1, "isSocketAllowedBySecurityPolicy : device requesting for spp, block it"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 99
    .local v10, "token":J
    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x0

    :try_start_28
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BluetoothUtils"

    const-string v5, "Exchanging data via bluetooth failed - restricted."

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_40

    .line 104
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    const/4 v0, 0x0

    .line 155
    .end local v10    # "token":J
    :goto_3f
    return v0

    .line 104
    .restart local v10    # "token":J
    :catchall_40
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 115
    .end local v10    # "token":J
    :cond_45
    if-eqz p3, :cond_7b

    invoke-virtual {p3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/sec/enterprise/BluetoothPolicy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-static {p3}, getBluetoothProfileEnabled(Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 117
    :cond_57
    const-string v0, "BluetoothUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MDM: profile UUID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v0, 0x0

    goto :goto_3f

    .line 121
    :cond_7b
    if-eqz p0, :cond_7f

    if-gez p1, :cond_88

    .line 122
    :cond_7f
    const-string v0, "BluetoothUtils"

    const-string v1, "isSocketAllowedBySecurityPolicy start : device null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x1

    goto :goto_3f

    .line 126
    :cond_88
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v8

    .line 128
    .local v8, "ids":[Landroid/os/ParcelUuid;
    if-nez v8, :cond_90

    .line 129
    const/4 v0, 0x1

    goto :goto_3f

    .line 131
    :cond_90
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_91
    array-length v0, v8

    if-ge v7, v0, :cond_97

    add-int/lit8 v7, v7, 0x1

    goto :goto_91

    .line 142
    :cond_97
    const/4 v0, 0x1

    if-ne v0, p2, :cond_b7

    .line 143
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 145
    .restart local v10    # "token":J
    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x1

    :try_start_a1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BluetoothUtils"

    const-string v5, "Exchanging data via bluetooth succeeded."

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_b4
    .catchall {:try_start_a1 .. :try_end_b4} :catchall_b9

    .line 151
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 155
    .end local v10    # "token":J
    :cond_b7
    const/4 v0, 0x1

    goto :goto_3f

    .line 151
    .restart local v10    # "token":J
    :catchall_b9
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public static isSvcRfComPortNumberBlockedBySecurityPolicy(I)Z
    .registers 13
    .param p0, "aPortNum"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 196
    const/4 v4, 0x0

    .line 199
    .local v4, "ret":Z
    :try_start_3
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v5

    .line 201
    .local v5, "service":Landroid/sec/enterprise/BluetoothPolicy;
    const/16 v9, 0x80

    invoke-virtual {v5, v9}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v9

    if-nez v9, :cond_1c

    .line 202
    const-string v8, "BluetoothUtils"

    const-string v9, "MDM - SPP Profile is disabled"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 226
    .end local v4    # "ret":Z
    .end local v5    # "service":Landroid/sec/enterprise/BluetoothPolicy;
    :cond_1b
    :goto_1b
    return v4

    .line 206
    .restart local v4    # "ret":Z
    .restart local v5    # "service":Landroid/sec/enterprise/BluetoothPolicy;
    :cond_1c
    const/4 v7, 0x2

    new-array v0, v7, [[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "12"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "00001105-0000-1000-8000-00805f9b34fb"

    aput-object v11, v9, v10

    aput-object v9, v0, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "19"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "00001130-0000-1000-8000-00805f9b34fb"

    aput-object v11, v9, v10

    aput-object v9, v0, v7

    .line 213
    .local v0, "RESERVED_RFCOMM_CHANNELS":[[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_40
    array-length v7, v0

    if-ge v2, v7, :cond_1b

    .line 214
    aget-object v7, v0, v2

    const/4 v9, 0x0

    aget-object v3, v7, v9

    .line 215
    .local v3, "port":Ljava/lang/String;
    aget-object v7, v0, v2

    const/4 v9, 0x1

    aget-object v6, v7, v9

    .line 216
    .local v6, "uuid":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, p0, :cond_79

    invoke-virtual {v5, v6}, Landroid/sec/enterprise/BluetoothPolicy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_79

    .line 218
    const-string v7, "BluetoothUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MDM: Profile UUID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Blocked"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_77} :catch_7c

    move v4, v8

    .line 219
    goto :goto_1b

    .line 213
    :cond_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 222
    .end local v0    # "RESERVED_RFCOMM_CHANNELS":[[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "port":Ljava/lang/String;
    .end local v5    # "service":Landroid/sec/enterprise/BluetoothPolicy;
    .end local v6    # "uuid":Ljava/lang/String;
    :catch_7c
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "BluetoothUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method
