.class public Lcom/android/server/wm/TaskStack;
.super Ljava/lang/Object;
.source "TaskStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskStack$BlackBackground;
    }
.end annotation


# static fields
.field private static final DEBUG_FIXED_BOUNDS:Z = false

.field private static final DEFAULT_DIM_DURATION:I = 0xc8

.field static final TRANSPARENT_POPUPWINDOW:Z


# instance fields
.field mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

.field private mBlackBackground:Lcom/android/server/wm/TaskStack$BlackBackground;

.field private mBounds:Landroid/graphics/Rect;

.field private mContorllerBoundaryY:I

.field private mControllerHeight:I

.field mDeferDetach:Z

.field private mDimLayer:Lcom/android/server/wm/DimLayer;

.field mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mDimmingTag:Z

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field final mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

.field mFixedBound:Z

.field private mForceFullscreen:Z

.field private mFullscreen:Z

.field mIsFullDim:Z

.field mMinimizedRects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mMinimizedSize:I

.field mOutOfBound:Z

.field mOverrideConfig:Landroid/content/res/Configuration;

.field mPostFixedBound:Z

.field private final mPreForceFullscreenBounds:Landroid/graphics/Rect;

.field mRotation:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mShownBounds:Landroid/graphics/Rect;

.field mStackAlpha:F

.field final mStackId:I

.field mStackType:I

.field mStackZone:I

.field private mStatusBarHeight:I

.field private final mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;

.field mTopPenWindowControllerToken:Lcom/android/server/wm/AppWindowToken;

.field mVRStack:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;IIILandroid/graphics/Rect;)V
    .registers 13
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "stackId"    # I
    .param p3, "stackType"    # I
    .param p4, "stackZone"    # I
    .param p5, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mTasks:Ljava/util/ArrayList;

    .line 100
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mTmpRect:Landroid/graphics/Rect;

    .line 102
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mTmpRect2:Landroid/graphics/Rect;

    .line 105
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mBounds:Landroid/graphics/Rect;

    .line 108
    iput-boolean v5, p0, mFullscreen:Z

    .line 132
    iput-boolean v2, p0, mPostFixedBound:Z

    .line 134
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, mStackAlpha:F

    .line 135
    iput-object v4, p0, mTopPenWindowControllerToken:Lcom/android/server/wm/AppWindowToken;

    .line 137
    iput-object v4, p0, mBlackBackground:Lcom/android/server/wm/TaskStack$BlackBackground;

    .line 140
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mShownBounds:Landroid/graphics/Rect;

    .line 152
    new-instance v1, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v1}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v1, p0, mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 167
    iput v2, p0, mRotation:I

    .line 1160
    iput-boolean v2, p0, mIsFullDim:Z

    .line 1755
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mMinimizedRects:Ljava/util/HashMap;

    .line 171
    iput-object p1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    .line 172
    iput p2, p0, mStackId:I

    .line 173
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v1, p0, mOverrideConfig:Landroid/content/res/Configuration;

    .line 174
    iput-boolean v2, p0, mForceFullscreen:Z

    .line 175
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mPreForceFullscreenBounds:Landroid/graphics/Rect;

    .line 178
    iput p3, p0, mStackType:I

    .line 179
    iput p4, p0, mStackZone:I

    .line 180
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 181
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050017

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mStatusBarHeight:I

    .line 182
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->getMinimizeSize()I

    move-result v1

    iput v1, p0, mMinimizedSize:I

    .line 183
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10502c8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mContorllerBoundaryY:I

    .line 184
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1080591

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 185
    .local v0, "drw":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_12d

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_a8
    iput v1, p0, mControllerHeight:I

    .line 186
    iget v1, p0, mStackType:I

    if-ne v1, v6, :cond_f2

    .line 187
    iput-boolean v2, p0, mFullscreen:Z

    .line 188
    if-eqz p5, :cond_bc

    .line 189
    iget-object v1, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 190
    iget-object v1, p0, mShownBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 192
    :cond_bc
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_f2

    .line 193
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TaskStack(), mStackId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mStackId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mBounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v0    # "drw":Landroid/graphics/drawable/Drawable;
    :cond_f2
    iput-boolean v2, p0, mVRStack:Z

    .line 203
    const/16 v1, 0x791c

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v2, p0, mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    const/4 v2, 0x2

    iget-object v4, p0, mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v2, p0, mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    const/4 v2, 0x4

    iget-object v4, p0, mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 205
    return-void

    .restart local v0    # "drw":Landroid/graphics/drawable/Drawable;
    :cond_12d
    move v1, v2

    .line 185
    goto/16 :goto_a8
.end method

.method private adjustFloatingStackBound(Landroid/graphics/Rect;IIZ)V
    .registers 15
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I
    .param p4, "isMinimized"    # Z

    .prologue
    .line 1869
    invoke-virtual {p0}, isSelectiveOrientationStateLocked()Z

    move-result v6

    if-nez v6, :cond_5a

    .line 1870
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1871
    .local v4, "stackWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1872
    .local v3, "stackHeight":I
    if-ge p2, p3, :cond_12

    if-gt v4, v3, :cond_16

    :cond_12
    if-le p2, p3, :cond_81

    if-ge v4, v3, :cond_81

    :cond_16
    const/4 v2, 0x1

    .line 1875
    .local v2, "isWrongStackRatio":Z
    :goto_17
    if-eqz v2, :cond_5a

    .line 1876
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1877
    .local v5, "tmpBounds":Landroid/graphics/Rect;
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v3

    iget v9, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v4

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1878
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wrong ratio detected(afs), id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, mStackId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", before="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", after="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    .end local v2    # "isWrongStackRatio":Z
    .end local v3    # "stackHeight":I
    .end local v4    # "stackWidth":I
    .end local v5    # "tmpBounds":Landroid/graphics/Rect;
    :cond_5a
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, mControllerHeight:I

    add-int v0, v6, v7

    .line 1884
    .local v0, "boundaryX":I
    iget v1, p0, mContorllerBoundaryY:I

    .line 1885
    .local v1, "boundaryY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    sub-int v7, p2, v0

    if-le v6, v7, :cond_83

    .line 1886
    sub-int v6, p2, v0

    iget v7, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1890
    :cond_73
    :goto_73
    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, p3, v1

    if-le v6, v7, :cond_93

    .line 1891
    iget v6, p1, Landroid/graphics/Rect;->left:I

    sub-int v7, p3, v1

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1896
    :cond_80
    :goto_80
    return-void

    .line 1872
    .end local v0    # "boundaryX":I
    .end local v1    # "boundaryY":I
    .restart local v3    # "stackHeight":I
    .restart local v4    # "stackWidth":I
    :cond_81
    const/4 v2, 0x0

    goto :goto_17

    .line 1887
    .end local v3    # "stackHeight":I
    .end local v4    # "stackWidth":I
    .restart local v0    # "boundaryX":I
    .restart local v1    # "boundaryY":I
    :cond_83
    iget v6, p1, Landroid/graphics/Rect;->right:I

    if-ge v6, v0, :cond_73

    .line 1888
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int v6, v0, v6

    iget v7, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_73

    .line 1892
    :cond_93
    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget v7, p0, mStatusBarHeight:I

    iget v8, p0, mControllerHeight:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_80

    .line 1893
    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget v7, p0, mStatusBarHeight:I

    iget v8, p0, mControllerHeight:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_80
.end method

