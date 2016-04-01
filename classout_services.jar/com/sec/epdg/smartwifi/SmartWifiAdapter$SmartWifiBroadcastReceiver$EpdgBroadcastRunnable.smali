.class Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver$EpdgBroadcastRunnable;
.super Ljava/lang/Object;
.source "SmartWifiAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgBroadcastRunnable"
.end annotation


# instance fields
.field mObj:Ljava/lang/Object;

.field final synthetic this$1:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver;Ljava/lang/Object;)V
    .registers 3
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1210
    iput-object p1, p0, this$1:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1211
    iput-object p2, p0, mObj:Ljava/lang/Object;

    .line 1212
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1216
    iget-object v0, p0, this$1:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver;

    iget-object v1, p0, mObj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver;->processSlowPath(Ljava/lang/Object;)V

    .line 1217
    return-void
.end method
