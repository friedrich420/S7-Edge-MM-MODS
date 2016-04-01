.class Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;
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
    name = "SendHoverExitDelayed"
.end annotation


# instance fields
.field private final LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

.field private mPointerIdBits:I

.field private mPolicyFlags:I

.field private mPrototype:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V
    .registers 3

    .prologue
    .line 2529
    iput-object p1, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2530
    const-string v0, "SendHoverExitDelayed"

    iput-object v0, p0, LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

    return-void
.end method

.method private clear()V
    .registers 2

    .prologue
    .line 2556
    iget-object v0, p0, mPrototype:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2557
    const/4 v0, 0x0

    iput-object v0, p0, mPrototype:Landroid/view/MotionEvent;

    .line 2558
    const/4 v0, -0x1

    iput v0, p0, mPointerIdBits:I

    .line 2559
    const/4 v0, 0x0

    iput v0, p0, mPolicyFlags:I

    .line 2560
    return-void
.end method

.method private isPending()Z
    .registers 2

    .prologue
    .line 2552
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
    .registers 2

    .prologue
    .line 2545
    invoke-direct {p0}, isPending()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2546
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2800(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2547
    invoke-direct {p0}, clear()V

    .line 2549
    :cond_12
    return-void
.end method

.method public forceSendAndRemove()V
    .registers 2

    .prologue
    .line 2563
    invoke-direct {p0}, isPending()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2564
    invoke-virtual {p0}, run()V

    .line 2565
    invoke-virtual {p0}, cancel()V

    .line 2567
    :cond_c
    return-void
.end method

.method public post(Landroid/view/MotionEvent;II)V
    .registers 8
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "pointerIdBits"    # I
    .param p3, "policyFlags"    # I

    .prologue
    .line 2537
    invoke-virtual {p0}, cancel()V

    .line 2538
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, mPrototype:Landroid/view/MotionEvent;

    .line 2539
    iput p2, p0, mPointerIdBits:I

    .line 2540
    iput p3, p0, mPolicyFlags:I

    .line 2541
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

    .line 2542
    return-void
.end method

.method public run()V
    .registers 6

    .prologue
    .line 2574
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    iget-object v1, p0, mPrototype:Landroid/view/MotionEvent;

    const/16 v2, 0xa

    iget v3, p0, mPointerIdBits:I

    iget v4, p0, mPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$3800(Lcom/android/server/accessibility/SamsungTouchExplorer;Landroid/view/MotionEvent;III)V

    .line 2576
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1400(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2577
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1400(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 2578
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1400(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->post()V

    .line 2580
    :cond_2b
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1500(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2581
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1500(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 2582
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1500(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->post()V

    .line 2584
    :cond_49
    invoke-direct {p0}, clear()V

    .line 2585
    return-void
.end method
