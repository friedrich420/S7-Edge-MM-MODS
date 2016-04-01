.class public interface abstract Lcom/sec/epdg/smartwifi/SmartWifiInterface;
.super Ljava/lang/Object;
.source "SmartWifiInterface.java"


# virtual methods
.method public abstract getCurrentWifiRssi(Landroid/content/Context;)I
.end method

.method public abstract getHandoverThresholdMet()Z
.end method

.method public abstract isCallInProgress()Z
.end method

.method public abstract isL2WHandoverProfilingRunning()Z
.end method

.method public abstract isSmartCdmaRunning()Z
.end method

.method public abstract isSmartLteRunning()Z
.end method

.method public abstract isSmartWifiRunning()Z
.end method

.method public abstract isWifiTolteHORecommended(ILjava/lang/Runnable;Ljava/lang/Runnable;)V
.end method

.method public abstract islteToWifiHORecommended(ILjava/lang/Runnable;Ljava/lang/Runnable;)V
.end method

.method public abstract pollAndGetWifiRssi()V
.end method

.method public abstract setHandoverThresholdMet(Z)V
.end method

.method public abstract setLteThreshold(II)V
.end method

.method public abstract setWifiThreshold(III)V
.end method

.method public abstract startCdmaProfiling()V
.end method

.method public abstract startL2WHandoverProfiling()V
.end method

.method public abstract startProfiling(Ljava/net/InetAddress;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;IIIIIIIIII)V
.end method

.method public abstract stopCdmaProfiling()V
.end method

.method public abstract stopL2WHandoverProfiling()V
.end method

.method public abstract stopLteProfiling()V
.end method

.method public abstract stopProfiling()V
.end method