.method private adjustSelectiveStackBound(Landroid/graphics/Rect;IIZZ)V
    .registers 15
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I
    .param p4, "isMinimized"    # Z
    .param p5, "isOverrideChanged"    # Z

    .prologue
    .line 1841
    sget-boolean v7, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v7, :cond_3d

    iget-object v7, p0, mOverrideConfig:Landroid/content/res/Configuration;

    if-eqz v7, :cond_3d

    .line 1842
    iget-object v7, p0, mOverrideConfig:Landroid/content/res/Configuration;

    iget v3, v7, Landroid/content/res/Configuration;->orientation:I

    .line 1843
    .local v3, "overrideOr":I
    iget-object v7, p0, mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->getOrientationFromDisplayLocked(I)I

    move-result v0

    .line 1844
    .local v0, "globalOr":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 1845
    .local v4, "pivotX":I
    if-eqz p5, :cond_3e

    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 1846
    .local v5, "pivotY":I
    :goto_1b
    invoke-virtual {p0}, isSelectiveOrientationStateLocked()Z

    move-result v2

    .line 1848
    .local v2, "isSelectiveState":Z
    packed-switch v3, :pswitch_data_6a

    .line 1856
    const/4 v7, 0x1

    if-ne v0, v7, :cond_61

    iget-object v7, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mMinStackBoundForPort:Landroid/graphics/Rect;

    :goto_29
    invoke-virtual {p1, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1860
    :goto_2c
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 1861
    .local v6, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1862
    .local v1, "height":I
    div-int/lit8 v7, v6, 0x2

    sub-int v7, v4, v7

    if-eqz p5, :cond_66

    .end local v5    # "pivotY":I
    :goto_3a
    invoke-virtual {p1, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1864
    .end local v0    # "globalOr":I
    .end local v1    # "height":I
    .end local v2    # "isSelectiveState":Z
    .end local v3    # "overrideOr":I
    .end local v4    # "pivotX":I
    .end local v6    # "width":I
    :cond_3d
    return-void

    .line 1845
    .restart local v0    # "globalOr":I
    .restart local v3    # "overrideOr":I
    .restart local v4    # "pivotX":I
    :cond_3e
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    goto :goto_1b

    .line 1850
    .restart local v2    # "isSelectiveState":Z
    .restart local v5    # "pivotY":I
    :pswitch_43
    if-eqz v2, :cond_4d

    iget-object v7, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mMaxSelectiveStackBoundForPort:Landroid/graphics/Rect;

    :goto_49
    invoke-virtual {p1, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2c

    :cond_4d
    iget-object v7, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mMinStackBoundForPort:Landroid/graphics/Rect;

    goto :goto_49

    .line 1853
    :pswitch_52
    if-eqz v2, :cond_5c

    iget-object v7, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mMaxSelectiveStackBoundForLand:Landroid/graphics/Rect;

    :goto_58
    invoke-virtual {p1, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2c

    :cond_5c
    iget-object v7, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mMinStackBoundForLand:Landroid/graphics/Rect;

    goto :goto_58

    .line 1856
    :cond_61
    iget-object v7, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mMinStackBoundForLand:Landroid/graphics/Rect;

    goto :goto_29

    .line 1862
    .restart local v1    # "height":I
    .restart local v6    # "width":I
    :cond_66
    div-int/lit8 v8, v1, 0x2

    sub-int/2addr v5, v8

    goto :goto_3a

    .line 1848
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_43
        :pswitch_52
    .end packed-switch
.end method

.method private findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    .registers 9
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 1709
    const/4 v0, 0x0

    .line 1710
    .local v0, "appToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz p1, :cond_2e

    .line 1711
    iget-object v5, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "taskNdx":I
    :goto_b
    if-ltz v2, :cond_2e

    .line 1712
    iget-object v5, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 1713
    .local v1, "task":Lcom/android/server/wm/Task;
    iget-object v5, v1, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "tokenNdx":I
    :goto_1d
    if-ltz v4, :cond_2c

    .line 1714
    iget-object v5, v1, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 1715
    .local v3, "token":Lcom/android/server/wm/AppWindowToken;
    iget-object v5, v3, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-ne v5, p1, :cond_63

    .line 1716
    move-object v0, v3

    .line 1720
    .end local v3    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_2c
    if-eqz v0, :cond_66

    .line 1725
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "taskNdx":I
    .end local v4    # "tokenNdx":I
    :cond_2e
    if-nez v0, :cond_62

    iget-object v5, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_62

    .line 1726
    iget-object v5, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .restart local v2    # "taskNdx":I
    :goto_40
    if-ltz v2, :cond_62

    .line 1727
    iget-object v5, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 1728
    .restart local v1    # "task":Lcom/android/server/wm/Task;
    iget-object v5, v1, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v5

    if-lez v5, :cond_69

    .line 1729
    iget-object v5, v1, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    iget-object v6, v1, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "appToken":Lcom/android/server/wm/AppWindowToken;
    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 1734
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "taskNdx":I
    .restart local v0    # "appToken":Lcom/android/server/wm/AppWindowToken;
    :cond_62
    return-object v0

    .line 1713
    .restart local v1    # "task":Lcom/android/server/wm/Task;
    .restart local v2    # "taskNdx":I
    .restart local v3    # "token":Lcom/android/server/wm/AppWindowToken;
    .restart local v4    # "tokenNdx":I
    :cond_63
    add-int/lit8 v4, v4, -0x1

    goto :goto_1d

    .line 1711
    .end local v3    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_66
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 1726
    .end local v4    # "tokenNdx":I
    :cond_69
    add-int/lit8 v2, v2, -0x1

    goto :goto_40
.end method

.method private getDimBehindFadeDuration(J)J
    .registers 8
    .param p1, "duration"    # J

    .prologue
    .line 849
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 850
    .local v0, "tv":Landroid/util/TypedValue;
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1130000

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 852
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_20

    .line 853
    long-to-float v1, p1

    long-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-long p1, v1

    .line 857
    :cond_1f
    :goto_1f
    return-wide p1

    .line 854
    :cond_20
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1f

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_1f

    .line 855
    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-long p1, v1

    goto :goto_1f
.end method

.method private getMinimizedRect(Lcom/android/server/wm/AppWindowToken;)Landroid/graphics/Rect;
    .registers 6
    .param p1, "appToken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    const/4 v3, 0x0

    .line 1757
    iget-object v2, p0, mMinimizedRects:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1758
    .local v0, "minimizeRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1759
    :cond_11
    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->getMinimizeSize()I

    move-result v1

    .line 1760
    .local v1, "size":I
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "minimizeRect":Landroid/graphics/Rect;
    invoke-direct {v0, v3, v3, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1761
    .restart local v0    # "minimizeRect":Landroid/graphics/Rect;
    iget-object v2, p0, mMinimizedRects:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1763
    .end local v1    # "size":I
    :cond_23
    iget-object v2, p0, mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1764
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v2
.end method

.method private getOrientationFromAppToken(Lcom/android/server/wm/AppWindowToken;)I
    .registers 6
    .param p1, "appToken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1902
    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v3, :cond_17

    if-eqz p1, :cond_17

    .line 1903
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getPreferredOrientation()I

    move-result v0

    .line 1904
    .local v0, "requestedOr":I
    const/4 v3, 0x5

    if-ne v0, v3, :cond_14

    .line 1905
    sget v3, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sDefaultOrientation:I

    if-ne v3, v1, :cond_19

    .line 1906
    const/4 v0, 0x1

    .line 1912
    :cond_14
    :goto_14
    packed-switch v0, :pswitch_data_22

    .line 1926
    .end local v0    # "requestedOr":I
    :cond_17
    :pswitch_17
    const/4 v1, 0x0

    :goto_18
    :pswitch_18
    return v1

    .line 1907
    .restart local v0    # "requestedOr":I
    :cond_19
    sget v3, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sDefaultOrientation:I

    if-ne v3, v2, :cond_14

    .line 1908
    const/4 v0, 0x0

    goto :goto_14

    :pswitch_1f
    move v1, v2

    .line 1923
    goto :goto_18

    .line 1912
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_1f
        :pswitch_18
        :pswitch_1f
        :pswitch_18
        :pswitch_17
        :pswitch_1f
        :pswitch_18
    .end packed-switch
.end method

.method private updateOverrideConfiguration()V
    .registers 2

    .prologue
    .line 326
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, updateOverrideConfiguration(Lcom/android/server/wm/AppWindowToken;)V

    .line 327
    return-void
.end method


# virtual methods
.method addTask(Lcom/android/server/wm/Task;Z)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z

    .prologue
    .line 540
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, addTask(Lcom/android/server/wm/Task;ZZ)V

    .line 541
    return-void
.end method

.method addTask(Lcom/android/server/wm/Task;ZZ)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z
    .param p3, "showForAllUsers"    # Z

    .prologue
    .line 551
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, addTask(Lcom/android/server/wm/Task;ZZI)V

    .line 552
    return-void
.end method

.method addTask(Lcom/android/server/wm/Task;ZZI)V
    .registers 16
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z
    .param p3, "showForAllUsers"    # Z
    .param p4, "homeIdx"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 558
    const/4 v2, 0x0

    .line 560
    .local v2, "originNdx":I
    if-nez p2, :cond_d1

    .line 561
    const/4 v3, 0x0

    .line 564
    .local v3, "stackNdx":I
    invoke-virtual {p0}, isFloatingStack()Z

    move-result v8

    if-eqz v8, :cond_ce

    iget-object v8, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_ce

    .line 565
    iget-object v8, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mGlobalTasks:Ljava/util/ArrayList;

    iget-object v9, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 566
    if-gez v2, :cond_25

    .line 567
    const/4 v2, 0x0

    .line 589
    :cond_25
    :goto_25
    sget-boolean v8, Lcom/android/server/wm/WindowManagerService;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v8, :cond_55

    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addTask: task="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " toTop="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pos="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_55
    iget-object v8, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 592
    iput-object p0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 595
    iget-object v8, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v8, :cond_9f

    .line 596
    if-nez p2, :cond_103

    .line 597
    move v3, v2

    .line 647
    :cond_63
    :goto_63
    sget-boolean v8, Lcom/android/server/wm/WindowManagerService;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v8, :cond_93

    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addTask: task="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " toTop="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pos="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_93
    iget-object v8, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mGlobalTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 649
    iget-boolean v8, p0, mFixedBound:Z

    invoke-virtual {p0, v8, p1}, setWindowFlagFixedBoundInner(ZLcom/android/server/wm/Task;)V

    .line 653
    :cond_9f
    if-eqz p2, :cond_a6

    .line 654
    iget-object v8, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8, p0, v7}, Lcom/android/server/wm/DisplayContent;->moveStack(Lcom/android/server/wm/TaskStack;Z)V

    .line 656
    :cond_a6
    const/16 v8, 0x791a

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    if-eqz p2, :cond_b6

    move v6, v7

    :cond_b6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v7

    const/4 v6, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v6

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 659
    iget-object v6, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget v7, p0, mStackId:I

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->assignMultiWindowScale(I)V

    .line 662
    return-void

    .line 570
    :cond_ce
    const/4 v2, 0x0

    goto/16 :goto_25

    .line 575
    .end local v3    # "stackNdx":I
    :cond_d1
    iget-object v8, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 576
    .restart local v3    # "stackNdx":I
    if-nez p3, :cond_25

    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget v9, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v8

    if-nez v8, :cond_25

    .line 578
    :cond_e3
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_ff

    .line 579
    iget-object v8, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    .line 580
    .local v5, "tmpTask":Lcom/android/server/wm/Task;
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v8

    if-eqz v8, :cond_ff

    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget v9, v5, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v8

    if-nez v8, :cond_e3

    .line 586
    .end local v5    # "tmpTask":Lcom/android/server/wm/Task;
    :cond_ff
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_25

    .line 599
    :cond_103
    iget-object v8, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mGlobalTasks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 602
    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget v9, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v1

    .line 603
    .local v1, "isProfiled":Z
    if-nez p3, :cond_137

    if-nez v1, :cond_137

    .line 605
    :cond_117
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_135

    .line 606
    iget-object v8, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mGlobalTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    .line 607
    .restart local v5    # "tmpTask":Lcom/android/server/wm/Task;
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v8

    if-nez v8, :cond_117

    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget v9, v5, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v8

    if-nez v8, :cond_117

    .line 612
    .end local v5    # "tmpTask":Lcom/android/server/wm/Task;
    :cond_135
    add-int/lit8 v3, v3, 0x1

    .line 616
    :cond_137
    if-lez v3, :cond_63

    .line 617
    move v0, v3

    .line 618
    .local v0, "idx":I
    :goto_13a
    if-lez v0, :cond_144

    .line 619
    iget-object v8, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v8, v8, mStackType:I

    if-ne v8, v7, :cond_149

    if-gt v0, p4, :cond_149

    .line 642
    :cond_144
    :goto_144
    if-ltz v0, :cond_63

    .line 643
    move v3, v0

    goto/16 :goto_63

    .line 622
    :cond_149
    iget-object v8, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mGlobalTasks:Ljava/util/ArrayList;

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 625
    .local v4, "targetTask":Lcom/android/server/wm/Task;
    iget-object v8, v4, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v8}, isVRStack()Z

    move-result v8

    if-eqz v8, :cond_192

    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->isHMTconnected()Z

    move-result v8

    if-eqz v8, :cond_192

    .line 626
    iget-object v8, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v8}, isVRStack()Z

    move-result v8

    if-nez v8, :cond_192

    .line 627
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addTask: add task "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " before "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_18f
    add-int/lit8 v0, v0, -0x1

    goto :goto_13a

    .line 634
    :cond_192
    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget v9, v4, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v8

    if-ne v1, v8, :cond_144

    .line 638
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getLayer()I

    move-result v8

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getLayer()I

    move-result v9

    if-lt v8, v9, :cond_18f

    goto :goto_144
.end method

.method adjustBoundForEasyOneHand(Landroid/graphics/Rect;)Z
    .registers 9
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    .line 1962
    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowManagerService;->getEasyOneHandScaleSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v1

    .line 1963
    .local v1, "spec":Landroid/view/MagnificationSpec;
    if-eqz p1, :cond_50

    if-eqz v1, :cond_50

    iget v4, v1, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_50

    .line 1964
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1965
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1966
    .local v0, "h":I
    iget v3, v1, Landroid/view/MagnificationSpec;->offsetY:F

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 1967
    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    int-to-float v4, v0

    iget v5, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 1968
    iget v3, v1, Landroid/view/MagnificationSpec;->offsetX:F

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 1969
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    int-to-float v4, v2

    iget v5, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 1971
    const/4 v3, 0x1

    .line 1974
    .end local v0    # "h":I
    .end local v2    # "w":I
    :cond_50
    return v3
.end method

.method animateDimLayers()Z
    .registers 36

    .prologue
    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, mDimLayer:Lcom/android/server/wm/DimLayer;

    move-object/from16 v31, v0

    if-nez v31, :cond_3d

    .line 863
    const-string v31, "WindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TaskStack #"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, mStackId:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " is already detached from Display #"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const/16 v31, 0x0

    .line 1123
    :goto_3c
    return v31

    .line 869
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowAnimator;->getDualScreenTransitionLocked()Lcom/android/server/wm/DualScreenTransition;

    move-result-object v13

    .line 870
    .local v13, "dualScreenTransition":Lcom/android/server/wm/DualScreenTransition;
    if-eqz v13, :cond_19c

    const/16 v31, 0x64

    move/from16 v0, v31

    invoke-virtual {v13, v0}, Lcom/android/server/wm/DualScreenTransition;->isTransitionEqual(I)Z

    move-result v31

    if-eqz v31, :cond_19c

    const/4 v14, 0x1

    .line 876
    .local v14, "dualscreenTransitionTaskMoveAnimating":Z
    :goto_5a
    move-object/from16 v0, p0

    iget-object v0, v0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    if-nez v31, :cond_19f

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, mDimLayer:Lcom/android/server/wm/DimLayer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v11

    .line 878
    .local v11, "dimLayer":I
    const/4 v10, 0x0

    .line 988
    .local v10, "dimAmount":F
    :goto_6d
    const/4 v4, 0x0

    .line 992
    .local v4, "applyMagnificationSpec":Z
    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, mShownBounds:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-direct {v7, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 993
    .local v7, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    if-eqz v31, :cond_54e

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v24

    .line 995
    .local v24, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v31

    if-eqz v31, :cond_41f

    invoke-virtual/range {p0 .. p0}, hasWindowOutOfStack()Z

    move-result v31

    if-eqz v31, :cond_41f

    const/16 v25, 0x1

    .line 996
    .local v25, "outOfBounds":Z
    :goto_a1
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v31

    if-eqz v31, :cond_423

    const/high16 v31, 0x200000

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v15

    .line 997
    .local v15, "fullZone":Z
    :goto_b1
    if-nez v25, :cond_b5

    if-eqz v15, :cond_429

    :cond_b5
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mIsRecentsMultiWindowRunning:Z

    move/from16 v31, v0

    if-nez v31, :cond_429

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v21

    .line 999
    .local v21, "info":Landroid/view/DisplayInfo;
    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v33, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v34, v0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1002
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, adjustBoundForEasyOneHand(Landroid/graphics/Rect;)Z

    .line 1079
    .end local v15    # "fullZone":Z
    .end local v21    # "info":Landroid/view/DisplayInfo;
    .end local v24    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v25    # "outOfBounds":Z
    :cond_ed
    :goto_ed
    move-object/from16 v0, p0

    iget-object v0, v0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    if-nez v31, :cond_555

    move-object/from16 v0, p0

    iget-object v0, v0, mDimLayer:Lcom/android/server/wm/DimLayer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/DimLayer;->getTargetAlpha()F

    move-result v31

    cmpl-float v31, v31, v10

    if-eqz v31, :cond_555

    const/4 v12, 0x1

    .line 1080
    .local v12, "dimLayerWhileHidingAnimation":Z
    :goto_104
    if-eqz v12, :cond_112

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, isFloatingStack(Z)Z

    move-result v31

    if-eqz v31, :cond_128

    .line 1081
    :cond_112
    move-object/from16 v0, p0

    iget-object v0, v0, mDimLayer:Lcom/android/server/wm/DimLayer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 1084
    :cond_128
    move-object/from16 v0, p0

    iget-object v0, v0, mBlackBackground:Lcom/android/server/wm/TaskStack$BlackBackground;

    move-object/from16 v31, v0

    if-eqz v31, :cond_13b

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, mBlackBackground:Lcom/android/server/wm/TaskStack$BlackBackground;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v4}, Lcom/android/server/wm/TaskStack$BlackBackground;->setBound(Landroid/graphics/Rect;Z)V

    .line 1090
    :cond_13b
    move-object/from16 v0, p0

    iget-object v0, v0, mDimLayer:Lcom/android/server/wm/DimLayer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/DimLayer;->getTargetAlpha()F

    move-result v27

    .line 1091
    .local v27, "targetAlpha":F
    cmpl-float v31, v27, v10

    if-eqz v31, :cond_5a2

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    if-nez v31, :cond_558

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, mDimLayer:Lcom/android/server/wm/DimLayer;

    move-object/from16 v31, v0

    const-wide/16 v32, 0xc8

    invoke-virtual/range {v31 .. v33}, Lcom/android/server/wm/DimLayer;->hide(J)V

    .line 1109
    :cond_15c
    :goto_15c
    move-object/from16 v0, p0

    iget-object v0, v0, mBlackBackground:Lcom/android/server/wm/TaskStack$BlackBackground;

    move-object/from16 v31, v0

    if-eqz v31, :cond_16d

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, mBlackBackground:Lcom/android/server/wm/TaskStack$BlackBackground;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/TaskStack$BlackBackground;->animateBlackBackground()V

    .line 1115
    :cond_16d
    move-object/from16 v0, p0

    iget-object v0, v0, mDimLayer:Lcom/android/server/wm/DimLayer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v31

    if-eqz v31, :cond_198

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Lcom/android/server/wm/WindowManagerService;->okToDisplay(I)Z

    move-result v31

    if-nez v31, :cond_5bd

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, mDimLayer:Lcom/android/server/wm/DimLayer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/DimLayer;->show()V

    .line 1123
    :cond_198
    const/16 v31, 0x0

    goto/16 :goto_3c

    .line 870
    .end local v4    # "applyMagnificationSpec":Z
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v10    # "dimAmount":F
    .end local v11    # "dimLayer":I
    .end local v12    # "dimLayerWhileHidingAnimation":Z
    .end local v14    # "dualscreenTransitionTaskMoveAnimating":Z
    .end local v27    # "targetAlpha":F
    :cond_19c
    const/4 v14, 0x0

    goto/16 :goto_5a

    .line 918
    .restart local v14    # "dualscreenTransitionTaskMoveAnimating":Z
    :cond_19f
    const/16 v25, 0x0

    .line 919
    .restart local v25    # "outOfBounds":Z
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, mOutOfBound:Z

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v24

    .line 922
    .restart local v24    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v31

    if-eqz v31, :cond_2a2

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 924
    .local v6, "baseLayer":I
    move-object/from16 v0, p0

    iget-object v0, v0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_1df
    :goto_1df
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_1fc

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 925
    .local v9, "cw":Lcom/android/server/wm/WindowState;
    iget v0, v9, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v31, v0

    if-gez v31, :cond_1df

    iget v0, v9, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v0, v6, :cond_1df

    .line 926
    iget v6, v9, Lcom/android/server/wm/WindowState;->mLayer:I

    goto :goto_1df

    .line 929
    .end local v9    # "cw":Lcom/android/server/wm/WindowState;
    :cond_1fc
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    if-eqz v31, :cond_299

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v31

    if-eqz v31, :cond_299

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v20, v0

    .line 930
    .local v20, "imeWin":Lcom/android/server/wm/WindowState;
    :goto_228
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    if-eqz v31, :cond_29c

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_29c

    const/16 v23, 0x1

    .line 931
    .local v23, "isImeTarget":Z
    :goto_25e
    if-eqz v23, :cond_29f

    if-eqz v20, :cond_29f

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-gt v0, v6, :cond_29f

    .line 932
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v31, v0

    add-int/lit8 v6, v31, -0x1

    .line 936
    :goto_280
    move v11, v6

    .line 937
    .restart local v11    # "dimLayer":I
    move-object/from16 v0, p0

    iget-object v0, v0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v10, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 938
    .restart local v10    # "dimAmount":F
    goto/16 :goto_6d

    .line 929
    .end local v10    # "dimAmount":F
    .end local v11    # "dimLayer":I
    .end local v20    # "imeWin":Lcom/android/server/wm/WindowState;
    .end local v23    # "isImeTarget":Z
    :cond_299
    const/16 v20, 0x0

    goto :goto_228

    .line 930
    .restart local v20    # "imeWin":Lcom/android/server/wm/WindowState;
    :cond_29c
    const/16 v23, 0x0

    goto :goto_25e

    .line 934
    .restart local v23    # "isImeTarget":Z
    :cond_29f
    add-int/lit8 v6, v6, -0x1

    goto :goto_280

    .line 938
    .end local v6    # "baseLayer":I
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "imeWin":Lcom/android/server/wm/WindowState;
    .end local v23    # "isImeTarget":Z
    :cond_2a2
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v31

    if-eqz v31, :cond_3c8

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 941
    .restart local v6    # "baseLayer":I
    invoke-virtual/range {p0 .. p0}, hasWindowOutOfStack()Z

    move-result v25

    .line 942
    move-object/from16 v0, p0

    iget-boolean v0, v0, mFixedBound:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2cf

    if-nez v25, :cond_2cf

    .line 943
    add-int/lit8 v6, v6, 0x1

    .line 967
    :cond_2c2
    :goto_2c2
    move v11, v6

    .line 968
    .restart local v11    # "dimLayer":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, mFixedBound:Z

    move/from16 v31, v0

    if-eqz v31, :cond_3b0

    const/high16 v10, 0x3f000000    # 0.5f

    .line 969
    .restart local v10    # "dimAmount":F
    :goto_2cd
    goto/16 :goto_6d

    .line 945
    .end local v10    # "dimAmount":F
    .end local v11    # "dimLayer":I
    :cond_2cf
    move-object/from16 v0, p0

    iget-object v0, v0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :cond_2e5
    :goto_2e5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_302

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 946
    .restart local v9    # "cw":Lcom/android/server/wm/WindowState;
    iget v0, v9, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v31, v0

    if-gez v31, :cond_2e5

    iget v0, v9, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v0, v6, :cond_2e5

    .line 947
    iget v6, v9, Lcom/android/server/wm/WindowState;->mLayer:I

    goto :goto_2e5

    .line 950
    .end local v9    # "cw":Lcom/android/server/wm/WindowState;
    :cond_302
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowCenterBar:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3a8

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowCenterBar:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v31

    if-eqz v31, :cond_3a8

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowCenterBar:Lcom/android/server/wm/WindowState;

    .line 951
    .local v8, "centerBarWin":Lcom/android/server/wm/WindowState;
    :goto_32c
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3aa

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v31

    if-eqz v31, :cond_3aa

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v20, v0

    .line 952
    .restart local v20    # "imeWin":Lcom/android/server/wm/WindowState;
    :goto_358
    add-int/lit8 v6, v6, -0x1

    .line 953
    if-eqz v8, :cond_386

    .line 954
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_3ad

    const/16 v22, 0x1

    .line 956
    .local v22, "isFocusStack":Z
    :goto_368
    if-eqz v22, :cond_386

    if-nez v25, :cond_386

    .line 957
    iget-object v0, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-gt v0, v6, :cond_386

    .line 958
    iget-object v0, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v31, v0

    add-int/lit8 v6, v31, -0x1

    .line 963
    .end local v22    # "isFocusStack":Z
    :cond_386
    if-eqz v20, :cond_2c2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-gt v0, v6, :cond_2c2

    .line 964
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v31, v0

    add-int/lit8 v6, v31, -0x1

    goto/16 :goto_2c2

    .line 950
    .end local v8    # "centerBarWin":Lcom/android/server/wm/WindowState;
    .end local v20    # "imeWin":Lcom/android/server/wm/WindowState;
    :cond_3a8
    const/4 v8, 0x0

    goto :goto_32c

    .line 951
    .restart local v8    # "centerBarWin":Lcom/android/server/wm/WindowState;
    :cond_3aa
    const/16 v20, 0x0

    goto :goto_358

    .line 954
    .restart local v20    # "imeWin":Lcom/android/server/wm/WindowState;
    :cond_3ad
    const/16 v22, 0x0

    goto :goto_368

    .line 968
    .end local v8    # "centerBarWin":Lcom/android/server/wm/WindowState;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "imeWin":Lcom/android/server/wm/WindowState;
    .restart local v11    # "dimLayer":I
    :cond_3b0
    move-object/from16 v0, p0

    iget-object v0, v0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v10, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto/16 :goto_2cd

    .line 972
    .end local v6    # "baseLayer":I
    .end local v11    # "dimLayer":I
    :cond_3c8
    move-object/from16 v0, p0

    iget-object v0, v0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 973
    .restart local v6    # "baseLayer":I
    move-object/from16 v0, p0

    iget-object v0, v0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :cond_3e8
    :goto_3e8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_405

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 974
    .restart local v9    # "cw":Lcom/android/server/wm/WindowState;
    iget v0, v9, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v31, v0

    if-gez v31, :cond_3e8

    iget v0, v9, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v0, v6, :cond_3e8

    .line 975
    iget v6, v9, Lcom/android/server/wm/WindowState;->mLayer:I

    goto :goto_3e8

    .line 978
    .end local v9    # "cw":Lcom/android/server/wm/WindowState;
    :cond_405
    add-int/lit8 v11, v6, -0x1

    .line 979
    .restart local v11    # "dimLayer":I
    move-object/from16 v0, p0

    iget-object v0, v0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v10, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .restart local v10    # "dimAmount":F
    goto/16 :goto_6d

    .line 995
    .end local v6    # "baseLayer":I
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v25    # "outOfBounds":Z
    .restart local v4    # "applyMagnificationSpec":Z
    .restart local v7    # "bounds":Landroid/graphics/Rect;
    :cond_41f
    const/16 v25, 0x0

    goto/16 :goto_a1

    .line 996
    .restart local v25    # "outOfBounds":Z
    :cond_423
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v15

    goto/16 :goto_b1

    .line 1006
    .restart local v15    # "fullZone":Z
    :cond_429
    const/16 v26, 0x0

    .line 1038
    .local v26, "spec":Landroid/view/MagnificationSpec;
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v31, v0

    if-eqz v31, :cond_535

    invoke-virtual/range {p0 .. p0}, getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v31

    if-nez v31, :cond_535

    .line 1039
    invoke-virtual/range {p0 .. p0}, getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    .line 1040
    .local v5, "atoken":Lcom/android/server/wm/AppWindowToken;
    const/16 v28, 0x0

    .line 1041
    .local v28, "targetWindow":Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_478

    .line 1042
    iget-object v0, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :cond_453
    :goto_453
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_478

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/wm/WindowState;

    .line 1043
    .local v30, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v31

    if-eqz v31, :cond_453

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v31, v0

    and-int/lit8 v31, v31, 0x2

    if-eqz v31, :cond_453

    .line 1044
    move-object/from16 v28, v30

    goto :goto_453

    .line 1049
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v30    # "win":Lcom/android/server/wm/WindowState;
    :cond_478
    if-eqz v28, :cond_48e

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v26

    .line 1053
    :cond_48e
    if-eqz v26, :cond_535

    invoke-virtual/range {v26 .. v26}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v31

    if-nez v31, :cond_535

    .line 1054
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v29

    .line 1055
    .local v29, "w":I
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v18

    .line 1057
    .local v18, "h":I
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v31, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v31, v31, v32

    const/high16 v32, 0x3f000000    # 0.5f

    add-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 1058
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v31, v31, v32

    const/high16 v32, 0x3f000000    # 0.5f

    add-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 1059
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v31, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v31, v31, v32

    const/high16 v32, 0x3f000000    # 0.5f

    add-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 1060
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v31, v31, v32

    const/high16 v32, 0x3f000000    # 0.5f

    add-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 1062
    const/4 v4, 0x1

    .line 1068
    .end local v5    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v18    # "h":I
    .end local v28    # "targetWindow":Lcom/android/server/wm/WindowState;
    .end local v29    # "w":I
    :cond_535
    if-eqz v26, :cond_53d

    invoke-virtual/range {v26 .. v26}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v31

    if-eqz v31, :cond_ed

    :cond_53d
    invoke-virtual/range {p0 .. p0}, getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v31

    if-nez v31, :cond_ed

    .line 1069
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, adjustBoundForEasyOneHand(Landroid/graphics/Rect;)Z

    goto/16 :goto_ed

    .line 1075
    .end local v15    # "fullZone":Z
    .end local v24    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v25    # "outOfBounds":Z
    .end local v26    # "spec":Landroid/view/MagnificationSpec;
    :cond_54e
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, adjustBoundForEasyOneHand(Landroid/graphics/Rect;)Z

    goto/16 :goto_ed

    .line 1079
    :cond_555
    const/4 v12, 0x0

    goto/16 :goto_104

    .line 1095
    .restart local v12    # "dimLayerWhileHidingAnimation":Z
    .restart local v27    # "targetAlpha":F
    :cond_558
    move-object/from16 v0, p0

    iget-object v0, v0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v31, v0

    if-eqz v31, :cond_59f

    move-object/from16 v0, p0

    iget-object v0, v0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    if-eqz v31, :cond_59f

    move-object/from16 v0, p0

    iget-object v0, v0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v16

    .line 1098
    .local v16, "duration":J
    :goto_584
    cmpl-float v31, v27, v10

    if-lez v31, :cond_590

    .line 1099
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, getDimBehindFadeDuration(J)J

    move-result-wide v16

    .line 1101
    :cond_590
    move-object/from16 v0, p0

    iget-object v0, v0, mDimLayer:Lcom/android/server/wm/DimLayer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-wide/from16 v1, v16

    invoke-virtual {v0, v11, v10, v1, v2}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    goto/16 :goto_15c

    .line 1095
    .end local v16    # "duration":J
    :cond_59f
    const-wide/16 v16, 0xc8

    goto :goto_584

    .line 1103
    :cond_5a2
    move-object/from16 v0, p0

    iget-object v0, v0, mDimLayer:Lcom/android/server/wm/DimLayer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v31

    move/from16 v0, v31

    if-eq v0, v11, :cond_15c

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, mDimLayer:Lcom/android/server/wm/DimLayer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    goto/16 :goto_15c

    .line 1120
    :cond_5bd
    move-object/from16 v0, p0

    iget-object v0, v0, mDimLayer:Lcom/android/server/wm/DimLayer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/DimLayer;->stepAnimation()Z

    move-result v31

    goto/16 :goto_3c
.end method

.method attachDisplayContent(Lcom/android/server/wm/DisplayContent;)V
    .registers 11
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 736
    iget-object v4, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v4, :cond_c

    .line 737
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "attachDisplayContent: Already attached"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 740
    :cond_c
    iput-object p1, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 742
    new-instance v4, Lcom/android/server/wm/DimLayer;

    iget-object v5, p0, mService:Lcom/android/server/wm/WindowManagerService;

    const-string v6, "DimLayer"

    invoke-direct {v4, v5, p0, p1, v6}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    iput-object v4, p0, mDimLayer:Lcom/android/server/wm/DimLayer;

    .line 743
    new-instance v4, Lcom/android/server/wm/DimLayer;

    iget-object v5, p0, mService:Lcom/android/server/wm/WindowManagerService;

    const-string v6, "AnimationBackgroundSurface"

    invoke-direct {v4, v5, p0, p1, v6}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    iput-object v4, p0, mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    .line 748
    iget v4, p0, mStackType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_118

    .line 749
    new-instance v4, Lcom/android/server/wm/TaskStack$BlackBackground;

    iget-object v5, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v4, v5, p0, p1}, Lcom/android/server/wm/TaskStack$BlackBackground;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V

    iput-object v4, p0, mBlackBackground:Lcom/android/server/wm/TaskStack$BlackBackground;

    .line 750
    iget-object v4, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v4, :cond_118

    .line 751
    iget-object v4, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v4, v4, Landroid/view/DisplayInfo;->rotation:I

    iput v4, p0, mRotation:I

    .line 753
    iget-object v4, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v2, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 754
    .local v2, "logicalWidth":I
    iget-object v4, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v1, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 755
    .local v1, "logicalHeight":I
    if-ge v2, v1, :cond_60

    iget-object v4, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-gt v4, v5, :cond_70

    :cond_60
    if-le v2, v1, :cond_118

    iget-object v4, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ge v4, v5, :cond_118

    .line 757
    :cond_70
    const/4 v0, 0x0

    .line 758
    .local v0, "isAttachedSelectiveStack":Z
    sget-boolean v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v4, :cond_b6

    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMaxSelectiveStackBoundForLand:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v4, v5, :cond_95

    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMaxSelectiveStackBoundForLand:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eq v4, v5, :cond_b5

    :cond_95
    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMaxSelectiveStackBoundForPort:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v4, v5, :cond_b6

    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMaxSelectiveStackBoundForPort:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ne v4, v5, :cond_b6

    .line 763
    :cond_b5
    const/4 v0, 0x1

    .line 766
    :cond_b6
    if-nez v0, :cond_118

    .line 769
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, mBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 770
    .local v3, "tmpBounds":Landroid/graphics/Rect;
    iget-object v4, p0, mBounds:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    iget v8, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 771
    iget-object v4, p0, mShownBounds:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    iget v8, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 772
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->SAFE_DEBUG:Z

    if-eqz v4, :cond_118

    .line 773
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exceptional in attachDisplayContent, , mStackId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mStackId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mBounds="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tmpBounds="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", logicalWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    .end local v0    # "isAttachedSelectiveStack":Z
    .end local v1    # "logicalHeight":I
    .end local v2    # "logicalWidth":I
    .end local v3    # "tmpBounds":Landroid/graphics/Rect;
    :cond_118
    invoke-virtual {p0}, updateDisplayInfo()V

    .line 783
    return-void
.end method

.method public checkFixedBound()Z
    .registers 3

    .prologue
    .line 1454
    iget-object v0, p0, mBounds:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, checkFixedBound(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public checkFixedBound(Landroid/graphics/Rect;Z)Z
    .registers 16
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "justCheck"    # Z

    .prologue
    .line 1460
    const/4 v10, 0x0

    .line 1461
    .local v10, "treeLevel":I
    iget v11, p0, mStackZone:I

    if-eqz v11, :cond_b

    iget v11, p0, mStackZone:I

    const/16 v12, 0xf

    if-ne v11, v12, :cond_d

    .line 1463
    :cond_b
    const/4 v6, 0x0

    .line 1565
    :cond_c
    :goto_c
    return v6

    .line 1464
    :cond_d
    iget v11, p0, mStackZone:I

    const/4 v12, 0x3

    if-eq v11, v12, :cond_18

    iget v11, p0, mStackZone:I

    const/16 v12, 0xc

    if-ne v11, v12, :cond_97

    .line 1466
    :cond_18
    const/4 v10, 0x1

    .line 1471
    :goto_19
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 1472
    .local v7, "displaySize":Landroid/graphics/Point;
    iget-object v11, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v11, :cond_99

    .line 1473
    iget-object v11, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v11

    iget v11, v11, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v11, v7, Landroid/graphics/Point;->x:I

    .line 1474
    iget-object v11, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v11

    iget v11, v11, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v11, v7, Landroid/graphics/Point;->y:I

    .line 1478
    iget v11, v7, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    const v12, 0x3e4ccccd    # 0.2f

    mul-float/2addr v11, v12

    float-to-int v5, v11

    .line 1479
    .local v5, "FIXED_WIDTH":I
    iget v11, v7, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    const v12, 0x3e4ccccd    # 0.2f

    mul-float/2addr v11, v12

    float-to-int v0, v11

    .line 1481
    .local v0, "FIXED_HEIGHT":I
    const/4 v8, 0x0

    .line 1482
    .local v8, "fixedType":I
    const/4 v2, 0x1

    .line 1483
    .local v2, "FIXED_ON_LEFT":I
    const/4 v3, 0x2

    .line 1484
    .local v3, "FIXED_ON_RIGHT":I
    const/4 v4, 0x4

    .line 1485
    .local v4, "FIXED_ON_TOP":I
    const/16 v1, 0x8

    .line 1487
    .local v1, "FIXED_ON_BOTTOM":I
    iget v11, v7, Landroid/graphics/Point;->x:I

    iget v12, v7, Landroid/graphics/Point;->y:I

    if-ge v11, v12, :cond_9c

    const/4 v9, 0x1

    .line 1488
    .local v9, "portrait":Z
    :goto_53
    const/4 v11, 0x1

    if-ne v10, v11, :cond_af

    .line 1489
    if-eqz v9, :cond_a0

    .line 1490
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-gt v11, v0, :cond_64

    .line 1491
    iget v11, p0, mStackZone:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_9e

    .line 1492
    or-int/2addr v8, v4

    .line 1544
    :cond_64
    :goto_64
    const/4 v6, 0x0

    .line 1545
    .local v6, "change":Z
    and-int v11, v8, v2

    if-eqz v11, :cond_71

    .line 1546
    if-nez p2, :cond_70

    .line 1547
    iget v11, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v5

    iput v11, p1, Landroid/graphics/Rect;->left:I

    .line 1548
    :cond_70
    const/4 v6, 0x1

    .line 1550
    :cond_71
    and-int v11, v8, v3

    if-eqz v11, :cond_7d

    .line 1551
    if-nez p2, :cond_7c

    .line 1552
    iget v11, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v5

    iput v11, p1, Landroid/graphics/Rect;->right:I

    .line 1553
    :cond_7c
    const/4 v6, 0x1

    .line 1555
    :cond_7d
    and-int v11, v8, v4

    if-eqz v11, :cond_89

    .line 1556
    if-nez p2, :cond_88

    .line 1557
    iget v11, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v0

    iput v11, p1, Landroid/graphics/Rect;->top:I

    .line 1558
    :cond_88
    const/4 v6, 0x1

    .line 1560
    :cond_89
    and-int v11, v8, v1

    if-eqz v11, :cond_c

    .line 1561
    if-nez p2, :cond_94

    .line 1562
    iget v11, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v0

    iput v11, p1, Landroid/graphics/Rect;->bottom:I

    .line 1563
    :cond_94
    const/4 v6, 0x1

    goto/16 :goto_c

    .line 1468
    .end local v0    # "FIXED_HEIGHT":I
    .end local v1    # "FIXED_ON_BOTTOM":I
    .end local v2    # "FIXED_ON_LEFT":I
    .end local v3    # "FIXED_ON_RIGHT":I
    .end local v4    # "FIXED_ON_TOP":I
    .end local v5    # "FIXED_WIDTH":I
    .end local v6    # "change":Z
    .end local v7    # "displaySize":Landroid/graphics/Point;
    .end local v8    # "fixedType":I
    .end local v9    # "portrait":Z
    :cond_97
    const/4 v10, 0x2

    goto :goto_19

    .line 1476
    .restart local v7    # "displaySize":Landroid/graphics/Point;
    :cond_99
    const/4 v6, 0x0

    goto/16 :goto_c

    .line 1487
    .restart local v0    # "FIXED_HEIGHT":I
    .restart local v1    # "FIXED_ON_BOTTOM":I
    .restart local v2    # "FIXED_ON_LEFT":I
    .restart local v3    # "FIXED_ON_RIGHT":I
    .restart local v4    # "FIXED_ON_TOP":I
    .restart local v5    # "FIXED_WIDTH":I
    .restart local v8    # "fixedType":I
    :cond_9c
    const/4 v9, 0x0

    goto :goto_53

    .line 1494
    .restart local v9    # "portrait":Z
    :cond_9e
    or-int/2addr v8, v1

    goto :goto_64

    .line 1498
    :cond_a0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-gt v11, v5, :cond_64

    .line 1499
    iget v11, p0, mStackZone:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_ad

    .line 1500
    or-int/2addr v8, v2

    goto :goto_64

    .line 1502
    :cond_ad
    or-int/2addr v8, v3

    goto :goto_64

    .line 1506
    :cond_af
    const/4 v11, 0x2

    if-ne v10, v11, :cond_64

    .line 1507
    if-eqz v9, :cond_db

    .line 1508
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-gt v11, v0, :cond_c5

    .line 1509
    iget v11, p0, mStackZone:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_c4

    iget v11, p0, mStackZone:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_d7

    .line 1511
    :cond_c4
    or-int/2addr v8, v4

    .line 1516
    :cond_c5
    :goto_c5
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-gt v11, v5, :cond_64

    .line 1517
    iget v11, p0, mStackZone:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_d5

    iget v11, p0, mStackZone:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_d9

    .line 1519
    :cond_d5
    or-int/2addr v8, v2

    goto :goto_64

    .line 1513
    :cond_d7
    or-int/2addr v8, v1

    goto :goto_c5

    .line 1521
    :cond_d9
    or-int/2addr v8, v3

    goto :goto_64

    .line 1525
    :cond_db
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-gt v11, v0, :cond_ec

    .line 1526
    iget v11, p0, mStackZone:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_eb

    iget v11, p0, mStackZone:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_ff

    .line 1528
    :cond_eb
    or-int/2addr v8, v4

    .line 1533
    :cond_ec
    :goto_ec
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-gt v11, v5, :cond_64

    .line 1534
    iget v11, p0, mStackZone:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_fc

    iget v11, p0, mStackZone:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_101

    .line 1536
    :cond_fc
    or-int/2addr v8, v2

    goto/16 :goto_64

    .line 1530
    :cond_ff
    or-int/2addr v8, v1

    goto :goto_ec

    .line 1538
    :cond_101
    or-int/2addr v8, v3

    goto/16 :goto_64
.end method

.method clearDimmingIfNeeded(I)V
    .registers 3
    .param p1, "layer"    # I

    .prologue
    .line 1223
    iget-object v0, p0, mDimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_21

    .line 1224
    iget-object v0, p0, mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v0

    if-ge p1, v0, :cond_21

    iget-object v0, p0, mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1227
    iget-object v0, p0, mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->hide()V

    .line 1230
    :cond_21
    return-void
.end method

.method close()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1274
    iget-object v0, p0, mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_c

    .line 1275
    iget-object v0, p0, mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 1276
    iput-object v1, p0, mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    .line 1278
    :cond_c
    iget-object v0, p0, mDimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_17

    .line 1279
    iget-object v0, p0, mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 1280
    iput-object v1, p0, mDimLayer:Lcom/android/server/wm/DimLayer;

    .line 1282
    :cond_17
    return-void
.end method

.method createBlackBackground(Lcom/android/server/wm/DisplayContent;)V
    .registers 4
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 790
    invoke-virtual {p0}, hasBlackBackground()Z

    move-result v0

    if-nez v0, :cond_f

    .line 791
    new-instance v0, Lcom/android/server/wm/TaskStack$BlackBackground;

    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/wm/TaskStack$BlackBackground;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, mBlackBackground:Lcom/android/server/wm/TaskStack$BlackBackground;

    .line 793
    :cond_f
    return-void
.end method

.method detachBlackBackground()Z
    .registers 2

    .prologue
    .line 796
    iget-object v0, p0, mBlackBackground:Lcom/android/server/wm/TaskStack$BlackBackground;

    if-eqz v0, :cond_e

    .line 797
    iget-object v0, p0, mBlackBackground:Lcom/android/server/wm/TaskStack$BlackBackground;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack$BlackBackground;->destroySurface()V

    .line 798
    const/4 v0, 0x0

    iput-object v0, p0, mBlackBackground:Lcom/android/server/wm/TaskStack$BlackBackground;

    .line 799
    const/4 v0, 0x1

    .line 801
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method detachDisplay()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 805
    const/16 v6, 0x791e

    iget v7, p0, mStackId:I

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(II)I

    .line 807
    const/4 v3, 0x0

    .line 808
    .local v3, "doAnotherLayoutPass":Z
    iget-object v6, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "taskNdx":I
    :goto_11
    if-ltz v4, :cond_54

    .line 809
    iget-object v6, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget-object v1, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 810
    .local v1, "appWindowTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "appNdx":I
    :goto_23
    if-ltz v0, :cond_51

    .line 811
    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 813
    .local v2, "appWindows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->clearPendingAndForceRemovesLocked()V

    .line 815
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "winNdx":I
    :goto_3c
    if-ltz v5, :cond_4e

    .line 818
    iget-object v7, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 820
    const/4 v3, 0x1

    .line 815
    add-int/lit8 v5, v5, -0x1

    goto :goto_3c

    .line 810
    :cond_4e
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    .line 808
    .end local v2    # "appWindows":Lcom/android/server/wm/WindowList;
    .end local v5    # "winNdx":I
    :cond_51
    add-int/lit8 v4, v4, -0x1

    goto :goto_11

    .line 824
    .end local v0    # "appNdx":I
    .end local v1    # "appWindowTokens":Lcom/android/server/wm/AppTokenList;
    :cond_54
    if-eqz v3, :cond_5b

    .line 825
    iget-object v6, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    .line 828
    :cond_5b
    invoke-virtual {p0}, close()V

    .line 831
    iget-object v6, p0, mBlackBackground:Lcom/android/server/wm/TaskStack$BlackBackground;

    if-eqz v6, :cond_69

    .line 832
    iget-object v6, p0, mBlackBackground:Lcom/android/server/wm/TaskStack$BlackBackground;

    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack$BlackBackground;->destroySurface()V

    .line 833
    iput-object v9, p0, mBlackBackground:Lcom/android/server/wm/TaskStack$BlackBackground;

    .line 838
    :cond_69
    iput-object v9, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 839
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1285
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mStackId="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, mStackId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1286
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mDeferDetach="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, mDeferDetach:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1289
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mStackType="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, mStackType:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1290
    const-string v3, " mStackZone="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, mStackZone:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1291
    const-string v3, " mBounds="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1292
    const-string v3, " mFullscreen="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, mFullscreen:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1293
    const-string v3, " mRotation="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, mRotation:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1294
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mShownBounds="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, mShownBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1295
    iget-object v3, p0, mOverrideConfig:Landroid/content/res/Configuration;

    sget-object v4, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    if-eq v3, v4, :cond_74

    .line 1296
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mOverrideConfig="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1298
    :cond_74
    iget-object v3, p0, mTopPenWindowControllerToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_86

    .line 1299
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mTopPenWindowControllerToken="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, mTopPenWindowControllerToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1303
    :cond_86
    const/4 v1, 0x0

    .local v1, "taskNdx":I
    :goto_87
    iget-object v3, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_9e

    .line 1304
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1303
    add-int/lit8 v1, v1, 0x1

    goto :goto_87

    .line 1306
    :cond_9e
    iget-object v3, p0, mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v3}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 1307
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mWindowAnimationBackgroundSurface:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1308
    iget-object v3, p0, mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1310
    :cond_c7
    iget-object v3, p0, mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v3}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v3

    if-eqz v3, :cond_fe

    .line 1311
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mDimLayer:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1312
    iget-object v3, p0, mDimLayer:Lcom/android/server/wm/DimLayer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1313
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mDimWinAnimator="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1315
    :cond_fe
    iget-object v3, p0, mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13d

    .line 1316
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1317
    const-string v3, "  Exiting application tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1318
    iget-object v3, p0, mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_116
    if-ltz v0, :cond_13d

    .line 1319
    iget-object v3, p0, mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 1320
    .local v2, "token":Lcom/android/server/wm/WindowToken;
    const-string v3, "  Exiting App #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1321
    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1322
    const/16 v3, 0x3a

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 1323
    const-string v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1318
    add-int/lit8 v0, v0, -0x1

    goto :goto_116

    .line 1326
    .end local v0    # "i":I
    .end local v2    # "token":Lcom/android/server/wm/WindowToken;
    :cond_13d
    return-void
