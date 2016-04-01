.class Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;
.super Ljava/lang/Object;
.source "SamsungTouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendHoverEnterAndMoveDelayed"
.end annotation


# instance fields
.field private final LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

.field private final mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPointerIdBits:I

.field private mPolicyFlags:I

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V
    .registers 3

    .prologue
    .line 2449
    iput-object p1, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2450
    const-string v0, "SendHoverEnterAndMoveDelayed"

    iput-object v0, p0, LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

    .line 2452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mEvents:Ljava/util/List;

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    .prologue
    .line 2449
    invoke-direct {p0}, isPending()Z

    move-result v0

    return v0
.end method

.method private clear()V
    .registers 4

    .prologue
    .line 2482
    const/4 v2, -0x1

    iput v2, p0, mPointerIdBits:I

    .line 2483
    const/4 v2, 0x0

    iput v2, p0, mPolicyFlags:I

    .line 2484
    iget-object v2, p0, mEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 2485
    .local v0, "eventCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_1e

    .line 2486
    iget-object v2, p0, mEvents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 2485
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 2488
    :cond_1e
    return-void
.end method

.method private isPending()Z
    .registers 2

    .prologue
    .line 2478
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2800(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addEvent(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2467
    iget-object v0, p0, mEvents:Ljava/util/List;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2468
    return-void
.end method

.method public cancel()V
    .registers 2

    .prologue
    .line 2471
    invoke-direct {p0}, isPending()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2472
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2800(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2473
    invoke-direct {p0}, clear()V

    .line 2475
    :cond_12
    return-void
.end method

.method public forceSendAndRemove()V
    .registers 2

    .prologue
    .line 2491
    invoke-direct {p0}, isPending()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2492
    invoke-virtual {p0}, run()V

    .line 2493
    invoke-virtual {p0}, cancel()V

    .line 2495
    :cond_c
    return-void
.end method

.method public post(Landroid/view/MotionEvent;ZII)V
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "touchExplorationInProgress"    # Z
    .param p3, "pointerIdBits"    # I
    .param p4, "policyFlags"    # I

    .prologue
    .line 2459
    invoke-virtual {p0}, cancel()V

    .line 2460
    invoke-virtual {p0, p1}, addEvent(Landroid/view/MotionEvent;)V

    .line 2461
    iput p3, p0, mPointerIdBits:I

    .line 2462
    iput p4, p0, mPolicyFlags:I

    .line 2463
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2800(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mDetermineUserIntentTimeout:I
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$3700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2464
    return-void
.end method

.method public run()V
    .registers 8

    .prologue
    .line 2498
    const-string v2, "SendHoverEnterAndMoveDelayed"

    const-string v3, "Run called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    iget-object v2, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/16 v3, 0x200

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V
    invoke-static {v2, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2000(Lcom/android/server/accessibility/SamsungTouchExplorer;I)V

    .line 2502
    iget-object v2, p0, mEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_48

    .line 2504
    iget-object v3, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    iget-object v2, p0, mEvents:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    const/16 v4, 0x9

    iget v5, p0, mPointerIdBits:I

    iget v6, p0, mPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    invoke-static {v3, v2, v4, v5, v6}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$3800(Lcom/android/server/accessibility/SamsungTouchExplorer;Landroid/view/MotionEvent;III)V

    .line 2512
    iget-object v2, p0, mEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 2513
    .local v0, "eventCount":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_31
    if-ge v1, v0, :cond_48

    .line 2514
    iget-object v3, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    iget-object v2, p0, mEvents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    const/4 v4, 0x7

    iget v5, p0, mPointerIdBits:I

    iget v6, p0, mPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    invoke-static {v3, v2, v4, v5, v6}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$3800(Lcom/android/server/accessibility/SamsungTouchExplorer;Landroid/view/MotionEvent;III)V

    .line 2513
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 2522
    .end local v0    # "eventCount":I
    .end local v1    # "i":I
    :cond_48
    invoke-direct {p0}, clear()V

    .line 2523
    return-void
.end method
