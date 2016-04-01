.class Lcom/android/server/bridge/BridgeProxy$IBridgeCommandExecutor;
.super Landroid/content/ICommandExeCallBack$Stub;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/BridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IBridgeCommandExecutor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/bridge/BridgeProxy;)V
    .registers 2

    .prologue
    .line 1250
    iput-object p1, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {p0}, Landroid/content/ICommandExeCallBack$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p2, "x1"    # Lcom/android/server/bridge/BridgeProxy$1;

    .prologue
    .line 1250
    invoke-direct {p0, p1}, <init>(Lcom/android/server/bridge/BridgeProxy;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/app/Command;)V
    .registers 7
    .param p1, "command"    # Landroid/app/Command;

    .prologue
    .line 1253
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v3, "execute"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 1254
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IBridgeCommandExecutor - executeCommand() - will start the commands"

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    if-eqz p1, :cond_4b

    .line 1256
    const-string/jumbo v2, "launchIntent"

    iget-object v3, p1, Landroid/app/Command;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 1258
    :try_start_1e
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " IBridgeCommandExecutor launchIntent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/Command;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Landroid/app/Command;->intent:Landroid/content/Intent;

    iget-object v4, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_4b} :catch_4c

    .line 1282
    :cond_4b
    :goto_4b
    return-void

    .line 1260
    :catch_4c
    move-exception v0

    .line 1261
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception caught in execute command"

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 1263
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_57
    const-string/jumbo v2, "launchNotification"

    iget-object v3, p1, Landroid/app/Command;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1264
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, " IBridgeCommandExecutor launchPendingIntent is received"

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    :try_start_6b
    iget-object v2, p1, Landroid/app/Command;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_4b

    .line 1267
    iget-object v1, p1, Landroid/app/Command;->contentIntent:Landroid/app/PendingIntent;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_71} :catch_93

    .line 1269
    .local v1, "wrappedContentIntent":Landroid/app/PendingIntent;
    :try_start_71
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " IBridgeCommandExecutor launchContentIntent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/Command;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_90
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_71 .. :try_end_90} :catch_91
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_90} :catch_93

    goto :goto_4b

    .line 1272
    :catch_91
    move-exception v2

    goto :goto_4b

    .line 1277
    .end local v1    # "wrappedContentIntent":Landroid/app/PendingIntent;
    :catch_93
    move-exception v0

    .line 1278
    .restart local v0    # "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, " Exception caught in execute command"

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b
.end method
