.class Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->registerNetworkChangeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;)V
    .registers 2

    .prologue
    .line 1336
    iput-object p1, p0, this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1341
    :try_start_0
    const-string/jumbo v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 1343
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_54

    .line 1344
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->getNetworkStateString(Landroid/net/NetworkInfo$State;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->access$500(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Landroid/net/NetworkInfo$State;)Ljava/lang/String;

    move-result-object v3

    .line 1346
    .local v3, "state":Ljava/lang/String;
    const-string v4, "Disconnected"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 1347
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->access$602(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 1348
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1349
    .local v2, "message":Landroid/os/Message;
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    iget-object v5, p0, this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->access$600(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->isMobileNetwork(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->access$700(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 1350
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 1353
    :goto_3c
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    iget-object v4, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->datausageHandler:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

    invoke-virtual {v4, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1355
    .end local v2    # "message":Landroid/os/Message;
    :cond_43
    const-string v4, "Connected"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 1356
    iget-object v4, p0, this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->access$802(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 1363
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v3    # "state":Ljava/lang/String;
    :cond_54
    :goto_54
    return-void

    .line 1352
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    .restart local v2    # "message":Landroid/os/Message;
    .restart local v3    # "state":Ljava/lang/String;
    :cond_55
    const/4 v4, 0x0

    iput v4, v2, Landroid/os/Message;->arg1:I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_58} :catch_59

    goto :goto_3c

    .line 1360
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "message":Landroid/os/Message;
    .end local v3    # "state":Ljava/lang/String;
    :catch_59
    move-exception v0

    .line 1361
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_54
.end method
