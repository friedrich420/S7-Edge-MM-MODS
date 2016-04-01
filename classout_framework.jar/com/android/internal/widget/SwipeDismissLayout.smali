.class public Lcom/android/internal/widget/SwipeDismissLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeDismissLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;,
        Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;
    }
.end annotation


# static fields
.field private static final DISMISS_MIN_DRAG_WIDTH_RATIO:F = 0.33f

.field private static final TAG:Ljava/lang/String; = "SwipeDismissLayout"


# instance fields
.field private mActiveTouchId:I

.field private mDiscardIntercept:Z

.field private mDismissed:Z

.field private mDismissedListener:Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

.field private mDownX:F

.field private mDownY:F

.field private mLastX:F

.field private mMinFlingVelocity:I

.field private mOnEnterAnimationCompleteListener:Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

.field private mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

.field private mScreenOffFilter:Landroid/content/IntentFilter;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSlop:I

.field private mSwiping:Z

.field private mTranslationX:F

.field private mUseDynamicTranslucency:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, mUseDynamicTranslucency:Z

    .line 78
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$1;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    iput-object v0, p0, mOnEnterAnimationCompleteListener:Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    .line 91
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$2;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    iput-object v0, p0, mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mScreenOffFilter:Landroid/content/IntentFilter;

    .line 108
    invoke-direct {p0, p1}, init(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, mUseDynamicTranslucency:Z

    .line 78
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$1;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    iput-object v0, p0, mOnEnterAnimationCompleteListener:Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    .line 91
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$2;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    iput-object v0, p0, mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mScreenOffFilter:Landroid/content/IntentFilter;

    .line 113
    invoke-direct {p0, p1}, init(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, mUseDynamicTranslucency:Z

    .line 78
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$1;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    iput-object v0, p0, mOnEnterAnimationCompleteListener:Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    .line 91
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$2;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    iput-object v0, p0, mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mScreenOffFilter:Landroid/content/IntentFilter;

    .line 118
    invoke-direct {p0, p1}, init(Landroid/content/Context;)V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/SwipeDismissLayout;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/SwipeDismissLayout;

    .prologue
    .line 38
    iget-boolean v0, p0, mUseDynamicTranslucency:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SwipeDismissLayout;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/SwipeDismissLayout;

    .prologue
    .line 38
    iget-boolean v0, p0, mDismissed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/widget/SwipeDismissLayout;

    .prologue
    .line 38
    invoke-direct {p0}, dismiss()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/widget/SwipeDismissLayout;

    .prologue
    .line 38
    invoke-direct {p0}, resetMembers()V

    return-void
.end method

.method private dismiss()V
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, mDismissedListener:Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

    if-eqz v0, :cond_9

    .line 266
    iget-object v0, p0, mDismissedListener:Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

    invoke-interface {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;->onDismissed(Lcom/android/internal/widget/SwipeDismissLayout;)V

    .line 268
    :cond_9
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 123
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, mSlop:I

    .line 124
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, mMinFlingVelocity:I

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 127
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_28

    const/4 v2, 0x1

    :goto_22
    iput-boolean v2, p0, mUseDynamicTranslucency:Z

    .line 129
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    return-void

    .line 127
    :cond_28
    const/4 v2, 0x0

    goto :goto_22
.end method

.method private resetMembers()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 283
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_b

    .line 284
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 286
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 287
    iput v1, p0, mTranslationX:F

    .line 288
    iput v1, p0, mDownX:F

    .line 289
    iput v1, p0, mDownY:F

    .line 290
    iput-boolean v2, p0, mSwiping:Z

    .line 291
    iput-boolean v2, p0, mDismissed:Z

    .line 292
    iput-boolean v2, p0, mDiscardIntercept:Z

    .line 293
    return-void
.end method

.method private setProgress(F)V
    .registers 4
    .param p1, "deltaX"    # F

    .prologue
    .line 258
    iput p1, p0, mTranslationX:F

    .line 259
    iget-object v0, p0, mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_17

    .line 260
    iget-object v0, p0, mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    invoke-virtual {p0}, getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p1, v1

    invoke-interface {v0, p0, v1, p1}, Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;->onSwipeProgressChanged(Lcom/android/internal/widget/SwipeDismissLayout;FF)V

    .line 262
    :cond_17
    return-void
.end method

.method private updateDismiss(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const v3, 0x3ea8f5c3    # 0.33f

    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, mDownX:F

    sub-float v0, v1, v2

    .line 309
    .local v0, "deltaX":F
    iget-object v1, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 310
    iget-object v1, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 311
    iget-boolean v1, p0, mDismissed:Z

    if-nez v1, :cond_32

    .line 313
    invoke-virtual {p0}, getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    cmpl-float v1, v0, v1

    if-lez v1, :cond_32

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, mLastX:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_32

    .line 315
    const/4 v1, 0x1

    iput-boolean v1, p0, mDismissed:Z

    .line 319
    :cond_32
    iget-boolean v1, p0, mDismissed:Z

    if-eqz v1, :cond_55

    iget-boolean v1, p0, mSwiping:Z

    if-eqz v1, :cond_55

    .line 321
    invoke-virtual {p0}, getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_52

    iget-object v1, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    iget v2, p0, mMinFlingVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_55

    .line 324
    :cond_52
    const/4 v1, 0x0

    iput-boolean v1, p0, mDismissed:Z

    .line 327
    :cond_55
    return-void
.end method

.method private updateSwiping(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 296
    iget-boolean v3, p0, mSwiping:Z

    if-nez v3, :cond_3c

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, mDownX:F

    sub-float v0, v3, v4

    .line 298
    .local v0, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, mDownY:F

    sub-float v1, v3, v4

    .line 299
    .local v1, "deltaY":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    iget v4, p0, mSlop:I

    iget v5, p0, mSlop:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3d

    .line 300
    iget v3, p0, mSlop:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_3a

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3a

    const/4 v2, 0x1

    :cond_3a
    iput-boolean v2, p0, mSwiping:Z

    .line 305
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    :cond_3c
    :goto_3c
    return-void

    .line 302
    .restart local v0    # "deltaX":F
    .restart local v1    # "deltaY":F
    :cond_3d
    iput-boolean v2, p0, mSwiping:Z

    goto :goto_3c
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZFFF)Z
    .registers 17
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # F
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    .line 341
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6a

    move-object v7, p1

    .line 342
    check-cast v7, Landroid/view/ViewGroup;

    .line 343
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 344
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 345
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 346
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_15
    if-ltz v8, :cond_6a

    .line 347
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 348
    .local v1, "child":Landroid/view/View;
    int-to-float v0, v9

    add-float/2addr v0, p4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_67

    int-to-float v0, v9

    add-float/2addr v0, p4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_67

    int-to-float v0, v10

    add-float v0, v0, p5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_67

    int-to-float v0, v10

    add-float v0, v0, p5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_67

    const/4 v2, 0x1

    int-to-float v0, v9

    add-float/2addr v0, p4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float v4, v0, v3

    int-to-float v0, v10

    add-float v0, v0, p5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, canScroll(Landroid/view/View;ZFFF)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 352
    const/4 v0, 0x1

    .line 357
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :goto_66
    return v0

    .line 346
    .restart local v1    # "child":Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_67
    add-int/lit8 v8, v8, -0x1

    goto :goto_15

    .line 357
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_6a
    if-eqz p2, :cond_76

    neg-float v0, p3

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_76

    const/4 v0, 0x1

    goto :goto_66

    :cond_76
    const/4 v0, 0x0

    goto :goto_66
.end method

.method protected cancel()V
    .registers 2

    .prologue
    .line 271
    iget-boolean v0, p0, mUseDynamicTranslucency:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_15

    .line 272
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->convertFromTranslucent()V

    .line 274
    :cond_15
    iget-object v0, p0, mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    if-eqz v0, :cond_1e

    .line 275
    iget-object v0, p0, mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    invoke-interface {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;->onSwipeCancelled(Lcom/android/internal/widget/SwipeDismissLayout;)V

    .line 277
    :cond_1e
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 142
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 143
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_14

    .line 144
    invoke-virtual {p0}, getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, mOnEnterAnimationCompleteListener:Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnEnterAnimationCompleteListener(Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;)V

    .line 147
    :cond_14
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, mScreenOffFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 152
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 153
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1a

    .line 154
    invoke-virtual {p0}, getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, mOnEnterAnimationCompleteListener:Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnEnterAnimationCompleteListener(Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;)V

    .line 157
    :cond_1a
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 158
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 163
    iget v0, p0, mTranslationX:F

    invoke-virtual {p1, v0, v11}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_a4

    .line 216
    :cond_f
    :goto_f
    :pswitch_f
    iget-boolean v0, p0, mDiscardIntercept:Z

    if-nez v0, :cond_a0

    iget-boolean v0, p0, mSwiping:Z

    if-eqz v0, :cond_a0

    :goto_17
    return v10

    .line 167
    :pswitch_18
    invoke-direct {p0}, resetMembers()V

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, mDownX:F

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, mDownY:F

    .line 170
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, mActiveTouchId:I

    .line 171
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 172
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_f

    .line 176
    :pswitch_39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 177
    .local v6, "actionIndex":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, mActiveTouchId:I

    goto :goto_f

    .line 180
    .end local v6    # "actionIndex":I
    :pswitch_44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 181
    .restart local v6    # "actionIndex":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 182
    .local v8, "pointerId":I
    iget v0, p0, mActiveTouchId:I

    if-ne v8, v0, :cond_f

    .line 184
    if-nez v6, :cond_5a

    move v7, v10

    .line 185
    .local v7, "newActionIndex":I
    :goto_53
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, mActiveTouchId:I

    goto :goto_f

    .end local v7    # "newActionIndex":I
    :cond_5a
    move v7, v2

    .line 184
    goto :goto_53

    .line 191
    .end local v6    # "actionIndex":I
    .end local v8    # "pointerId":I
    :pswitch_5c
    invoke-direct {p0}, resetMembers()V

    goto :goto_f

    .line 195
    :pswitch_60
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, mDiscardIntercept:Z

    if-nez v0, :cond_f

    .line 199
    iget v0, p0, mActiveTouchId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 200
    .local v9, "pointerIndex":I
    const/4 v0, -0x1

    if-ne v9, v0, :cond_7b

    .line 201
    const-string v0, "SwipeDismissLayout"

    const-string v1, "Invalid pointer index: ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iput-boolean v10, p0, mDiscardIntercept:Z

    goto :goto_f

    .line 205
    :cond_7b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, mDownX:F

    sub-float v3, v0, v1

    .line 206
    .local v3, "dx":F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 207
    .local v4, "x":F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 208
    .local v5, "y":F
    cmpl-float v0, v3, v11

    if-eqz v0, :cond_9b

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, canScroll(Landroid/view/View;ZFFF)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 209
    iput-boolean v10, p0, mDiscardIntercept:Z

    goto/16 :goto_f

    .line 212
    :cond_9b
    invoke-direct {p0, p1}, updateSwiping(Landroid/view/MotionEvent;)V

    goto/16 :goto_f

    .end local v3    # "dx":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v9    # "pointerIndex":I
    :cond_a0
    move v10, v2

    .line 216
    goto/16 :goto_17

    .line 165
    nop

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_18
        :pswitch_5c
        :pswitch_60
        :pswitch_5c
        :pswitch_f
        :pswitch_39
        :pswitch_44
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 221
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 222
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 254
    :goto_9
    return v0

    .line 225
    :cond_a
    iget v0, p0, mTranslationX:F

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_68

    .line 254
    :cond_17
    :goto_17
    const/4 v0, 0x1

    goto :goto_9

    .line 228
    :pswitch_19
    invoke-direct {p0, p1}, updateDismiss(Landroid/view/MotionEvent;)V

    .line 229
    iget-boolean v0, p0, mDismissed:Z

    if-eqz v0, :cond_27

    .line 230
    invoke-direct {p0}, dismiss()V

    .line 234
    :cond_23
    :goto_23
    invoke-direct {p0}, resetMembers()V

    goto :goto_17

    .line 231
    :cond_27
    iget-boolean v0, p0, mSwiping:Z

    if-eqz v0, :cond_23

    .line 232
    invoke-virtual {p0}, cancel()V

    goto :goto_23

    .line 238
    :pswitch_2f
    invoke-virtual {p0}, cancel()V

    .line 239
    invoke-direct {p0}, resetMembers()V

    goto :goto_17

    .line 243
    :pswitch_36
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, mLastX:F

    .line 245
    invoke-direct {p0, p1}, updateSwiping(Landroid/view/MotionEvent;)V

    .line 246
    iget-boolean v0, p0, mSwiping:Z

    if-eqz v0, :cond_17

    .line 247
    iget-boolean v0, p0, mUseDynamicTranslucency:Z

    if-eqz v0, :cond_5d

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_5d

    .line 248
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v2, v2}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    .line 250
    :cond_5d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, mDownX:F

    sub-float/2addr v0, v1

    invoke-direct {p0, v0}, setProgress(F)V

    goto :goto_17

    .line 226
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_19
        :pswitch_36
        :pswitch_2f
    .end packed-switch
.end method

.method public setOnDismissedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

    .prologue
    .line 133
    iput-object p1, p0, mDismissedListener:Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

    .line 134
    return-void
.end method

.method public setOnSwipeProgressChangedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    .prologue
    .line 137
    iput-object p1, p0, mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    .line 138
    return-void
.end method
