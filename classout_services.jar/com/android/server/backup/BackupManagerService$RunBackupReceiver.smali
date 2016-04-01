.class Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunBackupReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .registers 2

    .prologue
    .line 1180
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "x1"    # Lcom/android/server/backup/BackupManagerService$1;

    .prologue
    .line 1180
    invoke-direct {p0, p1}, <init>(Lcom/android/server/backup/BackupManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1182
    const-string v2, "android.app.backup.intent.RUN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1183
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v2, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1184
    :try_start_11
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_3a

    move-result v2

    if-lez v2, :cond_3d

    .line 1189
    :try_start_1b
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService;->access$200(Lcom/android/server/backup/BackupManagerService;)Landroid/app/AlarmManager;

    move-result-object v2

    iget-object v4, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1190
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_2f
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1b .. :try_end_2f} :catch_31
    .catchall {:try_start_1b .. :try_end_2f} :catchall_3a

    .line 1225
    :goto_2f
    :try_start_2f
    monitor-exit v3

    .line 1227
    :cond_30
    :goto_30
    return-void

    .line 1191
    :catch_31
    move-exception v0

    .line 1192
    .local v0, "ce":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "BackupManagerService"

    const-string v4, "Run init intent cancelled"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 1225
    .end local v0    # "ce":Landroid/app/PendingIntent$CanceledException;
    :catchall_3a
    move-exception v2

    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_3a

    throw v2

    .line 1198
    :cond_3d
    :try_start_3d
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    if-eqz v2, :cond_a3

    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-eqz v2, :cond_a3

    .line 1200
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->isEdmRestoreRequest:Z
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService;->access$600(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    iget-object v4, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mEdmRestoreAppPkgName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->access$700(Lcom/android/server/backup/BackupManagerService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    :cond_61
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->isEdmBackupRequest:Z
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService;->access$800(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 1204
    :cond_69
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/backup/BackupManagerService;->needUpdateBackupAlarm:Z
    invoke-static {v2, v4}, Lcom/android/server/backup/BackupManagerService;->access$902(Lcom/android/server/backup/BackupManagerService;Z)Z

    .line 1205
    monitor-exit v3

    goto :goto_30

    .line 1208
    :cond_71
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    if-nez v2, :cond_9b

    .line 1209
    const-string v2, "BackupManagerService"

    const-string v4, "Running a backup pass"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    .line 1214
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1216
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1217
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2f

    .line 1219
    .end local v1    # "msg":Landroid/os/Message;
    :cond_9b
    const-string v2, "BackupManagerService"

    const-string v4, "Backup time but one already running"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 1222
    :cond_a3
    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backup pass but e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v5, v5, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " p="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v5, v5, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catchall {:try_start_3d .. :try_end_cd} :catchall_3a

    goto/16 :goto_2f
.end method
