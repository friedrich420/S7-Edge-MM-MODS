.class Lcom/android/server/wm/AppWindowToken;
.super Lcom/android/server/wm/WindowToken;
.source "AppWindowToken.java"


# instance fields
.field final allAppWindows:Lcom/android/server/wm/WindowList;

.field allDrawn:Z

.field appFullscreen:Z

.field public appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field final appToken:Landroid/view/IApplicationToken;

.field clientHidden:Z

.field customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

.field deferClearAllDrawn:Z

.field private displayId:I

.field finishing:Z

.field firstWindowDrawn:Z

.field forceApplyAnimation:Z

.field hiddenRequested:Z

.field inPendingTransaction:Z

.field inputDispatchingTimeoutNanos:J

.field lastTransactionSequence:J

.field layoutConfigChanges:Z

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field final mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

.field mEnteringAnimation:Z

.field mHasMoved:Z

.field mHiddenByPolicyVisiblity:Z

.field final mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field mIsExiting:Z

.field mIsLastShownWhenLocked:Z

.field mLaunchTaskBehind:Z

.field mMultiWindowStyleChanging:Z

.field mPendingMinimizeAnim:Z

.field mTargetTransit:I

.field mTask:Lcom/android/server/wm/Task;

.field mWaitingForMaximizeAnim:Z

.field noDisplay:Z

.field noWindowWhenHiddenRequested:Z

.field numDrawnWindows:I

.field numInterestingWindows:I

.field policyExpandedDisplayOrientation:I

.field policyOppositeDisplayOrientation:I

.field removed:Z

.field reportedDrawn:Z

.field reportedVisible:Z

.field requestedDimScreen:Z

.field requestedOrientation:I

.field showForAllUsers:Z

.field skipRotationAnimation:Z

.field startingAnimLayerAdjustment:I

.field startingData:Lcom/android/server/wm/StartingData;

.field startingDisplayed:Z

.field startingMoved:Z

.field startingView:Landroid/view/View;

.field startingWindow:Lcom/android/server/wm/WindowState;

.field userId:I

.field final voiceInteraction:Z

.field willBeHidden:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;Z)V
    .registers 9
    .param p1, "_service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "_token"    # Landroid/view/IApplicationToken;
    .param p3, "_voiceInteraction"    # Z

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 178
    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZ)V

    .line 66
    new-instance v0, Lcom/android/server/wm/WindowList;

    invoke-direct {v0}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v0, p0, allAppWindows:Lcom/android/server/wm/WindowList;

    .line 75
    iput v4, p0, requestedOrientation:I

    .line 77
    iput v3, p0, displayId:I

    .line 79
    iput-boolean v3, p0, forceApplyAnimation:Z

    .line 80
    iput v4, p0, policyOppositeDisplayOrientation:I

    .line 81
    const/4 v0, -0x2

    iput v0, p0, policyExpandedDisplayOrientation:I

    .line 82
    iput-boolean v3, p0, requestedDimScreen:Z

    .line 94
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, lastTransactionSequence:J

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    .line 149
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    iput-object v0, p0, appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 153
    iput v4, p0, mTargetTransit:I

    .line 155
    iput-boolean v3, p0, mWaitingForMaximizeAnim:Z

    .line 156
    iput-boolean v3, p0, mPendingMinimizeAnim:Z

    .line 157
    iput-boolean v3, p0, mHasMoved:Z

    .line 158
    iput-boolean v3, p0, mHiddenByPolicyVisiblity:Z

    .line 161
    iput-boolean v3, p0, finishing:Z

    .line 165
    iput-boolean v3, p0, skipRotationAnimation:Z

    .line 173
    iput-boolean v3, p0, noDisplay:Z

    .line 180
    iput-object p0, p0, appWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 181
    iput-object p2, p0, appToken:Landroid/view/IApplicationToken;

    .line 182
    iput-boolean p3, p0, voiceInteraction:Z

    .line 183
    new-instance v0, Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v0, p0}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 184
    iget-object v0, p0, service:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v0, p0, mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 185
    new-instance v0, Lcom/android/server/wm/AppWindowAnimator;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppWindowAnimator;-><init>(Lcom/android/server/wm/AppWindowToken;)V

    iput-object v0, p0, mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 188
    iput-boolean v3, p0, mMultiWindowStyleChanging:Z

    .line 190
    return-void
