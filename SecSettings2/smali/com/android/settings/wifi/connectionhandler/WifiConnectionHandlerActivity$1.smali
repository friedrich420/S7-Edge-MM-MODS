.class Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnectionHandlerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$1;->this$0:Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "action":Ljava/lang/String;
    const-string v3, "WifiConnectionHandlerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 51
    .local v2, "mNetworkInfo":Landroid/net/NetworkInfo;
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    const-string v3, "WifiConnectionHandlerActivity"

    const-string v4, "Destroy the popup, because connect again. "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$1;->this$0:Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;

    # getter for: Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mIsReceiverRegistered:Z
    invoke-static {v3}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->access$000(Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    iget-object v3, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$1;->this$0:Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;

    iget-object v4, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$1;->this$0:Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;

    # getter for: Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->access$100(Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 56
    iget-object v3, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$1;->this$0:Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;

    const/4 v4, 0x0

    # setter for: Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mIsReceiverRegistered:Z
    invoke-static {v3, v4}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->access$002(Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;Z)Z

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$1;->this$0:Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;

    invoke-virtual {v3}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v2    # "mNetworkInfo":Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    return-void

    .line 59
    .restart local v2    # "mNetworkInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
