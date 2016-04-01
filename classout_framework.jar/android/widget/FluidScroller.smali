.class Landroid/widget/FluidScroller;
.super Ljava/lang/Object;
.source "FluidScroller.java"


# static fields
.field private static BOTTOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DURATION_CROSS_FADE:I = 0x32

.field private static final DURATION_FADE_IN:I = 0x14d

.field private static final DURATION_FADE_OUT:I = 0x64

.field private static final DURATION_RESIZE:I = 0x64

.field private static final FADE_TIMEOUT:J = 0x5dcL

.field private static LEFT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_PAGES:I = 0x1

.field private static final OVERLAY_ABOVE_THUMB:I = 0x2

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final PREVIEW_LEFT:I = 0x0

.field private static final PREVIEW_RIGHT:I = 0x1

.field private static RIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FluidScroller"

.field private static final TAP_TIMEOUT:J

.field private static final THUMB_POSITION_INSIDE:I = 0x1

.field private static final THUMB_POSITION_MIDPOINT:I

.field private static TOP:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final EFFECT_STATE_CLOSE:I

.field private final EFFECT_STATE_OPEN:I

.field private mAlwaysShow:Z

.field private mColorPrimary:I

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mCurrentSection:I

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final mDeferHide:Ljava/lang/Runnable;

.field private mEffectState:I

.field private mEnabled:Z

.field private mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

.field private mFastScrollEffectText:Ljava/lang/String;

.field private mFirstVisibleItem:I

.field private mHeaderCount:I

.field private mInitialTouchY:F

.field private mLayoutFromRight:Z

.field private final mList:Landroid/widget/AbsListView;

.field private mListAdapter:Landroid/widget/Adapter;

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private mOldChildCount:I

.field private mOldItemCount:I

.field private mOrientation:I

.field private final mOverlay:Landroid/view/ViewGroupOverlay;

.field private mOverlayPosition:I

.field private mPendingDrag:J

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private mPreviewMinHeight:I

.field private mPreviewMinWidth:I

.field private mPreviewPadding:I

