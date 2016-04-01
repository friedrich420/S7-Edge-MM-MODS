.class Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;
.super Ljava/lang/Object;
.source "SamsungTouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InjectedPointerTracker"
.end annotation


# static fields
.field private static final LOG_TAG_INJECTED_POINTER_TRACKER:Ljava/lang/String; = "InjectedPointerTracker"


# instance fields
.field private mInjectedPointersDown:I

.field private mLastInjectedDownEventTime:J

.field private mLastInjectedHoverEvent:Landroid/view/MotionEvent;

.field private mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V
    .registers 2

    .prologue
    .line 2627
    iput-object p1, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    .prologue
    .line 2627
    iget-object v0, p0, mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 2627
    iput-object p1, p0, mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 2688
    const/4 v0, 0x0

    iput v0, p0, mInjectedPointersDown:I

    .line 2689
    return-void
.end method

.method public getInjectedPointerDownCount()I
    .registers 2

    .prologue
    .line 2702
    iget v0, p0, mInjectedPointersDown:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getInjectedPointersDown()I
    .registers 2

    .prologue
    .line 2709
    iget v0, p0, mInjectedPointersDown:I

    return v0
.end method

.method public getLastInjectedDownEventTime()J
    .registers 3

    .prologue
    .line 2695
    iget-wide v0, p0, mLastInjectedDownEventTime:J

    return-wide v0
.end method

.method public getLastInjectedHoverEvent()Landroid/view/MotionEvent;
    .registers 2

    .prologue
    .line 2727
    iget-object v0, p0, mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;
    .registers 2

    .prologue
    .line 2734
    iget-object v0, p0, mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public isInjectedPointerDown(I)Z
    .registers 5
    .param p1, "pointerId"    # I

    .prologue
    const/4 v1, 0x1

    .line 2719
    shl-int v0, v1, p1

    .line 2720
    .local v0, "pointerFlag":I
    iget v2, p0, mInjectedPointersDown:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_9

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 2648
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2649
    .local v0, "action":I
    packed-switch v0, :pswitch_data_58

    .line 2682
    :cond_8
    :goto_8
    :pswitch_8
    return-void

    .line 2652
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 2653
    .local v2, "pointerId":I
    shl-int v1, v4, v2

    .line 2654
    .local v1, "pointerFlag":I
    iget v3, p0, mInjectedPointersDown:I

    or-int/2addr v3, v1

    iput v3, p0, mInjectedPointersDown:I

    .line 2655
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, mLastInjectedDownEventTime:J

    goto :goto_8

    .line 2659
    .end local v1    # "pointerFlag":I
    .end local v2    # "pointerId":I
    :pswitch_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 2660
    .restart local v2    # "pointerId":I
    shl-int v1, v4, v2

    .line 2661
    .restart local v1    # "pointerFlag":I
    iget v3, p0, mInjectedPointersDown:I

    xor-int/lit8 v4, v1, -0x1

    and-int/2addr v3, v4

    iput v3, p0, mInjectedPointersDown:I

    .line 2662
    iget v3, p0, mInjectedPointersDown:I

    if-nez v3, :cond_8

    .line 2663
    const-wide/16 v4, 0x0

    iput-wide v4, p0, mLastInjectedDownEventTime:J

    goto :goto_8

    .line 2669
    .end local v1    # "pointerFlag":I
    .end local v2    # "pointerId":I
    :pswitch_39
    iget-object v3, p0, mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_42

    .line 2670
    iget-object v3, p0, mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 2672
    :cond_42
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    .line 2673
    iget-object v3, p0, mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    if-eqz v3, :cond_51

    .line 2674
    iget-object v3, p0, mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 2676
    :cond_51
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    goto :goto_8

    .line 2649
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_9
        :pswitch_1f
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_1f
        :pswitch_39
        :pswitch_8
        :pswitch_39
        :pswitch_39
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2740
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "========================="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2741
    const-string v2, "\nDown pointers #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2742
    iget v2, p0, mInjectedPointersDown:I

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2743
    const-string v2, " [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2744
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    const/16 v2, 0x20

    if-ge v1, v2, :cond_32

    .line 2745
    iget v2, p0, mInjectedPointersDown:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_2f

    .line 2746
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2747
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2744
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 2750
    :cond_32
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2751
    const-string v2, "\n========================="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2752
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