.end method

.method forceFullscreen(Z)Z
    .registers 4
    .param p1, "forceFullscreen"    # Z

    .prologue
    const/4 v0, 0x0

    .line 505
    iget-boolean v1, p0, mForceFullscreen:Z

    if-ne v1, p1, :cond_6

    .line 519
    :cond_5
    :goto_5
    return v0

    .line 508
    :cond_6
    iput-boolean p1, p0, mForceFullscreen:Z

    .line 509
    if-eqz p1, :cond_1b

    .line 510
    iget-boolean v1, p0, mFullscreen:Z

    if-nez v1, :cond_5

    .line 513
    iget-object v0, p0, mPreForceFullscreenBounds:Landroid/graphics/Rect;

    iget-object v1, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 514
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setBounds(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_5

    .line 516
    :cond_1b
    iget-boolean v1, p0, mFullscreen:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, mPreForceFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 519
    iget-object v0, p0, mPreForceFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, setBounds(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_5
.end method

.method getBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 321
    iget-object v0, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 322
    return-void
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method getDisplayId()I
    .registers 2

    .prologue
    .line 1954
    const/4 v0, 0x0

    return v0
.end method

.method getFullDimLayer()I
    .registers 2

    .prologue
    .line 1148
    iget-boolean v0, p0, mIsFullDim:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, isDimming()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1149
    iget-object v0, p0, mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v0

    .line 1151
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method getShownBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 1796
    iget-object v0, p0, mShownBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1797
    return-void
.end method

.method public getStackBounds(Landroid/os/IBinder;Z)Landroid/graphics/Rect;
    .registers 6
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "exceptMinimizedSize"    # Z

    .prologue
    .line 1742
    iget v1, p0, mStackType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1e

    .line 1743
    invoke-direct {p0, p1}, findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 1744
    .local v0, "appToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_1e

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1e

    .line 1745
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTmpContentRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1748
    .end local v0    # "appToken":Lcom/android/server/wm/AppWindowToken;
    :goto_1d
    return-object v1

    :cond_1e
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_1d
.end method

.method public getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 1738
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, getStackBounds(Landroid/os/IBinder;Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getStackOriginalBound(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1752
    iget-object v0, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1753
    return-void
.end method

.method getTasks()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, mTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method getTopMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 3

    .prologue
    .line 1446
    invoke-virtual {p0}, getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 1447
    .local v0, "appToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_9

    .line 1448
    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 1450
    :goto_8
    return-object v1

    :cond_9
    sget-object v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    goto :goto_8
.end method

.method getTopOpaqueAppToken()Lcom/android/server/wm/AppWindowToken;
    .registers 6

    .prologue
    .line 1433
    iget-object v4, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "taskNdx":I
    :goto_8
    if-ltz v2, :cond_39

    .line 1434
    iget-object v4, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    iget-object v0, v4, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 1435
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_1a
    if-ltz v1, :cond_36

    .line 1436
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 1437
    .local v3, "token":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v4, :cond_33

    iget-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    if-nez v4, :cond_33

    iget-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->noDisplay:Z

    if-nez v4, :cond_33

    iget-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-eqz v4, :cond_33

    .line 1442
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "token":Lcom/android/server/wm/AppWindowToken;
    :goto_32
    return-object v3

    .line 1435
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .restart local v1    # "activityNdx":I
    .restart local v3    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 1433
    .end local v3    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_36
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 1442
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    :cond_39
    const/4 v3, 0x0

    goto :goto_32
.end method

.method getTopOpaqueAppWindow()Lcom/android/server/wm/WindowState;
    .registers 10

    .prologue
    .line 1391
    iget-object v7, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "taskNdx":I
    :goto_8
    if-ltz v2, :cond_74

    .line 1392
    iget-object v7, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Task;

    iget-object v0, v7, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 1393
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "activityNdx":I
    :goto_1a
    if-ltz v1, :cond_71

    .line 1394
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 1395
    .local v3, "token":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v7, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v7, :cond_6e

    iget-boolean v7, v3, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v7, :cond_6e

    iget-boolean v7, v3, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    if-nez v7, :cond_6e

    .line 1396
    iget-object v6, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 1397
    .local v6, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "winNdx":I
    :goto_36
    if-ltz v5, :cond_6e

    .line 1398
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 1399
    .local v4, "win":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_6b

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v7

    if-nez v7, :cond_6b

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v7

    if-eqz v7, :cond_6b

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x62

    if-eq v7, v8, :cond_6b

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit16 v7, v7, 0x100

    if-nez v7, :cond_6b

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit16 v7, v7, 0x400

    if-nez v7, :cond_6b

    .line 1409
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    .end local v5    # "winNdx":I
    .end local v6    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :goto_6a
    return-object v4

    .line 1397
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .restart local v1    # "activityNdx":I
    .restart local v3    # "token":Lcom/android/server/wm/AppWindowToken;
    .restart local v4    # "win":Lcom/android/server/wm/WindowState;
    .restart local v5    # "winNdx":I
    .restart local v6    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_6b
    add-int/lit8 v5, v5, -0x1

    goto :goto_36

    .line 1393
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    .end local v5    # "winNdx":I
    .end local v6    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_6e
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 1391
    .end local v3    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_71
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 1409
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    :cond_74
    const/4 v4, 0x0

    goto :goto_6a
.end method

.method getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;
    .registers 7

    .prologue
    .line 1375
    iget-object v5, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "taskNdx":I
    :goto_8
    if-ltz v2, :cond_43

    .line 1376
    iget-object v5, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    iget-object v0, v5, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 1377
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1a
    if-ltz v1, :cond_40

    .line 1378
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 1379
    .local v3, "token":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v5, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v5, :cond_3d

    iget-boolean v5, v3, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v5, :cond_3d

    iget-boolean v5, v3, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    if-nez v5, :cond_3d

    .line 1380
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 1381
    .local v4, "win":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_3d

    iget v5, v4, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    if-eqz v5, :cond_3d

    iget v5, v4, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    if-eqz v5, :cond_3d

    .line 1387
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :goto_3c
    return-object v3

    .line 1377
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .restart local v1    # "activityNdx":I
    .restart local v3    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_3d
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 1375
    .end local v3    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_40
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 1387
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    :cond_43
    const/4 v3, 0x0

    goto :goto_3c
.end method

.method getTopVisibleWindowToken()Lcom/android/server/wm/AppWindowToken;
    .registers 8

    .prologue
    .line 1413
    iget-object v6, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "taskNdx":I
    :goto_8
    if-ltz v2, :cond_53

    .line 1414
    iget-object v6, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget-object v0, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 1415
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_1a
    if-ltz v1, :cond_50

    .line 1416
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 1417
    .local v3, "token":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v6, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v6, :cond_4d

    iget-boolean v6, v3, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v6, :cond_4d

    iget-boolean v6, v3, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    if-nez v6, :cond_4d

    .line 1418
    iget-object v5, v3, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    .line 1419
    .local v5, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    if-lez v6, :cond_4d

    .line 1420
    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 1421
    .local v4, "win":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_4d

    iget v6, v4, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    if-eqz v6, :cond_4d

    iget v6, v4, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    if-eqz v6, :cond_4d

    .line 1429
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    .end local v5    # "windows":Lcom/android/server/wm/WindowList;
    :goto_4c
    return-object v3

    .line 1415
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .restart local v1    # "activityNdx":I
    .restart local v3    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_4d
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 1413
    .end local v3    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_50
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 1429
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    :cond_53
    const/4 v3, 0x0

    goto :goto_4c
.end method

.method hasBlackBackground()Z
    .registers 2

    .prologue
    .line 786
    iget-object v0, p0, mBlackBackground:Lcom/android/server/wm/TaskStack$BlackBackground;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasShownDimTarget()Z
    .registers 8

    .prologue
    .line 1669
    iget-object v6, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "taskNdx":I
    :goto_8
    if-ltz v4, :cond_4a

    .line 1670
    iget-object v6, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget-object v0, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 1671
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_1a
    if-ltz v1, :cond_47

    .line 1672
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 1673
    .local v5, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1674
    .local v2, "cw":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v6

    if-eqz v6, :cond_28

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_28

    .line 1675
    const/4 v6, 0x1

    .line 1680
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "cw":Lcom/android/server/wm/WindowState;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :goto_43
    return v6

    .line 1671
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .restart local v1    # "activityNdx":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_44
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 1669
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_47
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    .line 1680
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    :cond_4a
    const/4 v6, 0x0

    goto :goto_43
.end method

.method hasWindowOutOfStack()Z
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1635
    iget-object v9, p0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v9, :cond_e6

    iget-object v9, p0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v9, :cond_e6

    iget-object v9, p0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v9

    if-eqz v9, :cond_e6

    invoke-virtual {p0}, isSplitStack()Z

    move-result v9

    if-eqz v9, :cond_e6

    .line 1639
    iget-object v9, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_e6

    .line 1640
    new-instance v3, Landroid/graphics/Rect;

    iget-object v9, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v9

    iget v9, v9, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v10, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    iget v10, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v3, v8, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1641
    .local v3, "displayRect":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    iget-object v9, p0, mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1642
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v9, p0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v9, v9, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1643
    .local v2, "cw":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v9

    if-eqz v9, :cond_4e

    iget-object v9, v2, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4e

    iget-object v9, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_4e

    .line 1646
    new-instance v1, Landroid/graphics/Rect;

    iget-object v9, v2, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    invoke-direct {v1, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1647
    .local v1, "contentFrame":Landroid/graphics/Rect;
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1648
    iget-object v9, p0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_92

    iget-object v9, p0, mShownBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_92

    .line 1649
    iget-object v9, p0, mShownBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1651
    :cond_92
    iget-object v9, p0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v9, v9, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_9e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 1652
    .local v6, "w":Lcom/android/server/wm/WindowState;
    iget-object v1, v6, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    .line 1653
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v9

    if-nez v9, :cond_9e

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_9e

    .line 1654
    iput-boolean v7, p0, mOutOfBound:Z

    .line 1655
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v9

    if-eqz v9, :cond_9e

    .line 1656
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "stack"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, mStackId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " hasWindowOutOfStack "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "contentFrame":Landroid/graphics/Rect;
    .end local v2    # "cw":Lcom/android/server/wm/WindowState;
    .end local v3    # "displayRect":Landroid/graphics/Rect;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "w":Lcom/android/server/wm/WindowState;
    :goto_e5
    return v7

    :cond_e6
    move v7, v8

    goto :goto_e5
.end method

.method isAnimating()Z
    .registers 8

    .prologue
    .line 524
    iget-object v6, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "taskNdx":I
    :goto_8
    if-ltz v2, :cond_4b

    .line 525
    iget-object v6, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget-object v0, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 526
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_1a
    if-ltz v1, :cond_48

    .line 527
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 528
    .local v5, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "winNdx":I
    :goto_2a
    if-ltz v4, :cond_45

    .line 529
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    iget-object v3, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 530
    .local v3, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v6

    if-nez v6, :cond_40

    iget-object v6, v3, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v6, :cond_42

    .line 531
    :cond_40
    const/4 v6, 0x1

    .line 536
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v4    # "winNdx":I
    .end local v5    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :goto_41
    return v6

    .line 528
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .restart local v1    # "activityNdx":I
    .restart local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v4    # "winNdx":I
    .restart local v5    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_42
    add-int/lit8 v4, v4, -0x1

    goto :goto_2a

    .line 526
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_45
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 524
    .end local v4    # "winNdx":I
    .end local v5    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_48
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 536
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    :cond_4b
    const/4 v6, 0x0

    goto :goto_41
.end method

.method isArrangedUpperSideInputMethod()Z
    .registers 3

    .prologue
    .line 1806
    iget-object v0, p0, mShownBounds:Landroid/graphics/Rect;

    iget-object v1, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method isDimming()Z
    .registers 2

    .prologue
    .line 1139
    iget-object v0, p0, mDimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_e

    iget-object v0, p0, mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isDimming(Lcom/android/server/wm/WindowStateAnimator;)Z
    .registers 3
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 1143
    iget-object v0, p0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne v0, p1, :cond_e

    iget-object v0, p0, mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method final isFloatingStack()Z
    .registers 2

    .prologue
    .line 1693
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, isFloatingStack(Z)Z

    move-result v0

    return v0
.end method

.method final isFloatingStack(Z)Z
    .registers 5
    .param p1, "bCheckTask"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1697
    iget v1, p0, mStackType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7

    .line 1705
    :cond_6
    :goto_6
    return v0

    .line 1700
    :cond_7
    if-eqz p1, :cond_14

    .line 1701
    invoke-virtual {p0}, getTopMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 1705
    :cond_14
    const/4 v0, 0x1

    goto :goto_6
.end method

.method isFullscreen()Z
    .registers 2

    .prologue
    .line 498
    iget-boolean v0, p0, mFullscreen:Z

    return v0
.end method

.method final isMultiWindowStack()Z
    .registers 2

    .prologue
    .line 1685
    invoke-virtual {p0}, isFloatingStack()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, isSplitStack()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isSameBounds(Landroid/graphics/Rect;)Z
    .registers 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1778
    iget-boolean v1, p0, mFullscreen:Z

    .line 1779
    .local v1, "oldFullscreen":Z
    iget-object v2, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_15

    .line 1780
    iget-object v2, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 1781
    iget-object v2, p0, mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, mFullscreen:Z

    .line 1784
    :cond_15
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1785
    .local v0, "curBounds":Landroid/graphics/Rect;
    iget-boolean v2, p0, mFixedBound:Z

    if-eqz v2, :cond_25

    .line 1786
    iget-object v2, p0, mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1789
    :cond_25
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-boolean v2, p0, mFullscreen:Z

    if-ne v1, v2, :cond_31

    .line 1790
    const/4 v2, 0x1

    .line 1792
    :goto_30
    return v2

    :cond_31
    const/4 v2, 0x0

    goto :goto_30
.end method

.method isSelectiveOrientationStateLocked()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 1935
    sget-boolean v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v4, :cond_39

    invoke-virtual {p0}, isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_39

    iget-object v4, p0, mOverrideConfig:Landroid/content/res/Configuration;

    if-eqz v4, :cond_39

    .line 1936
    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowManagerService;->getOrientationFromDisplayLocked(I)I

    move-result v0

    .line 1937
    .local v0, "globalOr":I
    iget-object v4, p0, mOverrideConfig:Landroid/content/res/Configuration;

    iget v1, v4, Landroid/content/res/Configuration;->orientation:I

    .line 1938
    .local v1, "overrideOr":I
    if-ne v0, v2, :cond_1f

    if-eq v1, v5, :cond_38

    :cond_1f
    if-ne v0, v5, :cond_23

    if-eq v1, v2, :cond_38

    :cond_23
    iget v4, p0, mRotation:I

    if-eqz v4, :cond_2b

    iget v4, p0, mRotation:I

    if-ne v4, v5, :cond_2d

    :cond_2b
    if-eq v1, v5, :cond_38

    :cond_2d
    iget v4, p0, mRotation:I

    if-eq v4, v2, :cond_36

    iget v4, p0, mRotation:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_39

    :cond_36
    if-ne v1, v2, :cond_39

    .line 1945
    .end local v0    # "globalOr":I
    .end local v1    # "overrideOr":I
    :cond_38
    :goto_38
    return v2

    :cond_39
    move v2, v3

    goto :goto_38
.end method

.method final isSplitStack()Z
    .registers 3

    .prologue
    .line 1689
    iget v0, p0, mStackZone:I

    if-eqz v0, :cond_c

    iget v0, p0, mStackZone:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method final isVRStack()Z
    .registers 2

    .prologue
    .line 1982
    iget-boolean v0, p0, mVRStack:Z

    return v0
.end method

.method isVisible()Z
    .registers 11

    .prologue
    .line 1353
    iget-object v9, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1354
    .local v5, "taskNum":I
    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_53

    .line 1355
    iget-object v9, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 1356
    .local v4, "task":Lcom/android/server/wm/Task;
    iget-object v9, v4, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v9}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v0

    .line 1357
    .local v0, "appNum":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "j":I
    :goto_1a
    if-ltz v2, :cond_50

    .line 1358
    iget-object v9, v4, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v9, v2}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    .line 1359
    .local v8, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v9, v8, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    .line 1360
    .local v7, "winNum":I
    add-int/lit8 v3, v7, -0x1

    .local v3, "k":I
    :goto_2c
    if-ltz v3, :cond_4d

    .line 1361
    iget-object v9, v8, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v9, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 1362
    .local v6, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v9

    if-eqz v9, :cond_48

    .line 1363
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_4b

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v9

    if-nez v9, :cond_4b

    .line 1360
    :cond_48
    add-int/lit8 v3, v3, -0x1

    goto :goto_2c

    .line 1366
    :cond_4b
    const/4 v9, 0x1

    .line 1371
    .end local v0    # "appNum":I
    .end local v2    # "j":I
    .end local v3    # "k":I
    .end local v4    # "task":Lcom/android/server/wm/Task;
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    .end local v7    # "winNum":I
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :goto_4c
    return v9

    .line 1357
    .restart local v0    # "appNum":I
    .restart local v2    # "j":I
    .restart local v3    # "k":I
    .restart local v4    # "task":Lcom/android/server/wm/Task;
    .restart local v7    # "winNum":I
    .restart local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_4d
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 1354
    .end local v3    # "k":I
    .end local v7    # "winNum":I
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_50
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1371
    .end local v0    # "appNum":I
    .end local v2    # "j":I
    .end local v4    # "task":Lcom/android/server/wm/Task;
    :cond_53
    const/4 v9, 0x0

    goto :goto_4c
.end method

.method moveTaskToBottom(Lcom/android/server/wm/Task;)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    .line 683
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v0, :cond_1d

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveTaskToBottom: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_1d
    iget-object v0, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 687
    iget-object v0, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_2d

    .line 688
    iget-object v0, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mGlobalTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 692
    :cond_2d
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, addTask(Lcom/android/server/wm/Task;Z)V

    .line 693
    return-void
.end method

.method moveTaskToTop(Lcom/android/server/wm/Task;)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    const/4 v4, 0x1

    .line 665
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v1, :cond_2d

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveTaskToTop: task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_2d
    iget-object v1, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 669
    iget-object v1, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_58

    .line 670
    iget v1, p0, mStackType:I

    if-ne v1, v4, :cond_51

    .line 671
    iget-object v1, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mGlobalTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 672
    .local v0, "homeIdx":I
    iget-object v1, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mGlobalTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 673
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v1

    invoke-virtual {p0, p1, v4, v1, v0}, addTask(Lcom/android/server/wm/Task;ZZI)V

    .line 680
    .end local v0    # "homeIdx":I
    :goto_50
    return-void

    .line 676
    :cond_51
    iget-object v1, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mGlobalTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 679
    :cond_58
    invoke-virtual {p0, p1, v4}, addTask(Lcom/android/server/wm/Task;Z)V

    goto :goto_50
.end method

.method public needUpdateFixedBound(Z)Z
    .registers 13
    .param p1, "fixedBound"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1602
    iget-object v7, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_70

    .line 1603
    iget-object v7, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "taskNdx":I
    :goto_12
    if-ltz v3, :cond_70

    .line 1604
    iget-object v7, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Task;

    iget-object v0, v7, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 1605
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "activityNdx":I
    :goto_24
    if-ltz v1, :cond_6d

    .line 1606
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v7, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 1607
    .local v6, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "winNdx":I
    :goto_34
    if-ltz v5, :cond_6a

    .line 1608
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 1609
    .local v4, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v7

    if-nez v7, :cond_45

    .line 1607
    add-int/lit8 v5, v5, -0x1

    goto :goto_34

    .line 1613
    :cond_45
    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_57

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v7, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v10, 0x1000

    invoke-virtual {v7, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_57

    move v7, v8

    .line 1631
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "taskNdx":I
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    .end local v5    # "winNdx":I
    .end local v6    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :goto_56
    return v7

    .line 1617
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .restart local v1    # "activityNdx":I
    .restart local v3    # "taskNdx":I
    .restart local v4    # "win":Lcom/android/server/wm/WindowState;
    .restart local v5    # "winNdx":I
    .restart local v6    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_57
    const/16 v2, 0x202

    .line 1619
    .local v2, "fixedFlag":I
    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v7, v2

    if-ne v7, v2, :cond_66

    move v7, v9

    :goto_61
    xor-int/2addr v7, p1

    if-eqz v7, :cond_68

    move v7, v9

    .line 1623
    goto :goto_56

    :cond_66
    move v7, v8

    .line 1619
    goto :goto_61

    :cond_68
    move v7, v8

    .line 1625
    goto :goto_56

    .line 1605
    .end local v2    # "fixedFlag":I
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :cond_6a
    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    .line 1603
    .end local v5    # "winNdx":I
    .end local v6    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_6d
    add-int/lit8 v3, v3, -0x1

    goto :goto_12

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "taskNdx":I
    :cond_70
    move v7, v8

    .line 1631
    goto :goto_56
.end method

.method notifyVisibleWindow(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "window"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 1341
    iget-object v0, p0, mBlackBackground:Lcom/android/server/wm/TaskStack$BlackBackground;

    if-eqz v0, :cond_9

    .line 1342
    iget-object v0, p0, mBlackBackground:Lcom/android/server/wm/TaskStack$BlackBackground;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack$BlackBackground;->notifyVisibleWindow(Lcom/android/server/wm/WindowState;)V

    .line 1344
    :cond_9
    return-void
.end method

.method removeTask(Lcom/android/server/wm/Task;)V
    .registers 8
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    const/4 v5, 0x0

    .line 701
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v2, :cond_1e

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeTask: task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_1e
    iget-boolean v2, p0, mFixedBound:Z

    if-eqz v2, :cond_25

    .line 705
    invoke-virtual {p0, v5, p1}, setWindowFlagFixedBoundInner(ZLcom/android/server/wm/Task;)V

    .line 709
    :cond_25
    iget-object v2, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 713
    iget-object v2, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_35

    .line 714
    iget-object v2, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mGlobalTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 719
    :cond_35
    iget-object v2, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_4b

    .line 720
    iget-object v2, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 721
    iget-object v2, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, p0, v5}, Lcom/android/server/wm/DisplayContent;->moveStack(Lcom/android/server/wm/TaskStack;Z)V

    .line 723
    :cond_46
    iget-object v2, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 726
    :cond_4b
    iget-object v2, p0, mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "appNdx":I
    :goto_53
    if-ltz v0, :cond_6b

    .line 727
    iget-object v2, p0, mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 728
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v2, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-ne v2, p1, :cond_68

    .line 729
    iput-boolean v5, v1, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    .line 730
    iget-object v2, p0, mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTokenList;->remove(I)Ljava/lang/Object;

    .line 726
    :cond_68
    add-int/lit8 v0, v0, -0x1

    goto :goto_53

    .line 733
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_6b
    return-void
.end method

.method resetAnimationBackgroundAnimator()V
    .registers 2

    .prologue
    .line 842
    const/4 v0, 0x0

    iput-object v0, p0, mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 843
    iget-object v0, p0, mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_c

    .line 844
    iget-object v0, p0, mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->hide()V

    .line 846
    :cond_c
    return-void
.end method

.method resetDimmingTag()V
    .registers 2

    .prologue
    .line 1127
    const/4 v0, 0x0

    iput-boolean v0, p0, mDimmingTag:Z

    .line 1128
    return-void
.end method

.method resetVisibleWindow()V
    .registers 3

    .prologue
    .line 1347
    iget-object v0, p0, mBlackBackground:Lcom/android/server/wm/TaskStack$BlackBackground;

    if-eqz v0, :cond_a

    .line 1348
    iget-object v0, p0, mBlackBackground:Lcom/android/server/wm/TaskStack$BlackBackground;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack$BlackBackground;->notifyVisibleWindow(Lcom/android/server/wm/WindowState;)V

    .line 1350
    :cond_a
    return-void
.end method

.method resizeWindows()V
    .registers 12

    .prologue
    .line 216
    iget-object v8, p0, mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-nez v8, :cond_66

    const/4 v4, 0x1

    .line 218
    .local v4, "underStatusBar":Z
    :goto_7
    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v8, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 219
    .local v2, "resizingWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-object v8, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "taskNdx":I
    :goto_13
    if-ltz v3, :cond_6e

    .line 220
    iget-object v8, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Task;

    iget-object v0, v8, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 221
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "activityNdx":I
    :goto_25
    if-ltz v1, :cond_6b

    .line 222
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v8, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 223
    .local v7, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .local v6, "winNdx":I
    :goto_35
    if-ltz v6, :cond_68

    .line 224
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 225
    .local v5, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_63

    .line 226
    sget-boolean v8, Lcom/android/server/wm/WindowManagerService;->DEBUG_RESIZE:Z

    if-eqz v8, :cond_60

    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setBounds: Resizing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_60
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_63
    add-int/lit8 v6, v6, -0x1

    goto :goto_35

    .line 216
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "resizingWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v3    # "taskNdx":I
    .end local v4    # "underStatusBar":Z
    .end local v5    # "win":Lcom/android/server/wm/WindowState;
    .end local v6    # "winNdx":I
    .end local v7    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_66
    const/4 v4, 0x0

    goto :goto_7

    .line 221
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "resizingWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v3    # "taskNdx":I
    .restart local v4    # "underStatusBar":Z
    .restart local v6    # "winNdx":I
    .restart local v7    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_68
    add-int/lit8 v1, v1, -0x1

    goto :goto_25

    .line 219
    .end local v6    # "winNdx":I
    .end local v7    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_6b
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 233
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    :cond_6e
    return-void
.end method

.method setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V
    .registers 9
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "color"    # I

    .prologue
    .line 1234
    iget v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 1235
    .local v0, "animLayer":I
    iget-object v1, p0, mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v1, :cond_8

    if-nez p2, :cond_12

    :cond_8
    iget-object v1, p0, mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_2b

    iget-object v1, p0, mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v0, v1, :cond_2b

    .line 1237
    :cond_12
    iput-object p1, p0, mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1238
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->adjustAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;)I

    move-result v0

    .line 1239
    iget-object v1, p0, mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    add-int/lit8 v2, v0, -0x1

    shr-int/lit8 v3, p2, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 1242
    :cond_2b
    return-void
.end method

.method setBounds(Landroid/graphics/Rect;)Z
    .registers 12
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 245
    iget-boolean v3, p0, mFullscreen:Z

    .line 246
    .local v3, "oldFullscreen":Z
    const/4 v5, 0x0

    .line 247
    .local v5, "rotation":I
    iget-object v8, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v8, :cond_1e

    .line 248
    iget-object v8, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v9, p0, mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 249
    iget-object v8, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    iget v5, v8, Landroid/view/DisplayInfo;->rotation:I

    .line 250
    if-nez p1, :cond_21

    .line 251
    iget-object p1, p0, mTmpRect:Landroid/graphics/Rect;

    .line 252
    iput-boolean v7, p0, mFullscreen:Z

    .line 266
    :cond_1e
    :goto_1e
    if-nez p1, :cond_38

    .line 308
    :cond_20
    :goto_20
    return v6

    .line 257
    :cond_21
    invoke-virtual {p0}, isFloatingStack()Z

    move-result v8

    if-nez v8, :cond_2f

    iget-object v8, p0, mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v8}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 262
    :cond_2f
    iget-object v8, p0, mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, p0, mFullscreen:Z

    goto :goto_1e

    .line 270
    :cond_38
    iget-object v8, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_48

    iget-boolean v8, p0, mFullscreen:Z

    if-ne v3, v8, :cond_48

    iget v8, p0, mRotation:I

    if-eq v8, v5, :cond_20

    .line 276
    :cond_48
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 277
    .local v4, "originBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v6}, checkFixedBound(Landroid/graphics/Rect;Z)Z

    move-result v1

    .line 278
    .local v1, "isFixedBound":Z
    iget-boolean v8, p0, mPostFixedBound:Z

    if-nez v8, :cond_61

    iget-object v8, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_61

    iget-boolean v8, p0, mFullscreen:Z

    if-eq v3, v8, :cond_20

    .line 281
    :cond_61
    const/4 v2, 0x0

    .line 282
    .local v2, "isFixedBoundsApplied":Z
    invoke-virtual {p0}, getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 283
    .local v0, "awt":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v8, p0, mPostFixedBound:Z

    if-nez v8, :cond_80

    iget v8, p0, mStackZone:I

    if-eqz v8, :cond_83

    iget v8, p0, mStackZone:I

    const/16 v9, 0xf

    if-eq v8, v9, :cond_83

    if-eqz v0, :cond_83

    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v9, 0x1000

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_83

    .line 285
    :cond_80
    if-eqz v1, :cond_83

    .line 286
    const/4 v2, 0x1

    .line 291
    :cond_83
    if-eqz v2, :cond_9c

    .line 292
    invoke-virtual {p0, v7}, setWindowFlagFixedBound(Z)V

    .line 294
    iget-object v6, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 295
    iget-object v6, p0, mShownBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 305
    :goto_92
    invoke-virtual {p0}, isFloatingStack()Z

    move-result v6

    if-nez v6, :cond_9a

    .line 306
    iput v5, p0, mRotation:I

    :cond_9a
    move v6, v7

    .line 308
    goto :goto_20

    .line 297
    :cond_9c
    invoke-virtual {p0, v6}, setWindowFlagFixedBound(Z)V

    .line 298
    iget-object v6, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 299
    iget-object v6, p0, mShownBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 300
    iget-object v6, p0, mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6, v4}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 301
    iget-object v6, p0, mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6, v4}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_92
