.class public Lcom/android/internal/os/BatteryStatsDumper;
.super Ljava/lang/Object;
.source "BatteryStatsDumper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsDumper$1;,
        Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BatteryStatsDumper"

.field public static db:Lcom/android/internal/os/BatteryStatsDBHelper;

.field static mIsOnBattery:Z

.field private static sPrevBatteryLevel:I

.field public static sScreenOn:Z


# instance fields
.field private mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mContext:Landroid/content/Context;

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private final mStatsType:I

.field private pm:Landroid/content/pm/PackageManager;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, mStatsType:I

    .line 57
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 58
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, pm:Landroid/content/pm/PackageManager;

    .line 59
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 60
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 62
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, sensorManager:Landroid/hardware/SensorManager;

    .line 63
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getInstance(Landroid/content/Context;)Lcom/android/internal/os/BatteryStatsDBHelper;

    move-result-object v0

    sput-object v0, db:Lcom/android/internal/os/BatteryStatsDBHelper;

    .line 64
    sget-wide v0, Lcom/android/internal/os/BatteryStatsDBHelper;->sBatteryCapacity:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4a

    .line 65
    iget-object v0, p0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/os/BatteryStatsDBHelper;->sBatteryCapacity:D

    .line 67
    :cond_4a
    return-void
.end method

.method private addScreenUsage(J)D
    .registers 26
    .param p1, "rawRealtime"    # J

    .prologue
    .line 440
    const-wide/16 v10, 0x0

    .line 441
    .local v10, "power":D
    move-object/from16 v0, p0

    iget-object v7, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v18, 0x0

    move-wide/from16 v0, p1

    move/from16 v2, v18

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v16, v18, v20

    .line 442
    .local v16, "screenOnTimeMs":J
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v20, "screen.on"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v10, v10, v18

    .line 443
    move-object/from16 v0, p0

    iget-object v7, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v18, "screen.full"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v14

    .line 446
    .local v14, "screenFullPower":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_38
    const/4 v7, 0x5

    if-ge v6, v7, :cond_64

    .line 447
    int-to-float v7, v6

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v7, v7, v18

    float-to-double v0, v7

    move-wide/from16 v18, v0

    mul-double v18, v18, v14

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    div-double v12, v18, v20

    .line 449
    .local v12, "screenBinPower":D
    move-object/from16 v0, p0

    iget-object v7, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v18, 0x0

    move-wide/from16 v0, p1

    move/from16 v2, v18

    invoke-virtual {v7, v6, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v4, v18, v20

    .line 451
    .local v4, "brightnessTime":J
    long-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v8, v12, v18

    .line 454
    .local v8, "p":D
    add-double/2addr v10, v8

    .line 446
    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    .line 456
    .end local v4    # "brightnessTime":J
    .end local v8    # "p":D
    .end local v12    # "screenBinPower":D
    :cond_64
    const-wide v18, 0x414b774000000000L    # 3600000.0

    div-double v10, v10, v18

    return-wide v10
.end method

.method private getByteFromFile(Ljava/lang/String;)B
    .registers 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 477
    const/4 v1, 0x0

    .line 479
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x8

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_30
    .catchall {:try_start_1 .. :try_end_d} :catchall_3d

    .line 480
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 481
    .local v4, "s":Ljava/lang/String;
    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 482
    if-eqz v4, :cond_18

    .line 483
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 485
    :cond_18
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 486
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_22} :catch_4c
    .catchall {:try_start_e .. :try_end_22} :catchall_49

    move-result v3

    .line 491
    .local v3, "ret":B
    if-eqz v2, :cond_28

    .line 492
    :try_start_25
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_2a

    :cond_28
    move-object v1, v2

    .line 498
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v4    # "s":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :cond_29
    :goto_29
    return v3

    .line 494
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "s":Ljava/lang/String;
    :catch_2a
    move-exception v0

    .line 495
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 497
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_29

    .line 487
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "ret":B
    .end local v4    # "s":Ljava/lang/String;
    :catch_30
    move-exception v0

    .line 488
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_31
    const/4 v3, -0x1

    .line 491
    .restart local v3    # "ret":B
    if-eqz v1, :cond_29

    .line 492
    :try_start_34
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_29

    .line 494
    :catch_38
    move-exception v0

    .line 495
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 490
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "ret":B
    :catchall_3d
    move-exception v5

    .line 491
    :goto_3e
    if-eqz v1, :cond_43

    .line 492
    :try_start_40
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    .line 496
    :cond_43
    :goto_43
    throw v5

    .line 494
    :catch_44
    move-exception v0

    .line 495
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_43

    .line 490
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "s":Ljava/lang/String;
    :catchall_49
    move-exception v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_3e

    .line 487
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_4c
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_31
.end method