.end method


# virtual methods
.method public clearPendingAndForceRemovesLocked()V
    .registers 4

    .prologue
    .line 549
    iget-object v1, p0, allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "winNdx":I
    :goto_8
    if-ltz v0, :cond_2d

    .line 550
    iget-object v1, p0, service:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    iget-object v2, p0, allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 551
    iget-object v1, p0, service:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v1, :cond_2a

    .line 552
    iget-object v1, p0, service:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    iget-object v2, p0, allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 549
    :cond_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 555
    :cond_2d
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 463
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, appToken:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_14

    .line 465
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app=true voiceInteraction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, voiceInteraction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 467
    :cond_14
    iget-object v0, p0, allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 468
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "allAppWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 470
    :cond_29
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "task="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 471
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " appFullscreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, appFullscreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 479
    const-string v0, " requestedOrientation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, requestedOrientation:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 480
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "hiddenRequested="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, hiddenRequested:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 481
    const-string v0, " clientHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, clientHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 482
    const-string v0, " willBeHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, willBeHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 483
    const-string v0, " reportedDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, reportedDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 484
    const-string v0, " reportedVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, reportedVisible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 485
    iget-boolean v0, p0, paused:Z

    if-eqz v0, :cond_96

    .line 486
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "paused="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, paused:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 488
    :cond_96
    iget v0, p0, numInterestingWindows:I

    if-nez v0, :cond_a8

    iget v0, p0, numDrawnWindows:I

    if-nez v0, :cond_a8

    iget-boolean v0, p0, allDrawn:Z

    if-nez v0, :cond_a8

    iget-object v0, p0, mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eqz v0, :cond_e5

    .line 490
    :cond_a8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "numInterestingWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 491
    iget v0, p0, numInterestingWindows:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 492
    const-string v0, " numDrawnWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, numDrawnWindows:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 493
    const-string v0, " inPendingTransaction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, inPendingTransaction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 494
    const-string v0, " allDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, allDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 495
    const-string v0, " (animator="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 496
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    :cond_e5
    iget-boolean v0, p0, inPendingTransaction:Z

    if-eqz v0, :cond_f7

    .line 499
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "inPendingTransaction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 500
    iget-boolean v0, p0, inPendingTransaction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 502
    :cond_f7
    iget-object v0, p0, startingData:Lcom/android/server/wm/StartingData;

    if-nez v0, :cond_107

    iget-boolean v0, p0, removed:Z

    if-nez v0, :cond_107

    iget-boolean v0, p0, firstWindowDrawn:Z

    if-nez v0, :cond_107

    iget-boolean v0, p0, mIsExiting:Z

    if-eqz v0, :cond_133

    .line 503
    :cond_107
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "startingData="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, startingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 504
    const-string v0, " removed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, removed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 505
    const-string v0, " firstWindowDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, firstWindowDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 506
    const-string v0, " mIsExiting="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mIsExiting:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 508
    :cond_133
    iget-object v0, p0, startingWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_143

    iget-object v0, p0, startingView:Landroid/view/View;

    if-nez v0, :cond_143

    iget-boolean v0, p0, startingDisplayed:Z

    if-nez v0, :cond_143

    iget-boolean v0, p0, startingMoved:Z

    if-eqz v0, :cond_16f

    .line 510
    :cond_143
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "startingWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 511
    const-string v0, " startingView="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, startingView:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 512
    const-string v0, " startingDisplayed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, startingDisplayed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 513
    const-string v0, " startingMoved"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, startingMoved:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 515
    :cond_16f
    iget v0, p0, startingAnimLayerAdjustment:I

    if-eqz v0, :cond_17d

    .line 516
    const-string v0, " startingAnimLayerAdjustment : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, startingAnimLayerAdjustment:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 520
    :cond_17d
    iget-boolean v0, p0, mMultiWindowStyleChanging:Z

    if-eqz v0, :cond_18f

    .line 521
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mMultiWindowStyleChanging="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mMultiWindowStyleChanging:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 523
    :cond_18f
    iget-boolean v0, p0, mWaitingForMaximizeAnim:Z

    if-eqz v0, :cond_1a1

    .line 524
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWaitingForMaximizeAnim="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mWaitingForMaximizeAnim:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 528
    :cond_1a1
    return-void
