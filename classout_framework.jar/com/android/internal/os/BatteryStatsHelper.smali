.class public final Lcom/android/internal/os/BatteryStatsHelper;
.super Ljava/lang/Object;
.source "BatteryStatsHelper.java"


# static fields
.field static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sBatteryBroadcastXfer:Landroid/content/Intent;

.field private static sFileXfer:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/io/File;",
            "Landroid/os/BatteryStats;",
            ">;"
        }
    .end annotation
.end field

.field private static sStatsXfer:Landroid/os/BatteryStats;


# instance fields
.field private mBatteryBroadcast:Landroid/content/Intent;

.field private mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field mBatteryRealtime:J

.field mBatteryTimeRemaining:J

.field mBatteryUptime:J

.field mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private final mBluetoothSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field mChargeTimeRemaining:J

.field private final mCollectBatteryBroadcast:Z

.field private mComputedPower:D

.field private final mContext:Landroid/content/Context;

.field mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field mHasBluetoothPowerReporting:Z

.field mHasWifiPowerReporting:Z

.field private mMaxDrainedPower:D

.field private mMaxPower:D

.field private mMaxRealPower:D

.field private mMinDrainedPower:D

.field mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

.field private final mMobilemsppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field mRawRealtime:J

.field mRawUptime:J

.field mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private mStats:Landroid/os/BatteryStats;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mTotalPower:D

.field mTypeBatteryRealtime:J

.field mTypeBatteryUptime:J

.field private final mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSippers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;>;"
        }
    .end annotation
.end field

.field mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private final mWifiOnly:Z

.field mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private final mWifiSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const-class v0, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, sFileXfer:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Z)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "collectBatteryBroadcast"    # Z

    .prologue
    .line 159
    invoke-static {p1}, checkWifiOnly(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;ZZ)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "collectBatteryBroadcast"    # Z
    .param p3, "wifiOnly"    # Z

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mUsageList:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mWifiSippers:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mBluetoothSippers:Ljava/util/List;

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mUserSippers:Landroid/util/SparseArray;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mMobilemsppList:Ljava/util/List;

    .line 96
    iput v2, p0, mStatsType:I

    .line 107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mStatsPeriod:J

    .line 110
    iput-wide v4, p0, mMaxPower:D

    .line 113
    iput-wide v4, p0, mMaxRealPower:D

    .line 130
    iput-boolean v2, p0, mHasWifiPowerReporting:Z

    .line 131
    iput-boolean v2, p0, mHasBluetoothPowerReporting:Z

    .line 163
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 164
    iput-boolean p2, p0, mCollectBatteryBroadcast:Z

    .line 165
    iput-boolean p3, p0, mWifiOnly:Z

    .line 166
    return-void
.end method

.method private addBluetoothUsage()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    .line 644
    new-instance v2, Lcom/android/internal/os/BatterySipper;

    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 645
    .local v2, "bs":Lcom/android/internal/os/BatterySipper;
    iget-object v1, p0, mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-object v3, p0, mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, mRawRealtime:J

    iget-wide v6, p0, mRawUptime:J

    iget v8, p0, mStatsType:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    .line 647
    iget-object v0, p0, mBluetoothSippers:Ljava/util/List;

    const-string v1, "Bluetooth"

    invoke-direct {p0, v2, v0, v1}, aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 648
    iget-wide v0, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v0, v0, v10

    if-lez v0, :cond_29

    .line 649
    iget-object v0, p0, mUsageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_29
    return-void
.end method

.method private addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;
    .registers 10
    .param p1, "drainType"    # Lcom/android/internal/os/BatterySipper$DrainType;
    .param p2, "time"    # J
    .param p4, "power"    # D

    .prologue
    .line 677
    new-instance v0, Lcom/android/internal/os/BatterySipper;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 678
    .local v0, "bs":Lcom/android/internal/os/BatterySipper;
    iput-wide p4, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    .line 679
    iput-wide p2, v0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    .line 680
    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    .line 681
    iget-object v1, p0, mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    return-object v0
.end method

