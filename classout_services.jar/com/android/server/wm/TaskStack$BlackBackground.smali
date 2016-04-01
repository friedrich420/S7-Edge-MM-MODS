.class Lcom/android/server/wm/TaskStack$BlackBackground;
.super Ljava/lang/Object;
.source "TaskStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlackBackground"
.end annotation


# static fields
.field static final DEBUG_BG:Z = false

.field static final TAG_BG:Ljava/lang/String; = "BlackSurface"


# instance fields
.field mApplyMagnifiSpec:Z

.field mBaseWindow:Lcom/android/server/wm/WindowState;

.field mBlackSurface:Lcom/android/server/wm/DimLayer;

.field mBottomLayer:I

.field mBounds:Landroid/graphics/Rect;

.field mDisplayId:I

.field mLayer:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field mShown:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V
    .registers 7
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v2, -0x1

    .line 2007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2008
    new-instance v0, Lcom/android/server/wm/DimLayer;

    const-string v1, "BlackBackground"

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    iput-object v0, p0, mBlackSurface:Lcom/android/server/wm/DimLayer;

    .line 2009
    iput v2, p0, mLayer:I

    .line 2010
    iput v2, p0, mBottomLayer:I

    .line 2011
    const/4 v0, 0x0

    iput-object v0, p0, mBaseWindow:Lcom/android/server/wm/WindowState;

    .line 2012
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mBounds:Landroid/graphics/Rect;

    .line 2013
    const/4 v0, 0x0

    iput-boolean v0, p0, mShown:Z

    .line 2014
    iput-object p1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    .line 2016
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    iput v0, p0, mDisplayId:I

    .line 2018
    return-void
.end method


