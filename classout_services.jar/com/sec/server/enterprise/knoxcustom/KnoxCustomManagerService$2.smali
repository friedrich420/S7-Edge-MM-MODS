.class Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "KnoxCustomManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->registerKnoxCustomReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;


# direct methods
.method constructor <init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V
    .registers 2

    .prologue
    .line 404
    iput-object p1, p0, this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 408
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 409
    const-string/jumbo v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_34

    .line 411
    # getter for: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z
    invoke-static {}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$300()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 412
    # getter for: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiEap:Z
    invoke-static {}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$400()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 413
    iget-object v1, p0, this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    # getter for: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiSSID:Ljava/lang/String;
    invoke-static {}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$500()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiPassword:Ljava/lang/String;
    invoke-static {}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$600()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, p1, v2, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$700(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :goto_30
    const/4 v1, 0x0

    # setter for: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z
    invoke-static {v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$302(Z)Z

    .line 421
    :cond_34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 422
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "connected"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 423
    .local v0, "connected":Z
    if-eqz v0, :cond_59

    iget-object v1, p0, this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-virtual {v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbNetState()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 424
    iget-object v1, p0, this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    # invokes: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startStopUsbNet(Landroid/content/Context;)V
    invoke-static {v1, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$1000(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/content/Context;)V

    .line 427
    .end local v0    # "connected":Z
    :cond_59
    return-void

    .line 415
    :cond_5a
    iget-object v1, p0, this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    # getter for: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiSSID:Ljava/lang/String;
    invoke-static {}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$500()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiUsername:Ljava/lang/String;
    invoke-static {}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$800()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiPassword:Ljava/lang/String;
    invoke-static {}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$600()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, p1, v2, v3, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$900(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30
.end method
