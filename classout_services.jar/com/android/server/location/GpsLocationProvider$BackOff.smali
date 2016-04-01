.class final Lcom/android/server/location/GpsLocationProvider$BackOff;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BackOff"
.end annotation


# static fields
.field private static final MULTIPLIER:I = 0x2


# instance fields
.field private mCurrentIntervalMillis:J

.field private final mInitIntervalMillis:J

.field private final mMaxIntervalMillis:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 10
    .param p1, "initIntervalMillis"    # J
    .param p3, "maxIntervalMillis"    # J

    .prologue
    .line 2459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2460
    iput-wide p1, p0, mInitIntervalMillis:J

    .line 2461
    iput-wide p3, p0, mMaxIntervalMillis:J

    .line 2463
    iget-wide v0, p0, mInitIntervalMillis:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, mCurrentIntervalMillis:J

    .line 2464
    return-void
.end method


# virtual methods
.method public nextBackoffMillis()J
    .registers 5

    .prologue
    .line 2467
    iget-wide v0, p0, mCurrentIntervalMillis:J

    iget-wide v2, p0, mMaxIntervalMillis:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    .line 2468
    iget-wide v0, p0, mMaxIntervalMillis:J

    .line 2472
    :goto_a
    return-wide v0

    .line 2471
    :cond_b
    iget-wide v0, p0, mCurrentIntervalMillis:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, mCurrentIntervalMillis:J

    .line 2472
    iget-wide v0, p0, mCurrentIntervalMillis:J

    goto :goto_a
.end method

.method public reset()V
    .registers 5

    .prologue
    .line 2476
    iget-wide v0, p0, mInitIntervalMillis:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, mCurrentIntervalMillis:J

    .line 2477
    return-void
.end method
