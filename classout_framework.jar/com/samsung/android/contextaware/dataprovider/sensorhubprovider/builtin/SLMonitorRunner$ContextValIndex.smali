.class final enum Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;
.super Ljava/lang/Enum;
.source "SLMonitorRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ContextValIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

.field public static final enum ActiveTime:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

.field public static final enum Calorie:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

.field public static final enum DataBundle:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

.field public static final enum DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

.field public static final enum DataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

.field public static final enum Distance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

.field public static final enum Duration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

.field public static final enum HistoryMode:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

.field public static final enum StepCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

.field public static final enum StepType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

.field public static final enum TimeStampArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

.field public static final enum Timestamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;


# instance fields
.field private val:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 72
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    const-string v1, "DataType"

    invoke-direct {v0, v1, v4, v4}, <init>(Ljava/lang/String;II)V

    sput-object v0, DataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    .line 73
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    const-string v1, "Timestamp"

    invoke-direct {v0, v1, v5, v5}, <init>(Ljava/lang/String;II)V

    sput-object v0, Timestamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    .line 74
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    const-string v1, "DataCount"

    invoke-direct {v0, v1, v6, v6}, <init>(Ljava/lang/String;II)V

    sput-object v0, DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    .line 75
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    const-string v1, "DataBundle"

    invoke-direct {v0, v1, v7, v7}, <init>(Ljava/lang/String;II)V

    sput-object v0, DataBundle:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    .line 76
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    const-string v1, "StepType"

    invoke-direct {v0, v1, v8, v8}, <init>(Ljava/lang/String;II)V

    sput-object v0, StepType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    .line 77
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    const-string v1, "StepCount"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, StepCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    .line 78
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    const-string v1, "Distance"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, Distance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    .line 79
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    const-string v1, "Calorie"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, Calorie:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    .line 80
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    const-string v1, "Duration"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, Duration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    .line 81
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    const-string v1, "ActiveTime"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, ActiveTime:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    .line 82
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    const-string v1, "TimeStampArray"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, TimeStampArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    .line 83
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    const-string v1, "HistoryMode"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, HistoryMode:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    .line 69
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    sget-object v1, DataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    aput-object v1, v0, v4

    sget-object v1, Timestamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    aput-object v1, v0, v5

    sget-object v1, DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    aput-object v1, v0, v6

    sget-object v1, DataBundle:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    aput-object v1, v0, v7

    sget-object v1, StepType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, StepCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Distance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Calorie:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Duration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, ActiveTime:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, TimeStampArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, HistoryMode:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "v"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput p3, p0, val:I

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    .prologue
    .line 69
    iget v0, p0, val:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    const-class v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;
    .registers 1

    .prologue
    .line 69
    sget-object v0, $VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-virtual {v0}, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    return-object v0
.end method
