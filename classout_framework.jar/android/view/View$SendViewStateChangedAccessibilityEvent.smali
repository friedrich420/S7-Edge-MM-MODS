.class Landroid/view/View$SendViewStateChangedAccessibilityEvent;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendViewStateChangedAccessibilityEvent"
.end annotation


# instance fields
.field private mChangeTypes:I

.field private mLastEventTimeMillis:J

.field private mPosted:Z

.field private mPostedWithDelay:Z

.field final synthetic this$0:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 23726
    iput-object p1, p0, this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23727
    const/4 v0, 0x0

    iput v0, p0, mChangeTypes:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Landroid/view/View$1;

    .prologue
    .line 23726
    invoke-direct {p0, p1}, <init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 23734
    iput-boolean v4, p0, mPosted:Z

    .line 23735
    iput-boolean v4, p0, mPostedWithDelay:Z

    .line 23736
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, mLastEventTimeMillis:J

    .line 23737
    iget-object v1, p0, this$0:Landroid/view/View;

    iget-object v1, v1, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 23738
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 23739
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 23740
    iget v1, p0, mChangeTypes:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 23741
    iget-object v1, p0, this$0:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 23743
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_2c
    iput v4, p0, mChangeTypes:I

    .line 23744
    return-void
.end method

.method public runOrPost(I)V
    .registers 11
    .param p1, "changeType"    # I

    .prologue
    const/4 v8, 0x1

    .line 23747
    iget v4, p0, mChangeTypes:I

    or-int/2addr v4, p1

    iput v4, p0, mChangeTypes:I

    .line 23751
    iget-object v4, p0, this$0:Landroid/view/View;

    # invokes: Landroid/view/View;->inLiveRegion()Z
    invoke-static {v4}, Landroid/view/View;->access$3300(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 23753
    iget-boolean v4, p0, mPostedWithDelay:Z

    if-eqz v4, :cond_1a

    .line 23754
    iget-object v4, p0, this$0:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 23755
    const/4 v4, 0x0

    iput-boolean v4, p0, mPostedWithDelay:Z

    .line 23758
    :cond_1a
    iget-boolean v4, p0, mPosted:Z

    if-nez v4, :cond_25

    .line 23759
    iget-object v4, p0, this$0:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 23760
    iput-boolean v8, p0, mPosted:Z

    .line 23779
    :cond_25
    :goto_25
    return-void

    .line 23765
    :cond_26
    iget-boolean v4, p0, mPosted:Z

    if-nez v4, :cond_25

    .line 23769
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, mLastEventTimeMillis:J

    sub-long v2, v4, v6

    .line 23770
    .local v2, "timeSinceLastMillis":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v0

    .line 23772
    .local v0, "minEventIntevalMillis":J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_43

    .line 23773
    iget-object v4, p0, this$0:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 23774
    invoke-virtual {p0}, run()V

    goto :goto_25

    .line 23776
    :cond_43
    iget-object v4, p0, this$0:Landroid/view/View;

    sub-long v6, v0, v2

    invoke-virtual {v4, p0, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23777
    iput-boolean v8, p0, mPostedWithDelay:Z

    goto :goto_25
.end method
