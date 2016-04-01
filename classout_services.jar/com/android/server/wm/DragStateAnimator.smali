.class Lcom/android/server/wm/DragStateAnimator;
.super Ljava/lang/Object;
.source "DragState.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final TAG:Ljava/lang/String; = "DragStateAnimator"


# instance fields
.field final TYPE_NONE:I

.field final TYPE_SMARTCLIP:I

.field final TYPE_SPLIT:I

.field mAnimating:Z

.field mAnimation:Landroid/view/animation/Animation;

.field mAnimationScheduled:Z

.field mCurrentTime:J

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mState:Lcom/android/server/wm/DragState;

.field mTargetWin:Lcom/android/server/wm/WindowState;

.field final mTransformation:Landroid/view/animation/Transformation;

.field mType:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DragState;)V
    .registers 5
    .param p1, "state"    # Lcom/android/server/wm/DragState;

    .prologue
    const/4 v1, 0x0

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, mTransformation:Landroid/view/animation/Transformation;

    .line 680
    iput v1, p0, TYPE_NONE:I

    .line 681
    const/4 v0, 0x1

    iput v0, p0, TYPE_SPLIT:I

    .line 682
    const/4 v0, 0x2

    iput v0, p0, TYPE_SMARTCLIP:I

    .line 685
    iput-object p1, p0, mState:Lcom/android/server/wm/DragState;

    .line 686
    iget-object v0, p1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    .line 687
    iput v1, p0, mType:I

    .line 688
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 689
    :try_start_20
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    iget-object v2, p0, mState:Lcom/android/server/wm/DragState;

    iget-object v2, v2, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    iput-object v0, p0, mTargetWin:Lcom/android/server/wm/WindowState;

    .line 690
    monitor-exit v1

    .line 691
    return-void

    .line 690
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_32

    throw v0
.end method