.end method

.method setDimLayer(I)V
    .registers 3
    .param p1, "layer"    # I

    .prologue
    .line 237
    if-lez p1, :cond_7

    .line 238
    iget-object v0, p0, mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    .line 240
    :cond_7
    return-void
.end method

.method setDimmingTag()V
    .registers 2

    .prologue
    .line 1131
    const/4 v0, 0x1

    iput-boolean v0, p0, mDimmingTag:Z

    .line 1132
    return-void
.end method

.method setShownBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1800
    iget-object v0, p0, mShownBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1801
    iget-object v0, p0, mShownBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1803
    :cond_d
    return-void
.end method

.method setWindowFlagFixedBound(Z)V
    .registers 5
    .param p1, "bFixed"    # Z

    .prologue
    .line 1569
    invoke-virtual {p0}, getTopMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 1570
    .local v0, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz p1, :cond_11

    if-eqz v0, :cond_11

    const/16 v2, 0x1000

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1579
    :cond_10
    return-void

    .line 1573
    :cond_11
    iput-boolean p1, p0, mFixedBound:Z

    .line 1574
    iget-object v2, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 1575
    iget-object v2, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_23
    if-ltz v1, :cond_10

    .line 1576
    iget-object v2, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1, v2}, setWindowFlagFixedBoundInner(ZLcom/android/server/wm/Task;)V

    .line 1575
    add-int/lit8 v1, v1, -0x1

    goto :goto_23
