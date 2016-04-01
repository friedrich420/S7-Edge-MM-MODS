.class Lcom/android/server/content/SyncManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .registers 2

    .prologue
    .line 263
    iput-object p1, p0, this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 265
    iget-object v1, p0, this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$200(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    .line 266
    .local v0, "idle":Z
    iget-object v1, p0, this$0:Lcom/android/server/content/SyncManager;

    # setter for: Lcom/android/server/content/SyncManager;->mDeviceIsIdle:Z
    invoke-static {v1, v0}, Lcom/android/server/content/SyncManager;->access$302(Lcom/android/server/content/SyncManager;Z)Z

    .line 267
    if-eqz v0, :cond_1a

    .line 268
    iget-object v1, p0, this$0:Lcom/android/server/content/SyncManager;

    sget-object v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    .line 274
    :goto_19
    return-void

    .line 272
    :cond_1a
    iget-object v1, p0, this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->sendCheckAlarmsMessage()V
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$100(Lcom/android/server/content/SyncManager;)V

    goto :goto_19
.end method
