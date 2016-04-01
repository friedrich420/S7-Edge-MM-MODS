.class Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;
.super Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VirtualActivityContainer"
.end annotation


# instance fields
.field mDrawn:Z

.field mSurface:Landroid/view/Surface;

.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;Landroid/app/IActivityContainerCallback;)V
    .registers 6
    .param p2, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "callback"    # Landroid/app/IActivityContainerCallback;

    .prologue
    .line 8311
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    .line 8312
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    .line 8309
    const/4 v0, 0x0

    iput-boolean v0, p0, mDrawn:Z

    .line 8313
    iput-object p2, p0, mParentActivity:Lcom/android/server/am/ActivityRecord;

    .line 8314
    iput-object p3, p0, mCallback:Landroid/app/IActivityContainerCallback;

    .line 8315
    const/4 v0, 0x1

    iput v0, p0, mContainerState:I

    .line 8316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualActivityContainer{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mParentActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mIdString:Ljava/lang/String;

    .line 8317
    return-void
.end method

.method private setSurfaceIfReadyLocked()V
    .registers 3

    .prologue
    .line 8400
    iget-boolean v0, p0, mDrawn:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_19

    iget v0, p0, mContainerState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 8401
    iget-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;

    iget-object v1, p0, mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->setSurface(Landroid/view/Surface;)V

    .line 8402
    const/4 v0, 0x0

    iput v0, p0, mContainerState:I

    .line 8404
    :cond_19
    return-void
.end method

.method private setSurfaceLocked(Landroid/view/Surface;III)V
    .registers 11
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8334
    iget v1, p0, mContainerState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 8376
    :goto_8
    return-void

    .line 8337
    :cond_9
    iget-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;

    .line 8339
    .local v0, "virtualActivityDisplay":Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;
    if-nez v0, :cond_26

    .line 8340
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;

    .end local v0    # "virtualActivityDisplay":Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;III)V

    .line 8342
    .restart local v0    # "virtualActivityDisplay":Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;
    iput-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 8343
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/am/ActivityStackSupervisor;->access$1000(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mDisplayId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8344
    invoke-virtual {p0, v0}, attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V

    .line 8347
    :cond_26
    iget-object v1, p0, mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2f

    .line 8348
    iget-object v1, p0, mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 8351
    :cond_2f
    iput-object p1, p0, mSurface:Landroid/view/Surface;

    .line 8352
    if-eqz p1, :cond_3c

    .line 8353
    iget-object v1, p0, mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 8372
    :cond_38
    :goto_38
    invoke-direct {p0}, setSurfaceIfReadyLocked()V

    goto :goto_8

    .line 8355
    :cond_3c
    iput v4, p0, mContainerState:I

    .line 8356
    iget-object v1, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->setSurface(Landroid/view/Surface;)V

    .line 8359
    iget-object v1, p0, mStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_38

    .line 8360
    iget-object v1, p0, mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v3, v4, v3, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    goto :goto_38
.end method


# virtual methods
.method isAttachedLocked()Z
    .registers 2

    .prologue
    .line 8380
    iget-object v0, p0, mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_c

    invoke-super {p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isAttachedLocked()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method isEligibleForNewTasks()Z
    .registers 2

    .prologue
    .line 8394
    const/4 v0, 0x0

    return v0
.end method

.method setDrawn()V
    .registers 3

    .prologue
    .line 8385
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 8386
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, mDrawn:Z

    .line 8387
    invoke-direct {p0}, setSurfaceIfReadyLocked()V

    .line 8388
    monitor-exit v1

    .line 8389
    return-void

    .line 8388
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public setSurface(Landroid/view/Surface;III)V
    .registers 9
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .prologue
    .line 8321
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->setSurface(Landroid/view/Surface;III)V

    .line 8323
    iget-object v2, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 8324
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_19

    move-result-wide v0

    .line 8326
    .local v0, "origId":J
    :try_start_c
    invoke-direct {p0, p1, p2, p3, p4}, setSurfaceLocked(Landroid/view/Surface;III)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_14

    .line 8328
    :try_start_f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8330
    monitor-exit v3

    .line 8331
    return-void

    .line 8328
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 8330
    .end local v0    # "origId":J
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_19

    throw v2
.end method
