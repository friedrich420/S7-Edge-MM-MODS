.class Lcom/android/server/am/ActivityManagerService$36;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->stopUserLocked(ILandroid/app/IStopUserCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$shutdownIntent:Landroid/content/Intent;

.field final synthetic val$shutdownReceiver:Landroid/content/IIntentReceiver;

.field final synthetic val$userId:I

.field final synthetic val$uss:Lcom/android/server/am/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/UserState;ILandroid/content/Intent;Landroid/content/IIntentReceiver;)V
    .registers 6

    .prologue
    .line 28017
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, val$uss:Lcom/android/server/am/UserState;

    iput p3, p0, val$userId:I

    iput-object p4, p0, val$shutdownIntent:Landroid/content/Intent;

    iput-object p5, p0, val$shutdownReceiver:Landroid/content/IIntentReceiver;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 27
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    .prologue
    .line 28022
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 28023
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, val$uss:Lcom/android/server/am/UserState;

    iget v1, v1, Lcom/android/server/am/UserState;->mState:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_10

    .line 28025
    monitor-exit v2

    .line 28038
    :goto_f
    return-void

    .line 28027
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, val$uss:Lcom/android/server/am/UserState;

    const/4 v3, 0x3

    iput v3, v1, Lcom/android/server/am/UserState;->mState:I

    .line 28028
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_6c

    .line 28029
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const/16 v2, 0x4007

    move-object/from16 v0, p0

    iget v3, v0, val$userId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, val$userId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 28032
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p0

    iget v2, v0, val$userId:I

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->stopUser(I)V

    .line 28033
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 28034
    :try_start_43
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, val$shutdownIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, val$shutdownReceiver:Landroid/content/IIntentReceiver;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v16, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, val$userId:I

    move/from16 v17, v0

    # invokes: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    invoke-static/range {v1 .. v17}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 28037
    monitor-exit v18

    goto :goto_f

    :catchall_69
    move-exception v1

    monitor-exit v18
    :try_end_6b
    .catchall {:try_start_43 .. :try_end_6b} :catchall_69

    throw v1

    .line 28028
    :catchall_6c
    move-exception v1

    :try_start_6d
    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v1
.end method
