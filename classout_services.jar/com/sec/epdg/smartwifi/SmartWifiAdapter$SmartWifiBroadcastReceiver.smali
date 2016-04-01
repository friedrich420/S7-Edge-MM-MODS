.class abstract Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartWifiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SmartWifiBroadcastReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver$EpdgBroadcastRunnable;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1193
    iput-object p1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1194
    iput-object p2, p0, mHandler:Landroid/os/Handler;

    .line 1195
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1203
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver$EpdgBroadcastRunnable;

    invoke-virtual {p0, p1, p2}, processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver$EpdgBroadcastRunnable;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1205
    return-void
.end method

.method public abstract processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
.end method

.method public abstract processSlowPath(Ljava/lang/Object;)V
.end method
