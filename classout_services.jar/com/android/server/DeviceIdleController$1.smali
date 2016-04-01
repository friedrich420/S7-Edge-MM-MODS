.class Lcom/android/server/DeviceIdleController$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2

    .prologue
    .line 243
    iput-object p1, p0, this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 245
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 246
    const-string/jumbo v4, "plugged"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 247
    .local v1, "plugged":I
    iget-object v4, p0, this$0:Lcom/android/server/DeviceIdleController;

    if-eqz v1, :cond_19

    const/4 v3, 0x1

    :cond_19
    invoke-virtual {v4, v3}, Lcom/android/server/DeviceIdleController;->updateChargingLocked(Z)V

    .line 261
    .end local v1    # "plugged":I
    :cond_1c
    :goto_1c
    return-void

    .line 248
    :cond_1d
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 249
    const-string v4, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 250
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 252
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .local v2, "ssp":Ljava/lang/String;
    if-eqz v2, :cond_1c

    .line 253
    iget-object v3, p0, this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3, v2}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    goto :goto_1c

    .line 256
    .end local v0    # "data":Landroid/net/Uri;
    .end local v2    # "ssp":Ljava/lang/String;
    :cond_43
    const-string v3, "com.android.server.device_idle.STEP_IDLE_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 257
    iget-object v4, p0, this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v4

    .line 258
    :try_start_52
    iget-object v3, p0, this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked()V

    .line 259
    monitor-exit v4

    goto :goto_1c

    :catchall_59
    move-exception v3

    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_59

    throw v3
.end method
