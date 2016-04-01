.class final Landroid/widget/TextView$Marquee;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Marquee"
.end annotation


# static fields
.field private static final MARQUEE_DELAY:I = 0x4b0

.field private static final MARQUEE_DELTA_MAX:F = 0.07f

.field private static final MARQUEE_DP_PER_SECOND:I = 0x1e

.field private static final MARQUEE_RUNNING:B = 0x2t

.field private static final MARQUEE_STARTING:B = 0x1t

.field private static final MARQUEE_STOPPED:B


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private mFadeStop:F

.field private mGhostOffset:F

.field private mGhostStart:F

.field private mLastAnimationMs:J

.field private mMaxFadeScroll:F

.field private mMaxScroll:F

.field private final mPixelsPerSecond:F

.field private mRepeatLimit:I

.field private mRestartCallback:Landroid/view/Choreographer$FrameCallback;

.field private mScroll:F

.field private mStartCallback:Landroid/view/Choreographer$FrameCallback;

.field private mStatus:B

.field private mTickCallback:Landroid/view/Choreographer$FrameCallback;

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 4
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 11780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11768
    const/4 v1, 0x0

    iput-byte v1, p0, mStatus:B

    .line 11787
    new-instance v1, Landroid/widget/TextView$Marquee$1;

    invoke-direct {v1, p0}, Landroid/widget/TextView$Marquee$1;-><init>(Landroid/widget/TextView$Marquee;)V

    iput-object v1, p0, mTickCallback:Landroid/view/Choreographer$FrameCallback;

    .line 11794
    new-instance v1, Landroid/widget/TextView$Marquee$2;

    invoke-direct {v1, p0}, Landroid/widget/TextView$Marquee$2;-><init>(Landroid/widget/TextView$Marquee;)V

    iput-object v1, p0, mStartCallback:Landroid/view/Choreographer$FrameCallback;

    .line 11803
    new-instance v1, Landroid/widget/TextView$Marquee$3;

    invoke-direct {v1, p0}, Landroid/widget/TextView$Marquee$3;-><init>(Landroid/widget/TextView$Marquee;)V

    iput-object v1, p0, mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    .line 11781
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 11782
    .local v0, "density":F
    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v1, v0

    iput v1, p0, mPixelsPerSecond:F

    .line 11783
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, mView:Ljava/lang/ref/WeakReference;

    .line 11784
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iput-object v1, p0, mChoreographer:Landroid/view/Choreographer;

    .line 11785
    return-void
.end method

.method static synthetic access$1000(Landroid/widget/TextView$Marquee;)Landroid/view/Choreographer;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView$Marquee;

    .prologue
    .line 11755
    iget-object v0, p0, mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/TextView$Marquee;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView$Marquee;

    .prologue
    .line 11755
    iget v0, p0, mRepeatLimit:I

    return v0
.end method

.method static synthetic access$1110(Landroid/widget/TextView$Marquee;)I
    .registers 3
    .param p0, "x0"    # Landroid/widget/TextView$Marquee;

    .prologue
    .line 11755
    iget v0, p0, mRepeatLimit:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, mRepeatLimit:I

    return v0
.end method

.method static synthetic access$800(Landroid/widget/TextView$Marquee;)B
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView$Marquee;

    .prologue
    .line 11755
    iget-byte v0, p0, mStatus:B

    return v0
.end method

.method static synthetic access$802(Landroid/widget/TextView$Marquee;B)B
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView$Marquee;
    .param p1, "x1"    # B

    .prologue
    .line 11755
    iput-byte p1, p0, mStatus:B

    return p1
.end method

.method static synthetic access$902(Landroid/widget/TextView$Marquee;J)J
    .registers 4
    .param p0, "x0"    # Landroid/widget/TextView$Marquee;
    .param p1, "x1"    # J

    .prologue
    .line 11755
    iput-wide p1, p0, mLastAnimationMs:J

    return-wide p1
.end method

.method private resetScroll()V
    .registers 3

    .prologue
    .line 11848
    const/4 v1, 0x0

    iput v1, p0, mScroll:F

    .line 11849
    iget-object v1, p0, mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 11850
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 11851
    :cond_10
    return-void
.end method


# virtual methods
.method getGhostOffset()F
    .registers 2

    .prologue
    .line 11879
    iget v0, p0, mGhostOffset:F

    return v0
.end method

.method getMaxFadeScroll()F
    .registers 2

    .prologue
    .line 11887
    iget v0, p0, mMaxFadeScroll:F

    return v0
.end method

.method getScroll()F
    .registers 2

    .prologue
    .line 11883
    iget v0, p0, mScroll:F

    return v0
.end method