.method private getMobilePowerPerMs()D
    .registers 5

    .prologue
    .line 426
    iget-object v0, p0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private getMobilePowerPerPacket(J)D
    .registers 26
    .param p1, "rawRealtime"    # J

    .prologue
    .line 409
    const-wide/32 v4, 0x30d40

    .line 410
    .local v4, "MOBILE_BPS":J
    move-object/from16 v0, p0

    iget-object v0, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v18, v0

    const-string/jumbo v19, "radio.active"

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v18

    const-wide v20, 0x40ac200000000000L    # 3600.0

    div-double v6, v18, v20

    .line 412
    .local v6, "MOBILE_POWER":D
    move-object/from16 v0, p0

    iget-object v0, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkActivityPackets(II)J

    move-result-wide v12

    .line 413
    .local v12, "mobileRx":J
    move-object/from16 v0, p0

    iget-object v0, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkActivityPackets(II)J

    move-result-wide v14

    .line 414
    .local v14, "mobileTx":J
    add-long v8, v12, v14

    .line 415
    .local v8, "mobileData":J
    move-object/from16 v0, p0

    iget-object v0, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileRadioActiveTime(JI)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v16, v18, v20

    .line 417
    .local v16, "radioDataUptimeMs":J
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-eqz v18, :cond_6b

    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-eqz v18, :cond_6b

    long-to-double v0, v8

    move-wide/from16 v18, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v10, v18, v20

    .line 419
    .local v10, "mobilePps":D
    :goto_61
    div-double v18, v6, v10

    const-wide v20, 0x40ac200000000000L    # 3600.0

    div-double v18, v18, v20

    return-wide v18

    .line 417
    .end local v10    # "mobilePps":D
    :cond_6b
    const-wide v10, 0x40286a0000000000L    # 12.20703125

    goto :goto_61
.end method

.method private getWifiPowerPerPacket()D
    .registers 9

    .prologue
    const-wide v6, 0x40ac200000000000L    # 3600.0

    .line 433
    const-wide/32 v0, 0xf4240

    .line 434
    .local v0, "WIFI_BPS":J
    iget-object v4, p0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v5, "wifi.active"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    div-double v2, v4, v6

    .line 436
    .local v2, "WIFI_POWER":D
    const-wide v4, 0x404e848000000000L    # 61.03515625

    div-double v4, v2, v4

    div-double/2addr v4, v6

    return-wide v4
.end method

.method private load()V
    .registers 6

    .prologue
    .line 71
    :try_start_0
    iget-object v3, p0, mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 72
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 73
    .local v2, "parcel":Landroid/os/Parcel;
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 74
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    sget-object v3, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v3, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 76
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_20} :catch_21

    .line 80
    .end local v0    # "data":[B
    .end local v2    # "parcel":Landroid/os/Parcel;
    :goto_20
    return-void

    .line 77
    :catch_21
    move-exception v1

    .line 78
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_20
.end method

.method private mapKnownUIDs(I)Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "packageName":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_18

    .line 108
    :goto_4
    return-object v0

    .line 87
    :sswitch_5
    const-string v0, "ROOT"

    .line 88
    goto :goto_4

    .line 90
    :sswitch_8
    const-string v0, "ANDROID_SYSTEM"

    .line 91
    goto :goto_4

    .line 93
    :sswitch_b
    const-string v0, "PHONE"

    .line 94
    goto :goto_4

    .line 96
    :sswitch_e
    const-string v0, "com.android.bluetooth"

    .line 97
    goto :goto_4

    .line 99
    :sswitch_11
    const-string v0, "MEDIA"

    .line 100
    goto :goto_4

    .line 102
    :sswitch_14
    const-string v0, "com.android.nfc"

    .line 103
    goto :goto_4

    .line 85
    nop

    :sswitch_data_18
    .sparse-switch
        0x0 -> :sswitch_5
        0x3e8 -> :sswitch_8
        0x3e9 -> :sswitch_b
        0x3ea -> :sswitch_e
        0x3f5 -> :sswitch_11
        0x403 -> :sswitch_14
    .end sparse-switch
.end method


# virtual methods
.method public abusiveDetectionFromHCamp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "metaData"    # Ljava/lang/String;

    .prologue
    .line 620
    sget-object v0, db:Lcom/android/internal/os/BatteryStatsDBHelper;

    if-eqz v0, :cond_9

    .line 621
    sget-object v0, db:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsDBHelper;->abusiveDetectionFromHCamp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_9
    return-void
.end method

