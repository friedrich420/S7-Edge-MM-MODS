.class Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
.super Ljava/lang/Object;
.source "BatteryStatsDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastDatabaseInfo"
.end annotation


# instance fields
.field private networkUsage:J

.field private time:J

.field private totalPower:D


# direct methods
.method private constructor <init>(JDJ)V
    .registers 8
    .param p1, "time"    # J
    .param p3, "totalPower"    # D
    .param p5, "networkUsage"    # J

    .prologue
    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 845
    iput-wide p1, p0, time:J

    .line 846
    iput-wide p3, p0, totalPower:D

    .line 847
    iput-wide p5, p0, networkUsage:J

    .line 848
    return-void
.end method

.method synthetic constructor <init>(JDJLcom/android/internal/os/BatteryStatsDBHelper$1;)V
    .registers 9
    .param p1, "x0"    # J
    .param p3, "x1"    # D
    .param p5, "x2"    # J
    .param p7, "x3"    # Lcom/android/internal/os/BatteryStatsDBHelper$1;

    .prologue
    .line 839
    invoke-direct/range {p0 .. p6}, <init>(JDJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;)D
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;

    .prologue
    .line 839
    iget-wide v0, p0, totalPower:D

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;

    .prologue
    .line 839
    iget-wide v0, p0, networkUsage:J

    return-wide v0
.end method