.end method

.method findMainWindow()Lcom/android/server/wm/WindowState;
    .registers 5

    .prologue
    .line 308
    iget-object v2, p0, windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 309
    .local v0, "j":I
    :cond_6
    if-lez v0, :cond_21

    .line 310
    add-int/lit8 v0, v0, -0x1

    .line 311
    iget-object v2, p0, windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 312
    .local v1, "win":Lcom/android/server/wm/WindowState;
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_20

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 317
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_20
    :goto_20
    return-object v1

    :cond_21
    const/4 v1, 0x0

    goto :goto_20
.end method

.method getActivityDisplayId()I
    .registers 2

    .prologue
    .line 563
    :try_start_0
    iget-object v0, p0, appToken:Landroid/view/IApplicationToken;

    invoke-interface {v0}, Landroid/view/IApplicationToken;->getDisplayId()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 566
    :goto_6
    return v0

    .line 564
    :catch_7
    move-exception v0

    .line 566
    const/4 v0, -0x1

    goto :goto_6
.end method

.method getDisplayId()I
    .registers 2

    .prologue
    .line 572
    iget v0, p0, displayId:I

    return v0
.end method

.method getPreferredOrientation()I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 370
    iget v1, p0, requestedOrientation:I

    if-eq v1, v0, :cond_8

    .line 371
    iget v0, p0, requestedOrientation:I

    .line 375
    :cond_7
    :goto_7
    return v0

    .line 372
    :cond_8
    iget-object v1, p0, appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v1

    if-eq v1, v0, :cond_7

    .line 373
    iget-object v0, p0, appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v0

    goto :goto_7
.end method

.method isSelectiveOrientationStateLocked()Z
    .registers 2

    .prologue
    .line 381
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v0, :cond_1f

    .line 382
    iget-object v0, p0, appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, mTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_1f

    iget-object v0, p0, mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_1f

    .line 383
    iget-object v0, p0, mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isSelectiveOrientationStateLocked()Z

    move-result v0

    .line 386
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method isVisible()Z
    .registers 5

    .prologue
    .line 341
    iget-object v3, p0, allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 342
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_3a

    .line 343
    iget-object v3, p0, allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 355
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v3, :cond_37

    iget v3, v2, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-eqz v3, :cond_2b

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_37

    iget-object v3, p0, service:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v3

    if-nez v3, :cond_37

    :cond_2b
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v3, :cond_37

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 360
    const/4 v3, 0x1

    .line 366
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :goto_36
    return v3

    .line 342
    .restart local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 366
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_3a
    const/4 v3, 0x0

    goto :goto_36
.end method

.method removeAllWindows()V
    .registers 6

    .prologue
    .line 441
    invoke-virtual {p0}, clearPendingAndForceRemovesLocked()V

    .line 443
    iget-object v2, p0, allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "winNdx":I
    :goto_b
    if-ltz v1, :cond_46

    .line 450
    iget-object v2, p0, allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 451
    .local v0, "win":Lcom/android/server/wm/WindowState;
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_WINDOW_MOVEMENT:Z

    if-eqz v2, :cond_32

    .line 452
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeAllWindows: removing win="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_32
    iget-object v2, p0, service:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 449
    add-int/lit8 v2, v1, -0x1

    iget-object v3, p0, allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_b

    .line 457
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    :cond_46
    iget-object v2, p0, allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->clear()V

    .line 458
    iget-object v2, p0, windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->clear()V

    .line 459
    return-void
