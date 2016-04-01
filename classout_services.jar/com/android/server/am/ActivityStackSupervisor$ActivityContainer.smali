.class Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
.super Landroid/app/IActivityContainer$Stub;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActivityContainer"
.end annotation


# static fields
.field static final CONTAINER_STATE_FINISHING:I = 0x2

.field static final CONTAINER_STATE_HAS_SURFACE:I = 0x0

.field static final CONTAINER_STATE_NO_SURFACE:I = 0x1

.field static final FORCE_NEW_TASK_FLAGS:I = 0x18010000


# instance fields
.field detachDebugException:Ljava/lang/RuntimeException;

.field mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

.field mCallback:Landroid/app/IActivityContainerCallback;

.field mContainerState:I

.field mIdString:Ljava/lang/String;

.field mParentActivity:Lcom/android/server/am/ActivityRecord;

.field final mStack:Lcom/android/server/am/ActivityStack;

.field final mStackId:I

.field mVisible:Z

.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .registers 5
    .param p2, "stackId"    # I

    .prologue
    .line 7882
    if-nez p2, :cond_8

    const/4 v0, 0x1

    :goto_3
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, <init>(Lcom/android/server/am/ActivityStackSupervisor;III)V

    .line 7883
    return-void

    .line 7882
    :cond_8
    const/4 v0, 0x2

    goto :goto_3
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;III)V
    .registers 8
    .param p2, "stackId"    # I
    .param p3, "stackType"    # I
    .param p4, "zone"    # I

    .prologue
    const/4 v1, 0x0

    .line 7885
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Landroid/app/IActivityContainer$Stub;-><init>()V

    .line 7858
    iput-object v1, p0, mCallback:Landroid/app/IActivityContainerCallback;

    .line 7860
    iput-object v1, p0, mParentActivity:Lcom/android/server/am/ActivityRecord;

    .line 7863
    const/4 v0, 0x1

    iput-boolean v0, p0, mVisible:Z

    .line 7871
    const/4 v0, 0x0

    iput v0, p0, mContainerState:I

    .line 7873
    iput-object v1, p0, detachDebugException:Ljava/lang/RuntimeException;

    .line 7887
    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 7888
    :try_start_15
    iput p2, p0, mStackId:I

    .line 7890
    new-instance v0, Lcom/android/server/am/ActivityStack;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;
    invoke-static {p1}, Lcom/android/server/am/ActivityStackSupervisor;->access$900(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/RecentTasks;

    move-result-object v2

    invoke-direct {v0, p0, v2, p3, p4}, Lcom/android/server/am/ActivityStack;-><init>(Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/RecentTasks;II)V

    iput-object v0, p0, mStack:Lcom/android/server/am/ActivityStack;

    .line 7892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivtyContainer{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, mStackId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mIdString:Ljava/lang/String;

    .line 7894
    monitor-exit v1

    .line 7895
    return-void

    .line 7894
    :catchall_42
    move-exception v0

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_15 .. :try_end_44} :catchall_42

    throw v0
.end method

.method private checkEmbeddedAllowedInner(ILandroid/content/Intent;Ljava/lang/String;)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;

    .prologue
    .line 8040
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 8041
    .local v6, "aInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v6, :cond_1c

    iget v0, v6, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-nez v0, :cond_1c

    .line 8042
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Attempt to embed activity that has not set allowEmbedded=\"true\""

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8045
    :cond_1c
    return-void
.end method


# virtual methods
.method public add(ILcom/android/server/am/TaskRecord;)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 8244
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 8245
    :try_start_5
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-nez v0, :cond_f

    .line 8246
    monitor-exit v1

    .line 8252
    :goto_e
    return-void

    .line 8248
    :cond_f
    invoke-virtual {p0}, isAttachedLocked()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 8249
    iget-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 8251
    :cond_1c
    monitor-exit v1

    goto :goto_e

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 8049
    return-object p0
.end method

.method public attachToDisplay(I)V
    .registers 5
    .param p1, "displayId"    # I

    .prologue
    .line 7916
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 7917
    :try_start_5
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/am/ActivityStackSupervisor;->access$1000(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 7918
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-nez v0, :cond_15

    .line 7919
    monitor-exit v2

    .line 7923
    :goto_14
    return-void

    .line 7921
    :cond_15
    invoke-virtual {p0, v0}, attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V

    .line 7922
    monitor-exit v2

    goto :goto_14

    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V
    .registers 3
    .param p1, "activityDisplay"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .prologue
    .line 7899
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;Landroid/graphics/Rect;)V

    .line 7900
    return-void
.end method

.method attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "activityDisplay"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 7905
    iput-object p1, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 7906
    iget-object v0, p0, mStack:Lcom/android/server/am/ActivityStack;

    iget v1, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    iput v1, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 7907
    iget-object v0, p0, mStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 7909
    iget-object v0, p0, mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->attachActivities(Lcom/android/server/am/ActivityStack;)V

    .line 7910
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, mStackId:I

    iget v2, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    iget-object v3, p0, mStack:Lcom/android/server/am/ActivityStack;

    iget v3, v3, Lcom/android/server/am/ActivityStack;->mStackType:I

    iget-object v4, p0, mStack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackZone:I

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->attachStack(IIIILandroid/graphics/Rect;)V

    .line 7912
    return-void
.end method

.method protected detachLocked()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 7980
    iget-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_30

    .line 7984
    iget-object v0, p0, mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivitiesLocked()V

    .line 7987
    iget-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v1, p0, mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->detachActivitiesLocked(Lcom/android/server/am/ActivityStack;)V

    .line 7988
    iput-object v2, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 7989
    iget-object v0, p0, mStack:Lcom/android/server/am/ActivityStack;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 7990
    iget-object v0, p0, mStack:Lcom/android/server/am/ActivityStack;

    iput-object v2, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 7991
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, mStackId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->detachStack(I)V

    .line 7992
    sget-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->SAFE_DEBUG:Z

    if-eqz v0, :cond_30

    .line 7993
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object v0, p0, detachDebugException:Ljava/lang/RuntimeException;

    .line 7996
    :cond_30
    return-void
.end method

.method getBounds(Landroid/graphics/Point;)V
    .registers 5
    .param p1, "outBounds"    # Landroid/graphics/Point;

    .prologue
    .line 8066
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 8067
    :try_start_5
    iget-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_10

    .line 8068
    iget-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->getBounds(Landroid/graphics/Point;)V

    .line 8072
    :goto_e
    monitor-exit v1

    .line 8073
    return-void

    .line 8070
    :cond_10
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_e

    .line 8072
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public getDisplayId()I
    .registers 3

    .prologue
    .line 7927
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 7928
    :try_start_5
    iget-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_f

    .line 7929
    iget-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    monitor-exit v1

    .line 7932
    :goto_e
    return v0

    .line 7931
    :cond_f
    monitor-exit v1

    .line 7932
    const/4 v0, -0x1

    goto :goto_e

    .line 7931
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v0
.end method

.method getOuter()Lcom/android/server/am/ActivityStackSupervisor;
    .registers 2

    .prologue
    .line 8058
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    return-object v0
.end method

.method public getStackId()I
    .registers 3

    .prologue
    .line 7937
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 7938
    :try_start_5
    iget v0, p0, mStackId:I

    monitor-exit v1

    return v0

    .line 7939
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public injectEvent(Landroid/view/InputEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v2, 0x0

    .line 7944
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7946
    .local v0, "origId":J
    :try_start_5
    iget-object v3, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_28

    .line 7947
    :try_start_a
    iget-object v4, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v4, :cond_20

    .line 7948
    iget-object v2, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    iget-object v4, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v4, v5}, Landroid/hardware/input/InputManagerInternal;->injectInputEvent(Landroid/view/InputEvent;II)Z

    move-result v2

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_25

    .line 7955
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1f
    return v2

    .line 7952
    :cond_20
    :try_start_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_25

    .line 7955
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1f

    .line 7952
    :catchall_25
    move-exception v2

    :try_start_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    :try_start_27
    throw v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    .line 7955
    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public insertGlobalTaskAtTop(Lcom/android/server/am/TaskRecord;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 8157
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, insertGlobalTaskAtTop(Lcom/android/server/am/TaskRecord;I)V

    .line 8158
    return-void
.end method

.method public insertGlobalTaskAtTop(Lcom/android/server/am/TaskRecord;I)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "homeIdx"    # I

    .prologue
    .line 8169
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, insertGlobalTaskAtTop(Lcom/android/server/am/TaskRecord;IZ)V

    .line 8170
    return-void
.end method

.method public insertGlobalTaskAtTop(Lcom/android/server/am/TaskRecord;IZ)V
    .registers 13
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "homeIdx"    # I
    .param p3, "showForAllUsers"    # Z

    .prologue
    const/4 v8, 0x1

    .line 8172
    iget-object v4, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v4, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 8173
    :try_start_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Common_SupportTwoPhoneService"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_21

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Common_SupportDualNumberService"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_21

    .line 8175
    const/4 p3, 0x0

    .line 8177
    :cond_21
    iget-object v4, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v4, :cond_66

    .line 8178
    iget-object v4, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 8181
    .local v3, "taskNdx":I
    const/4 v1, 0x0

    .line 8182
    .local v1, "isProfiled":Z
    if-eqz p3, :cond_68

    .line 8183
    const/4 v1, 0x1

    .line 8187
    :goto_31
    if-nez v1, :cond_4d

    .line 8189
    :cond_33
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_4b

    .line 8190
    iget-object v6, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v6, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v4

    if-nez v4, :cond_33

    .line 8194
    :cond_4b
    add-int/lit8 v3, v3, 0x1

    .line 8199
    :cond_4d
    if-lez v3, :cond_5f

    .line 8200
    move v0, v3

    .line 8201
    .local v0, "idx":I
    :goto_50
    if-lez v0, :cond_5c

    .line 8202
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    if-eqz v4, :cond_71

    if-gt v0, p2, :cond_71

    .line 8233
    :cond_5c
    :goto_5c
    if-ltz v0, :cond_5f

    .line 8234
    move v3, v0

    .line 8238
    .end local v0    # "idx":I
    :cond_5f
    iget-object v4, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 8240
    .end local v1    # "isProfiled":Z
    .end local v3    # "taskNdx":I
    :cond_66
    monitor-exit v5

    .line 8241
    return-void

    .line 8185
    .restart local v1    # "isProfiled":Z
    .restart local v3    # "taskNdx":I
    :cond_68
    iget-object v4, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v6, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v1

    goto :goto_31

    .line 8205
    .restart local v0    # "idx":I
    :cond_71
    iget-object v4, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 8208
    .local v2, "targetTask":Lcom/android/server/am/TaskRecord;
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isVRStack()Z

    move-result v4

    if-nez v4, :cond_9e

    iget-object v4, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isVRStack()Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 8209
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v4

    if-ne v4, v8, :cond_9b

    .line 8210
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 8211
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 8201
    :cond_9b
    add-int/lit8 v0, v0, -0x1

    goto :goto_50

    .line 8218
    :cond_9e
    iget-object v4, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v6, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v4

    if-ne v1, v4, :cond_5c

    .line 8222
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getLayer()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getLayer()I

    move-result v6

    if-ge v4, v6, :cond_5c

    .line 8226
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v4

    if-nez v4, :cond_c4

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v4

    if-eqz v4, :cond_9b

    :cond_c4
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_9b

    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v6, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-ne v4, v6, :cond_9b

    goto :goto_5c

    .line 8240
    .end local v0    # "idx":I
    .end local v1    # "isProfiled":Z
    .end local v2    # "targetTask":Lcom/android/server/am/TaskRecord;
    .end local v3    # "taskNdx":I
    :catchall_d3
    move-exception v4

    monitor-exit v5
    :try_end_d5
    .catchall {:try_start_6 .. :try_end_d5} :catchall_d3

    throw v4
.end method

.method isAttachedLocked()Z
    .registers 2

    .prologue
    .line 8062
    iget-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isEligibleForNewTasks()Z
    .registers 2

    .prologue
    .line 8091
    const/4 v0, 0x1

    return v0
.end method

.method public moveGlobalTaskToTop(Lcom/android/server/am/TaskRecord;)V
    .registers 3
    .param p1, "top"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 8264
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, moveGlobalTaskToTop(Lcom/android/server/am/TaskRecord;Z)V

    .line 8265
    return-void
.end method

.method public moveGlobalTaskToTop(Lcom/android/server/am/TaskRecord;Z)V
    .registers 6
    .param p1, "top"    # Lcom/android/server/am/TaskRecord;
    .param p2, "showForAllUsers"    # Z

    .prologue
    .line 8267
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 8268
    :try_start_5
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-nez v1, :cond_f

    .line 8269
    monitor-exit v2

    .line 8282
    :goto_e
    return-void

    .line 8271
    :cond_f
    iget-object v1, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v1, :cond_2b

    .line 8272
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 8273
    iget-object v1, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 8274
    .local v0, "homeIdx":I
    iget-object v1, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8275
    invoke-virtual {p0, p1, v0}, insertGlobalTaskAtTop(Lcom/android/server/am/TaskRecord;I)V

    .line 8281
    .end local v0    # "homeIdx":I
    :cond_2b
    :goto_2b
    monitor-exit v2

    goto :goto_e

    :catchall_2d
    move-exception v1

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_2d

    throw v1

    .line 8277
    :cond_30
    :try_start_30
    iget-object v1, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8278
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, p2}, insertGlobalTaskAtTop(Lcom/android/server/am/TaskRecord;IZ)V
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_2d

    goto :goto_2b
.end method

.method public moveTaskToBackLocked(Lcom/android/server/am/TaskRecord;)V
    .registers 9
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 8285
    iget-object v4, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v4, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 8286
    :try_start_5
    invoke-virtual {p0, p1}, remove(Lcom/android/server/am/TaskRecord;)Z

    .line 8287
    const/4 v3, 0x0

    .line 8288
    .local v3, "idx":I
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 8289
    const/4 v1, 0x0

    .line 8290
    .local v1, "bottom":Lcom/android/server/am/TaskRecord;
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 8291
    .local v0, "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2b

    .line 8292
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p1, :cond_40

    .line 8293
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "bottom":Lcom/android/server/am/TaskRecord;
    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 8297
    .restart local v1    # "bottom":Lcom/android/server/am/TaskRecord;
    :cond_2b
    if-eqz v1, :cond_3b

    .line 8298
    iget-object v4, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v6, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 8301
    .end local v0    # "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v1    # "bottom":Lcom/android/server/am/TaskRecord;
    .end local v2    # "i":I
    :cond_3b
    invoke-virtual {p0, v3, p1}, add(ILcom/android/server/am/TaskRecord;)V

    .line 8302
    monitor-exit v5

    .line 8303
    return-void

    .line 8291
    .restart local v0    # "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .restart local v1    # "bottom":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "i":I
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 8302
    .end local v0    # "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v1    # "bottom":Lcom/android/server/am/TaskRecord;
    .end local v2    # "i":I
    .end local v3    # "idx":I
    :catchall_43
    move-exception v4

    monitor-exit v5
    :try_end_45
    .catchall {:try_start_5 .. :try_end_45} :catchall_43

    throw v4
.end method

.method onTaskListEmptyLocked()V
    .registers 4

    .prologue
    .line 8097
    iget-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_f

    iget-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 8128
    :cond_f
    :goto_f
    return-void

    .line 8110
    :cond_10
    iget-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_2a

    iget-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    if-nez v0, :cond_3c

    iget-object v0, p0, mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isVRStack()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 8119
    :cond_2a
    sget-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->SAFE_DEBUG:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, detachDebugException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_f

    .line 8120
    const-string v0, "ActivityManager"

    const-string v1, "ActivityContainer Display detach called before task empty."

    iget-object v2, p0, detachDebugException:Ljava/lang/RuntimeException;

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 8125
    :cond_3c
    invoke-virtual {p0}, detachLocked()V

    .line 8126
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor;->deleteActivityContainer(Landroid/app/IActivityContainer;)V

    .line 8127
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_f
.end method

.method public release()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 7961
    iget-object v2, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 7962
    :try_start_6
    iget v2, p0, mContainerState:I

    if-ne v2, v4, :cond_c

    .line 7963
    monitor-exit v3

    .line 7975
    :goto_b
    return-void

    .line 7965
    :cond_c
    const/4 v2, 0x2

    iput v2, p0, mContainerState:I

    .line 7967
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_25

    move-result-wide v0

    .line 7969
    .local v0, "origId":J
    :try_start_13
    iget-object v2, p0, mStack:Lcom/android/server/am/ActivityStack;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->finishAllActivitiesLocked(Z)V

    .line 7970
    iget-object v2, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->removePendingActivityLaunchesLocked(Lcom/android/server/am/ActivityStack;)V
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_28

    .line 7972
    :try_start_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7974
    monitor-exit v3

    goto :goto_b

    .end local v0    # "origId":J
    :catchall_25
    move-exception v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_25

    throw v2

    .line 7972
    .restart local v0    # "origId":J
    :catchall_28
    move-exception v2

    :try_start_29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_25
.end method

.method public remove(Lcom/android/server/am/TaskRecord;)Z
    .registers 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 8255
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 8256
    :try_start_5
    invoke-virtual {p0}, isAttachedLocked()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 8257
    iget-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    .line 8259
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_14

    .line 8260
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method setDrawn()V
    .registers 1

    .prologue
    .line 8087
    return-void
.end method

.method public setSurface(Landroid/view/Surface;III)V
    .registers 7
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .prologue
    .line 8054
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "ActivityContainer.attachToSurface"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 8055
    return-void
.end method

.method setVisible(Z)V
    .registers 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 8077
    iget-boolean v0, p0, mVisible:Z

    if-eq v0, p1, :cond_1b

    .line 8078
    iput-boolean p1, p0, mVisible:Z

    .line 8079
    iget-object v0, p0, mCallback:Landroid/app/IActivityContainerCallback;

    if-eqz v0, :cond_1b

    .line 8080
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v3, 0x6c

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {v2, v3, v0, v1, p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 8084
    :cond_1b
    return-void

    :cond_1c
    move v0, v1

    .line 8080
    goto :goto_14
.end method

.method public final startActivity(Landroid/content/Intent;)I
    .registers 26
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 8000
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "ActivityContainer.startActivity"

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 8001
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I
    invoke-static {v6}, Lcom/android/server/am/ActivityStackSupervisor;->access$800(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    const-string v9, "ActivityContainer"

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActivityManagerService;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 8006
    .local v20, "userId":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    .line 8007
    .local v8, "mimeType":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v23

    .line 8008
    .local v23, "data":Landroid/net/Uri;
    if-nez v8, :cond_50

    if-eqz v23, :cond_50

    const-string v3, "content"

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 8009
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Lcom/android/server/am/ActivityManagerService;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v8

    .line 8011
    :cond_50
    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v8}, checkEmbeddedAllowedInner(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 8013
    const/high16 v3, 0x18010000

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8014
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-object/from16 v7, p1

    move-object/from16 v21, p0

    invoke-virtual/range {v3 .. v22}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ZILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I

    move-result v3

    return v3
.end method

.method public final startActivityIntentSender(Landroid/content/IIntentSender;)I
    .registers 16
    .param p1, "intentSender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .prologue
    .line 8021
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "ActivityContainer.startActivityIntentSender"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 8023
    instance-of v1, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v1, :cond_15

    .line 8024
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad PendingIntent object"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8027
    :cond_15
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v3, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I
    invoke-static {v3}, Lcom/android/server/am/ActivityStackSupervisor;->access$800(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "ActivityContainer"

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v13

    .local v13, "userId":I
    move-object v0, p1

    .line 8031
    check-cast v0, Lcom/android/server/am/PendingIntentRecord;

    .line 8032
    .local v0, "pendingIntent":Lcom/android/server/am/PendingIntentRecord;
    iget-object v1, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-direct {p0, v13, v1, v2}, checkEmbeddedAllowedInner(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 8035
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x18010000

    const/high16 v10, 0x18010000

    const/4 v11, 0x0

    move-object v12, p0

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IActivityContainer;)I

    move-result v1

    return v1
.end method

.method public switchUserLocked()V
    .registers 7

    .prologue
    .line 8137
    iget-object v3, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 8138
    :try_start_5
    iget-object v3, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v3, :cond_3c

    .line 8139
    iget-object v3, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8140
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    if-ge v0, v1, :cond_3c

    .line 8141
    iget-object v3, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 8142
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-object v3, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 8144
    iget-object v3, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8145
    iget-object v3, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8146
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 8149
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 8153
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3c
    monitor-exit v4

    .line 8154
    return-void

    .line 8153
    :catchall_3e
    move-exception v3

    monitor-exit v4
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_3e

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 8132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, mIdString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-nez v0, :cond_38

    const-string v0, "N"

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "F"

    :goto_1f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " zone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getZone()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_38
    const-string v0, "A"

    goto :goto_11

    :cond_3b
    const-string v0, ""

    goto :goto_1f
.end method
