.class final Lcom/android/server/wm/WindowManagerService$LocalService;
.super Landroid/view/WindowManagerInternal;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .prologue
    .line 20471
    iput-object p1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/view/WindowManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "x1"    # Lcom/android/server/wm/WindowManagerService$1;

    .prologue
    .line 20471
    invoke-direct {p0, p1}, <init>(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method


# virtual methods
.method public addWindowToken(Landroid/os/IBinder;I)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "type"    # I

    .prologue
    .line 20700
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->addWindowToken(Landroid/os/IBinder;I)V

    .line 20701
    return-void
.end method

.method public getCompatibleMagnificationSpecForWindow(Landroid/os/IBinder;)Landroid/view/MagnificationSpec;
    .registers 8
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 20505
    iget-object v3, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 20506
    :try_start_6
    iget-object v4, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 20507
    .local v1, "windowState":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_15

    .line 20508
    monitor-exit v3

    move-object v0, v2

    .line 20527
    :goto_14
    return-object v0

    .line 20510
    :cond_15
    const/4 v0, 0x0

    .line 20518
    .local v0, "spec":Landroid/view/MagnificationSpec;
    iget-object v4, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v4, :cond_24

    .line 20519
    iget-object v4, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v0

    .line 20522
    :cond_24
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v4

    if-eqz v4, :cond_37

    :cond_2c
    iget v4, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_37

    .line 20523
    monitor-exit v3

    move-object v0, v2

    goto :goto_14

    .line 20525
    :cond_37
    if-nez v0, :cond_49

    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    .line 20526
    :goto_3d
    iget v2, v0, Landroid/view/MagnificationSpec;->scale:F

    iget v4, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, v4

    iput v2, v0, Landroid/view/MagnificationSpec;->scale:F

    .line 20527
    monitor-exit v3

    goto :goto_14

    .line 20528
    .end local v0    # "spec":Landroid/view/MagnificationSpec;
    .end local v1    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_46
    move-exception v2

    monitor-exit v3
    :try_end_48
    .catchall {:try_start_6 .. :try_end_48} :catchall_46

    throw v2

    .line 20525
    .restart local v0    # "spec":Landroid/view/MagnificationSpec;
    .restart local v1    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_49
    :try_start_49
    invoke-static {v0}, Landroid/view/MagnificationSpec;->obtain(Landroid/view/MagnificationSpec;)Landroid/view/MagnificationSpec;
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_46

    move-result-object v0

    goto :goto_3d
.end method

.method public getFocusedWindowToken()Landroid/os/IBinder;
    .registers 4

    .prologue
    .line 20591
    iget-object v1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 20592
    :try_start_5
    iget-object v1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->access$3200(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 20593
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_15

    .line 20594
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    monitor-exit v2

    .line 20596
    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_14

    .line 20597
    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_18
    move-exception v1

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public bridge synthetic getInputMethodTarget()Landroid/view/WindowManagerPolicy$WindowState;
    .registers 2

    .prologue
    .line 20471
    invoke-virtual {p0}, getInputMethodTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method public getInputMethodTarget()Lcom/android/server/wm/WindowState;
    .registers 2

    .prologue
    .line 20737
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method public getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 20612
    iget-object v1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 20613
    :try_start_5
    iget-object v1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 20614
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_18

    .line 20615
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 20619
    :goto_16
    monitor-exit v2

    .line 20620
    return-void

    .line 20617
    :cond_18
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_16

    .line 20619
    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public isKeyguardLocked()Z
    .registers 2

    .prologue
    .line 20602
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public registerAppTransitionListener(Landroid/view/WindowManagerInternal$AppTransitionListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/WindowManagerInternal$AppTransitionListener;

    .prologue
    .line 20723
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 20724
    :try_start_5
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Landroid/view/WindowManagerInternal$AppTransitionListener;)V

    .line 20725
    monitor-exit v1

    .line 20726
    return-void

    .line 20725
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public removeWindowToken(Landroid/os/IBinder;Z)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "removeWindows"    # Z

    .prologue
    .line 20705
    iget-object v1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 20706
    if-eqz p2, :cond_25

    .line 20707
    :try_start_7
    iget-object v1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .line 20709
    .local v0, "wtoken":Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_20

    iget-object v1, v0, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_20

    .line 20710
    const-string v1, "WindowManager"

    const-string v3, "Tried to remove window which has appWindowToken"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20711
    monitor-exit v2

    .line 20719
    .end local v0    # "wtoken":Lcom/android/server/wm/WindowToken;
    :goto_1f
    return-void

    .line 20713
    .restart local v0    # "wtoken":Lcom/android/server/wm/WindowToken;
    :cond_20
    if-eqz v0, :cond_25

    .line 20714
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->removeAllWindows()V

    .line 20717
    .end local v0    # "wtoken":Lcom/android/server/wm/WindowToken;
    :cond_25
    iget-object v1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->removeWindowToken(Landroid/os/IBinder;)V

    .line 20718
    monitor-exit v2

    goto :goto_1f

    :catchall_2c
    move-exception v1

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public requestTraversalFromDisplayManager()V
    .registers 2

    .prologue
    .line 20476
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 20477
    return-void
.end method

.method public setInputFilter(Landroid/view/IInputFilter;)V
    .registers 3
    .param p1, "filter"    # Landroid/view/IInputFilter;

    .prologue
    .line 20586
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 20587
    return-void
.end method

.method public setMagnificationCallbacks(Landroid/view/WindowManagerInternal$MagnificationCallbacks;I)V
    .registers 8
    .param p1, "callbacks"    # Landroid/view/WindowManagerInternal$MagnificationCallbacks;
    .param p2, "displayId"    # I

    .prologue
    .line 20533
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 20547
    :try_start_5
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-nez v0, :cond_17

    .line 20548
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    new-instance v2, Lcom/android/server/wm/AccessibilityController;

    iget-object v3, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/wm/AccessibilityController;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 20551
    :cond_17
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController;->setMagnificationCallbacksLocked(Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V

    .line 20552
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->hasCallbacksLocked()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 20553
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 20556
    :cond_2d
    monitor-exit v1

    .line 20557
    return-void

    .line 20556
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public setMagnificationSpec(Landroid/view/MagnificationSpec;I)V
    .registers 6
    .param p1, "spec"    # Landroid/view/MagnificationSpec;
    .param p2, "displayId"    # I

    .prologue
    .line 20481
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 20491
    :try_start_5
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v0, :cond_21

    .line 20492
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    .line 20497
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_29

    .line 20498
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_20

    .line 20499
    invoke-virtual {p1}, Landroid/view/MagnificationSpec;->recycle()V

    .line 20501
    :cond_20
    return-void

    .line 20494
    :cond_21
    :try_start_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Magnification callbacks not set!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20497
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public setScreenRotationAnimation(II)V
    .registers 12
    .param p1, "displayId"    # I
    .param p2, "layerStack"    # I

    .prologue
    .line 20750
    iget-object v2, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v1

    .line 20751
    .local v1, "animation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v1, :cond_65

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 20752
    iget v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mLayerStack:I

    if-eq v2, p2, :cond_58

    .line 20753
    iput p2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mLayerStack:I

    .line 20754
    iget v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget-object v2, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRotations:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-virtual {v2, p2}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v3, v2, :cond_53

    .line 20755
    iget-object v2, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 20756
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v2, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRotations:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-virtual {v2, p2}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-wide/16 v4, 0x2710

    iget-object v6, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v6

    iget v7, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v8, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotationInTransaction(ILandroid/view/SurfaceSession;JFII)Z

    .line 20761
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_53
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, p2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 20763
    :cond_58
    iget-object v2, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mIsInputMethodDisplayUsed:Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$3300(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 20764
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V

    .line 20767
    :cond_65
    return-void
.end method

.method public setTouchExplorationEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 20744
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->setTouchExplorationEnabled(Z)V

    .line 20745
    return-void
.end method

.method public setWindowsForAccessibilityCallback(Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;I)V
    .registers 7
    .param p1, "callback"    # Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;
    .param p2, "displayId"    # I

    .prologue
    .line 20573
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-nez v0, :cond_12

    .line 20574
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/AccessibilityController;

    iget-object v2, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/AccessibilityController;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 20577
    :cond_12
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController;->setWindowsForAccessibilityCallback(Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    .line 20578
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->hasCallbacksLocked()Z

    move-result v0

    if-nez v0, :cond_28

    .line 20579
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 20582
    :cond_28
    return-void
.end method

.method public showGlobalActions()V
    .registers 2

    .prologue
    .line 20607
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->showGlobalActions()V

    .line 20608
    return-void
.end method

.method public showStatusBarByNotification()V
    .registers 2

    .prologue
    .line 20730
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->showStatusBarByNotification()V

    .line 20731
    return-void
.end method

.method public waitForAllWindowsDrawn(Ljava/lang/Runnable;JI)V
    .registers 21
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "timeout"    # J
    .param p4, "displayId"    # I

    .prologue
    .line 20624
    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 20625
    :try_start_7
    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iput-object v0, v9, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    .line 20629
    const/4 v9, 0x2

    move/from16 v0, p4

    if-ne v0, v9, :cond_a7

    .line 20630
    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v8

    .line 20635
    .local v8, "windows":Lcom/android/server/wm/WindowList;
    :goto_1c
    invoke-virtual {v8}, Lcom/android/server/wm/WindowList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .local v7, "winNdx":I
    :goto_22
    if-ltz v7, :cond_e9

    .line 20636
    invoke-virtual {v8, v7}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 20637
    .local v6, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v11, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v9, v11}, Landroid/view/WindowManagerPolicy;->isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v3

    .line 20639
    .local v3, "isForceHiding":Z
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x7d0

    if-ne v9, v11, :cond_49

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v9

    if-eqz v9, :cond_49

    .line 20640
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/android/server/wm/WindowStateAnimator;->mAnimationSkipRequested:Z

    .line 20645
    :cond_49
    const/4 v4, 0x0

    .line 20646
    .local v4, "waitForWindowDrawn":Z
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x8ac

    if-ne v9, v11, :cond_65

    .line 20647
    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v2

    .line 20648
    .local v2, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v2, :cond_65

    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getCocktaiBarWakeUpState()Z

    move-result v9

    if-eqz v9, :cond_65

    .line 20649
    const/4 v4, 0x1

    .line 20655
    .end local v2    # "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    :cond_65
    const/4 v5, 0x0

    .line 20656
    .local v5, "waitForWindowRedrawnFromCoverUI":Z
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getCoverMode()I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_97

    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy;->getCoverStateSwitch()Z

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_97

    .line 20658
    const/4 v5, 0x1

    .line 20659
    sget-boolean v9, Lcom/android/server/wm/WindowManagerService;->DEBUG_SCREEN_ON:Z

    if-eqz v9, :cond_97

    const-string v9, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Wait to relayouting from CoverUI : win="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20663
    :cond_97
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v9

    if-eqz v9, :cond_a3

    if-nez v3, :cond_b3

    if-nez v4, :cond_b3

    if-nez v5, :cond_b3

    .line 20635
    :cond_a3
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_22

    .line 20632
    .end local v3    # "isForceHiding":Z
    .end local v4    # "waitForWindowDrawn":Z
    .end local v5    # "waitForWindowRedrawnFromCoverUI":Z
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    .end local v7    # "winNdx":I
    .end local v8    # "windows":Lcom/android/server/wm/WindowList;
    :cond_a7
    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v8

    .restart local v8    # "windows":Lcom/android/server/wm/WindowList;
    goto/16 :goto_1c

    .line 20671
    .restart local v3    # "isForceHiding":Z
    .restart local v4    # "waitForWindowDrawn":Z
    .restart local v5    # "waitForWindowRedrawnFromCoverUI":Z
    .restart local v6    # "win":Lcom/android/server/wm/WindowState;
    .restart local v7    # "winNdx":I
    :cond_b3
    sget-boolean v9, Lcom/android/server/wm/WindowManagerService;->DEBUG_SCREEN_ON:Z

    if-eqz v9, :cond_d0

    .line 20672
    const-string v9, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "waitForAllWindowsDrawn()> adding win="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20675
    :cond_d0
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v11, 0x1

    iput v11, v9, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 20677
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-virtual {v9, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 20678
    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20681
    if-eqz v3, :cond_a3

    .line 20686
    .end local v3    # "isForceHiding":Z
    .end local v4    # "waitForWindowDrawn":Z
    .end local v5    # "waitForWindowRedrawnFromCoverUI":Z
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    :cond_e9
    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    .line 20688
    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v11, 0x18

    invoke-virtual {v9, v11}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 20689
    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_10c

    .line 20690
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    .line 20695
    :goto_10a
    monitor-exit v10

    .line 20696
    return-void

    .line 20692
    :cond_10c
    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v11, 0x18

    move-wide/from16 v0, p2

    invoke-virtual {v9, v11, v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 20693
    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    goto :goto_10a

    .line 20695
    .end local v7    # "winNdx":I
    .end local v8    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_121
    move-exception v9

    monitor-exit v10
    :try_end_123
    .catchall {:try_start_7 .. :try_end_123} :catchall_121

    throw v9
.end method