.method public abusiveDetectionFromHCamp(Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 611
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, db:Lcom/android/internal/os/BatteryStatsDBHelper;

    if-eqz v0, :cond_9

    .line 612
    sget-object v0, db:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsDBHelper;->abusiveDetectionFromHCamp(Ljava/util/List;Ljava/lang/String;)V

    .line 614
    :cond_9
    return-void
.end method

.method public computeSavedTimeAfterKillingPackage(Ljava/lang/String;)J
    .registers 24
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 516
    const-wide/16 v6, 0x0

    .line 518
    .local v6, "consumptionRateTotal":D
    const/4 v3, 0x0

    .line 519
    .local v3, "dischageSteps":[J
    const/4 v8, 0x0

    .line 521
    .local v8, "dischageStepsNum":I
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v19, v0

    monitor-enter v19
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_6c

    .line 522
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v8, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    .line 525
    .local v2, "batteryLevel":I
    monitor-exit v19
    :try_end_3e
    .catchall {:try_start_b .. :try_end_3e} :catchall_69

    .line 527
    :try_start_3e
    const-string v18, "BatteryStatsDumper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "computeSavedTimeAfterKillingPackage:: batteryLevel:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " dischageStepsNum: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_64} :catch_6c

    .line 528
    if-gtz v8, :cond_77

    .line 529
    const-wide/16 v10, -0x1

    .line 563
    .end local v2    # "batteryLevel":I
    :goto_68
    return-wide v10

    .line 525
    :catchall_69
    move-exception v18

    :try_start_6a
    monitor-exit v19
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    :try_start_6b
    throw v18
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6c} :catch_6c

    .line 561
    :catch_6c
    move-exception v9

    .line 562
    .local v9, "e":Ljava/lang/Exception;
    const-string v18, "BatteryStatsDumper"

    const-string v19, "computeSavedTimeAfterKillingPackage::  Exception"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const-wide/16 v10, 0x0

    goto :goto_68

    .line 532
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v2    # "batteryLevel":I
    :cond_77
    const-wide/16 v16, 0x0

    .line 533
    .local v16, "total":J
    const-wide v14, 0xffffffffffL

    .line 535
    .local v14, "stepLevelTimeMask":J
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_7f
    if-ge v10, v8, :cond_8a

    .line 538
    :try_start_81
    aget-wide v18, v3, v10

    and-long v18, v18, v14

    add-long v16, v16, v18

    .line 535
    add-int/lit8 v10, v10, 0x1

    goto :goto_7f

    .line 541
    :cond_8a
    mul-int/lit16 v0, v8, 0xe10

    move/from16 v18, v0

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    div-long v18, v18, v16

    move-wide/from16 v0, v18

    long-to-double v6, v0

    .line 542
    const-string v18, "BatteryStatsDumper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "computeSavedTimeAfterKillingPackage:: consumptionRateTotal:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-wide/16 v18, 0x0

    cmpl-double v18, v6, v18

    if-nez v18, :cond_c1

    .line 545
    const-wide/16 v10, -0x1

    goto :goto_68

    .line 548
    :cond_c1
    sget-object v18, db:Lcom/android/internal/os/BatteryStatsDBHelper;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->getAverageLevelDropPerHour(Ljava/lang/String;)D

    move-result-wide v4

    .line 549
    .local v4, "consumptionRateOfPackage":D
    const-wide/16 v12, 0x0

    .line 551
    .local v12, "newConsumptionRateTotal":D
    cmpl-double v18, v6, v4

    if-lez v18, :cond_12f

    .line 552
    sub-double v12, v6, v4

    .line 556
    :goto_d3
    const-string v18, "BatteryStatsDumper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "New battery consumption rate = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Previous consumptionRateOfPackage: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    int-to-double v0, v2

    move-wide/from16 v18, v0

    mul-double v18, v18, v4

    const-wide v20, 0x40ac200000000000L    # 3600.0

    mul-double v18, v18, v20

    const-wide v20, 0x408f400000000000L    # 1000.0

    mul-double v18, v18, v20

    mul-double v20, v6, v12

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-long v10, v0

    .line 559
    .local v10, "i":J
    const-string v18, "BatteryStatsDumper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "computeSavedTimeAfterKillingPackage:: returning i:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_12d} :catch_6c

    goto/16 :goto_68

    .line 554
    .local v10, "i":I
    :cond_12f
    sub-double v12, v4, v6

    goto :goto_d3
.end method

.method public deleteRecordsExceptLatest(I)V
    .registers 3
    .param p1, "maxNumOfItems"    # I

    .prologue
    .line 602
    sget-object v0, db:Lcom/android/internal/os/BatteryStatsDBHelper;

    if-eqz v0, :cond_9

    .line 603
    sget-object v0, db:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsDBHelper;->deleteRecordsExceptLatest(I)V

    .line 605
    :cond_9
    return-void
.end method

