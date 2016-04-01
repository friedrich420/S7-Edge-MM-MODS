.class public Lcom/android/server/wm/MultiWindowPointerEventListener;
.super Ljava/lang/Object;
.source "MultiWindowPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# static fields
.field static final NONE:I = 0x0

.field static final NOT_SUPPORT:I = 0x2

.field static final NOT_SUPPORT_CURRENT_SCREEN:I = 0x3

.field static final RESIZING:I = 0x1

.field static final TASK_UNSET:I = -0x1

.field private static toastAlert:Landroid/widget/Toast;


# instance fields
.field private final DEBUG:Z

.field private final DELTA_H_SCALE:F

.field private final DELTA_H_SCALE_TERMINATE:F

.field private final DELTA_H_SCALE_TERMINATE_TOP:F

.field private final DELTA_V_SCALE:F

.field private final DELTA_V_SCALE_TERMINATE:F

.field private final DELTA_V_SCALE_TERMINATE_TOP:F

.field private INTERPORATION:I

.field private final SAFE_DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mAppToken:Lcom/android/server/wm/AppWindowToken;

.field private mApplicationName:Ljava/lang/CharSequence;

.field private mCenterBarPoint:Landroid/graphics/Point;

.field private mContorllerBoundaryY:I

.field private mControllerHeight:I

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

.field private mEdgeFlag:I

.field private mForceDismissGuide:Z

.field private mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

.field private mHandler:Landroid/os/Handler;

.field private mHasSubWindow:Z

.field private mIsRunningTask:Z

.field private mIsSelectiveOrientationMode:Z

.field private mIsSplitWindow:Z

.field private mLastX:I

.field private mLastY:I

.field private mMaxScale:F

.field private mMinScale:F

.field private mMoved:Z

.field private mResizeState:I

.field private mScreenHeight:I

.field private mScreenRatio:F

.field private mScreenWidth:I

.field private mSelectiveOrientationHeight:I

.field private mSelectiveOrientationWidth:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mStatusBarHeight:I

.field private mTaskId:I

.field private mTerminate:Z

.field private mValidMotion:Z

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mWasTargetChecked:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v2, "MultiWindowConverter"

    iput-object v2, p0, TAG:Ljava/lang/String;

    .line 76
    iput-boolean v0, p0, DEBUG:Z

    .line 77
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_12

    move v0, v1

    :cond_12
    iput-boolean v0, p0, SAFE_DEBUG:Z

    .line 79
    const v0, 0x3d8f5c29    # 0.07f

    iput v0, p0, DELTA_H_SCALE:F

    .line 80
    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, DELTA_V_SCALE:F

    .line 81
    const v0, 0x3e051eb8    # 0.13f

    iput v0, p0, DELTA_H_SCALE_TERMINATE:F

    .line 82
    const v0, 0x3e3851ec    # 0.18f

    iput v0, p0, DELTA_V_SCALE_TERMINATE:F

    .line 83
    const v0, 0x3e570a3d    # 0.21f

    iput v0, p0, DELTA_H_SCALE_TERMINATE_TOP:F

    .line 84
    const v0, 0x3db851ec    # 0.09f

    iput v0, p0, DELTA_V_SCALE_TERMINATE_TOP:F

    .line 85
    const/4 v0, 0x5

    iput v0, p0, INTERPORATION:I

    .line 111
    iput v1, p0, mResizeState:I

    .line 113
    iput-boolean v1, p0, mMoved:Z

    .line 114
    iput-boolean v1, p0, mValidMotion:Z

    .line 116
    iput-boolean v1, p0, mForceDismissGuide:Z

    .line 118
    iput-boolean v1, p0, mWasTargetChecked:Z

    .line 119
    iput-boolean v1, p0, mIsSplitWindow:Z

    .line 120
    iput-boolean v1, p0, mIsRunningTask:Z

    .line 121
    iput-boolean v1, p0, mHasSubWindow:Z

    .line 129
    const/4 v0, -0x1

    iput v0, p0, mTaskId:I

    .line 134
    iput-object p1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    .line 135
    iput-object p2, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/MultiWindowPointerEventListener;)Lcom/samsung/android/multiwindow/ui/GuideView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MultiWindowPointerEventListener;

    .prologue
    .line 74
    iget-object v0, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/wm/MultiWindowPointerEventListener;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MultiWindowPointerEventListener;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, mResizeState:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/wm/MultiWindowPointerEventListener;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MultiWindowPointerEventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, mMoved:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/wm/MultiWindowPointerEventListener;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MultiWindowPointerEventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, mValidMotion:Z

    return p1
.end method

.method private adjustFloatingStackBound(Landroid/graphics/Rect;II)V
    .registers 9
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I

    .prologue
    .line 708
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, mControllerHeight:I

    add-int v0, v2, v3

    .line 709
    .local v0, "boundaryX":I
    iget v1, p0, mContorllerBoundaryY:I

    .line 710
    .local v1, "boundaryY":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int v3, p2, v0

    if-le v2, v3, :cond_27

    .line 711
    sub-int v2, p2, v0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 715
    :cond_19
    :goto_19
    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int v3, p3, v1

    if-le v2, v3, :cond_37

    .line 716
    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int v3, p3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 720
    :cond_26
    :goto_26
    return-void

    .line 712
    :cond_27
    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-ge v2, v0, :cond_19

    .line 713
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v2, v0, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_19

    .line 717
    :cond_37
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p0, mStatusBarHeight:I

    iget v4, p0, mControllerHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_26

    .line 718
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, mStatusBarHeight:I

    iget v4, p0, mControllerHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_26
.end method

.method private calcPosX(II)I
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 411
    iget v0, p0, mScreenRatio:F

    iget v1, p0, mScreenHeight:I

    sub-int/2addr v1, p2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 412
    iget v0, p0, mEdgeFlag:I

    packed-switch v0, :pswitch_data_1a

    .line 417
    :goto_13
    return p1

    .line 414
    :pswitch_14
    iget v0, p0, mScreenWidth:I

    sub-int p1, v0, p1

    goto :goto_13

    .line 412
    nop

    :pswitch_data_1a
    .packed-switch 0x5
        :pswitch_14
    .end packed-switch
.end method

.method private calcPosY(II)I
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 401
    int-to-float v0, p2

    iget v1, p0, mScreenHeight:I

    int-to-float v1, v1

    iget v2, p0, mMinScale:F

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1f

    .line 402
    iget v0, p0, mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, mMinScale:F

    sub-float v1, v3, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 407
    .end local p2    # "y":I
    :cond_1e
    :goto_1e
    return p2

    .line 404
    .restart local p2    # "y":I
    :cond_1f
    int-to-float v0, p2

    iget v1, p0, mScreenHeight:I

    int-to-float v1, v1

    iget v2, p0, mMaxScale:F

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1e

    .line 405
    iget v0, p0, mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, mMaxScale:F

    sub-float v1, v3, v1

    mul-float/2addr v0, v1

    float-to-int p2, v0

    goto :goto_1e
.end method

