.class public Lcom/android/internal/os/BatterySipper;
.super Ljava/lang/Object;
.source "BatterySipper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatterySipper$DrainType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/os/BatterySipper;",
        ">;"
    }
.end annotation


# instance fields
.field public cameraPowerMah:D

.field public cameraTimeMs:J

.field public cpuFgTimeMs:J

.field public cpuPowerMah:D

.field public cpuTimeMs:J

.field public drainType:Lcom/android/internal/os/BatterySipper$DrainType;

.field public flashlightPowerMah:D

.field public flashlightTimeMs:J

.field public gpsPowerMah:D

.field public gpsTimeMs:J

.field public mPackages:[Ljava/lang/String;

.field public mobileActive:J

.field public mobileActiveCount:I

.field public mobileRadioPowerMah:D

.field public mobileRxBytes:J

.field public mobileRxPackets:J

.field public mobileTxBytes:J

.field public mobileTxPackets:J

.field public mobilemspp:D

.field public noCoveragePercent:D

.field public packageWithHighestDrain:Ljava/lang/String;

.field public percent:D

.field public sensorPowerMah:D

.field public totalPowerMah:D

.field public uidObj:Landroid/os/BatteryStats$Uid;

.field public usagePowerMah:D

.field public usageTimeMs:J

.field public userId:I

.field public wakeLockPowerMah:D

.field public wakeLockTimeMs:J

.field public wifiPowerMah:D

.field public wifiRunningTimeMs:J

.field public wifiRxBytes:J

.field public wifiRxPackets:J

.field public wifiTxBytes:J

.field public wifiTxPackets:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V
    .registers 6
    .param p1, "drainType"    # Lcom/android/internal/os/BatterySipper$DrainType;
    .param p2, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p3, "value"    # D

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-wide p3, p0, totalPowerMah:D

    .line 92
    iput-object p1, p0, drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 93
    iput-object p2, p0, uidObj:Landroid/os/BatteryStats$Uid;

    .line 94
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/os/BatterySipper;)V
    .registers 6
    .param p1, "other"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    .line 135
    iget-wide v0, p0, totalPowerMah:D

    iget-wide v2, p1, totalPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, totalPowerMah:D

    .line 136
    iget-wide v0, p0, usageTimeMs:J

    iget-wide v2, p1, usageTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, usageTimeMs:J

    .line 137
    iget-wide v0, p0, usagePowerMah:D

    iget-wide v2, p1, usagePowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, usagePowerMah:D

    .line 138
    iget-wide v0, p0, cpuTimeMs:J

    iget-wide v2, p1, cpuTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, cpuTimeMs:J

    .line 139
    iget-wide v0, p0, gpsTimeMs:J

    iget-wide v2, p1, gpsTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, gpsTimeMs:J

    .line 140
    iget-wide v0, p0, wifiRunningTimeMs:J

    iget-wide v2, p1, wifiRunningTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, wifiRunningTimeMs:J

    .line 141
    iget-wide v0, p0, cpuFgTimeMs:J

    iget-wide v2, p1, cpuFgTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, cpuFgTimeMs:J

    .line 142
    iget-wide v0, p0, wakeLockTimeMs:J

    iget-wide v2, p1, wakeLockTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, wakeLockTimeMs:J

    .line 143
    iget-wide v0, p0, cameraTimeMs:J

    iget-wide v2, p1, cameraTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, cameraTimeMs:J

    .line 144
    iget-wide v0, p0, flashlightTimeMs:J

    iget-wide v2, p1, flashlightTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, flashlightTimeMs:J

    .line 145
    iget-wide v0, p0, mobileRxPackets:J

    iget-wide v2, p1, mobileRxPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, mobileRxPackets:J

    .line 146
    iget-wide v0, p0, mobileTxPackets:J

    iget-wide v2, p1, mobileTxPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, mobileTxPackets:J

    .line 147
    iget-wide v0, p0, mobileActive:J

    iget-wide v2, p1, mobileActive:J

    add-long/2addr v0, v2

    iput-wide v0, p0, mobileActive:J

    .line 148
    iget v0, p0, mobileActiveCount:I

    iget v1, p1, mobileActiveCount:I

    add-int/2addr v0, v1

    iput v0, p0, mobileActiveCount:I

    .line 149
    iget-wide v0, p0, wifiRxPackets:J

    iget-wide v2, p1, wifiRxPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, wifiRxPackets:J

    .line 150
    iget-wide v0, p0, wifiTxPackets:J

    iget-wide v2, p1, wifiTxPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, wifiTxPackets:J

    .line 151
    iget-wide v0, p0, mobileRxBytes:J

    iget-wide v2, p1, mobileRxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, mobileRxBytes:J

    .line 152
    iget-wide v0, p0, mobileTxBytes:J

    iget-wide v2, p1, mobileTxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, mobileTxBytes:J

    .line 153
    iget-wide v0, p0, wifiRxBytes:J

    iget-wide v2, p1, wifiRxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, wifiRxBytes:J

    .line 154
    iget-wide v0, p0, wifiTxBytes:J

    iget-wide v2, p1, wifiTxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, wifiTxBytes:J

    .line 155
    iget-wide v0, p0, wifiPowerMah:D

    iget-wide v2, p1, wifiPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, wifiPowerMah:D

    .line 156
    iget-wide v0, p0, gpsPowerMah:D

    iget-wide v2, p1, gpsPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, gpsPowerMah:D

    .line 157
    iget-wide v0, p0, cpuPowerMah:D

    iget-wide v2, p1, cpuPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, cpuPowerMah:D

    .line 158
    iget-wide v0, p0, sensorPowerMah:D

    iget-wide v2, p1, sensorPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, sensorPowerMah:D

    .line 159
    iget-wide v0, p0, mobileRadioPowerMah:D

    iget-wide v2, p1, mobileRadioPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, mobileRadioPowerMah:D

    .line 160
    iget-wide v0, p0, wakeLockPowerMah:D

    iget-wide v2, p1, wakeLockPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, wakeLockPowerMah:D

    .line 161
    iget-wide v0, p0, cameraPowerMah:D

    iget-wide v2, p1, cameraPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, cameraPowerMah:D

    .line 162
    iget-wide v0, p0, flashlightPowerMah:D

    iget-wide v2, p1, flashlightPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, flashlightPowerMah:D

    .line 163
    return-void