.end method

.method removeAppFromTaskLocked()V
    .registers 15

    .prologue
    const/high16 v13, 0x2000000

    const/high16 v12, 0x4000000

    const/4 v11, 0x0

    .line 391
    iput-boolean v11, p0, mIsExiting:Z

    .line 392
    invoke-virtual {p0}, removeAllWindows()V

    .line 395
    iget-object v7, p0, mTask:Lcom/android/server/wm/Task;

    .line 396
    .local v7, "task":Lcom/android/server/wm/Task;
    if-eqz v7, :cond_3a

    .line 397
    invoke-virtual {v7, p0}, Lcom/android/server/wm/Task;->removeAppToken(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v10

    if-nez v10, :cond_3b

    .line 398
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removeAppFromTaskLocked: token="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not found."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :goto_33
    iget-object v10, v7, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v10, v10, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v10, p0}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    .line 436
    :cond_3a
    return-void

    .line 402
    :cond_3b
    iget-object v10, p0, appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_4b

    iget-object v10, p0, appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_bc

    .line 404
    :cond_4b
    iget-object v10, p0, appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_c9

    .line 405
    const/4 v4, 0x0

    .line 406
    .local v4, "isRecentsMultiWindowRunning":Z
    iget-object v10, p0, service:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 407
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v8

    .line 408
    .local v8, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_62
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_af

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    .line 409
    .local v6, "t":Lcom/android/server/wm/Task;
    iget-object v10, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v10}, Lcom/android/server/wm/AppTokenList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_74
    :goto_74
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/AppWindowToken;

    .line 410
    .local v9, "token":Lcom/android/server/wm/AppWindowToken;
    iget-object v10, v9, appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_a5

    iget-object v10, v9, appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_a5

    .line 412
    new-instance v5, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v10, v9, appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v5, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 413
    .local v5, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v5, v13, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 415
    :try_start_9a
    iget-object v10, v9, appToken:Landroid/view/IApplicationToken;

    invoke-interface {v10, v5}, Landroid/view/IApplicationToken;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_9f} :catch_a0

    goto :goto_74

    .line 416
    :catch_a0
    move-exception v1

    .line 417
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_74

    .line 419
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v5    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_a5
    iget-object v10, v9, appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_74

    .line 420
    const/4 v4, 0x1

    goto :goto_74

    .line 424
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "t":Lcom/android/server/wm/Task;
    .end local v9    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_af
    iget-object v10, p0, service:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v4, v10, Lcom/android/server/wm/WindowManagerService;->mIsRecentsMultiWindowRunning:Z

    .line 425
    iget-object v10, p0, service:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v11, v10, Lcom/android/server/wm/WindowManagerService;->mForceHideCenterbar:Z

    .line 429
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "isRecentsMultiWindowRunning":Z
    .end local v8    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :goto_b7
    iget-object v10, p0, service:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 431
    :cond_bc
    iget-object v10, p0, service:Lcom/android/server/wm/WindowManagerService;

    iget v11, p0, displayId:I

    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowManagerService;->getMultiWindowTransitionLocked(I)Lcom/android/server/wm/MultiWindowTransition;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/android/server/wm/MultiWindowTransition;->setApplicationDrawn(Lcom/android/server/wm/AppWindowToken;)V

    goto/16 :goto_33

    .line 427
    :cond_c9
    iget-object v10, p0, service:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v11, v10, Lcom/android/server/wm/WindowManagerService;->mForceHideCenterbar:Z

    goto :goto_b7
.end method

