.class public Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
.super Ljava/lang/Object;
.source "ApdrData.java"


# instance fields
.field public StepCount:D

.field public TimeNoMove:J

.field public acc:[D

.field public apdrDevicePosition:I

.field public apdrForwardingVector:D

.field public apdrHeading:D

.field public att:[D

.field public bearing:D

.field public carryPos:I

.field public gyro:[D

.field public mag:[D

.field public movingStatus:I

.field public stepFlag:D

.field public stepLength:D

.field public systemtime:J

.field public utctime:J


# direct methods
.method public constructor <init>()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x3

    const-wide/16 v2, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-array v1, v4, [D

    iput-object v1, p0, acc:[D

    .line 16
    new-array v1, v4, [D

    iput-object v1, p0, gyro:[D

    .line 17
    const/4 v1, 0x4

    new-array v1, v1, [D

    iput-object v1, p0, mag:[D

    .line 18
    new-array v1, v4, [D

    iput-object v1, p0, att:[D

    .line 19
    const/4 v1, 0x2

    iput v1, p0, movingStatus:I

    .line 31
    iput-wide v2, p0, bearing:D

    .line 32
    iput-wide v2, p0, StepCount:D

    .line 33
    iput-wide v6, p0, TimeNoMove:J

    .line 34
    iput-wide v2, p0, stepFlag:D

    .line 35
    iput-wide v2, p0, stepLength:D

    .line 36
    iput-wide v6, p0, systemtime:J

    .line 37
    iput-wide v6, p0, utctime:J

    .line 38
    const/4 v0, 0x0

    .local v0, "inx":I
    :goto_2b
    if-ge v0, v4, :cond_40

    .line 39
    iget-object v1, p0, acc:[D

    aput-wide v2, v1, v0

    .line 40
    iget-object v1, p0, gyro:[D

    aput-wide v2, v1, v0

    .line 41
    iget-object v1, p0, mag:[D

    aput-wide v2, v1, v0

    .line 42
    iget-object v1, p0, att:[D

    aput-wide v2, v1, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 44
    :cond_40
    iget-object v1, p0, mag:[D

    aput-wide v2, v1, v4

    .line 45
    iput-wide v2, p0, apdrForwardingVector:D

    .line 46
    iput-wide v2, p0, apdrHeading:D

    .line 47
    const/4 v1, 0x1

    iput v1, p0, apdrDevicePosition:I

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;)V
    .registers 4
    .param p1, "aPDR_data"    # Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    .prologue
    const/4 v1, 0x3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-array v0, v1, [D

    iput-object v0, p0, acc:[D

    .line 16
    new-array v0, v1, [D

    iput-object v0, p0, gyro:[D

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [D

    iput-object v0, p0, mag:[D

    .line 18
    new-array v0, v1, [D

    iput-object v0, p0, att:[D

    .line 19
    const/4 v0, 0x2

    iput v0, p0, movingStatus:I

    .line 51
    invoke-virtual {p0, p1}, set(Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;)V

    .line 52
    return-void
.end method


# virtual methods
.method public set(Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;)V
    .registers 7
    .param p1, "aPDR_data"    # Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    .prologue
    const/4 v4, 0x3

    .line 55
    iget-wide v2, p1, bearing:D

    iput-wide v2, p0, bearing:D

    .line 56
    iget-wide v2, p1, StepCount:D

    iput-wide v2, p0, StepCount:D

    .line 57
    iget-wide v2, p1, TimeNoMove:J

    iput-wide v2, p0, TimeNoMove:J

    .line 58
    iget-wide v2, p1, stepFlag:D

    iput-wide v2, p0, stepFlag:D

    .line 59
    iget-wide v2, p1, stepLength:D

    iput-wide v2, p0, stepLength:D

    .line 60
    iget-wide v2, p1, systemtime:J

    iput-wide v2, p0, systemtime:J

    .line 61
    iget-wide v2, p1, utctime:J

    iput-wide v2, p0, utctime:J

    .line 62
    const/4 v0, 0x0

    .local v0, "inx":I
    :goto_1e
    if-ge v0, v4, :cond_43

    .line 63
    iget-object v1, p0, acc:[D

    iget-object v2, p1, acc:[D

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    .line 64
    iget-object v1, p0, gyro:[D

    iget-object v2, p1, gyro:[D

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    .line 65
    iget-object v1, p0, mag:[D

    iget-object v2, p1, mag:[D

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    .line 66
    iget-object v1, p0, att:[D

    iget-object v2, p1, att:[D

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 68
    :cond_43
    iget-object v1, p0, mag:[D

    iget-object v2, p1, mag:[D

    aget-wide v2, v2, v4

    aput-wide v2, v1, v4

    .line 69
    iget v1, p1, movingStatus:I

    iput v1, p0, movingStatus:I

    .line 70
    iget-wide v2, p1, apdrForwardingVector:D

    iput-wide v2, p0, apdrForwardingVector:D

    .line 71
    iget-wide v2, p1, apdrHeading:D

    iput-wide v2, p0, apdrHeading:D

    .line 72
    iget v1, p1, apdrDevicePosition:I

    iput v1, p0, apdrDevicePosition:I

    .line 73
    return-void
.end method