.method private addIdleUsage()V
    .registers 11

    .prologue
    .line 611
    iget-wide v0, p0, mTypeBatteryRealtime:J

    iget-object v6, p0, mStats:Landroid/os/BatteryStats;

    iget-wide v8, p0, mRawRealtime:J

    iget v7, p0, mStatsType:I

    invoke-virtual {v6, v8, v9, v7}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v6

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x3e8

    div-long v2, v0, v6

    .line 613
    .local v2, "idleTimeMs":J
    long-to-double v0, v2

    iget-object v6, p0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "cpu.idle"

    invoke-virtual {v6, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v0, v6

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double v4, v0, v6

    .line 618
    .local v4, "idlePower":D
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-eqz v0, :cond_2e

    .line 619
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 621
    :cond_2e
    return-void
.end method

.method private addPhoneUsage()V
    .registers 9

    .prologue
    .line 558
    iget-object v0, p0, mStats:Landroid/os/BatteryStats;

    iget-wide v6, p0, mRawRealtime:J

    iget v1, p0, mStatsType:I

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long v2, v0, v6

    .line 559
    .local v2, "phoneOnTimeMs":J
    iget-object v0, p0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v6, v2

    mul-double/2addr v0, v6

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double v4, v0, v6

    .line 561
    .local v4, "phoneOnPower":D
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-eqz v0, :cond_2c

    .line 562
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 564
    :cond_2c
    return-void
.end method

.method private addRadioUsage()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    .line 591
    new-instance v2, Lcom/android/internal/os/BatterySipper;

    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 592
    .local v2, "radio":Lcom/android/internal/os/BatterySipper;
    iget-object v1, p0, mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    iget-object v3, p0, mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, mRawRealtime:J

    iget-wide v6, p0, mRawUptime:J

    iget v8, p0, mStatsType:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    .line 594
    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    .line 595
    iget-wide v0, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v0, v0, v10

    if-lez v0, :cond_25

    .line 596
    iget-object v0, p0, mUsageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    :cond_25
    return-void
.end method

.method private addScreenUsage()V
    .registers 21

    .prologue
    .line 567
    const-wide/16 v6, 0x0

    .line 568
    .local v6, "power":D
    move-object/from16 v0, p0

    iget-object v2, v0, mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, mRawRealtime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v3, v0, mStatsType:I

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v2

    const-wide/16 v18, 0x3e8

    div-long v4, v2, v18

    .line 569
    .local v4, "screenOnTimeMs":J
    long-to-double v2, v4

    move-object/from16 v0, p0

    iget-object v11, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v18, "screen.on"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v18

    mul-double v2, v2, v18

    add-double/2addr v6, v2

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v3, "screen.full"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v16

    .line 572
    .local v16, "screenFullPower":D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_37
    const/4 v2, 0x5

    if-ge v10, v2, :cond_64

    .line 573
    int-to-float v2, v10

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-double v2, v2

    mul-double v2, v2, v16

    const-wide/high16 v18, 0x4014000000000000L    # 5.0

    div-double v14, v2, v18

    .line 575
    .local v14, "screenBinPower":D
    move-object/from16 v0, p0

    iget-object v2, v0, mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, mRawRealtime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v3, v0, mStatsType:I

    move-wide/from16 v0, v18

    invoke-virtual {v2, v10, v0, v1, v3}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v2

    const-wide/16 v18, 0x3e8

    div-long v8, v2, v18

    .line 577
    .local v8, "brightnessTime":J
    long-to-double v2, v8

    mul-double v12, v14, v2

    .line 582
    .local v12, "p":D
    add-double/2addr v6, v12

    .line 572
    add-int/lit8 v10, v10, 0x1

    goto :goto_37

    .line 584
    .end local v8    # "brightnessTime":J
    .end local v12    # "p":D
    .end local v14    # "screenBinPower":D
    :cond_64
    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v6, v2

    .line 585
    const-wide/16 v2, 0x0

    cmpl-double v2, v6, v2

    if-eqz v2, :cond_77

    .line 586
    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 588
    :cond_77
    return-void
.end method

.method private addUserUsage()V
    .registers 9

    .prologue
    .line 654
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_30

    .line 655
    iget-object v3, p0, mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 656
    .local v2, "userId":I
    new-instance v0, Lcom/android/internal/os/BatterySipper;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v0, v3, v4, v6, v7}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 657
    .local v0, "bs":Lcom/android/internal/os/BatterySipper;
    iput v2, v0, Lcom/android/internal/os/BatterySipper;->userId:I

    .line 658
    iget-object v3, p0, mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const-string v4, "User"

    invoke-direct {p0, v0, v3, v4}, aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 659
    iget-object v3, p0, mUsageList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 661
    .end local v0    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v2    # "userId":I
    :cond_30
    return-void
.end method

.method private addWiFiUsage()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    .line 631
    new-instance v2, Lcom/android/internal/os/BatterySipper;

    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 632
    .local v2, "bs":Lcom/android/internal/os/BatterySipper;
    iget-object v1, p0, mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-object v3, p0, mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, mRawRealtime:J

    iget-wide v6, p0, mRawUptime:J

    iget v8, p0, mStatsType:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    .line 633
    iget-object v0, p0, mWifiSippers:Ljava/util/List;

    const-string v1, "WIFI"

    invoke-direct {p0, v2, v0, v1}, aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 634
    iget-wide v0, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v0, v0, v10

    if-lez v0, :cond_29

    .line 635
    iget-object v0, p0, mUsageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    :cond_29
    return-void
.end method

.method private aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .param p1, "bs"    # Lcom/android/internal/os/BatterySipper;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatterySipper;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 601
    .local p2, "from":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_13

    .line 602
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    .line 604
    .local v1, "wbs":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {p1, v1}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 606
    .end local v1    # "wbs":Lcom/android/internal/os/BatterySipper;
    :cond_13
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    .line 607
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    .line 608
    return-void
.end method

.method public static checkHasBluetoothPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z
    .registers 6
    .param p0, "stats"    # Landroid/os/BatteryStats;
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .prologue
    const-wide/16 v2, 0x0

    .line 148
    invoke-virtual {p0}, Landroid/os/BatteryStats;->hasBluetoothActivityReporting()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "bluetooth.controller.idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_28

    const-string v0, "bluetooth.controller.rx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_28

    const-string v0, "bluetooth.controller.tx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public static checkHasWifiPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z
    .registers 6
    .param p0, "stats"    # Landroid/os/BatteryStats;
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .prologue
    const-wide/16 v2, 0x0

    .line 140
    invoke-virtual {p0}, Landroid/os/BatteryStats;->hasWifiActivityReporting()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "wifi.controller.idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "wifi.controller.rx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "wifi.controller.tx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public static checkWifiOnly(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 134
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 136
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public static dropFile(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-static {p0, p1}, makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 224
    return-void
.end method

.method private static getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;
    .registers 9
    .param p0, "service"    # Lcom/android/internal/app/IBatteryStats;

    .prologue
    .line 756
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/app/IBatteryStats;->getStatisticsStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 757
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v4, :cond_35

    .line 758
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_3b

    .line 760
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_b
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {v6}, Landroid/os/MemoryFile;->getSize(Ljava/io/FileDescriptor;)I

    move-result v6

    invoke-static {v2, v6}, readFully(Ljava/io/FileInputStream;I)[B

    move-result-object v0

    .line 761
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 762
    .local v3, "parcel":Landroid/os/Parcel;
    const/4 v6, 0x0

    array-length v7, v0

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 763
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 764
    sget-object v6, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatteryStatsImpl;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_2c} :catch_2d
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_2c} :catch_3b

    .line 774
    .end local v0    # "data":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "parcel":Landroid/os/Parcel;
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_2c
    return-object v5

    .line 767
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_2d
    move-exception v1

    .line 768
    .local v1, "e":Ljava/io/IOException;
    :try_start_2e
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "Unable to read statistics stream"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_35} :catch_3b

    .line 774
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_35
    :goto_35
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v5}, Lcom/android/internal/os/BatteryStatsImpl;-><init>()V

    goto :goto_2c

    .line 771
    :catch_3b
    move-exception v1

    .line 772
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "RemoteException:"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35
.end method

.method private load()V
    .registers 5

    .prologue
    .line 744
    iget-object v0, p0, mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    if-nez v0, :cond_5

    .line 752
    :cond_4
    :goto_4
    return-void

    .line 747
    :cond_5
    iget-object v0, p0, mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-static {v0}, getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, mStats:Landroid/os/BatteryStats;

    .line 748
    iget-boolean v0, p0, mCollectBatteryBroadcast:Z

    if-eqz v0, :cond_4

    .line 749
    iget-object v0, p0, mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, mBatteryBroadcast:Landroid/content/Intent;

    goto :goto_4