.end method

.method setWindowFlagFixedBoundInner(ZLcom/android/server/wm/Task;)V
    .registers 9
    .param p1, "bFixed"    # Z
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .prologue
    .line 1582
    if-eqz p2, :cond_45

    .line 1583
    iget-object v0, p2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 1584
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_a
    if-ltz v1, :cond_45

    .line 1585
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 1586
    .local v4, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "winNdx":I
    :goto_1a
    if-ltz v3, :cond_42

    .line 1587
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1588
    .local v2, "win":Lcom/android/server/wm/WindowState;
    if-eqz p1, :cond_37

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-nez v5, :cond_37

    .line 1586
    :cond_34
    :goto_34
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 1592
    :cond_37
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->setWindowFlagFixedBound(Z)V

    .line 1593
    if-eqz p1, :cond_34

    .line 1594
    iget-object v5, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowManagerService;->requestHideSoftInputMethodLocked(Lcom/android/server/wm/WindowState;)V

    goto :goto_34

    .line 1584
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 1599
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "winNdx":I
    .end local v4    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_45
    return-void
.end method

.method startDimmingIfNeeded(Lcom/android/server/wm/WindowStateAnimator;)V
    .registers 3
    .param p1, "newWinAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 1157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, startDimmingIfNeeded(Lcom/android/server/wm/WindowStateAnimator;Z)V

    .line 1158
    return-void
