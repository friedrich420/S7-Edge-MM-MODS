.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .registers 2

    .prologue
    .line 473
    iput-object p1, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 476
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p0}, getSendingUserId()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 479
    .local v1, "userHandle":I
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 483
    :cond_20
    iget-object v2, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1$1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 490
    :cond_2c
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string v2, "android.security.STORAGE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 492
    :cond_3c
    new-instance v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;

    iget-object v3, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {v2, v3, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/Intent;

    aput-object p2, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 494
    :cond_4b
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 495
    iget-object v2, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeUserData(I)V

    .line 516
    :cond_58
    :goto_58
    return-void

    .line 496
    :cond_59
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 499
    :cond_69
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 501
    iget-object v3, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    monitor-enter v3

    .line 502
    :try_start_74
    iget-object v2, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 503
    monitor-exit v3
    :try_end_7c
    .catchall {:try_start_74 .. :try_end_7c} :catchall_82

    .line 505
    :cond_7c
    iget-object v2, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->handlePackagesChanged(Ljava/lang/String;I)V
    invoke-static {v2, v5, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$200(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    goto :goto_58

    .line 503
    :catchall_82
    move-exception v2

    :try_start_83
    monitor-exit v3
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw v2

    .line 506
    :cond_85
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9d

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 509
    :cond_9d
    iget-object v2, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->handlePackagesChanged(Ljava/lang/String;I)V
    invoke-static {v2, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$200(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    goto :goto_58

    .line 510
    :cond_ab
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_c9

    .line 512
    iget-object v2, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->handlePackagesChanged(Ljava/lang/String;I)V
    invoke-static {v2, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$200(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    goto :goto_58

    .line 513
    :cond_c9
    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 514
    iget-object v2, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearWipeProfileNotification()V
    invoke-static {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$300(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    goto :goto_58
.end method
