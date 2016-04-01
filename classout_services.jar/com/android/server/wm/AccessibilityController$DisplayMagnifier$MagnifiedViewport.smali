.class final Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MagnifiedViewport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;
    }
.end annotation


# instance fields
.field private final mBorderWidth:F

.field private final mCircularPath:Landroid/graphics/Path;

.field mDisplayId:I

.field private final mDrawBorderInset:I

.field private mFullRedrawNeeded:Z

.field private final mHalfBorderWidth:I

.field private final mMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mMagnifiedBounds:Landroid/graphics/Region;

.field private final mOldMagnifiedBounds:Landroid/graphics/Region;

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRectF:Landroid/graphics/RectF;

.field private final mTempWindowStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

.field private final mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;I)V
    .registers 9
    .param p2, "displayId"    # I

    .prologue
    .line 477
    iput-object p1, p0, this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, mTempWindowStates:Landroid/util/SparseArray;

    .line 451
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, mTempRectF:Landroid/graphics/RectF;

    .line 453
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, mTempPoint:Landroid/graphics/Point;

    .line 455
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, mTempMatrix:Landroid/graphics/Matrix;

    .line 457
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, mMagnifiedBounds:Landroid/graphics/Region;

    .line 458
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, mOldMagnifiedBounds:Landroid/graphics/Region;

    .line 462
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v1

    iput-object v1, p0, mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 486
    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, mWindowManager:Landroid/view/WindowManager;

    .line 488
    iput p2, p0, mDisplayId:I

    .line 491
    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, mBorderWidth:F

    .line 493
    iget v1, p0, mBorderWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, mHalfBorderWidth:I

    .line 494
    iget v1, p0, mBorderWidth:F

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, mDrawBorderInset:I

    .line 495
    new-instance v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;Landroid/content/Context;)V

    iput-object v1, p0, mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    .line 497
    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 498
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, mCircularPath:Landroid/graphics/Path;

    .line 499
    iget-object v1, p0, mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 500
    iget-object v1, p0, mTempPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v1, 0x2

    .line 501
    .local v0, "centerXY":I
    iget-object v1, p0, mCircularPath:Landroid/graphics/Path;

    int-to-float v2, v0

    int-to-float v3, v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 506
    .end local v0    # "centerXY":I
    :goto_aa
    invoke-virtual {p0}, recomputeBoundsLocked()V

    .line 507
    return-void

    .line 503
    :cond_ae
    const/4 v1, 0x0

    iput-object v1, p0, mCircularPath:Landroid/graphics/Path;

    goto :goto_aa
.end method

.method static synthetic access$1000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .prologue
    .line 446
    iget-object v0, p0, mTempPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .prologue
    .line 446
    iget-object v0, p0, mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .prologue
    .line 446
    iget v0, p0, mBorderWidth:F

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .prologue
    .line 446
    iget v0, p0, mHalfBorderWidth:I

    return v0
.end method