.method public deleteTableForApp(Ljava/lang/String;)V
    .registers 3
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 502
    sget-object v0, db:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsDBHelper;->deleteTableForApp(Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method public dumpConsumingAppDetails(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 595
    sget-object v0, db:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsDBHelper;->dumpConsumingAppDetails(Ljava/io/PrintWriter;)V

    .line 596
    return-void
.end method

.method public getBatteryLevel()I
    .registers 4

    .prologue
    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, "battValue":I
    const/4 v1, -0x1

    .line 467
    .local v1, "batteryLevel":B
    const-string v2, "/sys/class/power_supply/battery/capacity"

    invoke-direct {p0, v2}, getByteFromFile(Ljava/lang/String;)B

    move-result v1

    .line 468
    if-gez v1, :cond_d

    .line 469
    const/16 v0, 0x64

    .line 472
    :goto_c
    return v0

    .line 471
    :cond_d
    move v0, v1

    goto :goto_c
.end method

.method public getBatteryTotalCapacity()I
    .registers 3

    .prologue
    .line 587
    iget-object v0, p0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public handleTimeChange()V
    .registers 2

    .prologue
    .line 591
    sget-object v0, db:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsDBHelper;->handleTimeChange()V

    .line 592
    return-void
.end method

.method public modifyHealingCampThresholdIfNecessary()V
    .registers 2

    .prologue
    .line 510
    sget-object v0, db:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsDBHelper;->modifyHealingCampThresholdIfNecessary()V

    .line 511
    return-void
.end method

.method public modifyThresholdIfNecessary()V
    .registers 2

    .prologue
    .line 506
    sget-object v0, db:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsDBHelper;->modifyThresholdIfNecessary()V

    .line 507
    return-void
.end method

.method public refreshStats(ZZ)V
    .registers 123
    .param p1, "isWriteReasonScreenChange"    # Z
    .param p2, "screenOn"    # Z

    .prologue
    .line 113
    const-string v15, "BatteryStatsDumper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "In refreshStats isReason Screen ON/OFF: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-direct/range {p0 .. p0}, load()V

    .line 116
    move-object/from16 v0, p0

    iget-object v15, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v15, v15, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    sput-boolean v15, mIsOnBattery:Z

    .line 118
    move-object/from16 v0, p0

    iget-object v15, v0, sensorManager:Landroid/hardware/SensorManager;

    if-nez v15, :cond_3e

    .line 119
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    const-string/jumbo v16, "sensor"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/SensorManager;

    move-object/from16 v0, p0

    iput-object v15, v0, sensorManager:Landroid/hardware/SensorManager;

    .line 122
    :cond_3e
    const/16 v105, 0x0

    .line 123
    .local v105, "which":I
    const-wide/16 v34, 0x0

    .line 128
    .local v34, "computedPower":D
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    const-wide/16 v118, 0x3e8

    mul-long v56, v16, v118

    .line 129
    .local v56, "mRawRealtime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-direct {v0, v1, v2}, getMobilePowerPerPacket(J)D

    move-result-wide v60

    .line 130
    .local v60, "mobilePowerPerPacket":D
    invoke-direct/range {p0 .. p0}, getWifiPowerPerPacket()D

    move-result-wide v108

    .line 132
    .local v108, "wifiPowerPerPacket":D
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 134
    .local v19, "time":J
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v21, "powerEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsDumper$PowerObject;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v15}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v98

    .line 137
    .local v98, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v98 .. v98}, Landroid/util/SparseArray;->size()I

    move-result v27

    .line 139
    .local v27, "NU":I
    const/16 v51, 0x0

    .local v51, "iu":I
    :goto_6d
    move/from16 v0, v51

    move/from16 v1, v27

    if-ge v0, v1, :cond_427

    .line 140
    move-object/from16 v0, v98

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Landroid/os/BatteryStats$Uid;

    .line 142
    .local v95, "u":Landroid/os/BatteryStats$Uid;
    const-wide/16 v6, 0x0

    .line 143
    .local v6, "power":D
    const-wide/16 v46, 0x0

    .line 144
    .local v46, "highestDrain":D
    const/16 v71, 0x0

    .line 146
    .local v71, "packageWithHighestDrain":Ljava/lang/String;
    const-wide/16 v44, 0x0

    .line 147
    .local v44, "cpuTimeMs":J
    const-wide/16 v38, 0x0

    .line 148
    .local v38, "cpuFgTimeMs":J
    const-wide/16 v106, 0x0

    .line 149
    .local v106, "wakelockTime":J
    const-wide/16 v12, 0x0

    .line 150
    .local v12, "uidUsageTime":J
    const/4 v14, 0x0

    .line 151
    .local v14, "wakeUpCount":I
    const-wide/16 v100, 0x0

    .line 153
    .local v100, "uidWakeUpPower":D
    const/4 v15, 0x0

    move-object/from16 v0, v95

    invoke-virtual {v0, v15}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v16

    const/4 v15, 0x0

    move-object/from16 v0, v95

    invoke-virtual {v0, v15}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v118

    add-long v16, v16, v118

    const-wide/16 v118, 0x3e8

    div-long v44, v16, v118

    .line 156
    const-wide/16 v96, 0x0

    .line 157
    .local v96, "totalTime":J
    move-object/from16 v0, p0

    iget-object v15, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v15}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v53

    .line 158
    .local v53, "numClusters":I
    const/16 v32, 0x0

    .local v32, "cluster":I
    :goto_ae
    move/from16 v0, v32

    move/from16 v1, v53

    if-ge v0, v1, :cond_d9

    .line 159
    move-object/from16 v0, p0

    iget-object v15, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v92

    .line 160
    .local v92, "speedsForCluster":I
    const/16 v91, 0x0

    .local v91, "speed":I
    :goto_c0
    move/from16 v0, v91

    move/from16 v1, v92

    if-ge v0, v1, :cond_d6

    .line 161
    const/4 v15, 0x0

    move-object/from16 v0, v95

    move/from16 v1, v32

    move/from16 v2, v91

    invoke-virtual {v0, v1, v2, v15}, Landroid/os/BatteryStats$Uid;->getTimeAtCpuSpeed(III)J

    move-result-wide v16

    add-long v96, v96, v16

    .line 160
    add-int/lit8 v91, v91, 0x1

    goto :goto_c0

    .line 158
    :cond_d6
    add-int/lit8 v32, v32, 0x1

    goto :goto_ae

    .line 164
    .end local v91    # "speed":I
    .end local v92    # "speedsForCluster":I
    :cond_d9
    const-wide/16 v16, 0x1

    move-wide/from16 v0, v96

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v96

    .line 166
    const-wide/16 v40, 0x0

    .line 167
    .local v40, "cpuPowerMaMs":D
    const/16 v32, 0x0

    :goto_e7
    move/from16 v0, v32

    move/from16 v1, v53

    if-ge v0, v1, :cond_133

    .line 168
    move-object/from16 v0, p0

    iget-object v15, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v92

    .line 169
    .restart local v92    # "speedsForCluster":I
    const/16 v91, 0x0

    .restart local v91    # "speed":I
    :goto_f9
    move/from16 v0, v91

    move/from16 v1, v92

    if-ge v0, v1, :cond_130

    .line 170
    const/4 v15, 0x0

    move-object/from16 v0, v95

    move/from16 v1, v32

    move/from16 v2, v91

    invoke-virtual {v0, v1, v2, v15}, Landroid/os/BatteryStats$Uid;->getTimeAtCpuSpeed(III)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v96

    long-to-double v0, v0

    move-wide/from16 v118, v0

    div-double v80, v16, v118

    .line 172
    .local v80, "ratio":D
    move-wide/from16 v0, v44

    long-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v16, v16, v80

    move-object/from16 v0, p0

    iget-object v15, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move/from16 v0, v32

    move/from16 v1, v91

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpu(II)D

    move-result-wide v118

    mul-double v42, v16, v118

    .line 179
    .local v42, "cpuSpeedStepPower":D
    add-double v40, v40, v42

    .line 169
    add-int/lit8 v91, v91, 0x1

    goto :goto_f9

    .line 167
    .end local v42    # "cpuSpeedStepPower":D
    .end local v80    # "ratio":D
    :cond_130
    add-int/lit8 v32, v32, 0x1

    goto :goto_e7

    .line 183
    .end local v91    # "speed":I
    .end local v92    # "speedsForCluster":I
    :cond_133
    const-wide v16, 0x414b774000000000L    # 3600000.0

    div-double v6, v40, v16

    .line 188
    const-wide/16 v38, 0x0

    .line 189
    invoke-virtual/range {v95 .. v95}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v76

    .line 190
    .local v76, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual/range {v76 .. v76}, Landroid/util/ArrayMap;->size()I

    move-result v77

    .line 191
    .local v77, "processStatsCount":I
    const/16 v33, 0x0

    .local v33, "i":I
    :goto_146
    move/from16 v0, v33

    move/from16 v1, v77

    if-ge v0, v1, :cond_1b3

    .line 192
    move-object/from16 v0, v76

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Landroid/os/BatteryStats$Uid$Proc;

    .line 193
    .local v78, "ps":Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v76

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Ljava/lang/String;

    .line 194
    .local v73, "processName":Ljava/lang/String;
    const/4 v15, 0x0

    move-object/from16 v0, v78

    invoke-virtual {v0, v15}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v16

    add-long v38, v38, v16

    .line 196
    const/4 v15, 0x0

    move-object/from16 v0, v78

    invoke-virtual {v0, v15}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v16

    const/4 v15, 0x0

    move-object/from16 v0, v78

    invoke-virtual {v0, v15}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v118

    add-long v16, v16, v118

    const/4 v15, 0x0

    move-object/from16 v0, v78

    invoke-virtual {v0, v15}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v118

    add-long v36, v16, v118

    .line 201
    .local v36, "costValue":J
    if-eqz v71, :cond_18e

    const-string v15, "*"

    move-object/from16 v0, v71

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_198

    .line 203
    :cond_18e
    move-wide/from16 v0, v36

    long-to-double v0, v0

    move-wide/from16 v46, v0

    .line 204
    move-object/from16 v71, v73

    .line 191
    :cond_195
    :goto_195
    add-int/lit8 v33, v33, 0x1

    goto :goto_146

    .line 205
    :cond_198
    move-wide/from16 v0, v36

    long-to-double v0, v0

    move-wide/from16 v16, v0

    cmpg-double v15, v46, v16

    if-gez v15, :cond_195

    const-string v15, "*"

    move-object/from16 v0, v73

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_195

    .line 206
    move-wide/from16 v0, v36

    long-to-double v0, v0

    move-wide/from16 v46, v0

    .line 207
    move-object/from16 v71, v73

    goto :goto_195

    .line 212
    .end local v36    # "costValue":J
    .end local v73    # "processName":Ljava/lang/String;
    .end local v78    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    :cond_1b3
    cmp-long v15, v38, v44

    if-lez v15, :cond_1c8

    .line 213
    const-wide/16 v16, 0x2710

    add-long v16, v16, v44

    cmp-long v15, v38, v16

    if-lez v15, :cond_1c6

    .line 214
    const-string v15, "BatteryStatsDumper"

    const-string v16, "WARNING! Cputime is more than 10 seconds behind Foreground time"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_1c6
    move-wide/from16 v44, v38

    .line 221
    :cond_1c8
    add-long v12, v12, v44

    .line 224
    invoke-virtual/range {v95 .. v95}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v104

    .line 226
    .local v104, "wakelockStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v104 .. v104}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v48

    .local v48, "i$":Ljava/util/Iterator;
    :cond_1d6
    :goto_1d6
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1fd

    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v103

    check-cast v103, Ljava/util/Map$Entry;

    .line 227
    .local v103, "wakelockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v103 .. v103}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 230
    .local v102, "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v15, 0x0

    move-object/from16 v0, v102

    invoke-virtual {v0, v15}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v94

    .line 231
    .local v94, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v94, :cond_1d6

    .line 232
    const/4 v15, 0x0

    move-object/from16 v0, v94

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2, v15}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v16

    add-long v106, v106, v16

    goto :goto_1d6

    .line 236
    .end local v94    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v102    # "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v103    # "wakelockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_1fd
    const-wide/16 v16, 0x3e8

    div-long v106, v106, v16

    .line 239
    move-wide/from16 v0, v106

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v18, "cpu.awake"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v118

    mul-double v16, v16, v118

    const-wide v118, 0x414b774000000000L    # 3600000.0

    div-double v68, v16, v118

    .line 241
    .local v68, "p":D
    add-double v6, v6, v68

    .line 245
    add-long v12, v12, v106

    .line 248
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v95

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v62

    .line 249
    .local v62, "mobileRx":J
    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, v95

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v64

    .line 250
    .local v64, "mobileTx":J
    const/4 v15, 0x0

    move-object/from16 v0, v95

    invoke-virtual {v0, v15}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v58

    .line 251
    .local v58, "mobileActive":J
    add-long v16, v62, v64

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v68, v16, v60

    .line 252
    add-double v6, v6, v68

    .line 256
    add-long v12, v12, v58

    .line 259
    const/4 v15, 0x2

    const/16 v16, 0x0

    move-object/from16 v0, v95

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v112

    .line 260
    .local v112, "wifiRx":J
    const/4 v15, 0x3

    const/16 v16, 0x0

    move-object/from16 v0, v95

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v116

    .line 261
    .local v116, "wifiTx":J
    add-long v16, v112, v116

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v68, v16, v108

    .line 262
    add-double v6, v6, v68

    .line 265
    const/4 v15, 0x0

    move-object/from16 v0, v95

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2, v15}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v16

    const-wide/16 v118, 0x3e8

    div-long v110, v16, v118

    .line 266
    .local v110, "wifiRunningTimeMs":J
    move-wide/from16 v0, v110

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v18, "wifi.on"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v118

    mul-double v16, v16, v118

    const-wide v118, 0x414b774000000000L    # 3600000.0

    div-double v68, v16, v118

    .line 268
    add-double v6, v6, v68

    .line 270
    add-long v12, v12, v110

    .line 273
    const/4 v15, 0x0

    move-object/from16 v0, v95

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2, v15}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v16

    const-wide/16 v118, 0x3e8

    div-long v114, v16, v118

    .line 274
    .local v114, "wifiScanTimeMs":J
    move-wide/from16 v0, v114

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v18, "wifi.scan"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v118

    mul-double v16, v16, v118

    const-wide v118, 0x414b774000000000L    # 3600000.0

    div-double v68, v16, v118

    .line 276
    add-double v6, v6, v68

    .line 278
    add-long v12, v12, v114

    .line 280
    const/16 v29, 0x0

    .local v29, "bin":I
    :goto_2c4
    const/4 v15, 0x5

    move/from16 v0, v29

    if-ge v0, v15, :cond_2fc

    .line 281
    const/4 v15, 0x0

    move-object/from16 v0, v95

    move/from16 v1, v29

    move-wide/from16 v2, v56

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/os/BatteryStats$Uid;->getWifiBatchedScanTime(IJI)J

    move-result-wide v16

    const-wide/16 v118, 0x3e8

    div-long v30, v16, v118

    .line 282
    .local v30, "batchScanTimeMs":J
    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v18, "wifi.batchedscan"

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v118

    mul-double v16, v16, v118

    const-wide v118, 0x414b774000000000L    # 3600000.0

    div-double v68, v16, v118

    .line 285
    add-double v6, v6, v68

    .line 287
    add-long v12, v12, v30

    .line 280
    add-int/lit8 v29, v29, 0x1

    goto :goto_2c4

    .line 291
    .end local v30    # "batchScanTimeMs":J
    :cond_2fc
    invoke-virtual/range {v95 .. v95}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v87

    .line 292
    .local v87, "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v87 .. v87}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 293
    .local v4, "NSE":I
    const/16 v50, 0x0

    .local v50, "ise":I
    :goto_306
    move/from16 v0, v50

    if-ge v0, v4, :cond_37b

    .line 294
    move-object/from16 v0, v87

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Landroid/os/BatteryStats$Uid$Sensor;

    .line 295
    .local v84, "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    move-object/from16 v0, v87

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v85

    .line 296
    .local v85, "sensorHandle":I
    invoke-virtual/range {v84 .. v84}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v94

    .line 297
    .restart local v94    # "timer":Landroid/os/BatteryStats$Timer;
    const/4 v15, 0x0

    move-object/from16 v0, v94

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2, v15}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v16

    const-wide/16 v118, 0x3e8

    div-long v88, v16, v118

    .line 298
    .local v88, "sensorTime":J
    const-wide/16 v66, 0x0

    .line 300
    .local v66, "multiplier":D
    packed-switch v85, :pswitch_data_4b4

    .line 305
    move-object/from16 v0, p0

    iget-object v15, v0, sensorManager:Landroid/hardware/SensorManager;

    const/16 v16, -0x1

    invoke-virtual/range {v15 .. v16}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v86

    .line 307
    .local v86, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface/range {v86 .. v86}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v48

    :cond_340
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_35b

    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v79

    check-cast v79, Landroid/hardware/Sensor;

    .line 308
    .local v79, "s":Landroid/hardware/Sensor;
    invoke-virtual/range {v79 .. v79}, Landroid/hardware/Sensor;->getHandle()I

    move-result v15

    move/from16 v0, v85

    if-ne v15, v0, :cond_340

    .line 309
    invoke-virtual/range {v79 .. v79}, Landroid/hardware/Sensor;->getPower()F

    move-result v15

    float-to-double v0, v15

    move-wide/from16 v66, v0

    .line 315
    .end local v79    # "s":Landroid/hardware/Sensor;
    .end local v86    # "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_35b
    :goto_35b
    move-wide/from16 v0, v88

    long-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v16, v16, v66

    const-wide v118, 0x414b774000000000L    # 3600000.0

    div-double v68, v16, v118

    .line 316
    add-double v6, v6, v68

    .line 318
    add-long v12, v12, v88

    .line 293
    add-int/lit8 v50, v50, 0x1

    goto :goto_306

    .line 302
    :pswitch_370
    move-object/from16 v0, p0

    iget-object v15, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v16, "gps.on"

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v66

    .line 303
    goto :goto_35b

    .line 321
    .end local v66    # "multiplier":D
    .end local v84    # "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v85    # "sensorHandle":I
    .end local v88    # "sensorTime":J
    .end local v94    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_37b
    const-wide/16 v16, 0x0

    cmpg-double v15, v6, v16

    if-gez v15, :cond_38a

    .line 322
    const-string v15, "BatteryStatsDumper"

    const-string v16, " calculated power is negative"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-wide/16 v6, 0x0

    .line 326
    :cond_38a
    invoke-virtual/range {v95 .. v95}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v93

    .line 327
    .local v93, "thisUid":I
    const/4 v8, 0x0

    .line 328
    .local v8, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, pm:Landroid/content/pm/PackageManager;

    move/from16 v0, v93

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v72

    .line 329
    .local v72, "packages":[Ljava/lang/String;
    if-eqz v72, :cond_405

    move-object/from16 v0, v72

    array-length v15, v0

    if-lez v15, :cond_405

    .line 330
    const/4 v15, 0x0

    aget-object v8, v72, v15

    .line 338
    :goto_3a3
    invoke-static/range {v93 .. v93}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v99

    .line 340
    .local v99, "userId":I
    const/4 v9, 0x0

    .line 341
    .local v9, "isSystem":Z
    const/16 v90, 0x0

    .line 342
    .local v90, "specialPackageName":Ljava/lang/String;
    const/16 v15, 0x2710

    move/from16 v0, v93

    if-ge v0, v15, :cond_3bd

    .line 343
    const/4 v9, 0x1

    .line 344
    move-object/from16 v0, p0

    move/from16 v1, v93

    invoke-direct {v0, v1}, mapKnownUIDs(I)Ljava/lang/String;

    move-result-object v90

    .line 345
    if-eqz v90, :cond_3bd

    .line 346
    move-object/from16 v8, v90

    .line 349
    :cond_3bd
    add-long v16, v112, v116

    add-long v16, v16, v62

    add-long v10, v16, v64

    .line 352
    .local v10, "totalNetworkUsage":J
    invoke-virtual/range {v95 .. v95}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v70

    .line 353
    .local v70, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v16, "wakeup.power"

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v74

    .line 354
    .local v74, "powerPerWakeUp":D
    invoke-virtual/range {v70 .. v70}, Landroid/util/ArrayMap;->size()I

    move-result v15

    add-int/lit8 v49, v15, -0x1

    .local v49, "ipkg":I
    :goto_3d8
    if-ltz v49, :cond_40b

    .line 355
    move-object/from16 v0, v70

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Landroid/os/BatteryStats$Uid$Pkg;

    .line 356
    .local v78, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    const/4 v14, 0x0

    .line 357
    invoke-virtual/range {v78 .. v78}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v28

    .line 358
    .local v28, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    move-result v15

    add-int/lit8 v52, v15, -0x1

    .local v52, "iwa":I
    :goto_3ef
    if-ltz v52, :cond_408

    .line 359
    move-object/from16 v0, v28

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/BatteryStats$Counter;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v15

    add-int/2addr v14, v15

    .line 358
    add-int/lit8 v52, v52, -0x1

    goto :goto_3ef

    .line 335
    .end local v9    # "isSystem":Z
    .end local v10    # "totalNetworkUsage":J
    .end local v28    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v49    # "ipkg":I
    .end local v52    # "iwa":I
    .end local v70    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v74    # "powerPerWakeUp":D
    .end local v78    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v90    # "specialPackageName":Ljava/lang/String;
    .end local v99    # "userId":I
    :cond_405
    move-object/from16 v8, v71

    goto :goto_3a3

    .line 354
    .restart local v9    # "isSystem":Z
    .restart local v10    # "totalNetworkUsage":J
    .restart local v28    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .restart local v49    # "ipkg":I
    .restart local v52    # "iwa":I
    .restart local v70    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v74    # "powerPerWakeUp":D
    .restart local v78    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .restart local v90    # "specialPackageName":Ljava/lang/String;
    .restart local v99    # "userId":I
    :cond_408
    add-int/lit8 v49, v49, -0x1

    goto :goto_3d8

    .line 363
    .end local v28    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v52    # "iwa":I
    .end local v78    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    :cond_40b
    int-to-double v0, v14

    move-wide/from16 v16, v0

    mul-double v100, v16, v74

    .line 364
    add-double v6, v6, v100

    .line 365
    add-double v34, v34, v6

    .line 367
    if-eqz v8, :cond_423

    if-nez v99, :cond_423

    .line 368
    new-instance v5, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;

    const/4 v15, 0x0

    invoke-direct/range {v5 .. v15}, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;-><init>(DLjava/lang/String;ZJJILcom/android/internal/os/BatteryStatsDumper$1;)V

    .line 370
    .local v5, "pObject":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v5    # "pObject":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    :cond_423
    add-int/lit8 v51, v51, 0x1

    goto/16 :goto_6d

    .line 374
    .end local v4    # "NSE":I
    .end local v6    # "power":D
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "isSystem":Z
    .end local v10    # "totalNetworkUsage":J
    .end local v12    # "uidUsageTime":J
    .end local v14    # "wakeUpCount":I
    .end local v29    # "bin":I
    .end local v32    # "cluster":I
    .end local v33    # "i":I
    .end local v38    # "cpuFgTimeMs":J
    .end local v40    # "cpuPowerMaMs":D
    .end local v44    # "cpuTimeMs":J
    .end local v46    # "highestDrain":D
    .end local v48    # "i$":Ljava/util/Iterator;
    .end local v49    # "ipkg":I
    .end local v50    # "ise":I
    .end local v53    # "numClusters":I
    .end local v58    # "mobileActive":J
    .end local v62    # "mobileRx":J
    .end local v64    # "mobileTx":J
    .end local v68    # "p":D
    .end local v70    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v71    # "packageWithHighestDrain":Ljava/lang/String;
    .end local v72    # "packages":[Ljava/lang/String;
    .end local v74    # "powerPerWakeUp":D
    .end local v76    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v77    # "processStatsCount":I
    .end local v87    # "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v90    # "specialPackageName":Ljava/lang/String;
    .end local v93    # "thisUid":I
    .end local v95    # "u":Landroid/os/BatteryStats$Uid;
    .end local v96    # "totalTime":J
    .end local v99    # "userId":I
    .end local v100    # "uidWakeUpPower":D
    .end local v104    # "wakelockStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v106    # "wakelockTime":J
    .end local v110    # "wifiRunningTimeMs":J
    .end local v112    # "wifiRx":J
    .end local v114    # "wifiScanTimeMs":J
    .end local v116    # "wifiTx":J
    :cond_427
    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-direct {v0, v1, v2}, addScreenUsage(J)D

    move-result-wide v82

    .line 375
    .local v82, "screenpower":D
    add-double v34, v34, v82

    .line 381
    move-wide/from16 v24, v34

    .line 382
    .local v24, "totalPower":D
    move-object/from16 v0, p0

    iget-object v15, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v15}, Lcom/android/internal/os/BatteryStatsImpl;->getLowDischargeAmountSinceCharge()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v15}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v118

    mul-double v16, v16, v118

    const-wide/high16 v118, 0x4059000000000000L    # 100.0

    div-double v54, v16, v118

    .line 385
    .local v54, "mMinDrainedPower":D
    cmpl-double v15, v54, v34

    if-lez v15, :cond_452

    .line 386
    move-wide/from16 v24, v54

    .line 389
    :cond_452
    move-object/from16 v0, p0

    iget-object v15, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v0, v15, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    move/from16 v23, v0

    .line 390
    .local v23, "currentBatteryLevel":I
    sget v15, sPrevBatteryLevel:I

    sub-int v22, v15, v23

    .line 391
    .local v22, "delta":I
    const-string v15, "BatteryStatsDumper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Previous Battery Level: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, sPrevBatteryLevel:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Current Level: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Delta: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    if-gez v22, :cond_498

    .line 394
    const/16 v22, 0x0

    .line 396
    :cond_498
    sput v23, sPrevBatteryLevel:I

    .line 399
    sget-object v16, db:Lcom/android/internal/os/BatteryStatsDBHelper;

    move-object/from16 v0, p0

    iget-object v15, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v15}, Lcom/android/internal/os/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    move-result v26

    move/from16 v17, p1

    move/from16 v18, p2

    invoke-virtual/range {v16 .. v26}, Lcom/android/internal/os/BatteryStatsDBHelper;->addStatsToDB(ZZJLjava/util/ArrayList;IIDI)V

    .line 401
    const-string v15, "BatteryStatsDumper"

    const-string v16, "Writing to database completed"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return-void

    .line 300
    nop

    :pswitch_data_4b4
    .packed-switch -0x2710
        :pswitch_370
    .end packed-switch
.end method

.method public updatePrevBatteryValue()V
    .registers 2

    .prologue
    .line 461
    invoke-virtual {p0}, getBatteryLevel()I

    move-result v0

    sput v0, sPrevBatteryLevel:I

    .line 462
    return-void
.end method