.method sendAppVisibilityToClients()V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 193
    iget-object v3, p0, allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 194
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_5a

    .line 195
    iget-object v3, p0, allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 196
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-object v3, p0, startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v2, v3, :cond_1e

    iget-boolean v3, p0, clientHidden:Z

    if-eqz v3, :cond_1e

    .line 194
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 201
    :cond_1e
    :try_start_1e
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v3, :cond_49

    const-string v6, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting visibility of "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ": "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v3, p0, clientHidden:Z

    if-nez v3, :cond_56

    move v3, v4

    :goto_3e
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_49
    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-boolean v3, p0, clientHidden:Z

    if-nez v3, :cond_58

    move v3, v4

    :goto_50
    invoke-interface {v6, v3}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_53} :catch_54

    goto :goto_1b

    .line 204
    :catch_54
    move-exception v3

    goto :goto_1b

    :cond_56
    move v3, v5

    .line 201
    goto :goto_3e

    :cond_58
    move v3, v5

    .line 203
    goto :goto_50

    .line 207
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_5a
    return-void
.end method

.method setDisplayId(I)V
    .registers 3
    .param p1, "_displayId"    # I

    .prologue
    .line 576
    iput p1, p0, displayId:I

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, stringName:Ljava/lang/String;

    .line 578
    invoke-virtual {p0}, toString()Ljava/lang/String;

    .line 579
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 532
    iget-object v1, p0, stringName:Ljava/lang/String;

    if-nez v1, :cond_47

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "AppWindowToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, displayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, stringName:Ljava/lang/String;

    .line 544
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_47
    iget-object v1, p0, stringName:Ljava/lang/String;

    return-object v1
.end method

