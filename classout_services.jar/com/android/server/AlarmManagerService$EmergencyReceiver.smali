.class Lcom/android/server/AlarmManagerService$EmergencyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmergencyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 4

    .prologue
    .line 3648
    iput-object p1, p0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3649
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3650
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3651
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3652
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3653
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3655
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3656
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3657
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3658
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3660
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 3664
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 3665
    iget-object v5, p0, this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v5

    if-eqz v5, :cond_2e

    iget-object v5, p0, this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v5

    if-eqz v5, :cond_2e

    iget-object v5, p0, this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/emergencymode/EmergencyManager;->getforceBlockUserPkg()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 3701
    :cond_2e
    :goto_2e
    return-void

    .line 3669
    :cond_2f
    iget-object v5, p0, this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->emergencyAlarmHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$1900(Lcom/android/server/AlarmManagerService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2e

    .line 3670
    :cond_39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 3671
    iget-object v5, p0, this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v5

    if-eqz v5, :cond_2e

    iget-object v5, p0, this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 3673
    iget-object v5, p0, this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->emergencyAlarmHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$1900(Lcom/android/server/AlarmManagerService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2e

    .line 3674
    :cond_63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 3675
    const-string/jumbo v5, "reason"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 3676
    .local v4, "reason":I
    if-ne v4, v8, :cond_2e

    .line 3677
    iget-object v5, p0, this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->emergencyAlarmHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$1900(Lcom/android/server/AlarmManagerService;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2e

    .line 3679
    .end local v4    # "reason":I
    :cond_83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 3680
    iget-object v5, p0, this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v5

    if-eqz v5, :cond_2e

    iget-object v5, p0, this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 3682
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 3683
    .local v0, "data":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 3684
    .local v3, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3685
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_2e

    const-string v5, "com.sec.android.app.clockpackage"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 3687
    :try_start_b6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 3688
    .local v2, "ipm":Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v3, v5, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_bf} :catch_112

    move-result-object v1

    .line 3692
    .end local v2    # "ipm":Landroid/content/pm/IPackageManager;
    :goto_c0
    if-eqz v1, :cond_e9

    iget-boolean v5, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_e9

    .line 3693
    iget-object v5, p0, this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->emergencyAlarmHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$1900(Lcom/android/server/AlarmManagerService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3694
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_PACKAGE_CHANGED - Enabled : intent"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 3695
    :cond_e9
    if-eqz v1, :cond_2e

    iget-boolean v5, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_2e

    .line 3696
    iget-object v5, p0, this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->emergencyAlarmHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$1900(Lcom/android/server/AlarmManagerService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3697
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_PACKAGE_CHANGED - Disabled : intent"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 3689
    :catch_112
    move-exception v5

    goto :goto_c0
.end method