.end method

.method startDimmingIfNeeded(Lcom/android/server/wm/WindowStateAnimator;Z)V
    .registers 6
    .param p1, "newWinAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "isFullDim"    # Z

    .prologue
    .line 1165
    iget-boolean v1, p1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v1, :cond_5f

    iget-object v1, p0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_2a

    iget-object v1, p0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v1, :cond_2a

    iget-object v1, p0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v2, p1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-lt v1, v2, :cond_2a

    iget-object v1, p0, mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_2a

    if-eqz p2, :cond_5f

    .line 1178
    :cond_2a
    iput-object p1, p0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1179
    iget-object v1, p0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v1, :cond_4a

    iget-boolean v1, p0, mFullscreen:Z

    if-nez v1, :cond_4a

    iget-object v1, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_4a

    .line 1182
    iget-object v1, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 1183
    iget-object v1, p0, mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v2, p0, mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 1186
    :cond_4a
    const/4 v0, 0x0

    .line 1188
    .local v0, "blurEffect":Z
    iget-object v1, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_62

    const/4 v0, 0x1

    .line 1190
    :goto_56
    iget-object v2, p0, mDimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_64

    const/high16 v1, 0x80000

    :goto_5c
    invoke-virtual {v2, v1}, Lcom/android/server/wm/DimLayer;->setEffectType(I)V

    .line 1194
    .end local v0    # "blurEffect":Z
    :cond_5f
    iput-boolean p2, p0, mIsFullDim:Z

    .line 1196
    return-void

    .line 1188
    .restart local v0    # "blurEffect":Z
    :cond_62
    const/4 v0, 0x0

    goto :goto_56

    .line 1190
    :cond_64
    const/high16 v1, 0x20000

    goto :goto_5c