.method updateReportedVisibilityLocked()V
    .registers 16

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 210
    iget-object v10, p0, appToken:Landroid/view/IApplicationToken;

    if-nez v10, :cond_7

    .line 305
    :cond_6
    :goto_6
    return-void

    .line 214
    :cond_7
    const/4 v7, 0x0

    .line 215
    .local v7, "numInteresting":I
    const/4 v8, 0x0

    .line 216
    .local v8, "numVisible":I
    const/4 v6, 0x0

    .line 217
    .local v6, "numDrawn":I
    const/4 v4, 0x1

    .line 219
    .local v4, "nowGone":Z
    sget-boolean v10, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v10, :cond_27

    const-string v10, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Update reported visibility: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_27
    iget-object v10, p0, allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 222
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2e
    if-ge v1, v0, :cond_118

    .line 223
    iget-object v10, p0, allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 224
    .local v9, "win":Lcom/android/server/wm/WindowState;
    iget-object v10, p0, startingWindow:Lcom/android/server/wm/WindowState;

    if-eq v9, v10, :cond_4f

    iget-boolean v10, v9, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v10, :cond_4f

    iget v10, v9, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v10, :cond_4f

    iget-object v10, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v13, 0x3

    if-eq v10, v13, :cond_4f

    iget-boolean v10, v9, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v10, :cond_52

    .line 222
    :cond_4f
    :goto_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 230
    :cond_52
    sget-boolean v10, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v10, :cond_f4

    .line 231
    const-string v10, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Win "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": isDrawn="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", isAnimating="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v10

    if-nez v10, :cond_f4

    .line 235
    const-string v13, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Not displayed: s="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v14, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v14, v14, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, " pv="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v14, v9, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, " mDrawState="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v14, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v14, v14, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, " ah="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v14, v9, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, " th="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v10, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v10, :cond_10b

    iget-object v10, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v10, v10, hiddenRequested:Z

    :goto_db
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, " a="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v14, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v14, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_f4
    add-int/lit8 v7, v7, 0x1

    .line 246
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v10

    if-eqz v10, :cond_10d

    .line 247
    add-int/lit8 v6, v6, 0x1

    .line 248
    iget-object v10, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v10

    if-nez v10, :cond_108

    .line 249
    add-int/lit8 v8, v8, 0x1

    .line 251
    :cond_108
    const/4 v4, 0x0

    goto/16 :goto_4f

    :cond_10b
    move v10, v11

    .line 235
    goto :goto_db

    .line 252
    :cond_10d
    iget-object v10, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v10

    if-eqz v10, :cond_4f

    .line 253
    const/4 v4, 0x0

    goto/16 :goto_4f

    .line 257
    .end local v9    # "win":Lcom/android/server/wm/WindowState;
    :cond_118
    if-lez v7, :cond_1be

    if-lt v6, v7, :cond_1be

    move v3, v12

    .line 258
    .local v3, "nowDrawn":Z
    :goto_11d
    if-lez v7, :cond_1c1

    if-lt v8, v7, :cond_1c1

    move v5, v12

    .line 262
    .local v5, "nowVisible":Z
    :goto_122
    if-nez v4, :cond_130

    iget-boolean v10, p0, mMultiWindowStyleChanging:Z

    if-nez v10, :cond_130

    .line 264
    if-nez v3, :cond_12c

    .line 265
    iget-boolean v3, p0, reportedDrawn:Z

    .line 267
    :cond_12c
    if-nez v5, :cond_130

    .line 268
    iget-boolean v5, p0, reportedVisible:Z

    .line 283
    :cond_130
    sget-boolean v10, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v10, :cond_160

    const-string v10, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "VIS "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": interesting="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " visible="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_160
    iget-boolean v10, p0, reportedDrawn:Z

    if-eq v3, v10, :cond_179

    .line 286
    if-eqz v3, :cond_177

    .line 287
    iget-object v10, p0, service:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v13, 0x9

    invoke-virtual {v10, v13, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 289
    .local v2, "m":Landroid/os/Message;
    iget-object v10, p0, service:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v10, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 291
    .end local v2    # "m":Landroid/os/Message;
    :cond_177
    iput-boolean v3, p0, reportedDrawn:Z

    .line 293
    :cond_179
    iget-boolean v10, p0, reportedVisible:Z

    if-eq v5, v10, :cond_6

    .line 294
    sget-boolean v10, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v10, :cond_1a3

    const-string v10, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Visibility changed in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": vis="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_1a3
    iput-boolean v5, p0, reportedVisible:Z

    .line 298
    iget-object v10, p0, service:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v10, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v14, 0x8

    if-eqz v5, :cond_1c4

    move v10, v12

    :goto_1ae
    if-eqz v4, :cond_1b1

    move v11, v12

    :cond_1b1
    invoke-virtual {v13, v14, v10, v11, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 303
    .restart local v2    # "m":Landroid/os/Message;
    iget-object v10, p0, service:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v10, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    .end local v2    # "m":Landroid/os/Message;
    .end local v3    # "nowDrawn":Z
    .end local v5    # "nowVisible":Z
    :cond_1be
    move v3, v11

    .line 257
    goto/16 :goto_11d

    .restart local v3    # "nowDrawn":Z
    :cond_1c1
    move v5, v11

    .line 258
    goto/16 :goto_122

    .restart local v5    # "nowVisible":Z
    :cond_1c4
    move v10, v11

    .line 298
    goto :goto_1ae
.end method

.method updateStartingAnimAdjustment(Lcom/android/server/wm/WindowState;)V
    .registers 8
    .param p1, "startingWin"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 321
    if-eqz p1, :cond_f

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, p0, appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v3, v4, :cond_f

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_10

    .line 338
    :cond_f
    :goto_f
    return-void

    .line 327
    :cond_10
    const/4 v0, 0x0

    .line 328
    .local v0, "baseLayer":I
    iget-object v3, p0, allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 329
    .local v1, "j":I
    :cond_17
    :goto_17
    if-lez v1, :cond_2c

    .line 330
    add-int/lit8 v1, v1, -0x1

    .line 331
    iget-object v3, p0, allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 332
    .local v2, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_29

    iget v3, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v3, v0, :cond_17

    .line 333
    :cond_29
    iget v0, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    goto :goto_17

    .line 336
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_2c
    iget v3, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    sub-int v3, v0, v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, startingAnimLayerAdjustment:I

    .line 337
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v5, p0, startingAnimLayerAdjustment:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    goto :goto_f
.end method
