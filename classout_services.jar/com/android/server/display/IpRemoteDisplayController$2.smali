.class Lcom/android/server/display/IpRemoteDisplayController$2;
.super Landroid/content/BroadcastReceiver;
.source "IpRemoteDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/IpRemoteDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;)V
    .registers 2

    .prologue
    .line 189
    iput-object p1, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 193
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "action":Ljava/lang/String;
    const-string v3, "IpRemoteDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "intent received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v3, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;
    invoke-static {v3}, Lcom/android/server/display/IpRemoteDisplayController;->access$500(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    move-result-object v3

    if-nez v3, :cond_2e

    .line 197
    const-string v3, "IpRemoteDisplayController"

    const-string v4, "Bridge Server is not available"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_2d
    :goto_2d
    return-void

    .line 201
    :cond_2e
    const-string v3, "android.intent.action.WIFI_DISPLAY_SINK_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 202
    const-string/jumbo v3, "state"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 203
    .local v1, "wfdSinkState":I
    iget-object v3, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;
    invoke-static {v3}, Lcom/android/server/display/IpRemoteDisplayController;->access$500(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->setSinkState(I)V

    goto :goto_2d

    .line 204
    .end local v1    # "wfdSinkState":I
    :cond_47
    const-string v3, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 205
    const-string/jumbo v3, "state"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 206
    .local v2, "wfdSourceState":I
    iget-object v3, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;
    invoke-static {v3}, Lcom/android/server/display/IpRemoteDisplayController;->access$500(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->setSourceState(I)V

    goto :goto_2d

    .line 207
    .end local v2    # "wfdSourceState":I
    :cond_60
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 208
    iget-object v3, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;
    invoke-static {v3}, Lcom/android/server/display/IpRemoteDisplayController;->access$500(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->setScreenState(I)V

    goto :goto_2d

    .line 209
    :cond_73
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 210
    iget-object v3, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;
    invoke-static {v3}, Lcom/android/server/display/IpRemoteDisplayController;->access$500(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->setScreenState(I)V

    goto :goto_2d

    .line 211
    :cond_85
    const-string v3, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 212
    iget-object v3, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const-string/jumbo v4, "state"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    # setter for: Lcom/android/server/display/IpRemoteDisplayController;->mHDMIConnected:Z
    invoke-static {v3, v4}, Lcom/android/server/display/IpRemoteDisplayController;->access$602(Lcom/android/server/display/IpRemoteDisplayController;Z)Z

    .line 213
    iget-object v3, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mHDMIConnected:Z
    invoke-static {v3}, Lcom/android/server/display/IpRemoteDisplayController;->access$600(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v3

    if-eqz v3, :cond_b5

    iget-object v3, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z
    invoke-static {v3}, Lcom/android/server/display/IpRemoteDisplayController;->access$300(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 214
    const-string v3, "IpRemoteDisplayController"

    const-string v4, "HDMI Connected! we disconnect WFD!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v3, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # invokes: Lcom/android/server/display/IpRemoteDisplayController;->disconnect()V
    invoke-static {v3}, Lcom/android/server/display/IpRemoteDisplayController;->access$700(Lcom/android/server/display/IpRemoteDisplayController;)V

    .line 217
    :cond_b5
    const-string v3, "IpRemoteDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received ACTION_HDMI_PLUGGED : mHDMIConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mHDMIConnected:Z
    invoke-static {v5}, Lcom/android/server/display/IpRemoteDisplayController;->access$600(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d
.end method