.method isRunning()Z
    .registers 3

    .prologue
    .line 11899
    iget-byte v0, p0, mStatus:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isStopped()Z
    .registers 2

    .prologue
    .line 11903
    iget-byte v0, p0, mStatus:B

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method shouldDrawGhost()Z
    .registers 3

    .prologue
    .line 11895
    iget-byte v0, p0, mStatus:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    iget v0, p0, mScroll:F

    iget v1, p0, mGhostStart:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method shouldDrawLeftFade()Z
    .registers 3

    .prologue
    .line 11891
    iget v0, p0, mScroll:F

    iget v1, p0, mFadeStop:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method start(I)V
    .registers 8
    .param p1, "repeatLimit"    # I

    .prologue
    .line 11854
    if-nez p1, :cond_6

    .line 11855
    invoke-virtual {p0}, stop()V

    .line 11876
    :cond_5
    :goto_5
    return-void

    .line 11858
    :cond_6
    iput p1, p0, mRepeatLimit:I

    .line 11859
    iget-object v4, p0, mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 11860
    .local v2, "textView":Landroid/widget/TextView;
    if-eqz v2, :cond_5

    # getter for: Landroid/widget/TextView;->mLayout:Landroid/text/Layout;
    invoke-static {v2}, Landroid/widget/TextView;->access$1200(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 11861
    const/4 v4, 0x1

    iput-byte v4, p0, mStatus:B

    .line 11862
    const/4 v4, 0x0

    iput v4, p0, mScroll:F

    .line 11863
    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    .line 11865
    .local v3, "textWidth":I
    # getter for: Landroid/widget/TextView;->mLayout:Landroid/text/Layout;
    invoke-static {v2}, Landroid/widget/TextView;->access$1200(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    .line 11866
    .local v1, "lineWidth":F
    int-to-float v4, v3

    const/high16 v5, 0x40400000    # 3.0f

    div-float v0, v4, v5

    .line 11867
    .local v0, "gap":F
    int-to-float v4, v3

    sub-float v4, v1, v4

    add-float/2addr v4, v0

    iput v4, p0, mGhostStart:F

    .line 11868
    iget v4, p0, mGhostStart:F

    int-to-float v5, v3

    add-float/2addr v4, v5

    iput v4, p0, mMaxScroll:F

    .line 11869
    add-float v4, v1, v0

    iput v4, p0, mGhostOffset:F

    .line 11870
    int-to-float v4, v3

    const/high16 v5, 0x40c00000    # 6.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v1

    iput v4, p0, mFadeStop:F

    .line 11871
    iget v4, p0, mGhostStart:F

    add-float/2addr v4, v1

    add-float/2addr v4, v1

    iput v4, p0, mMaxFadeScroll:F

    .line 11873
    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 11874
    iget-object v4, p0, mChoreographer:Landroid/view/Choreographer;

    iget-object v5, p0, mStartCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v4, v5}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_5
.end method

.method stop()V
    .registers 3

    .prologue
    .line 11840
    const/4 v0, 0x0

    iput-byte v0, p0, mStatus:B

    .line 11841
    iget-object v0, p0, mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, mStartCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 11842
    iget-object v0, p0, mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 11843
    iget-object v0, p0, mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, mTickCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 11844
    invoke-direct {p0}, resetScroll()V

    .line 11845
    return-void
.end method

.method tick()V
    .registers 11

    .prologue
    .line 11816
    iget-byte v6, p0, mStatus:B

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6

    .line 11837
    :cond_5
    :goto_5
    return-void

    .line 11820
    :cond_6
    iget-object v6, p0, mChoreographer:Landroid/view/Choreographer;

    iget-object v7, p0, mTickCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v6, v7}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 11822
    iget-object v6, p0, mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 11823
    .local v5, "textView":Landroid/widget/TextView;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-nez v6, :cond_23

    invoke-virtual {v5}, Landroid/widget/TextView;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 11824
    :cond_23
    iget-object v6, p0, mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v6}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v0

    .line 11825
    .local v0, "currentMs":J
    iget-wide v6, p0, mLastAnimationMs:J

    sub-long v2, v0, v6

    .line 11826
    .local v2, "deltaMs":J
    iput-wide v0, p0, mLastAnimationMs:J

    .line 11827
    long-to-float v6, v2

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    iget v7, p0, mPixelsPerSecond:F

    mul-float v4, v6, v7

    .line 11828
    .local v4, "deltaPx":F
    iget v6, p0, mScroll:F

    add-float/2addr v6, v4

    iput v6, p0, mScroll:F

    .line 11829
    iget v6, p0, mScroll:F

    iget v7, p0, mMaxScroll:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_55

    .line 11830
    iget v6, p0, mMaxScroll:F

    iput v6, p0, mScroll:F

    .line 11831
    iget-object v6, p0, mChoreographer:Landroid/view/Choreographer;

    iget-object v7, p0, mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    const-wide/16 v8, 0x4b0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 11835
    :goto_51
    invoke-virtual {v5}, Landroid/widget/TextView;->invalidate()V

    goto :goto_5

    .line 11833
    :cond_55
    iget-object v6, p0, mChoreographer:Landroid/view/Choreographer;

    iget-object v7, p0, mTickCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v6, v7}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_51
.end method
