.class public Landroid/view/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GestureDetector$GestureHandler;,
        Landroid/view/GestureDetector$SimpleOnGestureListener;,
        Landroid/view/GestureDetector$OnContextClickListener;,
        Landroid/view/GestureDetector$OnDoubleTapListener;,
        Landroid/view/GestureDetector$OnGestureListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DOUBLE_TAP_MIN_TIME:I

.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESS:I = 0x2

.field private static final SAFE_DEBUG:Z

.field private static final SHOW_PRESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GestureDetector"

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I

.field private static sCfmsService:Landroid/os/ICustomFrequencyManager;


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDeferConfirmSingleTap:Z

.field private mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDoubleTapTouchSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreNextUpEvent:Z

.field private mInContextClick:Z

.field private mInLongPress:Z

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field private final mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 47
    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, DEBUG:Z

    .line 48
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_17

    const/4 v0, 0x0

    :cond_17
    sput-boolean v0, SAFE_DEBUG:Z

    .line 235
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, LONGPRESS_TIMEOUT:I

    .line 236
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, TAP_TIMEOUT:I

    .line 237
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, DOUBLE_TAP_TIMEOUT:I

    .line 238
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v0

    sput v0, DOUBLE_TAP_MIN_TIME:I

    .line 261
    const/4 v0, 0x0

    sput-object v0, sCfmsService:Landroid/os/ICustomFrequencyManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;

    .prologue
    .line 376
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 377
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_f
    iput-object v0, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 392
    if-eqz p3, :cond_35

    .line 393
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 397
    :goto_1a
    iput-object p2, p0, mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 398
    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_26

    move-object v0, p2

    .line 399
    check-cast v0, Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, v0}, setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 401
    :cond_26
    instance-of v0, p2, Landroid/view/GestureDetector$OnContextClickListener;

    if-eqz v0, :cond_2f

    .line 402
    check-cast p2, Landroid/view/GestureDetector$OnContextClickListener;

    .end local p2    # "listener":Landroid/view/GestureDetector$OnGestureListener;
    invoke-virtual {p0, p2}, setContextClickListener(Landroid/view/GestureDetector$OnContextClickListener;)V

    .line 404
    :cond_2f
    invoke-direct {p0, p1}, init(Landroid/content/Context;)V

    .line 405
    return-void

    .line 284
    .restart local p2    # "listener":Landroid/view/GestureDetector$OnGestureListener;
    :cond_33
    const/4 v0, 0x0

    goto :goto_f

    .line 395
    :cond_35
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    goto :goto_1a
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "unused"    # Z

    .prologue
    .line 422
    invoke-direct {p0, p1, p2, p3}, <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 423
    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 361
    invoke-direct {p0, v0, p1, v0}, <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 362
    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 344
    return-void
.end method

.method static synthetic access$000(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;
    .registers 2
    .param p0, "x0"    # Landroid/view/GestureDetector;

    .prologue
    .line 46
    iget-object v0, p0, mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnGestureListener;
    .registers 2
    .param p0, "x0"    # Landroid/view/GestureDetector;

    .prologue
    .line 46
    iget-object v0, p0, mListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/GestureDetector;)V
    .registers 1
    .param p0, "x0"    # Landroid/view/GestureDetector;

    .prologue
    .line 46
    invoke-direct {p0}, dispatchLongPress()V

    return-void
.end method

.method static synthetic access$300(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .registers 2
    .param p0, "x0"    # Landroid/view/GestureDetector;

    .prologue
    .line 46
    iget-object v0, p0, mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/GestureDetector;)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/GestureDetector;

    .prologue
    .line 46
    iget-boolean v0, p0, mStillDown:Z

    return v0
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 46
    sget-boolean v0, SAFE_DEBUG:Z

    return v0
.end method