.method private stepDropAnimation(J)Z
    .registers 12
    .param p1, "currentTime"    # J

    .prologue
    const/4 v0, 0x0

    .line 778
    iget-object v4, p0, mAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_9

    iget-boolean v4, p0, mAnimating:Z

    if-nez v4, :cond_a

    .line 817
    :cond_9
    :goto_9
    return v0

    .line 781
    :cond_a
    iget-object v4, p0, mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    .line 782
    iget-object v4, p0, mAnimation:Landroid/view/animation/Animation;

    iget-object v5, p0, mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, p1, p2, v5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 784
    .local v0, "more":Z
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v4, :cond_49

    const-string v4, "DragStateAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stepped animation in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": more="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", xform="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_49
    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v2, v4, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 789
    .local v2, "surfaceControl":Landroid/view/SurfaceControl;
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 793
    const/4 v1, 0x0

    .line 794
    .local v1, "spec":Landroid/view/MagnificationSpec;
    :try_start_53
    iget-object v4, p0, mTargetWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v4

    if-nez v4, :cond_67

    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mReduceScreenRunning:Z

    if-eqz v4, :cond_67

    .line 795
    iget-object v4, p0, mTargetWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v1

    .line 798
    :cond_67
    if-eqz v1, :cond_89

    invoke-virtual {v1}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v4

    if-nez v4, :cond_89

    .line 799
    iget-object v4, p0, mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget v5, v1, Landroid/view/MagnificationSpec;->scale:F

    iget v6, v1, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 800
    iget-object v4, p0, mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget v5, v1, Landroid/view/MagnificationSpec;->offsetX:F

    iget v6, v1, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 805
    :cond_89
    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v4, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 806
    .local v3, "tmpFloats":[F
    iget-object v4, p0, mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 807
    iget-object v4, p0, mState:Lcom/android/server/wm/DragState;

    iget-boolean v4, v4, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-nez v4, :cond_a5

    .line 808
    const/4 v4, 0x2

    aget v4, v3, v4

    const/4 v5, 0x5

    aget v5, v3, v5

    invoke-virtual {v2, v4, v5}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 810
    :cond_a5
    iget-object v4, p0, mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 811
    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x3

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    const/4 v7, 0x4

    aget v7, v3, v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V
    :try_end_bd
    .catchall {:try_start_53 .. :try_end_bd} :catchall_c2

    .line 814
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto/16 :goto_9

    .end local v3    # "tmpFloats":[F
    :catchall_c2
    move-exception v4

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v4
.end method


# virtual methods
.method animateLocked()V
    .registers 3

    .prologue
    .line 857
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mCurrentTime:J

    .line 858
    iget-wide v0, p0, mCurrentTime:J

    invoke-virtual {p0, v0, v1}, stepAnimationLocked(J)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 859
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->reset()V

    .line 860
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    .line 864
    :goto_1a
    return-void

    .line 862
    :cond_1b
    invoke-virtual {p0}, scheduleAnimationLocked()V

    goto :goto_1a
.end method

.method applyAnimationLocked()Z
    .registers 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 711
    iget-object v4, p0, mTargetWin:Lcom/android/server/wm/WindowState;

    if-nez v4, :cond_9

    .line 774
    :cond_8
    :goto_8
    return v6

    .line 715
    :cond_9
    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowCenterBar:Lcom/android/server/wm/WindowState;

    .line 716
    .local v3, "winCenterBar":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_23

    iget-object v4, p0, mTargetWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 717
    iput v8, p0, mType:I

    .line 724
    :goto_1d
    iget-boolean v4, p0, mAnimating:Z

    if-eqz v4, :cond_32

    move v6, v5

    .line 725
    goto :goto_8

    .line 718
    :cond_23
    iget-object v4, p0, mTargetWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v4

    if-nez v4, :cond_8

    .line 719
    iput v5, p0, mType:I

    goto :goto_1d

    .line 728
    :cond_32
    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, p0, mTargetWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowManagerService;->okToDisplay(I)Z

    move-result v4

    if-eqz v4, :cond_117

    .line 730
    iget-object v4, p0, mState:Lcom/android/server/wm/DragState;

    iget-boolean v4, v4, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-eqz v4, :cond_94

    .line 731
    iget v4, p0, mType:I

    if-ne v4, v8, :cond_88

    .line 732
    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v7, 0x10a004d

    invoke-static {v4, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 759
    .local v0, "a":Landroid/view/animation/Animation;
    :cond_55
    :goto_55
    if-eqz v0, :cond_81

    .line 760
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v4, :cond_7e

    .line 761
    const/4 v1, 0x0

    .line 766
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v4, "DragStateAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loaded animation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 768
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_7e
    invoke-virtual {p0, v0}, setAnimation(Landroid/view/animation/Animation;)V

    .line 774
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_81
    :goto_81
    iget-object v4, p0, mAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_11c

    move v4, v5

    :goto_86
    move v6, v4

    goto :goto_8

    .line 734
    :cond_88
    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v7, 0x10a004e

    invoke-static {v4, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto :goto_55

    .line 737
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_94
    iget v4, p0, mType:I

    if-ne v4, v8, :cond_10b

    .line 738
    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v7, 0x10a004c

    invoke-static {v4, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 742
    .restart local v0    # "a":Landroid/view/animation/Animation;
    :goto_a3
    iget-object v4, p0, mState:Lcom/android/server/wm/DragState;

    iget v4, v4, Lcom/android/server/wm/DragState;->mLastX:F

    cmpl-float v4, v4, v9

    if-nez v4, :cond_c3

    iget-object v4, p0, mState:Lcom/android/server/wm/DragState;

    iget v4, v4, Lcom/android/server/wm/DragState;->mLastY:F

    cmpl-float v4, v4, v9

    if-nez v4, :cond_c3

    .line 743
    iget-object v4, p0, mState:Lcom/android/server/wm/DragState;

    iget-object v7, p0, mState:Lcom/android/server/wm/DragState;

    iget v7, v7, Lcom/android/server/wm/DragState;->mCurrentX:F

    iput v7, v4, Lcom/android/server/wm/DragState;->mLastX:F

    .line 744
    iget-object v4, p0, mState:Lcom/android/server/wm/DragState;

    iget-object v7, p0, mState:Lcom/android/server/wm/DragState;

    iget v7, v7, Lcom/android/server/wm/DragState;->mCurrentY:F

    iput v7, v4, Lcom/android/server/wm/DragState;->mLastY:F

    .line 746
    :cond_c3
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-object v4, p0, mState:Lcom/android/server/wm/DragState;

    iget v4, v4, Lcom/android/server/wm/DragState;->mLastX:F

    iget-object v7, p0, mState:Lcom/android/server/wm/DragState;

    iget v7, v7, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v4, v7

    iget-object v7, p0, mState:Lcom/android/server/wm/DragState;

    iget v7, v7, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget-object v8, p0, mState:Lcom/android/server/wm/DragState;

    iget v8, v8, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v7, v8

    iget-object v8, p0, mState:Lcom/android/server/wm/DragState;

    iget v8, v8, Lcom/android/server/wm/DragState;->mLastY:F

    iget-object v9, p0, mState:Lcom/android/server/wm/DragState;

    iget v9, v9, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v8, v9

    iget-object v9, p0, mState:Lcom/android/server/wm/DragState;

    iget v9, v9, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget-object v10, p0, mState:Lcom/android/server/wm/DragState;

    iget v10, v10, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v9, v10

    invoke-direct {v2, v4, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 750
    .local v2, "trans":Landroid/view/animation/Animation;
    const-wide/16 v8, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 751
    const-wide/16 v8, 0x1f4

    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 752
    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 753
    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 754
    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 755
    instance-of v4, v0, Landroid/view/animation/AnimationSet;

    if-eqz v4, :cond_55

    move-object v4, v0

    .line 756
    check-cast v4, Landroid/view/animation/AnimationSet;

    invoke-virtual {v4, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_55

    .line 740
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v2    # "trans":Landroid/view/animation/Animation;
    :cond_10b
    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v7, 0x10a004b

    invoke-static {v4, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto :goto_a3

    .line 771
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_117
    invoke-virtual {p0}, clearAnimation()V

    goto/16 :goto_81

    :cond_11c
    move v4, v6

    .line 774
    goto/16 :goto_86
.end method

.method public clearAnimation()V
    .registers 2

    .prologue
    .line 703
    iget-object v0, p0, mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_f

    .line 704
    const/4 v0, 0x1

    iput-boolean v0, p0, mAnimating:Z

    .line 705
    iget-object v0, p0, mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 706
    const/4 v0, 0x0

    iput-object v0, p0, mAnimation:Landroid/view/animation/Animation;

    .line 708
    :cond_f
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 868
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 869
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, mAnimationScheduled:Z

    .line 870
    invoke-virtual {p0}, animateLocked()V

    .line 871
    monitor-exit v1

    .line 872
    return-void

    .line 871
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method scheduleAnimationLocked()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 849
    iget-boolean v0, p0, mAnimationScheduled:Z

    if-nez v0, :cond_f

    .line 850
    iput-boolean v2, p0, mAnimationScheduled:Z

    .line 851
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 854
    :cond_f
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .registers 6
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 695
    const/4 v0, 0x0

    iput-boolean v0, p0, mAnimating:Z

    .line 696
    iput-object p1, p0, mAnimation:Landroid/view/animation/Animation;

    .line 697
    iget-object v0, p0, mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 698
    iget-object v0, p0, mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 699
    iget-object v0, p0, mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 700
    return-void
.end method

.method stepAnimationLocked(J)Z
    .registers 10
    .param p1, "currentTime"    # J

    .prologue
    const/4 v0, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 821
    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, mTargetWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->okToDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 822
    iget-boolean v2, p0, mAnimating:Z

    if-nez v2, :cond_34

    .line 823
    iget-object v2, p0, mAnimation:Landroid/view/animation/Animation;

    iget-object v3, p0, mState:Lcom/android/server/wm/DragState;

    iget v3, v3, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, mState:Lcom/android/server/wm/DragState;

    iget v4, v4, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v2, v3, v4, v1, v1}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 825
    iget-object v2, p0, mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 826
    iput-boolean v0, p0, mAnimating:Z

    .line 828
    :cond_34
    iget-object v2, p0, mAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_43

    iget-boolean v2, p0, mAnimating:Z

    if-eqz v2, :cond_43

    .line 829
    invoke-direct {p0, p1, p2}, stepDropAnimation(J)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 845
    :goto_42
    return v0

    .line 833
    :cond_43
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_69

    const-string v0, "DragStateAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished animation in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_69
    iput-boolean v1, p0, mAnimating:Z

    .line 839
    iget-object v0, p0, mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_77

    .line 840
    iget-object v0, p0, mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 841
    const/4 v0, 0x0

    iput-object v0, p0, mAnimation:Landroid/view/animation/Animation;

    .line 844
    :cond_77
    iget-object v0, p0, mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    move v0, v1

    .line 845
    goto :goto_42
.end method