# virtual methods
.method animateBlackBackground()V
    .registers 29

    .prologue
    .line 2059
    move-object/from16 v0, p0

    iget-object v0, v0, mBlackSurface:Lcom/android/server/wm/DimLayer;

    move-object/from16 v22, v0

    if-nez v22, :cond_9

    .line 2145
    :cond_8
    :goto_8
    return-void

    .line 2062
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    if-nez v22, :cond_15

    .line 2063
    invoke-virtual/range {p0 .. p0}, hide()V

    goto :goto_8

    .line 2067
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v16

    .line 2068
    .local v16, "isVisible":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_143

    const/4 v13, 0x1

    .line 2069
    .local v13, "isOpaqueWin":Z
    :goto_3a
    move-object/from16 v0, p0

    iget-object v0, v0, mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v22

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    .line 2070
    .local v11, "isMinimized":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v22

    if-eqz v22, :cond_146

    move-object/from16 v0, p0

    iget-object v0, v0, mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowStateAnimator;->isDummyAnimation()Z

    move-result v22

    if-nez v22, :cond_146

    const/4 v8, 0x1

    .line 2071
    .local v8, "isAnimating":Z
    :goto_69
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v22

    if-eqz v22, :cond_149

    const/4 v14, 0x1

    .line 2072
    .local v14, "isRotation":Z
    :goto_86
    const/4 v15, 0x0

    .line 2073
    .local v15, "isTransparent":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v22

    if-nez v22, :cond_14c

    const/4 v10, 0x1

    .line 2074
    .local v10, "isDrawing":Z
    :goto_94
    move-object/from16 v0, p0

    iget-object v0, v0, mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v22, v0

    if-eqz v22, :cond_14f

    move-object/from16 v0, p0

    iget-object v0, v0, mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->mWaitingForMaximizeAnim:Z

    move/from16 v22, v0

    if-eqz v22, :cond_14f

    const/16 v17, 0x1

    .line 2075
    .local v17, "isWaitingForMaximizeAnim":Z
    :goto_b8
    move-object/from16 v0, p0

    iget-object v0, v0, mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v22, v0

    if-eqz v22, :cond_153

    move-object/from16 v0, p0

    iget-object v0, v0, mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v22

    if-eqz v22, :cond_153

    const/4 v12, 0x1

    .line 2076
    .local v12, "isNormal":Z
    :goto_eb
    move-object/from16 v0, p0

    iget-object v0, v0, mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v22, v0

    if-eqz v22, :cond_155

    move-object/from16 v0, p0

    iget-object v0, v0, mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHiddenBeforeRotationAnimation:Z

    move/from16 v22, v0

    if-eqz v22, :cond_155

    const/4 v9, 0x1

    .line 2077
    .local v9, "isCameraRotation":Z
    :goto_10e
    if-eqz v16, :cond_13e

    if-nez v11, :cond_13e

    if-nez v13, :cond_13e

    if-nez v8, :cond_13e

    if-nez v14, :cond_13e

    if-nez v10, :cond_13e

    move-object/from16 v0, p0

    iget-object v0, v0, mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mMultiWindowStyleChanging:Z

    move/from16 v22, v0

    if-nez v22, :cond_13e

    move-object/from16 v0, p0

    iget-object v0, v0, mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    move/from16 v22, v0

    if-nez v22, :cond_13e

    if-nez v15, :cond_13e

    if-nez v17, :cond_13e

    if-nez v12, :cond_13e

    if-eqz v9, :cond_157

    .line 2089
    :cond_13e
    invoke-virtual/range {p0 .. p0}, hide()V

    goto/16 :goto_8

    .line 2068
    .end local v8    # "isAnimating":Z
    .end local v9    # "isCameraRotation":Z
    .end local v10    # "isDrawing":Z
    .end local v11    # "isMinimized":Z
    .end local v12    # "isNormal":Z
    .end local v13    # "isOpaqueWin":Z
    .end local v14    # "isRotation":Z
    .end local v15    # "isTransparent":Z
    .end local v17    # "isWaitingForMaximizeAnim":Z
    :cond_143
    const/4 v13, 0x0

    goto/16 :goto_3a

    .line 2070
    .restart local v11    # "isMinimized":Z
    .restart local v13    # "isOpaqueWin":Z
    :cond_146
    const/4 v8, 0x0

    goto/16 :goto_69

    .line 2071
    .restart local v8    # "isAnimating":Z
    :cond_149
    const/4 v14, 0x0

    goto/16 :goto_86

    .line 2073
    .restart local v14    # "isRotation":Z
    .restart local v15    # "isTransparent":Z
    :cond_14c
    const/4 v10, 0x0

    goto/16 :goto_94

    .line 2074
    .restart local v10    # "isDrawing":Z
    :cond_14f
    const/16 v17, 0x0

    goto/16 :goto_b8

    .line 2075
    .restart local v17    # "isWaitingForMaximizeAnim":Z
    :cond_153
    const/4 v12, 0x0

    goto :goto_eb

    .line 2076
    .restart local v12    # "isNormal":Z
    :cond_155
    const/4 v9, 0x0

    goto :goto_10e

    .line 2091
    .restart local v9    # "isCameraRotation":Z
    :cond_157
    move-object/from16 v0, p0

    iget-object v0, v0, mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_16d
    :goto_16d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1ae

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/wm/WindowState;

    .line 2092
    .local v21, "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget v0, v0, mBottomLayer:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1a1

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v22, v0

    if-lez v22, :cond_16d

    move-object/from16 v0, p0

    iget v0, v0, mBottomLayer:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_16d

    .line 2097
    :cond_1a1
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mBottomLayer:I

    goto :goto_16d

    .line 2101
    .end local v21    # "w":Lcom/android/server/wm/WindowState;
    :cond_1ae
    move-object/from16 v0, p0

    iget v0, v0, mBottomLayer:I

    move/from16 v22, v0

    add-int/lit8 v6, v22, -0x1

    .line 2104
    .local v6, "dimlayer":I
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    move-object/from16 v19, v0

    .line 2105
    .local v19, "tmpFloats":[F
    move-object/from16 v0, p0

    iget-object v0, v0, mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    .line 2107
    .local v20, "tmpMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2109
    move-object/from16 v0, p0

    iget-boolean v0, v0, mApplyMagnifiSpec:Z

    move/from16 v22, v0

    if-nez v22, :cond_289

    .line 2110
    const/16 v18, 0x0

    .line 2118
    .local v18, "spec":Landroid/view/MagnificationSpec;
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v22, v0

    if-eqz v22, :cond_203

    .line 2119
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v18

    .line 2125
    :cond_203
    if-eqz v18, :cond_23f

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_23f

    .line 2126
    move-object/from16 v0, p0

    iget-object v0, v0, mBounds:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Rect;->scale(F)V

    .line 2127
    move-object/from16 v0, p0

    iget-object v0, v0, mBounds:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Rect;->offset(II)V

    .line 2133
    .end local v18    # "spec":Landroid/view/MagnificationSpec;
    :cond_23f
    :goto_23f
    move-object/from16 v0, p0

    iget-object v0, v0, mBlackSurface:Lcom/android/server/wm/DimLayer;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 2134
    move-object/from16 v0, p0

    iget v0, v0, mLayer:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v6, :cond_260

    move-object/from16 v0, p0

    iget-boolean v0, v0, mShown:Z

    move/from16 v22, v0

    if-nez v22, :cond_8

    .line 2140
    :cond_260
    move-object/from16 v0, p0

    iput v6, v0, mLayer:I

    .line 2141
    move-object/from16 v0, p0

    iget-object v0, v0, mBlackSurface:Lcom/android/server/wm/DimLayer;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, mLayer:I

    move/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    const-wide/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move-wide/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 2142
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mShown:Z

    goto/16 :goto_8

    .line 2130
    :cond_289
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mApplyMagnifiSpec:Z

    goto :goto_23f
.end method

.method destroySurface()V
    .registers 2

    .prologue
    .line 2036
    iget-object v0, p0, mBlackSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 2037
    const/4 v0, 0x0

    iput-object v0, p0, mBlackSurface:Lcom/android/server/wm/DimLayer;

    .line 2038
    return-void
.end method

.method hide()V
    .registers 2

    .prologue
    .line 2041
    iget-object v0, p0, mBlackSurface:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, mShown:Z

    if-eqz v0, :cond_10

    .line 2043
    iget-object v0, p0, mBlackSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->hide()V

    .line 2044
    const/4 v0, 0x0

    iput-boolean v0, p0, mShown:Z

    .line 2046
    :cond_10
    return-void
.end method

.method notifyVisibleWindow(Lcom/android/server/wm/WindowState;)V
    .registers 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2021
    if-nez p1, :cond_9

    .line 2023
    const/4 v0, 0x0

    iput-object v0, p0, mBaseWindow:Lcom/android/server/wm/WindowState;

    .line 2024
    const/4 v0, -0x1

    iput v0, p0, mBottomLayer:I

    .line 2032
    :cond_8
    :goto_8
    return-void

    .line 2028
    :cond_9
    iget-object v0, p0, mBaseWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_15

    iget-object v0, p0, mBaseWindow:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v1, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    if-le v0, v1, :cond_8

    .line 2030
    :cond_15
    iput-object p1, p0, mBaseWindow:Lcom/android/server/wm/WindowState;

    goto :goto_8
.end method

.method setBound(Landroid/graphics/Rect;Z)V
    .registers 4
    .param p1, "bound"    # Landroid/graphics/Rect;
    .param p2, "applyMagnifiSpec"    # Z

    .prologue
    .line 2049
    iput-boolean p2, p0, mApplyMagnifiSpec:Z

    .line 2051
    iget-object v0, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2053
    iget-object v0, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2055
    :cond_f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2149
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2150
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/server/wm/TaskStack$BlackBackground;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2151
    const-string v1, " bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2152
    iget-object v1, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2153
    const-string v1, " layer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2154
    iget v1, p0, mLayer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2155
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
