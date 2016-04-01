.class final Lcom/android/server/notification/ZenModeHelper$Metrics;
.super Lcom/android/server/notification/ZenModeHelper$Callback;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Metrics"
.end annotation


# static fields
.field private static final COUNTER_PREFIX:Ljava/lang/String; = "dnd_mode_"

.field private static final MINIMUM_LOG_PERIOD_MS:J = 0xea60L


# instance fields
.field private mBeginningMs:J

.field private mPreviousZenMode:I

.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 4

    .prologue
    .line 929
    iput-object p1, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Callback;-><init>()V

    .line 933
    const/4 v0, -0x1

    iput v0, p0, mPreviousZenMode:I

    .line 934
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mBeginningMs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p2, "x1"    # Lcom/android/server/notification/ZenModeHelper$1;

    .prologue
    .line 929
    invoke-direct {p0, p1}, <init>(Lcom/android/server/notification/ZenModeHelper;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/notification/ZenModeHelper$Metrics;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper$Metrics;

    .prologue
    .line 929
    invoke-direct {p0}, emit()V

    return-void
.end method

.method private emit()V
    .registers 8

    .prologue
    .line 942
    iget-object v4, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$1300(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$H;

    move-result-object v4

    # invokes: Lcom/android/server/notification/ZenModeHelper$H;->postMetricsTimer()V
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper$H;->access$300(Lcom/android/server/notification/ZenModeHelper$H;)V

    .line 943
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 944
    .local v0, "now":J
    iget-wide v4, p0, mBeginningMs:J

    sub-long v2, v0, v4

    .line 945
    .local v2, "since":J
    iget v4, p0, mPreviousZenMode:I

    iget-object v5, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v5}, Lcom/android/server/notification/ZenModeHelper;->access$800(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v5

    if-ne v4, v5, :cond_22

    const-wide/32 v4, 0xea60

    cmp-long v4, v2, v4

    if-lez v4, :cond_51

    .line 946
    :cond_22
    iget v4, p0, mPreviousZenMode:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_47

    .line 947
    iget-object v4, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$600(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dnd_mode_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mPreviousZenMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    long-to-int v6, v2

    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 949
    :cond_47
    iget-object v4, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$800(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v4

    iput v4, p0, mPreviousZenMode:I

    .line 950
    iput-wide v0, p0, mBeginningMs:J

    .line 952
    :cond_51
    return-void
.end method


# virtual methods
.method onZenModeChanged()V
    .registers 1

    .prologue
    .line 938
    invoke-direct {p0}, emit()V

    .line 939
    return-void
.end method
