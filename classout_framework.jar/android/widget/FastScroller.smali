.class Landroid/widget/FastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"


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

.field private static final DURATION_FADE_IN:I = 0x96

.field private static final DURATION_FADE_OUT:I = 0x12c

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

.field private static final MIN_PAGES:I = 0x4

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
.field private mAlwaysShow:Z

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mCurrentSection:I

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final mDeferHide:Ljava/lang/Runnable;

.field private mEnabled:Z

.field private mFirstVisibleItem:I

.field private mHeaderCount:I

.field private mInitialTouchY:F

.field private mLayoutFromRight:Z

.field private final mList:Landroid/widget/AbsListView;

.field private mListAdapter:Landroid/widget/Adapter;

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private final mMinimumTouchTarget:I

.field private mOldChildCount:I

.field private mOldItemCount:I

.field private final mOverlay:Landroid/view/ViewGroupOverlay;

.field private mOverlayPosition:I

.field private mPendingDrag:J

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final mPreviewImage:Landroid/view/View;

.field private mPreviewMinHeight:I

.field private mPreviewMinWidth:I

.field private mPreviewPadding:I

.field private final mPreviewResId:[I

.field private final mPrimaryText:Landroid/widget/TextView;

.field private mScaledTouchSlop:I

.field private mScrollBarStyle:I

.field private mScrollCompleted:Z

.field private mScrollbarPosition:I

.field private final mSecondaryText:Landroid/widget/TextView;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSections:[Ljava/lang/Object;

.field private mShowingPreview:Z

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
    .line 96
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, TAP_TIMEOUT:J

    .line 1604
    new-instance v0, Landroid/widget/FastScroller$3;

    const-string v1, "left"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$3;-><init>(Ljava/lang/String;)V

    sput-object v0, LEFT:Landroid/util/Property;

    .line 1620
    new-instance v0, Landroid/widget/FastScroller$4;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, TOP:Landroid/util/Property;

    .line 1636
    new-instance v0, Landroid/widget/FastScroller$5;

    const-string/jumbo v1, "right"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, RIGHT:Landroid/util/Property;

    .line 1652
    new-instance v0, Landroid/widget/FastScroller$6;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, BOTTOM:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/widget/AbsListView;I)V
    .registers 9
    .param p1, "listView"    # Landroid/widget/AbsListView;
    .param p2, "styleResId"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, mTempBounds:Landroid/graphics/Rect;

    .line 99
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, mTempMargins:Landroid/graphics/Rect;

    .line 100
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, mContainerRect:Landroid/graphics/Rect;

    .line 113
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, mPreviewResId:[I

    .line 166
    iput v4, p0, mCurrentSection:I

    .line 169
    iput v4, p0, mScrollbarPosition:I

    .line 221
    const-wide/16 v4, -0x1

    iput-wide v4, p0, mPendingDrag:J

    .line 230
    new-instance v3, Landroid/widget/FastScroller$1;

    invoke-direct {v3, p0}, Landroid/widget/FastScroller$1;-><init>(Landroid/widget/FastScroller;)V

    iput-object v3, p0, mDeferHide:Ljava/lang/Runnable;

    .line 240
    new-instance v3, Landroid/widget/FastScroller$2;

    invoke-direct {v3, p0}, Landroid/widget/FastScroller$2;-><init>(Landroid/widget/FastScroller;)V

    iput-object v3, p0, mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 248
    iput-object p1, p0, mList:Landroid/widget/AbsListView;

    .line 249
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v3

    iput v3, p0, mOldItemCount:I

    .line 250
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    iput v3, p0, mOldChildCount:I

    .line 252
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 253
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, mScaledTouchSlop:I

    .line 254
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getScrollBarStyle()I

    move-result v3

    iput v3, p0, mScrollBarStyle:I

    .line 256
    iput-boolean v2, p0, mScrollCompleted:Z

    .line 257
    iput v2, p0, mState:I

    .line 258
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_e0

    :goto_65
    iput-boolean v2, p0, mMatchDragPosition:Z

    .line 261
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, mTrackImage:Landroid/widget/ImageView;

    .line 262
    iget-object v2, p0, mTrackImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 263
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, mThumbImage:Landroid/widget/ImageView;

    .line 264
    iget-object v2, p0, mThumbImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 265
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, mPreviewImage:Landroid/view/View;

    .line 266
    iget-object v2, p0, mPreviewImage:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 268
    invoke-direct {p0, v0}, createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, mPrimaryText:Landroid/widget/TextView;

    .line 269
    invoke-direct {p0, v0}, createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, mSecondaryText:Landroid/widget/TextView;

    .line 271
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, mMinimumTouchTarget:I

    .line 274
    invoke-virtual {p0, p2}, setStyle(I)V

    .line 276
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    .line 277
    .local v1, "overlay":Landroid/view/ViewGroupOverlay;
    iput-object v1, p0, mOverlay:Landroid/view/ViewGroupOverlay;

    .line 278
    iget-object v2, p0, mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 279
    iget-object v2, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 280
    iget-object v2, p0, mPreviewImage:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 281
    iget-object v2, p0, mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 282
    iget-object v2, p0, mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 284
    invoke-direct {p0}, getSectionsFromIndexer()V

    .line 285
    iget v2, p0, mOldChildCount:I

    iget v3, p0, mOldItemCount:I

    invoke-direct {p0, v2, v3}, updateLongList(II)V

    .line 286
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v2

    invoke-virtual {p0, v2}, setScrollbarPosition(I)V

    .line 287
    invoke-direct {p0}, postAutoHide()V

    .line 288
    return-void

    .line 258
    .end local v1    # "overlay":Landroid/view/ViewGroupOverlay;
    :cond_e0
    const/4 v2, 0x0

    goto :goto_65
.end method

.method static synthetic access$000(Landroid/widget/FastScroller;I)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/FastScroller;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, setState(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/FastScroller;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/FastScroller;

    .prologue
    .line 54
    iget-boolean v0, p0, mShowingPrimary:Z

    return v0
.end method

.method static synthetic access$102(Landroid/widget/FastScroller;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/FastScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, mShowingPrimary:Z

    return p1
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .registers 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 1597
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

    .line 1668
    sget-object v4, LEFT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1669
    .local v1, "left":Landroid/animation/PropertyValuesHolder;
    sget-object v4, TOP:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1670
    .local v3, "top":Landroid/animation/PropertyValuesHolder;
    sget-object v4, RIGHT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1671
    .local v2, "right":Landroid/animation/PropertyValuesHolder;
    sget-object v4, BOTTOM:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1672
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
    .line 1590
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
    .line 602
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 603
    iget-boolean v0, p0, mLayoutFromRight:Z

    if-eqz v0, :cond_19

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 604
    return-void

    .line 603
    :cond_19
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private beginDrag()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1367
    const-wide/16 v0, -0x1

    iput-wide v0, p0, mPendingDrag:J

    .line 1369
    const/4 v0, 0x2

    invoke-direct {p0, v0}, setState(I)V

    .line 1371
    iget-object v0, p0, mListAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_14

    iget-object v0, p0, mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_14

    .line 1372
    invoke-direct {p0}, getSectionsFromIndexer()V

    .line 1375
    :cond_14
    iget-object v0, p0, mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_22

    .line 1376
    iget-object v0, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1377
    iget-object v0, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1380
    :cond_22
    invoke-direct {p0}, cancelFling()V

    .line 1381
    return-void
.end method

.method private cancelFling()V
    .registers 10

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 1343
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1345
    .local v8, "cancelFling":Landroid/view/MotionEvent;
    iget-object v0, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1346
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1347
    return-void
.end method

.method private cancelPendingDrag()V
    .registers 3

    .prologue
    .line 1355
    const-wide/16 v0, -0x1

    iput-wide v0, p0, mPendingDrag:J

    .line 1356
    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    .line 542
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 544
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 545
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 546
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 547
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 548
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 549
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 552
    iget-object v2, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 554
    return-object v1
.end method

.method private getPosFromItemCount(III)F
    .registers 24
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .line 1250
    move-object/from16 v0, p0

    iget-object v15, v0, mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1251
    .local v15, "sectionIndexer":Landroid/widget/SectionIndexer;
    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, mListAdapter:Landroid/widget/Adapter;

    move-object/from16 v17, v0

    if-nez v17, :cond_11

    .line 1252
    :cond_e
    invoke-direct/range {p0 .. p0}, getSectionsFromIndexer()V

    .line 1255
    :cond_11
    if-eqz p2, :cond_15

    if-nez p3, :cond_17

    .line 1257
    :cond_15
    const/4 v12, 0x0

    .line 1335
    :cond_16
    :goto_16
    return v12

    .line 1260
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

    .line 1262
    .local v5, "hasSections":Z
    :goto_2f
    if-eqz v5, :cond_39

    move-object/from16 v0, p0

    iget-boolean v0, v0, mMatchDragPosition:Z

    move/from16 v17, v0

    if-nez v17, :cond_52

    .line 1263
    :cond_39
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_43

    .line 1265
    const/4 v12, 0x0

    goto :goto_16

    .line 1260
    .end local v5    # "hasSections":Z
    :cond_41
    const/4 v5, 0x0

    goto :goto_2f

    .line 1267
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

    .line 1272
    :cond_52
    move-object/from16 v0, p0

    iget v0, v0, mHeaderCount:I

    move/from16 v17, v0

    sub-int p1, p1, v17

    .line 1273
    if-gez p1, :cond_5e

    .line 1274
    const/4 v12, 0x0

    goto :goto_16

    .line 1276
    :cond_5e
    move-object/from16 v0, p0

    iget v0, v0, mHeaderCount:I

    move/from16 v17, v0

    sub-int p3, p3, v17

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1281
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_7a

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v17

    if-nez v17, :cond_109

    .line 1282
    :cond_7a
    const/4 v6, 0x0

    .line 1288
    .local v6, "incrementalPos":F
    :goto_7b
    move/from16 v0, p1

    invoke-interface {v15, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v13

    .line 1289
    .local v13, "section":I
    invoke-interface {v15, v13}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v16

    .line 1290
    .local v16, "sectionPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v14, v0

    .line 1292
    .local v14, "sectionCount":I
    add-int/lit8 v17, v14, -0x1

    move/from16 v0, v17

    if-ge v13, v0, :cond_12f

    .line 1294
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    if-ge v0, v14, :cond_12b

    .line 1295
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 1299
    .local v9, "nextSectionPos":I
    :goto_a2
    sub-int v11, v9, v16

    .line 1306
    .end local v9    # "nextSectionPos":I
    .local v11, "positionsInSection":I
    :goto_a4
    if-nez v11, :cond_133

    .line 1307
    const/4 v10, 0x0

    .line 1313
    .local v10, "posWithinSection":F
    :goto_a7
    int-to-float v0, v13

    move/from16 v17, v0

    add-float v17, v17, v10

    int-to-float v0, v14

    move/from16 v18, v0

    div-float v12, v17, v18

    .line 1318
    .local v12, "result":F
    if-lez p1, :cond_16

    add-int v17, p1, p2

    move/from16 v0, v17

    move/from16 v1, p3

    if-ne v0, v1, :cond_16

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    add-int/lit8 v18, p2, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1320
    .local v7, "lastChild":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v2

    .line 1323
    .local v2, "bottomPadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v17

    if-eqz v17, :cond_148

    .line 1324
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 1325
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

    .line 1330
    .local v4, "currentVisibleSize":I
    :goto_f3
    if-lez v4, :cond_16

    if-lez v8, :cond_16

    .line 1331
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

    .line 1284
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

    .line 1297
    .restart local v13    # "section":I
    .restart local v14    # "sectionCount":I
    .restart local v16    # "sectionPos":I
    :cond_12b
    add-int/lit8 v9, p3, -0x1

    .restart local v9    # "nextSectionPos":I
    goto/16 :goto_a2

    .line 1301
    .end local v9    # "nextSectionPos":I
    :cond_12f
    sub-int v11, p3, v16

    .restart local v11    # "positionsInSection":I
    goto/16 :goto_a4

    .line 1309
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

    .line 1327
    .restart local v2    # "bottomPadding":I
    .restart local v7    # "lastChild":Landroid/view/View;
    .restart local v12    # "result":F
    :cond_148
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v17

    add-int v8, v17, v2

    .line 1328
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

    .line 1233
    iget v1, p0, mThumbRange:F

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_8

    .line 1237
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

    .line 955
    iput-object v3, p0, mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 957
    iget-object v2, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 958
    .local v0, "adapter":Landroid/widget/Adapter;
    instance-of v2, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_1c

    move-object v2, v0

    .line 959
    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, mHeaderCount:I

    .line 960
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 963
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_1c
    instance-of v2, v0, Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_3a

    move-object v2, v0

    .line 964
    check-cast v2, Landroid/widget/ExpandableListConnector;

    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 966
    .local v1, "expAdapter":Landroid/widget/ExpandableListAdapter;
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_39

    .line 967
    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1    # "expAdapter":Landroid/widget/ExpandableListAdapter;
    iput-object v1, p0, mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 968
    iput-object v0, p0, mListAdapter:Landroid/widget/Adapter;

    .line 969
    iget-object v2, p0, mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, mSections:[Ljava/lang/Object;

    .line 979
    .end local v0    # "adapter":Landroid/widget/Adapter;
    :cond_39
    :goto_39
    return-void

    .line 971
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_3a
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_4d

    .line 972
    iput-object v0, p0, mListAdapter:Landroid/widget/Adapter;

    .line 973
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 974
    iget-object v2, p0, mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, mSections:[Ljava/lang/Object;

    goto :goto_39

    .line 976
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_4d
    iput-object v0, p0, mListAdapter:Landroid/widget/Adapter;

    .line 977
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
    .line 1571
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1572
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x0

    .line 1574
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v4, p2

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_9
    if-ltz v3, :cond_24

    .line 1575
    aget-object v4, p2, v3

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1576
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_20

    .line 1577
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1574
    :goto_1d
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 1579
    :cond_20
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1d

    .line 1583
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_24
    return-object v1
.end method

.method private isPointInside(FF)Z
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1528
    invoke-direct {p0, p1}, isPointInsideX(F)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_10

    invoke-direct {p0, p2}, isPointInsideY(F)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isPointInsideX(F)Z
    .registers 11
    .param p1, "x"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 1532
    iget-object v7, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v2

    .line 1533
    .local v2, "offset":F
    iget-object v7, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLeft()I

    move-result v7

    int-to-float v7, v7

    add-float v1, v7, v2

    .line 1534
    .local v1, "left":F
    iget-object v7, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getRight()I

    move-result v7

    int-to-float v7, v7

    add-float v3, v7, v2

    .line 1537
    .local v3, "right":F
    iget v7, p0, mMinimumTouchTarget:I

    int-to-float v7, v7

    sub-float v8, v3, v1

    sub-float v4, v7, v8

    .line 1538
    .local v4, "targetSizeDiff":F
    cmpl-float v7, v4, v0

    if-lez v7, :cond_27

    move v0, v4

    .line 1540
    .local v0, "adjust":F
    :cond_27
    iget-boolean v7, p0, mLayoutFromRight:Z

    if-eqz v7, :cond_3a

    .line 1541
    iget-object v7, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLeft()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v0

    cmpl-float v7, p1, v7

    if-ltz v7, :cond_38

    .line 1543
    :cond_37
    :goto_37
    return v5

    :cond_38
    move v5, v6

    .line 1541
    goto :goto_37

    .line 1543
    :cond_3a
    iget-object v7, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getRight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v0

    cmpg-float v7, p1, v7

    if-lez v7, :cond_37

    move v5, v6

    goto :goto_37
.end method

.method private isPointInsideY(F)Z
    .registers 9
    .param p1, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 1548
    iget-object v5, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v2

    .line 1549
    .local v2, "offset":F
    iget-object v5, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float v4, v5, v2

    .line 1550
    .local v4, "top":F
    iget-object v5, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float v1, v5, v2

    .line 1553
    .local v1, "bottom":F
    iget v5, p0, mMinimumTouchTarget:I

    int-to-float v5, v5

    sub-float v6, v1, v4

    sub-float v3, v5, v6

    .line 1554
    .local v3, "targetSizeDiff":F
    cmpl-float v5, v3, v0

    if-lez v5, :cond_28

    const/high16 v5, 0x40000000    # 2.0f

    div-float v0, v3, v5

    .line 1556
    .local v0, "adjust":F
    :cond_28
    sub-float v5, v4, v0

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_36

    add-float v5, v1, v0

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_36

    const/4 v5, 0x1

    :goto_35
    return v5

    :cond_36
    const/4 v5, 0x0

    goto :goto_35
.end method

.method private layoutThumb()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 760
    iget-object v0, p0, mTempBounds:Landroid/graphics/Rect;

    .line 761
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v2, v0}, measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 762
    iget-object v1, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 763
    return-void
.end method

.method private layoutTrack()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    .line 770
    iget-object v10, p0, mTrackImage:Landroid/widget/ImageView;

    .line 771
    .local v10, "track":Landroid/view/View;
    iget-object v7, p0, mThumbImage:Landroid/widget/ImageView;

    .line 772
    .local v7, "thumb":Landroid/view/View;
    iget-object v1, p0, mContainerRect:Landroid/graphics/Rect;

    .line 773
    .local v1, "container":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 774
    .local v5, "maxWidth":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 775
    .local v4, "maxHeight":I
    const/high16 v13, -0x80000000

    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 776
    .local v12, "widthMeasureSpec":I
    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v2

    .line 778
    .local v2, "heightMeasureSpec":I
    invoke-virtual {v10, v12, v2}, Landroid/view/View;->measure(II)V

    .line 782
    iget v13, p0, mThumbPosition:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_44

    .line 783
    iget v9, v1, Landroid/graphics/Rect;->top:I

    .line 784
    .local v9, "top":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 791
    .local v0, "bottom":I
    :goto_2d
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 792
    .local v11, "trackWidth":I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v14, v11

    div-int/lit8 v14, v14, 0x2

    add-int v3, v13, v14

    .line 793
    .local v3, "left":I
    add-int v6, v3, v11

    .line 794
    .local v6, "right":I
    invoke-virtual {v10, v3, v9, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 795
    return-void

    .line 786
    .end local v0    # "bottom":I
    .end local v3    # "left":I
    .end local v6    # "right":I
    .end local v9    # "top":I
    .end local v11    # "trackWidth":I
    :cond_44
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v13

    div-int/lit8 v8, v13, 0x2

    .line 787
    .local v8, "thumbHalfHeight":I
    iget v13, v1, Landroid/graphics/Rect;->top:I

    add-int v9, v13, v8

    .line 788
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
    .line 694
    if-nez p2, :cond_60

    .line 695
    const/4 v9, 0x0

    .line 696
    .local v9, "marginLeft":I
    const/4 v11, 0x0

    .line 697
    .local v11, "marginTop":I
    const/4 v10, 0x0

    .line 704
    .local v10, "marginRight":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, mContainerRect:Landroid/graphics/Rect;

    .line 705
    .local v4, "container":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 706
    .local v6, "containerWidth":I
    const/16 v16, 0x0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 707
    .local v1, "adjMaxHeight":I
    const/16 v16, 0x0

    sub-int v17, v6, v9

    sub-int v17, v17, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 708
    .local v2, "adjMaxWidth":I
    const/high16 v16, -0x80000000

    move/from16 v0, v16

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 709
    .local v15, "widthMeasureSpec":I
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v7

    .line 711
    .local v7, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v7}, Landroid/view/View;->measure(II)V

    .line 714
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 715
    .local v5, "containerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 716
    .local v14, "width":I
    div-int/lit8 v16, v5, 0xa

    add-int v16, v16, v11

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    add-int v13, v16, v17

    .line 717
    .local v13, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v3, v13, v16

    .line 718
    .local v3, "bottom":I
    sub-int v16, v6, v14

    div-int/lit8 v16, v16, 0x2

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    add-int v8, v16, v17

    .line 719
    .local v8, "left":I
    add-int v12, v8, v14

    .line 720
    .local v12, "right":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v13, v12, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 721
    return-void

    .line 699
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

    .line 700
    .restart local v9    # "marginLeft":I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 701
    .restart local v11    # "marginTop":I
    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->right:I

    .restart local v10    # "marginRight":I
    goto :goto_5
.end method

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 616
    iget-object v0, p0, mTempMargins:Landroid/graphics/Rect;

    .line 617
    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 618
    iget-object v1, p0, mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 619
    iget-object v1, p0, mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 620
    iget-object v1, p0, mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 622
    iget v1, p0, mOverlayPosition:I

    if-nez v1, :cond_2a

    .line 623
    invoke-direct {p0, p1, v0, p2}, measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 627
    :goto_29
    return-void

    .line 625
    :cond_2a
    iget-object v1, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_29
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 23
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adjacent"    # Landroid/view/View;
    .param p3, "margins"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 644
    if-nez p3, :cond_62

    .line 645
    const/4 v8, 0x0

    .line 646
    .local v8, "marginLeft":I
    const/4 v10, 0x0

    .line 647
    .local v10, "marginTop":I
    const/4 v9, 0x0

    .line 654
    .local v9, "marginRight":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, mContainerRect:Landroid/graphics/Rect;

    .line 655
    .local v4, "container":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 657
    .local v5, "containerWidth":I
    if-nez p2, :cond_6f

    .line 658
    move v11, v5

    .line 665
    .local v11, "maxWidth":I
    :goto_10
    const/16 v16, 0x0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 666
    .local v1, "adjMaxHeight":I
    const/16 v16, 0x0

    sub-int v17, v11, v8

    sub-int v17, v17, v9

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 667
    .local v2, "adjMaxWidth":I
    const/high16 v16, -0x80000000

    move/from16 v0, v16

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 668
    .local v15, "widthMeasureSpec":I
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v6

    .line 670
    .local v6, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v6}, Landroid/view/View;->measure(II)V

    .line 673
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 676
    .local v14, "width":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, mLayoutFromRight:Z

    move/from16 v16, v0

    if-eqz v16, :cond_88

    .line 677
    if-nez p2, :cond_83

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    :goto_51
    sub-int v12, v16, v9

    .line 678
    .local v12, "right":I
    sub-int v7, v12, v14

    .line 685
    .local v7, "left":I
    :goto_55
    move v13, v10

    .line 686
    .local v13, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v3, v13, v16

    .line 687
    .local v3, "bottom":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v7, v13, v12, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 688
    return-void

    .line 649
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

    .line 650
    .restart local v8    # "marginLeft":I
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 651
    .restart local v10    # "marginTop":I
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/Rect;->right:I

    .restart local v9    # "marginRight":I
    goto :goto_5

    .line 659
    .restart local v4    # "container":Landroid/graphics/Rect;
    .restart local v5    # "containerWidth":I
    :cond_6f
    move-object/from16 v0, p0

    iget-boolean v0, v0, mLayoutFromRight:Z

    move/from16 v16, v0

    if-eqz v16, :cond_7c

    .line 660
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v11

    .restart local v11    # "maxWidth":I
    goto :goto_10

    .line 662
    .end local v11    # "maxWidth":I
    :cond_7c
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v16

    sub-int v11, v5, v16

    .restart local v11    # "maxWidth":I
    goto :goto_10

    .line 677
    .restart local v1    # "adjMaxHeight":I
    .restart local v2    # "adjMaxWidth":I
    .restart local v6    # "heightMeasureSpec":I
    .restart local v14    # "width":I
    .restart local v15    # "widthMeasureSpec":I
    :cond_83
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v16

    goto :goto_51

    .line 680
    :cond_88
    if-nez p2, :cond_93

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    :goto_8e
    add-int v7, v16, v8

    .line 681
    .restart local v7    # "left":I
    add-int v12, v7, v14

    .restart local v12    # "right":I
    goto :goto_55

    .line 680
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

    .line 446
    invoke-virtual {p0}, isEnabled()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 447
    invoke-virtual {p0}, isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 448
    invoke-direct {p0, v1}, setState(I)V

    .line 459
    :cond_10
    :goto_10
    iget-object v0, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 460
    return-void

    .line 449
    :cond_16
    iget v0, p0, mState:I

    if-ne v0, v1, :cond_1e

    .line 450
    invoke-direct {p0}, postAutoHide()V

    goto :goto_10

    .line 451
    :cond_1e
    if-eqz p1, :cond_10

    .line 452
    invoke-direct {p0, v1}, setState(I)V

    .line 453
    invoke-direct {p0}, postAutoHide()V

    goto :goto_10

    .line 456
    :cond_27
    invoke-virtual {p0}, stop()V

    goto :goto_10
.end method

.method private postAutoHide()V
    .registers 5

    .prologue
    .line 926
    iget-object v0, p0, mList:Landroid/widget/AbsListView;

    iget-object v1, p0, mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 927
    iget-object v0, p0, mList:Landroid/widget/AbsListView;

    iget-object v1, p0, mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 928
    return-void
.end method

.method private refreshDrawablePressedState()V
    .registers 4

    .prologue
    .line 852
    iget v1, p0, mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    const/4 v0, 0x1

    .line 853
    .local v0, "isPressed":Z
    :goto_6
    iget-object v1, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 854
    iget-object v1, p0, mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 855
    return-void

    .line 852
    .end local v0    # "isPressed":Z
    :cond_11
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private scrollTo(F)V
    .registers 27
    .param p1, "position"    # F

    .prologue
    .line 990
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mScrollCompleted:Z

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    .line 993
    .local v4, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, mSections:[Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 994
    .local v18, "sections":[Ljava/lang/Object;
    if-nez v18, :cond_a0

    const/16 v16, 0x0

    .line 996
    .local v16, "sectionCount":I
    :goto_1c
    if-eqz v18, :cond_18a

    const/16 v22, 0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-le v0, v1, :cond_18a

    .line 997
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, p1

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    add-int/lit8 v24, v16, -0x1

    invoke-static/range {v22 .. v24}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    .line 999
    .local v5, "exactSection":I
    move/from16 v21, v5

    .line 1000
    .local v21, "targetSection":I
    move-object/from16 v0, p0

    iget-object v0, v0, mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v20

    .line 1001
    .local v20, "targetIndex":I
    move/from16 v17, v21

    .line 1009
    .local v17, "sectionIndex":I
    move v9, v4

    .line 1010
    .local v9, "nextIndex":I
    move/from16 v13, v20

    .line 1011
    .local v13, "prevIndex":I
    move/from16 v15, v21

    .line 1012
    .local v15, "prevSection":I
    add-int/lit8 v12, v21, 0x1

    .line 1015
    .local v12, "nextSection":I
    add-int/lit8 v22, v16, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_67

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v22, v0

    add-int/lit8 v23, v21, 0x1

    invoke-interface/range {v22 .. v23}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 1020
    :cond_67
    move/from16 v0, v20

    if-ne v9, v0, :cond_85

    .line 1022
    :cond_6b
    if-lez v21, :cond_85

    .line 1023
    add-int/lit8 v21, v21, -0x1

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v13

    .line 1025
    move/from16 v0, v20

    if-eq v13, v0, :cond_a7

    .line 1026
    move/from16 v15, v21

    .line 1027
    move/from16 v17, v21

    .line 1043
    :cond_85
    :goto_85
    add-int/lit8 v10, v12, 0x1

    .line 1044
    .local v10, "nextNextSection":I
    :goto_87
    move/from16 v0, v16

    if-ge v10, v0, :cond_ac

    move-object/from16 v0, p0

    iget-object v0, v0, mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v22

    move/from16 v0, v22

    if-ne v0, v9, :cond_ac

    .line 1046
    add-int/lit8 v10, v10, 0x1

    .line 1047
    add-int/lit8 v12, v12, 0x1

    goto :goto_87

    .line 994
    .end local v5    # "exactSection":I
    .end local v9    # "nextIndex":I
    .end local v10    # "nextNextSection":I
    .end local v12    # "nextSection":I
    .end local v13    # "prevIndex":I
    .end local v15    # "prevSection":I
    .end local v16    # "sectionCount":I
    .end local v17    # "sectionIndex":I
    .end local v20    # "targetIndex":I
    .end local v21    # "targetSection":I
    :cond_a0
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v16, v0

    goto/16 :goto_1c

    .line 1029
    .restart local v5    # "exactSection":I
    .restart local v9    # "nextIndex":I
    .restart local v12    # "nextSection":I
    .restart local v13    # "prevIndex":I
    .restart local v15    # "prevSection":I
    .restart local v16    # "sectionCount":I
    .restart local v17    # "sectionIndex":I
    .restart local v20    # "targetIndex":I
    .restart local v21    # "targetSection":I
    :cond_a7
    if-nez v21, :cond_6b

    .line 1032
    const/16 v17, 0x0

    .line 1033
    goto :goto_85

    .line 1054
    .restart local v10    # "nextNextSection":I
    :cond_ac
    int-to-float v0, v15

    move/from16 v22, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v14, v22, v23

    .line 1055
    .local v14, "prevPosition":F
    int-to-float v0, v12

    move/from16 v22, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v11, v22, v23

    .line 1056
    .local v11, "nextPosition":F
    if-nez v4, :cond_134

    const v19, 0x7f7fffff    # Float.MAX_VALUE

    .line 1057
    .local v19, "snapThreshold":F
    :goto_c5
    if-ne v15, v5, :cond_13c

    sub-float v22, p1, v14

    cmpg-float v22, v22, v19

    if-gez v22, :cond_13c

    .line 1058
    move/from16 v20, v13

    .line 1065
    :goto_cf
    const/16 v22, 0x0

    add-int/lit8 v23, v4, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v20

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v22, v0

    if-eqz v22, :cond_154

    .line 1068
    move-object/from16 v0, p0

    iget-object v6, v0, mList:Landroid/widget/AbsListView;

    check-cast v6, Landroid/widget/ExpandableListView;

    .line 1069
    .local v6, "expList":Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, mHeaderCount:I

    move/from16 v22, v0

    add-int v22, v22, v20

    invoke-static/range {v22 .. v22}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v22

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 1093
    .end local v5    # "exactSection":I
    .end local v6    # "expList":Landroid/widget/ExpandableListView;
    .end local v9    # "nextIndex":I
    .end local v10    # "nextNextSection":I
    .end local v11    # "nextPosition":F
    .end local v12    # "nextSection":I
    .end local v13    # "prevIndex":I
    .end local v14    # "prevPosition":F
    .end local v15    # "prevSection":I
    .end local v19    # "snapThreshold":F
    .end local v20    # "targetIndex":I
    .end local v21    # "targetSection":I
    :goto_10c
    move-object/from16 v0, p0

    iget v0, v0, mCurrentSection:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v17

    if-eq v0, v1, :cond_133

    .line 1094
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mCurrentSection:I

    .line 1096
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, transitionPreviewLayout(I)Z

    move-result v7

    .line 1097
    .local v7, "hasPreview":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, mShowingPreview:Z

    move/from16 v22, v0

    if-nez v22, :cond_205

    if-eqz v7, :cond_205

    .line 1098
    invoke-direct/range {p0 .. p0}, transitionToDragging()V

    .line 1103
    .end local v7    # "hasPreview":Z
    :cond_133
    :goto_133
    return-void

    .line 1056
    .restart local v5    # "exactSection":I
    .restart local v9    # "nextIndex":I
    .restart local v10    # "nextNextSection":I
    .restart local v11    # "nextPosition":F
    .restart local v12    # "nextSection":I
    .restart local v13    # "prevIndex":I
    .restart local v14    # "prevPosition":F
    .restart local v15    # "prevSection":I
    .restart local v20    # "targetIndex":I
    .restart local v21    # "targetSection":I
    :cond_134
    const/high16 v22, 0x3e000000    # 0.125f

    int-to-float v0, v4

    move/from16 v23, v0

    div-float v19, v22, v23

    goto :goto_c5

    .line 1060
    .restart local v19    # "snapThreshold":F
    :cond_13c
    sub-int v22, v9, v13

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v23, p1, v14

    mul-float v22, v22, v23

    sub-float v23, v11, v14

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v20, v13, v22

    goto/16 :goto_cf

    .line 1072
    :cond_154
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v22, v0

    if-eqz v22, :cond_178

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    check-cast v22, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, mHeaderCount:I

    move/from16 v23, v0

    add-int v23, v23, v20

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_10c

    .line 1075
    :cond_178
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, mHeaderCount:I

    move/from16 v23, v0

    add-int v23, v23, v20

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_10c

    .line 1078
    .end local v5    # "exactSection":I
    .end local v9    # "nextIndex":I
    .end local v10    # "nextNextSection":I
    .end local v11    # "nextPosition":F
    .end local v12    # "nextSection":I
    .end local v13    # "prevIndex":I
    .end local v14    # "prevPosition":F
    .end local v15    # "prevSection":I
    .end local v17    # "sectionIndex":I
    .end local v19    # "snapThreshold":F
    .end local v20    # "targetIndex":I
    .end local v21    # "targetSection":I
    :cond_18a
    int-to-float v0, v4

    move/from16 v22, v0

    mul-float v22, v22, p1

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    add-int/lit8 v24, v4, -0x1

    invoke-static/range {v22 .. v24}, Landroid/util/MathUtils;->constrain(III)I

    move-result v8

    .line 1080
    .local v8, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v22, v0

    if-eqz v22, :cond_1cf

    .line 1081
    move-object/from16 v0, p0

    iget-object v6, v0, mList:Landroid/widget/AbsListView;

    check-cast v6, Landroid/widget/ExpandableListView;

    .line 1082
    .restart local v6    # "expList":Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, mHeaderCount:I

    move/from16 v22, v0

    add-int v22, v22, v8

    invoke-static/range {v22 .. v22}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v22

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 1090
    .end local v6    # "expList":Landroid/widget/ExpandableListView;
    :goto_1cb
    const/16 v17, -0x1

    .restart local v17    # "sectionIndex":I
    goto/16 :goto_10c

    .line 1084
    .end local v17    # "sectionIndex":I
    :cond_1cf
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v22, v0

    if-eqz v22, :cond_1f3

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    check-cast v22, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, mHeaderCount:I

    move/from16 v23, v0

    add-int v23, v23, v8

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_1cb

    .line 1087
    :cond_1f3
    move-object/from16 v0, p0

    iget-object v0, v0, mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, mHeaderCount:I

    move/from16 v23, v0

    add-int v23, v23, v8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_1cb

    .line 1099
    .end local v8    # "index":I
    .restart local v7    # "hasPreview":Z
    .restart local v17    # "sectionIndex":I
    :cond_205
    move-object/from16 v0, p0

    iget-boolean v0, v0, mShowingPreview:Z

    move/from16 v22, v0

    if-eqz v22, :cond_133

    if-nez v7, :cond_133

    .line 1100
    invoke-direct/range {p0 .. p0}, transitionToVisible()V

    goto/16 :goto_133
.end method

.method private setState(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    .line 820
    iget-object v0, p0, mList:Landroid/widget/AbsListView;

    iget-object v1, p0, mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 822
    iget-boolean v0, p0, mAlwaysShow:Z

    if-eqz v0, :cond_e

    if-nez p1, :cond_e

    .line 823
    const/4 p1, 0x1

    .line 826
    :cond_e
    iget v0, p0, mState:I

    if-ne p1, v0, :cond_13

    .line 849
    :goto_12
    return-void

    .line 830
    :cond_13
    packed-switch p1, :pswitch_data_34

    .line 846
    :goto_16
    iput p1, p0, mState:I

    .line 848
    invoke-direct {p0}, refreshDrawablePressedState()V

    goto :goto_12

    .line 832
    :pswitch_1c
    invoke-direct {p0}, transitionToHidden()V

    goto :goto_16

    .line 835
    :pswitch_20
    invoke-direct {p0}, transitionToVisible()V

    goto :goto_16

    .line 838
    :pswitch_24
    iget v0, p0, mCurrentSection:I

    invoke-direct {p0, v0}, transitionPreviewLayout(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 839
    invoke-direct {p0}, transitionToDragging()V

    goto :goto_16

    .line 841
    :cond_30
    invoke-direct {p0}, transitionToVisible()V

    goto :goto_16

    .line 830
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_20
        :pswitch_24
    .end packed-switch
.end method

.method private setThumbPos(F)V
    .registers 16
    .param p1, "position"    # F

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    .line 1197
    iget v11, p0, mThumbRange:F

    mul-float/2addr v11, p1

    iget v12, p0, mThumbOffset:F

    add-float v9, v11, v12

    .line 1198
    .local v9, "thumbMiddle":F
    iget-object v11, p0, mThumbImage:Landroid/widget/ImageView;

    iget-object v12, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v13

    sub-float v12, v9, v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1200
    iget-object v5, p0, mPreviewImage:Landroid/view/View;

    .line 1201
    .local v5, "previewImage":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v4, v11, v13

    .line 1203
    .local v4, "previewHalfHeight":F
    iget v11, p0, mOverlayPosition:I

    packed-switch v11, :pswitch_data_4c

    .line 1212
    const/4 v7, 0x0

    .line 1217
    .local v7, "previewPos":F
    :goto_27
    iget-object v1, p0, mContainerRect:Landroid/graphics/Rect;

    .line 1218
    .local v1, "container":Landroid/graphics/Rect;
    iget v10, v1, Landroid/graphics/Rect;->top:I

    .line 1219
    .local v10, "top":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1220
    .local v0, "bottom":I
    int-to-float v11, v10

    add-float v3, v11, v4

    .line 1221
    .local v3, "minP":F
    int-to-float v11, v0

    sub-float v2, v11, v4

    .line 1222
    .local v2, "maxP":F
    invoke-static {v7, v3, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    .line 1223
    .local v6, "previewMiddle":F
    sub-float v8, v6, v4

    .line 1224
    .local v8, "previewTop":F
    invoke-virtual {v5, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1226
    iget-object v11, p0, mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1227
    iget-object v11, p0, mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1228
    return-void

    .line 1205
    .end local v0    # "bottom":I
    .end local v1    # "container":Landroid/graphics/Rect;
    .end local v2    # "maxP":F
    .end local v3    # "minP":F
    .end local v6    # "previewMiddle":F
    .end local v7    # "previewPos":F
    .end local v8    # "previewTop":F
    .end local v10    # "top":I
    :pswitch_47
    move v7, v9

    .line 1206
    .restart local v7    # "previewPos":F
    goto :goto_27

    .line 1208
    .end local v7    # "previewPos":F
    :pswitch_49
    sub-float v7, v9, v4

    .line 1209
    .restart local v7    # "previewPos":F
    goto :goto_27

    .line 1203
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_47
        :pswitch_49
    .end packed-switch
.end method

.method private startPendingDrag()V
    .registers 5

    .prologue
    .line 1363
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, mPendingDrag:J

    .line 1364
    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .registers 26
    .param p1, "sectionIndex"    # I

    .prologue
    .line 1114
    move-object/from16 v0, p0

    iget-object v13, v0, mSections:[Ljava/lang/Object;

    .line 1115
    .local v13, "sections":[Ljava/lang/Object;
    const/16 v19, 0x0

    .line 1116
    .local v19, "text":Ljava/lang/String;
    if-eqz v13, :cond_1b

    if-ltz p1, :cond_1b

    array-length v0, v13

    move/from16 v20, v0

    move/from16 v0, p1

    move/from16 v1, v20

    if-ge v0, v1, :cond_1b

    .line 1117
    aget-object v12, v13, p1

    .line 1118
    .local v12, "section":Ljava/lang/Object;
    if-eqz v12, :cond_1b

    .line 1119
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1123
    .end local v12    # "section":Ljava/lang/Object;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, mTempBounds:Landroid/graphics/Rect;

    .line 1124
    .local v4, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, mPreviewImage:Landroid/view/View;

    .line 1127
    .local v7, "preview":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, mShowingPrimary:Z

    move/from16 v20, v0

    if-eqz v20, :cond_168

    .line 1128
    move-object/from16 v0, p0

    iget-object v15, v0, mPrimaryText:Landroid/widget/TextView;

    .line 1129
    .local v15, "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .line 1136
    .local v17, "target":Landroid/widget/TextView;
    :goto_35
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1138
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5b

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1145
    :cond_5b
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x32

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v14

    .line 1146
    .local v14, "showTarget":Landroid/animation/Animator;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v15, v0}, animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x32

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    .line 1147
    .local v6, "hideShowing":Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v0, v0, mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1150
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 1151
    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 1152
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 1153
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1154
    invoke-static {v7, v4}, animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v9

    .line 1155
    .local v9, "resizePreview":Landroid/animation/Animator;
    const-wide/16 v20, 0x64

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1157
    new-instance v20, Landroid/animation/AnimatorSet;

    invoke-direct/range {v20 .. v20}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    .line 1159
    .local v5, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1163
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v20

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v21

    sub-int v8, v20, v21

    .line 1168
    .local v8, "previewWidth":I
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getWidth()I

    move-result v18

    .line 1169
    .local v18, "targetWidth":I
    move/from16 v0, v18

    if-le v0, v8, :cond_174

    .line 1170
    int-to-float v0, v8

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1171
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .line 1172
    .local v11, "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1178
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :goto_12f
    invoke-virtual {v15}, Landroid/widget/TextView;->getWidth()I

    move-result v16

    .line 1179
    .local v16, "showingWidth":I
    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_156

    .line 1180
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v10, v20, v21

    .line 1181
    .local v10, "scale":F
    invoke-static {v15, v10}, animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .line 1182
    .restart local v11    # "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1185
    .end local v10    # "scale":F
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :cond_156
    move-object/from16 v0, p0

    iget-object v0, v0, mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->start()V

    .line 1187
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_17e

    const/16 v20, 0x1

    :goto_167
    return v20

    .line 1131
    .end local v5    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v6    # "hideShowing":Landroid/animation/Animator;
    .end local v8    # "previewWidth":I
    .end local v9    # "resizePreview":Landroid/animation/Animator;
    .end local v14    # "showTarget":Landroid/animation/Animator;
    .end local v15    # "showing":Landroid/widget/TextView;
    .end local v16    # "showingWidth":I
    .end local v17    # "target":Landroid/widget/TextView;
    .end local v18    # "targetWidth":I
    :cond_168
    move-object/from16 v0, p0

    iget-object v15, v0, mSecondaryText:Landroid/widget/TextView;

    .line 1132
    .restart local v15    # "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .restart local v17    # "target":Landroid/widget/TextView;
    goto/16 :goto_35

    .line 1174
    .restart local v5    # "builder":Landroid/animation/AnimatorSet$Builder;
    .restart local v6    # "hideShowing":Landroid/animation/Animator;
    .restart local v8    # "previewWidth":I
    .restart local v9    # "resizePreview":Landroid/animation/Animator;
    .restart local v14    # "showTarget":Landroid/animation/Animator;
    .restart local v18    # "targetWidth":I
    :cond_174
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    goto :goto_12f

    .line 1187
    .restart local v16    # "showingWidth":I
    :cond_17e
    const/16 v20, 0x0

    goto :goto_167
.end method

.method private transitionToDragging()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x96

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 908
    iget-object v2, p0, mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_e

    .line 909
    iget-object v2, p0, mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 912
    :cond_e
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, p0, mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    iget-object v5, p0, mPreviewImage:Landroid/view/View;

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 915
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x0

    new-array v4, v8, [Landroid/view/View;

    iget-object v5, p0, mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 918
    .local v1, "slideIn":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 919
    iget-object v2, p0, mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 920
    iget-object v2, p0, mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 922
    iput-boolean v6, p0, mShowingPreview:Z

    .line 923
    return-void
.end method

.method private transitionToHidden()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x12c

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 861
    iget-object v3, p0, mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_e

    .line 862
    iget-object v3, p0, mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 865
    :cond_e
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x0

    const/4 v5, 0x5

    new-array v5, v5, [Landroid/view/View;

    iget-object v6, p0, mThumbImage:Landroid/widget/ImageView;

    aput-object v6, v5, v8

    iget-object v6, p0, mTrackImage:Landroid/widget/ImageView;

    aput-object v6, v5, v9

    iget-object v6, p0, mPreviewImage:Landroid/view/View;

    aput-object v6, v5, v10

    const/4 v6, 0x3

    iget-object v7, p0, mPrimaryText:Landroid/widget/TextView;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, mSecondaryText:Landroid/widget/TextView;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 869
    .local v0, "fadeOut":Landroid/animation/Animator;
    iget-boolean v3, p0, mLayoutFromRight:Z

    if-eqz v3, :cond_6b

    iget-object v3, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 870
    .local v1, "offset":F
    :goto_3d
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v10, [Landroid/view/View;

    iget-object v5, p0, mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    iget-object v5, p0, mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v9

    invoke-static {v3, v1, v4}, groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 874
    .local v2, "slideOut":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 875
    iget-object v3, p0, mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v10, [Landroid/animation/Animator;

    aput-object v0, v4, v8

    aput-object v2, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 876
    iget-object v3, p0, mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 878
    iput-boolean v8, p0, mShowingPreview:Z

    .line 879
    return-void

    .line 869
    .end local v1    # "offset":F
    .end local v2    # "slideOut":Landroid/animation/Animator;
    :cond_6b
    iget-object v3, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v1, v3

    goto :goto_3d
.end method

.method private transitionToVisible()V
    .registers 13

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 885
    iget-object v3, p0, mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_e

    .line 886
    iget-object v3, p0, mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 889
    :cond_e
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v4, 0x3f800000    # 1.0f

    new-array v5, v9, [Landroid/view/View;

    iget-object v6, p0, mThumbImage:Landroid/widget/ImageView;

    aput-object v6, v5, v7

    iget-object v6, p0, mTrackImage:Landroid/widget/ImageView;

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 891
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v11, [Landroid/view/View;

    iget-object v5, p0, mPreviewImage:Landroid/view/View;

    aput-object v5, v4, v7

    iget-object v5, p0, mPrimaryText:Landroid/widget/TextView;

    aput-object v5, v4, v8

    iget-object v5, p0, mSecondaryText:Landroid/widget/TextView;

    aput-object v5, v4, v9

    invoke-static {v3, v10, v4}, groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 894
    .local v1, "fadeOut":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v9, [Landroid/view/View;

    iget-object v5, p0, mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    invoke-static {v3, v10, v4}, groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 897
    .local v2, "slideIn":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 898
    iget-object v3, p0, mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v11, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 899
    iget-object v3, p0, mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 901
    iput-boolean v7, p0, mShowingPreview:Z

    .line 902
    return-void
.end method

.method private updateAppearance()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 291
    const/4 v1, 0x0

    .line 294
    .local v1, "width":I
    iget-object v2, p0, mTrackImage:Landroid/widget/ImageView;

    iget-object v3, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    iget-object v2, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_17

    .line 296
    iget-object v2, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 300
    :cond_17
    iget-object v2, p0, mThumbImage:Landroid/widget/ImageView;

    iget-object v3, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    iget-object v2, p0, mThumbImage:Landroid/widget/ImageView;

    iget v3, p0, mThumbMinWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 302
    iget-object v2, p0, mThumbImage:Landroid/widget/ImageView;

    iget v3, p0, mThumbMinHeight:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 303
    iget-object v2, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3a

    .line 304
    iget-object v2, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 308
    :cond_3a
    iget v2, p0, mThumbMinWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, mWidth:I

    .line 310
    iget v2, p0, mTextAppearance:I

    if-eqz v2, :cond_54

    .line 311
    iget-object v2, p0, mPrimaryText:Landroid/widget/TextView;

    iget v3, p0, mTextAppearance:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 312
    iget-object v2, p0, mSecondaryText:Landroid/widget/TextView;

    iget v3, p0, mTextAppearance:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 315
    :cond_54
    iget-object v2, p0, mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_66

    .line 316
    iget-object v2, p0, mPrimaryText:Landroid/widget/TextView;

    iget-object v3, p0, mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 317
    iget-object v2, p0, mSecondaryText:Landroid/widget/TextView;

    iget-object v3, p0, mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 320
    :cond_66
    iget v2, p0, mTextSize:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7b

    .line 321
    iget-object v2, p0, mPrimaryText:Landroid/widget/TextView;

    iget v3, p0, mTextSize:F

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 322
    iget-object v2, p0, mSecondaryText:Landroid/widget/TextView;

    iget v3, p0, mTextSize:F

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 325
    :cond_7b
    iget v0, p0, mPreviewPadding:I

    .line 326
    .local v0, "padding":I
    iget-object v2, p0, mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 327
    iget-object v2, p0, mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 328
    iget-object v2, p0, mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 329
    iget-object v2, p0, mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 331
    invoke-direct {p0}, refreshDrawablePressedState()V

    .line 332
    return-void
.end method

.method private updateContainerRect()V
    .registers 8

    .prologue
    const/high16 v6, 0x1000000

    const/4 v4, 0x0

    .line 727
    iget-object v1, p0, mList:Landroid/widget/AbsListView;

    .line 728
    .local v1, "list":Landroid/widget/AbsListView;
    invoke-virtual {v1}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 730
    iget-object v0, p0, mContainerRect:Landroid/graphics/Rect;

    .line 731
    .local v0, "container":Landroid/graphics/Rect;
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 732
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 733
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 734
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 736
    iget v2, p0, mScrollBarStyle:I

    .line 737
    .local v2, "scrollbarStyle":I
    if-eq v2, v6, :cond_20

    if-nez v2, :cond_54

    .line 739
    :cond_20
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 740
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 741
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 742
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 745
    if-ne v2, v6, :cond_54

    .line 746
    invoke-virtual {p0}, getWidth()I

    move-result v3

    .line 747
    .local v3, "width":I
    iget v4, p0, mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_55

    .line 748
    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 754
    .end local v3    # "width":I
    :cond_54
    :goto_54
    return-void

    .line 750
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
    const/4 v1, 0x0

    .line 530
    if-lez p1, :cond_13

    div-int v2, p2, p1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_13

    const/4 v0, 0x1

    .line 531
    .local v0, "longList":Z
    :goto_9
    iget-boolean v2, p0, mLongList:Z

    if-eq v2, v0, :cond_12

    .line 532
    iput-boolean v0, p0, mLongList:Z

    .line 534
    invoke-direct {p0, v1}, onStateDependencyChanged(Z)V

    .line 536
    :cond_12
    return-void

    .end local v0    # "longList":Z
    :cond_13
    move v0, v1

    .line 530
    goto :goto_9
.end method

.method private updateOffsetAndRange()V
    .registers 8

    .prologue
    .line 802
    iget-object v4, p0, mTrackImage:Landroid/widget/ImageView;

    .line 803
    .local v4, "trackImage":Landroid/view/View;
    iget-object v3, p0, mThumbImage:Landroid/widget/ImageView;

    .line 806
    .local v3, "thumbImage":Landroid/view/View;
    iget v5, p0, mThumbPosition:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_27

    .line 807
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v0, v5, v6

    .line 808
    .local v0, "halfThumbHeight":F
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float v2, v5, v0

    .line 809
    .local v2, "min":F
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    sub-float v1, v5, v0

    .line 815
    .end local v0    # "halfThumbHeight":F
    .local v1, "max":F
    :goto_20
    iput v2, p0, mThumbOffset:F

    .line 816
    sub-float v5, v1, v2

    iput v5, p0, mThumbRange:F

    .line 817
    return-void

    .line 811
    .end local v1    # "max":F
    .end local v2    # "min":F
    :cond_27
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v2, v5

    .line 812
    .restart local v2    # "min":F
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v1, v5

    .restart local v1    # "max":F
    goto :goto_20
.end method


# virtual methods
.method public getWidth()I
    .registers 2

    .prologue
    .line 507
    iget v0, p0, mWidth:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .registers 2

    .prologue
    .line 437
    iget-boolean v0, p0, mAlwaysShow:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 418
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

    .line 1430
    invoke-virtual {p0}, isEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1442
    :cond_7
    :goto_7
    return v3

    .line 1434
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1435
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

    .line 1438
    const/4 v1, 0x1

    invoke-direct {p0, v1}, setState(I)V

    .line 1439
    invoke-direct {p0}, postAutoHide()V

    goto :goto_7
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 1384
    invoke-virtual {p0}, isEnabled()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1426
    :cond_7
    :goto_7
    return v1

    .line 1388
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_6c

    goto :goto_7

    .line 1390
    :pswitch_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, isPointInside(FF)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1396
    iget-object v2, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v2

    if-nez v2, :cond_28

    .line 1399
    const/4 v1, 0x1

    goto :goto_7

    .line 1402
    :cond_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, mInitialTouchY:F

    .line 1403
    invoke-direct {p0}, startPendingDrag()V

    goto :goto_7

    .line 1407
    :pswitch_32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, isPointInside(FF)Z

    move-result v2

    if-nez v2, :cond_44

    .line 1408
    invoke-direct {p0}, cancelPendingDrag()V

    goto :goto_7

    .line 1409
    :cond_44
    iget-wide v2, p0, mPendingDrag:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_7

    iget-wide v2, p0, mPendingDrag:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_7

    .line 1410
    invoke-direct {p0}, beginDrag()V

    .line 1412
    iget v1, p0, mInitialTouchY:F

    invoke-direct {p0, v1}, getPosFromMotionEvent(F)F

    move-result v0

    .line 1413
    .local v0, "pos":F
    invoke-direct {p0, v0}, scrollTo(F)V

    .line 1417
    invoke-virtual {p0, p1}, onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_7

    .line 1422
    .end local v0    # "pos":F
    :pswitch_67
    invoke-direct {p0}, cancelPendingDrag()V

    goto :goto_7

    .line 1388
    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_10
        :pswitch_67
        :pswitch_32
        :pswitch_67
    .end packed-switch
.end method

.method public onItemCountChanged(II)V
    .registers 7
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 515
    iget v2, p0, mOldItemCount:I

    if-ne v2, p2, :cond_8

    iget v2, p0, mOldChildCount:I

    if-eq v2, p1, :cond_28

    .line 516
    :cond_8
    iput p2, p0, mOldItemCount:I

    .line 517
    iput p1, p0, mOldChildCount:I

    .line 519
    sub-int v2, p2, p1

    if-lez v2, :cond_29

    const/4 v1, 0x1

    .line 520
    .local v1, "hasMoreItems":Z
    :goto_11
    if-eqz v1, :cond_25

    iget v2, p0, mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_25

    .line 521
    iget-object v2, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 522
    .local v0, "firstVisibleItem":I
    invoke-direct {p0, v0, p1, p2}, getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, setThumbPos(F)V

    .line 525
    .end local v0    # "firstVisibleItem":I
    :cond_25
    invoke-direct {p0, p1, p2}, updateLongList(II)V

    .line 527
    .end local v1    # "hasMoreItems":Z
    :cond_28
    return-void

    .line 519
    :cond_29
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public onScroll(III)V
    .registers 8
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 931
    invoke-virtual {p0}, isEnabled()Z

    move-result v2

    if-nez v2, :cond_d

    .line 932
    invoke-direct {p0, v0}, setState(I)V

    .line 952
    :cond_c
    :goto_c
    return-void

    .line 936
    :cond_d
    sub-int v2, p3, p2

    if-lez v2, :cond_12

    move v0, v1

    .line 937
    .local v0, "hasMoreItems":Z
    :cond_12
    if-eqz v0, :cond_1f

    iget v2, p0, mState:I

    if-eq v2, v3, :cond_1f

    .line 938
    invoke-direct {p0, p1, p2, p3}, getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, setThumbPos(F)V

    .line 941
    :cond_1f
    iput-boolean v1, p0, mScrollCompleted:Z

    .line 943
    iget v2, p0, mFirstVisibleItem:I

    if-eq v2, p1, :cond_c

    .line 944
    iput p1, p0, mFirstVisibleItem:I

    .line 947
    iget v2, p0, mState:I

    if-eq v2, v3, :cond_c

    .line 948
    invoke-direct {p0, v1}, setState(I)V

    .line 949
    invoke-direct {p0}, postAutoHide()V

    goto :goto_c
.end method

.method public onSectionsChanged()V
    .registers 2

    .prologue
    .line 982
    const/4 v0, 0x0

    iput-object v0, p0, mListAdapter:Landroid/widget/Adapter;

    .line 983
    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 511
    invoke-virtual {p0}, updateLayout()V

    .line 512
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1446
    invoke-virtual {p0}, isEnabled()Z

    move-result v3

    if-nez v3, :cond_c

    .line 1514
    :cond_b
    :goto_b
    return v1

    .line 1450
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_9a

    goto :goto_b

    .line 1452
    :pswitch_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, isPointInside(FF)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1453
    iget-object v3, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1454
    invoke-direct {p0}, beginDrag()V

    move v1, v2

    .line 1455
    goto :goto_b

    .line 1461
    :pswitch_2f
    iget-wide v4, p0, mPendingDrag:J

    cmp-long v3, v4, v8

    if-ltz v3, :cond_46

    .line 1463
    invoke-direct {p0}, beginDrag()V

    .line 1465
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v3}, getPosFromMotionEvent(F)F

    move-result v0

    .line 1466
    .local v0, "pos":F
    invoke-direct {p0, v0}, setThumbPos(F)V

    .line 1467
    invoke-direct {p0, v0}, scrollTo(F)V

    .line 1472
    .end local v0    # "pos":F
    :cond_46
    iget v3, p0, mState:I

    if-ne v3, v6, :cond_b

    .line 1473
    iget-object v3, p0, mList:Landroid/widget/AbsListView;

    if-eqz v3, :cond_58

    .line 1477
    iget-object v3, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v3, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1478
    iget-object v3, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v3, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1481
    :cond_58
    invoke-direct {p0, v2}, setState(I)V

    .line 1482
    invoke-direct {p0}, postAutoHide()V

    move v1, v2

    .line 1484
    goto :goto_b

    .line 1489
    :pswitch_60
    iget-wide v4, p0, mPendingDrag:J

    cmp-long v3, v4, v8

    if-ltz v3, :cond_7b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, mInitialTouchY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7b

    .line 1490
    invoke-direct {p0}, beginDrag()V

    .line 1495
    :cond_7b
    iget v3, p0, mState:I

    if-ne v3, v6, :cond_b

    .line 1497
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, getPosFromMotionEvent(F)F

    move-result v0

    .line 1498
    .restart local v0    # "pos":F
    invoke-direct {p0, v0}, setThumbPos(F)V

    .line 1501
    iget-boolean v1, p0, mScrollCompleted:Z

    if-eqz v1, :cond_91

    .line 1502
    invoke-direct {p0, v0}, scrollTo(F)V

    :cond_91
    move v1, v2

    .line 1505
    goto/16 :goto_b

    .line 1510
    .end local v0    # "pos":F
    :pswitch_94
    invoke-direct {p0}, cancelPendingDrag()V

    goto/16 :goto_b

    .line 1450
    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_14
        :pswitch_2f
        :pswitch_60
        :pswitch_94
    .end packed-switch
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 396
    iget-object v0, p0, mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 397
    iget-object v0, p0, mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 398
    iget-object v0, p0, mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 399
    iget-object v0, p0, mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 400
    iget-object v0, p0, mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 401
    return-void
.end method

.method public setAlwaysShow(Z)V
    .registers 3
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 425
    iget-boolean v0, p0, mAlwaysShow:Z

    if-eq v0, p1, :cond_a

    .line 426
    iput-boolean p1, p0, mAlwaysShow:Z

    .line 428
    const/4 v0, 0x0

    invoke-direct {p0, v0}, onStateDependencyChanged(Z)V

    .line 430
    :cond_a
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 407
    iget-boolean v0, p0, mEnabled:Z

    if-eq v0, p1, :cond_a

    .line 408
    iput-boolean p1, p0, mEnabled:Z

    .line 410
    const/4 v0, 0x1

    invoke-direct {p0, v0}, onStateDependencyChanged(Z)V

    .line 412
    :cond_a
    return-void
.end method

.method public setScrollBarStyle(I)V
    .registers 3
    .param p1, "style"    # I

    .prologue
    .line 463
    iget v0, p0, mScrollBarStyle:I

    if-eq v0, p1, :cond_9

    .line 464
    iput p1, p0, mScrollBarStyle:I

    .line 466
    invoke-virtual {p0}, updateLayout()V

    .line 468
    :cond_9
    return-void
.end method

.method public setScrollbarPosition(I)V
    .registers 9
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 478
    if-nez p1, :cond_d

    .line 479
    iget-object v4, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_65

    move p1, v3

    .line 483
    :cond_d
    :goto_d
    iget v4, p0, mScrollbarPosition:I

    if-eq v4, p1, :cond_64

    .line 484
    iput p1, p0, mScrollbarPosition:I

    .line 485
    if-eq p1, v3, :cond_67

    move v4, v3

    :goto_16
    iput-boolean v4, p0, mLayoutFromRight:Z

    .line 487
    iget-object v4, p0, mPreviewResId:[I

    iget-boolean v6, p0, mLayoutFromRight:Z

    if-eqz v6, :cond_69

    :goto_1e
    aget v0, v4, v3

    .line 488
    .local v0, "previewResId":I
    iget-object v3, p0, mPreviewImage:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 491
    iget v3, p0, mPreviewMinWidth:I

    iget-object v4, p0, mPreviewImage:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, mPreviewImage:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 493
    .local v2, "textMinWidth":I
    iget-object v3, p0, mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 494
    iget-object v3, p0, mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 496
    iget v3, p0, mPreviewMinHeight:I

    iget-object v4, p0, mPreviewImage:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, mPreviewImage:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 498
    .local v1, "textMinHeight":I
    iget-object v3, p0, mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 499
    iget-object v3, p0, mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 502
    invoke-virtual {p0}, updateLayout()V

    .line 504
    .end local v0    # "previewResId":I
    .end local v1    # "textMinHeight":I
    .end local v2    # "textMinWidth":I
    :cond_64
    return-void

    .line 479
    :cond_65
    const/4 p1, 0x2

    goto :goto_d

    :cond_67
    move v4, v5

    .line 485
    goto :goto_16

    :cond_69
    move v3, v5

    .line 487
    goto :goto_1e
.end method

.method public setStyle(I)V
    .registers 11
    .param p1, "resId"    # I

    .prologue
    const/4 v8, 0x0

    .line 335
    iget-object v5, p0, mList:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 336
    .local v1, "context":Landroid/content/Context;
    const/4 v5, 0x0

    sget-object v6, Lcom/android/internal/R$styleable;->FastScroll:[I

    const v7, 0x10103f7

    invoke-virtual {v1, v5, v6, v7, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 338
    .local v4, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 339
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v0, :cond_8a

    .line 340
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 341
    .local v3, "index":I
    packed-switch v3, :pswitch_data_92

    .line 339
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 343
    :pswitch_22
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, mOverlayPosition:I

    goto :goto_1f

    .line 346
    :pswitch_29
    iget-object v5, p0, mPreviewResId:[I

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v5, v8

    goto :goto_1f

    .line 349
    :pswitch_32
    iget-object v5, p0, mPreviewResId:[I

    const/4 v6, 0x1

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, v5, v6

    goto :goto_1f

    .line 352
    :pswitch_3c
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1f

    .line 355
    :pswitch_43
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1f

    .line 358
    :pswitch_4a
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, mTextAppearance:I

    goto :goto_1f

    .line 361
    :pswitch_51
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1f

    .line 364
    :pswitch_58
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, mTextSize:F

    goto :goto_1f

    .line 367
    :pswitch_60
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, mPreviewMinWidth:I

    goto :goto_1f

    .line 370
    :pswitch_67
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, mPreviewMinHeight:I

    goto :goto_1f

    .line 373
    :pswitch_6e
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, mThumbMinWidth:I

    goto :goto_1f

    .line 376
    :pswitch_75
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, mThumbMinHeight:I

    goto :goto_1f

    .line 379
    :pswitch_7c
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, mPreviewPadding:I

    goto :goto_1f

    .line 382
    :pswitch_83
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, mThumbPosition:I

    goto :goto_1f

    .line 387
    .end local v3    # "index":I
    :cond_8a
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 389
    invoke-direct {p0}, updateAppearance()V

    .line 390
    return-void

    .line 341
    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_58
        :pswitch_51
        :pswitch_7c
        :pswitch_60
        :pswitch_67
        :pswitch_83
        :pswitch_3c
        :pswitch_6e
        :pswitch_75
        :pswitch_43
        :pswitch_32
        :pswitch_29
        :pswitch_22
    .end packed-switch
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 474
    const/4 v0, 0x0

    invoke-direct {p0, v0}, setState(I)V

    .line 475
    return-void
.end method

.method public updateLayout()V
    .registers 4

    .prologue
    .line 563
    iget-boolean v1, p0, mUpdatingLayout:Z

    if-eqz v1, :cond_5

    .line 592
    :goto_4
    return-void

    .line 567
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, mUpdatingLayout:Z

    .line 569
    invoke-direct {p0}, updateContainerRect()V

    .line 571
    invoke-direct {p0}, layoutThumb()V

    .line 572
    invoke-direct {p0}, layoutTrack()V

    .line 574
    invoke-direct {p0}, updateOffsetAndRange()V

    .line 576
    iget-object v0, p0, mTempBounds:Landroid/graphics/Rect;

    .line 577
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 578
    iget-object v1, p0, mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 579
    iget-object v1, p0, mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 580
    iget-object v1, p0, mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 582
    iget-object v1, p0, mPreviewImage:Landroid/view/View;

    if-eqz v1, :cond_5f

    .line 584
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 585
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 586
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 587
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 588
    iget-object v1, p0, mPreviewImage:Landroid/view/View;

    invoke-direct {p0, v1, v0}, applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 591
    :cond_5f
    const/4 v1, 0x0

    iput-boolean v1, p0, mUpdatingLayout:Z

    goto :goto_4
.end method
