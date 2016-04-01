.class final Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SystemGesturesPointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SystemGesturesPointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FlingGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/SystemGesturesPointerEventListener;)V
    .registers 2

    .prologue
    .line 482
    iput-object p1, p0, this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/SystemGesturesPointerEventListener;Lcom/android/server/policy/SystemGesturesPointerEventListener$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/policy/SystemGesturesPointerEventListener;
    .param p2, "x1"    # Lcom/android/server/policy/SystemGesturesPointerEventListener$1;

    .prologue
    .line 482
    invoke-direct {p0, p1}, <init>(Lcom/android/server/policy/SystemGesturesPointerEventListener;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 19
    .param p1, "down"    # Landroid/view/MotionEvent;
    .param p2, "up"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 493
    iget-object v2, p0, this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    # getter for: Lcom/android/server/policy/SystemGesturesPointerEventListener;->mOverscroller:Landroid/widget/OverScroller;
    invoke-static {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 494
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 496
    .local v12, "now":J
    iget-object v2, p0, this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    # getter for: Lcom/android/server/policy/SystemGesturesPointerEventListener;->mLastFlingTime:J
    invoke-static {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$200(Lcom/android/server/policy/SystemGesturesPointerEventListener;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_30

    iget-object v2, p0, this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    # getter for: Lcom/android/server/policy/SystemGesturesPointerEventListener;->mLastFlingTime:J
    invoke-static {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$200(Lcom/android/server/policy/SystemGesturesPointerEventListener;)J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v2, v12, v2

    if-lez v2, :cond_30

    .line 497
    iget-object v2, p0, this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    # getter for: Lcom/android/server/policy/SystemGesturesPointerEventListener;->mOverscroller:Landroid/widget/OverScroller;
    invoke-static {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 499
    :cond_30
    iget-object v2, p0, this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    # getter for: Lcom/android/server/policy/SystemGesturesPointerEventListener;->mOverscroller:Landroid/widget/OverScroller;
    invoke-static {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p3

    float-to-int v5, v0

    move/from16 v0, p4

    float-to-int v6, v0

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    invoke-virtual/range {v2 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 501
    iget-object v2, p0, this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    # getter for: Lcom/android/server/policy/SystemGesturesPointerEventListener;->mOverscroller:Landroid/widget/OverScroller;
    invoke-static {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getDuration()I

    move-result v11

    .line 502
    .local v11, "duration":I
    const/16 v2, 0x1388

    if-le v11, v2, :cond_5b

    .line 503
    const/16 v11, 0x1388

    .line 505
    :cond_5b
    iget-object v2, p0, this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    # setter for: Lcom/android/server/policy/SystemGesturesPointerEventListener;->mLastFlingTime:J
    invoke-static {v2, v12, v13}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$202(Lcom/android/server/policy/SystemGesturesPointerEventListener;J)J

    .line 506
    iget-object v2, p0, this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    # getter for: Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;
    invoke-static {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$300(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    move-result-object v2

    invoke-interface {v2, v11}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onFling(I)V

    .line 507
    const/4 v2, 0x1

    return v2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 485
    iget-object v0, p0, this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    # getter for: Lcom/android/server/policy/SystemGesturesPointerEventListener;->mOverscroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_16

    .line 486
    iget-object v0, p0, this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    # getter for: Lcom/android/server/policy/SystemGesturesPointerEventListener;->mOverscroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 488
    :cond_16
    return v1
.end method
