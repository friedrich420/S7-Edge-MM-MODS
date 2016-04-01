.class Lcom/android/server/am/ActivityManagerService$AppTaskImpl;
.super Landroid/app/IAppTask$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppTaskImpl"
.end annotation


# instance fields
.field private mCallingUid:I

.field private mTaskId:I

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;II)V
    .registers 4
    .param p2, "taskId"    # I
    .param p3, "callingUid"    # I

    .prologue
    .line 28785
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/app/IAppTask$Stub;-><init>()V

    .line 28786
    iput p2, p0, mTaskId:I

    .line 28787
    iput p3, p0, mCallingUid:I

    .line 28788
    return-void
.end method

.method private checkCaller()V
    .registers 4

    .prologue
    .line 28791
    iget v0, p0, mCallingUid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eq v0, v1, :cond_31

    .line 28792
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mCallingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match caller of getAppTasks(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28795
    :cond_31
    return-void
.end method


# virtual methods
.method public finishAndRemoveTask()V
    .registers 8

    .prologue
    .line 28799
    invoke-direct {p0}, checkCaller()V

    .line 28801
    iget-object v3, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 28802
    :try_start_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_36

    move-result-wide v0

    .line 28804
    .local v0, "origId":J
    :try_start_a
    iget-object v2, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget v4, p0, mTaskId:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    # invokes: Lcom/android/server/am/ActivityManagerService;->removeTaskByIdLocked(IZZ)Z
    invoke-static {v2, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->access$2900(Lcom/android/server/am/ActivityManagerService;IZZ)Z

    move-result v2

    if-nez v2, :cond_39

    .line 28805
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find task ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mTaskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_31

    .line 28808
    :catchall_31
    move-exception v2

    :try_start_32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 28810
    .end local v0    # "origId":J
    :catchall_36
    move-exception v2

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_36

    throw v2

    .line 28808
    .restart local v0    # "origId":J
    :cond_39
    :try_start_39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28810
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_36

    .line 28811
    return-void
.end method

.method public getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 8

    .prologue
    .line 28815
    invoke-direct {p0}, checkCaller()V

    .line 28817
    iget-object v4, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 28818
    :try_start_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_36

    move-result-wide v0

    .line 28820
    .local v0, "origId":J
    :try_start_a
    iget-object v3, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, p0, mTaskId:I

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 28821
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v2, :cond_39

    .line 28822
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find task ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mTaskId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_31

    .line 28826
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_31
    move-exception v3

    :try_start_32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 28828
    .end local v0    # "origId":J
    :catchall_36
    move-exception v3

    monitor-exit v4
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_36

    throw v3

    .line 28824
    .restart local v0    # "origId":J
    .restart local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_39
    :try_start_39
    iget-object v3, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->createRecentTaskInfoFromTaskRecord(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-static {v3, v2}, Lcom/android/server/am/ActivityManagerService;->access$3000(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_31

    move-result-object v3

    .line 28826
    :try_start_3f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_36

    return-object v3
.end method

.method public moveToFront()V
    .registers 4

    .prologue
    .line 28833
    invoke-direct {p0}, checkCaller()V

    .line 28835
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, mTaskId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecentsInner(ILandroid/os/Bundle;)I

    .line 28836
    return-void
.end method

.method public setExcludeFromRecents(Z)V
    .registers 10
    .param p1, "exclude"    # Z

    .prologue
    .line 28863
    invoke-direct {p0}, checkCaller()V

    .line 28865
    iget-object v5, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 28866
    :try_start_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_36

    move-result-wide v2

    .line 28868
    .local v2, "origId":J
    :try_start_a
    iget-object v4, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v6, p0, mTaskId:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 28869
    .local v1, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v1, :cond_39

    .line 28870
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find task ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mTaskId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_31

    .line 28880
    .end local v1    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_31
    move-exception v4

    :try_start_32
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 28882
    .end local v2    # "origId":J
    :catchall_36
    move-exception v4

    monitor-exit v5
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_36

    throw v4

    .line 28872
    .restart local v1    # "tr":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "origId":J
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 28873
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_49

    .line 28874
    const/high16 v4, 0x800000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_44
    .catchall {:try_start_39 .. :try_end_44} :catchall_31

    .line 28880
    :goto_44
    :try_start_44
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28882
    monitor-exit v5
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_36

    .line 28883
    return-void

    .line 28876
    :cond_49
    :try_start_49
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const v6, -0x800001

    and-int/2addr v4, v6

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_54
    .catchall {:try_start_49 .. :try_end_54} :catchall_31

    goto :goto_44
.end method

.method public startActivity(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 27
    .param p1, "whoThread"    # Landroid/os/IBinder;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "options"    # Landroid/os/Bundle;

    .prologue
    .line 28841
    invoke-direct/range {p0 .. p0}, checkCaller()V

    .line 28843
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v18

    .line 28846
    .local v18, "callingUser":I
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 28847
    :try_start_c
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget v4, v0, mTaskId:I

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v20

    .line 28848
    .local v20, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v20, :cond_3c

    .line 28849
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find task ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, mTaskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28855
    .end local v20    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_39
    move-exception v1

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_39

    throw v1

    .line 28851
    .restart local v20    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_3c
    :try_start_3c
    invoke-static/range {p1 .. p1}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    .line 28852
    .local v2, "appThread":Landroid/app/IApplicationThread;
    if-nez v2, :cond_5b

    .line 28853
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad app thread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28855
    :cond_5b
    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_3c .. :try_end_5c} :catchall_39

    .line 28856
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v16, p5

    invoke-virtual/range {v1 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ZILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I

    move-result v1

    return v1
.end method
