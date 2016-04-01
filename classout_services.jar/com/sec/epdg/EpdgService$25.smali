.class Lcom/sec/epdg/EpdgService$25;
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
    .line 4793
    iput-object p1, p0, this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 4796
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    if-eqz v0, :cond_4d

    .line 4797
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1300()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isL2WHandoverProfilingRunning()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4798
    const-string v0, "[EPDGService]"

    const-string v1, "Wifi on is called and L2W handover profiling is running, stop it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4800
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1300()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopL2WHandoverProfiling()V

    .line 4802
    :cond_1c
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_4d

    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2600()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v0, v1, :cond_4d

    .line 4804
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1300()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v0

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v1

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    .line 4809
    :cond_4d
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2300()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_6d

    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2600()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v0, v1, :cond_6d

    .line 4811
    const-string v0, "[EPDGService]"

    const-string v1, "TEpdg timer running..  wait for it to expire. No timers starting."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4819
    :goto_6c
    return-void

    .line 4812
    :cond_6d
    # invokes: Lcom/sec/epdg/EpdgService;->getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 4813
    const-string v0, "[EPDGService]"

    const-string v1, "OnDemand PDN connection failed. Waiting for the state to be reset."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6c

    .line 4814
    :cond_7f
    iget-object v0, p0, this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isWifiConnected()Z
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1900(Lcom/sec/epdg/EpdgService;)Z

    move-result v0

    if-nez v0, :cond_8f

    .line 4815
    const-string v0, "[EPDGService]"

    const-string v1, "Wifi signal is good from monitor. But wifi is not connected"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6c

    .line 4817
    :cond_8f
    iget-object v0, p0, this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onWifiGoodEnough()V
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$9700(Lcom/sec/epdg/EpdgService;)V

    goto :goto_6c
.end method
