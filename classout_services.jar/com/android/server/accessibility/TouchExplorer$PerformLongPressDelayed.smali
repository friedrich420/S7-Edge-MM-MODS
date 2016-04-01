.class final Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PerformLongPressDelayed"
.end annotation


# instance fields
.field private mEvent:Landroid/view/MotionEvent;

.field private mPolicyFlags:I

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .registers 2

    .prologue
    .line 1372
    iput-object p1, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p2, "x1"    # Lcom/android/server/accessibility/TouchExplorer$1;

    .prologue
    .line 1372
    invoke-direct {p0, p1}, <init>(Lcom/android/server/accessibility/TouchExplorer;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    .prologue
    .line 1372
    invoke-direct {p0}, isPending()Z

    move-result v0

    return v0
.end method

.method private clear()V
    .registers 2

    .prologue
    .line 1422
    iget-object v0, p0, mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1423
    const/4 v0, 0x0

    iput-object v0, p0, mEvent:Landroid/view/MotionEvent;

    .line 1424
    const/4 v0, 0x0

    iput v0, p0, mPolicyFlags:I

    .line 1425
    return-void
.end method

.method private isPending()Z
    .registers 2

    .prologue
    .line 1390
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1800(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 1383
    iget-object v0, p0, mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_10

    .line 1384
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1800(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1385
    invoke-direct {p0}, clear()V

    .line 1387
    :cond_10
    return-void
.end method

.method public post(Landroid/view/MotionEvent;I)V
    .registers 7
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 1377
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, mEvent:Landroid/view/MotionEvent;

    .line 1378
    iput p2, p0, mPolicyFlags:I

    .line 1379
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1800(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1380
    return-void
.end method

.method public run()V
    .registers 8

    .prologue
    .line 1396
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$2000(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-nez v4, :cond_11

    .line 1419
    :cond_10
    :goto_10
    return-void

    .line 1400
    :cond_11
    iget-object v4, p0, mEvent:Landroid/view/MotionEvent;

    iget-object v5, p0, mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1401
    .local v1, "pointerId":I
    iget-object v4, p0, mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 1403
    .local v2, "pointerIndex":I
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mTempPoint:Landroid/graphics/Point;
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$1500(Lcom/android/server/accessibility/TouchExplorer;)Landroid/graphics/Point;

    move-result-object v0

    .line 1404
    .local v0, "clickLocation":Landroid/graphics/Point;
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    # invokes: Lcom/android/server/accessibility/TouchExplorer;->computeClickLocation(Landroid/graphics/Point;)I
    invoke-static {v4, v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1600(Lcom/android/server/accessibility/TouchExplorer;Landroid/graphics/Point;)I

    move-result v3

    .line 1406
    .local v3, "result":I
    if-eqz v3, :cond_10

    .line 1410
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    # setter for: Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I
    invoke-static {v4, v1}, Lcom/android/server/accessibility/TouchExplorer;->access$2102(Lcom/android/server/accessibility/TouchExplorer;I)I

    .line 1411
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v5, p0, mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    # setter for: Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I
    invoke-static {v4, v5}, Lcom/android/server/accessibility/TouchExplorer;->access$2202(Lcom/android/server/accessibility/TouchExplorer;I)I

    .line 1412
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v5, p0, mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    # setter for: Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I
    invoke-static {v4, v5}, Lcom/android/server/accessibility/TouchExplorer;->access$2302(Lcom/android/server/accessibility/TouchExplorer;I)I

    .line 1414
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget v5, p0, mPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V
    invoke-static {v4, v5}, Lcom/android/server/accessibility/TouchExplorer;->access$2400(Lcom/android/server/accessibility/TouchExplorer;I)V

    .line 1416
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    const/4 v5, 0x4

    # setter for: Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I
    invoke-static {v4, v5}, Lcom/android/server/accessibility/TouchExplorer;->access$2502(Lcom/android/server/accessibility/TouchExplorer;I)I

    .line 1417
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v5, p0, mEvent:Landroid/view/MotionEvent;

    iget v6, p0, mPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V
    invoke-static {v4, v5, v6}, Lcom/android/server/accessibility/TouchExplorer;->access$2600(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;I)V

    .line 1418
    invoke-direct {p0}, clear()V

    goto :goto_10
.end method
