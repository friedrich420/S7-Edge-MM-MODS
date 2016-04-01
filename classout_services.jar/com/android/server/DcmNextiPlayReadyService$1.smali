.class Lcom/android/server/DcmNextiPlayReadyService$1;
.super Ljava/lang/Object;
.source "DcmNextiPlayReadyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DcmNextiPlayReadyService;->handleNitzTimeUpdation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DcmNextiPlayReadyService;


# direct methods
.method constructor <init>(Lcom/android/server/DcmNextiPlayReadyService;)V
    .registers 2

    .prologue
    .line 271
    iput-object p1, p0, this$0:Lcom/android/server/DcmNextiPlayReadyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    .line 275
    const-string/jumbo v4, "gsm.nitz.time"

    const-string v5, "NONE"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long v0, v4, v8

    .line 276
    .local v0, "nitzTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v8

    .line 277
    .local v2, "recvElapsedTime":J
    cmp-long v4, v0, v6

    if-lez v4, :cond_4b

    cmp-long v4, v2, v6

    if-lez v4, :cond_4b

    .line 278
    const-string v4, "DcmNextiPlayReadyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calling nitzReceived() nitzTime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "recvElapsedTime"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    # invokes: Lcom/android/server/DcmNextiPlayReadyService;->nitzReceived(JJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/DcmNextiPlayReadyService;->access$000(JJ)V

    .line 281
    :cond_4b
    return-void
.end method
