.class Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTimer;
.super Landroid/os/CountDownTimer;
.source "SmartWifiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartWifiTimer"
.end annotation


# static fields
.field private static final EPDG_RATE_LIMIT_TICK:I = 0x2710


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# direct methods
.method constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;J)V
    .registers 6
    .param p2, "millisInFuture"    # J

    .prologue
    .line 2007
    iput-object p1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .line 2008
    const-wide/16 v0, 0x2710

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 2009
    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 2016
    const-string v0, "[SMARTWIFI]"

    const-string v1, "SmartWifiTimer finished"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v1, 0x0

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->doLteToWifiHO(I)Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$5000(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2018
    const-string v0, "[SMARTWIFI]"

    const-string v1, "SmartWifiTimer L2W is good to go"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$400(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiOn:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2600(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2021
    :cond_2a
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v1, 0x0

    # setter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiTimer:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTimer;
    invoke-static {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$6002(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTimer;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTimer;

    .line 2022
    return-void
.end method

.method public onTick(J)V
    .registers 5
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 2012
    const-string v0, "[SMARTWIFI]"

    const-string v1, "SmartWifiTimer tick"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    return-void
.end method
