.class Lcom/android/settings/ethernet/EthernetSettings$1;
.super Landroid/database/ContentObserver;
.source "EthernetSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ethernet/EthernetSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ethernet/EthernetSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ethernet/EthernetSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings$1;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings$1;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    # invokes: Lcom/android/settings/ethernet/EthernetSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/ethernet/EthernetSettings;->access$000(Lcom/android/settings/ethernet/EthernetSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "eth_device_conn"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 124
    .local v0, "eth_connected_state":I
    const-string v1, "EthernetSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mEthDeviceStateReceiver - ethernet_conn_state :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings$1;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    const/4 v2, 0x1

    # invokes: Lcom/android/settings/ethernet/EthernetSettings;->removeDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings/ethernet/EthernetSettings;->access$100(Lcom/android/settings/ethernet/EthernetSettings;I)V

    .line 128
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings$1;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/ethernet/EthernetSettings;->mEthConfigDialog:Lcom/android/settings/ethernet/EthernetConfigDialog;
    invoke-static {v1, v2}, Lcom/android/settings/ethernet/EthernetSettings;->access$202(Lcom/android/settings/ethernet/EthernetSettings;Lcom/android/settings/ethernet/EthernetConfigDialog;)Lcom/android/settings/ethernet/EthernetConfigDialog;

    .line 129
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings$1;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-virtual {v1}, Lcom/android/settings/ethernet/EthernetSettings;->finish()V

    .line 131
    :cond_0
    return-void
.end method
