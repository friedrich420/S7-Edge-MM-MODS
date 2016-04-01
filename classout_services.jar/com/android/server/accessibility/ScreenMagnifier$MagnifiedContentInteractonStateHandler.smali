.class final Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScreenMagnifier.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MagnifiedContentInteractonStateHandler"
.end annotation


# static fields
.field private static final MAX_SCALE:F = 5.0f

.field private static final MIN_SCALE:F = 1.3f


# instance fields
.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mInitialScaleFactor:F

.field private final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaling:Z

.field private final mScalingThreshold:F

.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;Landroid/content/Context;)V
    .registers 7
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 562
    iput-object p1, p0, this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 559
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, mInitialScaleFactor:F

    .line 563
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 564
    .local v0, "scaleValue":Landroid/util/TypedValue;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050015

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 567
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, mScalingThreshold:F

    .line 568
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p2, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 569
    iget-object v1, p0, mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, v3}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 570
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, mGestureDetector:Landroid/view/GestureDetector;

    .line 571
    return-void
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;

    .prologue
    .line 549
    invoke-direct {p0}, clear()V

    return-void
.end method

.method private clear()V
    .registers 2

    .prologue
    .line 644
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, mInitialScaleFactor:F

    .line 645
    const/4 v0, 0x0

    iput-boolean v0, p0, mScaling:Z

    .line 646
    return-void
.end method


# virtual methods
.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x3

    .line 574
    iget-object v1, p0, mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 575
    iget-object v1, p0, mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 576
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$900(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_15

    .line 592
    :cond_14
    :goto_14
    return-void

    .line 579
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 580
    invoke-direct {p0}, clear()V

    .line 581
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getScale()F

    move-result v1

    const v2, 0x3fa66666    # 1.3f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 583
    .local v0, "scale":F
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->getPersistedScale()F
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1100(Lcom/android/server/accessibility/ScreenMagnifier;)F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_45

    .line 584
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->persistScale(F)V
    invoke-static {v1, v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1200(Lcom/android/server/accessibility/ScreenMagnifier;F)V

    .line 586
    :cond_45
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mPreviousState:I
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1300(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v1

    if-ne v1, v3, :cond_53

    .line 587
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V
    invoke-static {v1, v3}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1400(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    goto :goto_14

    .line 589
    :cond_53
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    const/4 v2, 0x2

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V
    invoke-static {v1, v2}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1400(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    goto :goto_14
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 10
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 610
    iget-boolean v5, p0, mScaling:Z

    if-nez v5, :cond_2a

    .line 611
    iget v5, p0, mInitialScaleFactor:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_15

    .line 612
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    iput v3, p0, mInitialScaleFactor:F

    :cond_13
    move v3, v4

    .line 630
    :goto_14
    return v3

    .line 614
    :cond_15
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v5

    iget v6, p0, mInitialScaleFactor:F

    sub-float v0, v5, v6

    .line 615
    .local v0, "deltaScale":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, mScalingThreshold:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_13

    .line 616
    iput-boolean v3, p0, mScaling:Z

    goto :goto_14

    .line 622
    .end local v0    # "deltaScale":F
    :cond_2a
    iget-object v5, p0, this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getScale()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v6

    mul-float v1, v5, v6

    .line 624
    .local v1, "newScale":F
    const v5, 0x3fa66666    # 1.3f

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 628
    .local v2, "normalizedNewScale":F
    iget-object v5, p0, this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v7

    invoke-virtual {v5, v2, v6, v7, v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScale(FFFZ)V

    goto :goto_14
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 635
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$900(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 640
    invoke-direct {p0}, clear()V

    .line 641
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .param p1, "first"    # Landroid/view/MotionEvent;
    .param p2, "second"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v2, 0x1

    .line 597
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$900(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    .line 605
    :goto_a
    return v2

    .line 604
    :cond_b
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->offsetMagnifiedRegionCenter(FF)V

    goto :goto_a
.end method
