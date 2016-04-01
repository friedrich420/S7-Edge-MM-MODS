.class public Landroid/widget/ScrollView;
.super Landroid/widget/FrameLayout;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ScrollView$HoverScrollHandler;,
        Landroid/widget/ScrollView$SavedState;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_HEIGHT_BOTTOM_DP:I = 0x19

.field private static final HOVERSCROLL_HEIGHT_TOP_DP:I = 0x19

.field private static final HOVERSCROLL_SPEED_FASTER:F = 3000.0f

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final MSG_HOVERSCROLL_MOVE:I = 0x1

.field private static final MSG_HOVERSCROLL_MOVE_FASTER:I = 0x2

.field private static final MSG_HOVERSCROLL_MOVE_TO_END:I = 0x3

.field private static final MSG_QC_HIDE:I = 0x0

.field private static final QC_BOTTOM:I = 0x4

.field private static final QC_LEFT:I = 0x1

.field private static final QC_RIGHT:I = 0x3

.field private static final QC_STATE_NONE:I = 0x0

.field private static final QC_STATE_PRESSED:I = 0x2

.field private static final QC_STATE_SHOWN:I = 0x1

.field private static final QC_TOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ScrollView"

.field private static final THRESHOLD_RATIO_Y:I = 0x50

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:F

.field private QC_ICON_HIDE_DELAY:I

.field private final SWITCH_CONTROL_FLING:I

.field private final SWITCH_CONTROL_SCROLL_DURATION_DEFAULT:F

.field private final SWITCH_CONTROL_SCROLL_DURATION_GAP:F

.field private final SWITCH_CONTROL_SCROLL_MAX_DURATION:F

.field private final SWITCH_CONTROL_SCROLL_MIN_DURATION:F

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mActivePointerId:I

.field private mAutoscrollDuration:F

.field private mCanScroll:Z

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollTimeInterval:J

.field private mHoverTopAreaHeight:I

.field private mIgnoreDelaychildPrerssed:Z

.field private mIsBeingDragged:Z

.field private mIsHoverOverscrolled:Z

.field private mIsLayoutDirty:Z

.field private mIsQCBtnFadeInSet:Z

.field private mIsQCBtnFadeOutSet:Z

.field private mIsQCShown:Z

.field private mLastHapticScrollY:I

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mLastScrollY:I

.field private mLinear:Z

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedsHoverScroll:Z

.field private mNestedYOffset:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field protected mPixelThresholdY:I

.field private mPreviousTextViewScroll:Z

.field private mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

.field private final mQCBtnFadeInRunnable:Ljava/lang/Runnable;

.field private mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private final mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

.field private mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCLocation:I

.field private mQCRect:Landroid/graphics/Rect;

.field private mQCstate:I

.field private mRequestedChildRect:Landroid/graphics/Rect;

.field private mSavedState:Landroid/widget/ScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field private mScroller:Landroid/widget/OverScroller;

.field private mSipDelta:I