.method private populateWindowsOnScreenLocked(Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 706
    .local p1, "outWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    iget-object v5, p0, this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$100(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 708
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 709
    .local v3, "windowList":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 710
    .local v2, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v2, :cond_2f

    .line 711
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 712
    .local v4, "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v5

    if-eqz v5, :cond_2c

    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    if-nez v5, :cond_2c

    .line 714
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {p1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 710
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 717
    .end local v4    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_2f
    return-void
.end method


# virtual methods
.method public destroyWindow()V
    .registers 2

    .prologue
    .line 702
    iget-object v0, p0, mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->releaseSurface()V

    .line 703
    return-void
.end method

.method public drawWindowIfNeededLocked()V
    .registers 2

    .prologue
    .line 697
    invoke-virtual {p0}, recomputeBoundsLocked()V

    .line 698
    iget-object v0, p0, mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->drawIfNeeded()V

    .line 699
    return-void
.end method

.method public getMagnificationSpecLocked()Landroid/view/MagnificationSpec;
    .registers 2

    .prologue
    .line 692
    iget-object v0, p0, mMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method public getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 681
    iget-object v0, p0, mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 682
    .local v0, "spec":Landroid/view/MagnificationSpec;
    iget-object v1, p0, mMagnifiedBounds:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 683
    iget v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v1, v1

    float-to-int v1, v1

    iget v2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 684
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, v0, Landroid/view/MagnificationSpec;->scale:F

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 685
    return-void
.end method

.method public isMagnifyingLocked()Z
    .registers 3

    .prologue
    .line 688
    iget-object v0, p0, mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onRotationChangedLocked()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 660
    invoke-virtual {p0}, isMagnifyingLocked()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 661
    invoke-virtual {p0, v4, v4}, setMagnifiedRegionBorderShownLocked(ZZ)V

    .line 662
    iget-object v3, p0, this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mLongAnimationDuration:J
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$900(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)J

    move-result-wide v4

    long-to-float v3, v4

    iget-object v4, p0, this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$100(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-long v0, v3

    .line 664
    .local v0, "delay":J
    iget-object v3, p0, this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$200(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 666
    .local v2, "message":Landroid/os/Message;
    iget-object v3, p0, this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$200(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 668
    .end local v0    # "delay":J
    .end local v2    # "message":Landroid/os/Message;
    :cond_31
    invoke-virtual {p0}, recomputeBoundsLocked()V

    .line 669
    iget-object v3, p0, mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->updateSize()V

    .line 670
    return-void
.end method

.method public recomputeBoundsLocked()V
    .registers 30

    .prologue
    .line 534
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$100(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_93

    .line 536
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 542
    :goto_1e
    move-object/from16 v0, p0

    iget-object v3, v0, mTempPoint:Landroid/graphics/Point;

    iget v5, v3, Landroid/graphics/Point;->x:I

    .line 543
    .local v5, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, mTempPoint:Landroid/graphics/Point;

    iget v6, v3, Landroid/graphics/Point;->y:I

    .line 545
    .local v6, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, mMagnifiedBounds:Landroid/graphics/Region;

    move-object/from16 v19, v0

    .line 546
    .local v19, "magnifiedBounds":Landroid/graphics/Region;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 548
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$300(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v14

    .line 549
    .local v14, "availableBounds":Landroid/graphics/Region;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 551
    move-object/from16 v0, p0

    iget-object v3, v0, mCircularPath:Landroid/graphics/Path;

    if-eqz v3, :cond_53

    .line 552
    move-object/from16 v0, p0

    iget-object v3, v0, mCircularPath:Landroid/graphics/Path;

    invoke-virtual {v14, v3, v14}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 555
    :cond_53
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion4:Landroid/graphics/Region;
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$400(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v21

    .line 556
    .local v21, "nonMagnifiedBounds":Landroid/graphics/Region;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, mTempWindowStates:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    .line 559
    .local v25, "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->clear()V

    .line 560
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, populateWindowsOnScreenLocked(Landroid/util/SparseArray;)V

    .line 562
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v24

    .line 563
    .local v24, "visibleWindowCount":I
    add-int/lit8 v18, v24, -0x1

    .local v18, "i":I
    :goto_7a
    if-ltz v18, :cond_160

    .line 564
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/wm/WindowState;

    .line 565
    .local v28, "windowState":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7eb

    if-ne v3, v4, :cond_a4

    .line 563
    :cond_90
    add-int/lit8 v18, v18, -0x1

    goto :goto_7a

    .line 539
    .end local v5    # "screenWidth":I
    .end local v6    # "screenHeight":I
    .end local v14    # "availableBounds":Landroid/graphics/Region;
    .end local v18    # "i":I
    .end local v19    # "magnifiedBounds":Landroid/graphics/Region;
    .end local v21    # "nonMagnifiedBounds":Landroid/graphics/Region;
    .end local v24    # "visibleWindowCount":I
    .end local v25    # "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    .end local v28    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_93
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto/16 :goto_1e

    .line 570
    .restart local v5    # "screenWidth":I
    .restart local v6    # "screenHeight":I
    .restart local v14    # "availableBounds":Landroid/graphics/Region;
    .restart local v18    # "i":I
    .restart local v19    # "magnifiedBounds":Landroid/graphics/Region;
    .restart local v21    # "nonMagnifiedBounds":Landroid/graphics/Region;
    .restart local v24    # "visibleWindowCount":I
    .restart local v25    # "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    .restart local v28    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_a4
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$500(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v26

    .line 571
    .local v26, "windowBounds":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v0, v0, mTempMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    .line 572
    .local v20, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, v28

    move-object/from16 v1, v20

    # invokes: Lcom/android/server/wm/AccessibilityController;->populateTransformationMatrixLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    invoke-static {v0, v1}, Lcom/android/server/wm/AccessibilityController;->access$600(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, mTempRectF:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    .line 575
    .local v27, "windowFrame":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$100(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy;->canMagnifyWindow(I)Z

    move-result v3

    if-eqz v3, :cond_1f6

    .line 578
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1eb

    .line 579
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 587
    :goto_e9
    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    move-object/from16 v0, v27

    iget v4, v0, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 588
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 589
    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    move-object/from16 v0, v27

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    move-object/from16 v0, v27

    iget v7, v0, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    move-object/from16 v0, v27

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 591
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 592
    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 608
    :goto_128
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$500(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v2

    .line 609
    .local v2, "accountedBounds":Landroid/graphics/Region;
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 610
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 611
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v7, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 613
    invoke-virtual {v2}, Landroid/graphics/Region;->isRect()Z

    move-result v3

    if-eqz v3, :cond_90

    .line 614
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$800(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Rect;

    move-result-object v13

    .line 615
    .local v13, "accountedFrame":Landroid/graphics/Rect;
    invoke-virtual {v2, v13}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 616
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v3, v5, :cond_90

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v3, v6, :cond_90

    .line 623
    .end local v2    # "accountedBounds":Landroid/graphics/Region;
    .end local v13    # "accountedFrame":Landroid/graphics/Rect;
    .end local v20    # "matrix":Landroid/graphics/Matrix;
    .end local v26    # "windowBounds":Landroid/graphics/Region;
    .end local v27    # "windowFrame":Landroid/graphics/RectF;
    .end local v28    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_160
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->clear()V

    .line 625
    move-object/from16 v0, p0

    iget v8, v0, mDrawBorderInset:I

    move-object/from16 v0, p0

    iget v9, v0, mDrawBorderInset:I

    move-object/from16 v0, p0

    iget v3, v0, mDrawBorderInset:I

    sub-int v10, v5, v3

    move-object/from16 v0, p0

    iget v3, v0, mDrawBorderInset:I

    sub-int v11, v6, v3

    sget-object v12, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v7, v19

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 629
    move-object/from16 v0, p0

    iget-object v3, v0, mOldMagnifiedBounds:Landroid/graphics/Region;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ea

    .line 630
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v15

    .line 631
    .local v15, "bounds":Landroid/graphics/Region;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 632
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$200(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 635
    move-object/from16 v0, p0

    iget-object v3, v0, mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setBounds(Landroid/graphics/Region;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$800(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Rect;

    move-result-object v16

    .line 637
    .local v16, "dirtyRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v3, v0, mFullRedrawNeeded:Z

    if-eqz v3, :cond_26b

    .line 638
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, mFullRedrawNeeded:Z

    .line 639
    move-object/from16 v0, p0

    iget v3, v0, mDrawBorderInset:I

    move-object/from16 v0, p0

    iget v4, v0, mDrawBorderInset:I

    move-object/from16 v0, p0

    iget v7, v0, mDrawBorderInset:I

    sub-int v7, v5, v7

    move-object/from16 v0, p0

    iget v8, v0, mDrawBorderInset:I

    sub-int v8, v6, v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 641
    move-object/from16 v0, p0

    iget-object v3, v0, mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    .line 651
    :goto_1e1
    move-object/from16 v0, p0

    iget-object v3, v0, mOldMagnifiedBounds:Landroid/graphics/Region;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 653
    .end local v15    # "bounds":Landroid/graphics/Region;
    .end local v16    # "dirtyRect":Landroid/graphics/Rect;
    :cond_1ea
    return-void

    .line 581
    .restart local v20    # "matrix":Landroid/graphics/Matrix;
    .restart local v26    # "windowBounds":Landroid/graphics/Region;
    .restart local v27    # "windowFrame":Landroid/graphics/RectF;
    .restart local v28    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_1eb
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_e9

    .line 594
    :cond_1f6
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$700(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v23

    .line 595
    .local v23, "touchableRegion":Landroid/graphics/Region;
    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$800(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Rect;

    move-result-object v22

    .line 597
    .local v22, "touchableFrame":Landroid/graphics/Rect;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 598
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 599
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 600
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 601
    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    move-object/from16 v0, v27

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    move-object/from16 v0, v27

    iget v7, v0, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    move-object/from16 v0, v27

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 603
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 604
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 605
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v26

    invoke-virtual {v14, v0, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto/16 :goto_128

    .line 643
    .end local v20    # "matrix":Landroid/graphics/Matrix;
    .end local v22    # "touchableFrame":Landroid/graphics/Rect;
    .end local v23    # "touchableRegion":Landroid/graphics/Region;
    .end local v26    # "windowBounds":Landroid/graphics/Region;
    .end local v27    # "windowFrame":Landroid/graphics/RectF;
    .end local v28    # "windowState":Lcom/android/server/wm/WindowState;
    .restart local v15    # "bounds":Landroid/graphics/Region;
    .restart local v16    # "dirtyRect":Landroid/graphics/Rect;
    :cond_26b
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$700(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v17

    .line 644
    .local v17, "dirtyRegion":Landroid/graphics/Region;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 645
    move-object/from16 v0, p0

    iget-object v3, v0, mOldMagnifiedBounds:Landroid/graphics/Region;

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 646
    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 647
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 648
    move-object/from16 v0, p0

    iget-object v3, v0, mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_1e1
.end method

.method public setMagnifiedRegionBorderShownLocked(ZZ)V
    .registers 5
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 673
    if-eqz p1, :cond_b

    .line 674
    const/4 v0, 0x1

    iput-boolean v0, p0, mFullRedrawNeeded:Z

    .line 675
    iget-object v0, p0, mOldMagnifiedBounds:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Region;->set(IIII)Z

    .line 677
    :cond_b
    iget-object v0, p0, mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setShown(ZZ)V

    .line 678
    return-void
.end method

.method public updateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .registers 8
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 510
    if-eqz p1, :cond_3f

    .line 511
    iget-object v0, p0, mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, p1, Landroid/view/MagnificationSpec;->scale:F

    iget v2, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iget v3, p1, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/MagnificationSpec;->initialize(FFF)V

    .line 514
    iget v0, p1, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_35

    .line 515
    iget-object v0, p0, this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$100(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Lcom/android/server/wm/WindowManagerService;->setFocusedStackFrame(ZZ)V

    .line 526
    :goto_20
    iget-object v0, p0, this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$200(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_34

    .line 528
    invoke-virtual {p0}, isMagnifyingLocked()Z

    move-result v0

    invoke-virtual {p0, v0, v4}, setMagnifiedRegionBorderShownLocked(ZZ)V

    .line 530
    :cond_34
    return-void

    .line 517
    :cond_35
    iget-object v0, p0, this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$100(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setFocusedStackFrame(ZZ)V

    goto :goto_20

    .line 522
    :cond_3f
    iget-object v0, p0, mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->clear()V

    goto :goto_20
.end method
