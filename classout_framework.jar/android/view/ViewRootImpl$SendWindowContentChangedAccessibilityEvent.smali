.class Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendWindowContentChangedAccessibilityEvent"
.end annotation


# instance fields
.field private mChangeTypes:I

.field public mLastEventTimeMillis:J

.field public mSource:Landroid/view/View;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method private constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 3

    .prologue
    .line 8802
    iput-object p1, p0, this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8803
    const/4 v0, 0x0

    iput v0, p0, mChangeTypes:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/view/ViewRootImpl;
    .param p2, "x1"    # Landroid/view/ViewRootImpl$1;

    .prologue
    .line 8802
    invoke-direct {p0, p1}, <init>(Landroid/view/ViewRootImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 8811
    iget-object v1, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 8812
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, mLastEventTimeMillis:J

    .line 8813
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 8814
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 8815
    iget v1, p0, mChangeTypes:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 8816
    iget-object v1, p0, mSource:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 8821
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :goto_27
    iget-object v1, p0, mSource:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 8822
    const/4 v1, 0x0

    iput-object v1, p0, mSource:Landroid/view/View;

    .line 8823
    const/4 v1, 0x0

    iput v1, p0, mChangeTypes:I

    .line 8824
    return-void

    .line 8818
    :cond_33
    const-wide/16 v2, 0x0

    iput-wide v2, p0, mLastEventTimeMillis:J

    goto :goto_27
.end method

.method public runOrPost(Landroid/view/View;I)V
    .registers 13
    .param p1, "source"    # Landroid/view/View;
    .param p2, "changeType"    # I

    .prologue
    .line 8827
    iget-object v3, p0, mSource:Landroid/view/View;

    if-eqz v3, :cond_18

    .line 8830
    iget-object v3, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v6, p0, mSource:Landroid/view/View;

    # invokes: Landroid/view/ViewRootImpl;->getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    invoke-static {v3, v6, p1}, Landroid/view/ViewRootImpl;->access$3700(Landroid/view/ViewRootImpl;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 8831
    .local v2, "predecessor":Landroid/view/View;
    if-eqz v2, :cond_16

    .end local v2    # "predecessor":Landroid/view/View;
    :goto_e
    iput-object v2, p0, mSource:Landroid/view/View;

    .line 8832
    iget v3, p0, mChangeTypes:I

    or-int/2addr v3, p2

    iput v3, p0, mChangeTypes:I

    .line 8846
    :goto_15
    return-void

    .restart local v2    # "predecessor":Landroid/view/View;
    :cond_16
    move-object v2, p1

    .line 8831
    goto :goto_e

    .line 8835
    .end local v2    # "predecessor":Landroid/view/View;
    :cond_18
    iput-object p1, p0, mSource:Landroid/view/View;

    .line 8836
    iput p2, p0, mChangeTypes:I

    .line 8837
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, mLastEventTimeMillis:J

    sub-long v4, v6, v8

    .line 8838
    .local v4, "timeSinceLastMillis":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v0

    .line 8840
    .local v0, "minEventIntevalMillis":J
    cmp-long v3, v4, v0

    if-ltz v3, :cond_35

    .line 8841
    iget-object v3, p0, mSource:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8842
    invoke-virtual {p0}, run()V

    goto :goto_15

    .line 8844
    :cond_35
    iget-object v3, p0, mSource:Landroid/view/View;

    sub-long v6, v0, v4

    invoke-virtual {v3, p0, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_15
.end method
