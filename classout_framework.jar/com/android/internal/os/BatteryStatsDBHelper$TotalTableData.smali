.class Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
.super Ljava/lang/Object;
.source "BatteryStatsDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TotalTableData"
.end annotation


# instance fields
.field private batteryDeltaForOneDay:I

.field private batteryDeltaForOneHour:I

.field private totalPowerForOneDay:D

.field private totalPowerForOneHour:D


# direct methods
.method private constructor <init>(DIDI)V
    .registers 7
    .param p1, "oneHourPower"    # D
    .param p3, "oneHourDelta"    # I
    .param p4, "oneDayPower"    # D
    .param p6, "oneDayDelta"    # I

    .prologue
    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    iput-wide p1, p0, totalPowerForOneHour:D

    .line 653
    iput p3, p0, batteryDeltaForOneHour:I

    .line 654
    iput-wide p4, p0, totalPowerForOneDay:D

    .line 655
    iput p6, p0, batteryDeltaForOneDay:I

    .line 656
    return-void
.end method

.method synthetic constructor <init>(DIDILcom/android/internal/os/BatteryStatsDBHelper$1;)V
    .registers 8
    .param p1, "x0"    # D
    .param p3, "x1"    # I
    .param p4, "x2"    # D
    .param p6, "x3"    # I
    .param p7, "x4"    # Lcom/android/internal/os/BatteryStatsDBHelper$1;

    .prologue
    .line 644
    invoke-direct/range {p0 .. p6}, <init>(DIDI)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)D
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;

    .prologue
    .line 644
    iget-wide v0, p0, totalPowerForOneDay:D

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;

    .prologue
    .line 644
    iget v0, p0, batteryDeltaForOneDay:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)D
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;

    .prologue
    .line 644
    iget-wide v0, p0, totalPowerForOneHour:D

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;

    .prologue
    .line 644
    iget v0, p0, batteryDeltaForOneHour:I

    return v0
.end method
