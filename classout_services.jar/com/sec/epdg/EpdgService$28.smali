.class Lcom/sec/epdg/EpdgService$28;
.super Ljava/lang/Object;
.source "EpdgService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .registers 2

    .prologue
    .line 4933
    iput-object p1, p0, this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 4936
    const-string v0, "[EPDGService]"

    const-string v1, "LTE NOT available"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4937
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setIsLteAvailable(Z)V

    .line 4938
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v0

    if-nez v0, :cond_12

    .line 4950
    :cond_11
    :goto_11
    return-void

    .line 4941
    :cond_12
    iget-object v0, p0, this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgService;->access$4600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4942
    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2600()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v0, v1, :cond_11

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsAirplaneMode()Z

    move-result v0

    if-nez v0, :cond_11

    .line 4947
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2300()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_11
.end method