.field private final mPreviewResId:[I

.field private mScaledTouchSlop:I

.field private mScrollBarStyle:I

.field private mScrollCompleted:Z

.field private mScrollY:F

.field private mScrollbarPosition:I

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSections:[Ljava/lang/Object;

.field private mShowingPrimary:Z

.field private mState:I

.field private final mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTempBounds:Landroid/graphics/Rect;

.field private final mTempMargins:Landroid/graphics/Rect;

.field private mTextAppearance:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:F

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private final mThumbImage:Landroid/widget/ImageView;

.field private mThumbMinHeight:I

.field private mThumbMinWidth:I

.field private mThumbOffset:F

.field private mThumbPosition:I

.field private mThumbRange:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTrackImage:Landroid/widget/ImageView;

.field private mUpdatingLayout:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 101
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, TAP_TIMEOUT:J

    .line 1472
    new-instance v0, Landroid/widget/FluidScroller$3;

    const-string v1, "left"

    invoke-direct {v0, v1}, Landroid/widget/FluidScroller$3;-><init>(Ljava/lang/String;)V

    sput-object v0, LEFT:Landroid/util/Property;

    .line 1488
    new-instance v0, Landroid/widget/FluidScroller$4;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Landroid/widget/FluidScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, TOP:Landroid/util/Property;

    .line 1504
    new-instance v0, Landroid/widget/FluidScroller$5;

    const-string/jumbo v1, "right"

    invoke-direct {v0, v1}, Landroid/widget/FluidScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, RIGHT:Landroid/util/Property;

    .line 1520
    new-instance v0, Landroid/widget/FluidScroller$6;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Landroid/widget/FluidScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, BOTTOM:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/widget/AbsListView;I)V
    .registers 10
    .param p1, "listView"    # Landroid/widget/AbsListView;
    .param p2, "styleResId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v1, 0x1

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, mTempBounds:Landroid/graphics/Rect;

    .line 104
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, mTempMargins:Landroid/graphics/Rect;

    .line 105
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, mContainerRect:Landroid/graphics/Rect;

    .line 118
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, mPreviewResId:[I

    .line 168
    iput v6, p0, mCurrentSection:I

    .line 171
    iput v6, p0, mScrollbarPosition:I

    .line 220
    const-wide/16 v4, -0x1

    iput-wide v4, p0, mPendingDrag:J

    .line 228
    iput v6, p0, mColorPrimary:I

    .line 229
    const/4 v3, 0x0

    iput v3, p0, mScrollY:F

    .line 231
    iput v2, p0, EFFECT_STATE_CLOSE:I

    .line 232
    iput v1, p0, EFFECT_STATE_OPEN:I

    .line 233
    iput v2, p0, mEffectState:I

    .line 240
    new-instance v3, Landroid/widget/FluidScroller$1;

    invoke-direct {v3, p0}, Landroid/widget/FluidScroller$1;-><init>(Landroid/widget/FluidScroller;)V

    iput-object v3, p0, mDeferHide:Ljava/lang/Runnable;

    .line 250
    new-instance v3, Landroid/widget/FluidScroller$2;

    invoke-direct {v3, p0}, Landroid/widget/FluidScroller$2;-><init>(Landroid/widget/FluidScroller;)V

    iput-object v3, p0, mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 258
    iput-object p1, p0, mList:Landroid/widget/AbsListView;

    .line 259
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v3

    iput v3, p0, mOldItemCount:I

    .line 260
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    iput v3, p0, mOldChildCount:I

    .line 262
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, mContext:Landroid/content/Context;

    .line 263
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, mScaledTouchSlop:I

    .line 264
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getScrollBarStyle()I

    move-result v3

    iput v3, p0, mScrollBarStyle:I

    .line 266
    iput-boolean v1, p0, mScrollCompleted:Z

    .line 267
    iput v1, p0, mState:I

    .line 268
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_cf

    :goto_77
    iput-boolean v1, p0, mMatchDragPosition:Z

    .line 271
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mTrackImage:Landroid/widget/ImageView;

    .line 272
    iget-object v1, p0, mTrackImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 273
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mThumbImage:Landroid/widget/ImageView;

    .line 274
    iget-object v1, p0, mThumbImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 276
    new-instance v1, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    .line 278
    invoke-virtual {p0, p2}, setStyle(I)V

    .line 280
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    .line 281
    .local v0, "overlay":Landroid/view/ViewGroupOverlay;
    iput-object v0, p0, mOverlay:Landroid/view/ViewGroupOverlay;

    .line 282
    iget-object v1, p0, mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 283
    iget-object v1, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 284
    iget-object v1, p0, mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 286
    invoke-direct {p0}, getSectionsFromIndexer()V

    .line 287
    iget v1, p0, mOldChildCount:I

    iget v2, p0, mOldItemCount:I

    invoke-direct {p0, v1, v2}, updateLongList(II)V

    .line 288
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {p0, v1}, setScrollbarPosition(I)V

    .line 289
    invoke-direct {p0}, postAutoHide()V

    .line 290
    return-void

    .end local v0    # "overlay":Landroid/view/ViewGroupOverlay;
    :cond_cf
    move v1, v2

    .line 268
    goto :goto_77
.end method

.method static synthetic access$000(Landroid/widget/FluidScroller;I)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/FluidScroller;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, setState(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/FluidScroller;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/FluidScroller;

    .prologue
    .line 58
    iget-boolean v0, p0, mShowingPrimary:Z

    return v0
.end method

.method static synthetic access$102(Landroid/widget/FluidScroller;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/FluidScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, mShowingPrimary:Z

    return p1
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .registers 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 1465
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .registers 11
    .param p0, "v"    # Landroid/view/View;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1536
    sget-object v4, LEFT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1537
    .local v1, "left":Landroid/animation/PropertyValuesHolder;
    sget-object v4, TOP:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1538
    .local v3, "top":Landroid/animation/PropertyValuesHolder;
    sget-object v4, RIGHT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1539
    .local v2, "right":Landroid/animation/PropertyValuesHolder;
    sget-object v4, BOTTOM:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1540
    .local v0, "bottom":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v7

    aput-object v3, v4, v8

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    return-object v4
.end method

.method private static animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;
    .registers 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "target"    # F

    .prologue
    .line 1458
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 570
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 571
    iget-boolean v0, p0, mLayoutFromRight:Z

    if-eqz v0, :cond_19

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 572
    return-void

    .line 571
    :cond_19
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private beginDrag()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1192
    const-string v0, "FluidScroller"

    const-string v1, "beginDrag() !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    const-wide/16 v0, -0x1

    iput-wide v0, p0, mPendingDrag:J

    .line 1195
    const/4 v0, 0x2

    invoke-direct {p0, v0}, setState(I)V

    .line 1197
    iget-object v0, p0, mListAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_17

    .line 1198
    invoke-direct {p0}, getSectionsFromIndexer()V

    .line 1202
    :cond_17
    iget-object v0, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1203
    iget-object v0, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1206
    invoke-direct {p0}, cancelFling()V

    .line 1207
    return-void
.end method

.method private cancelFling()V
    .registers 10

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 1168
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1170
    .local v8, "cancelFling":Landroid/view/MotionEvent;
    iget-object v0, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1171
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1172
    return-void
.end method

.method private cancelPendingDrag()V
    .registers 3

    .prologue
    .line 1180
    const-wide/16 v0, -0x1

    iput-wide v0, p0, mPendingDrag:J

    .line 1181
    return-void
.end method

.method private getColorWithAlpha(IF)I
    .registers 9
    .param p1, "color"    # I
    .param p2, "ratio"    # F

    .prologue
    .line 1544
    const/4 v3, 0x0

    .line 1545
    .local v3, "newColor":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1546
    .local v0, "alpha":I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 1547
    .local v4, "r":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 1548
    .local v2, "g":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 1549
    .local v1, "b":I
    invoke-static {v0, v4, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 1551
    return v3
.end method

.method private getPosFromItemCount(III)F
    .registers 24
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .line 1075
    move-object/from16 v0, p0

    iget-object v15, v0, mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1076
    .local v15, "sectionIndexer":Landroid/widget/SectionIndexer;
    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, mListAdapter:Landroid/widget/Adapter;

    move-object/from16 v17, v0

    if-nez v17, :cond_11

    .line 1077
    :cond_e
    invoke-direct/range {p0 .. p0}, getSectionsFromIndexer()V

    .line 1080
    :cond_11
    if-eqz p2, :cond_15

    if-nez p3, :cond_17

    .line 1082
    :cond_15
    const/4 v12, 0x0

    .line 1160
    :cond_16
    :goto_16
    return v12

    .line 1085
    :cond_17
    if-eqz v15, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    if-eqz v17, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_41

    const/4 v5, 0x1

    .line 1087
    .local v5, "hasSections":Z
    :goto_2f
    if-eqz v5, :cond_39

    move-object/from16 v0, p0

    iget-boolean v0, v0, mMatchDragPosition:Z

    move/from16 v17, v0

    if-nez v17, :cond_52

    .line 1088
    :cond_39
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_43

    .line 1090
    const/4 v12, 0x0

    goto :goto_16

    .line 1085
    .end local v5    # "hasSections":Z
    :cond_41
    const/4 v5, 0x0

    goto :goto_2f

    .line 1092
    .restart local v5    # "hasSections":Z
    :cond_43
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    sub-int v18, p3, p2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v12, v17, v18

    goto :goto_16

    .line 1097
    :cond_52
    move-object/from16 v0, p0

    iget v0, v0, mHeaderCount:I

    move/from16 v17, v0

    sub-int p1, p1, v17

    .line 1098
    if-gez p1, :cond_5e

    .line 1099
    const/4 v12, 0x0

    goto :goto_16

    .line 1101
    :cond_5e
    move-object/from16 v0, p0

    iget v0, v0, mHeaderCount:I

    move/from16 v17, v0

    sub-int p3, p3, v17

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1106
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_7a

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v17

    if-nez v17, :cond_109

    .line 1107
    :cond_7a
    const/4 v6, 0x0

    .line 1113
    .local v6, "incrementalPos":F
    :goto_7b
    move/from16 v0, p1

    invoke-interface {v15, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v13

    .line 1114
    .local v13, "section":I
    invoke-interface {v15, v13}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v16

    .line 1115
    .local v16, "sectionPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v14, v0

    .line 1117
    .local v14, "sectionCount":I
    add-int/lit8 v17, v14, -0x1

    move/from16 v0, v17

    if-ge v13, v0, :cond_12f

    .line 1119
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    if-ge v0, v14, :cond_12b

    .line 1120
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 1124
    .local v9, "nextSectionPos":I
    :goto_a2
    sub-int v11, v9, v16

    .line 1131
    .end local v9    # "nextSectionPos":I
    .local v11, "positionsInSection":I
    :goto_a4
    if-nez v11, :cond_133

    .line 1132
    const/4 v10, 0x0

    .line 1138
    .local v10, "posWithinSection":F
    :goto_a7
    int-to-float v0, v13

    move/from16 v17, v0

    add-float v17, v17, v10

    int-to-float v0, v14

    move/from16 v18, v0

    div-float v12, v17, v18

    .line 1143
    .local v12, "result":F
    if-lez p1, :cond_16

    add-int v17, p1, p2

    move/from16 v0, v17

    move/from16 v1, p3

    if-ne v0, v1, :cond_16

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    add-int/lit8 v18, p2, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1145
    .local v7, "lastChild":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v2

    .line 1148
    .local v2, "bottomPadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v17

    if-eqz v17, :cond_148

    .line 1149
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 1150
    .local v8, "maxSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getHeight()I

    move-result v17

    sub-int v17, v17, v2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v4, v17, v18

    .line 1155
    .local v4, "currentVisibleSize":I
    :goto_f3
    if-lez v4, :cond_16

    if-lez v8, :cond_16

    .line 1156
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v12

    int-to-float v0, v4

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v17, v17, v18

    add-float v12, v12, v17

    goto/16 :goto_16

    .line 1109
    .end local v2    # "bottomPadding":I
    .end local v4    # "currentVisibleSize":I
    .end local v6    # "incrementalPos":F
    .end local v7    # "lastChild":Landroid/view/View;
    .end local v8    # "maxSize":I
    .end local v10    # "posWithinSection":F
    .end local v11    # "positionsInSection":I
    .end local v12    # "result":F
    .end local v13    # "section":I
    .end local v14    # "sectionCount":I
    .end local v16    # "sectionPos":I
    :cond_109
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v17

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v6, v17, v18

    .restart local v6    # "incrementalPos":F
    goto/16 :goto_7b

    .line 1122
    .restart local v13    # "section":I
    .restart local v14    # "sectionCount":I
    .restart local v16    # "sectionPos":I
    :cond_12b
    add-int/lit8 v9, p3, -0x1

    .restart local v9    # "nextSectionPos":I
    goto/16 :goto_a2

    .line 1126
    .end local v9    # "nextSectionPos":I
    :cond_12f
    sub-int v11, p3, v16

    .restart local v11    # "positionsInSection":I
    goto/16 :goto_a4

    .line 1134
    :cond_133
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v6

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    int-to-float v0, v11

    move/from16 v18, v0

    div-float v10, v17, v18

    .restart local v10    # "posWithinSection":F
    goto/16 :goto_a7

    .line 1152
    .restart local v2    # "bottomPadding":I
    .restart local v7    # "lastChild":Landroid/view/View;
    .restart local v12    # "result":F
    :cond_148
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v17

    add-int v8, v17, v2

    .line 1153
    .restart local v8    # "maxSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getHeight()I

    move-result v17

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v4, v17, v18

    .restart local v4    # "currentVisibleSize":I
    goto :goto_f3
.end method

.method private getPosFromMotionEvent(F)F
    .registers 5
    .param p1, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 1058
    iget v1, p0, mThumbRange:F

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_8

    .line 1062
    :goto_7
    return v0

    :cond_8
    iget v1, p0, mThumbOffset:F

    sub-float v1, p1, v1

    iget v2, p0, mThumbRange:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    goto :goto_7
.end method

.method private getSectionsFromIndexer()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 874
    iput-object v3, p0, mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 876
    iget-object v2, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 877
    .local v0, "adapter":Landroid/widget/Adapter;
    instance-of v2, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_1c

    move-object v2, v0

    .line 878
    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, mHeaderCount:I

    .line 879
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 882
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_1c
    instance-of v2, v0, Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_3a

    move-object v2, v0

    .line 883
    check-cast v2, Landroid/widget/ExpandableListConnector;

    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 885
    .local v1, "expAdapter":Landroid/widget/ExpandableListAdapter;
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_39

    .line 886
    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1    # "expAdapter":Landroid/widget/ExpandableListAdapter;
    iput-object v1, p0, mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 887
    iput-object v0, p0, mListAdapter:Landroid/widget/Adapter;

    .line 888
    iget-object v2, p0, mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, mSections:[Ljava/lang/Object;

    .line 898
    .end local v0    # "adapter":Landroid/widget/Adapter;
    :cond_39
    :goto_39
    return-void

    .line 890
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_3a
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_4d

    .line 891
    iput-object v0, p0, mListAdapter:Landroid/widget/Adapter;

    .line 892
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 893
    iget-object v2, p0, mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, mSections:[Ljava/lang/Object;

    goto :goto_39

    .line 895
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_4d
    iput-object v0, p0, mListAdapter:Landroid/widget/Adapter;

    .line 896
    iput-object v3, p0, mSections:[Ljava/lang/Object;

    goto :goto_39
.end method

.method private static varargs groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .registers 10
    .param p1, "value"    # F
    .param p2, "views"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 1439
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1440
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x0

    .line 1442
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v4, p2

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_9
    if-ltz v3, :cond_24

    .line 1443
    aget-object v4, p2, v3

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1444
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_20

    .line 1445
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1442
    :goto_1d
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 1447
    :cond_20
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1d

    .line 1451
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_24
    return-object v1
.end method

.method private isPointInside(FF)Z
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1408
    invoke-direct {p0, p1}, isPointInsideX(F)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, p2}, isPointInsideY(F)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, mState:I

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isPointInsideX(F)Z
    .registers 5
    .param p1, "x"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1412
    iget-boolean v2, p0, mLayoutFromRight:Z

    if-eqz v2, :cond_14

    .line 1413
    iget-object v2, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_12

    .line 1415
    :cond_11
    :goto_11
    return v0

    :cond_12
    move v0, v1

    .line 1413
    goto :goto_11

    .line 1415
    :cond_14
    iget-object v2, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-lez v2, :cond_11

    move v0, v1

    goto :goto_11
.end method

.method private isPointInsideY(F)Z
    .registers 6
    .param p1, "y"    # F

    .prologue
    .line 1420
    iget-object v3, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v1

    .line 1421
    .local v1, "offset":F
    iget-object v3, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float v2, v3, v1

    .line 1422
    .local v2, "top":F
    iget-object v3, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    int-to-float v3, v3

    add-float v0, v3, v1

    .line 1424
    .local v0, "bottom":F
    cmpl-float v3, p1, v2

    if-ltz v3, :cond_22

    cmpg-float v3, p1, v0

    if-gtz v3, :cond_22

    const/4 v3, 0x1

    :goto_21
    return v3

    :cond_22
    const/4 v3, 0x0

    goto :goto_21
.end method

.method private layoutThumb()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 705
    iget-object v0, p0, mTempBounds:Landroid/graphics/Rect;

    .line 706
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v2, v0}, measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 707
    iget-object v1, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 708
    return-void
.end method

.method private layoutTrack()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    .line 715
    iget-object v10, p0, mTrackImage:Landroid/widget/ImageView;

    .line 716
    .local v10, "track":Landroid/view/View;
    iget-object v7, p0, mThumbImage:Landroid/widget/ImageView;

    .line 717
    .local v7, "thumb":Landroid/view/View;
    iget-object v1, p0, mContainerRect:Landroid/graphics/Rect;

    .line 718
    .local v1, "container":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 719
    .local v5, "maxWidth":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 720
    .local v4, "maxHeight":I
    const/high16 v13, -0x80000000

    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 721
    .local v12, "widthMeasureSpec":I
    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v2

    .line 723
    .local v2, "heightMeasureSpec":I
    invoke-virtual {v10, v12, v2}, Landroid/view/View;->measure(II)V

    .line 727
    iget v13, p0, mThumbPosition:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_44

    .line 728
    iget v9, v1, Landroid/graphics/Rect;->top:I

    .line 729
    .local v9, "top":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 736
    .local v0, "bottom":I
    :goto_2d
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 737
    .local v11, "trackWidth":I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v14, v11

    div-int/lit8 v14, v14, 0x2

    add-int v3, v13, v14

    .line 738
    .local v3, "left":I
    add-int v6, v3, v11

    .line 739
    .local v6, "right":I
    invoke-virtual {v10, v3, v9, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 740
    return-void

    .line 731
    .end local v0    # "bottom":I
    .end local v3    # "left":I
    .end local v6    # "right":I
    .end local v9    # "top":I
    .end local v11    # "trackWidth":I
    :cond_44
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v13

    div-int/lit8 v8, v13, 0x2

    .line 732
    .local v8, "thumbHalfHeight":I
    iget v13, v1, Landroid/graphics/Rect;->top:I

    add-int v9, v13, v8

    .line 733
    .restart local v9    # "top":I
    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v13, v8

    .restart local v0    # "bottom":I
    goto :goto_2d
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 22
    .param p1, "preview"    # Landroid/view/View;
    .param p2, "margins"    # Landroid/graphics/Rect;
    .param p3, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 639
    if-nez p2, :cond_60

    .line 640
    const/4 v9, 0x0

    .line 641
    .local v9, "marginLeft":I
    const/4 v11, 0x0

    .line 642
    .local v11, "marginTop":I
    const/4 v10, 0x0

    .line 649
    .local v10, "marginRight":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, mContainerRect:Landroid/graphics/Rect;

    .line 650
    .local v4, "container":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 651
    .local v6, "containerWidth":I
    const/16 v16, 0x0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 652
    .local v1, "adjMaxHeight":I
    const/16 v16, 0x0

    sub-int v17, v6, v9

    sub-int v17, v17, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 653
    .local v2, "adjMaxWidth":I
    const/high16 v16, -0x80000000

    move/from16 v0, v16

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 654
    .local v15, "widthMeasureSpec":I
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v7

    .line 656
    .local v7, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v7}, Landroid/view/View;->measure(II)V

    .line 659
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 660
    .local v5, "containerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 661
    .local v14, "width":I
    div-int/lit8 v16, v5, 0xa

    add-int v16, v16, v11

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    add-int v13, v16, v17

    .line 662
    .local v13, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v3, v13, v16

    .line 663
    .local v3, "bottom":I
    sub-int v16, v6, v14

    div-int/lit8 v16, v16, 0x2

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    add-int v8, v16, v17

    .line 664
    .local v8, "left":I
    add-int v12, v8, v14

    .line 665
    .local v12, "right":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v13, v12, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 666
    return-void

    .line 644
    .end local v1    # "adjMaxHeight":I
    .end local v2    # "adjMaxWidth":I
    .end local v3    # "bottom":I
    .end local v4    # "container":Landroid/graphics/Rect;
    .end local v5    # "containerHeight":I
    .end local v6    # "containerWidth":I
    .end local v7    # "heightMeasureSpec":I
    .end local v8    # "left":I
    .end local v9    # "marginLeft":I
    .end local v10    # "marginRight":I
    .end local v11    # "marginTop":I
    .end local v12    # "right":I
    .end local v13    # "top":I
    .end local v14    # "width":I
    .end local v15    # "widthMeasureSpec":I
    :cond_60
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 645
    .restart local v9    # "marginLeft":I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 646
    .restart local v11    # "marginTop":I
    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->right:I

    .restart local v10    # "marginRight":I
    goto :goto_5
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 23
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adjacent"    # Landroid/view/View;
    .param p3, "margins"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 589
    if-nez p3, :cond_62

    .line 590
    const/4 v8, 0x0

    .line 591
    .local v8, "marginLeft":I
    const/4 v10, 0x0

    .line 592
    .local v10, "marginTop":I
    const/4 v9, 0x0

    .line 599
    .local v9, "marginRight":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, mContainerRect:Landroid/graphics/Rect;

    .line 600
    .local v4, "container":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 602
    .local v5, "containerWidth":I
    if-nez p2, :cond_6f

    .line 603
    move v11, v5

    .line 610
    .local v11, "maxWidth":I
    :goto_10
    const/16 v16, 0x0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 611
    .local v1, "adjMaxHeight":I
    const/16 v16, 0x0

    sub-int v17, v11, v8

    sub-int v17, v17, v9

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 612
    .local v2, "adjMaxWidth":I
    const/high16 v16, -0x80000000

    move/from16 v0, v16

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 613
    .local v15, "widthMeasureSpec":I
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v6

    .line 615
    .local v6, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v6}, Landroid/view/View;->measure(II)V

    .line 618
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 621
    .local v14, "width":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, mLayoutFromRight:Z

    move/from16 v16, v0

    if-eqz v16, :cond_88

    .line 622
    if-nez p2, :cond_83

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    :goto_51
    sub-int v12, v16, v9

    .line 623
    .local v12, "right":I
    sub-int v7, v12, v14

    .line 630
    .local v7, "left":I
    :goto_55
    move v13, v10

    .line 631
    .local v13, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v3, v13, v16

    .line 632
    .local v3, "bottom":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v7, v13, v12, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 633
    return-void

    .line 594
    .end local v1    # "adjMaxHeight":I
    .end local v2    # "adjMaxWidth":I
    .end local v3    # "bottom":I
    .end local v4    # "container":Landroid/graphics/Rect;
    .end local v5    # "containerWidth":I
    .end local v6    # "heightMeasureSpec":I
    .end local v7    # "left":I
    .end local v8    # "marginLeft":I
    .end local v9    # "marginRight":I
    .end local v10    # "marginTop":I
    .end local v11    # "maxWidth":I
    .end local v12    # "right":I
    .end local v13    # "top":I
    .end local v14    # "width":I
    .end local v15    # "widthMeasureSpec":I
    :cond_62
    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 595
    .restart local v8    # "marginLeft":I
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 596
    .restart local v10    # "marginTop":I
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/Rect;->right:I

    .restart local v9    # "marginRight":I
    goto :goto_5

    .line 604
    .restart local v4    # "container":Landroid/graphics/Rect;
    .restart local v5    # "containerWidth":I
    :cond_6f
    move-object/from16 v0, p0

    iget-boolean v0, v0, mLayoutFromRight:Z

    move/from16 v16, v0

    if-eqz v16, :cond_7c

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v11

    .restart local v11    # "maxWidth":I
    goto :goto_10

    .line 607
    .end local v11    # "maxWidth":I
    :cond_7c
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v16

    sub-int v11, v5, v16

    .restart local v11    # "maxWidth":I
    goto :goto_10

    .line 622
    .restart local v1    # "adjMaxHeight":I
    .restart local v2    # "adjMaxWidth":I
    .restart local v6    # "heightMeasureSpec":I
    .restart local v14    # "width":I
    .restart local v15    # "widthMeasureSpec":I
    :cond_83
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v16

    goto :goto_51

    .line 625
    :cond_88
    if-nez p2, :cond_93

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    :goto_8e
    add-int v7, v16, v8

    .line 626
    .restart local v7    # "left":I
    add-int v12, v7, v14

    .restart local v12    # "right":I
    goto :goto_55

    .line 625
    .end local v7    # "left":I
    .end local v12    # "right":I
    :cond_93
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v16

    goto :goto_8e
.end method

.method private onStateDependencyChanged(Z)V
    .registers 4
    .param p1, "peekIfEnabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 434
    invoke-virtual {p0}, isEnabled()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 435
    invoke-virtual {p0}, isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 436
    invoke-direct {p0, v1}, setState(I)V

    .line 447
    :cond_10
    :goto_10
    iget-object v0, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 448
    return-void

    .line 437
    :cond_16
    iget v0, p0, mState:I

    if-ne v0, v1, :cond_1e

    .line 438
    invoke-direct {p0}, postAutoHide()V

    goto :goto_10

    .line 439
    :cond_1e
    if-eqz p1, :cond_10

    .line 440
    invoke-direct {p0, v1}, setState(I)V

    .line 441
    invoke-direct {p0}, postAutoHide()V

    goto :goto_10

    .line 444
    :cond_27
    invoke-virtual {p0}, stop()V

    goto :goto_10
.end method

.method private postAutoHide()V
    .registers 5

    .prologue
    .line 845
    iget-object v0, p0, mList:Landroid/widget/AbsListView;

    iget-object v1, p0, mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 846
    iget-object v0, p0, mList:Landroid/widget/AbsListView;

    iget-object v1, p0, mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 847
    return-void
.end method

.method private refreshDrawablePressedState()V
    .registers 4

    .prologue
    .line 793
    iget v1, p0, mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    const/4 v0, 0x1

    .line 794
    .local v0, "isPressed":Z
    :goto_6
    iget-object v1, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 795
    iget-object v1, p0, mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 796
    return-void

    .line 793
    .end local v0    # "isPressed":Z
    :cond_11
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private scrollTo(F)V
    .registers 26
    .param p1, "position"    # F

    .prologue
    .line 909
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, mScrollCompleted:Z

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    .line 912
    .local v4, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 913
    .local v17, "sections":[Ljava/lang/Object;
    if-nez v17, :cond_95

    const/4 v15, 0x0

    .line 915
    .local v15, "sectionCount":I
    :goto_1b
    if-eqz v17, :cond_198

    if-lez v15, :cond_198

    .line 916
    int-to-float v0, v15

    move/from16 v21, v0

    mul-float v21, v21, p1

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    add-int/lit8 v23, v15, -0x1

    invoke-static/range {v21 .. v23}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    .line 918
    .local v5, "exactSection":I
    move/from16 v20, v5

    .line 919
    .local v20, "targetSection":I
    move-object/from16 v0, p0

    iget-object v0, v0, mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v19

    .line 920
    .local v19, "targetIndex":I
    move/from16 v16, v20

    .line 928
    .local v16, "sectionIndex":I
    move v8, v4

    .line 929
    .local v8, "nextIndex":I
    move/from16 v12, v19

    .line 930
    .local v12, "prevIndex":I
    move/from16 v14, v20

    .line 931
    .local v14, "prevSection":I
    add-int/lit8 v11, v20, 0x1

    .line 934
    .local v11, "nextSection":I
    add-int/lit8 v21, v15, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5e

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v21, v0

    add-int/lit8 v22, v20, 0x1

    invoke-interface/range {v21 .. v22}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v8

    .line 939
    :cond_5e
    move/from16 v0, v19

    if-ne v8, v0, :cond_7c

    .line 941
    :cond_62
    if-lez v20, :cond_7c

    .line 942
    add-int/lit8 v20, v20, -0x1

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v12

    .line 944
    move/from16 v0, v19

    if-eq v12, v0, :cond_99

    .line 945
    move/from16 v14, v20

    .line 946
    move/from16 v16, v20

    .line 962
    :cond_7c
    :goto_7c
    add-int/lit8 v9, v11, 0x1

    .line 963
    .local v9, "nextNextSection":I
    :goto_7e
    if-ge v9, v15, :cond_9e

    move-object/from16 v0, p0

    iget-object v0, v0, mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v21

    move/from16 v0, v21

    if-ne v0, v8, :cond_9e

    .line 965
    add-int/lit8 v9, v9, 0x1

    .line 966
    add-int/lit8 v11, v11, 0x1

    goto :goto_7e

    .line 913
    .end local v5    # "exactSection":I
    .end local v8    # "nextIndex":I
    .end local v9    # "nextNextSection":I
    .end local v11    # "nextSection":I
    .end local v12    # "prevIndex":I
    .end local v14    # "prevSection":I
    .end local v15    # "sectionCount":I
    .end local v16    # "sectionIndex":I
    .end local v19    # "targetIndex":I
    .end local v20    # "targetSection":I
    :cond_95
    move-object/from16 v0, v17

    array-length v15, v0

    goto :goto_1b

    .line 948
    .restart local v5    # "exactSection":I
    .restart local v8    # "nextIndex":I
    .restart local v11    # "nextSection":I
    .restart local v12    # "prevIndex":I
    .restart local v14    # "prevSection":I
    .restart local v15    # "sectionCount":I
    .restart local v16    # "sectionIndex":I
    .restart local v19    # "targetIndex":I
    .restart local v20    # "targetSection":I
    :cond_99
    if-nez v20, :cond_62

    .line 951
    const/16 v16, 0x0

    .line 952
    goto :goto_7c

    .line 973
    .restart local v9    # "nextNextSection":I
    :cond_9e
    int-to-float v0, v14

    move/from16 v21, v0

    int-to-float v0, v15

    move/from16 v22, v0

    div-float v13, v21, v22

    .line 974
    .local v13, "prevPosition":F
    int-to-float v0, v11

    move/from16 v21, v0

    int-to-float v0, v15

    move/from16 v22, v0

    div-float v10, v21, v22

    .line 975
    .local v10, "nextPosition":F
    if-nez v4, :cond_13f

    const v18, 0x7f7fffff    # Float.MAX_VALUE

    .line 976
    .local v18, "snapThreshold":F
    :goto_b3
    if-ne v14, v5, :cond_148

    sub-float v21, p1, v13

    cmpg-float v21, v21, v18

    if-gez v21, :cond_148

    .line 977
    move/from16 v19, v12

    .line 984
    :goto_bd
    const/16 v21, 0x0

    add-int/lit8 v22, v4, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v19

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v21, v0

    if-eqz v21, :cond_160

    .line 987
    move-object/from16 v0, p0

    iget-object v6, v0, mList:Landroid/widget/AbsListView;

    check-cast v6, Landroid/widget/ExpandableListView;

    .line 988
    .local v6, "expList":Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v19

    invoke-static/range {v21 .. v21}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 1012
    .end local v5    # "exactSection":I
    .end local v6    # "expList":Landroid/widget/ExpandableListView;
    .end local v8    # "nextIndex":I
    .end local v9    # "nextNextSection":I
    .end local v10    # "nextPosition":F
    .end local v11    # "nextSection":I
    .end local v12    # "prevIndex":I
    .end local v13    # "prevPosition":F
    .end local v14    # "prevSection":I
    .end local v18    # "snapThreshold":F
    .end local v19    # "targetIndex":I
    .end local v20    # "targetSection":I
    :goto_fa
    move-object/from16 v0, p0

    iget v0, v0, mCurrentSection:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v16

    if-eq v0, v1, :cond_13e

    .line 1013
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, mCurrentSection:I

    .line 1015
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, transitionPreviewLayout(I)Z

    .line 1016
    const-string v21, "FluidScroller"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "scrollTo() called transitionPreviewLayout() sectionIndex ="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", position = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_13e
    return-void

    .line 975
    .restart local v5    # "exactSection":I
    .restart local v8    # "nextIndex":I
    .restart local v9    # "nextNextSection":I
    .restart local v10    # "nextPosition":F
    .restart local v11    # "nextSection":I
    .restart local v12    # "prevIndex":I
    .restart local v13    # "prevPosition":F
    .restart local v14    # "prevSection":I
    .restart local v19    # "targetIndex":I
    .restart local v20    # "targetSection":I
    :cond_13f
    const/high16 v21, 0x3e000000    # 0.125f

    int-to-float v0, v4

    move/from16 v22, v0

    div-float v18, v21, v22

    goto/16 :goto_b3

    .line 979
    .restart local v18    # "snapThreshold":F
    :cond_148
    sub-int v21, v8, v12

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v22, p1, v13

    mul-float v21, v21, v22

    sub-float v22, v10, v13

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v19, v12, v21

    goto/16 :goto_bd

    .line 991
    :cond_160
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v21, v0

    if-eqz v21, :cond_185

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    check-cast v21, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, mHeaderCount:I

    move/from16 v22, v0

    add-int v22, v22, v19

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto/16 :goto_fa

    .line 994
    :cond_185
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, mHeaderCount:I

    move/from16 v22, v0

    add-int v22, v22, v19

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AbsListView;->setSelection(I)V

    goto/16 :goto_fa

    .line 997
    .end local v5    # "exactSection":I
    .end local v8    # "nextIndex":I
    .end local v9    # "nextNextSection":I
    .end local v10    # "nextPosition":F
    .end local v11    # "nextSection":I
    .end local v12    # "prevIndex":I
    .end local v13    # "prevPosition":F
    .end local v14    # "prevSection":I
    .end local v16    # "sectionIndex":I
    .end local v18    # "snapThreshold":F
    .end local v19    # "targetIndex":I
    .end local v20    # "targetSection":I
    :cond_198
    int-to-float v0, v4

    move/from16 v21, v0

    mul-float v21, v21, p1

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    add-int/lit8 v23, v4, -0x1

    invoke-static/range {v21 .. v23}, Landroid/util/MathUtils;->constrain(III)I

    move-result v7

    .line 999
    .local v7, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v21, v0

    if-eqz v21, :cond_1dd

    .line 1000
    move-object/from16 v0, p0

    iget-object v6, v0, mList:Landroid/widget/AbsListView;

    check-cast v6, Landroid/widget/ExpandableListView;

    .line 1001
    .restart local v6    # "expList":Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v7

    invoke-static/range {v21 .. v21}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 1009
    .end local v6    # "expList":Landroid/widget/ExpandableListView;
    :goto_1d9
    const/16 v16, -0x1

    .restart local v16    # "sectionIndex":I
    goto/16 :goto_fa

    .line 1003
    .end local v16    # "sectionIndex":I
    :cond_1dd
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v21, v0

    if-eqz v21, :cond_201

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    check-cast v21, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, mHeaderCount:I

    move/from16 v22, v0

    add-int v22, v22, v7

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_1d9

    .line 1006
    :cond_201
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, mHeaderCount:I

    move/from16 v22, v0

    add-int v22, v22, v7

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_1d9
.end method

.method private setState(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    .line 765
    iget-object v0, p0, mList:Landroid/widget/AbsListView;

    iget-object v1, p0, mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 767
    iget-boolean v0, p0, mAlwaysShow:Z

    if-eqz v0, :cond_e

    if-nez p1, :cond_e

    .line 768
    const/4 p1, 0x1

    .line 771
    :cond_e
    iget v0, p0, mState:I

    if-ne p1, v0, :cond_13

    .line 790
    :goto_12
    return-void

    .line 775
    :cond_13
    packed-switch p1, :pswitch_data_2a

    .line 787
    :goto_16
    iput p1, p0, mState:I

    .line 789
    invoke-direct {p0}, refreshDrawablePressedState()V

    goto :goto_12

    .line 777
    :pswitch_1c
    invoke-direct {p0}, transitionToHidden()V

    goto :goto_16

    .line 780
    :pswitch_20
    invoke-direct {p0}, transitionToVisible()V

    goto :goto_16

    .line 783
    :pswitch_24
    iget v0, p0, mCurrentSection:I

    invoke-direct {p0, v0}, transitionPreviewLayout(I)Z

    goto :goto_16

    .line 775
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_20
        :pswitch_24
    .end packed-switch
.end method

.method private setThumbPos(F)V
    .registers 6
    .param p1, "position"    # F

    .prologue
    .line 1051
    iget v1, p0, mThumbRange:F

    mul-float/2addr v1, p1

    iget v2, p0, mThumbOffset:F

    add-float v0, v1, v2

    .line 1052
    .local v0, "thumbMiddle":F
    iget-object v1, p0, mThumbImage:Landroid/widget/ImageView;

    iget-object v2, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1053
    return-void
.end method

.method private startPendingDrag()V
    .registers 5

    .prologue
    .line 1188
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, mPendingDrag:J

    .line 1189
    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .registers 8
    .param p1, "sectionIndex"    # I

    .prologue
    .line 1029
    iget-object v1, p0, mSections:[Ljava/lang/Object;

    .line 1030
    .local v1, "sections":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1031
    .local v2, "text":Ljava/lang/String;
    if-eqz v1, :cond_12

    if-ltz p1, :cond_12

    array-length v3, v1

    if-ge p1, v3, :cond_12

    .line 1032
    aget-object v0, v1, p1

    .line 1033
    .local v0, "section":Ljava/lang/Object;
    if-eqz v0, :cond_12

    .line 1034
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1038
    .end local v0    # "section":Ljava/lang/Object;
    :cond_12
    iput-object v2, p0, mFastScrollEffectText:Ljava/lang/String;

    .line 1039
    const-string v3, "FluidScroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "transitionPreviewLayout() sectionIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFastScrollEffectText = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mFastScrollEffectText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_41

    const/4 v3, 0x1

    :goto_40
    return v3

    :cond_41
    const/4 v3, 0x0

    goto :goto_40
.end method

.method private transitionToDragging()V
    .registers 3

    .prologue
    .line 841
    const-string v0, "FluidScroller"

    const-string/jumbo v1, "transitionToDragging()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    return-void
.end method

.method private transitionToHidden()V
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 802
    const-string v2, "FluidScroller"

    const-string/jumbo v3, "transitionToHidden()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v9, [Landroid/view/View;

    iget-object v4, p0, mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    iget-object v4, p0, mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v7

    invoke-static {v2, v8, v3}, groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 805
    .local v0, "fadeOut":Landroid/animation/Animator;
    iget-object v2, p0, mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_4c

    .line 806
    iget-object v2, p0, mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 813
    :goto_2b
    iget-boolean v2, p0, mLayoutFromRight:Z

    if-eqz v2, :cond_63

    iget-object v2, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v1, v2

    .line 815
    .local v1, "offset":F
    :goto_36
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 816
    iget-object v2, p0, mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v7, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 817
    iget-object v2, p0, mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 818
    return-void

    .line 809
    .end local v1    # "offset":F
    :cond_4c
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v9, [Landroid/view/View;

    iget-object v4, p0, mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    iget-object v4, p0, mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v7

    invoke-static {v2, v8, v3}, groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_2b

    .line 813
    :cond_63
    iget-object v2, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v1, v2

    goto :goto_36
.end method

.method private transitionToVisible()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 824
    const-string v1, "FluidScroller"

    const-string/jumbo v2, "transitionToVisible()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v1, p0, mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_13

    .line 826
    iget-object v1, p0, mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 829
    :cond_13
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v5

    iget-object v4, p0, mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 832
    .local v0, "fadeIn":Landroid/animation/Animator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 833
    iget-object v1, p0, mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v6, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 834
    iget-object v1, p0, mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 835
    return-void
.end method

.method private updateAppearance()V
    .registers 6

    .prologue
    .line 293
    const/4 v1, 0x0

    .line 296
    .local v1, "width":I
    iget-object v2, p0, mTrackImage:Landroid/widget/ImageView;

    iget-object v3, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    iget-object v2, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_16

    .line 298
    iget-object v2, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 302
    :cond_16
    iget-object v2, p0, mThumbImage:Landroid/widget/ImageView;

    iget-object v3, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    iget-object v2, p0, mThumbImage:Landroid/widget/ImageView;

    iget v3, p0, mThumbMinWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 304
    iget-object v2, p0, mThumbImage:Landroid/widget/ImageView;

    iget v3, p0, mThumbMinHeight:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 305
    iget-object v2, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_39

    .line 306
    iget-object v2, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 310
    :cond_39
    iget v2, p0, mThumbMinWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, mWidth:I

    .line 312
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 313
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010433

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 314
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, mColorPrimary:I

    .line 316
    iget-object v2, p0, mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget v3, p0, mColorPrimary:I

    const v4, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v3, v4}, getColorWithAlpha(IF)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->setColor(I)V

    .line 317
    iget-object v2, p0, mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106017a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->setListTextColor(I)V

    .line 318
    iget-object v2, p0, mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10502a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->setListTextSize(F)V

    .line 319
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, mOrientation:I

    .line 321
    invoke-direct {p0}, refreshDrawablePressedState()V

    .line 322
    return-void
.end method

.method private updateContainerRect()V
    .registers 8

    .prologue
    const/high16 v6, 0x1000000

    const/4 v4, 0x0

    .line 672
    iget-object v1, p0, mList:Landroid/widget/AbsListView;

    .line 673
    .local v1, "list":Landroid/widget/AbsListView;
    invoke-virtual {v1}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 675
    iget-object v0, p0, mContainerRect:Landroid/graphics/Rect;

    .line 676
    .local v0, "container":Landroid/graphics/Rect;
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 677
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 678
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 679
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 681
    iget v2, p0, mScrollBarStyle:I

    .line 682
    .local v2, "scrollbarStyle":I
    if-eq v2, v6, :cond_20

    if-nez v2, :cond_54

    .line 684
    :cond_20
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 685
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 686
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 687
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 690
    if-ne v2, v6, :cond_54

    .line 691
    invoke-virtual {p0}, getWidth()I

    move-result v3

    .line 692
    .local v3, "width":I
    iget v4, p0, mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_55

    .line 693
    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 699
    .end local v3    # "width":I
    :cond_54
    :goto_54
    return-void

    .line 695
    .restart local v3    # "width":I
    :cond_55
    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->left:I

    goto :goto_54
.end method

.method private updateLongList(II)V
    .registers 7
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 524
    if-lez p1, :cond_34

    iget-object v2, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, p0, mList:Landroid/widget/AbsListView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 525
    .local v0, "longList":Z
    :cond_15
    :goto_15
    iget-boolean v2, p0, mLongList:Z

    if-eq v2, v0, :cond_33

    .line 526
    iput-boolean v0, p0, mLongList:Z

    .line 528
    iget-boolean v2, p0, mLongList:Z

    if-nez v2, :cond_30

    iget-boolean v2, p0, mAlwaysShow:Z

    if-nez v2, :cond_30

    .line 529
    iget-object v2, p0, mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    invoke-virtual {v2}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->clearEffect()V

    .line 530
    const-string v2, "FluidScroller"

    const-string/jumbo v3, "updateLongList() clearEffect !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_30
    invoke-direct {p0, v1}, onStateDependencyChanged(Z)V

    .line 534
    :cond_33
    return-void

    .end local v0    # "longList":Z
    :cond_34
    move v0, v1

    .line 524
    goto :goto_15
.end method

.method private updateOffsetAndRange()V
    .registers 8

    .prologue
    .line 747
    iget-object v4, p0, mTrackImage:Landroid/widget/ImageView;

    .line 748
    .local v4, "trackImage":Landroid/view/View;
    iget-object v3, p0, mThumbImage:Landroid/widget/ImageView;

    .line 751
    .local v3, "thumbImage":Landroid/view/View;
    iget v5, p0, mThumbPosition:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_27

    .line 752
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v0, v5, v6

    .line 753
    .local v0, "halfThumbHeight":F
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float v2, v5, v0

    .line 754
    .local v2, "min":F
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    sub-float v1, v5, v0

    .line 760
    .end local v0    # "halfThumbHeight":F
    .local v1, "max":F
    :goto_20
    iput v2, p0, mThumbOffset:F

    .line 761
    sub-float v5, v1, v2

    iput v5, p0, mThumbRange:F

    .line 762
    return-void

    .line 756
    .end local v1    # "max":F
    .end local v2    # "min":F
    :cond_27
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v2, v5

    .line 757
    .restart local v2    # "min":F
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v1, v5

    .restart local v1    # "max":F
    goto :goto_20
.end method


# virtual methods
.method getEffectState()I
    .registers 2

    .prologue
    .line 485
    iget v0, p0, mEffectState:I

    return v0
.end method

.method getScrollY()F
    .registers 2

    .prologue
    .line 489
    iget v0, p0, mScrollY:F

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 481
    iget v0, p0, mWidth:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .registers 2

    .prologue
    .line 425
    iget-boolean v0, p0, mAlwaysShow:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 406
    iget-boolean v0, p0, mEnabled:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, mLongList:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, mAlwaysShow:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1262
    invoke-virtual {p0}, isEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1274
    :cond_7
    :goto_7
    return v3

    .line 1266
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1267
    .local v0, "actionMasked":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_13

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    :cond_13
    iget v1, p0, mState:I

    if-nez v1, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1270
    const/4 v1, 0x1

    invoke-direct {p0, v1}, setState(I)V

    .line 1271
    invoke-direct {p0}, postAutoHide()V

    goto :goto_7
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 1210
    invoke-virtual {p0}, isEnabled()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1258
    :cond_7
    :goto_7
    return v1

    .line 1214
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_9e

    goto :goto_7

    .line 1216
    :pswitch_10
    const-string v2, "FluidScroller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onInterceptTouchEvent() ACTION_DOWN ev.getY() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, isPointInside(FF)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1223
    iget-object v2, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v2

    if-nez v2, :cond_45

    .line 1226
    const/4 v1, 0x1

    goto :goto_7

    .line 1229
    :cond_45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, mInitialTouchY:F

    .line 1230
    invoke-direct {p0}, startPendingDrag()V

    goto :goto_7

    .line 1234
    :pswitch_4f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, isPointInside(FF)Z

    move-result v2

    if-nez v2, :cond_61

    .line 1235
    invoke-direct {p0}, cancelPendingDrag()V

    goto :goto_7

    .line 1236
    :cond_61
    iget-wide v2, p0, mPendingDrag:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_7

    iget-wide v2, p0, mPendingDrag:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_7

    .line 1237
    invoke-direct {p0}, transitionToHidden()V

    .line 1238
    invoke-direct {p0}, beginDrag()V

    .line 1240
    iget v1, p0, mInitialTouchY:F

    invoke-direct {p0, v1}, getPosFromMotionEvent(F)F

    move-result v0

    .line 1241
    .local v0, "pos":F
    invoke-direct {p0, v0}, scrollTo(F)V

    .line 1243
    iget-object v1, p0, mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget v2, p0, mInitialTouchY:F

    iget-object v3, p0, mFastScrollEffectText:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->open(FLjava/lang/String;)V

    .line 1244
    const-string v1, "FluidScroller"

    const-string/jumbo v2, "onInterceptTouchEvent() ACTION_MOVE pendingdrag open()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    invoke-virtual {p0, p1}, onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_7

    .line 1254
    .end local v0    # "pos":F
    :pswitch_99
    invoke-direct {p0}, cancelPendingDrag()V

    goto/16 :goto_7

    .line 1214
    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_10
        :pswitch_99
        :pswitch_4f
        :pswitch_99
    .end packed-switch
.end method

.method public onItemCountChanged(II)V
    .registers 7
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 508
    iget v2, p0, mOldItemCount:I

    if-ne v2, p2, :cond_8

    iget v2, p0, mOldChildCount:I

    if-eq v2, p1, :cond_28

    .line 509
    :cond_8
    iput p2, p0, mOldItemCount:I

    .line 510
    iput p1, p0, mOldChildCount:I

    .line 512
    sub-int v2, p2, p1

    if-lez v2, :cond_29

    const/4 v1, 0x1

    .line 513
    .local v1, "hasMoreItems":Z
    :goto_11
    if-eqz v1, :cond_25

    iget v2, p0, mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_25

    .line 514
    iget-object v2, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 515
    .local v0, "firstVisibleItem":I
    invoke-direct {p0, v0, p1, p2}, getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, setThumbPos(F)V

    .line 518
    .end local v0    # "firstVisibleItem":I
    :cond_25
    invoke-direct {p0, p1, p2}, updateLongList(II)V

    .line 520
    .end local v1    # "hasMoreItems":Z
    :cond_28
    return-void

    .line 512
    :cond_29
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public onScroll(III)V
    .registers 9
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 850
    invoke-virtual {p0}, isEnabled()Z

    move-result v2

    if-nez v2, :cond_d

    .line 851
    invoke-direct {p0, v0}, setState(I)V

    .line 871
    :cond_c
    :goto_c
    return-void

    .line 855
    :cond_d
    sub-int v2, p3, p2

    if-lez v2, :cond_12

    move v0, v1

    .line 856
    .local v0, "hasMoreItems":Z
    :cond_12
    iget-object v2, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, p0, mList:Landroid/widget/AbsListView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    :cond_23
    iget v2, p0, mState:I

    if-eq v2, v4, :cond_2e

    .line 857
    invoke-direct {p0, p1, p2, p3}, getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, setThumbPos(F)V

    .line 860
    :cond_2e
    iput-boolean v1, p0, mScrollCompleted:Z

    .line 862
    iget v2, p0, mFirstVisibleItem:I

    if-eq v2, p1, :cond_c

    .line 863
    iput p1, p0, mFirstVisibleItem:I

    .line 866
    iget v2, p0, mState:I

    if-eq v2, v4, :cond_c

    .line 867
    invoke-direct {p0, v1}, setState(I)V

    .line 868
    invoke-direct {p0}, postAutoHide()V

    goto :goto_c
.end method

.method public onSectionsChanged()V
    .registers 2

    .prologue
    .line 901
    const/4 v0, 0x0

    iput-object v0, p0, mListAdapter:Landroid/widget/Adapter;

    .line 902
    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 9
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 493
    invoke-virtual {p0}, updateLayout()V

    .line 497
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 498
    .local v0, "orientation":I
    iget v1, p0, mOrientation:I

    if-eq v1, v0, :cond_1f

    .line 499
    iput v0, p0, mOrientation:I

    .line 500
    iget v1, p0, mEffectState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    .line 501
    iput v3, p0, mEffectState:I

    .line 502
    iput v3, p0, mState:I

    .line 505
    :cond_1f
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 1278
    iget-object v1, p0, mContainerRect:Landroid/graphics/Rect;

    .line 1279
    .local v1, "container":Landroid/graphics/Rect;
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 1280
    .local v5, "top":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1282
    .local v0, "bottom":I
    iget-object v6, p0, mTrackImage:Landroid/widget/ImageView;

    .line 1283
    .local v6, "trackImage":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v3, v7

    .line 1284
    .local v3, "min":F
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    int-to-float v2, v7

    .line 1286
    .local v2, "max":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, mScrollY:F

    .line 1288
    invoke-virtual {p0}, isEnabled()Z

    move-result v7

    if-nez v7, :cond_20

    .line 1289
    const/4 v7, 0x0

    .line 1394
    :goto_1f
    return v7

    .line 1292
    :cond_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_206

    .line 1394
    :cond_27
    :goto_27
    const/4 v7, 0x0

    goto :goto_1f

    .line 1294
    :pswitch_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-direct {p0, v7, v8}, isPointInside(FF)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 1295
    iget-object v7, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v7

    if-nez v7, :cond_27

    .line 1296
    invoke-direct {p0}, transitionToHidden()V

    .line 1297
    invoke-direct {p0}, beginDrag()V

    .line 1298
    iget-object v7, p0, mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget v8, p0, mScrollY:F

    iget-object v9, p0, mFastScrollEffectText:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->open(FLjava/lang/String;)V

    .line 1299
    const/4 v7, 0x1

    iput v7, p0, mEffectState:I

    .line 1300
    const-string v7, "FluidScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent() ACTION_DOWN.. open() called with posY "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const/4 v7, 0x1

    goto :goto_1f

    .line 1307
    :pswitch_70
    iget-wide v8, p0, mPendingDrag:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_b2

    .line 1309
    invoke-direct {p0}, beginDrag()V

    .line 1311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v7}, getPosFromMotionEvent(F)F

    move-result v4

    .line 1312
    .local v4, "pos":F
    invoke-direct {p0, v4}, setThumbPos(F)V

    .line 1313
    invoke-direct {p0, v4}, scrollTo(F)V

    .line 1314
    iget-object v7, p0, mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget v8, p0, mScrollY:F

    iget-object v9, p0, mFastScrollEffectText:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->open(FLjava/lang/String;)V

    .line 1315
    const/4 v7, 0x1

    iput v7, p0, mEffectState:I

    .line 1316
    const-string v7, "FluidScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent() ACTION_UP.. open() called with posY "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    .end local v4    # "pos":F
    :cond_b2
    iget v7, p0, mState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_27

    .line 1325
    iget-object v7, p0, mList:Landroid/widget/AbsListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1326
    iget-object v7, p0, mList:Landroid/widget/AbsListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1329
    const/4 v7, 0x1

    invoke-direct {p0, v7}, setState(I)V

    .line 1330
    invoke-direct {p0}, postAutoHide()V

    .line 1332
    iget-object v7, p0, mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    invoke-virtual {v7}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->close()V

    .line 1333
    const/4 v7, 0x0

    iput v7, p0, mEffectState:I

    .line 1334
    const/4 v7, 0x0

    iput v7, p0, mScrollY:F

    .line 1336
    const/4 v7, 0x1

    goto/16 :goto_1f

    .line 1341
    :pswitch_d8
    const-string v7, "FluidScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent() ACTION_MOVE.. mState= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, mState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mInitialTouchY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, mInitialTouchY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    iget-wide v8, p0, mPendingDrag:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_174

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, mInitialTouchY:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, mScaledTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_174

    .line 1343
    invoke-direct {p0}, transitionToHidden()V

    .line 1344
    invoke-direct {p0}, beginDrag()V

    .line 1345
    iget v7, p0, mScrollY:F

    int-to-float v8, v5

    cmpl-float v7, v7, v8

    if-lez v7, :cond_174

    iget v7, p0, mScrollY:F

    int-to-float v8, v0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_174

    .line 1346
    const-string v7, "FluidScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent() ACTION_MOVE 1 mScrollY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, mScrollY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", min="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", max="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    iget v7, p0, mScrollY:F

    int-to-float v8, v5

    add-float/2addr v8, v3

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1e3

    .line 1349
    int-to-float v7, v5

    add-float/2addr v7, v3

    iput v7, p0, mScrollY:F

    .line 1353
    :cond_168
    :goto_168
    iget-object v7, p0, mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget v8, p0, mScrollY:F

    iget-object v9, p0, mFastScrollEffectText:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->open(FLjava/lang/String;)V

    .line 1354
    const/4 v7, 0x1

    iput v7, p0, mEffectState:I

    .line 1360
    :cond_174
    iget v7, p0, mState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_27

    .line 1362
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v7}, getPosFromMotionEvent(F)F

    move-result v4

    .line 1363
    .restart local v4    # "pos":F
    invoke-direct {p0, v4}, setThumbPos(F)V

    .line 1366
    iget-boolean v7, p0, mScrollCompleted:Z

    if-eqz v7, :cond_18b

    .line 1367
    invoke-direct {p0, v4}, scrollTo(F)V

    .line 1370
    :cond_18b
    iget v7, p0, mScrollY:F

    int-to-float v8, v5

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1e0

    iget v7, p0, mScrollY:F

    int-to-float v8, v0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1e0

    .line 1371
    const-string v7, "FluidScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent() ACTION_MOVE 2 mScrollY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, mScrollY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", min="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", max="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    iget v7, p0, mScrollY:F

    int-to-float v8, v5

    add-float/2addr v8, v3

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1ed

    .line 1374
    int-to-float v7, v5

    add-float/2addr v7, v3

    iput v7, p0, mScrollY:F

    .line 1378
    :cond_1d4
    :goto_1d4
    iget-object v7, p0, mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget v8, p0, mScrollY:F

    iget-object v9, p0, mFastScrollEffectText:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->open(FLjava/lang/String;)V

    .line 1379
    const/4 v7, 0x1

    iput v7, p0, mEffectState:I

    .line 1382
    :cond_1e0
    const/4 v7, 0x1

    goto/16 :goto_1f

    .line 1350
    .end local v4    # "pos":F
    :cond_1e3
    iget v7, p0, mScrollY:F

    cmpl-float v7, v7, v2

    if-lez v7, :cond_168

    .line 1351
    iput v2, p0, mScrollY:F

    goto/16 :goto_168

    .line 1375
    .restart local v4    # "pos":F
    :cond_1ed
    iget v7, p0, mScrollY:F

    cmpl-float v7, v7, v2

    if-lez v7, :cond_1d4

    .line 1376
    iput v2, p0, mScrollY:F

    goto :goto_1d4

    .line 1387
    .end local v4    # "pos":F
    :pswitch_1f6
    invoke-direct {p0}, cancelPendingDrag()V

    .line 1388
    iget-object v7, p0, mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    invoke-virtual {v7}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->close()V

    .line 1389
    const/4 v7, 0x0

    iput v7, p0, mEffectState:I

    .line 1390
    const/4 v7, 0x0

    iput v7, p0, mScrollY:F

    goto/16 :goto_27

    .line 1292
    :pswitch_data_206
    .packed-switch 0x0
        :pswitch_29
        :pswitch_70
        :pswitch_d8
        :pswitch_1f6
    .end packed-switch
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 385
    iget-object v0, p0, mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 386
    iget-object v0, p0, mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 387
    iget-object v0, p0, mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 388
    return-void
.end method

.method public setAlwaysShow(Z)V
    .registers 3
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 413
    iget-boolean v0, p0, mAlwaysShow:Z

    if-eq v0, p1, :cond_a

    .line 414
    iput-boolean p1, p0, mAlwaysShow:Z

    .line 416
    const/4 v0, 0x0

    invoke-direct {p0, v0}, onStateDependencyChanged(Z)V

    .line 418
    :cond_a
    return-void
.end method

.method public setEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 394
    const-string v0, "FluidScroller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnabled() enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-boolean v0, p0, mEnabled:Z

    if-eq v0, p1, :cond_23

    .line 396
    iput-boolean p1, p0, mEnabled:Z

    .line 398
    const/4 v0, 0x1

    invoke-direct {p0, v0}, onStateDependencyChanged(Z)V

    .line 400
    :cond_23
    return-void
.end method

.method public setScrollBarStyle(I)V
    .registers 3
    .param p1, "style"    # I

    .prologue
    .line 451
    iget v0, p0, mScrollBarStyle:I

    if-eq v0, p1, :cond_9

    .line 452
    iput p1, p0, mScrollBarStyle:I

    .line 454
    invoke-virtual {p0}, updateLayout()V

    .line 456
    :cond_9
    return-void
.end method

.method public setScrollbarPosition(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 466
    if-nez p1, :cond_c

    .line 467
    iget-object v1, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1a

    move p1, v0

    .line 471
    :cond_c
    :goto_c
    iget v1, p0, mScrollbarPosition:I

    if-eq v1, p1, :cond_19

    .line 472
    iput p1, p0, mScrollbarPosition:I

    .line 473
    if-eq p1, v0, :cond_1c

    :goto_14
    iput-boolean v0, p0, mLayoutFromRight:Z

    .line 476
    invoke-virtual {p0}, updateLayout()V

    .line 478
    :cond_19
    return-void

    .line 467
    :cond_1a
    const/4 p1, 0x2

    goto :goto_c

    .line 473
    :cond_1c
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public setStyle(I)V
    .registers 11
    .param p1, "resId"    # I

    .prologue
    const/4 v8, 0x0

    .line 325
    iget-object v4, p0, mContext:Landroid/content/Context;

    const/4 v5, 0x0

    sget-object v6, Lcom/android/internal/R$styleable;->FastScroll:[I

    const v7, 0x10103f7

    invoke-virtual {v4, v5, v6, v7, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 327
    .local v3, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 328
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_86

    .line 329
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 330
    .local v2, "index":I
    packed-switch v2, :pswitch_data_8e

    .line 328
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 332
    :pswitch_1e
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, mOverlayPosition:I

    goto :goto_1b

    .line 335
    :pswitch_25
    iget-object v4, p0, mPreviewResId:[I

    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v4, v8

    goto :goto_1b

    .line 338
    :pswitch_2e
    iget-object v4, p0, mPreviewResId:[I

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v4, v5

    goto :goto_1b

    .line 341
    :pswitch_38
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1b

    .line 344
    :pswitch_3f
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1b

    .line 347
    :pswitch_46
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, mTextAppearance:I

    goto :goto_1b

    .line 350
    :pswitch_4d
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1b

    .line 353
    :pswitch_54
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, mTextSize:F

    goto :goto_1b

    .line 356
    :pswitch_5c
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, mPreviewMinWidth:I

    goto :goto_1b

    .line 359
    :pswitch_63
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, mPreviewMinHeight:I

    goto :goto_1b

    .line 362
    :pswitch_6a
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, mThumbMinWidth:I

    goto :goto_1b

    .line 365
    :pswitch_71
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, mThumbMinHeight:I

    goto :goto_1b

    .line 368
    :pswitch_78
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, mPreviewPadding:I

    goto :goto_1b

    .line 371
    :pswitch_7f
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, mThumbPosition:I

    goto :goto_1b

    .line 376
    .end local v2    # "index":I
    :cond_86
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 378
    invoke-direct {p0}, updateAppearance()V

    .line 379
    return-void

    .line 330
    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_46
        :pswitch_54
        :pswitch_4d
        :pswitch_78
        :pswitch_5c
        :pswitch_63
        :pswitch_7f
        :pswitch_38
        :pswitch_6a
        :pswitch_71
        :pswitch_3f
        :pswitch_2e
        :pswitch_25
        :pswitch_1e
    .end packed-switch
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 462
    const/4 v0, 0x0

    invoke-direct {p0, v0}, setState(I)V

    .line 463
    return-void
.end method

.method public updateLayout()V
    .registers 6

    .prologue
    .line 542
    iget-boolean v0, p0, mUpdatingLayout:Z

    if-eqz v0, :cond_5

    .line 560
    :goto_4
    return-void

    .line 545
    :cond_5
    iget-object v0, p0, mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->clearEffect()V

    .line 546
    const-string v0, "FluidScroller"

    const-string/jumbo v1, "updateLayout() clearEffect !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget-object v1, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getWidth()I

    move-result v3

    iget-object v4, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->setLayout(IIII)V

    .line 548
    const-string v0, "FluidScroller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLayout() l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, mUpdatingLayout:Z

    .line 552
    invoke-direct {p0}, updateContainerRect()V

    .line 554
    invoke-direct {p0}, layoutThumb()V

    .line 555
    invoke-direct {p0}, layoutTrack()V

    .line 557
    invoke-direct {p0}, updateOffsetAndRange()V

    .line 559
    const/4 v0, 0x0

    iput-boolean v0, p0, mUpdatingLayout:Z

    goto/16 :goto_4
.end method
