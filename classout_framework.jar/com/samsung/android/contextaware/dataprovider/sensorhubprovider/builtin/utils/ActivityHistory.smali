.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;
.super Ljava/lang/Object;
.source "ActivityHistory.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$1;,
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;
    }
.end annotation


# static fields
.field private static final MAX_BUFFER_SIZE:I = 0x5a0

.field private static volatile mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;


# instance fields
.field private mBufferIndex:I

.field private mBufferSize:I

.field private final mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;


# direct methods
.method private constructor <init>()V
    .registers 6

    .prologue
    const/16 v4, 0x5a0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-array v1, v4, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    iput-object v1, p0, mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v4, :cond_19

    .line 64
    iget-object v1, p0, mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    new-instance v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$1;)V

    aput-object v2, v1, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 67
    :cond_19
    invoke-direct {p0}, initialize()V

    .line 68
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->registerObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;)V

    .line 69
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;
    .registers 2

    .prologue
    .line 51
    sget-object v0, mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    if-nez v0, :cond_13

    .line 52
    const-class v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    monitor-enter v1

    .line 53
    :try_start_7
    sget-object v0, mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    if-nez v0, :cond_12

    .line 54
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    invoke-direct {v0}, <init>()V

    sput-object v0, mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    .line 56
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 58
    :cond_13
    sget-object v0, mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    return-object v0

    .line 56
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private initialize()V
    .registers 2

    .prologue
    .line 72
    const/4 v0, -0x1

    iput v0, p0, mBufferIndex:I

    .line 73
    const/4 v0, 0x0

    iput v0, p0, mBufferSize:I

    .line 74
    return-void
.end method


# virtual methods
.method public erase()V
    .registers 2

    .prologue
    .line 159
    invoke-direct {p0}, initialize()V

    .line 160
    const-string v0, "erased"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public getActivityAccuracy(I)I
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 129
    iget v0, p0, mBufferSize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_16

    .line 130
    iget-object v0, p0, mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    iget v1, p0, mBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p1

    rem-int/lit16 v1, v1, 0x5a0

    aget-object v0, v0, v1

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->accuracy:I
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->access$300(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)I

    move-result v0

    .line 132
    :goto_15
    return v0

    :cond_16
    iget-object v0, p0, mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    aget-object v0, v0, p1

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->accuracy:I
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->access$300(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)I

    move-result v0

    goto :goto_15
.end method

.method public getActivityDuration(I)J
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 141
    iget v0, p0, mBufferSize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_16

    .line 142
    iget-object v0, p0, mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    iget v1, p0, mBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p1

    rem-int/lit16 v1, v1, 0x5a0

    aget-object v0, v0, v1

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->duration:J
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->access$400(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)J

    move-result-wide v0

    .line 144
    :goto_15
    return-wide v0

    :cond_16
    iget-object v0, p0, mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    aget-object v0, v0, p1

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->duration:J
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->access$400(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)J

    move-result-wide v0

    goto :goto_15
.end method

.method public getActivityTimestamp(I)J
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 105
    iget v0, p0, mBufferSize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_16

    .line 106
    iget-object v0, p0, mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    iget v1, p0, mBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p1

    rem-int/lit16 v1, v1, 0x5a0

    aget-object v0, v0, v1

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->timeStamp:J
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)J

    move-result-wide v0

    .line 108
    :goto_15
    return-wide v0

    :cond_16
    iget-object v0, p0, mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    aget-object v0, v0, p1

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->timeStamp:J
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)J

    move-result-wide v0

    goto :goto_15
.end method

.method public getActivityType(I)I
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 117
    iget v0, p0, mBufferSize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_16

    .line 118
    iget-object v0, p0, mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    iget v1, p0, mBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p1

    rem-int/lit16 v1, v1, 0x5a0

    aget-object v0, v0, v1

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->activityType:I
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->access$200(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)I

    move-result v0

    .line 120
    :goto_15
    return v0

    :cond_16
    iget-object v0, p0, mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    aget-object v0, v0, p1

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->activityType:I
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->access$200(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)I

    move-result v0

    goto :goto_15
.end method

.method public getBufferSize()I
    .registers 2

    .prologue
    .line 152
    iget v0, p0, mBufferSize:I

    return v0
.end method

.method public onTimeChanged()V
    .registers 1

    .prologue
    .line 165
    invoke-virtual {p0}, erase()V

    .line 167
    return-void
.end method

.method public putActivityData(J[I[I[J)V
    .registers 13
    .param p1, "timestamp"    # J
    .param p3, "activityType"    # [I
    .param p4, "accuracy"    # [I
    .param p5, "duration"    # [J

    .prologue
    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_50

    .line 82
    aget-wide v2, p5, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4d

    .line 83
    iget v1, p0, mBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v1, v1, 0x5a0

    iput v1, p0, mBufferIndex:I

    .line 85
    iget v1, p0, mBufferSize:I

    const/16 v2, 0x5a0

    if-ge v1, v2, :cond_20

    .line 86
    iget v1, p0, mBufferSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mBufferSize:I

    .line 89
    :cond_20
    iget-object v1, p0, mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    iget v2, p0, mBufferIndex:I

    aget-object v1, v1, v2

    # setter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->timeStamp:J
    invoke-static {v1, p1, p2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->access$102(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;J)J

    .line 90
    aget-wide v2, p5, v0

    add-long/2addr p1, v2

    .line 92
    iget-object v1, p0, mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    iget v2, p0, mBufferIndex:I

    aget-object v1, v1, v2

    aget v2, p3, v0

    # setter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->activityType:I
    invoke-static {v1, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->access$202(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;I)I

    .line 93
    iget-object v1, p0, mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    iget v2, p0, mBufferIndex:I

    aget-object v1, v1, v2

    aget v2, p4, v0

    # setter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->accuracy:I
    invoke-static {v1, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->access$302(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;I)I

    .line 94
    iget-object v1, p0, mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    iget v2, p0, mBufferIndex:I

    aget-object v1, v1, v2

    aget-wide v2, p5, v0

    # setter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->duration:J
    invoke-static {v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->access$402(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;J)J

    .line 81
    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    :cond_50
    return-void
.end method
