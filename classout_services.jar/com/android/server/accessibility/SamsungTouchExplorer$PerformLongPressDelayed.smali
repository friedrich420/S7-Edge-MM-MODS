.class final Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;
.super Ljava/lang/Object;
.source "SamsungTouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PerformLongPressDelayed"
.end annotation


# instance fields
.field private mEvent:Landroid/view/MotionEvent;

.field private mPolicyFlags:I

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V
    .registers 2

    .prologue
    .line 2378
    iput-object p1, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;Lcom/android/server/accessibility/SamsungTouchExplorer$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;
    .param p2, "x1"    # Lcom/android/server/accessibility/SamsungTouchExplorer$1;

    .prologue
    .line 2378
    invoke-direct {p0, p1}, <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    .prologue
    .line 2378
    invoke-direct {p0}, isPending()Z

    move-result v0

    return v0
.end method

.method private clear()V
    .registers 2

    .prologue
    .line 2440
    iget-object v0, p0, mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2441
    const/4 v0, 0x0

    iput-object v0, p0, mEvent:Landroid/view/MotionEvent;

    .line 2442
    const/4 v0, 0x0

    iput v0, p0, mPolicyFlags:I

    .line 2443
    return-void
.end method

.method private isPending()Z
    .registers 2

    .prologue
    .line 2401
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2800(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 2393
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->isLongPressPerformed:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2902(Lcom/android/server/accessibility/SamsungTouchExplorer;Z)Z

    .line 2394
    iget-object v0, p0, mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_16

    .line 2395
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2800(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2396
    invoke-direct {p0}, clear()V

    .line 2398
    :cond_16
    return-void
.end method

.method public post(Landroid/view/MotionEvent;I)V
    .registers 7
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 2383
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, mEvent:Landroid/view/MotionEvent;

    .line 2384
    iput p2, p0, mPolicyFlags:I

    .line 2387
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->isLongPressPerformed:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2902(Lcom/android/server/accessibility/SamsungTouchExplorer;Z)Z

    .line 2388
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2800(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2389
    return-void
.end method

.method public run()V
    .registers 9

    .prologue
    .line 2407
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$3000(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-nez v4, :cond_11

    .line 2437
    :cond_10
    :goto_10
    return-void

    .line 2411
    :cond_11
    iget-object v4, p0, mEvent:Landroid/view/MotionEvent;

    iget-object v5, p0, mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2412
    .local v1, "pointerId":I
    iget-object v4, p0, mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 2414
    .local v2, "pointerIndex":I
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTempPoint:Landroid/graphics/Point;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1600(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/graphics/Point;

    move-result-object v0

    .line 2415
    .local v0, "clickLocation":Landroid/graphics/Point;
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer;->computeClickLocation(Landroid/graphics/Point;)I
    invoke-static {v4, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1700(Lcom/android/server/accessibility/SamsungTouchExplorer;Landroid/graphics/Point;)I

    move-result v3

    .line 2416
    .local v3, "result":I
    if-eqz v3, :cond_10

    .line 2420
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I
    invoke-static {v4, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$3102(Lcom/android/server/accessibility/SamsungTouchExplorer;I)I

    .line 2421
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    iget-object v5, p0, mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I
    invoke-static {v4, v5}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$3202(Lcom/android/server/accessibility/SamsungTouchExplorer;I)I

    .line 2422
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    iget-object v5, p0, mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I
    invoke-static {v4, v5}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$3302(Lcom/android/server/accessibility/SamsungTouchExplorer;I)I

    .line 2424
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    iget v5, p0, mPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V
    invoke-static {v4, v5}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$3400(Lcom/android/server/accessibility/SamsungTouchExplorer;I)V

    .line 2426
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/4 v5, 0x4

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I
    invoke-static {v4, v5}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$3502(Lcom/android/server/accessibility/SamsungTouchExplorer;I)I

    .line 2427
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    iget-object v5, p0, mEvent:Landroid/view/MotionEvent;

    iget v6, p0, mPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V
    invoke-static {v4, v5, v6}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$3600(Lcom/android/server/accessibility/SamsungTouchExplorer;Landroid/view/MotionEvent;I)V

    .line 2429
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2800(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed$1;

    invoke-direct {v5, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed$1;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2436
    invoke-direct {p0}, clear()V

    goto :goto_10
.end method
