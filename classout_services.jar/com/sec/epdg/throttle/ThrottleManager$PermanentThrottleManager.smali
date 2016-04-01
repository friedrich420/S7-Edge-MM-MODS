.class Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;
.super Ljava/lang/Object;
.source "ThrottleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/throttle/ThrottleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermanentThrottleManager"
.end annotation


# static fields
.field private static final MAX_PERMANENT_THROTTLE_ERROR_COUNT:I = 0x3


# instance fields
.field private mPermanentThrottleErrorCount:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    const/4 v0, 0x0

    iput v0, p0, mPermanentThrottleErrorCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/throttle/ThrottleManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/sec/epdg/throttle/ThrottleManager$1;

    .prologue
    .line 349
    invoke-direct {p0}, <init>()V

    return-void
.end method


# virtual methods
.method public incrementPermanentThrottleCounter()V
    .registers 4

    .prologue
    .line 355
    iget v0, p0, mPermanentThrottleErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mPermanentThrottleErrorCount:I

    .line 356
    const-string v0, "[THROTTLEMANAGER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPermanentThrottleErrorCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mPermanentThrottleErrorCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", MAX_PERMANENT_THROTTLE_ERROR_COUNT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public isRetryThrottled()Z
    .registers 3

    .prologue
    .line 366
    iget v0, p0, mPermanentThrottleErrorCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public resetPermanentThrottleErrorCount()V
    .registers 3

    .prologue
    .line 361
    const-string v0, "[THROTTLEMANAGER]"

    const-string v1, "Reset permanent throttle"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const/4 v0, 0x0

    iput v0, p0, mPermanentThrottleErrorCount:I

    .line 363
    return-void
.end method
