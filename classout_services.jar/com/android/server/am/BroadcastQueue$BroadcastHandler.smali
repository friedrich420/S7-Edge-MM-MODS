.class final Lcom/android/server/am/BroadcastQueue$BroadcastHandler;
.super Landroid/os/Handler;
.source "BroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BroadcastHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BroadcastQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 235
    iput-object p1, p0, this$0:Lcom/android/server/am/BroadcastQueue;

    .line 236
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 237
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 241
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_36

    .line 260
    :cond_6
    :goto_6
    return-void

    .line 245
    :pswitch_7
    iget-object v1, p0, this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1, v4}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    goto :goto_6

    .line 248
    :pswitch_d
    iget-object v1, p0, this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v2, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 249
    :try_start_12
    iget-object v1, p0, this$0:Lcom/android/server/am/BroadcastQueue;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/am/BroadcastQueue;->broadcastTimeoutLocked(Z)V

    .line 250
    monitor-exit v2

    goto :goto_6

    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v1

    .line 253
    :pswitch_1d
    iget-object v1, p0, this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v1, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    .line 254
    .local v0, "dic":Lcom/android/server/DeviceIdleController$LocalService;
    if-eqz v0, :cond_6

    .line 255
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    int-to-long v2, v2

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistAppDirect(IJZLjava/lang/String;)V

    goto :goto_6

    .line 241
    :pswitch_data_36
    .packed-switch 0xc8
        :pswitch_7
        :pswitch_d
        :pswitch_1d
    .end packed-switch
.end method
