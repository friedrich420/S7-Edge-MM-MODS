.class public Lcom/sec/epdg/smartwifi/SmartWifiAdapter$StopProfilingRunnable;
.super Ljava/lang/Object;
.source "SmartWifiAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StopProfilingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V
    .registers 2

    .prologue
    .line 386
    iput-object p1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 389
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->clearTasksArray()V
    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$800(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V

    .line 390
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;
    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$500(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->clearReadings()V

    .line 391
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setHandoverThresholdMet(Z)V

    .line 392
    return-void
.end method
