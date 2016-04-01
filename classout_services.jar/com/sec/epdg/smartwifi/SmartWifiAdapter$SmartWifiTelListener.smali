.class final Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTelListener;
.super Landroid/telephony/PhoneStateListener;
.source "SmartWifiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmartWifiTelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V
    .registers 2

    .prologue
    .line 1234
    iput-object p1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Lcom/sec/epdg/smartwifi/SmartWifiAdapter$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .param p2, "x1"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter$1;

    .prologue
    .line 1234
    invoke-direct {p0, p1}, <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 6
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 1237
    const-string v0, "[SMARTWIFI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallStateChanged callState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    # setter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mIsCallInProgress:I
    invoke-static {p1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3302(I)I

    .line 1239
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isCdmaProfilingRequired()Z
    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3400(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1240
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startCdmaProfiling()V

    .line 1244
    :goto_29
    return-void

    .line 1242
    :cond_2a
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopCdmaProfiling()V

    goto :goto_29
.end method

.method public onDataConnectionStateChanged(II)V
    .registers 6
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 1272
    const-string v0, "[SMARTWIFI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataConnectionStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1275
    :cond_37
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mMetHoThreshold:Z
    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2300(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isVoLTEHandoverReady()Z
    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3100(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1276
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v1, 0x0

    # setter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mMetHoThreshold:Z
    invoke-static {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2302(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Z)Z

    .line 1277
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiOff:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2700(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postRunnableToEpdg(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3000(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Runnable;)V

    .line 1280
    :cond_58
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 5
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1256
    const-string v0, "[SMARTWIFI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1258
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mMetHoThreshold:Z
    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2300(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isVoLTEHandoverReady()Z
    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3100(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1259
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v1, 0x0

    # setter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mMetHoThreshold:Z
    invoke-static {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2302(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Z)Z

    .line 1260
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiOff:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2700(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postRunnableToEpdg(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3000(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Runnable;)V

    .line 1265
    :cond_48
    const-string v0, "FTM"

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3700()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "ORO"

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3700()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 1266
    :cond_60
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->calculateWeakWifiLevelAndRssiDb()V
    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3800(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V

    .line 1268
    :cond_65
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 6
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 1248
    const-string v0, "[SMARTWIFI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSignalStrengthsChanged: Received signal strength change, phone type is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3500(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3600(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTelRunnable;

    iget-object v2, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    new-instance v3, Landroid/telephony/SignalStrength;

    invoke-direct {v3, p1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-direct {v1, v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTelRunnable;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Landroid/telephony/SignalStrength;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1252
    return-void
.end method