.end method

.method private static makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 227
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makemAh(D)Ljava/lang/String;
    .registers 8
    .param p0, "power"    # D

    .prologue
    .line 274
    const-wide/16 v2, 0x0

    cmpl-double v1, p0, v2

    if-nez v1, :cond_9

    const-string v1, "0"

    .line 288
    :goto_8
    return-object v1

    .line 277
    :cond_9
    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v1, p0, v2

    if-gez v1, :cond_25

    const-string v0, "%.8f"

    .line 288
    .local v0, "format":Ljava/lang/String;
    :goto_14
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 278
    .end local v0    # "format":Ljava/lang/String;
    :cond_25
    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v1, p0, v2

    if-gez v1, :cond_31

    const-string v0, "%.7f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_14

    .line 279
    .end local v0    # "format":Ljava/lang/String;
    :cond_31
    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, p0, v2

    if-gez v1, :cond_3d

    const-string v0, "%.6f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_14

    .line 280
    .end local v0    # "format":Ljava/lang/String;
    :cond_3d
    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, p0, v2

    if-gez v1, :cond_49

    const-string v0, "%.5f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_14

    .line 281
    .end local v0    # "format":Ljava/lang/String;
    :cond_49
    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, p0, v2

    if-gez v1, :cond_55

    const-string v0, "%.4f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_14

    .line 282
    .end local v0    # "format":Ljava/lang/String;
    :cond_55
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_5e

    const-string v0, "%.3f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_14

    .line 283
    .end local v0    # "format":Ljava/lang/String;
    :cond_5e
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_67

    const-string v0, "%.2f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_14

    .line 284
    .end local v0    # "format":Ljava/lang/String;
    :cond_67
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_70

    const-string v0, "%.1f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_14

    .line 285
    .end local v0    # "format":Ljava/lang/String;
    :cond_70
    const-string v0, "%.0f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_14
.end method