.field private mSipResizeAnimationRunning:Z

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 162
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 335
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 336
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 339
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 340
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 344
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 347
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 115
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mTempRect:Landroid/graphics/Rect;

    .line 120
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, USE_SET_INTEGRATOR_HAPTIC:Z

    .line 131
    iput-boolean v5, p0, mIsLayoutDirty:Z

    .line 138
    iput-object v3, p0, mChildToScrollTo:Landroid/view/View;

    .line 145
    iput-boolean v4, p0, mIsBeingDragged:Z

    .line 163
    iput-boolean v4, p0, mLinear:Z

    .line 167
    iput-boolean v5, p0, mSmoothScrollingEnabled:Z

    .line 179
    iput v8, p0, mActivePointerId:I

    .line 196
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, mScrollOffset:[I

    .line 197
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, mScrollConsumed:[I

    .line 206
    iput-object v3, p0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 207
    iput-object v3, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 229
    iput v4, p0, mHoverTopAreaHeight:I

    .line 231
    iput v4, p0, mHoverBottomAreaHeight:I

    .line 237
    iput-wide v6, p0, mHoverRecognitionDurationTime:J

    .line 239
    iput-wide v6, p0, mHoverRecognitionCurrentTime:J

    .line 241
    iput-wide v6, p0, mHoverRecognitionStartTime:J

    .line 243
    const-wide/16 v2, 0x12c

    iput-wide v2, p0, mHoverScrollTimeInterval:J

    .line 245
    iput-wide v6, p0, mHoverScrollStartTime:J

    .line 247
    iput v8, p0, mHoverScrollDirection:I

    .line 252
    iput-boolean v4, p0, mIsHoverOverscrolled:Z

    .line 254
    iput-boolean v4, p0, mIgnoreDelaychildPrerssed:Z

    .line 256
    iput-boolean v4, p0, mPreviousTextViewScroll:Z

    .line 268
    iput-boolean v5, p0, mHoverScrollEnable:Z

    .line 273
    iput-boolean v4, p0, mHoverAreaEnter:Z

    .line 278
    const/high16 v1, 0x44480000    # 800.0f

    iput v1, p0, HOVERSCROLL_SPEED:F

    .line 288
    const/16 v1, 0xf

    iput v1, p0, HOVERSCROLL_DELAY:I

    .line 290
    const/16 v1, 0x1e

    iput v1, p0, QC_ICON_HIDE_DELAY:I

    .line 292
    iput-boolean v4, p0, mNeedsHoverScroll:Z

    .line 296
    const/16 v1, 0xfa0

    iput v1, p0, SWITCH_CONTROL_FLING:I

    .line 297
    const v1, 0x3fcccccd    # 1.6f

    iput v1, p0, SWITCH_CONTROL_SCROLL_DURATION_DEFAULT:F

    .line 298
    const v1, 0x3f333333    # 0.7f

    iput v1, p0, SWITCH_CONTROL_SCROLL_MIN_DURATION:F

    .line 299
    const/high16 v1, 0x40200000    # 2.5f

    iput v1, p0, SWITCH_CONTROL_SCROLL_MAX_DURATION:F

    .line 300
    const v1, 0x3e99999a    # 0.3f

    iput v1, p0, SWITCH_CONTROL_SCROLL_DURATION_GAP:F

    .line 303
    iput-boolean v4, p0, mSipResizeAnimationRunning:Z

    .line 304
    iput-boolean v5, p0, mCanScroll:Z

    .line 305
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mRequestedChildRect:Landroid/graphics/Rect;

    .line 306
    iput v4, p0, mSipDelta:I

    .line 2803
    iput v4, p0, mHoverScrollSpeed:I

    .line 2983
    iput-boolean v5, p0, mIsQCBtnFadeInSet:Z

    .line 2984
    iput-boolean v5, p0, mIsQCBtnFadeOutSet:Z

    .line 2988
    new-instance v1, Landroid/widget/ScrollView$1;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$1;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, mQCBtnFadeInRunnable:Ljava/lang/Runnable;

    .line 2994
    new-instance v1, Landroid/widget/ScrollView$2;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$2;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

    .line 3000
    iput v8, p0, mQCLocation:I

    .line 3001
    iput v4, p0, mQCstate:I

    .line 3002
    iput-boolean v4, p0, mIsQCShown:Z

    .line 348
    invoke-direct {p0}, initScrollView()V

    .line 350
    sget-object v1, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 353
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, setFillViewport(Z)V

    .line 355
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 356
    return-void
.end method

.method static synthetic access$000(Landroid/widget/ScrollView;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/ScrollView;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 106
    invoke-direct {p0, p1}, handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/ScrollView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/ScrollView;

    .prologue
    .line 106
    invoke-direct {p0}, playQCBtnFadeIn()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/ScrollView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/ScrollView;

    .prologue
    .line 106
    invoke-direct {p0}, playQCBtnFadeOut()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/ScrollView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ScrollView;

    .prologue
    .line 106
    iget-object v0, p0, mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$402(Landroid/widget/ScrollView;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/ScrollView;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, mIsQCShown:Z

    return p1
.end method

.method private autoScrollWithDuration(F)V
    .registers 7
    .param p1, "duration"    # F

    .prologue
    const/4 v4, 0x0

    .line 1606
    invoke-direct {p0}, getScrollRange()I

    move-result v1

    iget v2, p0, mScrollY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 1607
    .local v0, "tempdur":I
    const/4 v1, 0x1

    iput-boolean v1, p0, mLinear:Z

    .line 1608
    const-string v1, "ScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoScrollWithDuration() duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    invoke-direct {p0}, getScrollRange()I

    move-result v1

    invoke-virtual {p0, v4, v1, v0}, smoothScrollByWithDuration(III)V

    .line 1613
    iput-boolean v4, p0, mLinear:Z

    .line 1614
    iget-object v1, p0, mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1615
    return-void
.end method

.method private canScroll()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 458
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 459
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_18

    .line 460
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 461
    .local v1, "childHeight":I
    invoke-virtual {p0}, getHeight()I

    move-result v3

    iget v4, p0, mPaddingTop:I

    add-int/2addr v4, v1

    iget v5, p0, mPaddingBottom:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_18

    const/4 v2, 0x1

    .line 463
    .end local v1    # "childHeight":I
    :cond_18
    return v2
.end method

.method private static clamp(III)I
    .registers 4
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    .prologue
    .line 2690
    if-ge p1, p2, :cond_4

    if-gez p0, :cond_6

    .line 2706
    :cond_4
    const/4 p0, 0x0

    .line 2716
    .end local p0    # "n":I
    :cond_5
    :goto_5
    return p0

    .line 2708
    .restart local p0    # "n":I
    :cond_6
    add-int v0, p1, p0

    if-le v0, p2, :cond_5

    .line 2714
    sub-int p0, p2, p1

    goto :goto_5
.end method

.method private doScrollToBottomEnd()V
    .registers 2

    .prologue
    .line 3193
    invoke-virtual {p0}, computeVerticalScrollRange()I

    move-result v0

    .line 3194
    .local v0, "scrollRange":I
    invoke-direct {p0, v0}, doScrollY(I)V

    .line 3195
    return-void
.end method

.method private doScrollToTopEnd()V
    .registers 3

    .prologue
    .line 3188
    invoke-virtual {p0}, computeVerticalScrollOffset()I

    move-result v0

    .line 3189
    .local v0, "scrollOffset":I
    neg-int v1, v0

    invoke-direct {p0, v1}, doScrollY(I)V

    .line 3190
    return-void
.end method

.method private doScrollY(I)V
    .registers 4
    .param p1, "delta"    # I

    .prologue
    const/4 v1, 0x0

    .line 1937
    if-eqz p1, :cond_e

    .line 1938
    iget-boolean v0, p0, mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, mSipResizeAnimationRunning:Z

    if-nez v0, :cond_f

    .line 1939
    invoke-virtual {p0, v1, p1}, smoothScrollBy(II)V

    .line 1945
    :cond_e
    :goto_e
    return-void

    .line 1941
    :cond_f
    invoke-virtual {p0, v1, p1}, scrollBy(II)V

    goto :goto_e
.end method

.method private drawQuickController(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3140
    iget v2, p0, mQCstate:I

    if-eq v2, v3, :cond_c

    iget v2, p0, mQCstate:I

    if-ne v2, v6, :cond_41

    .line 3141
    :cond_c
    iget v1, p0, mScrollY:I

    .line 3142
    .local v1, "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 3143
    .local v0, "restoreCount":I
    int-to-float v2, v1

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3145
    iget v2, p0, mQCstate:I

    if-ne v2, v3, :cond_37

    .line 3146
    iget-boolean v2, p0, mIsQCBtnFadeInSet:Z

    if-eqz v2, :cond_2a

    .line 3147
    iget-object v2, p0, mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3148
    iget-object v2, p0, mQCBtnFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, post(Ljava/lang/Runnable;)Z

    .line 3149
    iput-boolean v4, p0, mIsQCBtnFadeInSet:Z

    .line 3151
    :cond_2a
    iget-object v2, p0, mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3156
    :cond_2f
    :goto_2f
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3158
    iput-boolean v3, p0, mIsQCShown:Z

    .line 3159
    iput-boolean v3, p0, mIsQCBtnFadeOutSet:Z

    .line 3173
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollY":I
    :cond_36
    :goto_36
    return-void

    .line 3152
    .restart local v0    # "restoreCount":I
    .restart local v1    # "scrollY":I
    :cond_37
    iget v2, p0, mQCstate:I

    if-ne v2, v6, :cond_2f

    .line 3153
    iget-object v2, p0, mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2f

    .line 3160
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollY":I
    :cond_41
    iget-boolean v2, p0, mIsQCShown:Z

    if-ne v2, v3, :cond_36

    .line 3161
    iget v1, p0, mScrollY:I

    .line 3162
    .restart local v1    # "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 3163
    .restart local v0    # "restoreCount":I
    int-to-float v2, v1

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3164
    iget-boolean v2, p0, mIsQCBtnFadeOutSet:Z

    if-eqz v2, :cond_5a

    .line 3165
    iget-object v2, p0, mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, post(Ljava/lang/Runnable;)Z

    .line 3166
    iput-boolean v4, p0, mIsQCBtnFadeOutSet:Z

    .line 3168
    :cond_5a
    iget-object v2, p0, mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3169
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3170
    iput-boolean v3, p0, mIsQCBtnFadeInSet:Z

    goto :goto_36
.end method

.method private endDrag()V
    .registers 2

    .prologue
    .line 2526
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsBeingDragged:Z

    .line 2528
    invoke-direct {p0}, recycleVelocityTracker()V

    .line 2530
    iget-object v0, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_14

    .line 2531
    iget-object v0, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2532
    iget-object v0, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2535
    :cond_14
    iget-object v0, p0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_20

    .line 2536
    iget-object v0, p0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2537
    const/4 v0, 0x0

    iput-object v0, p0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 2539
    :cond_20
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .registers 15
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 1682
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1683
    .local v2, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1692
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v3, 0x0

    .line 1694
    .local v3, "foundFullyContainedFocusable":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1695
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    if-ge v4, v0, :cond_52

    .line 1696
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1697
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 1698
    .local v9, "viewTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1700
    .local v6, "viewBottom":I
    if-ge p2, v6, :cond_29

    if-ge v9, p3, :cond_29

    .line 1706
    if-ge p2, v9, :cond_2c

    if-ge v6, p3, :cond_2c

    const/4 v8, 0x1

    .line 1709
    .local v8, "viewIsFullyContained":Z
    :goto_25
    if-nez v1, :cond_2e

    .line 1711
    move-object v1, v5

    .line 1712
    move v3, v8

    .line 1695
    .end local v8    # "viewIsFullyContained":Z
    :cond_29
    :goto_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1706
    :cond_2c
    const/4 v8, 0x0

    goto :goto_25

    .line 1714
    .restart local v8    # "viewIsFullyContained":Z
    :cond_2e
    if-eqz p1, :cond_36

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_3e

    :cond_36
    if-nez p1, :cond_47

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_47

    :cond_3e
    const/4 v7, 0x1

    .line 1719
    .local v7, "viewIsCloserToBoundary":Z
    :goto_3f
    if-eqz v3, :cond_49

    .line 1720
    if-eqz v8, :cond_29

    if-eqz v7, :cond_29

    .line 1726
    move-object v1, v5

    goto :goto_29

    .line 1714
    .end local v7    # "viewIsCloserToBoundary":Z
    :cond_47
    const/4 v7, 0x0

    goto :goto_3f

    .line 1729
    .restart local v7    # "viewIsCloserToBoundary":Z
    :cond_49
    if-eqz v8, :cond_4e

    .line 1731
    move-object v1, v5

    .line 1732
    const/4 v3, 0x1

    goto :goto_29

    .line 1733
    :cond_4e
    if-eqz v7, :cond_29

    .line 1738
    move-object v1, v5

    goto :goto_29

    .line 1745
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewBottom":I
    .end local v7    # "viewIsCloserToBoundary":Z
    .end local v8    # "viewIsFullyContained":Z
    .end local v9    # "viewTop":I
    :cond_52
    return-object v1
.end method

.method private flingWithNestedDispatch(I)V
    .registers 6
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 2515
    iget v1, p0, mScrollY:I

    if-gtz v1, :cond_7

    if-lez p1, :cond_23

    :cond_7
    iget v1, p0, mScrollY:I

    invoke-direct {p0}, getScrollRange()I

    move-result v2

    if-lt v1, v2, :cond_11

    if-gez p1, :cond_23

    :cond_11
    const/4 v0, 0x1

    .line 2517
    .local v0, "canFling":Z
    :goto_12
    int-to-float v1, p1

    invoke-virtual {p0, v3, v1}, dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_22

    .line 2518
    int-to-float v1, p1

    invoke-virtual {p0, v3, v1, v0}, dispatchNestedFling(FFZ)Z

    .line 2519
    if-eqz v0, :cond_22

    .line 2520
    invoke-virtual {p0, p1}, fling(I)V

    .line 2523
    :cond_22
    return-void

    .line 2515
    .end local v0    # "canFling":Z
    :cond_23
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private flingWithoutAcc(I)V
    .registers 16
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 2498
    const-string v0, "ScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flingWithoutAcc() velocityY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    if-lez v0, :cond_58

    .line 2500
    invoke-virtual {p0}, getHeight()I

    move-result v0

    iget v1, p0, mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, mPaddingTop:I

    sub-int v13, v0, v1

    .line 2501
    .local v13, "height":I
    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 2503
    .local v12, "bottom":I
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    iget v1, p0, mScrollX:I

    iget v2, p0, mScrollY:I

    sub-int v4, v12, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v13, 0x2

    const/4 v11, 0x1

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    invoke-virtual/range {v0 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIIIZ)V

    .line 2506
    iget-object v0, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_55

    .line 2507
    const-string v0, "ScrollView-fling"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2510
    :cond_55
    invoke-virtual {p0}, postInvalidateOnAnimation()V

    .line 2512
    .end local v12    # "bottom":I
    .end local v13    # "height":I
    :cond_58
    return-void
.end method

.method private getScrollRange()I
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1656
    const/4 v1, 0x0

    .line 1657
    .local v1, "scrollRange":I
    invoke-virtual {p0}, getChildCount()I

    move-result v2

    if-lez v2, :cond_1f

    .line 1658
    invoke-virtual {p0, v5}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1659
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, getHeight()I

    move-result v3

    iget v4, p0, mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1662
    .end local v0    # "child":Landroid/view/View;
    :cond_1f
    return v1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2822
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_202

    .line 2955
    :cond_5
    :goto_5
    return-void

    .line 2824
    :pswitch_6
    const/4 v7, 0x0

    iput v7, p0, mQCstate:I

    .line 2825
    invoke-virtual {p0}, postInvalidateOnAnimation()V

    goto :goto_5

    .line 2828
    :pswitch_d
    const/4 v2, 0x0

    .line 2829
    .local v2, "offset":I
    invoke-direct {p0}, getScrollRange()I

    move-result v4

    .line 2831
    .local v4, "range":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, mHoverRecognitionCurrentTime:J

    .line 2832
    iget-wide v8, p0, mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, mHoverRecognitionStartTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iput-wide v8, p0, mHoverRecognitionDurationTime:J

    .line 2834
    iget-wide v8, p0, mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, mHoverScrollStartTime:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, mHoverScrollTimeInterval:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_5

    .line 2837
    const/4 v7, 0x1

    iget v8, p0, HOVERSCROLL_SPEED:F

    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, mHoverScrollSpeed:I

    .line 2840
    iget v7, p0, mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_60

    .line 2841
    iget v7, p0, mHoverScrollSpeed:I

    mul-int/lit8 v2, v7, -0x1

    .line 2850
    :goto_4d
    if-gez v2, :cond_65

    iget v7, p0, mScrollY:I

    if-lez v7, :cond_65

    .line 2853
    invoke-direct {p0, v2}, flingWithoutAcc(I)V

    .line 2854
    iget-object v7, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v8, 0x1

    iget v9, p0, HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    .line 2843
    :cond_60
    iget v7, p0, mHoverScrollSpeed:I

    mul-int/lit8 v2, v7, 0x1

    goto :goto_4d

    .line 2855
    :cond_65
    if-lez v2, :cond_78

    iget v7, p0, mScrollY:I

    if-ge v7, v4, :cond_78

    .line 2858
    invoke-direct {p0, v2}, flingWithoutAcc(I)V

    .line 2859
    iget-object v7, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v8, 0x1

    iget v9, p0, HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    .line 2862
    :cond_78
    invoke-virtual {p0}, getOverScrollMode()I

    move-result v3

    .line 2863
    .local v3, "overscrollMode":I
    if-eqz v3, :cond_83

    const/4 v7, 0x1

    if-ne v3, v7, :cond_e1

    if-lez v4, :cond_e1

    :cond_83
    const/4 v0, 0x1

    .line 2866
    .local v0, "canOverscroll":Z
    :goto_84
    if-eqz v0, :cond_d6

    iget-boolean v7, p0, mIsHoverOverscrolled:Z

    if-nez v7, :cond_d6

    .line 2867
    iget-object v7, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_bc

    .line 2868
    iget v7, p0, mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_e3

    .line 2869
    invoke-virtual {p0}, getWidth()I

    move-result v7

    iget v8, p0, mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, mPaddingRight:I

    sub-int v6, v7, v8

    .line 2870
    .local v6, "width":I
    iget-object v7, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getHeight()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2871
    iget-object v7, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2872
    iget-object v7, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_bc

    .line 2873
    iget-object v7, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2884
    .end local v6    # "width":I
    :cond_bc
    :goto_bc
    iget-object v7, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_d3

    iget-object v7, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_d0

    iget-object v7, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_d3

    .line 2885
    :cond_d0
    invoke-virtual {p0}, invalidate()V

    .line 2887
    :cond_d3
    const/4 v7, 0x1

    iput-boolean v7, p0, mIsHoverOverscrolled:Z

    .line 2890
    :cond_d6
    if-nez v0, :cond_5

    iget-boolean v7, p0, mIsHoverOverscrolled:Z

    if-nez v7, :cond_5

    .line 2891
    const/4 v7, 0x1

    iput-boolean v7, p0, mIsHoverOverscrolled:Z

    goto/16 :goto_5

    .line 2863
    .end local v0    # "canOverscroll":Z
    :cond_e1
    const/4 v0, 0x0

    goto :goto_84

    .line 2875
    .restart local v0    # "canOverscroll":Z
    :cond_e3
    iget v7, p0, mHoverScrollDirection:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_bc

    .line 2876
    invoke-virtual {p0}, getWidth()I

    move-result v7

    iget v8, p0, mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, mPaddingRight:I

    sub-int v6, v7, v8

    .line 2877
    .restart local v6    # "width":I
    iget-object v7, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getHeight()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2878
    iget-object v7, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2879
    iget-object v7, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_bc

    .line 2880
    iget-object v7, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_bc

    .line 2897
    .end local v0    # "canOverscroll":Z
    .end local v2    # "offset":I
    .end local v3    # "overscrollMode":I
    .end local v4    # "range":I
    .end local v6    # "width":I
    :pswitch_112
    const/4 v7, 0x1

    const v8, 0x453b8000    # 3000.0f

    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, mHoverScrollSpeed:I

    .line 2900
    iget v7, p0, mQCLocation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_150

    iget v7, p0, mHoverScrollSpeed:I

    neg-int v1, v7

    .line 2901
    .local v1, "distanceToMove":I
    :goto_132
    invoke-direct {p0}, getScrollRange()I

    move-result v5

    .line 2903
    .local v5, "scrollaleRange":I
    if-gez v1, :cond_13c

    iget v7, p0, mScrollY:I

    if-gtz v7, :cond_142

    :cond_13c
    if-lez v1, :cond_153

    iget v7, p0, mScrollY:I

    if-ge v7, v5, :cond_153

    .line 2906
    :cond_142
    invoke-direct {p0, v1}, flingWithoutAcc(I)V

    .line 2907
    iget-object v7, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v8, 0x2

    iget v9, p0, HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 2900
    .end local v1    # "distanceToMove":I
    .end local v5    # "scrollaleRange":I
    :cond_150
    iget v1, p0, mHoverScrollSpeed:I

    goto :goto_132

    .line 2910
    .restart local v1    # "distanceToMove":I
    .restart local v5    # "scrollaleRange":I
    :cond_153
    invoke-virtual {p0}, getOverScrollMode()I

    move-result v3

    .line 2911
    .restart local v3    # "overscrollMode":I
    if-eqz v3, :cond_15e

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1bc

    if-lez v5, :cond_1bc

    :cond_15e
    const/4 v0, 0x1

    .line 2914
    .restart local v0    # "canOverscroll":Z
    :goto_15f
    if-eqz v0, :cond_1b1

    iget-boolean v7, p0, mIsHoverOverscrolled:Z

    if-nez v7, :cond_1b1

    .line 2915
    iget-object v7, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_197

    .line 2916
    iget v7, p0, mQCLocation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1be

    .line 2917
    invoke-virtual {p0}, getWidth()I

    move-result v7

    iget v8, p0, mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, mPaddingRight:I

    sub-int v6, v7, v8

    .line 2918
    .restart local v6    # "width":I
    iget-object v7, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getHeight()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2919
    iget-object v7, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2920
    iget-object v7, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_197

    .line 2921
    iget-object v7, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2932
    .end local v6    # "width":I
    :cond_197
    :goto_197
    iget-object v7, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_1ae

    iget-object v7, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_1ab

    iget-object v7, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_1ae

    .line 2933
    :cond_1ab
    invoke-virtual {p0}, invalidate()V

    .line 2935
    :cond_1ae
    const/4 v7, 0x1

    iput-boolean v7, p0, mIsHoverOverscrolled:Z

    .line 2938
    :cond_1b1
    if-nez v0, :cond_5

    iget-boolean v7, p0, mIsHoverOverscrolled:Z

    if-nez v7, :cond_5

    .line 2939
    const/4 v7, 0x1

    iput-boolean v7, p0, mIsHoverOverscrolled:Z

    goto/16 :goto_5

    .line 2911
    .end local v0    # "canOverscroll":Z
    :cond_1bc
    const/4 v0, 0x0

    goto :goto_15f

    .line 2923
    .restart local v0    # "canOverscroll":Z
    :cond_1be
    iget v7, p0, mQCLocation:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_197

    .line 2924
    invoke-virtual {p0}, getWidth()I

    move-result v7

    iget v8, p0, mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, mPaddingRight:I

    sub-int v6, v7, v8

    .line 2925
    .restart local v6    # "width":I
    iget-object v7, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getHeight()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2926
    iget-object v7, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2927
    iget-object v7, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_197

    .line 2928
    iget-object v7, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_197

    .line 2945
    .end local v0    # "canOverscroll":Z
    .end local v1    # "distanceToMove":I
    .end local v3    # "overscrollMode":I
    .end local v5    # "scrollaleRange":I
    .end local v6    # "width":I
    :pswitch_1ed
    iget v7, p0, mQCLocation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1f7

    .line 2946
    invoke-direct {p0}, doScrollToTopEnd()V

    goto/16 :goto_5

    .line 2947
    :cond_1f7
    iget v7, p0, mQCLocation:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    .line 2948
    invoke-direct {p0}, doScrollToBottomEnd()V

    goto/16 :goto_5

    .line 2822
    nop

    :pswitch_data_202
    .packed-switch 0x0
        :pswitch_6
        :pswitch_d
        :pswitch_112
        :pswitch_1ed
    .end packed-switch
.end method

.method private inChild(II)Z
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 783
    invoke-virtual {p0}, getChildCount()I

    move-result v3

    if-lez v3, :cond_28

    .line 784
    iget v1, p0, mScrollY:I

    .line 785
    .local v1, "scrollY":I
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 786
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_28

    const/4 v2, 0x1

    .line 791
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollY":I
    :cond_28
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    .prologue
    .line 795
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 796
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 800
    :goto_a
    return-void

    .line 798
    :cond_b
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_a
.end method

.method private initScrollView()V
    .registers 4

    .prologue
    .line 406
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mScroller:Landroid/widget/OverScroller;

    .line 407
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, setFocusable(Z)V

    .line 408
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, setDescendantFocusability(I)V

    .line 409
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, setWillNotDraw(Z)V

    .line 410
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 411
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, mTouchSlop:I

    .line 412
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, mMinimumVelocity:I

    .line 413
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, mMaximumVelocity:I

    .line 414
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, mOverscrollDistance:I

    .line 415
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, mOverflingDistance:I

    .line 416
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    .prologue
    .line 803
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 804
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 806
    :cond_a
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .registers 4
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1915
    invoke-virtual {p0}, getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method private isQCSupported()Z
    .registers 3

    .prologue
    .line 3005
    sget v0, sSpenUspLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_7

    .line 3006
    const/4 v0, 0x1

    .line 3008
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 5
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 2466
    if-ne p0, p1, :cond_4

    .line 2471
    :cond_3
    :goto_3
    return v1

    .line 2470
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2471
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_14

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_14
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .registers 6
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "height"    # I

    .prologue
    .line 1923
    iget-object v0, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1924
    iget-object v0, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1926
    iget-object v0, p0, mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_23

    iget-object v0, p0, mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1401
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1403
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1404
    .local v1, "pointerId":I
    iget v3, p0, mActivePointerId:I

    if-ne v1, v3, :cond_2b

    .line 1408
    if-nez v2, :cond_2c

    const/4 v0, 0x1

    .line 1409
    .local v0, "newPointerIndex":I
    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, mLastMotionY:I

    .line 1410
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, mActivePointerId:I

    .line 1411
    iget-object v3, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_2b

    .line 1412
    iget-object v3, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1415
    .end local v0    # "newPointerIndex":I
    :cond_2b
    return-void

    .line 1408
    :cond_2c
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private playQCBtnFadeIn()V
    .registers 3

    .prologue
    .line 3176
    iget-object v0, p0, mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3179
    :goto_8
    return-void

    .line 3177
    :cond_9
    iget-object v0, p0, mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_1a

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 3178
    iget-object v0, p0, mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_8

    .line 3177
    :array_1a
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private playQCBtnFadeOut()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3182
    iget-object v0, p0, mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3185
    :goto_9
    return-void

    .line 3183
    :cond_a
    iget-object v0, p0, mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 3184
    iget-object v0, p0, mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_9
.end method

.method private recycleVelocityTracker()V
    .registers 2

    .prologue
    .line 809
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 810
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 811
    const/4 v0, 0x0

    iput-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 813
    :cond_c
    return-void
.end method

.method private scrollAndFocus(III)Z
    .registers 12
    .param p1, "direction"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 1828
    const/4 v3, 0x1

    .line 1830
    .local v3, "handled":Z
    invoke-virtual {p0}, getHeight()I

    move-result v4

    .line 1831
    .local v4, "height":I
    invoke-virtual {p0}, getScrollY()I

    move-result v1

    .line 1832
    .local v1, "containerTop":I
    add-int v0, v1, v4

    .line 1833
    .local v0, "containerBottom":I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_26

    const/4 v6, 0x1

    .line 1835
    .local v6, "up":Z
    :goto_10
    invoke-direct {p0, v6, p2, p3}, findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1836
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_17

    .line 1837
    move-object v5, p0

    .line 1840
    :cond_17
    if-lt p2, v1, :cond_28

    if-gt p3, v0, :cond_28

    .line 1841
    const/4 v3, 0x0

    .line 1847
    :goto_1c
    invoke-virtual {p0}, findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_25

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1849
    :cond_25
    return v3

    .line 1833
    .end local v5    # "newFocused":Landroid/view/View;
    .end local v6    # "up":Z
    :cond_26
    const/4 v6, 0x0

    goto :goto_10

    .line 1843
    .restart local v5    # "newFocused":Landroid/view/View;
    .restart local v6    # "up":Z
    :cond_28
    if-eqz v6, :cond_30

    sub-int v2, p2, v1

    .line 1844
    .local v2, "delta":I
    :goto_2c
    invoke-direct {p0, v2}, doScrollY(I)V

    goto :goto_1c

    .line 1843
    .end local v2    # "delta":I
    :cond_30
    sub-int v2, p3, v0

    goto :goto_2c
.end method

.method private scrollToChild(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2177
    if-eqz p1, :cond_18

    .line 2178
    iget-object v1, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2181
    iget-object v1, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2183
    iget-object v1, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 2185
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_18

    .line 2186
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, scrollBy(II)V

    .line 2189
    .end local v0    # "scrollDelta":I
    :cond_18
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .registers 7
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2200
    invoke-virtual {p0, p1}, computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 2201
    .local v0, "delta":I
    if-eqz v0, :cond_14

    const/4 v1, 0x1

    .line 2204
    .local v1, "scroll":Z
    :goto_8
    if-eqz v1, :cond_13

    .line 2205
    if-nez p2, :cond_10

    iget-boolean v3, p0, mSipResizeAnimationRunning:Z

    if-eqz v3, :cond_16

    .line 2206
    :cond_10
    invoke-virtual {p0, v2, v0}, scrollBy(II)V

    .line 2212
    :cond_13
    :goto_13
    return v1

    .end local v1    # "scroll":Z
    :cond_14
    move v1, v2

    .line 2201
    goto :goto_8

    .line 2208
    .restart local v1    # "scroll":Z
    :cond_16
    invoke-virtual {p0, v2, v0}, smoothScrollBy(II)V

    goto :goto_13
.end method

.method private setupQuickController(I)V
    .registers 21
    .param p1, "where"    # I

    .prologue
    .line 3012
    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v13

    .line 3013
    .local v13, "w":I
    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v9

    .line 3014
    .local v9, "h":I
    move-object/from16 v0, p0

    iget v14, v0, mPaddingLeft:I

    sub-int v14, v13, v14

    move-object/from16 v0, p0

    iget v15, v0, mPaddingRight:I

    sub-int v7, v14, v15

    .line 3015
    .local v7, "contentW":I
    move-object/from16 v0, p0

    iget v14, v0, mPaddingLeft:I

    div-int/lit8 v15, v7, 0x2

    add-int v5, v14, v15

    .line 3017
    .local v5, "centerX":I
    const/4 v4, 0x0

    .line 3018
    .local v4, "btnW":I
    const/4 v3, 0x0

    .line 3020
    .local v3, "btnH":I
    move-object/from16 v0, p0

    iget v11, v0, mQCLocation:I

    .line 3021
    .local v11, "oldLocation":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, mQCLocation:I

    .line 3023
    const/4 v6, 0x1

    .line 3024
    .local v6, "checkBoundary":Z
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    .line 3025
    .local v2, "basePkgName":Ljava/lang/String;
    if-eqz v2, :cond_3c

    const-string v14, "cocktailbarservice"

    invoke-virtual {v2, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3c

    .line 3028
    const/4 v6, 0x0

    .line 3033
    :cond_3c
    if-eqz v6, :cond_88

    .line 3034
    const/4 v14, 0x2

    new-array v10, v14, [I

    fill-array-data v10, :array_1d8

    .line 3035
    .local v10, "locOnScr":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, getLocationOnScreen([I)V

    .line 3036
    invoke-virtual/range {p0 .. p0}, getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 3039
    .local v8, "dm":Landroid/util/DisplayMetrics;
    const/4 v14, 0x0

    aget v14, v10, v14

    if-gez v14, :cond_69

    .line 3040
    const/4 v14, 0x0

    aget v14, v10, v14

    neg-int v12, v14

    .line 3041
    .local v12, "overlappedW":I
    move-object/from16 v0, p0

    iget v14, v0, mPaddingLeft:I

    if-le v12, v14, :cond_69

    .line 3042
    move-object/from16 v0, p0

    iget v14, v0, mPaddingLeft:I

    sub-int v14, v12, v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v5, v14

    .line 3047
    .end local v12    # "overlappedW":I
    :cond_69
    const/4 v14, 0x0

    aget v14, v10, v14

    add-int/2addr v14, v13

    iget v15, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v14, v15, :cond_88

    .line 3048
    const/4 v14, 0x0

    aget v14, v10, v14

    add-int/2addr v14, v13

    iget v15, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v12, v14, v15

    .line 3049
    .restart local v12    # "overlappedW":I
    move-object/from16 v0, p0

    iget v14, v0, mPaddingRight:I

    if-le v12, v14, :cond_88

    .line 3050
    move-object/from16 v0, p0

    iget v14, v0, mPaddingRight:I

    sub-int v14, v12, v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v5, v14

    .line 3055
    .end local v8    # "dm":Landroid/util/DisplayMetrics;
    .end local v10    # "locOnScr":[I
    .end local v12    # "overlappedW":I
    :cond_88
    packed-switch p1, :pswitch_data_1e0

    .line 3091
    :goto_8b
    move-object/from16 v0, p0

    iget-object v14, v0, mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, mQCRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3092
    move-object/from16 v0, p0

    iget-object v14, v0, mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, mQCRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3094
    const/4 v14, 0x2

    new-array v14, v14, [I

    fill-array-data v14, :array_1ec

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 3095
    move-object/from16 v0, p0

    iget-object v14, v0, mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3097
    move-object/from16 v0, p0

    iget-object v14, v0, mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v15, Landroid/widget/ScrollView$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/ScrollView$3;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3108
    const/4 v14, 0x2

    new-array v14, v14, [I

    fill-array-data v14, :array_1f4

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 3109
    move-object/from16 v0, p0

    iget-object v14, v0, mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3111
    move-object/from16 v0, p0

    iget-object v14, v0, mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v15, Landroid/widget/ScrollView$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/ScrollView$4;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3122
    move-object/from16 v0, p0

    iget-object v14, v0, mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v15, Landroid/widget/ScrollView$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/ScrollView$5;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3137
    return-void

    .line 3057
    :pswitch_fe
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_8b

    .line 3061
    :pswitch_110
    move-object/from16 v0, p0

    iget v14, v0, mQCLocation:I

    if-eq v14, v11, :cond_134

    .line 3062
    invoke-virtual/range {p0 .. p0}, getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x108053d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 3063
    invoke-virtual/range {p0 .. p0}, getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x108053e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 3066
    :cond_134
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1050293

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 3067
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1050293

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 3068
    new-instance v14, Landroid/graphics/Rect;

    div-int/lit8 v15, v4, 0x2

    sub-int v15, v5, v15

    const/16 v16, 0x0

    div-int/lit8 v17, v4, 0x2

    add-int v17, v17, v5

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v15, v0, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_8b

    .line 3072
    :pswitch_16b
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_8b

    .line 3076
    :pswitch_17d
    move-object/from16 v0, p0

    iget v14, v0, mQCLocation:I

    if-eq v14, v11, :cond_1a1

    .line 3077
    invoke-virtual/range {p0 .. p0}, getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x108053b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 3078
    invoke-virtual/range {p0 .. p0}, getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x108053c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 3081
    :cond_1a1
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1050293

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 3082
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1050293

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 3083
    new-instance v14, Landroid/graphics/Rect;

    div-int/lit8 v15, v4, 0x2

    sub-int v15, v5, v15

    sub-int v16, v9, v3

    div-int/lit8 v17, v4, 0x2

    add-int v17, v17, v5

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v15, v0, v1, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_8b

    .line 3034
    :array_1d8
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 3055
    :pswitch_data_1e0
    .packed-switch 0x1
        :pswitch_fe
        :pswitch_110
        :pswitch_16b
        :pswitch_17d
    .end packed-switch

    .line 3094
    :array_1ec
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 3108
    :array_1f4
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private showPointerIcon(I)Z
    .registers 6
    .param p1, "iconId"    # I

    .prologue
    .line 2959
    const/4 v1, -0x1

    :try_start_1
    invoke-static {p1, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_6

    .line 2961
    const/4 v1, 0x1

    .line 2964
    :goto_5
    return v1

    .line 2962
    :catch_6
    move-exception v0

    .line 2963
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to change PointerIcon to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    const/4 v1, 0x0

    goto :goto_5
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 420
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 421
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 425
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 429
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 430
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 434
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 447
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 448
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 452
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 438
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 439
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    return-void
.end method

.method public arrowScroll(I)Z
    .registers 13
    .param p1, "direction"    # I

    .prologue
    const/16 v10, 0x82

    const/4 v7, 0x0

    .line 1861
    invoke-virtual {p0}, findFocus()Landroid/view/View;

    move-result-object v0

    .line 1862
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_a

    const/4 v0, 0x0

    .line 1864
    :cond_a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1866
    .local v4, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, getMaxScrollAmount()I

    move-result v3

    .line 1868
    .local v3, "maxJump":I
    if-eqz v4, :cond_57

    invoke-virtual {p0}, getHeight()I

    move-result v8

    invoke-direct {p0, v4, v3, v8}, isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_57

    .line 1869
    iget-object v7, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1870
    iget-object v7, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1871
    iget-object v7, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1872
    .local v6, "scrollDelta":I
    invoke-direct {p0, v6}, doScrollY(I)V

    .line 1873
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1895
    :goto_38
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_55

    invoke-direct {p0, v0}, isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 1902
    invoke-virtual {p0}, getDescendantFocusability()I

    move-result v2

    .line 1903
    .local v2, "descendantFocusability":I
    const/high16 v7, 0x20000

    invoke-virtual {p0, v7}, setDescendantFocusability(I)V

    .line 1904
    invoke-virtual {p0}, requestFocus()Z

    .line 1905
    invoke-virtual {p0, v2}, setDescendantFocusability(I)V

    .line 1907
    .end local v2    # "descendantFocusability":I
    :cond_55
    const/4 v7, 0x1

    :cond_56
    return v7

    .line 1876
    .end local v6    # "scrollDelta":I
    :cond_57
    move v6, v3

    .line 1878
    .restart local v6    # "scrollDelta":I
    const/16 v8, 0x21

    if-ne p1, v8, :cond_6f

    invoke-virtual {p0}, getScrollY()I

    move-result v8

    if-ge v8, v6, :cond_6f

    .line 1879
    invoke-virtual {p0}, getScrollY()I

    move-result v6

    .line 1889
    :cond_66
    :goto_66
    if-eqz v6, :cond_56

    .line 1892
    if-ne p1, v10, :cond_93

    move v7, v6

    :goto_6b
    invoke-direct {p0, v7}, doScrollY(I)V

    goto :goto_38

    .line 1880
    :cond_6f
    if-ne p1, v10, :cond_66

    .line 1881
    invoke-virtual {p0}, getChildCount()I

    move-result v8

    if-lez v8, :cond_66

    .line 1882
    invoke-virtual {p0, v7}, getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1883
    .local v1, "daBottom":I
    invoke-virtual {p0}, getScrollY()I

    move-result v8

    invoke-virtual {p0}, getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, mPaddingBottom:I

    sub-int v5, v8, v9

    .line 1884
    .local v5, "screenBottom":I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_66

    .line 1885
    sub-int v6, v1, v5

    goto :goto_66

    .line 1892
    .end local v1    # "daBottom":I
    .end local v5    # "screenBottom":I
    :cond_93
    neg-int v7, v6

    goto :goto_6b
.end method

.method public computeScroll()V
    .registers 15

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 2110
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 2127
    iget v3, p0, mScrollX:I

    .line 2128
    .local v3, "oldX":I
    iget v4, p0, mScrollY:I

    .line 2129
    .local v4, "oldY":I
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v12

    .line 2130
    .local v12, "x":I
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v13

    .line 2132
    .local v13, "y":I
    if-ne v3, v12, :cond_1e

    if-eq v4, v13, :cond_50

    .line 2133
    :cond_1e
    invoke-direct {p0}, getScrollRange()I

    move-result v6

    .line 2134
    .local v6, "range":I
    invoke-virtual {p0}, getOverScrollMode()I

    move-result v11

    .line 2135
    .local v11, "overscrollMode":I
    if-eqz v11, :cond_2c

    if-ne v11, v10, :cond_5a

    if-lez v6, :cond_5a

    .line 2139
    .local v10, "canOverscroll":Z
    :cond_2c
    :goto_2c
    iget-boolean v0, p0, mSipResizeAnimationRunning:Z

    if-eqz v0, :cond_5c

    .line 2140
    invoke-super {p0, v12, v13}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 2146
    :goto_33
    iget v0, p0, mScrollX:I

    iget v1, p0, mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, onScrollChanged(IIII)V

    .line 2148
    if-eqz v10, :cond_50

    .line 2149
    iget-object v0, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_50

    .line 2150
    if-gez v13, :cond_69

    if-ltz v4, :cond_69

    .line 2151
    iget-object v0, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v1, p0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 2159
    .end local v6    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    :cond_50
    :goto_50
    invoke-virtual {p0}, awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_59

    .line 2161
    invoke-virtual {p0}, postInvalidateOnAnimation()V

    .line 2169
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_59
    :goto_59
    return-void

    .restart local v3    # "oldX":I
    .restart local v4    # "oldY":I
    .restart local v6    # "range":I
    .restart local v11    # "overscrollMode":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_5a
    move v10, v5

    .line 2135
    goto :goto_2c

    .line 2142
    .restart local v10    # "canOverscroll":Z
    :cond_5c
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    iget v8, p0, mOverflingDistance:I

    move-object v0, p0

    move v7, v5

    move v9, v5

    invoke-virtual/range {v0 .. v9}, overScrollBy(IIIIIIIIZ)Z

    goto :goto_33

    .line 2152
    :cond_69
    if-le v13, v6, :cond_50

    if-gt v4, v6, :cond_50

    .line 2153
    iget-object v0, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v1, p0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_50

    .line 2164
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v6    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_7a
    iget-object v0, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_59

    .line 2165
    iget-object v0, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2166
    const/4 v0, 0x0

    iput-object v0, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_59
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .registers 13
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x0

    .line 2224
    invoke-virtual {p0}, getChildCount()I

    move-result v9

    if-nez v9, :cond_9

    move v7, v8

    .line 2286
    :cond_8
    :goto_8
    return v7

    .line 2226
    :cond_9
    invoke-virtual {p0}, getHeight()I

    move-result v4

    .line 2227
    .local v4, "height":I
    invoke-virtual {p0}, getScrollY()I

    move-result v6

    .line 2228
    .local v6, "screenTop":I
    add-int v5, v6, v4

    .line 2230
    .local v5, "screenBottom":I
    invoke-virtual {p0}, getVerticalFadingEdgeLength()I

    move-result v3

    .line 2232
    .local v3, "fadingEdge":I
    invoke-virtual {p0, v8}, getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2236
    .local v1, "childHeight":I
    iget v9, p1, Landroid/graphics/Rect;->top:I

    if-lez v9, :cond_24

    .line 2237
    add-int/2addr v6, v3

    .line 2241
    :cond_24
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v8}, getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    if-ge v9, v10, :cond_31

    .line 2242
    sub-int/2addr v5, v3

    .line 2245
    :cond_31
    const/4 v7, 0x0

    .line 2247
    .local v7, "scrollYDelta":I
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    if-le v9, v5, :cond_58

    iget v9, p1, Landroid/graphics/Rect;->top:I

    if-le v9, v6, :cond_58

    .line 2252
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v9, v4, :cond_53

    .line 2254
    iget v9, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v6

    add-int/2addr v7, v9

    .line 2261
    :goto_44
    invoke-virtual {p0, v8}, getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2262
    .local v0, "bottom":I
    sub-int v2, v0, v5

    .line 2263
    .local v2, "distanceToBottom":I
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2265
    goto :goto_8

    .line 2257
    .end local v0    # "bottom":I
    .end local v2    # "distanceToBottom":I
    :cond_53
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v5

    add-int/2addr v7, v9

    goto :goto_44

    .line 2265
    :cond_58
    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-ge v8, v6, :cond_7b

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v8, v5, :cond_7b

    .line 2270
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v4, :cond_75

    .line 2272
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v5, v8

    sub-int/2addr v7, v8

    .line 2279
    :goto_6b
    invoke-virtual {p0}, getScrollY()I

    move-result v8

    neg-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_8

    .line 2275
    :cond_75
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int v8, v6, v8

    sub-int/2addr v7, v8

    goto :goto_6b

    .line 2282
    :cond_7b
    iget-boolean v8, p0, mSipResizeAnimationRunning:Z

    if-eqz v8, :cond_8

    if-le v5, v1, :cond_8

    .line 2283
    sub-int v7, v5, v1

    goto :goto_8
.end method

.method protected computeVerticalScrollOffset()I
    .registers 3

    .prologue
    .line 2073
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 2053
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 2054
    .local v1, "count":I
    invoke-virtual {p0}, getHeight()I

    move-result v5

    iget v6, p0, mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, mPaddingTop:I

    sub-int v0, v5, v6

    .line 2055
    .local v0, "contentHeight":I
    if-nez v1, :cond_13

    .line 2068
    .end local v0    # "contentHeight":I
    :goto_12
    return v0

    .line 2059
    .restart local v0    # "contentHeight":I
    :cond_13
    invoke-virtual {p0, v7}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 2060
    .local v3, "scrollRange":I
    iget v4, p0, mScrollY:I

    .line 2061
    .local v4, "scrollY":I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2062
    .local v2, "overscrollBottom":I
    if-gez v4, :cond_28

    .line 2063
    sub-int/2addr v3, v4

    :cond_26
    :goto_26
    move v0, v3

    .line 2068
    goto :goto_12

    .line 2064
    :cond_28
    if-le v4, v2, :cond_26

    .line 2065
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_26
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1010
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1013
    .local v0, "action":I
    const/16 v10, 0x9

    if-ne v0, v10, :cond_59

    .line 1014
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v7

    .line 1016
    .local v7, "toolType":I
    const/4 v10, 0x1

    iput-boolean v10, p0, mNeedsHoverScroll:Z

    .line 1019
    invoke-virtual {p0}, isHoveringUIEnabled()Z

    move-result v10

    if-eqz v10, :cond_1a

    iget-boolean v10, p0, mHoverScrollEnable:Z

    if-nez v10, :cond_1d

    .line 1020
    :cond_1a
    const/4 v10, 0x0

    iput-boolean v10, p0, mNeedsHoverScroll:Z

    .line 1024
    :cond_1d
    iget-boolean v10, p0, mNeedsHoverScroll:Z

    if-eqz v10, :cond_4f

    const/4 v10, 0x2

    if-ne v7, v10, :cond_4f

    .line 1026
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_hovering"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_62

    const/4 v4, 0x1

    .line 1028
    .local v4, "isHoveringOn":Z
    :goto_36
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_hovering_list_scroll"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_64

    const/4 v3, 0x1

    .line 1031
    .local v3, "isHoverListScrollOn":Z
    :goto_48
    if-eqz v4, :cond_4c

    if-nez v3, :cond_4f

    .line 1032
    :cond_4c
    const/4 v10, 0x0

    iput-boolean v10, p0, mNeedsHoverScroll:Z

    .line 1037
    .end local v3    # "isHoverListScrollOn":Z
    .end local v4    # "isHoveringOn":Z
    :cond_4f
    iget-boolean v10, p0, mNeedsHoverScroll:Z

    if-eqz v10, :cond_59

    const/4 v10, 0x3

    if-ne v7, v10, :cond_59

    .line 1038
    const/4 v10, 0x0

    iput-boolean v10, p0, mNeedsHoverScroll:Z

    .line 1043
    .end local v7    # "toolType":I
    :cond_59
    iget-boolean v10, p0, mNeedsHoverScroll:Z

    if-nez v10, :cond_66

    .line 1044
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 1224
    :goto_61
    return v10

    .line 1026
    .restart local v7    # "toolType":I
    :cond_62
    const/4 v4, 0x0

    goto :goto_36

    .line 1028
    .restart local v4    # "isHoveringOn":Z
    :cond_64
    const/4 v3, 0x0

    goto :goto_48

    .line 1048
    .end local v4    # "isHoveringOn":Z
    .end local v7    # "toolType":I
    :cond_66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v8, v10

    .line 1049
    .local v8, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .line 1050
    .local v9, "y":I
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 1051
    .local v1, "childCount":I
    const/4 v2, 0x0

    .line 1052
    .local v2, "contentBottom":I
    invoke-direct {p0}, getScrollRange()I

    move-result v6

    .line 1055
    .local v6, "range":I
    iget-object v10, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    if-nez v10, :cond_84

    .line 1056
    new-instance v10, Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-direct {v10, p0}, Landroid/widget/ScrollView$HoverScrollHandler;-><init>(Landroid/widget/ScrollView;)V

    iput-object v10, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    .line 1059
    :cond_84
    iget v10, p0, mHoverTopAreaHeight:I

    if-lez v10, :cond_8c

    iget v10, p0, mHoverBottomAreaHeight:I

    if-gtz v10, :cond_ba

    .line 1060
    :cond_8c
    const/4 v10, 0x1

    const/high16 v11, 0x41c80000    # 25.0f

    iget-object v12, p0, mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, mHoverTopAreaHeight:I

    .line 1064
    const/4 v10, 0x1

    const/high16 v11, 0x41c80000    # 25.0f

    iget-object v12, p0, mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, mHoverBottomAreaHeight:I

    .line 1069
    :cond_ba
    if-eqz v1, :cond_c0

    .line 1070
    invoke-virtual {p0}, getHeight()I

    move-result v2

    .line 1073
    :cond_c0
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_170

    const/4 v5, 0x1

    .line 1075
    .local v5, "isPossibleTooltype":Z
    :goto_c9
    iget v10, p0, mHoverTopAreaHeight:I

    if-le v9, v10, :cond_d3

    iget v10, p0, mHoverBottomAreaHeight:I

    sub-int v10, v2, v10

    if-lt v9, v10, :cond_10d

    :cond_d3
    if-lez v8, :cond_10d

    invoke-virtual {p0}, getRight()I

    move-result v10

    if-gt v8, v10, :cond_10d

    if-eqz v6, :cond_10d

    if-ltz v9, :cond_eb

    iget v10, p0, mHoverTopAreaHeight:I

    if-gt v9, v10, :cond_eb

    iget v10, p0, mScrollY:I

    if-gtz v10, :cond_eb

    iget-boolean v10, p0, mIsHoverOverscrolled:Z

    if-nez v10, :cond_10d

    :cond_eb
    iget v10, p0, mHoverBottomAreaHeight:I

    sub-int v10, v2, v10

    if-lt v9, v10, :cond_fb

    if-gt v9, v2, :cond_fb

    iget v10, p0, mScrollY:I

    if-lt v10, v6, :cond_fb

    iget-boolean v10, p0, mIsHoverOverscrolled:Z

    if-nez v10, :cond_10d

    :cond_fb
    if-eqz v5, :cond_105

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    const/16 v11, 0x20

    if-eq v10, v11, :cond_10d

    :cond_105
    if-eqz v5, :cond_10d

    invoke-virtual {p0}, isLockScreenMode()Z

    move-result v10

    if-eqz v10, :cond_173

    .line 1081
    :cond_10d
    iget-object v10, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_120

    .line 1082
    iget-object v10, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 1083
    const/4 v10, 0x1

    invoke-direct {p0, v10}, showPointerIcon(I)Z

    .line 1086
    :cond_120
    iget-object v10, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_12f

    .line 1087
    iget-object v10, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 1090
    :cond_12f
    iget v10, p0, mHoverTopAreaHeight:I

    if-le v9, v10, :cond_139

    iget v10, p0, mHoverBottomAreaHeight:I

    sub-int v10, v2, v10

    if-lt v9, v10, :cond_141

    :cond_139
    if-lez v8, :cond_141

    invoke-virtual {p0}, getRight()I

    move-result v10

    if-le v8, v10, :cond_144

    .line 1091
    :cond_141
    const/4 v10, 0x0

    iput-boolean v10, p0, mIsHoverOverscrolled:Z

    .line 1094
    :cond_144
    iget-boolean v10, p0, mHoverAreaEnter:Z

    const/4 v11, 0x1

    if-eq v10, v11, :cond_151

    iget-wide v10, p0, mHoverScrollStartTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_155

    .line 1095
    :cond_151
    const/4 v10, 0x1

    invoke-direct {p0, v10}, showPointerIcon(I)Z

    .line 1097
    :cond_155
    const-wide/16 v10, 0x0

    iput-wide v10, p0, mHoverRecognitionStartTime:J

    .line 1098
    const-wide/16 v10, 0x0

    iput-wide v10, p0, mHoverScrollStartTime:J

    .line 1099
    const/4 v10, 0x0

    iput-boolean v10, p0, mHoverAreaEnter:Z

    .line 1102
    iget v10, p0, mQCstate:I

    if-eqz v10, :cond_16a

    .line 1103
    const/4 v10, 0x0

    iput v10, p0, mQCstate:I

    .line 1104
    invoke-virtual {p0}, postInvalidateOnAnimation()V

    .line 1107
    :cond_16a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    goto/16 :goto_61

    .line 1073
    .end local v5    # "isPossibleTooltype":Z
    :cond_170
    const/4 v5, 0x0

    goto/16 :goto_c9

    .line 1110
    .restart local v5    # "isPossibleTooltype":Z
    :cond_173
    iget-boolean v10, p0, mHoverAreaEnter:Z

    if-nez v10, :cond_17d

    .line 1111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, mHoverScrollStartTime:J

    .line 1113
    :cond_17d
    packed-switch v0, :pswitch_data_2ce

    .line 1224
    :cond_180
    :goto_180
    :pswitch_180
    const/4 v10, 0x1

    goto/16 :goto_61

    .line 1115
    :pswitch_183
    const/4 v10, 0x1

    iput-boolean v10, p0, mHoverAreaEnter:Z

    .line 1117
    if-ltz v9, :cond_1be

    iget v10, p0, mHoverTopAreaHeight:I

    if-gt v9, v10, :cond_1be

    .line 1119
    iget-object v10, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_180

    .line 1120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, mHoverRecognitionStartTime:J

    .line 1122
    const/16 v10, 0xb

    invoke-direct {p0, v10}, showPointerIcon(I)Z

    .line 1124
    const/4 v10, 0x2

    iput v10, p0, mHoverScrollDirection:I

    .line 1125
    iget-object v10, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 1128
    invoke-direct {p0}, isQCSupported()Z

    move-result v10

    if-eqz v10, :cond_180

    const/4 v10, -0x1

    invoke-virtual {p0, v10}, canScrollVertically(I)Z

    move-result v10

    if-eqz v10, :cond_180

    .line 1129
    const/4 v10, 0x2

    invoke-direct {p0, v10}, setupQuickController(I)V

    .line 1130
    const/4 v10, 0x1

    iput v10, p0, mQCstate:I

    goto :goto_180

    .line 1133
    :cond_1be
    iget v10, p0, mHoverBottomAreaHeight:I

    sub-int v10, v2, v10

    if-lt v9, v10, :cond_180

    if-gt v9, v2, :cond_180

    .line 1135
    iget-object v10, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_180

    .line 1136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, mHoverRecognitionStartTime:J

    .line 1138
    const/16 v10, 0xf

    invoke-direct {p0, v10}, showPointerIcon(I)Z

    .line 1140
    const/4 v10, 0x1

    iput v10, p0, mHoverScrollDirection:I

    .line 1141
    iget-object v10, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 1144
    invoke-direct {p0}, isQCSupported()Z

    move-result v10

    if-eqz v10, :cond_180

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, canScrollVertically(I)Z

    move-result v10

    if-eqz v10, :cond_180

    .line 1145
    const/4 v10, 0x4

    invoke-direct {p0, v10}, setupQuickController(I)V

    .line 1146
    const/4 v10, 0x1

    iput v10, p0, mQCstate:I

    goto :goto_180

    .line 1154
    :pswitch_1f8
    iget-boolean v10, p0, mHoverAreaEnter:Z

    if-nez v10, :cond_20a

    .line 1155
    const/4 v10, 0x1

    iput-boolean v10, p0, mHoverAreaEnter:Z

    .line 1156
    const/16 v10, 0xa

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1157
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    goto/16 :goto_61

    .line 1160
    :cond_20a
    if-ltz v9, :cond_250

    iget v10, p0, mHoverTopAreaHeight:I

    if-gt v9, v10, :cond_250

    .line 1162
    iget-object v10, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_180

    .line 1163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, mHoverRecognitionStartTime:J

    .line 1165
    iget-boolean v10, p0, mIsHoverOverscrolled:Z

    if-eqz v10, :cond_228

    iget v10, p0, mHoverScrollDirection:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_22d

    .line 1166
    :cond_228
    const/16 v10, 0xb

    invoke-direct {p0, v10}, showPointerIcon(I)Z

    .line 1169
    :cond_22d
    const/4 v10, 0x2

    iput v10, p0, mHoverScrollDirection:I

    .line 1170
    iget-object v10, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 1173
    invoke-direct {p0}, isQCSupported()Z

    move-result v10

    if-eqz v10, :cond_180

    iget v10, p0, mQCstate:I

    if-nez v10, :cond_180

    const/4 v10, -0x1

    invoke-virtual {p0, v10}, canScrollVertically(I)Z

    move-result v10

    if-eqz v10, :cond_180

    .line 1174
    const/4 v10, 0x2

    invoke-direct {p0, v10}, setupQuickController(I)V

    .line 1175
    const/4 v10, 0x1

    iput v10, p0, mQCstate:I

    goto/16 :goto_180

    .line 1178
    :cond_250
    iget v10, p0, mHoverBottomAreaHeight:I

    sub-int v10, v2, v10

    if-lt v9, v10, :cond_180

    if-gt v9, v2, :cond_180

    .line 1180
    iget-object v10, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_180

    .line 1181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, mHoverRecognitionStartTime:J

    .line 1183
    iget-boolean v10, p0, mIsHoverOverscrolled:Z

    if-eqz v10, :cond_270

    iget v10, p0, mHoverScrollDirection:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_275

    .line 1184
    :cond_270
    const/16 v10, 0xf

    invoke-direct {p0, v10}, showPointerIcon(I)Z

    .line 1187
    :cond_275
    const/4 v10, 0x1

    iput v10, p0, mHoverScrollDirection:I

    .line 1188
    iget-object v10, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 1191
    invoke-direct {p0}, isQCSupported()Z

    move-result v10

    if-eqz v10, :cond_180

    iget v10, p0, mQCstate:I

    if-nez v10, :cond_180

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, canScrollVertically(I)Z

    move-result v10

    if-eqz v10, :cond_180

    .line 1192
    const/4 v10, 0x4

    invoke-direct {p0, v10}, setupQuickController(I)V

    .line 1193
    const/4 v10, 0x1

    iput v10, p0, mQCstate:I

    goto/16 :goto_180

    .line 1201
    :pswitch_298
    iget-object v10, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_2a7

    .line 1202
    iget-object v10, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 1205
    :cond_2a7
    const/4 v10, 0x1

    invoke-direct {p0, v10}, showPointerIcon(I)Z

    .line 1207
    const-wide/16 v10, 0x0

    iput-wide v10, p0, mHoverRecognitionStartTime:J

    .line 1208
    const-wide/16 v10, 0x0

    iput-wide v10, p0, mHoverScrollStartTime:J

    .line 1209
    const/4 v10, 0x0

    iput-boolean v10, p0, mIsHoverOverscrolled:Z

    .line 1210
    const/4 v10, 0x0

    iput-boolean v10, p0, mHoverAreaEnter:Z

    .line 1213
    iget v10, p0, mQCstate:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2c7

    .line 1216
    iget-object v10, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x0

    iget v12, p0, QC_ICON_HIDE_DELAY:I

    int-to-long v12, v12

    invoke-virtual {v10, v11, v12, v13}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1219
    :cond_2c7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    goto/16 :goto_61

    .line 1113
    nop

    :pswitch_data_2ce
    .packed-switch 0x7
        :pswitch_1f8
        :pswitch_180
        :pswitch_183
        :pswitch_298
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 549
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected dispatchSipResizeAnimationState(Z)Z
    .registers 5
    .param p1, "isStart"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3202
    iput-boolean p1, p0, mSipResizeAnimationRunning:Z

    .line 3203
    iput v1, p0, mSipDelta:I

    .line 3204
    invoke-virtual {p0}, requestLayout()V

    .line 3205
    if-eqz p1, :cond_13

    .line 3206
    iget-object v0, p0, mRequestedChildRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 3213
    :cond_10
    :goto_10
    iput-boolean v2, p0, mCanScroll:Z

    .line 3214
    return v2

    .line 3208
    :cond_13
    iget-boolean v0, p0, mCanScroll:Z

    if-nez v0, :cond_10

    .line 3209
    iget-object v0, p0, mRequestedChildRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, scrollToChildRect(Landroid/graphics/Rect;Z)Z

    goto :goto_10
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 556
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 557
    .local v6, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 558
    .local v7, "y":I
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 559
    .local v1, "childCount":I
    const/4 v2, 0x0

    .line 560
    .local v2, "contentBottom":I
    invoke-direct {p0}, getScrollRange()I

    move-result v5

    .line 561
    .local v5, "range":I
    const/4 v4, 0x0

    .line 562
    .local v4, "needToScroll":Z
    invoke-static {}, Landroid/text/MultiSelection;->isNeedToScroll()Z

    move-result v4

    .line 565
    iget-object v8, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    if-nez v8, :cond_23

    .line 566
    new-instance v8, Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-direct {v8, p0}, Landroid/widget/ScrollView$HoverScrollHandler;-><init>(Landroid/widget/ScrollView;)V

    iput-object v8, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    .line 569
    :cond_23
    iget v8, p0, mHoverTopAreaHeight:I

    if-lez v8, :cond_2b

    iget v8, p0, mHoverBottomAreaHeight:I

    if-gtz v8, :cond_59

    .line 570
    :cond_2b
    const/4 v8, 0x1

    const/high16 v9, 0x41c80000    # 25.0f

    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, mHoverTopAreaHeight:I

    .line 574
    const/4 v8, 0x1

    const/high16 v9, 0x41c80000    # 25.0f

    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, mHoverBottomAreaHeight:I

    .line 579
    :cond_59
    if-eqz v1, :cond_5f

    .line 580
    invoke-virtual {p0}, getHeight()I

    move-result v2

    .line 583
    :cond_5f
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b5

    const/4 v3, 0x1

    .line 585
    .local v3, "isPossibleTooltype":Z
    :goto_68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 588
    .local v0, "action":I
    if-nez v0, :cond_fa

    .line 589
    iget v8, p0, mQCstate:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_ba

    .line 590
    iget-boolean v8, p0, mIsQCShown:Z

    if-eqz v8, :cond_b7

    iget-object v8, p0, mQCRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_b7

    .line 591
    iget-object v8, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_98

    .line 592
    iget-object v8, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 594
    :cond_98
    iget-object v8, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_a7

    .line 595
    iget-object v8, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 598
    :cond_a7
    iget-object v8, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 600
    const/4 v8, 0x2

    iput v8, p0, mQCstate:I

    .line 601
    invoke-virtual {p0}, postInvalidateOnAnimation()V

    .line 602
    const/4 v8, 0x1

    .line 721
    :goto_b4
    return v8

    .line 583
    .end local v0    # "action":I
    .end local v3    # "isPossibleTooltype":Z
    :cond_b5
    const/4 v3, 0x0

    goto :goto_68

    .line 605
    .restart local v0    # "action":I
    .restart local v3    # "isPossibleTooltype":Z
    :cond_b7
    const/4 v8, 0x0

    iput v8, p0, mQCstate:I

    .line 633
    :cond_ba
    iget v8, p0, mHoverTopAreaHeight:I

    if-le v7, v8, :cond_c4

    iget v8, p0, mHoverBottomAreaHeight:I

    sub-int v8, v2, v8

    if-lt v7, v8, :cond_d8

    :cond_c4
    if-lez v6, :cond_d8

    invoke-virtual {p0}, getRight()I

    move-result v8

    if-gt v6, v8, :cond_d8

    if-eqz v5, :cond_d8

    if-eqz v3, :cond_d8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    const/16 v9, 0x20

    if-eq v8, v9, :cond_139

    .line 636
    :cond_d8
    iget-object v8, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_e7

    .line 637
    iget-object v8, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 640
    :cond_e7
    const-wide/16 v8, 0x0

    iput-wide v8, p0, mHoverRecognitionStartTime:J

    .line 641
    const-wide/16 v8, 0x0

    iput-wide v8, p0, mHoverScrollStartTime:J

    .line 642
    const/4 v8, 0x0

    iput-boolean v8, p0, mHoverAreaEnter:Z

    .line 643
    const/4 v8, 0x0

    iput-boolean v8, p0, mIsHoverOverscrolled:Z

    .line 645
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto :goto_b4

    .line 608
    :cond_fa
    const/4 v8, 0x2

    if-ne v0, v8, :cond_104

    .line 609
    iget v8, p0, mQCstate:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_ba

    .line 611
    const/4 v8, 0x1

    goto :goto_b4

    .line 613
    :cond_104
    const/4 v8, 0x1

    if-eq v0, v8, :cond_10a

    const/4 v8, 0x3

    if-ne v0, v8, :cond_ba

    .line 614
    :cond_10a
    iget v8, p0, mQCstate:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_ba

    .line 616
    iget-object v8, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_11e

    .line 617
    iget-object v8, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 620
    :cond_11e
    iget-object v8, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_12d

    .line 621
    iget-object v8, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 624
    :cond_12d
    const/4 v8, 0x0

    iput-boolean v8, p0, mIsHoverOverscrolled:Z

    .line 627
    const/4 v8, 0x0

    iput v8, p0, mQCstate:I

    .line 628
    invoke-virtual {p0}, postInvalidateOnAnimation()V

    .line 629
    const/4 v8, 0x1

    goto/16 :goto_b4

    .line 648
    :cond_139
    iget-boolean v8, p0, mHoverAreaEnter:Z

    if-nez v8, :cond_143

    .line 649
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, mHoverScrollStartTime:J

    .line 651
    :cond_143
    packed-switch v0, :pswitch_data_200

    .line 721
    :goto_146
    :pswitch_146
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_b4

    .line 655
    :pswitch_14c
    if-eqz v4, :cond_1c8

    .line 656
    if-ltz v7, :cond_17c

    iget v8, p0, mHoverTopAreaHeight:I

    if-gt v7, v8, :cond_17c

    .line 658
    iget-boolean v8, p0, mHoverAreaEnter:Z

    if-nez v8, :cond_161

    .line 659
    const/4 v8, 0x1

    iput-boolean v8, p0, mHoverAreaEnter:Z

    .line 660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, mHoverScrollStartTime:J

    .line 663
    :cond_161
    iget-object v8, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_179

    .line 664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, mHoverRecognitionStartTime:J

    .line 666
    const/4 v8, 0x2

    iput v8, p0, mHoverScrollDirection:I

    .line 667
    iget-object v8, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 700
    :cond_179
    :goto_179
    iput-boolean v4, p0, mPreviousTextViewScroll:Z

    goto :goto_146

    .line 669
    :cond_17c
    iget v8, p0, mHoverBottomAreaHeight:I

    sub-int v8, v2, v8

    if-lt v7, v8, :cond_1aa

    if-gt v7, v2, :cond_1aa

    .line 671
    iget-boolean v8, p0, mHoverAreaEnter:Z

    if-nez v8, :cond_191

    .line 672
    const/4 v8, 0x1

    iput-boolean v8, p0, mHoverAreaEnter:Z

    .line 673
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, mHoverScrollStartTime:J

    .line 676
    :cond_191
    iget-object v8, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_179

    .line 677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, mHoverRecognitionStartTime:J

    .line 679
    const/4 v8, 0x1

    iput v8, p0, mHoverScrollDirection:I

    .line 680
    iget-object v8, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_179

    .line 683
    :cond_1aa
    const-wide/16 v8, 0x0

    iput-wide v8, p0, mHoverScrollStartTime:J

    .line 684
    const-wide/16 v8, 0x0

    iput-wide v8, p0, mHoverRecognitionStartTime:J

    .line 685
    const/4 v8, 0x0

    iput-boolean v8, p0, mHoverAreaEnter:Z

    .line 688
    iget-object v8, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_1c4

    .line 689
    iget-object v8, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 692
    :cond_1c4
    const/4 v8, 0x0

    iput-boolean v8, p0, mIsHoverOverscrolled:Z

    goto :goto_179

    .line 694
    :cond_1c8
    iget-boolean v8, p0, mPreviousTextViewScroll:Z

    if-eqz v8, :cond_179

    .line 696
    iget-object v8, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_179

    .line 697
    iget-object v8, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    goto :goto_179

    .line 706
    :pswitch_1dc
    iget-object v8, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_1eb

    .line 707
    iget-object v8, p0, mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 710
    :cond_1eb
    const-wide/16 v8, 0x0

    iput-wide v8, p0, mHoverRecognitionStartTime:J

    .line 711
    const-wide/16 v8, 0x0

    iput-wide v8, p0, mHoverScrollStartTime:J

    .line 712
    const/4 v8, 0x0

    iput-boolean v8, p0, mIsHoverOverscrolled:Z

    .line 713
    const/4 v8, 0x0

    iput-boolean v8, p0, mHoverAreaEnter:Z

    .line 715
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_b4

    .line 651
    nop

    :pswitch_data_200
    .packed-switch 0xd3
        :pswitch_146
        :pswitch_1dc
        :pswitch_14c
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2627
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2628
    iget-object v7, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_a9

    .line 2629
    iget v3, p0, mScrollY:I

    .line 2630
    .local v3, "scrollY":I
    invoke-virtual {p0}, getClipToPadding()Z

    move-result v0

    .line 2631
    .local v0, "clipToPadding":Z
    iget-object v7, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_54

    .line 2632
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2637
    .local v2, "restoreCount":I
    if-eqz v0, :cond_ad

    .line 2638
    invoke-virtual {p0}, getWidth()I

    move-result v7

    iget v8, p0, mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, mPaddingRight:I

    sub-int v6, v7, v8

    .line 2639
    .local v6, "width":I
    invoke-virtual {p0}, getHeight()I

    move-result v7

    iget v8, p0, mPaddingTop:I

    sub-int/2addr v7, v8

    iget v8, p0, mPaddingBottom:I

    sub-int v1, v7, v8

    .line 2640
    .local v1, "height":I
    iget v7, p0, mPaddingLeft:I

    int-to-float v4, v7

    .line 2641
    .local v4, "translateX":F
    iget v7, p0, mPaddingTop:I

    int-to-float v5, v7

    .line 2648
    .local v5, "translateY":F
    :goto_37
    const/4 v7, 0x0

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v5

    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2649
    iget-object v7, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, v6, v1}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2650
    iget-object v7, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 2651
    invoke-virtual {p0}, postInvalidateOnAnimation()V

    .line 2653
    :cond_51
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2655
    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    .end local v6    # "width":I
    :cond_54
    iget-object v7, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_a9

    .line 2656
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2661
    .restart local v2    # "restoreCount":I
    if-eqz v0, :cond_b8

    .line 2662
    invoke-virtual {p0}, getWidth()I

    move-result v7

    iget v8, p0, mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, mPaddingRight:I

    sub-int v6, v7, v8

    .line 2663
    .restart local v6    # "width":I
    invoke-virtual {p0}, getHeight()I

    move-result v7

    iget v8, p0, mPaddingTop:I

    sub-int/2addr v7, v8

    iget v8, p0, mPaddingBottom:I

    sub-int v1, v7, v8

    .line 2664
    .restart local v1    # "height":I
    iget v7, p0, mPaddingLeft:I

    int-to-float v4, v7

    .line 2665
    .restart local v4    # "translateX":F
    iget v7, p0, mPaddingTop:I

    int-to-float v5, v7

    .line 2672
    .restart local v5    # "translateY":F
    :goto_7e
    neg-int v7, v6

    int-to-float v7, v7

    add-float/2addr v7, v4

    invoke-direct {p0}, getScrollRange()I

    move-result v8

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v8, v1

    int-to-float v8, v8

    add-float/2addr v8, v5

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2674
    const/high16 v7, 0x43340000    # 180.0f

    int-to-float v8, v6

    const/4 v9, 0x0

    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2675
    iget-object v7, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, v6, v1}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2676
    iget-object v7, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_a6

    .line 2677
    invoke-virtual {p0}, postInvalidateOnAnimation()V

    .line 2679
    :cond_a6
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2685
    .end local v0    # "clipToPadding":Z
    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    .end local v3    # "scrollY":I
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    .end local v6    # "width":I
    :cond_a9
    invoke-direct {p0, p1}, drawQuickController(Landroid/graphics/Canvas;)V

    .line 2687
    return-void

    .line 2643
    .restart local v0    # "clipToPadding":Z
    .restart local v2    # "restoreCount":I
    .restart local v3    # "scrollY":I
    :cond_ad
    invoke-virtual {p0}, getWidth()I

    move-result v6

    .line 2644
    .restart local v6    # "width":I
    invoke-virtual {p0}, getHeight()I

    move-result v1

    .line 2645
    .restart local v1    # "height":I
    const/4 v4, 0x0

    .line 2646
    .restart local v4    # "translateX":F
    const/4 v5, 0x0

    .restart local v5    # "translateY":F
    goto :goto_37

    .line 2667
    .end local v1    # "height":I
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    .end local v6    # "width":I
    :cond_b8
    invoke-virtual {p0}, getWidth()I

    move-result v6

    .line 2668
    .restart local v6    # "width":I
    invoke-virtual {p0}, getHeight()I

    move-result v1

    .line 2669
    .restart local v1    # "height":I
    const/4 v4, 0x0

    .line 2670
    .restart local v4    # "translateX":F
    const/4 v5, 0x0

    .restart local v5    # "translateY":F
    goto :goto_7e
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 2749
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2750
    const-string v0, "fillViewport"

    iget-boolean v1, p0, mFillViewport:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 2751
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x21

    const/16 v5, 0x82

    .line 733
    iget-object v6, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 735
    invoke-direct {p0}, canScroll()Z

    move-result v6

    if-nez v6, :cond_38

    .line 736
    invoke-virtual {p0}, isFocused()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_37

    .line 737
    invoke-virtual {p0}, findFocus()Landroid/view/View;

    move-result-object v0

    .line 738
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_24

    const/4 v0, 0x0

    .line 739
    :cond_24
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 741
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_37

    if-eq v2, p0, :cond_37

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_37

    const/4 v3, 0x1

    .line 779
    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v2    # "nextFocused":Landroid/view/View;
    :cond_37
    :goto_37
    return v3

    .line 748
    :cond_38
    const/4 v1, 0x0

    .line 749
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_46

    .line 750
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_88

    :cond_46
    :goto_46
    move v3, v1

    .line 779
    goto :goto_37

    .line 752
    :sswitch_48
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5c

    .line 753
    invoke-virtual {p0, v4}, arrowScroll(I)Z

    move-result v1

    .line 758
    :goto_52
    if-eqz v1, :cond_46

    .line 759
    invoke-static {v4}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, playSoundEffect(I)V

    goto :goto_46

    .line 755
    :cond_5c
    invoke-virtual {p0, v4}, fullScroll(I)Z

    move-result v1

    goto :goto_52

    .line 763
    :sswitch_61
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_75

    .line 764
    invoke-virtual {p0, v5}, arrowScroll(I)Z

    move-result v1

    .line 769
    :goto_6b
    if-eqz v1, :cond_46

    .line 770
    invoke-static {v5}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, playSoundEffect(I)V

    goto :goto_46

    .line 766
    :cond_75
    invoke-virtual {p0, v5}, fullScroll(I)Z

    move-result v1

    goto :goto_6b

    .line 774
    :sswitch_7a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_85

    move v3, v4

    :goto_81
    invoke-virtual {p0, v3}, pageScroll(I)Z

    goto :goto_46

    :cond_85
    move v3, v5

    goto :goto_81

    .line 750
    nop

    :sswitch_data_88
    .sparse-switch
        0x13 -> :sswitch_48
        0x14 -> :sswitch_61
        0x3e -> :sswitch_7a
    .end sparse-switch
.end method

.method public fling(I)V
    .registers 15
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 2482
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    if-lez v0, :cond_3f

    .line 2483
    invoke-virtual {p0}, getHeight()I

    move-result v0

    iget v1, p0, mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, mPaddingTop:I

    sub-int v12, v0, v1

    .line 2484
    .local v12, "height":I
    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 2486
    .local v11, "bottom":I
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    iget v1, p0, mScrollX:I

    iget v2, p0, mScrollY:I

    sub-int v4, v11, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v12, 0x2

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 2489
    iget-object v0, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_3c

    .line 2490
    const-string v0, "ScrollView-fling"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2493
    :cond_3c
    invoke-virtual {p0}, postInvalidateOnAnimation()V

    .line 2495
    .end local v11    # "bottom":I
    .end local v12    # "height":I
    :cond_3f
    return-void
.end method

.method public fullScroll(I)Z
    .registers 9
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 1797
    const/16 v5, 0x82

    if-ne p1, v5, :cond_41

    const/4 v1, 0x1

    .line 1798
    .local v1, "down":Z
    :goto_6
    invoke-virtual {p0}, getHeight()I

    move-result v2

    .line 1800
    .local v2, "height":I
    iget-object v5, p0, mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 1801
    iget-object v4, p0, mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1803
    if-eqz v1, :cond_34

    .line 1804
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 1805
    .local v0, "count":I
    if-lez v0, :cond_34

    .line 1806
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1807
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, mPaddingBottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1808
    iget-object v4, p0, mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1812
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_34
    iget-object v4, p0, mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_41
    move v1, v4

    .line 1797
    goto :goto_6
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1619
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 6

    .prologue
    .line 382
    invoke-virtual {p0}, getChildCount()I

    move-result v3

    if-nez v3, :cond_8

    .line 383
    const/4 v3, 0x0

    .line 393
    :goto_7
    return v3

    .line 386
    :cond_8
    invoke-virtual {p0}, getVerticalFadingEdgeLength()I

    move-result v1

    .line 387
    .local v1, "length":I
    invoke-virtual {p0}, getHeight()I

    move-result v3

    iget v4, p0, mPaddingBottom:I

    sub-int v0, v3, v4

    .line 388
    .local v0, "bottomEdge":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, mScrollY:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 389
    .local v2, "span":I
    if-ge v2, v1, :cond_28

    .line 390
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_7

    .line 393
    :cond_28
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_7
.end method

.method public getMaxScrollAmount()I
    .registers 4

    .prologue
    .line 401
    const/high16 v0, 0x3f000000    # 0.5f

    iget v1, p0, mBottom:I

    iget v2, p0, mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 4

    .prologue
    .line 368
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 369
    const/4 v1, 0x0

    .line 377
    :goto_7
    return v1

    .line 372
    :cond_8
    invoke-virtual {p0}, getVerticalFadingEdgeLength()I

    move-result v0

    .line 373
    .local v0, "length":I
    iget v1, p0, mScrollY:I

    if-ge v1, v0, :cond_16

    .line 374
    iget v1, p0, mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_7

    .line 377
    :cond_16
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_7
.end method

.method public getTouchSlop()I
    .registers 2

    .prologue
    .line 322
    iget v0, p0, mTouchSlop:I

    return v0
.end method

.method protected hapticScrollTo(I)V
    .registers 4
    .param p1, "y"    # I

    .prologue
    .line 1509
    iget v0, p0, mLastHapticScrollY:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, mPixelThresholdY:I

    if-le v0, v1, :cond_18

    iget v0, p0, mLastScrollY:I

    iget v1, p0, mScrollY:I

    if-eq v0, v1, :cond_18

    .line 1511
    iput p1, p0, mLastHapticScrollY:I

    .line 1512
    iget v0, p0, mScrollY:I

    iput v0, p0, mLastScrollY:I

    .line 1514
    :cond_18
    return-void
.end method

.method public isFillViewport()Z
    .registers 2

    .prologue
    .line 474
    iget-boolean v0, p0, mFillViewport:Z

    return v0
.end method

.method public isLockScreenMode()Z
    .registers 8

    .prologue
    .line 955
    iget-object v5, p0, mContext:Landroid/content/Context;

    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 956
    .local v3, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v2, 0x0

    .line 957
    .local v2, "isLockState":Z
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 959
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 960
    .local v4, "windowManager":Landroid/view/IWindowManager;
    const/4 v0, 0x1

    .line 961
    .local v0, "isCoverOpen":Z
    if-eqz v4, :cond_22

    .line 964
    const/4 v0, 0x1

    .line 970
    :cond_22
    const/4 v1, 0x0

    .line 971
    .local v1, "isLockScreenAndCoverOpen":Z
    if-nez v2, :cond_27

    if-nez v0, :cond_29

    :cond_27
    const/4 v1, 0x1

    .line 973
    :goto_28
    return v1

    .line 971
    :cond_29
    const/4 v1, 0x0

    goto :goto_28
.end method

.method public isSmoothScrollingEnabled()Z
    .registers 2

    .prologue
    .line 497
    iget-boolean v0, p0, mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    .line 2079
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2084
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, mPaddingLeft:I

    iget v4, p0, mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, getChildMeasureSpec(III)I

    move-result v1

    .line 2087
    .local v1, "childWidthMeasureSpec":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .line 2090
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2091
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    .line 2096
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2098
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, mPaddingLeft:I

    iget v4, p0, mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, getChildMeasureSpec(III)I

    move-result v1

    .line 2101
    .local v1, "childWidthMeasureSpec":I
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .line 2104
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2105
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 2578
    iget-boolean v0, p0, USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_d

    .line 2579
    invoke-virtual {p0}, getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2581
    :cond_d
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2582
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2368
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2370
    iget-object v0, p0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_f

    .line 2371
    iget-object v0, p0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2372
    iput-object v1, p0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 2374
    :cond_f
    iget-object v0, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1a

    .line 2375
    iget-object v0, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2376
    iput-object v1, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2378
    :cond_1a
    iget-boolean v0, p0, USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_27

    .line 2379
    invoke-virtual {p0}, getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2383
    :cond_27
    iget v0, p0, mQCstate:I

    if-eqz v0, :cond_2e

    .line 2384
    const/4 v0, 0x0

    iput v0, p0, mQCstate:I

    .line 2386
    :cond_2e
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_f

    .line 1456
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_42

    .line 1479
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_13
    return v5

    .line 1458
    :pswitch_14
    iget-boolean v5, p0, mIsBeingDragged:Z

    if-nez v5, :cond_f

    .line 1459
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    .line 1460
    .local v4, "vscroll":F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_f

    .line 1461
    invoke-virtual {p0}, getVerticalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v0, v5

    .line 1462
    .local v0, "delta":I
    invoke-direct {p0}, getScrollRange()I

    move-result v3

    .line 1463
    .local v3, "range":I
    iget v2, p0, mScrollY:I

    .line 1464
    .local v2, "oldScrollY":I
    sub-int v1, v2, v0

    .line 1465
    .local v1, "newScrollY":I
    if-gez v1, :cond_3d

    .line 1466
    const/4 v1, 0x0

    .line 1470
    :cond_34
    :goto_34
    if-eq v1, v2, :cond_f

    .line 1471
    iget v5, p0, mScrollX:I

    invoke-super {p0, v5, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1472
    const/4 v5, 0x1

    goto :goto_13

    .line 1467
    :cond_3d
    if-le v1, v3, :cond_34

    .line 1468
    move v1, v3

    goto :goto_34

    .line 1456
    nop

    :pswitch_data_42
    .packed-switch 0x8
        :pswitch_14
    .end packed-switch
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1646
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1647
    invoke-direct {p0}, getScrollRange()I

    move-result v1

    if-lez v1, :cond_24

    const/4 v0, 0x1

    .line 1648
    .local v0, "scrollable":Z
    :goto_a
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1649
    iget v1, p0, mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 1650
    iget v1, p0, mScrollY:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1651
    iget v1, p0, mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 1652
    invoke-direct {p0}, getScrollRange()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1653
    return-void

    .line 1647
    .end local v0    # "scrollable":Z
    :cond_24
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1625
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1626
    invoke-virtual {p0}, isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1627
    invoke-direct {p0}, getScrollRange()I

    move-result v0

    .line 1628
    .local v0, "scrollRange":I
    if-lez v0, :cond_2f

    .line 1629
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1630
    iget v1, p0, mScrollY:I

    if-lez v1, :cond_21

    .line 1631
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1633
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1635
    :cond_21
    iget v1, p0, mScrollY:I

    if-ge v1, v0, :cond_2f

    .line 1636
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1637
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1641
    .end local v0    # "scrollRange":I
    :cond_2f
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 837
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 838
    .local v7, "action":I
    if-ne v7, v4, :cond_f

    iget-boolean v1, p0, mIsBeingDragged:Z

    if-eqz v1, :cond_f

    .line 945
    :goto_e
    return v0

    .line 845
    :cond_f
    invoke-virtual {p0}, getScrollY()I

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {p0, v0}, canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_1d

    move v0, v3

    .line 846
    goto :goto_e

    .line 849
    :cond_1d
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_fe

    .line 945
    :cond_22
    :goto_22
    :pswitch_22
    iget-boolean v0, p0, mIsBeingDragged:Z

    goto :goto_e

    .line 860
    :pswitch_25
    iget v8, p0, mActivePointerId:I

    .line 861
    .local v8, "activePointerId":I
    if-eq v8, v2, :cond_22

    .line 866
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 867
    .local v10, "pointerIndex":I
    if-ne v10, v2, :cond_4e

    .line 868
    const-string v0, "ScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in onInterceptTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 873
    :cond_4e
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v11, v1

    .line 874
    .local v11, "y":I
    iget v1, p0, mLastMotionY:I

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 875
    .local v12, "yDiff":I
    iget v1, p0, mTouchSlop:I

    if-le v12, v1, :cond_22

    invoke-virtual {p0}, getNestedScrollAxes()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_22

    .line 876
    iput-boolean v0, p0, mIsBeingDragged:Z

    .line 877
    iput v11, p0, mLastMotionY:I

    .line 878
    invoke-direct {p0}, initVelocityTrackerIfNotExists()V

    .line 879
    iget-object v1, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 880
    iput v3, p0, mNestedYOffset:I

    .line 881
    iget-object v1, p0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v1, :cond_81

    .line 882
    const-string v1, "ScrollView-scroll"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    iput-object v1, p0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 884
    :cond_81
    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 885
    .local v9, "parent":Landroid/view/ViewParent;
    if-eqz v9, :cond_22

    .line 886
    invoke-interface {v9, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_22

    .line 893
    .end local v8    # "activePointerId":I
    .end local v9    # "parent":Landroid/view/ViewParent;
    .end local v10    # "pointerIndex":I
    .end local v11    # "y":I
    .end local v12    # "yDiff":I
    :pswitch_8b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v11, v1

    .line 894
    .restart local v11    # "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1, v11}, inChild(II)Z

    move-result v1

    if-nez v1, :cond_a1

    .line 895
    iput-boolean v3, p0, mIsBeingDragged:Z

    .line 896
    invoke-direct {p0}, recycleVelocityTracker()V

    goto :goto_22

    .line 904
    :cond_a1
    iput v11, p0, mLastMotionY:I

    .line 905
    iget-boolean v1, p0, USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_a9

    .line 906
    iput v11, p0, mLastHapticScrollY:I

    .line 908
    :cond_a9
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, mActivePointerId:I

    .line 910
    invoke-direct {p0}, initOrResetVelocityTracker()V

    .line 911
    iget-object v1, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 917
    iget-object v1, p0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_c0

    move v3, v0

    :cond_c0
    iput-boolean v3, p0, mIsBeingDragged:Z

    .line 918
    iget-boolean v0, p0, mIsBeingDragged:Z

    if-eqz v0, :cond_d2

    iget-object v0, p0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_d2

    .line 919
    const-string v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 921
    :cond_d2
    invoke-virtual {p0, v4}, startNestedScroll(I)Z

    goto/16 :goto_22

    .line 928
    .end local v11    # "y":I
    :pswitch_d7
    iput-boolean v3, p0, mIsBeingDragged:Z

    .line 929
    iput v2, p0, mActivePointerId:I

    .line 930
    invoke-direct {p0}, recycleVelocityTracker()V

    .line 931
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    iget v1, p0, mScrollX:I

    iget v2, p0, mScrollY:I

    invoke-direct {p0}, getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 932
    invoke-virtual {p0}, postInvalidateOnAnimation()V

    .line 934
    :cond_f3
    invoke-virtual {p0}, stopNestedScroll()V

    goto/16 :goto_22

    .line 937
    :pswitch_f8
    invoke-direct {p0, p1}, onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_22

    .line 849
    nop

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_8b
        :pswitch_d7
        :pswitch_25
        :pswitch_d7
        :pswitch_22
        :pswitch_22
        :pswitch_f8
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 2402
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2403
    iput-boolean v2, p0, mIsLayoutDirty:Z

    .line 2405
    iget-object v3, p0, mChildToScrollTo:Landroid/view/View;

    if-eqz v3, :cond_18

    iget-object v3, p0, mChildToScrollTo:Landroid/view/View;

    invoke-static {v3, p0}, isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2406
    iget-object v3, p0, mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v3}, scrollToChild(Landroid/view/View;)V

    .line 2408
    :cond_18
    iput-object v4, p0, mChildToScrollTo:Landroid/view/View;

    .line 2410
    invoke-virtual {p0}, isLaidOut()Z

    move-result v3

    if-nez v3, :cond_4e

    .line 2411
    iget-object v3, p0, mSavedState:Landroid/widget/ScrollView$SavedState;

    if-eqz v3, :cond_2c

    .line 2412
    iget-object v3, p0, mSavedState:Landroid/widget/ScrollView$SavedState;

    iget v3, v3, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    iput v3, p0, mScrollY:I

    .line 2413
    iput-object v4, p0, mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 2416
    :cond_2c
    invoke-virtual {p0}, getChildCount()I

    move-result v3

    if-lez v3, :cond_56

    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 2417
    .local v0, "childHeight":I
    :goto_3a
    sub-int v3, p5, p3

    iget v4, p0, mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int v3, v0, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2421
    .local v1, "scrollRange":I
    iget v3, p0, mScrollY:I

    if-le v3, v1, :cond_58

    .line 2422
    iput v1, p0, mScrollY:I

    .line 2429
    .end local v0    # "childHeight":I
    .end local v1    # "scrollRange":I
    :cond_4e
    :goto_4e
    iget v2, p0, mScrollX:I

    iget v3, p0, mScrollY:I

    invoke-virtual {p0, v2, v3}, scrollTo(II)V

    .line 2430
    return-void

    :cond_56
    move v0, v2

    .line 2416
    goto :goto_3a

    .line 2423
    .restart local v0    # "childHeight":I
    .restart local v1    # "scrollRange":I
    :cond_58
    iget v3, p0, mScrollY:I

    if-gez v3, :cond_4e

    .line 2424
    iput v2, p0, mScrollY:I

    goto :goto_4e
.end method

.method protected onMeasure(II)V
    .registers 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 510
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 512
    iget-boolean v9, p0, mFillViewport:Z

    if-nez v9, :cond_8

    .line 544
    :cond_7
    :goto_7
    return-void

    .line 516
    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 517
    .local v4, "heightMode":I
    if-eqz v4, :cond_7

    .line 521
    invoke-virtual {p0}, getChildCount()I

    move-result v9

    if-lez v9, :cond_7

    .line 522
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 523
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v3

    .line 524
    .local v3, "height":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-ge v9, v3, :cond_7

    .line 527
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 528
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v7, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 529
    .local v7, "targetSdkVersion":I
    const/16 v9, 0x17

    if-lt v7, v9, :cond_61

    .line 530
    iget v9, p0, mPaddingLeft:I

    iget v10, p0, mPaddingRight:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v8, v9, v10

    .line 531
    .local v8, "widthPadding":I
    iget v9, p0, mPaddingTop:I

    iget v10, p0, mPaddingBottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v5, v9, v10

    .line 537
    .local v5, "heightPadding":I
    :goto_4f
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v8, v9}, getChildMeasureSpec(III)I

    move-result v2

    .line 539
    .local v2, "childWidthMeasureSpec":I
    sub-int v9, v3, v5

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 541
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_7

    .line 533
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v5    # "heightPadding":I
    .end local v8    # "widthPadding":I
    :cond_61
    iget v9, p0, mPaddingLeft:I

    iget v10, p0, mPaddingRight:I

    add-int v8, v9, v10

    .line 534
    .restart local v8    # "widthPadding":I
    iget v9, p0, mPaddingTop:I

    iget v10, p0, mPaddingBottom:I

    add-int v5, v9, v10

    .restart local v5    # "heightPadding":I
    goto :goto_4f
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 2618
    if-nez p4, :cond_8

    .line 2619
    float-to-int v0, p3

    invoke-direct {p0, v0}, flingWithNestedDispatch(I)V

    .line 2620
    const/4 v0, 0x1

    .line 2622
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 13
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    const/4 v1, 0x0

    .line 2606
    iget v6, p0, mScrollY:I

    .line 2607
    .local v6, "oldScrollY":I
    invoke-virtual {p0, v1, p5}, scrollBy(II)V

    .line 2608
    iget v0, p0, mScrollY:I

    sub-int v2, v0, v6

    .line 2609
    .local v2, "myConsumed":I
    sub-int v4, p5, v2

    .line 2610
    .local v4, "myUnconsumed":I
    const/4 v5, 0x0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, dispatchNestedScroll(IIII[I)Z

    .line 2611
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 2591
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 2592
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, startNestedScroll(I)Z

    .line 2593
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 14
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1486
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1487
    iget v7, p0, mScrollX:I

    .line 1488
    .local v7, "oldX":I
    iget v8, p0, mScrollY:I

    .line 1489
    .local v8, "oldY":I
    iput p1, p0, mScrollX:I

    .line 1490
    iput p2, p0, mScrollY:I

    .line 1491
    invoke-virtual {p0}, invalidateParentIfNeeded()V

    .line 1492
    iget v0, p0, mScrollX:I

    iget v1, p0, mScrollY:I

    invoke-virtual {p0, v0, v1, v7, v8}, onScrollChanged(IIII)V

    .line 1493
    if-eqz p4, :cond_2c

    .line 1494
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    iget v1, p0, mScrollX:I

    iget v2, p0, mScrollY:I

    invoke-direct {p0}, getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 1500
    .end local v7    # "oldX":I
    .end local v8    # "oldY":I
    :cond_2c
    :goto_2c
    invoke-virtual {p0}, awakenScrollBars()Z

    .line 1501
    return-void

    .line 1497
    :cond_30
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_2c
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 7
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 2314
    const/4 v2, 0x2

    if-ne p1, v2, :cond_14

    .line 2315
    const/16 p1, 0x82

    .line 2320
    :cond_6
    :goto_6
    if-nez p2, :cond_1a

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2325
    .local v0, "nextFocus":Landroid/view/View;
    :goto_11
    if-nez v0, :cond_23

    .line 2333
    :cond_13
    :goto_13
    return v1

    .line 2316
    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_14
    const/4 v2, 0x1

    if-ne p1, v2, :cond_6

    .line 2317
    const/16 p1, 0x21

    goto :goto_6

    .line 2320
    :cond_1a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_11

    .line 2329
    .restart local v0    # "nextFocus":Landroid/view/View;
    :cond_23
    invoke-direct {p0, v0}, isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 2333
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_13
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2721
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_10

    instance-of v1, p1, Landroid/widget/ScrollView$SavedState;

    if-nez v1, :cond_14

    .line 2724
    :cond_10
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2731
    :goto_13
    return-void

    :cond_14
    move-object v0, p1

    .line 2727
    check-cast v0, Landroid/widget/ScrollView$SavedState;

    .line 2728
    .local v0, "ss":Landroid/widget/ScrollView$SavedState;
    invoke-virtual {v0}, Landroid/widget/ScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2729
    iput-object v0, p0, mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 2730
    invoke-virtual {p0}, requestLayout()V

    goto :goto_13
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .prologue
    .line 2735
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x12

    if-gt v2, v3, :cond_11

    .line 2738
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2743
    :goto_10
    return-object v0

    .line 2740
    :cond_11
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 2741
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/ScrollView$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2742
    .local v0, "ss":Landroid/widget/ScrollView$SavedState;
    iget v2, p0, mScrollY:I

    iput v2, v0, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    goto :goto_10
.end method

.method protected onSizeChanged(IIII)V
    .registers 9
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v2, 0x0

    .line 2434
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2436
    invoke-virtual {p0}, findFocus()Landroid/view/View;

    move-result-object v0

    .line 2437
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_c

    if-ne p0, v0, :cond_d

    .line 2460
    :cond_c
    :goto_c
    return-void

    .line 2445
    :cond_d
    iget-boolean v3, p0, mSipResizeAnimationRunning:Z

    if-nez v3, :cond_17

    invoke-direct {p0, v0, v2, p4}, isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2446
    :cond_17
    iget v3, p0, mSipDelta:I

    if-le p4, p2, :cond_1d

    sub-int v2, p4, p2

    :cond_1d
    add-int/2addr v2, v3

    iput v2, p0, mSipDelta:I

    .line 2448
    iget-boolean v2, p0, mSipResizeAnimationRunning:Z

    if-eqz v2, :cond_27

    .line 2449
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 2452
    :cond_27
    iget-boolean v2, p0, mCanScroll:Z

    if-eqz v2, :cond_c

    .line 2453
    iget-object v2, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2454
    iget-object v2, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2455
    iget-object v2, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 2456
    .local v1, "scrollDelta":I
    invoke-direct {p0, v1}, doScrollY(I)V

    goto :goto_c
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 2586
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 2600
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 2601
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 35
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1229
    invoke-direct/range {p0 .. p0}, initVelocityTrackerIfNotExists()V

    .line 1231
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v31

    .line 1233
    .local v31, "vtev":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v21

    .line 1235
    .local v21, "actionMasked":I
    if-nez v21, :cond_12

    .line 1236
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mNestedYOffset:I

    .line 1238
    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, mNestedYOffset:I

    int-to-float v3, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1240
    packed-switch v21, :pswitch_data_38e

    .line 1393
    :cond_20
    :goto_20
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v2, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_2f

    .line 1394
    move-object/from16 v0, p0

    iget-object v2, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1396
    :cond_2f
    invoke-virtual/range {v31 .. v31}, Landroid/view/MotionEvent;->recycle()V

    .line 1397
    const/4 v2, 0x1

    :goto_33
    return v2

    .line 1242
    :pswitch_34
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v2

    if-nez v2, :cond_3c

    .line 1243
    const/4 v2, 0x0

    goto :goto_33

    .line 1245
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_97

    const/4 v2, 0x1

    :goto_47
    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsBeingDragged:Z

    if-eqz v2, :cond_59

    .line 1246
    invoke-virtual/range {p0 .. p0}, getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 1247
    .local v28, "parent":Landroid/view/ViewParent;
    if-eqz v28, :cond_59

    .line 1248
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1256
    .end local v28    # "parent":Landroid/view/ViewParent;
    :cond_59
    move-object/from16 v0, p0

    iget-object v2, v0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_7c

    .line 1257
    move-object/from16 v0, p0

    iget-object v2, v0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1258
    move-object/from16 v0, p0

    iget-object v2, v0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v2, :cond_7c

    .line 1259
    move-object/from16 v0, p0

    iget-object v2, v0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v2}, Landroid/os/StrictMode$Span;->finish()V

    .line 1260
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1265
    :cond_7c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, mLastMotionY:I

    .line 1266
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mActivePointerId:I

    .line 1267
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, startNestedScroll(I)Z

    goto :goto_20

    .line 1245
    :cond_97
    const/4 v2, 0x0

    goto :goto_47

    .line 1271
    :pswitch_99
    move-object/from16 v0, p0

    iget v2, v0, mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v22

    .line 1272
    .local v22, "activePointerIndex":I
    const/4 v2, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_da

    .line 1273
    const/16 v22, 0x0

    .line 1274
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mActivePointerId:I

    .line 1275
    const-string v2, "ScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid pointerId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, mActivePointerId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " in onTouchEvent"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 1279
    :cond_da
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v32, v0

    .line 1280
    .local v32, "y":I
    move-object/from16 v0, p0

    iget v2, v0, mLastMotionY:I

    sub-int v4, v2, v32

    .line 1281
    .local v4, "deltaY":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v5, v0, mScrollOffset:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v3, v5}, dispatchNestedPreScroll(II[I[I)Z

    move-result v2

    if-eqz v2, :cond_122

    .line 1282
    move-object/from16 v0, p0

    iget-object v2, v0, mScrollConsumed:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v4, v2

    .line 1283
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1284
    move-object/from16 v0, p0

    iget v2, v0, mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, mNestedYOffset:I

    .line 1286
    :cond_122
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsBeingDragged:Z

    if-nez v2, :cond_14a

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, mTouchSlop:I

    if-le v2, v3, :cond_14a

    .line 1287
    invoke-virtual/range {p0 .. p0}, getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 1288
    .restart local v28    # "parent":Landroid/view/ViewParent;
    if-eqz v28, :cond_13e

    .line 1289
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1291
    :cond_13e
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsBeingDragged:Z

    .line 1292
    if-lez v4, :cond_1e4

    .line 1293
    move-object/from16 v0, p0

    iget v2, v0, mTouchSlop:I

    sub-int/2addr v4, v2

    .line 1298
    .end local v28    # "parent":Landroid/view/ViewParent;
    :cond_14a
    :goto_14a
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsBeingDragged:Z

    if-eqz v2, :cond_20

    .line 1300
    move-object/from16 v0, p0

    iget-object v2, v0, mScrollOffset:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int v2, v32, v2

    move-object/from16 v0, p0

    iput v2, v0, mLastMotionY:I

    .line 1302
    move-object/from16 v0, p0

    iget v0, v0, mScrollY:I

    move/from16 v26, v0

    .line 1303
    .local v26, "oldY":I
    invoke-direct/range {p0 .. p0}, getScrollRange()I

    move-result v8

    .line 1304
    .local v8, "range":I
    invoke-virtual/range {p0 .. p0}, getOverScrollMode()I

    move-result v27

    .line 1305
    .local v27, "overscrollMode":I
    if-eqz v27, :cond_174

    const/4 v2, 0x1

    move/from16 v0, v27

    if-ne v0, v2, :cond_1eb

    if-lez v8, :cond_1eb

    :cond_174
    const/16 v23, 0x1

    .line 1310
    .local v23, "canOverscroll":Z
    :goto_176
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, mScrollY:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, mOverscrollDistance:I

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, overScrollBy(IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_1ee

    invoke-virtual/range {p0 .. p0}, hasNestedScrollingParent()Z

    move-result v2

    if-nez v2, :cond_1ee

    .line 1313
    move-object/from16 v0, p0

    iget-object v2, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_19e

    .line 1314
    move-object/from16 v0, p0

    iget-object v2, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 1323
    :cond_19e
    :goto_19e
    move-object/from16 v0, p0

    iget v2, v0, mScrollY:I

    sub-int v11, v2, v26

    .line 1324
    .local v11, "scrolledDeltaY":I
    sub-int v13, v4, v11

    .line 1325
    .local v13, "unconsumedY":I
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, mScrollOffset:[I

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, dispatchNestedScroll(IIII[I)Z

    move-result v2

    if-eqz v2, :cond_1fc

    .line 1326
    move-object/from16 v0, p0

    iget v2, v0, mLastMotionY:I

    move-object/from16 v0, p0

    iget-object v3, v0, mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, mLastMotionY:I

    .line 1327
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1328
    move-object/from16 v0, p0

    iget v2, v0, mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, mNestedYOffset:I

    goto/16 :goto_20

    .line 1295
    .end local v8    # "range":I
    .end local v11    # "scrolledDeltaY":I
    .end local v13    # "unconsumedY":I
    .end local v23    # "canOverscroll":Z
    .end local v26    # "oldY":I
    .end local v27    # "overscrollMode":I
    .restart local v28    # "parent":Landroid/view/ViewParent;
    :cond_1e4
    move-object/from16 v0, p0

    iget v2, v0, mTouchSlop:I

    add-int/2addr v4, v2

    goto/16 :goto_14a

    .line 1305
    .end local v28    # "parent":Landroid/view/ViewParent;
    .restart local v8    # "range":I
    .restart local v26    # "oldY":I
    .restart local v27    # "overscrollMode":I
    :cond_1eb
    const/16 v23, 0x0

    goto :goto_176

    .line 1318
    .restart local v23    # "canOverscroll":Z
    :cond_1ee
    move-object/from16 v0, p0

    iget-boolean v2, v0, USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_19e

    .line 1319
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, hapticScrollTo(I)V

    goto :goto_19e

    .line 1329
    .restart local v11    # "scrolledDeltaY":I
    .restart local v13    # "unconsumedY":I
    :cond_1fc
    if-eqz v23, :cond_20

    .line 1330
    add-int v29, v26, v4

    .line 1331
    .local v29, "pulledToY":I
    if-gez v29, :cond_24e

    .line 1332
    move-object/from16 v0, p0

    iget-object v2, v0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v2, v0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_22f

    .line 1335
    move-object/from16 v0, p0

    iget-object v2, v0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1344
    :cond_22f
    :goto_22f
    move-object/from16 v0, p0

    iget-object v2, v0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_249

    move-object/from16 v0, p0

    iget-object v2, v0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_20

    .line 1346
    :cond_249
    invoke-virtual/range {p0 .. p0}, postInvalidateOnAnimation()V

    goto/16 :goto_20

    .line 1337
    :cond_24e
    move/from16 v0, v29

    if-le v0, v8, :cond_22f

    .line 1338
    move-object/from16 v0, p0

    iget-object v2, v0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 1340
    move-object/from16 v0, p0

    iget-object v2, v0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_22f

    .line 1341
    move-object/from16 v0, p0

    iget-object v2, v0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_22f

    .line 1352
    .end local v4    # "deltaY":I
    .end local v8    # "range":I
    .end local v11    # "scrolledDeltaY":I
    .end local v13    # "unconsumedY":I
    .end local v22    # "activePointerIndex":I
    .end local v23    # "canOverscroll":Z
    .end local v26    # "oldY":I
    .end local v27    # "overscrollMode":I
    .end local v29    # "pulledToY":I
    .end local v32    # "y":I
    :pswitch_283
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsBeingDragged:Z

    if-eqz v2, :cond_20

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v30, v0

    .line 1354
    .local v30, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget v3, v0, mMaximumVelocity:I

    int-to-float v3, v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1355
    move-object/from16 v0, p0

    iget v2, v0, mActivePointerId:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v25, v0

    .line 1357
    .local v25, "initialVelocity":I
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, mMinimumVelocity:I

    if-le v2, v3, :cond_2c4

    .line 1358
    move/from16 v0, v25

    neg-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, flingWithNestedDispatch(I)V

    .line 1364
    :cond_2ba
    :goto_2ba
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, mActivePointerId:I

    .line 1365
    invoke-direct/range {p0 .. p0}, endDrag()V

    goto/16 :goto_20

    .line 1359
    :cond_2c4
    move-object/from16 v0, p0

    iget-object v14, v0, mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v15, v0, mScrollX:I

    move-object/from16 v0, p0

    iget v0, v0, mScrollY:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, getScrollRange()I

    move-result v20

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_2ba

    .line 1361
    invoke-virtual/range {p0 .. p0}, postInvalidateOnAnimation()V

    goto :goto_2ba

    .line 1369
    .end local v25    # "initialVelocity":I
    .end local v30    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_2e6
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsBeingDragged:Z

    if-eqz v2, :cond_20

    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v2

    if-lez v2, :cond_20

    .line 1370
    move-object/from16 v0, p0

    iget-object v14, v0, mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v15, v0, mScrollX:I

    move-object/from16 v0, p0

    iget v0, v0, mScrollY:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, getScrollRange()I

    move-result v20

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_313

    .line 1371
    invoke-virtual/range {p0 .. p0}, postInvalidateOnAnimation()V

    .line 1373
    :cond_313
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, mActivePointerId:I

    .line 1374
    invoke-direct/range {p0 .. p0}, endDrag()V

    goto/16 :goto_20

    .line 1378
    :pswitch_31d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v24

    .line 1379
    .local v24, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, mLastMotionY:I

    .line 1380
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mActivePointerId:I

    goto/16 :goto_20

    .line 1384
    .end local v24    # "index":I
    :pswitch_33c
    invoke-direct/range {p0 .. p1}, onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1386
    move-object/from16 v0, p0

    iget v2, v0, mActivePointerId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_352

    move-object/from16 v0, p0

    iget v2, v0, mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_376

    .line 1387
    :cond_352
    const-string v2, "ScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid pointerId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, mActivePointerId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " in onTouchEvent"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 1390
    :cond_376
    move-object/from16 v0, p0

    iget v2, v0, mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, mLastMotionY:I

    goto/16 :goto_20

    .line 1240
    nop

    :pswitch_data_38e
    .packed-switch 0x0
        :pswitch_34
        :pswitch_283
        :pswitch_99
        :pswitch_2e6
        :pswitch_20
        :pswitch_31d
        :pswitch_33c
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 2390
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2392
    if-nez p1, :cond_c

    .line 2394
    iget v0, p0, mQCstate:I

    if-eqz v0, :cond_c

    .line 2395
    const/4 v0, 0x0

    iput v0, p0, mQCstate:I

    .line 2398
    :cond_c
    return-void
.end method

.method public pageScroll(I)Z
    .registers 9
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 1761
    const/16 v5, 0x82

    if-ne p1, v5, :cond_4b

    const/4 v1, 0x1

    .line 1762
    .local v1, "down":Z
    :goto_6
    invoke-virtual {p0}, getHeight()I

    move-result v2

    .line 1764
    .local v2, "height":I
    if-eqz v1, :cond_4d

    .line 1765
    iget-object v4, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1766
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 1767
    .local v0, "count":I
    if-lez v0, :cond_35

    .line 1768
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1769
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_35

    .line 1770
    iget-object v4, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1779
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_35
    :goto_35
    iget-object v4, p0, mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1781
    iget-object v4, p0, mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_4b
    move v1, v4

    .line 1761
    goto :goto_6

    .line 1774
    .restart local v1    # "down":Z
    .restart local v2    # "height":I
    :cond_4d
    iget-object v5, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, getScrollY()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1775
    iget-object v5, p0, mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_35

    .line 1776
    iget-object v5, p0, mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_35
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 11
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x3e99999a    # 0.3f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1519
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1602
    :cond_b
    :goto_b
    return v2

    .line 1522
    :cond_c
    invoke-virtual {p0}, isEnabled()Z

    move-result v4

    if-nez v4, :cond_14

    move v2, v3

    .line 1523
    goto :goto_b

    .line 1525
    :cond_14
    sparse-switch p1, :sswitch_data_184

    move v2, v3

    .line 1602
    goto :goto_b

    .line 1528
    :sswitch_19
    invoke-virtual {p0}, getHeight()I

    move-result v4

    iget v5, p0, mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, mPaddingTop:I

    sub-int v1, v4, v5

    .line 1529
    .local v1, "viewportHeight":I
    iget v4, p0, mScrollY:I

    add-int/2addr v4, v1

    invoke-direct {p0}, getScrollRange()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1530
    .local v0, "targetScrollY":I
    iget v4, p0, mScrollY:I

    if-eq v0, v4, :cond_37

    .line 1531
    invoke-virtual {p0, v3, v0}, smoothScrollTo(II)V

    goto :goto_b

    :cond_37
    move v2, v3

    .line 1534
    goto :goto_b

    .line 1537
    .end local v0    # "targetScrollY":I
    .end local v1    # "viewportHeight":I
    :sswitch_39
    invoke-virtual {p0}, getHeight()I

    move-result v4

    iget v5, p0, mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, mPaddingTop:I

    sub-int v1, v4, v5

    .line 1538
    .restart local v1    # "viewportHeight":I
    iget v4, p0, mScrollY:I

    sub-int/2addr v4, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1539
    .restart local v0    # "targetScrollY":I
    iget v4, p0, mScrollY:I

    if-eq v0, v4, :cond_53

    .line 1540
    invoke-virtual {p0, v3, v0}, smoothScrollTo(II)V

    goto :goto_b

    :cond_53
    move v2, v3

    .line 1543
    goto :goto_b

    .line 1546
    .end local v0    # "targetScrollY":I
    .end local v1    # "viewportHeight":I
    :sswitch_55
    const-string v4, "ScrollView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_AUTOSCROLL_DOWN: CASE auto scroll, canScroll = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, canScroll()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    invoke-direct {p0}, canScroll()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 1548
    const/16 v3, 0xfa0

    invoke-virtual {p0, v3}, fling(I)V

    goto :goto_b

    :cond_7d
    move v2, v3

    .line 1551
    goto :goto_b

    .line 1553
    :sswitch_7f
    const-string v4, "ScrollView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_AUTOSCROLL_UP: CASE auto scroll, canScroll = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, canScroll()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    invoke-direct {p0}, canScroll()Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 1555
    const/16 v3, -0xfa0

    invoke-virtual {p0, v3}, fling(I)V

    goto/16 :goto_b

    :cond_a8
    move v2, v3

    .line 1558
    goto/16 :goto_b

    .line 1560
    :sswitch_ab
    const-string v4, "ScrollView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_AUTOSCROLL_ON: auto scroll, canScroll = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, canScroll()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    invoke-direct {p0}, canScroll()Z

    move-result v4

    if-eqz v4, :cond_d9

    .line 1562
    const v3, 0x3fcccccd    # 1.6f

    iput v3, p0, mAutoscrollDuration:F

    .line 1563
    iget v3, p0, mAutoscrollDuration:F

    invoke-direct {p0, v3}, autoScrollWithDuration(F)V

    goto/16 :goto_b

    :cond_d9
    move v2, v3

    .line 1566
    goto/16 :goto_b

    .line 1568
    :sswitch_dc
    const-string v4, "ScrollView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_AUTOSCROLL_SPEED_UP: speed up, current duration = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mAutoscrollDuration:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    invoke-direct {p0}, canScroll()Z

    move-result v4

    if-eqz v4, :cond_111

    .line 1570
    iget v3, p0, mAutoscrollDuration:F

    const v4, 0x3f333333    # 0.7f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_10a

    .line 1571
    iget v3, p0, mAutoscrollDuration:F

    sub-float/2addr v3, v7

    iput v3, p0, mAutoscrollDuration:F

    .line 1572
    :cond_10a
    iget v3, p0, mAutoscrollDuration:F

    invoke-direct {p0, v3}, autoScrollWithDuration(F)V

    goto/16 :goto_b

    :cond_111
    move v2, v3

    .line 1575
    goto/16 :goto_b

    .line 1577
    :sswitch_114
    const-string v4, "ScrollView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_AUTOSCROLL_SPEED_DOWN: CASE slow down, current duration = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mAutoscrollDuration:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    invoke-direct {p0}, canScroll()Z

    move-result v4

    if-eqz v4, :cond_148

    .line 1579
    iget v3, p0, mAutoscrollDuration:F

    const/high16 v4, 0x40200000    # 2.5f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_141

    .line 1580
    iget v3, p0, mAutoscrollDuration:F

    add-float/2addr v3, v7

    iput v3, p0, mAutoscrollDuration:F

    .line 1581
    :cond_141
    iget v3, p0, mAutoscrollDuration:F

    invoke-direct {p0, v3}, autoScrollWithDuration(F)V

    goto/16 :goto_b

    :cond_148
    move v2, v3

    .line 1584
    goto/16 :goto_b

    .line 1586
    :sswitch_14b
    const-string v4, "ScrollView"

    const-string v5, "ACTION_AUTOSCROLL_TOP"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    invoke-direct {p0}, canScroll()Z

    move-result v4

    if-eqz v4, :cond_15d

    .line 1588
    invoke-virtual {p0, v3, v3, v3}, smoothScrollToWithDuration(III)V

    goto/16 :goto_b

    :cond_15d
    move v2, v3

    .line 1591
    goto/16 :goto_b

    .line 1593
    :sswitch_160
    const-string v4, "ScrollView"

    const-string v5, "ACTION_AUTOSCROLL_OFF"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    invoke-direct {p0}, canScroll()Z

    move-result v4

    if-eqz v4, :cond_180

    .line 1595
    iget-object v3, p0, mScroller:Landroid/widget/OverScroller;

    if-eqz v3, :cond_b

    iget-object v3, p0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1596
    iget-object v3, p0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    goto/16 :goto_b

    :cond_180
    move v2, v3

    .line 1600
    goto/16 :goto_b

    .line 1525
    nop

    :sswitch_data_184
    .sparse-switch
        0x1000 -> :sswitch_19
        0x2000 -> :sswitch_39
        0x400000 -> :sswitch_ab
        0x800000 -> :sswitch_160
        0x1000000 -> :sswitch_7f
        0x1020038 -> :sswitch_39
        0x102003a -> :sswitch_19
        0x2000000 -> :sswitch_55
        0x4000000 -> :sswitch_14b
        0x10000000 -> :sswitch_dc
        0x20000000 -> :sswitch_114
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 2291
    iget-boolean v0, p0, mIsLayoutDirty:Z

    if-nez v0, :cond_b

    .line 2292
    invoke-direct {p0, p2}, scrollToChild(Landroid/view/View;)V

    .line 2297
    :goto_7
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2298
    return-void

    .line 2295
    :cond_b
    iput-object p2, p0, mChildToScrollTo:Landroid/view/View;

    goto :goto_7
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2340
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2343
    iget-boolean v4, p0, mSipResizeAnimationRunning:Z

    if-eqz v4, :cond_37

    .line 2344
    invoke-virtual {p0}, getHeight()I

    move-result v0

    .line 2345
    .local v0, "height":I
    invoke-virtual {p0}, getScrollY()I

    move-result v2

    .line 2346
    .local v2, "screenTop":I
    add-int v4, v0, v2

    iget v5, p0, mSipDelta:I

    add-int v1, v4, v5

    .line 2348
    .local v1, "screenBottom":I
    iget v4, p2, Landroid/graphics/Rect;->top:I

    if-le v4, v1, :cond_35

    .line 2349
    const/4 v4, 0x0

    iput-boolean v4, p0, mCanScroll:Z

    .line 2350
    iget-object v4, p0, mRequestedChildRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2357
    .end local v0    # "height":I
    .end local v1    # "screenBottom":I
    .end local v2    # "screenTop":I
    :goto_34
    return v3

    .line 2353
    .restart local v0    # "height":I
    .restart local v1    # "screenBottom":I
    .restart local v2    # "screenTop":I
    :cond_35
    iput-boolean v3, p0, mCanScroll:Z

    .line 2357
    .end local v0    # "height":I
    .end local v1    # "screenBottom":I
    .end local v2    # "screenTop":I
    :cond_37
    invoke-direct {p0, p2, p3}, scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v3

    goto :goto_34
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 817
    if-eqz p1, :cond_5

    .line 818
    invoke-direct {p0}, recycleVelocityTracker()V

    .line 820
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 821
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 2362
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsLayoutDirty:Z

    .line 2363
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 2364
    return-void
.end method

.method public scrollTo(II)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2549
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    if-lez v1, :cond_41

    .line 2550
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2551
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, getWidth()I

    move-result v1

    iget v2, p0, mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, clamp(III)I

    move-result p1

    .line 2552
    invoke-virtual {p0}, getHeight()I

    move-result v1

    iget v2, p0, mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, clamp(III)I

    move-result p2

    .line 2553
    iget v1, p0, mScrollX:I

    if-ne p1, v1, :cond_37

    iget v1, p0, mScrollY:I

    if-eq p2, v1, :cond_41

    .line 2554
    :cond_37
    iget-boolean v1, p0, USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_3e

    .line 2555
    invoke-virtual {p0, p2}, hapticScrollTo(I)V

    .line 2557
    :cond_3e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 2560
    .end local v0    # "child":Landroid/view/View;
    :cond_41
    return-void
.end method

.method public setFillViewport(Z)V
    .registers 3
    .param p1, "fillViewport"    # Z

    .prologue
    .line 487
    iget-boolean v0, p0, mFillViewport:Z

    if-eq p1, v0, :cond_9

    .line 488
    iput-boolean p1, p0, mFillViewport:Z

    .line 489
    invoke-virtual {p0}, requestLayout()V

    .line 491
    :cond_9
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .registers 2
    .param p1, "hoverdelay"    # I

    .prologue
    .line 1005
    iput p1, p0, HOVERSCROLL_DELAY:I

    .line 1006
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 985
    if-eqz p1, :cond_6

    .line 986
    const/4 v0, 0x1

    iput-boolean v0, p0, mHoverScrollEnable:Z

    .line 990
    :goto_5
    return-void

    .line 988
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, mHoverScrollEnable:Z

    goto :goto_5
.end method

.method public setHoverScrollSpeed(I)V
    .registers 3
    .param p1, "hoverspeed"    # I

    .prologue
    .line 997
    add-int/lit8 v0, p1, 0x17

    int-to-float v0, v0

    iput v0, p0, HOVERSCROLL_SPEED:F

    .line 998
    return-void
.end method

.method public setIgnoreDelaychildPrerssedState(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, mIgnoreDelaychildPrerssed:Z

    .line 263
    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 5
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 2564
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1e

    .line 2565
    iget-object v1, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_1a

    .line 2566
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    .line 2567
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 2568
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 2574
    .end local v0    # "context":Landroid/content/Context;
    :cond_1a
    :goto_1a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 2575
    return-void

    .line 2571
    :cond_1e
    iput-object v2, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 2572
    iput-object v2, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_1a
.end method

.method public setSmoothScrollingEnabled(Z)V
    .registers 2
    .param p1, "smoothScrollingEnabled"    # Z

    .prologue
    .line 505
    iput-boolean p1, p0, mSmoothScrollingEnabled:Z

    .line 506
    return-void
.end method

.method public setTouchSlop(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 331
    iput p1, p0, mTouchSlop:I

    .line 332
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 360
    iget-boolean v0, p0, mIgnoreDelaychildPrerssed:Z

    if-eqz v0, :cond_6

    .line 361
    const/4 v0, 0x0

    .line 363
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method protected showEdgeEffectIfNecessary(IF)V
    .registers 11
    .param p1, "deltaY"    # I
    .param p2, "multiplicator"    # F

    .prologue
    const/4 v0, 0x1

    .line 1424
    invoke-virtual {p0}, getOverScrollMode()I

    move-result v3

    .line 1425
    .local v3, "overscrollMode":I
    invoke-direct {p0}, getScrollRange()I

    move-result v4

    .line 1426
    .local v4, "range":I
    if-eqz v3, :cond_f

    if-ne v3, v0, :cond_51

    if-lez v4, :cond_51

    .line 1429
    .local v0, "canOverscroll":Z
    :cond_f
    :goto_f
    iget v2, p0, mScrollY:I

    .line 1430
    .local v2, "oldScrollY":I
    add-int v1, v2, p1

    .line 1432
    .local v1, "newScrollY":I
    if-eqz v0, :cond_50

    .line 1433
    if-gez v1, :cond_53

    .line 1434
    const-string v5, "ScrollView"

    const-string/jumbo v6, "showBlueLightIfNecessary() reached the TOP!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    iget-object v5, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v6, p1

    mul-float/2addr v6, p2

    invoke-virtual {p0}, getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 1436
    iget-object v5, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_39

    .line 1437
    iget-object v5, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1446
    :cond_39
    :goto_39
    iget-object v5, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_50

    iget-object v5, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_4d

    iget-object v5, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_50

    .line 1448
    :cond_4d
    invoke-virtual {p0}, invalidate()V

    .line 1451
    :cond_50
    return-void

    .line 1426
    .end local v0    # "canOverscroll":Z
    .end local v1    # "newScrollY":I
    .end local v2    # "oldScrollY":I
    :cond_51
    const/4 v0, 0x0

    goto :goto_f

    .line 1439
    .restart local v0    # "canOverscroll":Z
    .restart local v1    # "newScrollY":I
    .restart local v2    # "oldScrollY":I
    :cond_53
    if-le v1, v4, :cond_39

    .line 1440
    const-string v5, "ScrollView"

    const-string/jumbo v6, "showBlueLightIfNecessary() reached the BOTTOM!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    iget-object v5, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v6, p1

    mul-float/2addr v6, p2

    invoke-virtual {p0}, getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 1442
    iget-object v5, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_39

    .line 1443
    iget-object v5, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_39
.end method

.method public final smoothScrollBy(II)V
    .registers 14
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v10, 0x0

    .line 1954
    invoke-virtual {p0}, getChildCount()I

    move-result v6

    if-nez v6, :cond_8

    .line 1979
    :goto_7
    return-void

    .line 1958
    :cond_8
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, mLastScroll:J

    sub-long v2, v6, v8

    .line 1959
    .local v2, "duration":J
    const-wide/16 v6, 0xfa

    cmp-long v6, v2, v6

    if-lez v6, :cond_4e

    .line 1960
    invoke-virtual {p0}, getHeight()I

    move-result v6

    iget v7, p0, mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, mPaddingTop:I

    sub-int v1, v6, v7

    .line 1961
    .local v1, "height":I
    invoke-virtual {p0, v10}, getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1962
    .local v0, "bottom":I
    sub-int v6, v0, v1

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1963
    .local v4, "maxY":I
    iget v5, p0, mScrollY:I

    .line 1964
    .local v5, "scrollY":I
    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    .line 1966
    iget-object v6, p0, mScroller:Landroid/widget/OverScroller;

    iget v7, p0, mScrollX:I

    invoke-virtual {v6, v7, v5, v10, p2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1967
    invoke-virtual {p0}, postInvalidateOnAnimation()V

    .line 1978
    .end local v0    # "bottom":I
    .end local v1    # "height":I
    .end local v4    # "maxY":I
    .end local v5    # "scrollY":I
    :goto_47
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, mLastScroll:J

    goto :goto_7

    .line 1969
    :cond_4e
    iget-object v6, p0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_67

    .line 1970
    iget-object v6, p0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1971
    iget-object v6, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v6, :cond_67

    .line 1972
    iget-object v6, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v6}, Landroid/os/StrictMode$Span;->finish()V

    .line 1973
    const/4 v6, 0x0

    iput-object v6, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1976
    :cond_67
    invoke-virtual {p0, p1, p2}, scrollBy(II)V

    goto :goto_47
.end method

.method public final smoothScrollByWithDuration(III)V
    .registers 15
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "scrollDuration"    # I

    .prologue
    .line 1994
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 2021
    :goto_6
    return-void

    .line 1998
    :cond_7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, mLastScroll:J

    sub-long v8, v0, v4

    .line 1999
    .local v8, "duration":J
    const-wide/16 v0, 0xfa

    cmp-long v0, v8, v0

    if-lez v0, :cond_60

    .line 2000
    invoke-virtual {p0}, getHeight()I

    move-result v0

    iget v1, p0, mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, mPaddingTop:I

    sub-int v7, v0, v1

    .line 2001
    .local v7, "height":I
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 2002
    .local v6, "bottom":I
    const/4 v0, 0x0

    sub-int v1, v6, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2003
    .local v10, "maxY":I
    iget v2, p0, mScrollY:I

    .line 2004
    .local v2, "scrollY":I
    const/4 v0, 0x0

    add-int v1, v2, p2

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int p2, v0, v2

    .line 2006
    iget-object v1, p0, mScroller:Landroid/widget/OverScroller;

    iget-boolean v0, p0, mLinear:Z

    if-eqz v0, :cond_5e

    sget-object v0, sLinearInterpolator:Landroid/view/animation/Interpolator;

    :goto_47
    invoke-virtual {v1, v0}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2007
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    iget v1, p0, mScrollX:I

    const/4 v3, 0x0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 2008
    invoke-virtual {p0}, postInvalidateOnAnimation()V

    .line 2020
    .end local v2    # "scrollY":I
    .end local v6    # "bottom":I
    .end local v7    # "height":I
    .end local v10    # "maxY":I
    :goto_57
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mLastScroll:J

    goto :goto_6

    .line 2006
    .restart local v2    # "scrollY":I
    .restart local v6    # "bottom":I
    .restart local v7    # "height":I
    .restart local v10    # "maxY":I
    :cond_5e
    const/4 v0, 0x0

    goto :goto_47

    .line 2010
    .end local v2    # "scrollY":I
    .end local v6    # "bottom":I
    .end local v7    # "height":I
    .end local v10    # "maxY":I
    :cond_60
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_79

    .line 2011
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 2012
    iget-object v0, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_79

    .line 2013
    iget-object v0, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2014
    const/4 v0, 0x0

    iput-object v0, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2017
    :cond_79
    invoke-virtual {p0, p1, p2}, scrollBy(II)V

    goto :goto_57
.end method

.method public final smoothScrollTo(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2031
    iget v0, p0, mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, smoothScrollBy(II)V

    .line 2032
    return-void
.end method

.method public final smoothScrollToWithDuration(III)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "scrollDuration"    # I

    .prologue
    .line 2044
    iget v0, p0, mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1, p3}, smoothScrollByWithDuration(III)V

    .line 2045
    return-void
.end method

.method public twSetSmoothScrollEnable(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 3225
    iget-object v0, p0, mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->twSetSmoothScrollEnable(Z)V

    .line 3226
    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 314
    return-void
.end method
