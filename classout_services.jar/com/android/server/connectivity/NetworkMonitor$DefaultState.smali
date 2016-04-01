.class Lcom/android/server/connectivity/NetworkMonitor$DefaultState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .registers 2

    .prologue
    .line 354
    iput-object p1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$1;

    .prologue
    .line 354
    invoke-direct {p0, p1}, <init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v7, 0x82002

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 357
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 358
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1e8

    .line 449
    :goto_28
    :pswitch_28
    return v5

    .line 360
    :pswitch_29
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v2, "Lingering"

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mLingeringState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$600(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$700(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_28

    .line 364
    :pswitch_3c
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v2, "Connected"

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v5, :cond_75

    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v1

    if-nez v1, :cond_75

    .line 368
    const-string v1, "NetworkMonitor"

    const-string/jumbo v2, "registerReceiver Captive portal receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$900(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.android.net.wifi.CAPTIVE_PORTAL_AUTHENTICATED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 371
    :cond_75
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1100(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1200(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_28

    .line 374
    :pswitch_81
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v2, "Disconnected - quitting"

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v5, :cond_d7

    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v1

    if-nez v1, :cond_d7

    .line 378
    const-string v1, "NetworkMonitor"

    const-string/jumbo v2, "unregisterReceiver Captive portal receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :try_start_a4
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$900(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_b3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a4 .. :try_end_b3} :catch_ba

    .line 392
    :cond_b3
    :goto_b3
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->quit()V
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1400(Lcom/android/server/connectivity/NetworkMonitor;)V

    goto/16 :goto_28

    .line 381
    :catch_ba
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "NetworkMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_b3

    .line 386
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_d7
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1300(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    move-result-object v1

    if-eqz v1, :cond_b3

    .line 387
    const-string v1, "NetworkMonitor"

    const-string/jumbo v2, "unregisterReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1300(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 389
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1302(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    goto :goto_b3

    .line 395
    :pswitch_fd
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v2, "Forcing reevaluation - captive portal"

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 396
    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v1

    if-nez v1, :cond_10f

    .line 398
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalCheckDone:Z
    invoke-static {v1, v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$1502(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 403
    :cond_10f
    :pswitch_10f
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Forcing reevaluation for UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1602(Lcom/android/server/connectivity/NetworkMonitor;I)I

    .line 405
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1100(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1700(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto/16 :goto_28

    .line 408
    :pswitch_13d
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CaptivePortal App responded with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 409
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_20a

    .line 446
    :goto_15c
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalRegistered:Z
    invoke-static {v1, v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$2302(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    goto/16 :goto_28

    .line 412
    :pswitch_163
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mAuthCompleted:Z
    invoke-static {v1, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$1802(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 413
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$2000(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_15c

    .line 416
    :pswitch_174
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z
    invoke-static {v1, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$2102(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 417
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mAuthCompleted:Z
    invoke-static {v1, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$1802(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 420
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$2200(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_15c

    .line 423
    :pswitch_18a
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z
    invoke-static {v1, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$2102(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 425
    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v1

    if-nez v1, :cond_1bb

    .line 428
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalRegistered:Z
    invoke-static {v1, v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$2302(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 429
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalCheckDone:Z
    invoke-static {v1, v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$1502(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 430
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$2400(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v3, 0x3

    iget-object v4, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    invoke-virtual {v2, v7, v5, v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 432
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z
    invoke-static {v1, v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$2502(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    goto :goto_15c

    .line 436
    :cond_1bb
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z
    invoke-static {v1, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$2502(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 437
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$2400(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v3, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v3

    invoke-virtual {v2, v7, v5, v6, v3}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 441
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I
    invoke-static {v1, v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$1602(Lcom/android/server/connectivity/NetworkMonitor;I)I

    .line 442
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1100(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$2600(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto/16 :goto_15c

    .line 358
    nop

    :pswitch_data_1e8
    .packed-switch 0x82001
        :pswitch_3c
        :pswitch_28
        :pswitch_29
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_81
        :pswitch_10f
        :pswitch_13d
        :pswitch_28
        :pswitch_28
        :pswitch_10f
        :pswitch_28
        :pswitch_28
        :pswitch_fd
    .end packed-switch

    .line 409
    :pswitch_data_20a
    .packed-switch 0x0
        :pswitch_163
        :pswitch_18a
        :pswitch_174
    .end packed-switch
.end method