.method private processAppUsage(Landroid/util/SparseArray;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 492
    .local p1, "asUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_fe

    const/4 v15, 0x1

    .line 493
    .local v15, "forAllUsers":Z
    :goto_a
    move-object/from16 v0, p0

    iget-wide v6, v0, mTypeBatteryRealtime:J

    move-object/from16 v0, p0

    iput-wide v6, v0, mStatsPeriod:J

    .line 495
    const/16 v18, 0x0

    .line 496
    .local v18, "osSipper":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, p0

    iget-object v3, v0, mStats:Landroid/os/BatteryStats;

    invoke-virtual {v3}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v22

    .line 497
    .local v22, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 498
    .local v2, "NU":I
    const/16 v16, 0x0

    .local v16, "iu":I
    :goto_22
    move/from16 v0, v16

    if-ge v0, v2, :cond_14f

    .line 499
    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid;

    .line 500
    .local v5, "u":Landroid/os/BatteryStats$Uid;
    new-instance v4, Lcom/android/internal/os/BatterySipper;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    const-wide/16 v6, 0x0

    invoke-direct {v4, v3, v5, v6, v7}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 502
    .local v4, "app":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, p0

    iget-object v3, v0, mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iget-wide v6, v0, mRawRealtime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, mRawUptime:J

    move-object/from16 v0, p0

    iget v10, v0, mStatsType:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    .line 503
    move-object/from16 v0, p0

    iget-object v3, v0, mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iget-wide v6, v0, mRawRealtime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, mRawUptime:J

    move-object/from16 v0, p0

    iget v10, v0, mStatsType:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    .line 504
    move-object/from16 v0, p0

    iget-object v3, v0, mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    move-object/from16 v0, p0

    iget-wide v6, v0, mRawRealtime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, mRawUptime:J

    move-object/from16 v0, p0

    iget v10, v0, mStatsType:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    .line 505
    move-object/from16 v0, p0

    iget-object v3, v0, mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iget-wide v6, v0, mRawRealtime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, mRawUptime:J

    move-object/from16 v0, p0

    iget v10, v0, mStatsType:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    .line 506
    move-object/from16 v0, p0

    iget-object v3, v0, mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iget-wide v6, v0, mRawRealtime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, mRawUptime:J

    move-object/from16 v0, p0

    iget v10, v0, mStatsType:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    .line 507
    move-object/from16 v0, p0

    iget-object v3, v0, mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iget-wide v6, v0, mRawRealtime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, mRawUptime:J

    move-object/from16 v0, p0

    iget v10, v0, mStatsType:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    .line 508
    move-object/from16 v0, p0

    iget-object v3, v0, mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iget-wide v6, v0, mRawRealtime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, mRawUptime:J

    move-object/from16 v0, p0

    iget v10, v0, mStatsType:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    .line 509
    move-object/from16 v0, p0

    iget-object v3, v0, mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iget-wide v6, v0, mRawRealtime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, mRawUptime:J

    move-object/from16 v0, p0

    iget v10, v0, mStatsType:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    .line 511
    invoke-virtual {v4}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    move-result-wide v20

    .line 518
    .local v20, "totalPower":D
    const-wide/16 v6, 0x0

    cmpl-double v3, v20, v6

    if-nez v3, :cond_e1

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    if-nez v3, :cond_fa

    .line 522
    :cond_e1
    invoke-virtual {v4}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v19

    .line 523
    .local v19, "uid":I
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    .line 524
    .local v23, "userId":I
    const/16 v3, 0x3f2

    move/from16 v0, v19

    if-ne v0, v3, :cond_101

    .line 525
    move-object/from16 v0, p0

    iget-object v3, v0, mWifiSippers:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    :goto_f6
    if-nez v19, :cond_fa

    .line 542
    move-object/from16 v18, v4

    .line 498
    .end local v19    # "uid":I
    .end local v23    # "userId":I
    :cond_fa
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_22

    .line 492
    .end local v2    # "NU":I
    .end local v4    # "app":Lcom/android/internal/os/BatterySipper;
    .end local v5    # "u":Landroid/os/BatteryStats$Uid;
    .end local v15    # "forAllUsers":Z
    .end local v16    # "iu":I
    .end local v18    # "osSipper":Lcom/android/internal/os/BatterySipper;
    .end local v20    # "totalPower":D
    .end local v22    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    :cond_fe
    const/4 v15, 0x0

    goto/16 :goto_a

    .line 526
    .restart local v2    # "NU":I
    .restart local v4    # "app":Lcom/android/internal/os/BatterySipper;
    .restart local v5    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v15    # "forAllUsers":Z
    .restart local v16    # "iu":I
    .restart local v18    # "osSipper":Lcom/android/internal/os/BatterySipper;
    .restart local v19    # "uid":I
    .restart local v20    # "totalPower":D
    .restart local v22    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v23    # "userId":I
    :cond_101
    const/16 v3, 0x3ea

    move/from16 v0, v19

    if-ne v0, v3, :cond_10f

    .line 527
    move-object/from16 v0, p0

    iget-object v3, v0, mBluetoothSippers:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f6

    .line 528
    :cond_10f
    if-nez v15, :cond_147

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_147

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v6, 0x2710

    if-lt v3, v6, :cond_147

    .line 531
    move-object/from16 v0, p0

    iget-object v3, v0, mUserSippers:Landroid/util/SparseArray;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    .line 532
    .local v17, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-nez v17, :cond_141

    .line 533
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .restart local v17    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, mUserSippers:Landroid/util/SparseArray;

    move/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 536
    :cond_141
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f6

    .line 538
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_147
    move-object/from16 v0, p0

    iget-object v3, v0, mUsageList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f6

    .line 547
    .end local v4    # "app":Lcom/android/internal/os/BatterySipper;
    .end local v5    # "u":Landroid/os/BatteryStats$Uid;
    .end local v19    # "uid":I
    .end local v20    # "totalPower":D
    .end local v23    # "userId":I
    :cond_14f
    if-eqz v18, :cond_16d

    .line 551
    move-object/from16 v0, p0

    iget-object v7, v0, mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iget-object v9, v0, mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v10, v0, mRawRealtime:J

    move-object/from16 v0, p0

    iget-wide v12, v0, mRawUptime:J

    move-object/from16 v0, p0

    iget v14, v0, mStatsType:I

    move-object/from16 v8, v18

    invoke-virtual/range {v7 .. v14}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    .line 553
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    .line 555
    :cond_16d
    return-void
.end method

.method private processMiscUsage()V
    .registers 2

    .prologue
    .line 664
    invoke-direct {p0}, addUserUsage()V

    .line 665
    invoke-direct {p0}, addPhoneUsage()V

    .line 666
    invoke-direct {p0}, addScreenUsage()V

    .line 667
    invoke-direct {p0}, addWiFiUsage()V

    .line 668
    invoke-direct {p0}, addBluetoothUsage()V

    .line 669
    invoke-direct {p0}, addIdleUsage()V

    .line 671
    iget-boolean v0, p0, mWifiOnly:Z

    if-nez v0, :cond_19

    .line 672
    invoke-direct {p0}, addRadioUsage()V

    .line 674
    :cond_19
    return-void
.end method

.method public static readFully(Ljava/io/FileInputStream;)[B
    .registers 2
    .param p0, "stream"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 718
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    invoke-static {p0, v0}, readFully(Ljava/io/FileInputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static readFully(Ljava/io/FileInputStream;I)[B
    .registers 8
    .param p0, "stream"    # Ljava/io/FileInputStream;
    .param p1, "avail"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 722
    const/4 v3, 0x0

    .line 723
    .local v3, "pos":I
    new-array v1, p1, [B

    .line 725
    .local v1, "data":[B
    :cond_4
    :goto_4
    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {p0, v1, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .line 728
    .local v0, "amt":I
    if-gtz v0, :cond_d

    .line 731
    return-object v1

    .line 733
    :cond_d
    add-int/2addr v3, v0

    .line 734
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result p1

    .line 735
    array-length v4, v1

    sub-int/2addr v4, v3

    if-le p1, v4, :cond_4

    .line 736
    add-int v4, v3, p1

    new-array v2, v4, [B

    .line 737
    .local v2, "newData":[B
    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 738
    move-object v1, v2

    goto :goto_4
.end method

.method public static statsFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/BatteryStats;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 193
    sget-object v8, sFileXfer:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 194
    :try_start_3
    invoke-static {p0, p1}, makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 195
    .local v5, "path":Ljava/io/File;
    sget-object v7, sFileXfer:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats;

    .line 196
    .local v6, "stats":Landroid/os/BatteryStats;
    if-eqz v6, :cond_13

    .line 197
    monitor-exit v8
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_5e

    .line 218
    .end local v6    # "stats":Landroid/os/BatteryStats;
    :goto_12
    return-object v6

    .line 199
    .restart local v6    # "stats":Landroid/os/BatteryStats;
    :cond_13
    const/4 v2, 0x0

    .line 201
    .local v2, "fin":Ljava/io/FileInputStream;
    :try_start_14
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_3a
    .catchall {:try_start_14 .. :try_end_19} :catchall_57

    .line 202
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_19
    invoke-static {v3}, readFully(Ljava/io/FileInputStream;)[B

    move-result-object v0

    .line 203
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 204
    .local v4, "parcel":Landroid/os/Parcel;
    const/4 v7, 0x0

    array-length v9, v0

    invoke-virtual {v4, v0, v7, v9}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 205
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 206
    sget-object v7, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_32} :catch_6a
    .catchall {:try_start_19 .. :try_end_32} :catchall_67

    .line 210
    if-eqz v3, :cond_37

    .line 212
    :try_start_34
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_61
    .catchall {:try_start_34 .. :try_end_37} :catchall_5e

    .line 214
    :cond_37
    :goto_37
    :try_start_37
    monitor-exit v8
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_5e

    move-object v6, v7

    goto :goto_12

    .line 207
    .end local v0    # "data":[B
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "parcel":Landroid/os/Parcel;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :catch_3a
    move-exception v1

    .line 208
    .local v1, "e":Ljava/io/IOException;
    :goto_3b
    :try_start_3b
    sget-object v7, TAG:Ljava/lang/String;

    const-string v9, "Unable to read history to file"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_57

    .line 210
    if-eqz v2, :cond_47

    .line 212
    :try_start_44
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_63
    .catchall {:try_start_44 .. :try_end_47} :catchall_5e

    .line 217
    :cond_47
    :goto_47
    :try_start_47
    monitor-exit v8
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_5e

    .line 218
    const-string v7, "batterystats"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v7

    invoke-static {v7}, getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v6

    goto :goto_12

    .line 210
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_57
    move-exception v7

    :goto_58
    if-eqz v2, :cond_5d

    .line 212
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_65
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    .line 214
    :cond_5d
    :goto_5d
    :try_start_5d
    throw v7

    .line 217
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "path":Ljava/io/File;
    .end local v6    # "stats":Landroid/os/BatteryStats;
    :catchall_5e
    move-exception v7

    monitor-exit v8
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_5e

    throw v7

    .line 213
    .restart local v0    # "data":[B
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "parcel":Landroid/os/Parcel;
    .restart local v5    # "path":Ljava/io/File;
    .restart local v6    # "stats":Landroid/os/BatteryStats;
    :catch_61
    move-exception v9

    goto :goto_37

    .end local v0    # "data":[B
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "parcel":Landroid/os/Parcel;
    .restart local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :catch_63
    move-exception v7

    goto :goto_47

    .end local v1    # "e":Ljava/io/IOException;
    :catch_65
    move-exception v9

    goto :goto_5d

    .line 210
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catchall_67
    move-exception v7

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_58

    .line 207
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catch_6a
    move-exception v1

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_3b
.end method


# virtual methods
.method public clearStats()V
    .registers 2

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, mStats:Landroid/os/BatteryStats;

    .line 233
    return-void
.end method

.method public create(Landroid/os/BatteryStats;)V
    .registers 4
    .param p1, "stats"    # Landroid/os/BatteryStats;

    .prologue
    .line 254
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 255
    iput-object p1, p0, mStats:Landroid/os/BatteryStats;

    .line 256
    return-void
.end method

.method public create(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 259
    if-eqz p1, :cond_a

    .line 260
    sget-object v0, sStatsXfer:Landroid/os/BatteryStats;

    iput-object v0, p0, mStats:Landroid/os/BatteryStats;

    .line 261
    sget-object v0, sBatteryBroadcastXfer:Landroid/content/Intent;

    iput-object v0, p0, mBatteryBroadcast:Landroid/content/Intent;

    .line 263
    :cond_a
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 265
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 266
    return-void
.end method

.method public getBatteryBroadcast()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, mBatteryBroadcast:Landroid/content/Intent;

    if-nez v0, :cond_b

    iget-boolean v0, p0, mCollectBatteryBroadcast:Z

    if-eqz v0, :cond_b

    .line 244
    invoke-direct {p0}, load()V

    .line 246
    :cond_b
    iget-object v0, p0, mBatteryBroadcast:Landroid/content/Intent;

    return-object v0
.end method

.method public getBatteryTimeRemaining()J
    .registers 3

    .prologue
    .line 713
    iget-wide v0, p0, mBatteryTimeRemaining:J

    return-wide v0
.end method

.method public getChargeTimeRemaining()J
    .registers 3

    .prologue
    .line 715
    iget-wide v0, p0, mChargeTimeRemaining:J

    return-wide v0
.end method

.method public getComputedPower()D
    .registers 3

    .prologue
    .line 703
    iget-wide v0, p0, mComputedPower:D

    return-wide v0
.end method

.method public getMaxDrainedPower()D
    .registers 3

    .prologue
    .line 710
    iget-wide v0, p0, mMaxDrainedPower:D

    return-wide v0
.end method

.method public getMaxPower()D
    .registers 3

    .prologue
    .line 697
    iget-wide v0, p0, mMaxPower:D

    return-wide v0
.end method

.method public getMaxRealPower()D
    .registers 3

    .prologue
    .line 699
    iget-wide v0, p0, mMaxRealPower:D

    return-wide v0
.end method

.method public getMinDrainedPower()D
    .registers 3

    .prologue
    .line 706
    iget-wide v0, p0, mMinDrainedPower:D

    return-wide v0
.end method

.method public getMobilemsppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 690
    iget-object v0, p0, mMobilemsppList:Ljava/util/List;

    return-object v0
.end method

.method public getPowerProfile()Lcom/android/internal/os/PowerProfile;
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    return-object v0
.end method

.method public getStats()Landroid/os/BatteryStats;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, mStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_7

    .line 237
    invoke-direct {p0}, load()V

    .line 239
    :cond_7
    iget-object v0, p0, mStats:Landroid/os/BatteryStats;

    return-object v0
.end method

.method public getStatsPeriod()J
    .registers 3

    .prologue
    .line 693
    iget-wide v0, p0, mStatsPeriod:J

    return-wide v0
.end method

.method public getStatsType()I
    .registers 2

    .prologue
    .line 695
    iget v0, p0, mStatsType:I

    return v0
.end method

.method public getTotalPower()D
    .registers 3

    .prologue
    .line 701
    iget-wide v0, p0, mTotalPower:D

    return-wide v0
.end method

.method public getUsageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 686
    iget-object v0, p0, mUsageList:Ljava/util/List;

    return-object v0
.end method

.method public refreshStats(II)V
    .registers 5
    .param p1, "statsType"    # I
    .param p2, "asUser"    # I

    .prologue
    .line 295
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 296
    .local v0, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 297
    invoke-virtual {p0, p1, v0}, refreshStats(ILandroid/util/SparseArray;)V

    .line 298
    return-void
.end method

.method public refreshStats(ILandroid/util/SparseArray;)V
    .registers 11
    .param p1, "statsType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "asUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    const-wide/16 v2, 0x3e8

    .line 317
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    mul-long v4, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    mul-long v6, v0, v2

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, refreshStats(ILandroid/util/SparseArray;JJ)V

    .line 319
    return-void
.end method

.method public refreshStats(ILandroid/util/SparseArray;JJ)V
    .registers 26
    .param p1, "statsType"    # I
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p2, "asUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    invoke-virtual/range {p0 .. p0}, getStats()Landroid/os/BatteryStats;

    .line 326
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, mMaxPower:D

    .line 327
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, mMaxRealPower:D

    .line 328
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, mComputedPower:D

    .line 329
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, mTotalPower:D

    .line 331
    move-object/from16 v0, p0

    iget-object v14, v0, mUsageList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 332
    move-object/from16 v0, p0

    iget-object v14, v0, mWifiSippers:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 333
    move-object/from16 v0, p0

    iget-object v14, v0, mBluetoothSippers:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 334
    move-object/from16 v0, p0

    iget-object v14, v0, mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V

    .line 335
    move-object/from16 v0, p0

    iget-object v14, v0, mMobilemsppList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 337
    move-object/from16 v0, p0

    iget-object v14, v0, mStats:Landroid/os/BatteryStats;

    if-nez v14, :cond_45

    .line 489
    :cond_44
    :goto_44
    return-void

    .line 341
    :cond_45
    move-object/from16 v0, p0

    iget-object v14, v0, mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v14, :cond_58

    .line 342
    new-instance v14, Lcom/android/internal/os/CpuPowerCalculator;

    move-object/from16 v0, p0

    iget-object v15, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v14, v15}, Lcom/android/internal/os/CpuPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    move-object/from16 v0, p0

    iput-object v14, v0, mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 344
    :cond_58
    move-object/from16 v0, p0

    iget-object v14, v0, mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v14}, Lcom/android/internal/os/PowerCalculator;->reset()V

    .line 346
    move-object/from16 v0, p0

    iget-object v14, v0, mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v14, :cond_72

    .line 347
    new-instance v14, Lcom/android/internal/os/WakelockPowerCalculator;

    move-object/from16 v0, p0

    iget-object v15, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v14, v15}, Lcom/android/internal/os/WakelockPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    move-object/from16 v0, p0

    iput-object v14, v0, mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 349
    :cond_72
    move-object/from16 v0, p0

    iget-object v14, v0, mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v14}, Lcom/android/internal/os/PowerCalculator;->reset()V

    .line 351
    move-object/from16 v0, p0

    iget-object v14, v0, mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    if-nez v14, :cond_92

    .line 352
    new-instance v14, Lcom/android/internal/os/MobileRadioPowerCalculator;

    move-object/from16 v0, p0

    iget-object v15, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v0, p0

    iget-object v0, v0, mStats:Landroid/os/BatteryStats;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/android/internal/os/MobileRadioPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;Landroid/os/BatteryStats;)V

    move-object/from16 v0, p0

    iput-object v14, v0, mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    .line 354
    :cond_92
    move-object/from16 v0, p0

    iget-object v14, v0, mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    move-object/from16 v0, p0

    iget-object v15, v0, mStats:Landroid/os/BatteryStats;

    invoke-virtual {v14, v15}, Lcom/android/internal/os/MobileRadioPowerCalculator;->reset(Landroid/os/BatteryStats;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v14, v0, mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-object v15, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-static {v14, v15}, checkHasWifiPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z

    move-result v8

    .line 359
    .local v8, "hasWifiPowerReporting":Z
    move-object/from16 v0, p0

    iget-object v14, v0, mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-eqz v14, :cond_b5

    move-object/from16 v0, p0

    iget-boolean v14, v0, mHasWifiPowerReporting:Z

    if-eq v8, v14, :cond_c8

    .line 360
    :cond_b5
    if-eqz v8, :cond_239

    new-instance v14, Lcom/android/internal/os/WifiPowerCalculator;

    move-object/from16 v0, p0

    iget-object v15, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v14, v15}, Lcom/android/internal/os/WifiPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    :goto_c0
    move-object/from16 v0, p0

    iput-object v14, v0, mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 363
    move-object/from16 v0, p0

    iput-boolean v8, v0, mHasWifiPowerReporting:Z

    .line 365
    :cond_c8
    move-object/from16 v0, p0

    iget-object v14, v0, mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v14}, Lcom/android/internal/os/PowerCalculator;->reset()V

    .line 367
    move-object/from16 v0, p0

    iget-object v14, v0, mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-object v15, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-static {v14, v15}, checkHasBluetoothPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z

    move-result v7

    .line 369
    .local v7, "hasBluetoothPowerReporting":Z
    move-object/from16 v0, p0

    iget-object v14, v0, mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-eqz v14, :cond_e7

    move-object/from16 v0, p0

    iget-boolean v14, v0, mHasBluetoothPowerReporting:Z

    if-eq v7, v14, :cond_f8

    .line 371
    :cond_e7
    new-instance v14, Lcom/android/internal/os/BluetoothPowerCalculator;

    move-object/from16 v0, p0

    iget-object v15, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v14, v15}, Lcom/android/internal/os/BluetoothPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    move-object/from16 v0, p0

    iput-object v14, v0, mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 372
    move-object/from16 v0, p0

    iput-boolean v7, v0, mHasBluetoothPowerReporting:Z

    .line 374
    :cond_f8
    move-object/from16 v0, p0

    iget-object v14, v0, mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v14}, Lcom/android/internal/os/PowerCalculator;->reset()V

    .line 376
    move-object/from16 v0, p0

    iget-object v14, v0, mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v14, :cond_125

    .line 377
    new-instance v15, Lcom/android/internal/os/SensorPowerCalculator;

    move-object/from16 v0, p0

    iget-object v0, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    const-string/jumbo v17, "sensor"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/SensorManager;

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v14}, Lcom/android/internal/os/SensorPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;Landroid/hardware/SensorManager;)V

    move-object/from16 v0, p0

    iput-object v15, v0, mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 380
    :cond_125
    move-object/from16 v0, p0

    iget-object v14, v0, mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v14}, Lcom/android/internal/os/PowerCalculator;->reset()V

    .line 382
    move-object/from16 v0, p0

    iget-object v14, v0, mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v14, :cond_13f

    .line 383
    new-instance v14, Lcom/android/internal/os/CameraPowerCalculator;

    move-object/from16 v0, p0

    iget-object v15, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v14, v15}, Lcom/android/internal/os/CameraPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    move-object/from16 v0, p0

    iput-object v14, v0, mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 385
    :cond_13f
    move-object/from16 v0, p0

    iget-object v14, v0, mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v14}, Lcom/android/internal/os/PowerCalculator;->reset()V

    .line 387
    move-object/from16 v0, p0

    iget-object v14, v0, mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v14, :cond_159

    .line 388
    new-instance v14, Lcom/android/internal/os/FlashlightPowerCalculator;

    move-object/from16 v0, p0

    iget-object v15, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v14, v15}, Lcom/android/internal/os/FlashlightPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    move-object/from16 v0, p0

    iput-object v14, v0, mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 390
    :cond_159
    move-object/from16 v0, p0

    iget-object v14, v0, mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v14}, Lcom/android/internal/os/PowerCalculator;->reset()V

    .line 392
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, mStatsType:I

    .line 393
    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, mRawUptime:J

    .line 394
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, mRawRealtime:J

    .line 395
    move-object/from16 v0, p0

    iget-object v14, v0, mStats:Landroid/os/BatteryStats;

    move-wide/from16 v0, p5

    invoke-virtual {v14, v0, v1}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, mBatteryUptime:J

    .line 396
    move-object/from16 v0, p0

    iget-object v14, v0, mStats:Landroid/os/BatteryStats;

    move-wide/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, mBatteryRealtime:J

    .line 397
    move-object/from16 v0, p0

    iget-object v14, v0, mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget v15, v0, mStatsType:I

    move-wide/from16 v0, p5

    invoke-virtual {v14, v0, v1, v15}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, mTypeBatteryUptime:J

    .line 398
    move-object/from16 v0, p0

    iget-object v14, v0, mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget v15, v0, mStatsType:I

    move-wide/from16 v0, p3

    invoke-virtual {v14, v0, v1, v15}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, mTypeBatteryRealtime:J

    .line 399
    move-object/from16 v0, p0

    iget-object v14, v0, mStats:Landroid/os/BatteryStats;

    move-wide/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, mBatteryTimeRemaining:J

    .line 400
    move-object/from16 v0, p0

    iget-object v14, v0, mStats:Landroid/os/BatteryStats;

    move-wide/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, mChargeTimeRemaining:J

    .line 410
    move-object/from16 v0, p0

    iget-object v14, v0, mStats:Landroid/os/BatteryStats;

    invoke-virtual {v14}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v14

    int-to-double v14, v14

    move-object/from16 v0, p0

    iget-object v0, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v16

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, mMinDrainedPower:D

    .line 412
    move-object/from16 v0, p0

    iget-object v14, v0, mStats:Landroid/os/BatteryStats;

    invoke-virtual {v14}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v14

    int-to-double v14, v14

    move-object/from16 v0, p0

    iget-object v0, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v16

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, mMaxDrainedPower:D

    .line 415
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, processAppUsage(Landroid/util/SparseArray;)V

    .line 418
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_210
    move-object/from16 v0, p0

    iget-object v14, v0, mUsageList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v9, v14, :cond_244

    .line 419
    move-object/from16 v0, p0

    iget-object v14, v0, mUsageList:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    .line 420
    .local v6, "bs":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v6}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    .line 421
    iget-wide v14, v6, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_236

    .line 422
    move-object/from16 v0, p0

    iget-object v14, v0, mMobilemsppList:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_236
    add-int/lit8 v9, v9, 0x1

    goto :goto_210

    .line 360
    .end local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v7    # "hasBluetoothPowerReporting":Z
    .end local v9    # "i":I
    :cond_239
    new-instance v14, Lcom/android/internal/os/WifiPowerEstimator;

    move-object/from16 v0, p0

    iget-object v15, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v14, v15}, Lcom/android/internal/os/WifiPowerEstimator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    goto/16 :goto_c0

    .line 426
    .restart local v7    # "hasBluetoothPowerReporting":Z
    .restart local v9    # "i":I
    :cond_244
    const/4 v9, 0x0

    :goto_245
    move-object/from16 v0, p0

    iget-object v14, v0, mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v9, v14, :cond_27e

    .line 427
    move-object/from16 v0, p0

    iget-object v14, v0, mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v14, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 428
    .local v13, "user":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_25a
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_27b

    .line 429
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    .line 430
    .restart local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v6}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    .line 431
    iget-wide v14, v6, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_278

    .line 432
    move-object/from16 v0, p0

    iget-object v14, v0, mMobilemsppList:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_278
    add-int/lit8 v11, v11, 0x1

    goto :goto_25a

    .line 426
    .end local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_27b
    add-int/lit8 v9, v9, 0x1

    goto :goto_245

    .line 436
    .end local v11    # "j":I
    .end local v13    # "user":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_27e
    move-object/from16 v0, p0

    iget-object v14, v0, mMobilemsppList:Ljava/util/List;

    new-instance v15, Lcom/android/internal/os/BatteryStatsHelper$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/internal/os/BatteryStatsHelper$1;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    invoke-static {v14, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 443
    invoke-direct/range {p0 .. p0}, processMiscUsage()V

    .line 445
    move-object/from16 v0, p0

    iget-object v14, v0, mUsageList:Ljava/util/List;

    invoke-static {v14}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v14, v0, mUsageList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2db

    .line 450
    move-object/from16 v0, p0

    iget-object v14, v0, mUsageList:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BatterySipper;

    iget-wide v14, v14, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-object/from16 v0, p0

    iput-wide v14, v0, mMaxPower:D

    move-object/from16 v0, p0

    iput-wide v14, v0, mMaxRealPower:D

    .line 451
    move-object/from16 v0, p0

    iget-object v14, v0, mUsageList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v12

    .line 452
    .local v12, "usageListCount":I
    const/4 v9, 0x0

    :goto_2be
    if-ge v9, v12, :cond_2db

    .line 453
    move-object/from16 v0, p0

    iget-wide v0, v0, mComputedPower:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v14, v0, mUsageList:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BatterySipper;

    iget-wide v14, v14, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, mComputedPower:D

    .line 452
    add-int/lit8 v9, v9, 0x1

    goto :goto_2be

    .line 462
    .end local v12    # "usageListCount":I
    :cond_2db
    move-object/from16 v0, p0

    iget-wide v14, v0, mComputedPower:D

    move-object/from16 v0, p0

    iput-wide v14, v0, mTotalPower:D

    .line 463
    move-object/from16 v0, p0

    iget-object v14, v0, mStats:Landroid/os/BatteryStats;

    invoke-virtual {v14}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_44

    .line 464
    move-object/from16 v0, p0

    iget-wide v14, v0, mMinDrainedPower:D

    move-object/from16 v0, p0

    iget-wide v0, v0, mComputedPower:D

    move-wide/from16 v16, v0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_33a

    .line 465
    move-object/from16 v0, p0

    iget-wide v14, v0, mMinDrainedPower:D

    move-object/from16 v0, p0

    iget-wide v0, v0, mComputedPower:D

    move-wide/from16 v16, v0

    sub-double v4, v14, v16

    .line 466
    .local v4, "amount":D
    move-object/from16 v0, p0

    iget-wide v14, v0, mMinDrainedPower:D

    move-object/from16 v0, p0

    iput-wide v14, v0, mTotalPower:D

    .line 467
    new-instance v6, Lcom/android/internal/os/BatterySipper;

    sget-object v14, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v15, 0x0

    invoke-direct {v6, v14, v15, v4, v5}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 470
    .restart local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, p0

    iget-object v14, v0, mUsageList:Ljava/util/List;

    invoke-static {v14, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v10

    .line 471
    .local v10, "index":I
    if-gez v10, :cond_325

    .line 472
    add-int/lit8 v14, v10, 0x1

    neg-int v10, v14

    .line 474
    :cond_325
    move-object/from16 v0, p0

    iget-object v14, v0, mUsageList:Ljava/util/List;

    invoke-interface {v14, v10, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 475
    move-object/from16 v0, p0

    iget-wide v14, v0, mMaxPower:D

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, mMaxPower:D

    goto/16 :goto_44

    .line 476
    .end local v4    # "amount":D
    .end local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v10    # "index":I
    :cond_33a
    move-object/from16 v0, p0

    iget-wide v14, v0, mMaxDrainedPower:D

    move-object/from16 v0, p0

    iget-wide v0, v0, mComputedPower:D

    move-wide/from16 v16, v0

    cmpg-double v14, v14, v16

    if-gez v14, :cond_44

    .line 477
    move-object/from16 v0, p0

    iget-wide v14, v0, mComputedPower:D

    move-object/from16 v0, p0

    iget-wide v0, v0, mMaxDrainedPower:D

    move-wide/from16 v16, v0

    sub-double v4, v14, v16

    .line 480
    .restart local v4    # "amount":D
    new-instance v6, Lcom/android/internal/os/BatterySipper;

    sget-object v14, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v15, 0x0

    invoke-direct {v6, v14, v15, v4, v5}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 481
    .restart local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, p0

    iget-object v14, v0, mUsageList:Ljava/util/List;

    invoke-static {v14, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v10

    .line 482
    .restart local v10    # "index":I
    if-gez v10, :cond_369

    .line 483
    add-int/lit8 v14, v10, 0x1

    neg-int v10, v14

    .line 485
    :cond_369
    move-object/from16 v0, p0

    iget-object v14, v0, mUsageList:Ljava/util/List;

    invoke-interface {v14, v10, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 486
    move-object/from16 v0, p0

    iget-wide v14, v0, mMaxPower:D

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, mMaxPower:D

    goto/16 :goto_44
.end method

.method public refreshStats(ILjava/util/List;)V
    .registers 8
    .param p1, "statsType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p2, "asUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 305
    .local v1, "n":I
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 306
    .local v3, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_1c

    .line 307
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 308
    .local v2, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 310
    .end local v2    # "userHandle":Landroid/os/UserHandle;
    :cond_1c
    invoke-virtual {p0, p1, v3}, refreshStats(ILandroid/util/SparseArray;)V

    .line 311
    return-void
.end method

.method public storeState()V
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, mStats:Landroid/os/BatteryStats;

    sput-object v0, sStatsXfer:Landroid/os/BatteryStats;

    .line 270
    iget-object v0, p0, mBatteryBroadcast:Landroid/content/Intent;

    sput-object v0, sBatteryBroadcastXfer:Landroid/content/Intent;

    .line 271
    return-void
.end method

.method public storeStatsHistoryInFile(Ljava/lang/String;)V
    .registers 11
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 169
    sget-object v7, sFileXfer:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 170
    :try_start_3
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6, p1}, makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 171
    .local v5, "path":Ljava/io/File;
    sget-object v6, sFileXfer:Landroid/util/ArrayMap;

    invoke-virtual {p0}, getStats()Landroid/os/BatteryStats;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_4d

    .line 172
    const/4 v1, 0x0

    .line 174
    .local v1, "fout":Ljava/io/FileOutputStream;
    :try_start_13
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_36
    .catchall {:try_start_13 .. :try_end_18} :catchall_46

    .line 175
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .local v2, "fout":Ljava/io/FileOutputStream;
    :try_start_18
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 176
    .local v3, "hist":Landroid/os/Parcel;
    invoke-virtual {p0}, getStats()Landroid/os/BatteryStats;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v8}, Landroid/os/BatteryStats;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    .line 177
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    .line 178
    .local v4, "histData":[B
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2b} :catch_55
    .catchall {:try_start_18 .. :try_end_2b} :catchall_52

    .line 182
    if-eqz v2, :cond_58

    .line 184
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_33
    .catchall {:try_start_2d .. :try_end_30} :catchall_4d

    move-object v1, v2

    .line 189
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .end local v3    # "hist":Landroid/os/Parcel;
    .end local v4    # "histData":[B
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    :cond_31
    :goto_31
    :try_start_31
    monitor-exit v7
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_4d

    .line 190
    return-void

    .line 185
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "hist":Landroid/os/Parcel;
    .restart local v4    # "histData":[B
    :catch_33
    move-exception v6

    move-object v1, v2

    .line 186
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_31

    .line 179
    .end local v3    # "hist":Landroid/os/Parcel;
    .end local v4    # "histData":[B
    :catch_36
    move-exception v0

    .line 180
    .local v0, "e":Ljava/io/IOException;
    :goto_37
    :try_start_37
    sget-object v6, TAG:Ljava/lang/String;

    const-string v8, "Unable to write history to file"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_46

    .line 182
    if-eqz v1, :cond_31

    .line 184
    :try_start_40
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44
    .catchall {:try_start_40 .. :try_end_43} :catchall_4d

    goto :goto_31

    .line 185
    :catch_44
    move-exception v6

    goto :goto_31

    .line 182
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_46
    move-exception v6

    :goto_47
    if-eqz v1, :cond_4c

    .line 184
    :try_start_49
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_50
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    .line 186
    :cond_4c
    :goto_4c
    :try_start_4c
    throw v6

    .line 189
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .end local v5    # "path":Ljava/io/File;
    :catchall_4d
    move-exception v6

    monitor-exit v7
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_4d

    throw v6

    .line 185
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "path":Ljava/io/File;
    :catch_50
    move-exception v8

    goto :goto_4c

    .line 182
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catchall_52
    move-exception v6

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_47

    .line 179
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_55
    move-exception v0

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_37

    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "hist":Landroid/os/Parcel;
    .restart local v4    # "histData":[B
    :cond_58
    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_31
.end method