.method static synthetic access$602(Landroid/view/GestureDetector;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/GestureDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, mDeferConfirmSingleTap:Z

    return p1
.end method

.method private cancel()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 761
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 762
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 763
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 764
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 765
    const/4 v0, 0x0

    iput-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 766
    iput-boolean v2, p0, mIsDoubleTapping:Z

    .line 767
    iput-boolean v2, p0, mStillDown:Z

    .line 768
    iput-boolean v2, p0, mAlwaysInTapRegion:Z

    .line 769
    iput-boolean v2, p0, mAlwaysInBiggerTapRegion:Z

    .line 770
    iput-boolean v2, p0, mDeferConfirmSingleTap:Z

    .line 771
    iput-boolean v2, p0, mInLongPress:Z

    .line 772
    iput-boolean v2, p0, mInContextClick:Z

    .line 773
    iput-boolean v2, p0, mIgnoreNextUpEvent:Z

    .line 774
    return-void
.end method

.method private cancelTaps()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 777
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 778
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 779
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 780
    iput-boolean v2, p0, mIsDoubleTapping:Z

    .line 781
    iput-boolean v2, p0, mAlwaysInTapRegion:Z

    .line 782
    iput-boolean v2, p0, mAlwaysInBiggerTapRegion:Z

    .line 783
    iput-boolean v2, p0, mDeferConfirmSingleTap:Z

    .line 784
    iput-boolean v2, p0, mInLongPress:Z

    .line 785
    iput-boolean v2, p0, mInContextClick:Z

    .line 786
    iput-boolean v2, p0, mIgnoreNextUpEvent:Z

    .line 787
    return-void
.end method

.method private dispatchLongPress()V
    .registers 3

    .prologue
    .line 806
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 807
    const/4 v0, 0x0

    iput-boolean v0, p0, mDeferConfirmSingleTap:Z

    .line 808
    const/4 v0, 0x1

    iput-boolean v0, p0, mInLongPress:Z

    .line 809
    iget-object v0, p0, mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 810
    sget-boolean v0, SAFE_DEBUG:Z

    if-eqz v0, :cond_1e

    const-string v0, "GestureDetector"

    const-string v1, "GD onLP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_1e
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 426
    iget-object v4, p0, mListener:Landroid/view/GestureDetector$OnGestureListener;

    if-nez v4, :cond_c

    .line 427
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "OnGestureListener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 429
    :cond_c
    const/4 v4, 0x1

    iput-boolean v4, p0, mIsLongpressEnabled:Z

    .line 433
    if-nez p1, :cond_33

    .line 435
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v3

    .line 436
    .local v3, "touchSlop":I
    move v2, v3

    .line 437
    .local v2, "doubleTapTouchSlop":I
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v1

    .line 439
    .local v1, "doubleTapSlop":I
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, mMinimumFlingVelocity:I

    .line 440
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, mMaximumFlingVelocity:I

    .line 449
    :goto_26
    mul-int v4, v3, v3

    iput v4, p0, mTouchSlopSquare:I

    .line 450
    mul-int v4, v2, v2

    iput v4, p0, mDoubleTapTouchSlopSquare:I

    .line 451
    mul-int v4, v1, v1

    iput v4, p0, mDoubleTapSlopSquare:I

    .line 452
    return-void

    .line 442
    .end local v1    # "doubleTapSlop":I
    .end local v2    # "doubleTapTouchSlop":I
    .end local v3    # "touchSlop":I
    :cond_33
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 443
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    .line 444
    .restart local v3    # "touchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v2

    .line 445
    .restart local v2    # "doubleTapTouchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    .line 446
    .restart local v1    # "doubleTapSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, mMinimumFlingVelocity:I

    .line 447
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, mMaximumFlingVelocity:I

    goto :goto_26
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "firstDown"    # Landroid/view/MotionEvent;
    .param p2, "firstUp"    # Landroid/view/MotionEvent;
    .param p3, "secondDown"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 791
    iget-boolean v5, p0, mAlwaysInBiggerTapRegion:Z

    if-nez v5, :cond_6

    .line 802
    :cond_5
    :goto_5
    return v4

    .line 795
    :cond_6
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 796
    .local v0, "deltaTime":J
    sget v5, DOUBLE_TAP_TIMEOUT:I

    int-to-long v6, v5

    cmp-long v5, v0, v6

    if-gtz v5, :cond_5

    sget v5, DOUBLE_TAP_MIN_TIME:I

    int-to-long v6, v5

    cmp-long v5, v0, v6

    if-ltz v5, :cond_5

    .line 800
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    sub-int v2, v5, v6

    .line 801
    .local v2, "deltaX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    sub-int v3, v5, v6

    .line 802
    .local v3, "deltaY":I
    mul-int v5, v2, v2

    mul-int v6, v3, v3

    add-int/2addr v5, v6

    iget v6, p0, mDoubleTapSlopSquare:I

    if-ge v5, v6, :cond_5

    const/4 v4, 0x1

    goto :goto_5
.end method

.method private triggerGDBoost(IFF)V
    .registers 10
    .param p1, "mode"    # I
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 707
    :try_start_0
    sget-object v2, sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_12

    .line 708
    const-string v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 709
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_12

    .line 710
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    sput-object v2, sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 713
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_12
    sget-object v2, sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v2, :cond_3e

    .line 714
    sget-object v2, sCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string v3, "GESTURE_DETECTED"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    .line 719
    :cond_3e
    :goto_3e
    return-void

    .line 716
    :catch_3f
    move-exception v1

    .line 717
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .registers 2

    .prologue
    .line 492
    iget-boolean v0, p0, mIsLongpressEnabled:Z

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 730
    iget-object v3, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v3, :cond_e

    .line 731
    iget-object v3, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v3, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    .line 734
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .line 735
    .local v0, "actionButton":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_4e

    :cond_19
    :goto_19
    move v1, v2

    .line 757
    :goto_1a
    return v1

    .line 737
    :pswitch_1b
    iget-object v3, p0, mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    if-eqz v3, :cond_19

    iget-boolean v3, p0, mInContextClick:Z

    if-nez v3, :cond_19

    iget-boolean v3, p0, mInLongPress:Z

    if-nez v3, :cond_19

    if-eq v0, v5, :cond_2b

    if-ne v0, v4, :cond_19

    .line 740
    :cond_2b
    iget-object v3, p0, mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    invoke-interface {v3, p1}, Landroid/view/GestureDetector$OnContextClickListener;->onContextClick(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 741
    iput-boolean v1, p0, mInContextClick:Z

    .line 742
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 743
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1a

    .line 750
    :pswitch_41
    iget-boolean v3, p0, mInContextClick:Z

    if-eqz v3, :cond_19

    if-eq v0, v5, :cond_49

    if-ne v0, v4, :cond_19

    .line 752
    :cond_49
    iput-boolean v2, p0, mInContextClick:Z

    .line 753
    iput-boolean v1, p0, mIgnoreNextUpEvent:Z

    goto :goto_19

    .line 735
    :pswitch_data_4e
    .packed-switch 0xb
        :pswitch_1b
        :pswitch_41
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 44
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v36, v0

    if-eqz v36, :cond_19

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 508
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 510
    .local v6, "action":I
    move-object/from16 v0, p0

    iget-object v0, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    if-nez v36, :cond_2f

    .line 511
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 513
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 515
    and-int/lit16 v0, v6, 0xff

    move/from16 v36, v0

    const/16 v37, 0x6

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_67

    const/16 v22, 0x1

    .line 517
    .local v22, "pointerUp":Z
    :goto_4a
    if-eqz v22, :cond_6a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v25

    .line 520
    .local v25, "skipIndex":I
    :goto_50
    const/16 v26, 0x0

    .local v26, "sumX":F
    const/16 v27, 0x0

    .line 521
    .local v27, "sumY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 522
    .local v7, "count":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_5a
    move/from16 v0, v18

    if-ge v0, v7, :cond_82

    .line 523
    move/from16 v0, v25

    move/from16 v1, v18

    if-ne v0, v1, :cond_6d

    .line 522
    :goto_64
    add-int/lit8 v18, v18, 0x1

    goto :goto_5a

    .line 515
    .end local v7    # "count":I
    .end local v18    # "i":I
    .end local v22    # "pointerUp":Z
    .end local v25    # "skipIndex":I
    .end local v26    # "sumX":F
    .end local v27    # "sumY":F
    :cond_67
    const/16 v22, 0x0

    goto :goto_4a

    .line 517
    .restart local v22    # "pointerUp":Z
    :cond_6a
    const/16 v25, -0x1

    goto :goto_50

    .line 524
    .restart local v7    # "count":I
    .restart local v18    # "i":I
    .restart local v25    # "skipIndex":I
    .restart local v26    # "sumX":F
    .restart local v27    # "sumY":F
    :cond_6d
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v36

    add-float v26, v26, v36

    .line 525
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v36

    add-float v27, v27, v36

    goto :goto_64

    .line 527
    :cond_82
    if-eqz v22, :cond_b5

    add-int/lit8 v12, v7, -0x1

    .line 528
    .local v12, "div":I
    :goto_86
    int-to-float v0, v12

    move/from16 v36, v0

    div-float v14, v26, v36

    .line 529
    .local v14, "focusX":F
    int-to-float v0, v12

    move/from16 v36, v0

    div-float v15, v27, v36

    .line 531
    .local v15, "focusY":F
    const/16 v17, 0x0

    .line 533
    .local v17, "handled":Z
    and-int/lit16 v0, v6, 0xff

    move/from16 v36, v0

    packed-switch v36, :pswitch_data_550

    .line 694
    :cond_99
    :goto_99
    :pswitch_99
    if-nez v17, :cond_b4

    move-object/from16 v0, p0

    iget-object v0, v0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v36, v0

    if-eqz v36, :cond_b4

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 697
    :cond_b4
    return v17

    .end local v12    # "div":I
    .end local v14    # "focusX":F
    .end local v15    # "focusY":F
    .end local v17    # "handled":Z
    :cond_b5
    move v12, v7

    .line 527
    goto :goto_86

    .line 535
    .restart local v12    # "div":I
    .restart local v14    # "focusX":F
    .restart local v15    # "focusY":F
    .restart local v17    # "handled":Z
    :pswitch_b7
    move-object/from16 v0, p0

    iput v14, v0, mLastFocusX:F

    move-object/from16 v0, p0

    iput v14, v0, mDownFocusX:F

    .line 536
    move-object/from16 v0, p0

    iput v15, v0, mLastFocusY:F

    move-object/from16 v0, p0

    iput v15, v0, mDownFocusY:F

    .line 538
    invoke-direct/range {p0 .. p0}, cancelTaps()V

    goto :goto_99

    .line 542
    :pswitch_cb
    move-object/from16 v0, p0

    iput v14, v0, mLastFocusX:F

    move-object/from16 v0, p0

    iput v14, v0, mDownFocusX:F

    .line 543
    move-object/from16 v0, p0

    iput v15, v0, mLastFocusY:F

    move-object/from16 v0, p0

    iput v15, v0, mDownFocusY:F

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    const/16 v37, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, mMaximumFlingVelocity:I

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    invoke-virtual/range {v36 .. v38}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 548
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v28

    .line 549
    .local v28, "upIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    .line 550
    .local v19, "id1":I
    move-object/from16 v0, p0

    iget-object v0, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v33

    .line 551
    .local v33, "x1":F
    move-object/from16 v0, p0

    iget-object v0, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v35

    .line 552
    .local v35, "y1":F
    const/16 v18, 0x0

    :goto_11b
    move/from16 v0, v18

    if-ge v0, v7, :cond_99

    .line 553
    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_128

    .line 552
    :cond_125
    add-int/lit8 v18, v18, 0x1

    goto :goto_11b

    .line 555
    :cond_128
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v20

    .line 556
    .local v20, "id2":I
    move-object/from16 v0, p0

    iget-object v0, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v36

    mul-float v32, v33, v36

    .line 557
    .local v32, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v36

    mul-float v34, v35, v36

    .line 559
    .local v34, "y":F
    add-float v13, v32, v34

    .line 560
    .local v13, "dot":F
    const/16 v36, 0x0

    cmpg-float v36, v13, v36

    if-gez v36, :cond_125

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_99

    .line 568
    .end local v13    # "dot":F
    .end local v19    # "id1":I
    .end local v20    # "id2":I
    .end local v28    # "upIndex":I
    .end local v32    # "x":F
    .end local v33    # "x1":F
    .end local v34    # "y":F
    .end local v35    # "y1":F
    :pswitch_163
    move-object/from16 v0, p0

    iget-object v0, v0, mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    if-eqz v36, :cond_1f6

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v16

    .line 570
    .local v16, "hadTapMessage":Z
    if-eqz v16, :cond_184

    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 571
    :cond_184
    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    if-eqz v36, :cond_2b3

    move-object/from16 v0, p0

    iget-object v0, v0, mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    if-eqz v36, :cond_2b3

    if-eqz v16, :cond_2b3

    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v36

    if-eqz v36, :cond_2b3

    .line 574
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsDoubleTapping:Z

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    invoke-interface/range {v36 .. v37}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v36

    or-int v17, v17, v36

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v36

    or-int v17, v17, v36

    .line 579
    sget-boolean v36, SAFE_DEBUG:Z

    if-eqz v36, :cond_1e5

    const-string v36, "GestureDetector"

    const-string v37, "GD onDT"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_1e5
    const/16 v36, 0x2

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, triggerGDBoost(IFF)V

    .line 587
    .end local v16    # "hadTapMessage":Z
    :cond_1f6
    :goto_1f6
    move-object/from16 v0, p0

    iput v14, v0, mLastFocusX:F

    move-object/from16 v0, p0

    iput v14, v0, mDownFocusX:F

    .line 588
    move-object/from16 v0, p0

    iput v15, v0, mLastFocusY:F

    move-object/from16 v0, p0

    iput v15, v0, mDownFocusY:F

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    if-eqz v36, :cond_217

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->recycle()V

    .line 592
    :cond_217
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 593
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, mAlwaysInTapRegion:Z

    .line 594
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, mAlwaysInBiggerTapRegion:Z

    .line 595
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, mStillDown:Z

    .line 596
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, mInLongPress:Z

    .line 597
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, mDeferConfirmSingleTap:Z

    .line 599
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsLongpressEnabled:Z

    move/from16 v36, v0

    if-eqz v36, :cond_283

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v38

    sget v40, TAP_TIMEOUT:I

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v38, v38, v40

    sget v40, LONGPRESS_TIMEOUT:I

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v38, v38, v40

    invoke-virtual/range {v36 .. v39}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 604
    :cond_283
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v38

    sget v40, TAP_TIMEOUT:I

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v38, v38, v40

    invoke-virtual/range {v36 .. v39}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v36

    or-int v17, v17, v36

    .line 606
    goto/16 :goto_99

    .line 583
    .restart local v16    # "hadTapMessage":Z
    :cond_2b3
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    sget v38, DOUBLE_TAP_TIMEOUT:I

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    invoke-virtual/range {v36 .. v39}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1f6

    .line 609
    .end local v16    # "hadTapMessage":Z
    :pswitch_2c7
    move-object/from16 v0, p0

    iget-boolean v0, v0, mInLongPress:Z

    move/from16 v36, v0

    if-nez v36, :cond_99

    move-object/from16 v0, p0

    iget-boolean v0, v0, mInContextClick:Z

    move/from16 v36, v0

    if-nez v36, :cond_99

    .line 612
    move-object/from16 v0, p0

    iget v0, v0, mLastFocusX:F

    move/from16 v36, v0

    sub-float v23, v36, v14

    .line 613
    .local v23, "scrollX":F
    move-object/from16 v0, p0

    iget v0, v0, mLastFocusY:F

    move/from16 v36, v0

    sub-float v24, v36, v15

    .line 614
    .local v24, "scrollY":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsDoubleTapping:Z

    move/from16 v36, v0

    if-eqz v36, :cond_301

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v36

    or-int v17, v17, v36

    goto/16 :goto_99

    .line 617
    :cond_301
    move-object/from16 v0, p0

    iget-boolean v0, v0, mAlwaysInTapRegion:Z

    move/from16 v36, v0

    if-eqz v36, :cond_38e

    .line 618
    move-object/from16 v0, p0

    iget v0, v0, mDownFocusX:F

    move/from16 v36, v0

    sub-float v36, v14, v36

    move/from16 v0, v36

    float-to-int v9, v0

    .line 619
    .local v9, "deltaX":I
    move-object/from16 v0, p0

    iget v0, v0, mDownFocusY:F

    move/from16 v36, v0

    sub-float v36, v15, v36

    move/from16 v0, v36

    float-to-int v10, v0

    .line 620
    .local v10, "deltaY":I
    mul-int v36, v9, v9

    mul-int v37, v10, v10

    add-int v11, v36, v37

    .line 621
    .local v11, "distance":I
    move-object/from16 v0, p0

    iget v0, v0, mTouchSlopSquare:I

    move/from16 v36, v0

    move/from16 v0, v36

    if-le v11, v0, :cond_37a

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v17

    .line 623
    move-object/from16 v0, p0

    iput v14, v0, mLastFocusX:F

    .line 624
    move-object/from16 v0, p0

    iput v15, v0, mLastFocusY:F

    .line 625
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, mAlwaysInTapRegion:Z

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 630
    :cond_37a
    move-object/from16 v0, p0

    iget v0, v0, mDoubleTapTouchSlopSquare:I

    move/from16 v36, v0

    move/from16 v0, v36

    if-le v11, v0, :cond_99

    .line 631
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, mAlwaysInBiggerTapRegion:Z

    goto/16 :goto_99

    .line 633
    .end local v9    # "deltaX":I
    .end local v10    # "deltaY":I
    .end local v11    # "distance":I
    :cond_38e
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v36

    const/high16 v37, 0x3f800000    # 1.0f

    cmpl-float v36, v36, v37

    if-gez v36, :cond_3a2

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v36

    const/high16 v37, 0x3f800000    # 1.0f

    cmpl-float v36, v36, v37

    if-ltz v36, :cond_99

    .line 634
    :cond_3a2
    move-object/from16 v0, p0

    iget-object v0, v0, mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v17

    .line 635
    move-object/from16 v0, p0

    iput v14, v0, mLastFocusX:F

    .line 636
    move-object/from16 v0, p0

    iput v15, v0, mLastFocusY:F

    goto/16 :goto_99

    .line 641
    .end local v23    # "scrollX":F
    .end local v24    # "scrollY":F
    :pswitch_3c6
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, mStillDown:Z

    .line 642
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 643
    .local v8, "currentUpEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsDoubleTapping:Z

    move/from16 v36, v0

    if-eqz v36, :cond_459

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v36

    or-int v17, v17, v36

    .line 646
    const/16 v36, 0x3

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, triggerGDBoost(IFF)V

    .line 671
    :cond_3fb
    :goto_3fb
    move-object/from16 v0, p0

    iget-object v0, v0, mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    if-eqz v36, :cond_40c

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->recycle()V

    .line 675
    :cond_40c
    move-object/from16 v0, p0

    iput-object v8, v0, mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    if-eqz v36, :cond_429

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/VelocityTracker;->recycle()V

    .line 680
    const/16 v36, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 682
    :cond_429
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsDoubleTapping:Z

    .line 683
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, mDeferConfirmSingleTap:Z

    .line 684
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIgnoreNextUpEvent:Z

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_99

    .line 647
    :cond_459
    move-object/from16 v0, p0

    iget-boolean v0, v0, mInLongPress:Z

    move/from16 v36, v0

    if-eqz v36, :cond_475

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 649
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, mInLongPress:Z

    goto :goto_3fb

    .line 650
    :cond_475
    move-object/from16 v0, p0

    iget-boolean v0, v0, mAlwaysInTapRegion:Z

    move/from16 v36, v0

    if-eqz v36, :cond_4bd

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIgnoreNextUpEvent:Z

    move/from16 v36, v0

    if-nez v36, :cond_4bd

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 652
    move-object/from16 v0, p0

    iget-boolean v0, v0, mDeferConfirmSingleTap:Z

    move/from16 v36, v0

    if-eqz v36, :cond_3fb

    move-object/from16 v0, p0

    iget-object v0, v0, mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    if-eqz v36, :cond_3fb

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    .line 654
    sget-boolean v36, SAFE_DEBUG:Z

    if-eqz v36, :cond_3fb

    const-string v36, "GestureDetector"

    const-string v37, "GD onSTC#2"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3fb

    .line 656
    :cond_4bd
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIgnoreNextUpEvent:Z

    move/from16 v36, v0

    if-nez v36, :cond_3fb

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    .line 660
    .local v29, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v36, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    .line 661
    .local v21, "pointerId":I
    const/16 v36, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, mMaximumFlingVelocity:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v29

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 662
    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v31

    .line 663
    .local v31, "velocityY":F
    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v30

    .line 665
    .local v30, "velocityX":F
    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v36

    move-object/from16 v0, p0

    iget v0, v0, mMinimumFlingVelocity:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    cmpl-float v36, v36, v37

    if-gtz v36, :cond_521

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v36

    move-object/from16 v0, p0

    iget v0, v0, mMinimumFlingVelocity:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    cmpl-float v36, v36, v37

    if-lez v36, :cond_3fb

    .line 667
    :cond_521
    move-object/from16 v0, p0

    iget-object v0, v0, mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v17

    .line 668
    const/16 v36, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, triggerGDBoost(IFF)V

    goto/16 :goto_3fb

    .line 690
    .end local v8    # "currentUpEvent":Landroid/view/MotionEvent;
    .end local v21    # "pointerId":I
    .end local v29    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v30    # "velocityX":F
    .end local v31    # "velocityY":F
    :pswitch_54a
    invoke-direct/range {p0 .. p0}, cancel()V

    goto/16 :goto_99

    .line 533
    nop

    :pswitch_data_550
    .packed-switch 0x0
        :pswitch_163
        :pswitch_3c6
        :pswitch_2c7
        :pswitch_54a
        :pswitch_99
        :pswitch_b7
        :pswitch_cb
    .end packed-switch
.end method

.method public setContextClickListener(Landroid/view/GestureDetector$OnContextClickListener;)V
    .registers 2
    .param p1, "onContextClickListener"    # Landroid/view/GestureDetector$OnContextClickListener;

    .prologue
    .line 472
    iput-object p1, p0, mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    .line 473
    return-void
.end method

.method public setIsLongpressEnabled(Z)V
    .registers 2
    .param p1, "isLongpressEnabled"    # Z

    .prologue
    .line 485
    iput-boolean p1, p0, mIsLongpressEnabled:Z

    .line 486
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 2
    .param p1, "onDoubleTapListener"    # Landroid/view/GestureDetector$OnDoubleTapListener;

    .prologue
    .line 462
    iput-object p1, p0, mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 463
    return-void
.end method
