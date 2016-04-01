.class Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;
.super Ljava/lang/Object;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapDetector"
.end annotation


# instance fields
.field private final MSG_PERFORM_SINGLE_TAP:I

.field private final STATE_DETECTION:I

.field private final STATE_READY:I

.field private TAP_TIMEOUT_WITH_CORRECTION:I

.field private currentKeyCode:I

.field private firstKeyCode:I

.field private isFirstTapDone:Z

.field private mContext:Landroid/content/Context;

.field private mDetectionState:I

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/AccessibilityInputFilter;)V
    .registers 5

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 684
    iput-object p1, p0, this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    iput v1, p0, STATE_READY:I

    .line 688
    const/4 v0, 0x2

    iput v0, p0, STATE_DETECTION:I

    .line 693
    iput v1, p0, mDetectionState:I

    .line 697
    const/16 v0, 0xe6

    iput v0, p0, TAP_TIMEOUT_WITH_CORRECTION:I

    .line 700
    const/4 v0, 0x0

    iput-boolean v0, p0, isFirstTapDone:Z

    .line 703
    iput v2, p0, firstKeyCode:I

    .line 706
    iput v2, p0, currentKeyCode:I

    .line 709
    iput v1, p0, MSG_PERFORM_SINGLE_TAP:I

    .line 712
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$1;-><init>(Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityInputFilter;Lcom/android/server/accessibility/AccessibilityInputFilter$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/accessibility/AccessibilityInputFilter;
    .param p2, "x1"    # Lcom/android/server/accessibility/AccessibilityInputFilter$1;

    .prologue
    .line 684
    invoke-direct {p0, p1}, <init>(Lcom/android/server/accessibility/AccessibilityInputFilter;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    .prologue
    .line 684
    invoke-direct {p0}, performSingleTap()V

    return-void
.end method

.method private performSingleTap()V
    .registers 3

    .prologue
    .line 780
    iget v0, p0, currentKeyCode:I

    iput v0, p0, firstKeyCode:I

    .line 781
    iget v0, p0, firstKeyCode:I

    sparse-switch v0, :sswitch_data_34

    .line 792
    :goto_9
    invoke-virtual {p0}, clear()V

    .line 793
    return-void

    .line 783
    :sswitch_d
    iget-object v0, p0, mContext:Landroid/content/Context;

    const v1, 0x10407ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, talkbackKeyFeedback(Ljava/lang/String;)V

    goto :goto_9

    .line 786
    :sswitch_1a
    iget-object v0, p0, mContext:Landroid/content/Context;

    const v1, 0x10407f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, talkbackKeyFeedback(Ljava/lang/String;)V

    goto :goto_9

    .line 789
    :sswitch_27
    iget-object v0, p0, mContext:Landroid/content/Context;

    const v1, 0x10407f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, talkbackKeyFeedback(Ljava/lang/String;)V

    goto :goto_9

    .line 781
    :sswitch_data_34
    .sparse-switch
        0x4 -> :sswitch_d
        0x52 -> :sswitch_1a
        0xbb -> :sswitch_27
    .end sparse-switch
.end method

.method private talkbackKeyFeedback(Ljava/lang/String;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 803
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 804
    .local v0, "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    const/4 v2, 0x4

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 805
    .local v1, "mTalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 807
    if-eqz v0, :cond_1b

    .line 808
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 810
    :cond_1b
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .line 772
    const/4 v0, 0x1

    iput v0, p0, mDetectionState:I

    .line 773
    const/4 v0, 0x0

    iput-boolean v0, p0, isFirstTapDone:Z

    .line 774
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 775
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 813
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 814
    invoke-virtual {p0}, clear()V

    .line 815
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 726
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 727
    .local v0, "action":I
    packed-switch v0, :pswitch_data_56

    .line 769
    :cond_9
    :goto_9
    return-void

    .line 732
    :pswitch_a
    iget-boolean v1, p0, isFirstTapDone:Z

    if-nez v1, :cond_9

    iget v1, p0, mDetectionState:I

    if-ne v1, v4, :cond_9

    .line 733
    const/4 v1, 0x2

    iput v1, p0, mDetectionState:I

    goto :goto_9

    .line 739
    :pswitch_16
    iget v1, p0, mDetectionState:I

    if-eq v1, v4, :cond_9

    .line 745
    iget-boolean v1, p0, isFirstTapDone:Z

    if-nez v1, :cond_34

    .line 746
    iput-boolean v4, p0, isFirstTapDone:Z

    .line 747
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    iput v1, p0, currentKeyCode:I

    .line 748
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 749
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    iget v2, p0, TAP_TIMEOUT_WITH_CORRECTION:I

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_9

    .line 756
    :cond_34
    iget v1, p0, firstKeyCode:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v1, v2, :cond_40

    .line 757
    invoke-virtual {p0}, clear()V

    goto :goto_9

    .line 759
    :cond_40
    iput-boolean v4, p0, isFirstTapDone:Z

    .line 760
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    iput v1, p0, currentKeyCode:I

    .line 761
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 762
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    iget v2, p0, TAP_TIMEOUT_WITH_CORRECTION:I

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_9

    .line 727
    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_a
        :pswitch_16
    .end packed-switch
.end method

.method public readyToPerform(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 796
    iget v0, p0, firstKeyCode:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_e

    iget-boolean v0, p0, isFirstTapDone:Z

    if-eqz v0, :cond_e

    .line 797
    const/4 v0, 0x1

    .line 799
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public stop()V
    .registers 1

    .prologue
    .line 818
    invoke-virtual {p0}, clear()V

    .line 819
    return-void
.end method