.end method

.method stopDimmingIfNeeded()V
    .registers 3

    .prologue
    .line 1199
    iget-boolean v0, p0, mDimmingTag:Z

    if-nez v0, :cond_1d

    invoke-virtual {p0}, isDimming()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1200
    const/4 v0, 0x0

    iput-object v0, p0, mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1203
    iget-object v0, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_1e

    iget-object v0, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    iget v1, p0, mRotation:I

    if-eq v0, v1, :cond_1e

    .line 1219
    :cond_1d
    :goto_1d
    return-void

    .line 1210
    :cond_1e
    invoke-virtual {p0}, isFloatingStack()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1211
    iget-boolean v0, p0, mOutOfBound:Z

    if-nez v0, :cond_1d

    .line 1212
    iget-object v0, p0, mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v1, p0, mShownBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_1d
.end method

.method switchUser()V
    .registers 6

    .prologue
    .line 1245
    iget-object v3, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1246
    .local v2, "top":I
    const/4 v1, 0x0

    .local v1, "taskNdx":I
    :goto_7
    if-ge v1, v2, :cond_32

    .line 1247
    iget-object v3, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 1248
    .local v0, "task":Lcom/android/server/wm/Task;
    iget-object v3, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1249
    :cond_21
    iget-object v3, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1250
    iget-object v3, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    add-int/lit8 v2, v2, -0x1

    .line 1252
    add-int/lit8 v1, v1, -0x1

    .line 1246
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1257
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_32
    iget-object v3, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_70

    .line 1258
    iget-object v3, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mGlobalTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1259
    const/4 v1, 0x0

    :goto_3f
    if-ge v1, v2, :cond_70

    .line 1260
    iget-object v3, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mGlobalTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 1261
    .restart local v0    # "task":Lcom/android/server/wm/Task;
    iget-object v3, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v3

    if-nez v3, :cond_5b

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 1262
    :cond_5b
    iget-object v3, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mGlobalTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1263
    iget-object v3, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mGlobalTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1264
    add-int/lit8 v2, v2, -0x1

    .line 1265
    add-int/lit8 v1, v1, -0x1

    .line 1259
    :cond_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 1271
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_70
    return-void
.end method