.method private findApplicationTargetWindow(FFZ)Lcom/android/server/wm/WindowState;
    .registers 21
    .param p1, "xf"    # F
    .param p2, "yf"    # F
    .param p3, "exceptInternnalWindow"    # Z

    .prologue
    .line 791
    move/from16 v0, p1

    float-to-int v11, v0

    .line 792
    .local v11, "x":I
    move/from16 v0, p2

    float-to-int v12, v0

    .line 793
    .local v12, "y":I
    new-instance v7, Landroid/graphics/Region;

    invoke-direct {v7}, Landroid/graphics/Region;-><init>()V

    .line 794
    .local v7, "touchableRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v13, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v13, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v14

    .line 795
    :try_start_12
    move-object/from16 v0, p0

    iget-object v13, v0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v10

    .line 796
    .local v10, "windows":Lcom/android/server/wm/WindowList;
    const/4 v6, 0x0

    .line 797
    .local v6, "tempWin":Lcom/android/server/wm/WindowState;
    invoke-virtual {v10}, Lcom/android/server/wm/WindowList;->size()I

    move-result v13

    add-int/lit8 v4, v13, -0x1

    .local v4, "i":I
    :goto_21
    if-ltz v4, :cond_1a1

    .line 798
    invoke-virtual {v10, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 799
    .local v9, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-boolean v13, v0, SAFE_DEBUG:Z

    if-eqz v13, :cond_52

    const-string v13, "MultiWindowConverter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "finding target window : ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_52
    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 802
    .local v3, "flags":I
    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 803
    .local v8, "type":I
    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v13, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 805
    .local v5, "multiWindowFlags":I
    const/16 v13, 0x7d0

    if-ne v8, v13, :cond_75

    move-object/from16 v0, p0

    iget-object v13, v0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v13

    if-eqz v13, :cond_75

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v13

    if-eqz v13, :cond_75

    .line 808
    const/4 v9, 0x0

    monitor-exit v14

    .line 920
    .end local v3    # "flags":I
    .end local v5    # "multiWindowFlags":I
    .end local v8    # "type":I
    .end local v9    # "win":Lcom/android/server/wm/WindowState;
    :goto_74
    return-object v9

    .line 812
    .restart local v3    # "flags":I
    .restart local v5    # "multiWindowFlags":I
    .restart local v8    # "type":I
    .restart local v9    # "win":Lcom/android/server/wm/WindowState;
    :cond_75
    const/16 v13, 0x7d0

    if-ne v8, v13, :cond_96

    move-object/from16 v0, p0

    iget-object v13, v0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->isSharedDeviceKeyguardLocked()Z

    move-result v13

    if-eqz v13, :cond_96

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v13

    if-eqz v13, :cond_96

    .line 815
    const-string v13, "MultiWindowConverter"

    const-string v15, "Pop up view is blocked by Shared device"

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const/4 v9, 0x0

    monitor-exit v14

    goto :goto_74

    .line 919
    .end local v3    # "flags":I
    .end local v4    # "i":I
    .end local v5    # "multiWindowFlags":I
    .end local v6    # "tempWin":Lcom/android/server/wm/WindowState;
    .end local v8    # "type":I
    .end local v9    # "win":Lcom/android/server/wm/WindowState;
    .end local v10    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_93
    move-exception v13

    monitor-exit v14
    :try_end_95
    .catchall {:try_start_12 .. :try_end_95} :catchall_93

    throw v13

    .line 820
    .restart local v3    # "flags":I
    .restart local v4    # "i":I
    .restart local v5    # "multiWindowFlags":I
    .restart local v6    # "tempWin":Lcom/android/server/wm/WindowState;
    .restart local v8    # "type":I
    .restart local v9    # "win":Lcom/android/server/wm/WindowState;
    .restart local v10    # "windows":Lcom/android/server/wm/WindowList;
    :cond_96
    :try_start_96
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v13

    if-nez v13, :cond_9f

    .line 797
    :cond_9c
    :goto_9c
    add-int/lit8 v4, v4, -0x1

    goto :goto_21

    .line 825
    :cond_9f
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v13

    if-nez v13, :cond_9c

    .line 829
    and-int/lit8 v13, v3, 0x10

    if-nez v13, :cond_9c

    .line 833
    and-int/lit8 v13, v3, 0x8

    if-nez v13, :cond_9c

    .line 837
    const/16 v13, 0x82f

    if-ne v8, v13, :cond_b8

    .line 838
    const/4 v9, 0x0

    monitor-exit v14

    goto :goto_74

    .line 840
    :cond_b8
    const/16 v13, 0x89b

    if-ne v8, v13, :cond_bf

    .line 841
    const/4 v9, 0x0

    monitor-exit v14

    goto :goto_74

    .line 844
    :cond_bf
    move-object/from16 v0, p0

    iget-object v13, v0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v15

    invoke-virtual {v13, v15}, Lcom/android/server/wm/WindowManagerService;->canRequestMultiWindowTransition(I)Z

    move-result v2

    .line 845
    .local v2, "canChangeMultiWindowStyle":Z
    iget-boolean v13, v9, Lcom/android/server/wm/WindowState;->mMultiWindowStyleChanging:Z

    if-nez v13, :cond_d1

    if-nez v2, :cond_103

    .line 850
    :cond_d1
    const-string v13, "MultiWindowConverter"

    const-string v15, "Skip changing to pen window because multi window transition is running."

    invoke-static {v13, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const-string v13, "MultiWindowConverter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "win.mMultiWindowStyleChanging="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-boolean v0, v9, Lcom/android/server/wm/WindowState;->mMultiWindowStyleChanging:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " canChangeMultiWindowStyle="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const/4 v9, 0x0

    monitor-exit v14

    goto/16 :goto_74

    .line 858
    :cond_103
    and-int/lit16 v13, v5, 0x80

    if-eqz v13, :cond_116

    .line 859
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 860
    .local v1, "bound":Landroid/graphics/Rect;
    if-eqz v1, :cond_113

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_9c

    .line 864
    :cond_113
    monitor-exit v14

    goto/16 :goto_74

    .line 867
    .end local v1    # "bound":Landroid/graphics/Rect;
    :cond_116
    const/4 v13, 0x2

    if-eq v8, v13, :cond_136

    const/4 v13, 0x1

    if-eq v8, v13, :cond_136

    .line 869
    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v15, -0x1

    if-ne v13, v15, :cond_9c

    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v13, v15, :cond_9c

    const/16 v13, 0x7d0

    if-lt v8, v13, :cond_9c

    const/16 v13, 0xbb7

    if-gt v8, v13, :cond_9c

    .line 873
    const/4 v9, 0x0

    monitor-exit v14

    goto/16 :goto_74

    .line 878
    :cond_136
    if-eqz p3, :cond_141

    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v15, -0x80000000

    and-int/2addr v13, v15

    if-nez v13, :cond_9c

    .line 885
    :cond_141
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v13

    if-eqz v13, :cond_15e

    .line 886
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 887
    .restart local v1    # "bound":Landroid/graphics/Rect;
    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_9c

    if-eqz v1, :cond_9c

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_9c

    .line 889
    move-object v6, v9

    goto/16 :goto_9c

    .line 892
    .end local v1    # "bound":Landroid/graphics/Rect;
    :cond_15e
    if-eqz v6, :cond_16b

    .line 893
    iget-object v13, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v15, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v13, v15, :cond_16a

    .line 894
    monitor-exit v14

    move-object v9, v6

    goto/16 :goto_74

    .line 896
    :cond_16a
    move-object v6, v9

    .line 900
    :cond_16b
    const/4 v13, 0x2

    if-eq v8, v13, :cond_171

    const/4 v13, 0x1

    if-ne v8, v13, :cond_187

    .line 902
    :cond_171
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v13

    const/high16 v15, 0x200000

    invoke-virtual {v13, v15}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v13

    if-eqz v13, :cond_187

    .line 904
    const-string v13, "MultiWindowConverter"

    const-string v15, "An activity with OPTION_FULLSCREEN_ONLY doesn\'t support the multi-window"

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    monitor-exit v14

    goto/16 :goto_74

    .line 911
    :cond_187
    invoke-virtual {v9, v7}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 912
    invoke-virtual {v7, v11, v12}, Landroid/graphics/Region;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_9c

    .line 913
    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v15, 0x20000000

    and-int/2addr v13, v15

    if-eqz v13, :cond_19e

    .line 914
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, mHasSubWindow:Z

    .line 916
    :cond_19e
    monitor-exit v14

    goto/16 :goto_74

    .line 919
    .end local v2    # "canChangeMultiWindowStyle":Z
    .end local v3    # "flags":I
    .end local v5    # "multiWindowFlags":I
    .end local v8    # "type":I
    .end local v9    # "win":Lcom/android/server/wm/WindowState;
    :cond_1a1
    monitor-exit v14
    :try_end_1a2
    .catchall {:try_start_96 .. :try_end_1a2} :catchall_93

    .line 920
    const/4 v9, 0x0

    goto/16 :goto_74
.end method

.method private getApplicationName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 13
    .param p1, "windowName"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v8, 0x0

    .line 422
    :try_start_1
    iget-object v7, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 423
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 424
    .local v5, "parts":[Ljava/lang/String;
    array-length v7, v5

    const/4 v9, 0x2

    if-ge v7, v9, :cond_19

    move-object v1, v8

    .line 439
    .end local v5    # "parts":[Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_18
    :goto_18
    return-object v1

    .line 426
    .restart local v5    # "parts":[Ljava/lang/String;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_19
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 427
    .local v3, "i":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    const/4 v9, 0x0

    aget-object v9, v5, v9

    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-direct {v7, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 428
    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 429
    .local v4, "l":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 430
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7, v9, v10}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 431
    .local v1, "appName":Ljava/lang/CharSequence;
    if-nez v1, :cond_18

    .line 432
    const-string v1, ""
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4a} :catch_4b

    goto :goto_18

    .line 435
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appName":Ljava/lang/CharSequence;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "l":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "parts":[Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_4b
    move-exception v2

    .line 436
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "MultiWindowConverter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getApplicationName is error:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v8

    .line 439
    goto :goto_18
.end method

.method private isCancelArea(II)Z
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 723
    iget v1, p0, mScreenHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, mMaxScale:F

    sub-float/2addr v2, v3

    const v3, 0x3d4ccccd    # 0.05f

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 724
    .local v0, "limitHeight":I
    if-ge p2, v0, :cond_12

    .line 725
    const/4 v1, 0x1

    .line 727
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private isTerminativeArea(II)Z
    .registers 11
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 731
    const v0, 0x3e051eb8    # 0.13f

    .line 732
    .local v0, "dh":F
    const v2, 0x3e3851ec    # 0.18f

    .line 733
    .local v2, "dv":F
    const v1, 0x3e570a3d    # 0.21f

    .line 734
    .local v1, "dht":F
    const v3, 0x3db851ec    # 0.09f

    .line 736
    .local v3, "dvt":F
    iget v5, p0, mScreenHeight:I

    iget v6, p0, mScreenWidth:I

    if-ge v5, v6, :cond_21

    .line 737
    const v0, 0x3db851ec    # 0.09f

    .line 738
    const v2, 0x3e570a3d    # 0.21f

    .line 739
    const v1, 0x3e3851ec    # 0.18f

    .line 740
    const v3, 0x3e051eb8    # 0.13f

    .line 743
    :cond_21
    iget v5, p0, mEdgeFlag:I

    sparse-switch v5, :sswitch_data_84

    .line 766
    :cond_26
    const/4 v4, 0x0

    :goto_27
    return v4

    .line 745
    :sswitch_28
    iget v5, p0, mScreenWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    if-ge p1, v5, :cond_3e

    iget v5, p0, mScreenHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    if-le p2, v5, :cond_3e

    .line 746
    const-string v5, "MultiWindowConverter"

    const-string v6, "MultiWindow changing is blocked by terminative area"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 749
    :cond_3e
    iget v5, p0, mScreenWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    if-le p1, v5, :cond_26

    iget v5, p0, mScreenHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    if-ge p2, v5, :cond_26

    .line 750
    const-string v5, "MultiWindowConverter"

    const-string v6, "MultiWindow changing is blocked by terminative area"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 756
    :sswitch_54
    iget v5, p0, mScreenWidth:I

    int-to-float v5, v5

    sub-float v6, v7, v0

    mul-float/2addr v5, v6

    float-to-int v5, v5

    if-le p1, v5, :cond_6c

    iget v5, p0, mScreenHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    if-le p2, v5, :cond_6c

    .line 757
    const-string v5, "MultiWindowConverter"

    const-string v6, "MultiWindow changing is blocked by terminative area"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 760
    :cond_6c
    iget v5, p0, mScreenWidth:I

    int-to-float v5, v5

    sub-float v6, v7, v1

    mul-float/2addr v5, v6

    float-to-int v5, v5

    if-ge p1, v5, :cond_26

    iget v5, p0, mScreenHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    if-ge p2, v5, :cond_26

    .line 761
    const-string v5, "MultiWindowConverter"

    const-string v6, "MultiWindow changing is blocked by terminative area"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 743
    :sswitch_data_84
    .sparse-switch
        0x5 -> :sswitch_28
        0x9 -> :sswitch_54
    .end sparse-switch
.end method

.method private isValidMotion(II)Z
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 770
    const v0, 0x3d8f5c29    # 0.07f

    .line 771
    .local v0, "dh":F
    const v1, 0x3d4ccccd    # 0.05f

    .line 772
    .local v1, "dv":F
    iget v4, p0, mScreenHeight:I

    iget v5, p0, mScreenWidth:I

    if-ge v4, v5, :cond_13

    .line 773
    const v0, 0x3d4ccccd    # 0.05f

    .line 774
    const v1, 0x3d8f5c29    # 0.07f

    .line 776
    :cond_13
    iget v4, p0, mScreenHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v2, v4

    .line 777
    .local v2, "limitHeight":I
    if-ge p2, v2, :cond_1b

    .line 783
    :cond_1a
    :goto_1a
    return v3

    .line 780
    :cond_1b
    iget v4, p0, mLastX:I

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, mScreenWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    if-lt v4, v5, :cond_1a

    .line 783
    const/4 v3, 0x1

    goto :goto_1a
.end method

.method private setStackBoundOffset(Landroid/graphics/Rect;)V
    .registers 10
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 345
    iget-object v5, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 346
    .local v0, "di":Landroid/view/DisplayInfo;
    iget v5, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1d

    .line 347
    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v6, v0, Landroid/view/DisplayInfo;->appWidth:I

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v7, v0, Landroid/view/DisplayInfo;->appHeight:I

    sub-int/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 356
    :cond_1c
    :goto_1c
    return-void

    .line 348
    :cond_1d
    iget-boolean v5, p0, mHasSubWindow:Z

    if-eqz v5, :cond_1c

    .line 349
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 350
    .local v1, "hScale":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 351
    .local v4, "vScale":F
    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v6, v0, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v2, v5

    .line 352
    .local v2, "offsetX":I
    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v6, v0, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v3, v5

    .line 354
    .local v3, "offsetY":I
    neg-int v5, v2

    neg-int v6, v3

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1c
.end method

.method private showFullScreenGuide()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 388
    iget-object v0, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    .line 389
    iget-object v0, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    .line 390
    iget v0, p0, mEdgeFlag:I

    sparse-switch v0, :sswitch_data_1c

    .line 398
    :goto_10
    return-void

    .line 392
    :sswitch_11
    invoke-direct {p0, v1, v1}, showGuide(II)V

    goto :goto_10

    .line 395
    :sswitch_15
    iget v0, p0, mScreenWidth:I

    invoke-direct {p0, v0, v1}, showGuide(II)V

    goto :goto_10

    .line 390
    nop

    :sswitch_data_1c
    .sparse-switch
        0x5 -> :sswitch_11
        0x9 -> :sswitch_15
    .end sparse-switch
.end method

.method private showGuide(II)V
    .registers 11
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 635
    iget v4, p0, mScreenWidth:I

    sub-int v2, v4, p1

    .line 636
    .local v2, "width":I
    iget v4, p0, mScreenHeight:I

    sub-int v0, v4, p2

    .line 637
    .local v0, "height":I
    iget v4, p0, mScreenHeight:I

    iget v5, p0, mScreenWidth:I

    if-ge v4, v5, :cond_32

    const/4 v1, 0x1

    .line 641
    .local v1, "isLandscape":Z
    :goto_10
    iget-boolean v4, p0, mIsSplitWindow:Z

    if-eqz v4, :cond_1c

    if-nez p2, :cond_1c

    .line 642
    if-nez v1, :cond_34

    .line 643
    iget-object v4, p0, mCenterBarPoint:Landroid/graphics/Point;

    iget v0, v4, Landroid/graphics/Point;->y:I

    .line 653
    :cond_1c
    :goto_1c
    iget-object v4, p0, mHandler:Landroid/os/Handler;

    if-nez v4, :cond_27

    .line 654
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, mHandler:Landroid/os/Handler;

    .line 656
    :cond_27
    iget-object v4, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    .line 658
    iget v4, p0, mEdgeFlag:I

    sparse-switch v4, :sswitch_data_6a

    .line 671
    :goto_31
    return-void

    .end local v1    # "isLandscape":Z
    :cond_32
    move v1, v3

    .line 637
    goto :goto_10

    .line 645
    .restart local v1    # "isLandscape":Z
    :cond_34
    if-nez p1, :cond_3b

    .line 646
    iget-object v4, p0, mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v4, Landroid/graphics/Point;->x:I

    goto :goto_1c

    .line 648
    :cond_3b
    iget v4, p0, mScreenWidth:I

    iget-object v5, p0, mCenterBarPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v2, v4, v5

    goto :goto_1c

    .line 660
    :sswitch_44
    iget-object v3, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v3, p1, p2, v2, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto :goto_31

    .line 663
    :sswitch_4a
    iget-boolean v4, p0, mIsSplitWindow:Z

    if-eqz v4, :cond_63

    if-eqz v1, :cond_63

    if-nez p2, :cond_63

    .line 665
    iget-object v4, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v5, p0, mCenterBarPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget v6, p0, mScreenWidth:I

    iget-object v7, p0, mCenterBarPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v3, v6, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto :goto_31

    .line 667
    :cond_63
    iget-object v4, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v4, v3, p2, p1, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto :goto_31

    .line 658
    nop

    :sswitch_data_6a
    .sparse-switch
        0x5 -> :sswitch_44
        0x9 -> :sswitch_4a
    .end sparse-switch
.end method

.method private showMovingGuide(II)V
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 674
    iget v2, p0, mSelectiveOrientationWidth:I

    .line 675
    .local v2, "width":I
    iget v0, p0, mSelectiveOrientationHeight:I

    .line 676
    .local v0, "height":I
    iget v3, p0, mScreenHeight:I

    iget v4, p0, mScreenWidth:I

    if-ge v3, v4, :cond_2d

    const/4 v1, 0x1

    .line 680
    .local v1, "isLandscape":Z
    :goto_b
    iget-boolean v3, p0, mIsSplitWindow:Z

    if-eqz v3, :cond_17

    if-nez p2, :cond_17

    .line 681
    if-nez v1, :cond_2f

    .line 682
    iget-object v3, p0, mCenterBarPoint:Landroid/graphics/Point;

    iget v0, v3, Landroid/graphics/Point;->y:I

    .line 692
    :cond_17
    :goto_17
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    if-nez v3, :cond_22

    .line 693
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, mHandler:Landroid/os/Handler;

    .line 695
    :cond_22
    iget-object v3, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    .line 696
    iget v3, p0, mEdgeFlag:I

    sparse-switch v3, :sswitch_data_4e

    .line 704
    :goto_2c
    return-void

    .line 676
    .end local v1    # "isLandscape":Z
    :cond_2d
    const/4 v1, 0x0

    goto :goto_b

    .line 684
    .restart local v1    # "isLandscape":Z
    :cond_2f
    if-nez p1, :cond_36

    .line 685
    iget-object v3, p0, mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v3, Landroid/graphics/Point;->x:I

    goto :goto_17

    .line 687
    :cond_36
    iget v3, p0, mScreenWidth:I

    iget-object v4, p0, mCenterBarPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int v2, v3, v4

    goto :goto_17

    .line 698
    :sswitch_3f
    iget-object v3, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v3, p1, p2, v2, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto :goto_2c

    .line 701
    :sswitch_45
    iget-object v3, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    sub-int v4, p1, v2

    invoke-virtual {v3, v4, p2, v2, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto :goto_2c

    .line 696
    nop

    :sswitch_data_4e
    .sparse-switch
        0x5 -> :sswitch_3f
        0x9 -> :sswitch_45
    .end sparse-switch
.end method


# virtual methods
.method public canBeResizing(Lcom/android/server/wm/WindowState;)Z
    .registers 7
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 443
    if-nez p1, :cond_5

    .line 455
    :cond_4
    :goto_4
    return v2

    .line 446
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 447
    .local v0, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/high16 v4, 0x1000000

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v4

    if-eqz v4, :cond_38

    :cond_1f
    move v1, v3

    .line 451
    .local v1, "notSupport":Z
    :goto_20
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    if-eqz v4, :cond_36

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eqz v4, :cond_4

    :cond_36
    move v2, v3

    .line 455
    goto :goto_4

    .end local v1    # "notSupport":Z
    :cond_38
    move v1, v2

    .line 447
    goto :goto_20
.end method

.method public dismissGuide(Z)V
    .registers 5
    .param p1, "notForce"    # Z

    .prologue
    const/4 v1, 0x0

    .line 360
    if-nez p1, :cond_39

    .line 361
    iget-object v0, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->getGuideViewAttached()Z

    move-result v0

    if-nez v0, :cond_c

    .line 385
    :cond_b
    :goto_b
    return-void

    .line 365
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, mForceDismissGuide:Z

    .line 366
    const-string v0, "MultiWindowConverter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissGuide() : to dissmis guide by WindowManagerService while relayouting window, mForceDismissGuide : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mForceDismissGuide:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    .line 369
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/MultiWindowPointerEventListener$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener$1;-><init>(Lcom/android/server/wm/MultiWindowPointerEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b

    .line 380
    :cond_39
    iget-object v0, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    .line 381
    iput v1, p0, mResizeState:I

    .line 382
    iput-boolean v1, p0, mMoved:Z

    .line 383
    iput-boolean v1, p0, mValidMotion:Z

    goto :goto_b
.end method

.method public init()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x447a0000    # 1000.0f

    .line 139
    new-instance v1, Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const/16 v3, 0x8d5

    iget-object v4, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/samsung/android/multiwindow/ui/GuideView;-><init>(Landroid/content/Context;Landroid/os/IBinder;ILandroid/view/Display;)V

    iput-object v1, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    .line 140
    iget-object v1, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/ui/GuideView;->setMultiWindowFlags(I)V

    .line 141
    new-instance v1, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    .line 142
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemVibrator;

    iput-object v1, p0, mVibrator:Landroid/os/SystemVibrator;

    .line 143
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e010b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iput v1, p0, mMinScale:F

    .line 144
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e010d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iput v1, p0, mMaxScale:F

    .line 146
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v1, :cond_9a

    .line 147
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mContorllerBoundaryY:I

    .line 148
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080591

    invoke-virtual {v1, v2, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 149
    .local v0, "drw":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_9b

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_87
    iput v1, p0, mControllerHeight:I

    .line 150
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mStatusBarHeight:I

    .line 152
    .end local v0    # "drw":Landroid/graphics/drawable/Drawable;
    :cond_9a
    return-void

    .line 149
    .restart local v0    # "drw":Landroid/graphics/drawable/Drawable;
    :cond_9b
    const/4 v1, 0x0

    goto :goto_87
.end method

.method public isValidMotion()Z
    .registers 2

    .prologue
    .line 787
    iget-boolean v0, p0, mValidMotion:Z

    return v0
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 20
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    and-int/lit16 v1, v13, 0xff

    .line 167
    .local v1, "action":I
    if-nez v1, :cond_28

    .line 168
    move-object/from16 v0, p0

    iget-object v13, v0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    .line 169
    .local v5, "dInfo":Landroid/view/DisplayInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_35

    .line 170
    iget v13, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    move-object/from16 v0, p0

    iput v13, v0, mScreenWidth:I

    .line 171
    iget v13, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object/from16 v0, p0

    iput v13, v0, mScreenHeight:I

    .line 179
    .end local v5    # "dInfo":Landroid/view/DisplayInfo;
    :cond_28
    :goto_28
    move-object/from16 v0, p0

    iget-object v13, v0, mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    if-nez v13, :cond_42

    .line 341
    :cond_34
    :goto_34
    return-void

    .line 173
    .restart local v5    # "dInfo":Landroid/view/DisplayInfo;
    :cond_35
    iget v13, v5, Landroid/view/DisplayInfo;->appWidth:I

    move-object/from16 v0, p0

    iput v13, v0, mScreenWidth:I

    .line 174
    iget v13, v5, Landroid/view/DisplayInfo;->appHeight:I

    move-object/from16 v0, p0

    iput v13, v0, mScreenHeight:I

    goto :goto_28

    .line 184
    .end local v5    # "dInfo":Landroid/view/DisplayInfo;
    :cond_42
    move-object/from16 v0, p0

    iget-object v13, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v13}, Landroid/view/WindowManagerPolicy;->isLockTaskModeEnabled()Z

    move-result v13

    if-nez v13, :cond_34

    .line 189
    move-object/from16 v0, p0

    iget-boolean v13, v0, mForceDismissGuide:Z

    if-eqz v13, :cond_9a

    if-eqz v1, :cond_59

    const/4 v13, 0x2

    if-ne v1, v13, :cond_9a

    .line 191
    :cond_59
    if-nez v1, :cond_79

    .line 192
    const-string v13, "MultiWindowConverter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onPointerEvent() ACTION_DOWN, mForceDismissGuide : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, mForceDismissGuide:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 193
    :cond_79
    const/4 v13, 0x2

    if-ne v1, v13, :cond_34

    .line 194
    const-string v13, "MultiWindowConverter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onPointerEvent() ACTION_MOVE, mForceDismissGuide : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, mForceDismissGuide:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 200
    :cond_9a
    packed-switch v1, :pswitch_data_42a

    goto :goto_34

    .line 202
    :pswitch_9e
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, mTerminate:Z

    .line 203
    move-object/from16 v0, p0

    iget v13, v0, mScreenWidth:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, mScreenHeight:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, mScreenRatio:F

    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, mLastX:I

    .line 205
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, mLastY:I

    .line 206
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, mMoved:Z

    .line 207
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, mValidMotion:Z

    .line 208
    move-object/from16 v0, p0

    iget v13, v0, mLastX:I

    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v13, v0, mLastY:I

    int-to-float v15, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v13

    if-eqz v13, :cond_140

    const/4 v13, 0x1

    :goto_df
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v13}, findApplicationTargetWindow(FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, startResizing(Lcom/android/server/wm/WindowState;)Z

    .line 209
    move-object/from16 v0, p0

    iget v13, v0, mScreenWidth:I

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->getEdgeFlag(ILandroid/view/MotionEvent;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, mEdgeFlag:I

    .line 210
    const-string v13, "MultiWindowConverter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Start to resize multiwindow: mResizing="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, mResizeState:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",flag="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, mEdgeFlag:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",x="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, mLastX:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",y="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, mLastY:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    .line 208
    :cond_140
    const/4 v13, 0x0

    goto :goto_df

    .line 214
    :pswitch_142
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    .line 215
    .local v11, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    .line 217
    .local v12, "y":I
    move-object/from16 v0, p0

    iget v13, v0, mLastX:I

    sub-int/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, INTERPORATION:I

    if-gt v13, v14, :cond_16a

    move-object/from16 v0, p0

    iget v13, v0, mLastY:I

    sub-int/2addr v13, v12

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, INTERPORATION:I

    if-le v13, v14, :cond_34

    .line 218
    :cond_16a
    move-object/from16 v0, p0

    iget-boolean v13, v0, mValidMotion:Z

    if-nez v13, :cond_182

    move-object/from16 v0, p0

    iget-boolean v13, v0, mTerminate:Z

    if-nez v13, :cond_34

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, isTerminativeArea(II)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, mTerminate:Z

    if-nez v13, :cond_34

    .line 221
    :cond_182
    move-object/from16 v0, p0

    iget-boolean v13, v0, mValidMotion:Z

    if-nez v13, :cond_194

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, isValidMotion(II)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, mValidMotion:Z

    if-eqz v13, :cond_34

    .line 224
    :cond_194
    move-object/from16 v0, p0

    iget v13, v0, mResizeState:I

    if-eqz v13, :cond_34

    move-object/from16 v0, p0

    iget v13, v0, mResizeState:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_1a7

    move-object/from16 v0, p0

    iget-boolean v13, v0, mWasTargetChecked:Z

    if-nez v13, :cond_34

    .line 229
    :cond_1a7
    move-object/from16 v0, p0

    iget-boolean v13, v0, mWasTargetChecked:Z

    if-nez v13, :cond_26b

    .line 230
    move-object/from16 v0, p0

    iget-object v13, v0, mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v13}, Landroid/os/SystemVibrator;->isEnableIntensity()Z

    move-result v13

    if-eqz v13, :cond_1c6

    .line 231
    move-object/from16 v0, p0

    iget-object v13, v0, mVibrator:Landroid/os/SystemVibrator;

    const v14, 0xc369

    const/4 v15, -0x1

    const/16 v16, 0x0

    sget-object v17, Landroid/os/Vibrator$MagnitudeTypes;->MaxMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual/range {v13 .. v17}, Landroid/os/SystemVibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 233
    :cond_1c6
    invoke-direct/range {p0 .. p0}, showFullScreenGuide()V

    .line 234
    move-object/from16 v0, p0

    iget v13, v0, mResizeState:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_1d7

    move-object/from16 v0, p0

    iget v13, v0, mResizeState:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_24b

    .line 236
    :cond_1d7
    new-instance v4, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v13, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v14, 0x103012b

    invoke-direct {v4, v13, v14}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 237
    .local v4, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget v13, v0, mResizeState:I

    packed-switch v13, :pswitch_data_436

    .line 247
    :goto_1ec
    sget-object v13, toastAlert:Landroid/widget/Toast;

    invoke-virtual {v13}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 248
    sget-object v13, toastAlert:Landroid/widget/Toast;

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 249
    const-string v13, "MultiWindowConverter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, mApplicationName:Ljava/lang/CharSequence;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is not supported popup window"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, mWasTargetChecked:Z

    goto/16 :goto_34

    .line 239
    :pswitch_219
    move-object/from16 v0, p0

    iget-object v13, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1040bb4

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v4, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    sput-object v13, toastAlert:Landroid/widget/Toast;

    goto :goto_1ec

    .line 243
    :pswitch_232
    move-object/from16 v0, p0

    iget-object v13, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1040bb5

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v4, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    sput-object v13, toastAlert:Landroid/widget/Toast;

    goto :goto_1ec

    .line 254
    .end local v4    # "context":Landroid/content/Context;
    :cond_24b
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/am/MultiWindowFacadeService;->isEnableMakePenWindow()Z

    move-result v13

    if-nez v13, :cond_264

    .line 255
    move-object/from16 v0, p0

    iget-object v13, v0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 256
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, mResizeState:I

    goto/16 :goto_34

    .line 259
    :cond_264
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, mWasTargetChecked:Z

    goto/16 :goto_34

    .line 263
    :cond_26b
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, isCancelArea(II)Z

    move-result v13

    if-eqz v13, :cond_27d

    .line 264
    invoke-direct/range {p0 .. p0}, showFullScreenGuide()V

    .line 265
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, mMoved:Z

    goto/16 :goto_34

    .line 269
    :cond_27d
    sget-boolean v13, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v13, :cond_293

    move-object/from16 v0, p0

    iget-boolean v13, v0, mIsSelectiveOrientationMode:Z

    if-eqz v13, :cond_293

    .line 270
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, mMoved:Z

    .line 271
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, showMovingGuide(II)V

    goto/16 :goto_34

    .line 275
    :cond_293
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, mMoved:Z

    .line 276
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, calcPosY(II)I

    move-result v3

    .line 277
    .local v3, "adjustY":I
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, calcPosX(II)I

    move-result v2

    .line 278
    .local v2, "adjustX":I
    if-eq v3, v12, :cond_2c8

    move-object/from16 v0, p0

    iget v13, v0, mScreenHeight:I

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v15, v0, mMinScale:F

    sub-float/2addr v14, v15

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    sub-float/2addr v13, v14

    float-to-int v13, v13

    if-lt v3, v13, :cond_2c8

    .line 279
    move-object/from16 v0, p0

    iget-object v13, v0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 283
    :goto_2c1
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, showGuide(II)V

    goto/16 :goto_34

    .line 281
    :cond_2c8
    move-object/from16 v0, p0

    iget-object v13, v0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    goto :goto_2c1

    .line 287
    .end local v2    # "adjustX":I
    .end local v3    # "adjustY":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    :pswitch_2d1
    move-object/from16 v0, p0

    iget-boolean v13, v0, mMoved:Z

    if-eqz v13, :cond_3f2

    .line 288
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, dismissGuide(Z)V

    .line 289
    move-object/from16 v0, p0

    iget-object v13, v0, mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v13}, Landroid/os/SystemVibrator;->isEnableIntensity()Z

    move-result v13

    if-eqz v13, :cond_2f6

    .line 290
    move-object/from16 v0, p0

    iget-object v13, v0, mVibrator:Landroid/os/SystemVibrator;

    const v14, 0xc369

    const/4 v15, -0x1

    const/16 v16, 0x0

    sget-object v17, Landroid/os/Vibrator$MagnitudeTypes;->MaxMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual/range {v13 .. v17}, Landroid/os/SystemVibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 292
    :cond_2f6
    new-instance v7, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v13, 0x2

    invoke-direct {v7, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    .line 294
    .local v7, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    new-instance v8, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/ui/GuideView;->getLastBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-direct {v8, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 297
    .local v8, "tmpRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_31a

    .line 298
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, setStackBoundOffset(Landroid/graphics/Rect;)V

    .line 302
    :cond_31a
    sget-boolean v13, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v13, :cond_33d

    move-object/from16 v0, p0

    iget-boolean v13, v0, mIsSelectiveOrientationMode:Z

    if-eqz v13, :cond_33d

    .line 303
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 304
    .local v9, "tmpScreen":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v13, v9}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 305
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13, v14}, adjustFloatingStackBound(Landroid/graphics/Rect;II)V

    .line 308
    .end local v9    # "tmpScreen":Landroid/graphics/Rect;
    :cond_33d
    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 309
    const/4 v13, 0x2

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 310
    const/16 v13, 0x800

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 311
    move-object/from16 v0, p0

    iget-object v13, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v14, v0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v13, v14, v7}, Lcom/android/server/wm/WindowManagerService;->changeMultiWindowStyle(Lcom/android/server/wm/AppWindowToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    .line 314
    move-object/from16 v0, p0

    iget-boolean v13, v0, mIsRunningTask:Z

    if-eqz v13, :cond_3a4

    move-object/from16 v0, p0

    iget v13, v0, mTaskId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_3a4

    .line 315
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, mTaskId:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v14, v15, v0, v7}, Lcom/android/server/am/MultiWindowFacadeService;->moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 316
    const-string v13, "MultiWindowConverter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "moveOnlySpecificTaskToFront - style: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, mTaskId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, mIsRunningTask:Z

    .line 318
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, mTaskId:I

    .line 321
    :cond_3a4
    const/4 v6, 0x0

    .line 322
    .local v6, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v13, :cond_3b9

    .line 323
    move-object/from16 v0, p0

    iget-object v13, v0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v13}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v10

    .line 324
    .local v10, "w":Lcom/android/server/wm/WindowState;
    if-eqz v10, :cond_3b9

    .line 325
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v6

    .line 328
    .end local v10    # "w":Lcom/android/server/wm/WindowState;
    :cond_3b9
    move-object/from16 v0, p0

    iget-object v13, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v14, "GEST"

    invoke-static {v13, v14, v6}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v13, "MultiWindowConverter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MultiWindow changing is finished by gesture. app:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",bound="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v15}, Lcom/samsung/android/multiwindow/ui/GuideView;->getLastBounds()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v8    # "tmpRect":Landroid/graphics/Rect;
    :cond_3f2
    :pswitch_3f2
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, dismissGuide(Z)V

    .line 334
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, mWasTargetChecked:Z

    .line 335
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, mIsSplitWindow:Z

    .line 336
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, mHasSubWindow:Z

    .line 337
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, mForceDismissGuide:Z

    .line 338
    const-string v13, "MultiWindowConverter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MultiWindow changing is ended by gesture.:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    .line 200
    :pswitch_data_42a
    .packed-switch 0x0
        :pswitch_9e
        :pswitch_2d1
        :pswitch_142
        :pswitch_3f2
    .end packed-switch

    .line 237
    :pswitch_data_436
    .packed-switch 0x2
        :pswitch_219
        :pswitch_232
    .end packed-switch
.end method

.method public showMultiWindowGestureHelp()V
    .registers 2

    .prologue
    .line 924
    iget-object v0, p0, mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->showMultiWindowGestureHelp()V

    .line 925
    return-void
.end method

.method public startResizing(Lcom/android/server/wm/WindowState;)Z
    .registers 28
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 459
    if-nez p1, :cond_14

    .line 460
    const-string v21, "MultiWindowConverter"

    const-string v22, "The top window does not support multi-window"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mResizeState:I

    .line 462
    const/16 v21, 0x0

    .line 631
    :goto_13
    return v21

    .line 465
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v16

    .line 466
    .local v16, "stack":Lcom/android/server/wm/TaskStack;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mApplicationName:Ljava/lang/CharSequence;

    .line 469
    const/16 v18, 0x0

    .line 470
    .local v18, "taskOfThisWindow":Lcom/android/server/wm/Task;
    if-eqz v16, :cond_9c

    .line 471
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "taskOfThisWindow":Lcom/android/server/wm/Task;
    check-cast v18, Lcom/android/server/wm/Task;

    .line 473
    .restart local v18    # "taskOfThisWindow":Lcom/android/server/wm/Task;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x100

    move/from16 v21, v0

    if-eqz v21, :cond_9c

    if-eqz v18, :cond_9c

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9c

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    .line 477
    const/16 v21, 0x3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mResizeState:I

    .line 479
    const-string v21, "MultiWindowConverter"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "This window does not support multiwindow. It may be the ResolverActivity. win="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/16 v21, 0x0

    goto/16 :goto_13

    .line 485
    :cond_9c
    if-eqz v16, :cond_b9

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    move/from16 v21, v0

    if-nez v21, :cond_b9

    .line 486
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mResizeState:I

    .line 487
    const-string v21, "MultiWindowConverter"

    const-string v22, "MultiWindow Gesture is not supported with launcher"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/16 v21, 0x0

    goto/16 :goto_13

    .line 491
    :cond_b9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v21

    const/high16 v22, 0x4000000

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_d8

    .line 492
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mResizeState:I

    .line 493
    const-string v21, "MultiWindowConverter"

    const-string v22, "MultiWindow Gesture is not supported with recents multi window"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/16 v21, 0x0

    goto/16 :goto_13

    .line 496
    :cond_d8
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 497
    :try_start_e5
    move-object/from16 v0, p0

    iget-object v0, v0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v19

    .line 498
    .local v19, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowList;->size()I

    move-result v21

    add-int/lit8 v9, v21, -0x1

    .local v9, "i":I
    :goto_f5
    if-ltz v9, :cond_12b

    .line 499
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/WindowState;

    .line 500
    .local v20, "ws":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v21

    const/high16 v23, 0x4000000

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_128

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v21

    if-eqz v21, :cond_128

    .line 502
    const-string v21, "MultiWindowConverter"

    const-string v23, "MultiWindow Gesture is not supported with recents multi window"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/16 v21, 0x0

    monitor-exit v22

    goto/16 :goto_13

    .line 506
    .end local v9    # "i":I
    .end local v19    # "windows":Lcom/android/server/wm/WindowList;
    .end local v20    # "ws":Lcom/android/server/wm/WindowState;
    :catchall_125
    move-exception v21

    monitor-exit v22
    :try_end_127
    .catchall {:try_start_e5 .. :try_end_127} :catchall_125

    throw v21

    .line 498
    .restart local v9    # "i":I
    .restart local v19    # "windows":Lcom/android/server/wm/WindowList;
    .restart local v20    # "ws":Lcom/android/server/wm/WindowState;
    :cond_128
    add-int/lit8 v9, v9, -0x1

    goto :goto_f5

    .line 506
    .end local v20    # "ws":Lcom/android/server/wm/WindowState;
    :cond_12b
    :try_start_12b
    monitor-exit v22
    :try_end_12c
    .catchall {:try_start_12b .. :try_end_12c} :catchall_125

    .line 509
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x80

    move/from16 v21, v0

    if-eqz v21, :cond_1af

    const/4 v8, 0x1

    .line 510
    .local v8, "hasDisableFlag":Z
    :goto_13f
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowManagerService;->getCoverStateSwitch()Z

    move-result v21

    if-nez v21, :cond_1b1

    const/4 v10, 0x1

    .line 512
    .local v10, "isCoverClosed":Z
    :goto_14c
    if-nez v8, :cond_150

    if-eqz v10, :cond_1b3

    .line 513
    :cond_150
    move-object/from16 v0, p0

    iget-object v0, v0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    .line 515
    const/16 v21, 0x3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mResizeState:I

    .line 516
    move-object/from16 v0, p0

    iget-boolean v0, v0, SAFE_DEBUG:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1ab

    .line 517
    const-string v21, "MultiWindowConverter"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "failed to change floating style, win="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", hasDisableFlag="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", isCoverClosed="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_1ab
    const/16 v21, 0x0

    goto/16 :goto_13

    .line 509
    .end local v8    # "hasDisableFlag":Z
    .end local v10    # "isCoverClosed":Z
    :cond_1af
    const/4 v8, 0x0

    goto :goto_13f

    .line 510
    .restart local v8    # "hasDisableFlag":Z
    :cond_1b1
    const/4 v10, 0x0

    goto :goto_14c

    .line 523
    .restart local v10    # "isCoverClosed":Z
    :cond_1b3
    const/4 v4, 0x0

    .line 524
    .local v4, "currentTask":Lcom/android/server/wm/Task;
    const/4 v11, 0x0

    .line 525
    .local v11, "mainWindowTitle":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 527
    .local v5, "currentTaskInfo":Ljava/lang/String;
    if-eqz v16, :cond_25a

    .line 528
    :try_start_1b8
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Lcom/android/server/wm/Task;

    move-object v4, v0

    .line 529
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->toString()Ljava/lang/String;

    move-result-object v5

    .line 530
    iget-object v0, v4, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;
    :try_end_1f0
    .catch Ljava/lang/Exception; {:try_start_1b8 .. :try_end_1f0} :catch_263

    move-result-object v11

    .line 541
    :goto_1f1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_28c

    .line 542
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 543
    .local v14, "parts":[Ljava/lang/String;
    if-eqz v14, :cond_28c

    array-length v0, v14

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_28c

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x1a

    new-instance v23, Landroid/content/ComponentName;

    const/16 v24, 0x0

    aget-object v24, v14, v24

    const/16 v25, 0x1

    aget-object v25, v14, v25

    invoke-direct/range {v23 .. v25}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/wm/WindowManagerService;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v21

    if-eqz v21, :cond_28c

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    .line 546
    const/16 v21, 0x3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mResizeState:I

    .line 547
    const-string v21, "MultiWindowConverter"

    const-string v22, "MultiWindow Gesture is not supported with DISABLE_TRAY_BAR"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/16 v21, 0x0

    goto/16 :goto_13

    .line 532
    .end local v14    # "parts":[Ljava/lang/String;
    :cond_25a
    :try_start_25a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;
    :try_end_261
    .catch Ljava/lang/Exception; {:try_start_25a .. :try_end_261} :catch_263

    move-result-object v11

    goto :goto_1f1

    .line 534
    :catch_263
    move-exception v7

    .line 535
    .local v7, "e":Ljava/lang/Exception;
    const-string v21, "TAG"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "mainWindowTitle is error:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 537
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    goto/16 :goto_1f1

    .line 552
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_28c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v12

    .line 553
    .local v12, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/high16 v21, 0x1000000

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_2c8

    const/high16 v21, 0x200000

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v21

    if-nez v21, :cond_2c8

    const/16 v21, 0x10

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v21

    if-nez v21, :cond_2c8

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v21

    if-eqz v21, :cond_329

    if-eqz v18, :cond_2c8

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_329

    :cond_2c8
    const/4 v13, 0x1

    .line 558
    .local v13, "notSupport":Z
    :goto_2c9
    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2f2

    .line 559
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsSplitWindow:Z

    .line 560
    new-instance v21, Landroid/graphics/Point;

    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/am/MultiWindowFacadeService;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mCenterBarPoint:Landroid/graphics/Point;

    .line 563
    :cond_2f2
    if-eqz v13, :cond_32b

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    .line 566
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, getApplicationName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mApplicationName:Ljava/lang/CharSequence;

    .line 567
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mResizeState:I

    .line 569
    const-string v21, "MultiWindowConverter"

    const-string v22, "This application or window do not support multiwindow"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/16 v21, 0x0

    goto/16 :goto_13

    .line 553
    .end local v13    # "notSupport":Z
    :cond_329
    const/4 v13, 0x0

    goto :goto_2c9

    .line 573
    .restart local v13    # "notSupport":Z
    :cond_32b
    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v21

    if-eqz v21, :cond_366

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    .line 576
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, getApplicationName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mApplicationName:Ljava/lang/CharSequence;

    .line 578
    const-string v21, "MultiWindowConverter"

    const-string v22, "MultiWindow Gesture is not supported with ISOLATED or FullScreenOnly"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mResizeState:I

    .line 581
    const/16 v21, 0x0

    goto/16 :goto_13

    .line 584
    :cond_366
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mTaskId:I

    .line 585
    if-eqz v4, :cond_390

    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v21

    iget v0, v4, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/am/MultiWindowFacadeService;->needMoveOnlySpecificTaskToFront(I)Z

    move-result v21

    if-eqz v21, :cond_390

    .line 586
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsRunningTask:Z

    .line 587
    iget v0, v4, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mTaskId:I

    .line 590
    :cond_390
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mResizeState:I

    .line 591
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 593
    const-string v21, "MultiWindowConverter"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MultiWindow is changing by gesture:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_3fc

    .line 597
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->hasSubWindow()Z

    move-result v21

    if-eqz v21, :cond_3fc

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v6

    .line 599
    .local v6, "dInfo":Landroid/view/DisplayInfo;
    iget v0, v6, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    move/from16 v21, v0

    iget v0, v6, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_4d4

    .line 600
    iget v0, v6, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mScreenHeight:I

    .line 607
    .end local v6    # "dInfo":Landroid/view/DisplayInfo;
    :cond_3fc
    :goto_3fc
    sget-boolean v21, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v21, :cond_4c5

    .line 608
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsSelectiveOrientationMode:Z

    .line 610
    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v2

    .line 611
    .local v2, "appRequestedOrientation":I
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    .line 612
    .local v3, "currentConfigOrientation":I
    invoke-static {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->convertToConfigurationOrientation(II)I

    move-result v17

    .line 615
    .local v17, "targetConfigOrientation":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsSplitWindow:Z

    move/from16 v21, v0

    if-eqz v21, :cond_484

    move/from16 v0, v17

    if-eq v0, v3, :cond_484

    .line 616
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsSelectiveOrientationMode:Z

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10e010e

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x447a0000    # 1000.0f

    div-float v15, v21, v22

    .line 619
    .local v15, "selectivePenWindowScale":F
    move-object/from16 v0, p0

    iget v0, v0, mScreenHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v15

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mSelectiveOrientationWidth:I

    .line 620
    move-object/from16 v0, p0

    iget v0, v0, mScreenWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v15

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mSelectiveOrientationHeight:I

    .line 622
    .end local v15    # "selectivePenWindowScale":F
    :cond_484
    move-object/from16 v0, p0

    iget-boolean v0, v0, SAFE_DEBUG:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4c5

    .line 623
    const-string v21, "MultiWindowConverter"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "target win= "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " appRequestedOrientation="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " mIsSelectiveOrientationMode="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsSelectiveOrientationMode:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    .end local v2    # "appRequestedOrientation":I
    .end local v3    # "currentConfigOrientation":I
    .end local v17    # "targetConfigOrientation":I
    :cond_4c5
    move-object/from16 v0, p0

    iget-object v0, v0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 631
    const/16 v21, 0x1

    goto/16 :goto_13

    .line 602
    .restart local v6    # "dInfo":Landroid/view/DisplayInfo;
    :cond_4d4
    iget v0, v6, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mScreenWidth:I

    goto/16 :goto_3fc
.end method