.end method

.method public compareTo(Lcom/android/internal/os/BatterySipper;)I
    .registers 6
    .param p1, "other"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    .line 104
    iget-object v0, p0, drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v1, p1, drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_16

    .line 105
    iget-object v0, p0, drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v1, :cond_e

    .line 107
    const/4 v0, 0x1

    .line 113
    :goto_d
    return v0

    .line 108
    :cond_e
    iget-object v0, p1, drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v1, :cond_16

    .line 109
    const/4 v0, -0x1

    goto :goto_d

    .line 113
    :cond_16
    iget-wide v0, p1, totalPowerMah:D

    iget-wide v2, p0, totalPowerMah:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    goto :goto_d
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/android/internal/os/BatterySipper;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, compareTo(Lcom/android/internal/os/BatterySipper;)I

    move-result v0

    return v0
.end method

.method public computeMobilemspp()V
    .registers 7

    .prologue
    .line 97
    iget-wide v2, p0, mobileRxPackets:J

    iget-wide v4, p0, mobileTxPackets:J

    add-long v0, v2, v4

    .line 98
    .local v0, "packets":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_14

    iget-wide v2, p0, mobileActive:J

    long-to-double v2, v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    :goto_11
    iput-wide v2, p0, mobilemspp:D

    .line 99
    return-void

    .line 98
    :cond_14
    const-wide/16 v2, 0x0

    goto :goto_11
.end method

.method public getPackages()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, mPackages:[Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, uidObj:Landroid/os/BatteryStats$Uid;

    if-nez v0, :cond_6

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    goto :goto_5
.end method

.method public sumPower()D
    .registers 5

    .prologue
    .line 170
    iget-wide v0, p0, usagePowerMah:D

    iget-wide v2, p0, wifiPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, gpsPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, cpuPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, sensorPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, mobileRadioPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, wakeLockPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, cameraPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, flashlightPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, totalPowerMah:D

    return-wide v0
.end method