.method testDimmingTag()Z
    .registers 2

    .prologue
    .line 1135
    iget-boolean v0, p0, mDimmingTag:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateDisplayInfo()V
    .registers 10

    .prologue
    .line 429
    iget-boolean v0, p0, mFullscreen:Z

    if-eqz v0, :cond_9

    .line 430
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setBounds(Landroid/graphics/Rect;)Z

    .line 495
    :cond_8
    :goto_8
    return-void

    .line 431
    :cond_9
    iget-object v0, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_8

    .line 432
    iget-object v0, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v7, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 433
    .local v7, "newRotation":I
    iget v0, p0, mRotation:I

    if-eq v0, v7, :cond_8

    .line 439
    iget v0, p0, mRotation:I

    invoke-static {v0, v7}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v8

    .line 440
    .local v8, "rotationDelta":I
    iget-object v0, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 442
    packed-switch v8, :pswitch_data_188

    .line 467
    :goto_29
    invoke-virtual {p0}, getTopMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    if-nez v0, :cond_8

    .line 470
    invoke-virtual {p0}, isFloatingStack()Z

    move-result v0

    if-eqz v0, :cond_181

    .line 471
    iput v7, p0, mRotation:I

    .line 473
    invoke-virtual {p0}, getTopMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    .line 474
    .local v4, "isMinimized":Z
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v0, :cond_65

    iget-object v0, p0, mOverrideConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_65

    iget-object v0, p0, mOverrideConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eqz v0, :cond_65

    .line 476
    iget-object v1, p0, mTmpRect2:Landroid/graphics/Rect;

    iget-object v0, p0, mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v0, p0, mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, adjustSelectiveStackBound(Landroid/graphics/Rect;IIZZ)V

    .line 479
    :cond_65
    iget-object v0, p0, mTmpRect2:Landroid/graphics/Rect;

    iget-object v1, p0, mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, v4}, adjustFloatingStackBound(Landroid/graphics/Rect;IIZ)V

    .line 481
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x6b

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, mTmpRect2:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 482
    .local v6, "msg":Landroid/os/Message;
    iget v0, p0, mStackId:I

    iput v0, v6, Landroid/os/Message;->arg1:I

    .line 483
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 485
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_c9

    .line 486
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notify floatingStack rotated(udi), stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mStackId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_c9
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, mStackId:I

    iget-object v2, p0, mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    goto/16 :goto_8

    .line 444
    .end local v4    # "isMinimized":Z
    .end local v6    # "msg":Landroid/os/Message;
    :pswitch_d4
    iget-object v0, p0, mTmpRect2:Landroid/graphics/Rect;

    iget-object v1, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_29

    .line 447
    :pswitch_dd
    iget-object v0, p0, mTmpRect2:Landroid/graphics/Rect;

    iget-object v1, p0, mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 448
    iget-object v0, p0, mTmpRect2:Landroid/graphics/Rect;

    iget-object v1, p0, mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 449
    iget-object v0, p0, mTmpRect2:Landroid/graphics/Rect;

    iget-object v1, p0, mTmpRect2:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 450
    iget-object v0, p0, mTmpRect2:Landroid/graphics/Rect;

    iget-object v1, p0, mTmpRect2:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_29

    .line 453
    :pswitch_112
    iget-object v0, p0, mTmpRect2:Landroid/graphics/Rect;

    iget-object v1, p0, mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 454
    iget-object v0, p0, mTmpRect2:Landroid/graphics/Rect;

    iget-object v1, p0, mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 455
    iget-object v0, p0, mTmpRect2:Landroid/graphics/Rect;

    iget-object v1, p0, mTmpRect2:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 456
    iget-object v0, p0, mTmpRect2:Landroid/graphics/Rect;

    iget-object v1, p0, mTmpRect2:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_29

    .line 459
    :pswitch_14c
    iget-object v0, p0, mTmpRect2:Landroid/graphics/Rect;

    iget-object v1, p0, mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 460
    iget-object v0, p0, mTmpRect2:Landroid/graphics/Rect;

    iget-object v1, p0, mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 461
    iget-object v0, p0, mTmpRect2:Landroid/graphics/Rect;

    iget-object v1, p0, mTmpRect2:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 462
    iget-object v0, p0, mTmpRect2:Landroid/graphics/Rect;

    iget-object v1, p0, mTmpRect2:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_29

    .line 493
    :cond_181
    iget-object v0, p0, mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, setBounds(Landroid/graphics/Rect;)Z

    goto/16 :goto_8

    .line 442
    :pswitch_data_188
    .packed-switch 0x0
        :pswitch_d4
        :pswitch_dd
        :pswitch_112
        :pswitch_14c
    .end packed-switch
.end method

.method updateMinimizeSize(Landroid/os/IBinder;[I)V
    .registers 7
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "size"    # [I

    .prologue
    .line 1768
    invoke-direct {p0, p1}, findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 1769
    .local v0, "appToken":Lcom/android/server/wm/AppWindowToken;
    iget-object v2, p0, mMinimizedRects:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1770
    .local v1, "minimizeRect":Landroid/graphics/Rect;
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1771
    :cond_14
    new-instance v1, Landroid/graphics/Rect;

    .end local v1    # "minimizeRect":Landroid/graphics/Rect;
    iget-object v2, p0, mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1773
    .restart local v1    # "minimizeRect":Landroid/graphics/Rect;
    :cond_1b
    iget v2, v1, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    aget v3, p2, v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1774
    iget v2, v1, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x1

    aget v3, p2, v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1775
    return-void
.end method

.method updateOverrideConfiguration(Lcom/android/server/wm/AppWindowToken;)V
    .registers 21
    .param p1, "apptoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 331
    move-object/from16 v0, p0

    iget-object v1, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    .line 332
    .local v17, "serviceConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-boolean v1, v0, mFullscreen:Z

    if-eqz v1, :cond_15

    .line 333
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iput-object v1, v0, mOverrideConfig:Landroid/content/res/Configuration;

    .line 426
    :cond_14
    :goto_14
    return-void

    .line 337
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, mOverrideConfig:Landroid/content/res/Configuration;

    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    if-ne v1, v2, :cond_26

    .line 338
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, mOverrideConfig:Landroid/content/res/Configuration;

    .line 341
    :cond_26
    move-object/from16 v0, p0

    iget-object v1, v0, mOverrideConfig:Landroid/content/res/Configuration;

    iget v13, v1, Landroid/content/res/Configuration;->orientation:I

    .line 343
    .local v13, "lastOrientation":I
    move-object/from16 v0, v17

    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    const v2, 0x3bcccccd    # 0.00625f

    mul-float v8, v1, v2

    .line 346
    .local v8, "density":F
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v1, :cond_14

    invoke-virtual/range {p0 .. p0}, isMultiWindowStack()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 347
    invoke-virtual/range {p0 .. p0}, isSplitStack()Z

    move-result v1

    if-nez v1, :cond_52

    if-eqz p1, :cond_59

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v1

    if-nez v1, :cond_59

    .line 348
    :cond_52
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iput-object v1, v0, mOverrideConfig:Landroid/content/res/Configuration;

    goto :goto_14

    .line 351
    :cond_59
    if-eqz p1, :cond_14

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v1

    if-eqz v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_14

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    .line 353
    .local v10, "displayInfo":Landroid/view/DisplayInfo;
    iget v11, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 354
    .local v11, "dw":I
    iget v9, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 355
    .local v9, "dh":I
    iget v0, v10, Landroid/view/DisplayInfo;->rotation:I

    move/from16 v16, v0

    .line 356
    .local v16, "rotation":I
    invoke-direct/range {p0 .. p1}, getOrientationFromAppToken(Lcom/android/server/wm/AppWindowToken;)I

    move-result v7

    .line 358
    .local v7, "appOrientation":I
    move-object/from16 v0, p0

    iget-object v1, v0, mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, v17

    iget v2, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 359
    move-object/from16 v0, p0

    iget-object v1, v0, mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, v17

    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v2, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 360
    move-object/from16 v0, p0

    iget-object v1, v0, mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, v17

    iget v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 361
    move-object/from16 v0, p0

    iget-object v1, v0, mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, v17

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iput v2, v1, Landroid/content/res/Configuration;->orientation:I

    .line 364
    packed-switch v7, :pswitch_data_21a

    .line 380
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iput-object v1, v0, mOverrideConfig:Landroid/content/res/Configuration;

    .line 385
    :cond_b0
    :goto_b0
    move-object/from16 v0, p0

    iget-object v1, v0, mOverrideConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v13, v1, :cond_14

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->getOrientationFromDisplayLocked(I)I

    move-result v12

    .line 387
    .local v12, "globalOr":I
    const/4 v1, 0x1

    if-ne v12, v1, :cond_217

    const/4 v15, 0x2

    .line 390
    .local v15, "oppositeOrientation":I
    :goto_c5
    if-eq v13, v15, :cond_cf

    move-object/from16 v0, p0

    iget-object v1, v0, mOverrideConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v15, :cond_14

    .line 391
    :cond_cf
    invoke-virtual/range {p0 .. p0}, getTopMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    .line 392
    .local v5, "isMinimized":Z
    move-object/from16 v0, p0

    iget-object v1, v0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p0

    iget-object v2, v0, mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v1, v0, mTmpRect2:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, mTmpRect2:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v1, v0, mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v1, v0, mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v6, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, adjustSelectiveStackBound(Landroid/graphics/Rect;IIZZ)V

    .line 396
    move-object/from16 v0, p0

    iget-object v1, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x6b

    new-instance v3, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, mTmpRect2:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 397
    .local v14, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget v1, v0, mStackId:I

    iput v1, v14, Landroid/os/Message;->arg1:I

    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v14}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 399
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_169

    .line 400
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notify floatingStack rotated(uoc), stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newBounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldBounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_169
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v18, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    move-object/from16 v0, p0

    iget-object v1, v0, mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v2, 0xb

    invoke-virtual/range {p0 .. p0}, getDisplayId()I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->prepareMultiWindowTransition(Ljava/util/ArrayList;II)V

    .line 408
    move-object/from16 v0, p0

    iget-object v1, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget v2, v0, mStackId:I

    move-object/from16 v0, p0

    iget-object v3, v0, mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    goto/16 :goto_14

    .line 366
    .end local v5    # "isMinimized":Z
    .end local v12    # "globalOr":I
    .end local v14    # "msg":Landroid/os/Message;
    .end local v15    # "oppositeOrientation":I
    .end local v18    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :pswitch_197
    move-object/from16 v0, p0

    iget-object v1, v0, mOverrideConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b0

    .line 367
    move-object/from16 v0, p0

    iget-object v1, v0, mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    add-int/lit8 v3, v16, 0x1

    rem-int/lit8 v3, v3, 0x4

    invoke-interface {v2, v9, v11, v3}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(III)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    float-to-int v2, v2

    iput v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    add-int/lit8 v3, v16, 0x1

    rem-int/lit8 v3, v3, 0x4

    invoke-interface {v2, v9, v11, v3}, Landroid/view/WindowManagerPolicy;->getConfigDisplayHeight(III)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    float-to-int v2, v2

    iput v2, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 369
    move-object/from16 v0, p0

    iget-object v1, v0, mOverrideConfig:Landroid/content/res/Configuration;

    const/4 v2, 0x1

    iput v2, v1, Landroid/content/res/Configuration;->orientation:I

    goto/16 :goto_b0

    .line 373
    :pswitch_1d7
    move-object/from16 v0, p0

    iget-object v1, v0, mOverrideConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b0

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    add-int/lit8 v3, v16, 0x1

    rem-int/lit8 v3, v3, 0x4

    invoke-interface {v2, v9, v11, v3}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(III)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    float-to-int v2, v2

    iput v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 375
    move-object/from16 v0, p0

    iget-object v1, v0, mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    add-int/lit8 v3, v16, 0x1

    rem-int/lit8 v3, v3, 0x4

    invoke-interface {v2, v9, v11, v3}, Landroid/view/WindowManagerPolicy;->getConfigDisplayHeight(III)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    float-to-int v2, v2

    iput v2, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, mOverrideConfig:Landroid/content/res/Configuration;

    const/4 v2, 0x2

    iput v2, v1, Landroid/content/res/Configuration;->orientation:I

    goto/16 :goto_b0

    .line 387
    .restart local v12    # "globalOr":I
    :cond_217
    const/4 v15, 0x1

    goto/16 :goto_c5

    .line 364
    :pswitch_data_21a
    .packed-switch 0x1
        :pswitch_197
        :pswitch_1d7
    .end packed-switch
.end method

.method updateTopPenWindowControllerToken()V
    .registers 10

    .prologue
    .line 1814
    const/4 v6, 0x0

    iput-object v6, p0, mTopPenWindowControllerToken:Lcom/android/server/wm/AppWindowToken;

    .line 1816
    iget-object v6, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "taskNdx":I
    :goto_b
    if-ltz v2, :cond_82

    .line 1817
    iget-object v6, p0, mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget-object v0, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 1818
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_1d
    if-ltz v1, :cond_89

    .line 1819
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 1820
    .local v5, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "winNdx":I
    :goto_2d
    if-ltz v4, :cond_86

    .line 1821
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 1822
    .local v3, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3ee

    if-eq v6, v7, :cond_49

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3ef

    if-ne v6, v7, :cond_83

    .line 1824
    :cond_49
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_83

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v6, v6, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v6, :cond_83

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v6

    if-eqz v6, :cond_83

    .line 1825
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iput-object v6, p0, mTopPenWindowControllerToken:Lcom/android/server/wm/AppWindowToken;

    .line 1826
    iget-object v6, p0, mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->DEBUG_MULTIWINDOW_CONTROL:Z

    if-eqz v6, :cond_82

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateTopPenWindowControllerToken() mTopPenWindowControllerToken="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mTopPenWindowControllerToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .end local v4    # "winNdx":I
    .end local v5    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_82
    return-void

    .line 1820
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .restart local v1    # "activityNdx":I
    .restart local v3    # "win":Lcom/android/server/wm/WindowState;
    .restart local v4    # "winNdx":I
    .restart local v5    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_83
    add-int/lit8 v4, v4, -0x1

    goto :goto_2d

    .line 1818
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_86
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    .line 1816
    .end local v4    # "winNdx":I
    .end local v5    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_89
    add-int/lit8 v2, v2, -0x1

    goto :goto_b
.end method
