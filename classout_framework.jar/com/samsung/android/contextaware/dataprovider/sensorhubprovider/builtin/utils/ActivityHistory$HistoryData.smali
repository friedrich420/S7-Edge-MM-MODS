.class Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;
.super Ljava/lang/Object;
.source "ActivityHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistoryData"
.end annotation


# instance fields
.field private accuracy:I

.field private activityType:I

.field private duration:J

.field private timeStamp:J


# direct methods
.method private constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide v2, p0, timeStamp:J

    .line 37
    iput v0, p0, activityType:I

    .line 38
    iput v0, p0, accuracy:I

    .line 39
    iput-wide v2, p0, duration:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$1;

    .prologue
    .line 35
    invoke-direct {p0}, <init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)J
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    .prologue
    .line 35
    iget-wide v0, p0, timeStamp:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;J)J
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;
    .param p1, "x1"    # J

    .prologue
    .line 35
    iput-wide p1, p0, timeStamp:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    .prologue
    .line 35
    iget v0, p0, activityType:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, activityType:I

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    .prologue
    .line 35
    iget v0, p0, accuracy:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, accuracy:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)J
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    .prologue
    .line 35
    iget-wide v0, p0, duration:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;J)J
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;
    .param p1, "x1"    # J

    .prologue
    .line 35
    iput-wide p1, p0, duration:J

    return-wide p1
.end method
