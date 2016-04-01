.class public Lcom/android/internal/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ViewPager$ViewPositionComparator;,
        Lcom/android/internal/widget/ViewPager$LayoutParams;,
        Lcom/android/internal/widget/ViewPager$PagerObserver;,
        Lcom/android/internal/widget/ViewPager$SavedState;,
        Lcom/android/internal/widget/ViewPager$Decor;,
        Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;,
        Lcom/android/internal/widget/ViewPager$PageTransformer;,
        Lcom/android/internal/widget/ViewPager$SimpleOnPageChangeListener;,
        Lcom/android/internal/widget/ViewPager$OnPageChangeListener;,
        Lcom/android/internal/widget/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/internal/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = true

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SCROLL_X:I = 0x1000000

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Lcom/android/internal/widget/PagerAdapter;

.field private mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private final mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private final mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private final mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private final mLeftEdge:Landroid/widget/EdgeEffect;

.field private mLeftIncr:I

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private final mMaximumVelocity:I

.field private final mMinimumVelocity:I

.field private mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private final mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private final mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private final mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 101
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, LAYOUT_ATTRS:[I

    .line 123
    new-instance v0, Lcom/android/internal/widget/ViewPager$1;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$1;-><init>()V

    sput-object v0, COMPARATOR:Ljava/util/Comparator;

    .line 130
    new-instance v0, Lcom/android/internal/widget/ViewPager$2;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$2;-><init>()V

    sput-object v0, sInterpolator:Landroid/view/animation/Interpolator;

    .line 230
    new-instance v0, Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 352
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 355
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 356
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 360
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 363
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 137
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mItems:Ljava/util/ArrayList;

    .line 138
    new-instance v2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    invoke-direct {v2}, Lcom/android/internal/widget/ViewPager$ItemInfo;-><init>()V

    iput-object v2, p0, mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 140
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, mTempRect:Landroid/graphics/Rect;

    .line 144
    iput v3, p0, mRestoredCurItem:I

    .line 145
    iput-object v6, p0, mRestoredAdapterState:Landroid/os/Parcelable;

    .line 146
    iput-object v6, p0, mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 159
    iput v3, p0, mLeftIncr:I

    .line 164
    const v2, -0x800001

    iput v2, p0, mFirstOffset:F

    .line 165
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    iput v2, p0, mLastOffset:F

    .line 174
    iput v4, p0, mOffscreenPageLimit:I

    .line 192
    iput v3, p0, mActivePointerId:I

    .line 216
    iput-boolean v4, p0, mFirstLayout:Z

    .line 248
    new-instance v2, Lcom/android/internal/widget/ViewPager$3;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/ViewPager$3;-><init>(Lcom/android/internal/widget/ViewPager;)V

    iput-object v2, p0, mEndScrollRunnable:Ljava/lang/Runnable;

    .line 255
    iput v5, p0, mScrollState:I

    .line 365
    invoke-virtual {p0, v5}, setWillNotDraw(Z)V

    .line 366
    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, setDescendantFocusability(I)V

    .line 367
    invoke-virtual {p0, v4}, setFocusable(Z)V

    .line 369
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, p1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, mScroller:Landroid/widget/Scroller;

    .line 370
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 371
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 373
    .local v1, "density":F
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    iput v2, p0, mTouchSlop:I

    .line 374
    const/high16 v2, 0x43c80000    # 400.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, mMinimumVelocity:I

    .line 375
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, mMaximumVelocity:I

    .line 376
    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, mLeftEdge:Landroid/widget/EdgeEffect;

    .line 377
    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, mRightEdge:Landroid/widget/EdgeEffect;

    .line 379
    const/high16 v2, 0x41c80000    # 25.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, mFlingDistance:I

    .line 380
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, mCloseEnough:I

    .line 381
    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, mDefaultGutterSize:I

    .line 383
    invoke-virtual {p0}, getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_9a

    .line 384
    invoke-virtual {p0, v4}, setImportantForAccessibility(I)V

    .line 386
    :cond_9a
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ViewPager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ViewPager;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, setScrollState(I)V

    return-void
.end method

.method static synthetic access$200()[I
    .registers 1

    .prologue
    .line 86
    sget-object v0, LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private calculatePageOffsets(Lcom/android/internal/widget/ViewPager$ItemInfo;ILcom/android/internal/widget/ViewPager$ItemInfo;)V
    .registers 18
    .param p1, "curItem"    # Lcom/android/internal/widget/ViewPager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Lcom/android/internal/widget/ViewPager$ItemInfo;

    .prologue
    .line 1123
    iget-object v12, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v12}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v1

    .line 1124
    .local v1, "N":I
    invoke-direct {p0}, getPaddedWidth()I

    move-result v11

    .line 1125
    .local v11, "width":I
    if-lez v11, :cond_57

    iget v12, p0, mPageMargin:I

    int-to-float v12, v12

    int-to-float v13, v11

    div-float v6, v12, v13

    .line 1128
    .local v6, "marginOffset":F
    :goto_12
    if-eqz p3, :cond_ba

    .line 1129
    move-object/from16 v0, p3

    iget v8, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 1132
    .local v8, "oldCurPosition":I
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v8, v12, :cond_71

    .line 1133
    const/4 v5, 0x0

    .line 1134
    .local v5, "itemIndex":I
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p3

    iget v13, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1135
    .local v7, "offset":F
    add-int/lit8 v9, v8, 0x1

    .local v9, "pos":I
    :goto_2a
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-gt v9, v12, :cond_ba

    iget-object v12, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_ba

    .line 1136
    iget-object v12, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1137
    .local v3, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_3e
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_59

    iget-object v12, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v5, v12, :cond_59

    .line 1138
    add-int/lit8 v5, v5, 0x1

    .line 1139
    iget-object v12, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_3e

    .line 1125
    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v6    # "marginOffset":F
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_57
    const/4 v6, 0x0

    goto :goto_12

    .line 1142
    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v5    # "itemIndex":I
    .restart local v6    # "marginOffset":F
    .restart local v7    # "offset":F
    .restart local v8    # "oldCurPosition":I
    .restart local v9    # "pos":I
    :cond_59
    :goto_59
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_68

    .line 1145
    iget-object v12, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v12, v9}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1146
    add-int/lit8 v9, v9, 0x1

    goto :goto_59

    .line 1149
    :cond_68
    iput v7, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1150
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1135
    add-int/lit8 v9, v9, 0x1

    goto :goto_2a

    .line 1152
    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v9    # "pos":I
    :cond_71
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v8, v12, :cond_ba

    .line 1153
    iget-object v12, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .line 1154
    .restart local v5    # "itemIndex":I
    move-object/from16 v0, p3

    iget v7, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1155
    .restart local v7    # "offset":F
    add-int/lit8 v9, v8, -0x1

    .restart local v9    # "pos":I
    :goto_83
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-lt v9, v12, :cond_ba

    if-ltz v5, :cond_ba

    .line 1156
    iget-object v12, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1157
    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_91
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_a2

    if-lez v5, :cond_a2

    .line 1158
    add-int/lit8 v5, v5, -0x1

    .line 1159
    iget-object v12, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_91

    .line 1162
    :cond_a2
    :goto_a2
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_b1

    .line 1165
    iget-object v12, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v12, v9}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1166
    add-int/lit8 v9, v9, -0x1

    goto :goto_a2

    .line 1169
    :cond_b1
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1170
    iput v7, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1155
    add-int/lit8 v9, v9, -0x1

    goto :goto_83

    .line 1176
    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_ba
    iget-object v12, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1177
    .local v4, "itemCount":I
    iget v7, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1178
    .restart local v7    # "offset":F
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, -0x1

    .line 1179
    .restart local v9    # "pos":I
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-nez v12, :cond_fa

    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    :goto_cc
    iput v12, p0, mFirstOffset:F

    .line 1180
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_fe

    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v13, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    :goto_dc
    iput v12, p0, mLastOffset:F

    .line 1184
    add-int/lit8 v2, p2, -0x1

    .local v2, "i":I
    :goto_e0
    if-ltz v2, :cond_113

    .line 1185
    iget-object v12, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1186
    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_ea
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_102

    .line 1187
    iget-object v12, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    add-int/lit8 v10, v9, -0x1

    .end local v9    # "pos":I
    .local v10, "pos":I
    invoke-virtual {v12, v9}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_ea

    .line 1179
    .end local v2    # "i":I
    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_fa
    const v12, -0x800001

    goto :goto_cc

    .line 1180
    :cond_fe
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_dc

    .line 1189
    .restart local v2    # "i":I
    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_102
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1190
    iput v7, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1191
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-nez v12, :cond_10e

    iput v7, p0, mFirstOffset:F

    .line 1184
    :cond_10e
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_e0

    .line 1194
    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_113
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v13, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1195
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, 0x1

    .line 1198
    add-int/lit8 v2, p2, 0x1

    :goto_120
    if-ge v2, v4, :cond_153

    .line 1199
    iget-object v12, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1200
    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_12a
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_13a

    .line 1201
    iget-object v12, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "pos":I
    .restart local v10    # "pos":I
    invoke-virtual {v12, v9}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_12a

    .line 1203
    :cond_13a
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_148

    .line 1204
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v7

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    iput v12, p0, mLastOffset:F

    .line 1206
    :cond_148
    iput v7, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1207
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1198
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_120

    .line 1209
    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_153
    return-void
.end method

.method private canScroll()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2769
    iget-object v1, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v1, :cond_e

    iget-object v1, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v1

    if-le v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private completeScroll(Z)V
    .registers 12
    .param p1, "postEvents"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1766
    iget v8, p0, mScrollState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_49

    const/4 v2, 0x1

    .line 1767
    .local v2, "needPopulate":Z
    :goto_7
    if-eqz v2, :cond_2c

    .line 1769
    invoke-direct {p0, v7}, setScrollingCacheEnabled(Z)V

    .line 1770
    iget-object v8, p0, mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1771
    invoke-virtual {p0}, getScrollX()I

    move-result v3

    .line 1772
    .local v3, "oldX":I
    invoke-virtual {p0}, getScrollY()I

    move-result v4

    .line 1773
    .local v4, "oldY":I
    iget-object v8, p0, mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1774
    .local v5, "x":I
    iget-object v8, p0, mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1775
    .local v6, "y":I
    if-ne v3, v5, :cond_29

    if-eq v4, v6, :cond_2c

    .line 1776
    :cond_29
    invoke-virtual {p0, v5, v6}, scrollTo(II)V

    .line 1779
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_2c
    iput-boolean v7, p0, mPopulatePending:Z

    .line 1780
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2f
    iget-object v8, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_4b

    .line 1781
    iget-object v8, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1782
    .local v1, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-boolean v8, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v8, :cond_46

    .line 1783
    const/4 v2, 0x1

    .line 1784
    iput-boolean v7, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    .line 1780
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .end local v0    # "i":I
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v2    # "needPopulate":Z
    :cond_49
    move v2, v7

    .line 1766
    goto :goto_7

    .line 1787
    .restart local v0    # "i":I
    .restart local v2    # "needPopulate":Z
    :cond_4b
    if-eqz v2, :cond_54

    .line 1788
    if-eqz p1, :cond_55

    .line 1789
    iget-object v7, p0, mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, postOnAnimation(Ljava/lang/Runnable;)V

    .line 1794
    :cond_54
    :goto_54
    return-void

    .line 1791
    :cond_55
    iget-object v7, p0, mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_54
.end method

.method private determineTargetPage(IFII)I
    .registers 13
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaX"    # I

    .prologue
    const/4 v5, 0x0

    .line 2242
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, mFlingDistance:I

    if-le v4, v6, :cond_42

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, mMinimumVelocity:I

    if-le v4, v6, :cond_42

    .line 2243
    if-gez p3, :cond_40

    iget v4, p0, mLeftIncr:I

    :goto_15
    sub-int v2, p1, v4

    .line 2249
    .local v2, "targetPage":I
    :goto_17
    iget-object v4, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3f

    .line 2250
    iget-object v4, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2251
    .local v0, "firstItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v4, p0, mItems:Ljava/util/ArrayList;

    iget-object v5, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2254
    .local v1, "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v4, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v5, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    invoke-static {v2, v4, v5}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .line 2257
    .end local v0    # "firstItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v1    # "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_3f
    return v2

    .end local v2    # "targetPage":I
    :cond_40
    move v4, v5

    .line 2243
    goto :goto_15

    .line 2245
    :cond_42
    iget v4, p0, mCurItem:I

    if-lt p1, v4, :cond_53

    const v3, 0x3ecccccd    # 0.4f

    .line 2246
    .local v3, "truncator":F
    :goto_49
    int-to-float v4, p1

    iget v6, p0, mLeftIncr:I

    int-to-float v6, v6

    add-float v7, p2, v3

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    float-to-int v2, v4

    .restart local v2    # "targetPage":I
    goto :goto_17

    .line 2245
    .end local v2    # "targetPage":I
    .end local v3    # "truncator":F
    :cond_53
    const v3, 0x3f19999a    # 0.6f

    goto :goto_49
.end method

.method private enableLayers(Z)V
    .registers 7
    .param p1, "enable"    # Z

    .prologue
    .line 1801
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 1802
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_17

    .line 1803
    if-eqz p1, :cond_15

    const/4 v2, 0x2

    .line 1804
    .local v2, "layerType":I
    :goto_a
    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1802
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1803
    .end local v2    # "layerType":I
    :cond_15
    const/4 v2, 0x0

    goto :goto_a

    .line 1806
    :cond_17
    return-void
.end method

.method private endDrag()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 2373
    iput-boolean v0, p0, mIsBeingDragged:Z

    .line 2374
    iput-boolean v0, p0, mIsUnableToDrag:Z

    .line 2376
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_11

    .line 2377
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2378
    const/4 v0, 0x0

    iput-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2380
    :cond_11
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .registers 7
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2549
    if-nez p1, :cond_8

    .line 2550
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "outRect":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2552
    .restart local p1    # "outRect":Landroid/graphics/Rect;
    :cond_8
    if-nez p2, :cond_e

    .line 2553
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2571
    :cond_d
    return-object p1

    .line 2556
    :cond_e
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2557
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2558
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2559
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2561
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2562
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_2a
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_d

    if-eq v1, p0, :cond_d

    move-object v0, v1

    .line 2563
    check-cast v0, Landroid/view/ViewGroup;

    .line 2564
    .local v0, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2565
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2566
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2567
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2569
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2570
    goto :goto_2a
.end method

.method private getLeftEdgeForItem(I)I
    .registers 10
    .param p1, "position"    # I

    .prologue
    .line 589
    invoke-virtual {p0, p1}, infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 590
    .local v0, "info":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-nez v0, :cond_8

    .line 591
    const/4 v2, 0x0

    .line 602
    :cond_7
    :goto_7
    return v2

    .line 594
    :cond_8
    invoke-direct {p0}, getPaddedWidth()I

    move-result v3

    .line 595
    .local v3, "width":I
    int-to-float v4, v3

    iget v5, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v6, p0, mFirstOffset:F

    iget v7, p0, mLastOffset:F

    invoke-static {v5, v6, v7}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 598
    .local v2, "scaledOffset":I
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 599
    int-to-float v4, v3

    iget v5, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 600
    .local v1, "itemWidth":I
    const/high16 v4, 0x1000000

    sub-int/2addr v4, v1

    sub-int v2, v4, v2

    goto :goto_7
.end method

.method private getPaddedWidth()I
    .registers 3

    .prologue
    .line 485
    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getScrollStart()I
    .registers 3

    .prologue
    .line 2226
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2227
    const/high16 v0, 0x1000000

    invoke-virtual {p0}, getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2229
    :goto_d
    return v0

    :cond_e
    invoke-virtual {p0}, getScrollX()I

    move-result v0

    goto :goto_d
.end method

.method private infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;
    .registers 20

    .prologue
    .line 2179
    invoke-direct/range {p0 .. p0}, getScrollStart()I

    move-result v15

    .line 2180
    .local v15, "startOffset":I
    invoke-direct/range {p0 .. p0}, getPaddedWidth()I

    move-result v16

    .line 2181
    .local v16, "width":I
    if-lez v16, :cond_a3

    int-to-float v0, v15

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v13, v17, v18

    .line 2182
    .local v13, "scrollOffset":F
    :goto_14
    if-lez v16, :cond_a6

    move-object/from16 v0, p0

    iget v0, v0, mPageMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v11, v17, v18

    .line 2184
    .local v11, "marginOffset":F
    :goto_28
    const/4 v9, -0x1

    .line 2185
    .local v9, "lastPos":I
    const/4 v8, 0x0

    .line 2186
    .local v8, "lastOffset":F
    const/4 v10, 0x0

    .line 2187
    .local v10, "lastWidth":F
    const/4 v4, 0x1

    .line 2188
    .local v4, "first":Z
    const/4 v7, 0x0

    .line 2190
    .local v7, "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2191
    .local v2, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_38
    if-ge v5, v2, :cond_a2

    .line 2192
    move-object/from16 v0, p0

    iget-object v0, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2195
    .local v6, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-nez v4, :cond_7c

    iget v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v17, v0

    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7c

    .line 2197
    move-object/from16 v0, p0

    iget-object v6, v0, mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2198
    add-float v17, v8, v10

    add-float v17, v17, v11

    move/from16 v0, v17

    iput v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 2199
    add-int/lit8 v17, v9, 0x1

    move/from16 v0, v17

    iput v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2200
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v17, v0

    iget v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v17

    move/from16 v0, v17

    iput v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 2201
    add-int/lit8 v5, v5, -0x1

    .line 2204
    :cond_7c
    iget v12, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 2205
    .local v12, "offset":F
    move v14, v12

    .line 2206
    .local v14, "startBound":F
    if-nez v4, :cond_85

    cmpl-float v17, v13, v14

    if-ltz v17, :cond_a2

    .line 2207
    :cond_85
    iget v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v17, v0

    add-float v17, v17, v12

    add-float v3, v17, v11

    .line 2208
    .local v3, "endBound":F
    cmpg-float v17, v13, v3

    if-ltz v17, :cond_a1

    move-object/from16 v0, p0

    iget-object v0, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_a8

    :cond_a1
    move-object v7, v6

    .line 2222
    .end local v3    # "endBound":F
    .end local v6    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v7    # "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v12    # "offset":F
    .end local v14    # "startBound":F
    :cond_a2
    return-object v7

    .line 2181
    .end local v2    # "N":I
    .end local v4    # "first":Z
    .end local v5    # "i":I
    .end local v8    # "lastOffset":F
    .end local v9    # "lastPos":I
    .end local v10    # "lastWidth":F
    .end local v11    # "marginOffset":F
    .end local v13    # "scrollOffset":F
    :cond_a3
    const/4 v13, 0x0

    goto/16 :goto_14

    .line 2182
    .restart local v13    # "scrollOffset":F
    :cond_a6
    const/4 v11, 0x0

    goto :goto_28

    .line 2215
    .restart local v2    # "N":I
    .restart local v3    # "endBound":F
    .restart local v4    # "first":Z
    .restart local v5    # "i":I
    .restart local v6    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v7    # "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v8    # "lastOffset":F
    .restart local v9    # "lastPos":I
    .restart local v10    # "lastWidth":F
    .restart local v11    # "marginOffset":F
    .restart local v12    # "offset":F
    .restart local v14    # "startBound":F
    :cond_a8
    const/4 v4, 0x0

    .line 2216
    iget v9, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2217
    move v8, v12

    .line 2218
    iget v10, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 2219
    move-object v7, v6

    .line 2191
    add-int/lit8 v5, v5, 0x1

    goto :goto_38
.end method

.method private isGutterDrag(FF)Z
    .registers 6
    .param p1, "x"    # F
    .param p2, "dx"    # F

    .prologue
    const/4 v2, 0x0

    .line 1797
    iget v0, p0, mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_c

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1c

    :cond_c
    invoke-virtual {p0}, getWidth()I

    move-result v0

    iget v1, p0, mGutterSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1e

    cmpg-float v0, p2, v2

    if-gez v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2358
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 2359
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2360
    .local v1, "pointerId":I
    iget v3, p0, mActivePointerId:I

    if-ne v1, v3, :cond_24

    .line 2363
    if-nez v2, :cond_25

    const/4 v0, 0x1

    .line 2364
    .local v0, "newPointerIndex":I
    :goto_f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, mLastMotionX:F

    .line 2365
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, mActivePointerId:I

    .line 2366
    iget-object v3, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_24

    .line 2367
    iget-object v3, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2370
    .end local v0    # "newPointerIndex":I
    :cond_24
    return-void

    .line 2363
    :cond_25
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private pageScrolled(I)Z
    .registers 13
    .param p1, "scrollX"    # I

    .prologue
    const/4 v8, 0x0

    .line 1652
    iget-object v9, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_1c

    .line 1653
    iput-boolean v8, p0, mCalledSuper:Z

    .line 1654
    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9, v8}, onPageScrolled(IFI)V

    .line 1655
    iget-boolean v9, p0, mCalledSuper:Z

    if-nez v9, :cond_5d

    .line 1656
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "onPageScrolled did not call superclass implementation"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1664
    :cond_1c
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v9

    if-eqz v9, :cond_5a

    .line 1665
    const/high16 v9, 0x1000000

    sub-int v5, v9, p1

    .line 1670
    .local v5, "scrollStart":I
    :goto_26
    invoke-direct {p0}, infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v1

    .line 1671
    .local v1, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    invoke-direct {p0}, getPaddedWidth()I

    move-result v6

    .line 1672
    .local v6, "width":I
    iget v9, p0, mPageMargin:I

    add-int v7, v6, v9

    .line 1673
    .local v7, "widthWithMargin":I
    iget v9, p0, mPageMargin:I

    int-to-float v9, v9

    int-to-float v10, v6

    div-float v2, v9, v10

    .line 1674
    .local v2, "marginOffset":F
    iget v0, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 1675
    .local v0, "currentPage":I
    int-to-float v9, v5

    int-to-float v10, v6

    div-float/2addr v9, v10

    iget v10, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v9, v10

    iget v10, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v10, v2

    div-float v4, v9, v10

    .line 1677
    .local v4, "pageOffset":F
    int-to-float v9, v7

    mul-float/2addr v9, v4

    float-to-int v3, v9

    .line 1679
    .local v3, "offsetPixels":I
    iput-boolean v8, p0, mCalledSuper:Z

    .line 1680
    invoke-virtual {p0, v0, v4, v3}, onPageScrolled(IFI)V

    .line 1681
    iget-boolean v8, p0, mCalledSuper:Z

    if-nez v8, :cond_5c

    .line 1682
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "onPageScrolled did not call superclass implementation"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1667
    .end local v0    # "currentPage":I
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v2    # "marginOffset":F
    .end local v3    # "offsetPixels":I
    .end local v4    # "pageOffset":F
    .end local v5    # "scrollStart":I
    .end local v6    # "width":I
    .end local v7    # "widthWithMargin":I
    :cond_5a
    move v5, p1

    .restart local v5    # "scrollStart":I
    goto :goto_26

    .line 1685
    .restart local v0    # "currentPage":I
    .restart local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v2    # "marginOffset":F
    .restart local v3    # "offsetPixels":I
    .restart local v4    # "pageOffset":F
    .restart local v6    # "width":I
    .restart local v7    # "widthWithMargin":I
    :cond_5c
    const/4 v8, 0x1

    .end local v0    # "currentPage":I
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v2    # "marginOffset":F
    .end local v3    # "offsetPixels":I
    .end local v4    # "pageOffset":F
    .end local v5    # "scrollStart":I
    .end local v6    # "width":I
    .end local v7    # "widthWithMargin":I
    :cond_5d
    return v8
.end method

.method private performDrag(F)Z
    .registers 23
    .param p1, "x"    # F

    .prologue
    .line 2087
    const/4 v9, 0x0

    .line 2089
    .local v9, "needsInvalidate":Z
    invoke-direct/range {p0 .. p0}, getPaddedWidth()I

    move-result v18

    .line 2090
    .local v18, "width":I
    move-object/from16 v0, p0

    iget v0, v0, mLastMotionX:F

    move/from16 v19, v0

    sub-float v4, v19, p1

    .line 2091
    .local v4, "deltaX":F
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, mLastMotionX:F

    .line 2095
    invoke-virtual/range {p0 .. p0}, isLayoutRtl()Z

    move-result v19

    if-eqz v19, :cond_10f

    .line 2096
    move-object/from16 v0, p0

    iget-object v15, v0, mRightEdge:Landroid/widget/EdgeEffect;

    .line 2097
    .local v15, "startEdge":Landroid/widget/EdgeEffect;
    move-object/from16 v0, p0

    iget-object v7, v0, mLeftEdge:Landroid/widget/EdgeEffect;

    .line 2104
    .local v7, "endEdge":Landroid/widget/EdgeEffect;
    :goto_21
    invoke-virtual/range {p0 .. p0}, getScrollX()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v10, v19, v4

    .line 2106
    .local v10, "nextScrollX":F
    invoke-virtual/range {p0 .. p0}, isLayoutRtl()Z

    move-result v19

    if-eqz v19, :cond_119

    .line 2107
    const/high16 v19, 0x4b800000    # 1.6777216E7f

    sub-float v12, v19, v10

    .line 2113
    .local v12, "scrollStart":F
    :goto_36
    move-object/from16 v0, p0

    iget-object v0, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2114
    .local v16, "startItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v19, v0

    if-nez v19, :cond_11c

    const/4 v13, 0x1

    .line 2115
    .local v13, "startAbsolute":Z
    :goto_4d
    if-eqz v13, :cond_12e

    .line 2116
    invoke-virtual/range {p0 .. p0}, isLayoutRtl()Z

    move-result v19

    if-eqz v19, :cond_11f

    .line 2117
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v14, v19, v20

    .line 2126
    .local v14, "startBound":F
    :goto_69
    move-object/from16 v0, p0

    iget-object v0, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2127
    .local v8, "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v0, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13d

    const/4 v5, 0x1

    .line 2128
    .local v5, "endAbsolute":Z
    :goto_98
    if-eqz v5, :cond_14d

    .line 2129
    invoke-virtual/range {p0 .. p0}, isLayoutRtl()Z

    move-result v19

    if-eqz v19, :cond_140

    .line 2130
    iget v0, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v6, v19, v20

    .line 2139
    .local v6, "endBound":F
    :goto_b2
    cmpg-float v19, v12, v14

    if-gez v19, :cond_15c

    .line 2140
    if-eqz v13, :cond_cb

    .line 2141
    sub-float v11, v14, v12

    .line 2142
    .local v11, "over":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2143
    const/4 v9, 0x1

    .line 2145
    .end local v11    # "over":F
    :cond_cb
    move v3, v14

    .line 2159
    .local v3, "clampedScrollStart":F
    :goto_cc
    invoke-virtual/range {p0 .. p0}, isLayoutRtl()Z

    move-result v19

    if-eqz v19, :cond_17b

    .line 2160
    const/high16 v19, 0x4b800000    # 1.6777216E7f

    sub-float v17, v19, v3

    .line 2166
    .local v17, "targetScrollX":F
    :goto_d6
    move-object/from16 v0, p0

    iget v0, v0, mLastMotionX:F

    move/from16 v19, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v17, v20

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mLastMotionX:F

    .line 2168
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, getScrollY()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, scrollTo(II)V

    .line 2169
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, pageScrolled(I)Z

    .line 2171
    return v9

    .line 2099
    .end local v3    # "clampedScrollStart":F
    .end local v5    # "endAbsolute":Z
    .end local v6    # "endBound":F
    .end local v7    # "endEdge":Landroid/widget/EdgeEffect;
    .end local v8    # "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v10    # "nextScrollX":F
    .end local v12    # "scrollStart":F
    .end local v13    # "startAbsolute":Z
    .end local v14    # "startBound":F
    .end local v15    # "startEdge":Landroid/widget/EdgeEffect;
    .end local v16    # "startItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v17    # "targetScrollX":F
    :cond_10f
    move-object/from16 v0, p0

    iget-object v15, v0, mLeftEdge:Landroid/widget/EdgeEffect;

    .line 2100
    .restart local v15    # "startEdge":Landroid/widget/EdgeEffect;
    move-object/from16 v0, p0

    iget-object v7, v0, mRightEdge:Landroid/widget/EdgeEffect;

    .restart local v7    # "endEdge":Landroid/widget/EdgeEffect;
    goto/16 :goto_21

    .line 2109
    .restart local v10    # "nextScrollX":F
    :cond_119
    move v12, v10

    .restart local v12    # "scrollStart":F
    goto/16 :goto_36

    .line 2114
    .restart local v16    # "startItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_11c
    const/4 v13, 0x0

    goto/16 :goto_4d

    .line 2119
    .restart local v13    # "startAbsolute":Z
    :cond_11f
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v14, v19, v20

    .restart local v14    # "startBound":F
    goto/16 :goto_69

    .line 2122
    .end local v14    # "startBound":F
    :cond_12e
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, mFirstOffset:F

    move/from16 v20, v0

    mul-float v14, v19, v20

    .restart local v14    # "startBound":F
    goto/16 :goto_69

    .line 2127
    .restart local v8    # "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_13d
    const/4 v5, 0x0

    goto/16 :goto_98

    .line 2132
    .restart local v5    # "endAbsolute":Z
    :cond_140
    iget v0, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v6, v19, v20

    .restart local v6    # "endBound":F
    goto/16 :goto_b2

    .line 2135
    .end local v6    # "endBound":F
    :cond_14d
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, mLastOffset:F

    move/from16 v20, v0

    mul-float v6, v19, v20

    .restart local v6    # "endBound":F
    goto/16 :goto_b2

    .line 2146
    :cond_15c
    cmpl-float v19, v12, v6

    if-lez v19, :cond_178

    .line 2147
    if-eqz v5, :cond_175

    .line 2148
    sub-float v11, v12, v6

    .line 2149
    .restart local v11    # "over":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2150
    const/4 v9, 0x1

    .line 2152
    .end local v11    # "over":F
    :cond_175
    move v3, v6

    .restart local v3    # "clampedScrollStart":F
    goto/16 :goto_cc

    .line 2154
    .end local v3    # "clampedScrollStart":F
    :cond_178
    move v3, v12

    .restart local v3    # "clampedScrollStart":F
    goto/16 :goto_cc

    .line 2162
    :cond_17b
    move/from16 v17, v3

    .restart local v17    # "targetScrollX":F
    goto/16 :goto_d6
.end method

.method private recomputeScrollPosition(IIII)V
    .registers 19
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    .prologue
    .line 1475
    if-lez p2, :cond_5f

    iget-object v0, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 1476
    invoke-virtual {p0}, getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v12, v0, p3

    .line 1477
    .local v12, "widthWithMargin":I
    invoke-virtual {p0}, getPaddingLeft()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v7, v0, p4

    .line 1479
    .local v7, "oldWidthWithMargin":I
    invoke-virtual {p0}, getScrollX()I

    move-result v13

    .line 1480
    .local v13, "xpos":I
    int-to-float v0, v13

    int-to-float v2, v7

    div-float v8, v0, v2

    .line 1481
    .local v8, "pageOffset":F
    int-to-float v0, v12

    mul-float/2addr v0, v8

    float-to-int v1, v0

    .line 1483
    .local v1, "newOffsetPixels":I
    invoke-virtual {p0}, getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, scrollTo(II)V

    .line 1484
    iget-object v0, p0, mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 1486
    iget-object v0, p0, mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v2, p0, mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    sub-int v5, v0, v2

    .line 1487
    .local v5, "newDuration":I
    iget v0, p0, mCurItem:I

    invoke-virtual {p0, v0}, infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v11

    .line 1488
    .local v11, "targetInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v0, p0, mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    iget v3, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1501
    .end local v1    # "newOffsetPixels":I
    .end local v5    # "newDuration":I
    .end local v7    # "oldWidthWithMargin":I
    .end local v8    # "pageOffset":F
    .end local v11    # "targetInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v12    # "widthWithMargin":I
    .end local v13    # "xpos":I
    :cond_5e
    :goto_5e
    return-void

    .line 1492
    :cond_5f
    iget v0, p0, mCurItem:I

    invoke-virtual {p0, v0}, infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v6

    .line 1493
    .local v6, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v6, :cond_8f

    iget v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v2, p0, mLastOffset:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1494
    .local v9, "scrollOffset":F
    :goto_6f
    invoke-virtual {p0}, getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v10, v0

    .line 1496
    .local v10, "scrollPos":I
    invoke-virtual {p0}, getScrollX()I

    move-result v0

    if-eq v10, v0, :cond_5e

    .line 1497
    const/4 v0, 0x0

    invoke-direct {p0, v0}, completeScroll(Z)V

    .line 1498
    invoke-virtual {p0}, getScrollY()I

    move-result v0

    invoke-virtual {p0, v10, v0}, scrollTo(II)V

    goto :goto_5e

    .line 1493
    .end local v9    # "scrollOffset":F
    .end local v10    # "scrollPos":I
    :cond_8f
    const/4 v9, 0x0

    goto :goto_6f
.end method

.method private removeNonDecorViews()V
    .registers 5

    .prologue
    .line 461
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1d

    .line 462
    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 463
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 464
    .local v2, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v3, v2, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_1a

    .line 465
    invoke-virtual {p0, v1}, removeViewAt(I)V

    .line 466
    add-int/lit8 v1, v1, -0x1

    .line 461
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 469
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_1d
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .registers 3
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 2080
    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2081
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_9

    .line 2082
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2084
    :cond_9
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .registers 8
    .param p1, "position"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z

    .prologue
    const/4 v2, 0x0

    .line 563
    invoke-direct {p0, p1}, getLeftEdgeForItem(I)I

    move-result v0

    .line 565
    .local v0, "destX":I
    if-eqz p2, :cond_21

    .line 566
    invoke-virtual {p0, v0, v2, p3}, smoothScrollTo(III)V

    .line 568
    if-eqz p4, :cond_15

    iget-object v1, p0, mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_15

    .line 569
    iget-object v1, p0, mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 571
    :cond_15
    if-eqz p4, :cond_20

    iget-object v1, p0, mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_20

    .line 572
    iget-object v1, p0, mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 586
    :cond_20
    :goto_20
    return-void

    .line 575
    :cond_21
    if-eqz p4, :cond_2c

    iget-object v1, p0, mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_2c

    .line 576
    iget-object v1, p0, mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 578
    :cond_2c
    if-eqz p4, :cond_37

    iget-object v1, p0, mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_37

    .line 579
    iget-object v1, p0, mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 582
    :cond_37
    invoke-direct {p0, v2}, completeScroll(Z)V

    .line 583
    invoke-virtual {p0, v0, v2}, scrollTo(II)V

    .line 584
    invoke-direct {p0, v0}, pageScrolled(I)Z

    goto :goto_20
.end method

.method private setScrollState(I)V
    .registers 3
    .param p1, "newState"    # I

    .prologue
    .line 395
    iget v0, p0, mScrollState:I

    if-ne v0, p1, :cond_5

    .line 407
    :cond_4
    :goto_4
    return-void

    .line 399
    :cond_5
    iput p1, p0, mScrollState:I

    .line 400
    iget-object v0, p0, mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    if-eqz v0, :cond_11

    .line 402
    if-eqz p1, :cond_1b

    const/4 v0, 0x1

    :goto_e
    invoke-direct {p0, v0}, enableLayers(Z)V

    .line 404
    :cond_11
    iget-object v0, p0, mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_4

    .line 405
    iget-object v0, p0, mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_4

    .line 402
    :cond_1b
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private setScrollingCacheEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 2383
    iget-boolean v0, p0, mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_6

    .line 2384
    iput-boolean p1, p0, mScrollingCacheEnabled:Z

    .line 2395
    :cond_6
    return-void
.end method

.method private sortChildDrawingOrder()V
    .registers 6

    .prologue
    .line 1107
    iget v3, p0, mDrawingOrder:I

    if-eqz v3, :cond_2f

    .line 1108
    iget-object v3, p0, mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_22

    .line 1109
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 1113
    :goto_f
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 1114
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_28

    .line 1115
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1116
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1111
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_22
    iget-object v3, p0, mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_f

    .line 1118
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    :cond_28
    iget-object v3, p0, mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v4, sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1120
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_2f
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 11
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2598
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2600
    .local v2, "focusableCount":I
    invoke-virtual {p0}, getDescendantFocusability()I

    move-result v1

    .line 2602
    .local v1, "descendantFocusability":I
    const/high16 v5, 0x60000

    if-eq v1, v5, :cond_2f

    .line 2603
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    invoke-virtual {p0}, getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_2f

    .line 2604
    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2605
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2c

    .line 2606
    invoke-virtual {p0, v0}, infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v4

    .line 2607
    .local v4, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v4, :cond_2c

    iget v5, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v6, p0, mCurItem:I

    if-ne v5, v6, :cond_2c

    .line 2608
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2603
    .end local v4    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 2618
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_2f
    const/high16 v5, 0x40000

    if-ne v1, v5, :cond_39

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_3f

    .line 2624
    :cond_39
    invoke-virtual {p0}, isFocusable()Z

    move-result v5

    if-nez v5, :cond_40

    .line 2635
    :cond_3f
    :goto_3f
    return-void

    .line 2627
    :cond_40
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_51

    invoke-virtual {p0}, isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-virtual {p0}, isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 2631
    :cond_51
    if-eqz p1, :cond_3f

    .line 2632
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f
.end method

.method addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .registers 5
    .param p1, "position"    # I
    .param p2, "index"    # I

    .prologue
    .line 831
    new-instance v0, Lcom/android/internal/widget/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$ItemInfo;-><init>()V

    .line 832
    .local v0, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iput p1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 833
    iget-object v1, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/android/internal/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 834
    iget-object v1, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 835
    if-ltz p2, :cond_21

    iget-object v1, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_27

    .line 836
    :cond_21
    iget-object v1, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    :goto_26
    return-object v0

    .line 838
    :cond_27
    iget-object v1, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_26
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2645
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_23

    .line 2646
    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2647
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_20

    .line 2648
    invoke-virtual {p0, v0}, infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v2

    .line 2649
    .local v2, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v2, :cond_20

    iget v3, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v4, p0, mCurItem:I

    if-ne v3, v4, :cond_20

    .line 2650
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2645
    .end local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2654
    .end local v0    # "child":Landroid/view/View;
    :cond_23
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1299
    invoke-virtual {p0, p3}, checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1300
    invoke-virtual {p0, p3}, generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_a
    move-object v0, p3

    .line 1302
    check-cast v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1303
    .local v0, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lcom/android/internal/widget/ViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 1304
    iget-boolean v1, p0, mInLayout:Z

    if-eqz v1, :cond_2d

    .line 1305
    if-eqz v0, :cond_26

    iget-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_26

    .line 1306
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1308
    :cond_26
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1309
    invoke-virtual {p0, p1, p2, p3}, addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1321
    :goto_2c
    return-void

    .line 1311
    :cond_2d
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2c
.end method

.method public arrowScroll(I)Z
    .registers 15
    .param p1, "direction"    # I

    .prologue
    const/16 v12, 0x42

    const/16 v11, 0x11

    .line 2483
    invoke-virtual {p0}, findFocus()Landroid/view/View;

    move-result-object v1

    .line 2484
    .local v1, "currentFocused":Landroid/view/View;
    if-ne v1, p0, :cond_3c

    .line 2485
    const/4 v1, 0x0

    .line 2509
    :cond_b
    :goto_b
    const/4 v2, 0x0

    .line 2511
    .local v2, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2513
    .local v4, "nextFocused":Landroid/view/View;
    if-eqz v4, :cond_c5

    if-eq v4, v1, :cond_c5

    .line 2514
    if-ne p1, v11, :cond_a3

    .line 2517
    iget-object v8, p0, mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 2518
    .local v5, "nextLeft":I
    iget-object v8, p0, mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2519
    .local v0, "currLeft":I
    if-eqz v1, :cond_9e

    if-lt v5, v0, :cond_9e

    .line 2520
    invoke-virtual {p0}, pageLeft()Z

    move-result v2

    .line 2542
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_32
    :goto_32
    if-eqz v2, :cond_3b

    .line 2543
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, playSoundEffect(I)V

    .line 2545
    :cond_3b
    return v2

    .line 2486
    .end local v2    # "handled":Z
    .end local v4    # "nextFocused":Landroid/view/View;
    :cond_3c
    if-eqz v1, :cond_b

    .line 2487
    const/4 v3, 0x0

    .line 2488
    .local v3, "isChild":Z
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .local v6, "parent":Landroid/view/ViewParent;
    :goto_43
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_4a

    .line 2490
    if-ne v6, p0, :cond_7a

    .line 2491
    const/4 v3, 0x1

    .line 2495
    :cond_4a
    if-nez v3, :cond_b

    .line 2497
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2498
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2499
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    :goto_60
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_7f

    .line 2501
    const-string v8, " => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2500
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_60

    .line 2489
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_7a
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_43

    .line 2503
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_7f
    const-string v8, "ViewPager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    const/4 v1, 0x0

    goto/16 :goto_b

    .line 2522
    .end local v3    # "isChild":Z
    .end local v6    # "parent":Landroid/view/ViewParent;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "currLeft":I
    .restart local v2    # "handled":Z
    .restart local v4    # "nextFocused":Landroid/view/View;
    .restart local v5    # "nextLeft":I
    :cond_9e
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_32

    .line 2524
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_a3
    if-ne p1, v12, :cond_32

    .line 2527
    iget-object v8, p0, mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 2528
    .restart local v5    # "nextLeft":I
    iget-object v8, p0, mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2529
    .restart local v0    # "currLeft":I
    if-eqz v1, :cond_bf

    if-gt v5, v0, :cond_bf

    .line 2530
    invoke-virtual {p0}, pageRight()Z

    move-result v2

    goto/16 :goto_32

    .line 2532
    :cond_bf
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto/16 :goto_32

    .line 2535
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_c5
    if-eq p1, v11, :cond_ca

    const/4 v8, 0x1

    if-ne p1, v8, :cond_d0

    .line 2537
    :cond_ca
    invoke-virtual {p0}, pageLeft()Z

    move-result v2

    goto/16 :goto_32

    .line 2538
    :cond_d0
    if-eq p1, v12, :cond_d5

    const/4 v8, 0x2

    if-ne p1, v8, :cond_32

    .line 2540
    :cond_d5
    invoke-virtual {p0}, pageRight()Z

    move-result v2

    goto/16 :goto_32
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .registers 17
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 2425
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_59

    move-object v7, p1

    .line 2426
    check-cast v7, Landroid/view/ViewGroup;

    .line 2427
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 2428
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 2429
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 2431
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_15
    if-ltz v8, :cond_59

    .line 2433
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2434
    .local v1, "child":Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_56

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_56

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_56

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_56

    const/4 v2, 0x1

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 2438
    const/4 v0, 0x1

    .line 2443
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :goto_55
    return v0

    .line 2431
    .restart local v1    # "child":Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_56
    add-int/lit8 v8, v8, -0x1

    goto :goto_15

    .line 2443
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_59
    if-eqz p2, :cond_64

    neg-int v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_64

    const/4 v0, 0x1

    goto :goto_55

    :cond_64
    const/4 v0, 0x0

    goto :goto_55
.end method

.method public canScrollHorizontally(I)Z
    .registers 8
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2398
    iget-object v4, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-nez v4, :cond_7

    .line 2409
    :cond_6
    :goto_6
    return v3

    .line 2402
    :cond_7
    invoke-direct {p0}, getPaddedWidth()I

    move-result v1

    .line 2403
    .local v1, "width":I
    invoke-virtual {p0}, getScrollX()I

    move-result v0

    .line 2404
    .local v0, "scrollX":I
    if-gez p1, :cond_1c

    .line 2405
    int-to-float v4, v1

    iget v5, p0, mFirstOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-le v0, v4, :cond_1a

    :goto_18
    move v3, v2

    goto :goto_6

    :cond_1a
    move v2, v3

    goto :goto_18

    .line 2406
    :cond_1c
    if-lez p1, :cond_6

    .line 2407
    int-to-float v4, v1

    iget v5, p0, mLastOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-ge v0, v4, :cond_27

    :goto_25
    move v3, v2

    goto :goto_6

    :cond_27
    move v2, v3

    goto :goto_25
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2701
    instance-of v0, p1, Lcom/android/internal/widget/ViewPager$LayoutParams;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public computeScroll()V
    .registers 6

    .prologue
    .line 1627
    iget-object v4, p0, mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3e

    iget-object v4, p0, mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1628
    invoke-virtual {p0}, getScrollX()I

    move-result v0

    .line 1629
    .local v0, "oldX":I
    invoke-virtual {p0}, getScrollY()I

    move-result v1

    .line 1630
    .local v1, "oldY":I
    iget-object v4, p0, mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1631
    .local v2, "x":I
    iget-object v4, p0, mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1633
    .local v3, "y":I
    if-ne v0, v2, :cond_28

    if-eq v1, v3, :cond_3a

    .line 1634
    :cond_28
    invoke-virtual {p0, v2, v3}, scrollTo(II)V

    .line 1636
    invoke-direct {p0, v2}, pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 1637
    iget-object v4, p0, mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1638
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, scrollTo(II)V

    .line 1643
    :cond_3a
    invoke-virtual {p0}, postInvalidateOnAnimation()V

    .line 1649
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_3d
    return-void

    .line 1648
    :cond_3e
    const/4 v4, 0x1

    invoke-direct {p0, v4}, completeScroll(Z)V

    goto :goto_3d
.end method

.method dataSetChanged()V
    .registers 16

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 846
    iget-object v12, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v12}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 847
    .local v0, "adapterCount":I
    iput v0, p0, mExpectedAdapterCount:I

    .line 848
    iget-object v12, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget v13, p0, mOffscreenPageLimit:I

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    if-ge v12, v13, :cond_43

    iget-object v12, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, v0, :cond_43

    move v7, v10

    .line 850
    .local v7, "needPopulate":Z
    :goto_21
    iget v8, p0, mCurItem:I

    .line 852
    .local v8, "newCurrItem":I
    const/4 v5, 0x0

    .line 853
    .local v5, "isUpdating":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_25
    iget-object v12, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_84

    .line 854
    iget-object v12, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 855
    .local v4, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v12, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v13, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v9

    .line 857
    .local v9, "newPos":I
    const/4 v12, -0x1

    if-ne v9, v12, :cond_45

    .line 853
    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .end local v3    # "i":I
    .end local v4    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v5    # "isUpdating":Z
    .end local v7    # "needPopulate":Z
    .end local v8    # "newCurrItem":I
    .end local v9    # "newPos":I
    :cond_43
    move v7, v11

    .line 848
    goto :goto_21

    .line 861
    .restart local v3    # "i":I
    .restart local v4    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v5    # "isUpdating":Z
    .restart local v7    # "needPopulate":Z
    .restart local v8    # "newCurrItem":I
    .restart local v9    # "newPos":I
    :cond_45
    const/4 v12, -0x2

    if-ne v9, v12, :cond_75

    .line 862
    iget-object v12, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 863
    add-int/lit8 v3, v3, -0x1

    .line 865
    if-nez v5, :cond_57

    .line 866
    iget-object v12, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v12, p0}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 867
    const/4 v5, 0x1

    .line 870
    :cond_57
    iget-object v12, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v13, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget-object v14, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, p0, v13, v14}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 871
    const/4 v7, 0x1

    .line 873
    iget v12, p0, mCurItem:I

    iget v13, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v12, v13, :cond_40

    .line 875
    iget v12, p0, mCurItem:I

    add-int/lit8 v13, v0, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 876
    const/4 v7, 0x1

    goto :goto_40

    .line 881
    :cond_75
    iget v12, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-eq v12, v9, :cond_40

    .line 882
    iget v12, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v13, p0, mCurItem:I

    if-ne v12, v13, :cond_80

    .line 884
    move v8, v9

    .line 887
    :cond_80
    iput v9, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 888
    const/4 v7, 0x1

    goto :goto_40

    .line 892
    .end local v4    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v9    # "newPos":I
    :cond_84
    if-eqz v5, :cond_8b

    .line 893
    iget-object v12, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v12, p0}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 896
    :cond_8b
    iget-object v12, p0, mItems:Ljava/util/ArrayList;

    sget-object v13, COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 898
    if-eqz v7, :cond_b5

    .line 900
    invoke-virtual {p0}, getChildCount()I

    move-result v2

    .line 901
    .local v2, "childCount":I
    const/4 v3, 0x0

    :goto_99
    if-ge v3, v2, :cond_af

    .line 902
    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 903
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 904
    .local v6, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v12, v6, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v12, :cond_ac

    .line 905
    const/4 v12, 0x0

    iput v12, v6, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 901
    :cond_ac
    add-int/lit8 v3, v3, 0x1

    goto :goto_99

    .line 909
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_af
    invoke-virtual {p0, v8, v11, v10}, setCurrentItemInternal(IZZ)Z

    .line 910
    invoke-virtual {p0}, requestLayout()V

    .line 912
    .end local v2    # "childCount":I
    :cond_b5
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2449
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

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

.method distanceInfluenceForSnapDuration(F)F
    .registers 6
    .param p1, "f"    # F

    .prologue
    .line 767
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 768
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 769
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x1

    .line 2262
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2263
    const/4 v1, 0x0

    .line 2265
    .local v1, "needsInvalidate":Z
    invoke-virtual {p0}, getOverScrollMode()I

    move-result v2

    .line 2266
    .local v2, "overScrollMode":I
    if-eqz v2, :cond_19

    if-ne v2, v6, :cond_a4

    iget-object v5, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v5, :cond_a4

    iget-object v5, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v5}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v5

    if-le v5, v6, :cond_a4

    .line 2269
    :cond_19
    iget-object v5, p0, mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_5a

    .line 2270
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2271
    .local v3, "restoreCount":I
    invoke-virtual {p0}, getHeight()I

    move-result v5

    invoke-virtual {p0}, getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 2272
    .local v0, "height":I
    invoke-virtual {p0}, getWidth()I

    move-result v4

    .line 2274
    .local v4, "width":I
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2275
    neg-int v5, v0

    invoke-virtual {p0}, getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, mFirstOffset:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2276
    iget-object v5, p0, mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v0, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2277
    iget-object v5, p0, mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 2278
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2280
    .end local v0    # "height":I
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_5a
    iget-object v5, p0, mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_9e

    .line 2281
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2282
    .restart local v3    # "restoreCount":I
    invoke-virtual {p0}, getWidth()I

    move-result v4

    .line 2283
    .restart local v4    # "width":I
    invoke-virtual {p0}, getHeight()I

    move-result v5

    invoke-virtual {p0}, getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 2285
    .restart local v0    # "height":I
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2286
    invoke-virtual {p0}, getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, mLastOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2287
    iget-object v5, p0, mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v0, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2288
    iget-object v5, p0, mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 2289
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2296
    .end local v0    # "height":I
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_9e
    :goto_9e
    if-eqz v1, :cond_a3

    .line 2298
    invoke-virtual {p0}, postInvalidateOnAnimation()V

    .line 2300
    :cond_a3
    return-void

    .line 2292
    :cond_a4
    iget-object v5, p0, mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    .line 2293
    iget-object v5, p0, mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    goto :goto_9e
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 755
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 756
    iget-object v0, p0, mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 757
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 758
    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 760
    :cond_14
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 2461
    const/4 v0, 0x0

    .line 2462
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_f

    .line 2463
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_36

    .line 2479
    :cond_f
    :goto_f
    return v0

    .line 2465
    :sswitch_10
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, arrowScroll(I)Z

    move-result v0

    .line 2466
    goto :goto_f

    .line 2468
    :sswitch_17
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, arrowScroll(I)Z

    move-result v0

    .line 2469
    goto :goto_f

    .line 2471
    :sswitch_1e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2472
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, arrowScroll(I)Z

    move-result v0

    goto :goto_f

    .line 2473
    :cond_2a
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2474
    invoke-virtual {p0, v2}, arrowScroll(I)Z

    move-result v0

    goto :goto_f

    .line 2463
    nop

    :sswitch_data_36
    .sparse-switch
        0x15 -> :sswitch_10
        0x16 -> :sswitch_17
        0x3d -> :sswitch_1e
    .end sparse-switch
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 2691
    new-instance v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2706
    new-instance v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2696
    invoke-virtual {p0}, generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/android/internal/widget/PagerAdapter;
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 7
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 643
    iget v2, p0, mDrawingOrder:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1a

    add-int/lit8 v2, p1, -0x1

    sub-int v0, v2, p2

    .line 644
    .local v0, "index":I
    :goto_9
    iget-object v2, p0, mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager$LayoutParams;

    iget v1, v2, Lcom/android/internal/widget/ViewPager$LayoutParams;->childIndex:I

    .line 645
    .local v1, "result":I
    return v1

    .end local v0    # "index":I
    .end local v1    # "result":I
    :cond_1a
    move v0, p2

    .line 643
    goto :goto_9
.end method

.method public getCurrentItem()I
    .registers 2

    .prologue
    .line 512
    iget v0, p0, mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .registers 2

    .prologue
    .line 668
    iget v0, p0, mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .registers 2

    .prologue
    .line 724
    iget v0, p0, mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1344
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_12

    .line 1345
    if-eqz v0, :cond_c

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_e

    .line 1346
    :cond_c
    const/4 v1, 0x0

    .line 1350
    :goto_d
    return-object v1

    :cond_e
    move-object p1, v0

    .line 1348
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1350
    :cond_12
    invoke-virtual {p0, p1}, infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v1

    goto :goto_d
.end method

.method infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1333
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 1334
    iget-object v2, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1335
    .local v1, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v2, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v3, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1339
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_1b
    return-object v1

    .line 1333
    .restart local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1339
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_1f
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 1354
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 1355
    iget-object v2, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1356
    .local v1, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v2, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_16

    .line 1360
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_15
    return-object v1

    .line 1354
    .restart local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1360
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_19
    const/4 v1, 0x0

    goto :goto_15
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 1365
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1366
    const/4 v0, 0x1

    iput-boolean v0, p0, mFirstLayout:Z

    .line 1367
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 391
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 392
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2304
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2307
    move-object/from16 v0, p0

    iget v15, v0, mPageMargin:I

    if-lez v15, :cond_d0

    move-object/from16 v0, p0

    iget-object v15, v0, mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_d0

    move-object/from16 v0, p0

    iget-object v15, v0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_d0

    move-object/from16 v0, p0

    iget-object v15, v0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v15, :cond_d0

    .line 2308
    invoke-virtual/range {p0 .. p0}, getScrollX()I

    move-result v12

    .line 2309
    .local v12, "scrollX":I
    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v13

    .line 2311
    .local v13, "width":I
    move-object/from16 v0, p0

    iget v15, v0, mPageMargin:I

    int-to-float v15, v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v8, v15, v16

    .line 2312
    .local v8, "marginOffset":F
    const/4 v4, 0x0

    .line 2313
    .local v4, "itemIndex":I
    move-object/from16 v0, p0

    iget-object v15, v0, mItems:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2314
    .local v2, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v9, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 2316
    .local v9, "offset":F
    move-object/from16 v0, p0

    iget-object v15, v0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2317
    .local v3, "itemCount":I
    iget v1, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2318
    .local v1, "firstPos":I
    move-object/from16 v0, p0

    iget-object v15, v0, mItems:Ljava/util/ArrayList;

    add-int/lit8 v16, v3, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/ViewPager$ItemInfo;

    iget v6, v15, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2319
    .local v6, "lastPos":I
    move v10, v1

    .local v10, "pos":I
    :goto_59
    if-ge v10, v6, :cond_d0

    .line 2320
    :goto_5b
    iget v15, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v10, v15, :cond_6e

    if-ge v4, v3, :cond_6e

    .line 2321
    move-object/from16 v0, p0

    iget-object v15, v0, mItems:Ljava/util/ArrayList;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    check-cast v2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .restart local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_5b

    .line 2326
    :cond_6e
    iget v15, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v10, v15, :cond_d1

    .line 2327
    iget v5, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 2328
    .local v5, "itemOffset":F
    iget v14, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 2335
    .local v14, "widthFactor":F
    :goto_76
    int-to-float v15, v13

    mul-float v11, v5, v15

    .line 2336
    .local v11, "scaledOffset":F
    invoke-virtual/range {p0 .. p0}, isLayoutRtl()Z

    move-result v15

    if-eqz v15, :cond_db

    .line 2337
    const/high16 v15, 0x4b800000    # 1.6777216E7f

    sub-float v7, v15, v11

    .line 2342
    .local v7, "left":F
    :goto_83
    add-float v15, v5, v14

    add-float v9, v15, v8

    .line 2344
    move-object/from16 v0, p0

    iget v15, v0, mPageMargin:I

    int-to-float v15, v15

    add-float/2addr v15, v7

    int-to-float v0, v12

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_c9

    .line 2345
    move-object/from16 v0, p0

    iget-object v15, v0, mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v0, v7

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, mTopPageBounds:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, mPageMargin:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v7

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, mBottomPageBounds:I

    move/from16 v19, v0

    invoke-virtual/range {v15 .. v19}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2347
    move-object/from16 v0, p0

    iget-object v15, v0, mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2350
    :cond_c9
    add-int v15, v12, v13

    int-to-float v15, v15

    cmpl-float v15, v7, v15

    if-lez v15, :cond_e0

    .line 2355
    .end local v1    # "firstPos":I
    .end local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v3    # "itemCount":I
    .end local v4    # "itemIndex":I
    .end local v5    # "itemOffset":F
    .end local v6    # "lastPos":I
    .end local v7    # "left":F
    .end local v8    # "marginOffset":F
    .end local v9    # "offset":F
    .end local v10    # "pos":I
    .end local v11    # "scaledOffset":F
    .end local v12    # "scrollX":I
    .end local v13    # "width":I
    .end local v14    # "widthFactor":F
    :cond_d0
    return-void

    .line 2330
    .restart local v1    # "firstPos":I
    .restart local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v3    # "itemCount":I
    .restart local v4    # "itemIndex":I
    .restart local v6    # "lastPos":I
    .restart local v8    # "marginOffset":F
    .restart local v9    # "offset":F
    .restart local v10    # "pos":I
    .restart local v12    # "scrollX":I
    .restart local v13    # "width":I
    :cond_d1
    move v5, v9

    .line 2331
    .restart local v5    # "itemOffset":F
    move-object/from16 v0, p0

    iget-object v15, v0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v15, v10}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v14

    .restart local v14    # "widthFactor":F
    goto :goto_76

    .line 2339
    .restart local v11    # "scaledOffset":F
    :cond_db
    int-to-float v15, v13

    mul-float/2addr v15, v14

    add-float v7, v11, v15

    .restart local v7    # "left":F
    goto :goto_83

    .line 2319
    :cond_e0
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_59
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2712
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2714
    const-class v0, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2715
    invoke-direct {p0}, canScroll()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2717
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_32

    iget-object v0, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v0, :cond_32

    .line 2718
    iget-object v0, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2719
    iget v0, p0, mCurItem:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2720
    iget v0, p0, mCurItem:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 2722
    :cond_32
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2726
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2728
    const-class v0, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2729
    invoke-direct {p0}, canScroll()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2731
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2732
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2733
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2736
    :cond_24
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2737
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2738
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2740
    :cond_35
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1816
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 1819
    .local v6, "action":I
    const/4 v0, 0x3

    if-eq v6, v0, :cond_c

    const/4 v0, 0x1

    if-ne v6, v0, :cond_2a

    .line 1821
    :cond_c
    const-string v0, "ViewPager"

    const-string v1, "Intercept done!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsBeingDragged:Z

    .line 1823
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsUnableToDrag:Z

    .line 1824
    const/4 v0, -0x1

    iput v0, p0, mActivePointerId:I

    .line 1825
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_28

    .line 1826
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1827
    const/4 v0, 0x0

    iput-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1829
    :cond_28
    const/4 v0, 0x0

    .line 1949
    :goto_29
    return v0

    .line 1834
    :cond_2a
    if-eqz v6, :cond_46

    .line 1835
    iget-boolean v0, p0, mIsBeingDragged:Z

    if-eqz v0, :cond_39

    .line 1836
    const-string v0, "ViewPager"

    const-string v1, "Being dragged, intercept returning true!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    const/4 v0, 0x1

    goto :goto_29

    .line 1839
    :cond_39
    iget-boolean v0, p0, mIsUnableToDrag:Z

    if-eqz v0, :cond_46

    .line 1840
    const-string v0, "ViewPager"

    const-string v1, "Unable to drag, intercept returning false!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    const/4 v0, 0x0

    goto :goto_29

    .line 1845
    :cond_46
    sparse-switch v6, :sswitch_data_1ce

    .line 1940
    :cond_49
    :goto_49
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_53

    .line 1941
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1943
    :cond_53
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1949
    iget-boolean v0, p0, mIsBeingDragged:Z

    goto :goto_29

    .line 1856
    :sswitch_5b
    iget v7, p0, mActivePointerId:I

    .line 1857
    .local v7, "activePointerId":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_49

    .line 1862
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 1863
    .local v9, "pointerIndex":I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 1864
    .local v10, "x":F
    iget v0, p0, mLastMotionX:F

    sub-float v8, v10, v0

    .line 1865
    .local v8, "dx":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1866
    .local v11, "xDiff":F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 1867
    .local v12, "y":F
    iget v0, p0, mInitialMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 1868
    .local v13, "yDiff":F
    const-string v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moved x to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " diff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_d5

    iget v0, p0, mLastMotionX:F

    invoke-direct {p0, v0, v8}, isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_d5

    const/4 v2, 0x0

    float-to-int v3, v8

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 1873
    iput v10, p0, mLastMotionX:F

    .line 1874
    iput v12, p0, mLastMotionY:F

    .line 1875
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsUnableToDrag:Z

    .line 1876
    const/4 v0, 0x0

    goto/16 :goto_29

    .line 1878
    :cond_d5
    iget v0, p0, mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_11e

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v11

    cmpl-float v0, v0, v13

    if-lez v0, :cond_11e

    .line 1879
    const-string v0, "ViewPager"

    const-string v1, "Starting drag!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsBeingDragged:Z

    .line 1881
    const/4 v0, 0x1

    invoke-direct {p0, v0}, requestParentDisallowInterceptTouchEvent(Z)V

    .line 1882
    const/4 v0, 0x1

    invoke-direct {p0, v0}, setScrollState(I)V

    .line 1883
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_117

    iget v0, p0, mInitialMotionX:F

    iget v1, p0, mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_100
    iput v0, p0, mLastMotionX:F

    .line 1885
    iput v12, p0, mLastMotionY:F

    .line 1886
    const/4 v0, 0x1

    invoke-direct {p0, v0}, setScrollingCacheEnabled(Z)V

    .line 1895
    :cond_108
    :goto_108
    iget-boolean v0, p0, mIsBeingDragged:Z

    if-eqz v0, :cond_49

    .line 1897
    invoke-direct {p0, v10}, performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1898
    invoke-virtual {p0}, postInvalidateOnAnimation()V

    goto/16 :goto_49

    .line 1883
    :cond_117
    iget v0, p0, mInitialMotionX:F

    iget v1, p0, mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_100

    .line 1887
    :cond_11e
    iget v0, p0, mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_108

    .line 1892
    const-string v0, "ViewPager"

    const-string v1, "Starting unable to drag!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsUnableToDrag:Z

    goto :goto_108

    .line 1909
    .end local v7    # "activePointerId":I
    .end local v8    # "dx":F
    .end local v9    # "pointerIndex":I
    .end local v10    # "x":F
    .end local v11    # "xDiff":F
    .end local v12    # "y":F
    .end local v13    # "yDiff":F
    :sswitch_130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, mInitialMotionX:F

    iput v0, p0, mLastMotionX:F

    .line 1910
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, mInitialMotionY:F

    iput v0, p0, mLastMotionY:F

    .line 1911
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, mActivePointerId:I

    .line 1912
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsUnableToDrag:Z

    .line 1914
    iget-object v0, p0, mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1915
    iget v0, p0, mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c0

    iget-object v0, p0, mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, mCloseEnough:I

    if-le v0, v1, :cond_1c0

    .line 1918
    iget-object v0, p0, mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1919
    const/4 v0, 0x0

    iput-boolean v0, p0, mPopulatePending:Z

    .line 1920
    invoke-virtual {p0}, populate()V

    .line 1921
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsBeingDragged:Z

    .line 1922
    const/4 v0, 0x1

    invoke-direct {p0, v0}, requestParentDisallowInterceptTouchEvent(Z)V

    .line 1923
    const/4 v0, 0x1

    invoke-direct {p0, v0}, setScrollState(I)V

    .line 1929
    :goto_17f
    const-string v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Down at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mLastMotionX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mLastMotionY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsBeingDragged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mIsBeingDragged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mIsUnableToDrag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mIsUnableToDrag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49

    .line 1925
    :cond_1c0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, completeScroll(Z)V

    .line 1926
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsBeingDragged:Z

    goto :goto_17f

    .line 1936
    :sswitch_1c8
    invoke-direct {p0, p1}, onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_49

    .line 1845
    nop

    :sswitch_data_1ce
    .sparse-switch
        0x0 -> :sswitch_130
        0x2 -> :sswitch_5b
        0x6 -> :sswitch_1c8
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 37
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1505
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v10

    .line 1506
    .local v10, "count":I
    sub-int v25, p4, p2

    .line 1507
    .local v25, "width":I
    sub-int v12, p5, p3

    .line 1508
    .local v12, "height":I
    invoke-virtual/range {p0 .. p0}, getPaddingLeft()I

    move-result v19

    .line 1509
    .local v19, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, getPaddingTop()I

    move-result v21

    .line 1510
    .local v21, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, getPaddingRight()I

    move-result v20

    .line 1511
    .local v20, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, getPaddingBottom()I

    move-result v18

    .line 1512
    .local v18, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, getScrollX()I

    move-result v22

    .line 1514
    .local v22, "scrollX":I
    const/4 v11, 0x0

    .line 1518
    .local v11, "decorCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1e
    if-ge v15, v10, :cond_c8

    .line 1519
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1520
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_73

    .line 1521
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1522
    .local v17, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    const/4 v6, 0x0

    .line 1523
    .local v6, "childLeft":I
    const/4 v8, 0x0

    .line 1524
    .local v8, "childTop":I
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v27, v0

    if-eqz v27, :cond_73

    .line 1525
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    move/from16 v27, v0

    and-int/lit8 v14, v27, 0x7

    .line 1526
    .local v14, "hgrav":I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    move/from16 v27, v0

    and-int/lit8 v24, v27, 0x70

    .line 1527
    .local v24, "vgrav":I
    packed-switch v14, :pswitch_data_1a4

    .line 1529
    :pswitch_55
    move/from16 v6, v19

    .line 1544
    :goto_57
    sparse-switch v24, :sswitch_data_1b2

    .line 1546
    move/from16 v8, v21

    .line 1561
    :goto_5c
    add-int v6, v6, v22

    .line 1562
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    add-int v27, v27, v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v28, v28, v8

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v6, v8, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1565
    add-int/lit8 v11, v11, 0x1

    .line 1518
    .end local v6    # "childLeft":I
    .end local v8    # "childTop":I
    .end local v14    # "hgrav":I
    .end local v17    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v24    # "vgrav":I
    :cond_73
    add-int/lit8 v15, v15, 0x1

    goto :goto_1e

    .line 1532
    .restart local v6    # "childLeft":I
    .restart local v8    # "childTop":I
    .restart local v14    # "hgrav":I
    .restart local v17    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .restart local v24    # "vgrav":I
    :pswitch_76
    move/from16 v6, v19

    .line 1533
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    add-int v19, v19, v27

    .line 1534
    goto :goto_57

    .line 1536
    :pswitch_7f
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    sub-int v27, v25, v27

    div-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1538
    goto :goto_57

    .line 1540
    :pswitch_90
    sub-int v27, v25, v20

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    sub-int v6, v27, v28

    .line 1541
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    add-int v20, v20, v27

    goto :goto_57

    .line 1549
    :sswitch_9f
    move/from16 v8, v21

    .line 1550
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v21, v21, v27

    .line 1551
    goto :goto_5c

    .line 1553
    :sswitch_a8
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    sub-int v27, v12, v27

    div-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1555
    goto :goto_5c

    .line 1557
    :sswitch_b9
    sub-int v27, v12, v18

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    sub-int v8, v27, v28

    .line 1558
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v18, v18, v27

    goto :goto_5c

    .line 1570
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childLeft":I
    .end local v8    # "childTop":I
    .end local v14    # "hgrav":I
    .end local v17    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v24    # "vgrav":I
    :cond_c8
    sub-int v27, v25, v19

    sub-int v9, v27, v20

    .line 1572
    .local v9, "childWidth":I
    const/4 v15, 0x0

    :goto_cd
    if-ge v15, v10, :cond_167

    .line 1573
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1574
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_e4

    .line 1572
    :cond_e1
    :goto_e1
    add-int/lit8 v15, v15, 0x1

    goto :goto_cd

    .line 1578
    :cond_e4
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1579
    .restart local v17    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v27, v0

    if-nez v27, :cond_e1

    .line 1583
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v16

    .line 1584
    .local v16, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v16, :cond_e1

    .line 1588
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    move/from16 v27, v0

    if-eqz v27, :cond_12f

    .line 1591
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1592
    int-to-float v0, v9

    move/from16 v27, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    .line 1595
    .local v26, "widthSpec":I
    sub-int v27, v12, v21

    sub-int v27, v27, v18

    const/high16 v28, 0x40000000    # 2.0f

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1598
    .local v13, "heightSpec":I
    move/from16 v0, v26

    invoke-virtual {v5, v0, v13}, Landroid/view/View;->measure(II)V

    .line 1601
    .end local v13    # "heightSpec":I
    .end local v26    # "widthSpec":I
    :cond_12f
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1602
    .local v7, "childMeasuredWidth":I
    int-to-float v0, v9

    move/from16 v27, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v23, v0

    .line 1604
    .local v23, "startOffset":I
    invoke-virtual/range {p0 .. p0}, isLayoutRtl()Z

    move-result v27

    if-eqz v27, :cond_164

    .line 1605
    const/high16 v27, 0x1000000

    sub-int v27, v27, v20

    sub-int v27, v27, v23

    sub-int v6, v27, v7

    .line 1610
    .restart local v6    # "childLeft":I
    :goto_151
    move/from16 v8, v21

    .line 1611
    .restart local v8    # "childTop":I
    add-int v27, v6, v7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v28, v28, v8

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v6, v8, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_e1

    .line 1607
    .end local v6    # "childLeft":I
    .end local v8    # "childTop":I
    :cond_164
    add-int v6, v19, v23

    .restart local v6    # "childLeft":I
    goto :goto_151

    .line 1615
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childLeft":I
    .end local v7    # "childMeasuredWidth":I
    .end local v16    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v17    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v23    # "startOffset":I
    :cond_167
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mTopPageBounds:I

    .line 1616
    sub-int v27, v12, v18

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, mBottomPageBounds:I

    .line 1617
    move-object/from16 v0, p0

    iput v11, v0, mDecorChildCount:I

    .line 1619
    move-object/from16 v0, p0

    iget-boolean v0, v0, mFirstLayout:Z

    move/from16 v27, v0

    if-eqz v27, :cond_19a

    .line 1620
    move-object/from16 v0, p0

    iget v0, v0, mCurItem:I

    move/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, scrollToItem(IZIZ)V

    .line 1622
    :cond_19a
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, mFirstLayout:Z

    .line 1623
    return-void

    .line 1527
    nop

    :pswitch_data_1a4
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_55
        :pswitch_76
        :pswitch_55
        :pswitch_90
    .end packed-switch

    .line 1544
    :sswitch_data_1b2
    .sparse-switch
        0x10 -> :sswitch_a8
        0x30 -> :sswitch_9f
        0x50 -> :sswitch_b9
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 27
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1376
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, getDefaultSize(II)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, getDefaultSize(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, setMeasuredDimension(II)V

    .line 1379
    invoke-virtual/range {p0 .. p0}, getMeasuredWidth()I

    move-result v15

    .line 1380
    .local v15, "measuredWidth":I
    div-int/lit8 v14, v15, 0xa

    .line 1381
    .local v14, "maxGutterSize":I
    move-object/from16 v0, p0

    iget v0, v0, mDefaultGutterSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mGutterSize:I

    .line 1384
    invoke-virtual/range {p0 .. p0}, getPaddingLeft()I

    move-result v21

    sub-int v21, v15, v21

    invoke-virtual/range {p0 .. p0}, getPaddingRight()I

    move-result v22

    sub-int v5, v21, v22

    .line 1385
    .local v5, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, getMeasuredHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, getPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, getPaddingBottom()I

    move-result v22

    sub-int v4, v21, v22

    .line 1392
    .local v4, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v16

    .line 1393
    .local v16, "size":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_56
    move/from16 v0, v16

    if-ge v12, v0, :cond_118

    .line 1394
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1395
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_102

    .line 1396
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1397
    .local v13, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    if-eqz v13, :cond_102

    iget-boolean v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-eqz v21, :cond_102

    .line 1398
    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v11, v21, 0x7

    .line 1399
    .local v11, "hgrav":I
    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v17, v21, 0x70

    .line 1400
    .local v17, "vgrav":I
    const/high16 v18, -0x80000000

    .line 1401
    .local v18, "widthMode":I
    const/high16 v8, -0x80000000

    .line 1402
    .local v8, "heightMode":I
    const/16 v21, 0x30

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_9a

    const/16 v21, 0x50

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_106

    :cond_9a
    const/4 v7, 0x1

    .line 1403
    .local v7, "consumeVertical":Z
    :goto_9b
    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v11, v0, :cond_a7

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v11, v0, :cond_108

    :cond_a7
    const/4 v6, 0x1

    .line 1405
    .local v6, "consumeHorizontal":Z
    :goto_a8
    if-eqz v7, :cond_10a

    .line 1406
    const/high16 v18, 0x40000000    # 2.0f

    .line 1411
    :cond_ac
    :goto_ac
    move/from16 v19, v5

    .line 1412
    .local v19, "widthSize":I
    move v9, v4

    .line 1413
    .local v9, "heightSize":I
    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_cd

    .line 1414
    const/high16 v18, 0x40000000    # 2.0f

    .line 1415
    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_cd

    .line 1416
    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    move/from16 v19, v0

    .line 1419
    :cond_cd
    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_e9

    .line 1420
    const/high16 v8, 0x40000000    # 2.0f

    .line 1421
    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_e9

    .line 1422
    iget v9, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    .line 1425
    :cond_e9
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1426
    .local v20, "widthSpec":I
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1427
    .local v10, "heightSpec":I
    move/from16 v0, v20

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1429
    if-eqz v7, :cond_10f

    .line 1430
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v4, v4, v21

    .line 1393
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_102
    :goto_102
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_56

    .line 1402
    .restart local v8    # "heightMode":I
    .restart local v11    # "hgrav":I
    .restart local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .restart local v17    # "vgrav":I
    .restart local v18    # "widthMode":I
    :cond_106
    const/4 v7, 0x0

    goto :goto_9b

    .line 1403
    .restart local v7    # "consumeVertical":Z
    :cond_108
    const/4 v6, 0x0

    goto :goto_a8

    .line 1407
    .restart local v6    # "consumeHorizontal":Z
    :cond_10a
    if-eqz v6, :cond_ac

    .line 1408
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_ac

    .line 1431
    .restart local v9    # "heightSize":I
    .restart local v10    # "heightSpec":I
    .restart local v19    # "widthSize":I
    .restart local v20    # "widthSpec":I
    :cond_10f
    if-eqz v6, :cond_102

    .line 1432
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    sub-int v5, v5, v21

    goto :goto_102

    .line 1438
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_118
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mChildWidthMeasureSpec:I

    .line 1439
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mChildHeightMeasureSpec:I

    .line 1442
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, mInLayout:Z

    .line 1443
    invoke-virtual/range {p0 .. p0}, populate()V

    .line 1444
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, mInLayout:Z

    .line 1447
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v16

    .line 1448
    const/4 v12, 0x0

    :goto_14c
    move/from16 v0, v16

    if-ge v12, v0, :cond_1ca

    .line 1449
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1450
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1c7

    .line 1451
    const-string v21, "ViewPager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Measuring #"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, mChildWidthMeasureSpec:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1455
    .restart local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    if-eqz v13, :cond_1a6

    iget-boolean v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-nez v21, :cond_1c7

    .line 1456
    :cond_1a6
    int-to-float v0, v5

    move/from16 v21, v0

    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1458
    .restart local v20    # "widthSpec":I
    move-object/from16 v0, p0

    iget v0, v0, mChildHeightMeasureSpec:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1448
    .end local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v20    # "widthSpec":I
    :cond_1c7
    add-int/lit8 v12, v12, 0x1

    goto :goto_14c

    .line 1462
    .end local v3    # "child":Landroid/view/View;
    :cond_1ca
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .registers 21
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 1702
    move-object/from16 v0, p0

    iget v15, v0, mDecorChildCount:I

    if-lez v15, :cond_68

    .line 1703
    invoke-virtual/range {p0 .. p0}, getScrollX()I

    move-result v12

    .line 1704
    .local v12, "scrollX":I
    invoke-virtual/range {p0 .. p0}, getPaddingLeft()I

    move-result v10

    .line 1705
    .local v10, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, getPaddingRight()I

    move-result v11

    .line 1706
    .local v11, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v14

    .line 1707
    .local v14, "width":I
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v4

    .line 1708
    .local v4, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1b
    if-ge v8, v4, :cond_68

    .line 1709
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1710
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1711
    .local v9, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v15, v9, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v15, :cond_30

    .line 1708
    :cond_2d
    :goto_2d
    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    .line 1713
    :cond_30
    iget v15, v9, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v7, v15, 0x7

    .line 1714
    .local v7, "hgrav":I
    const/4 v5, 0x0

    .line 1715
    .local v5, "childLeft":I
    packed-switch v7, :pswitch_data_d2

    .line 1717
    :pswitch_38
    move v5, v10

    .line 1732
    :goto_39
    add-int/2addr v5, v12

    .line 1734
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v6, v5, v15

    .line 1735
    .local v6, "childOffset":I
    if-eqz v6, :cond_2d

    .line 1736
    invoke-virtual {v3, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_2d

    .line 1720
    .end local v6    # "childOffset":I
    :pswitch_46
    move v5, v10

    .line 1721
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v10, v15

    .line 1722
    goto :goto_39

    .line 1724
    :pswitch_4d
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v15, v14, v15

    div-int/lit8 v15, v15, 0x2

    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1726
    goto :goto_39

    .line 1728
    :pswitch_5a
    sub-int v15, v14, v11

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    sub-int v5, v15, v16

    .line 1729
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v11, v15

    goto :goto_39

    .line 1741
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v5    # "childLeft":I
    .end local v7    # "hgrav":I
    .end local v8    # "i":I
    .end local v9    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v10    # "paddingLeft":I
    .end local v11    # "paddingRight":I
    .end local v12    # "scrollX":I
    .end local v14    # "width":I
    :cond_68
    move-object/from16 v0, p0

    iget-object v15, v0, mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v15, :cond_7b

    .line 1742
    move-object/from16 v0, p0

    iget-object v15, v0, mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1744
    :cond_7b
    move-object/from16 v0, p0

    iget-object v15, v0, mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v15, :cond_8e

    .line 1745
    move-object/from16 v0, p0

    iget-object v15, v0, mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1748
    :cond_8e
    move-object/from16 v0, p0

    iget-object v15, v0, mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    if-eqz v15, :cond_cb

    .line 1749
    invoke-virtual/range {p0 .. p0}, getScrollX()I

    move-result v12

    .line 1750
    .restart local v12    # "scrollX":I
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v4

    .line 1751
    .restart local v4    # "childCount":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_9d
    if-ge v8, v4, :cond_cb

    .line 1752
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1753
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1755
    .restart local v9    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v15, v9, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v15, :cond_b2

    .line 1751
    :goto_af
    add-int/lit8 v8, v8, 0x1

    goto :goto_9d

    .line 1757
    :cond_b2
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int/2addr v15, v12

    int-to-float v15, v15

    invoke-direct/range {p0 .. p0}, getPaddedWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v13, v15, v16

    .line 1758
    .local v13, "transformPos":F
    move-object/from16 v0, p0

    iget-object v15, v0, mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    invoke-interface {v15, v3, v13}, Lcom/android/internal/widget/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    goto :goto_af

    .line 1762
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v8    # "i":I
    .end local v9    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v12    # "scrollX":I
    .end local v13    # "transformPos":F
    :cond_cb
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, mCalledSuper:Z

    .line 1763
    return-void

    .line 1715
    nop

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_38
        :pswitch_46
        :pswitch_38
        :pswitch_5a
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 12
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2665
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 2666
    .local v1, "count":I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_2c

    .line 2667
    const/4 v6, 0x0

    .line 2668
    .local v6, "index":I
    const/4 v5, 0x1

    .line 2669
    .local v5, "increment":I
    move v2, v1

    .line 2675
    .local v2, "end":I
    :goto_b
    move v3, v6

    .local v3, "i":I
    :goto_c
    if-eq v3, v2, :cond_33

    .line 2676
    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2677
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_31

    .line 2678
    invoke-virtual {p0, v0}, infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v4

    .line 2679
    .local v4, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v4, :cond_31

    iget v7, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v8, p0, mCurItem:I

    if-ne v7, v8, :cond_31

    .line 2680
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 2681
    const/4 v7, 0x1

    .line 2686
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_2b
    return v7

    .line 2671
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_2c
    add-int/lit8 v6, v1, -0x1

    .line 2672
    .restart local v6    # "index":I
    const/4 v5, -0x1

    .line 2673
    .restart local v5    # "increment":I
    const/4 v2, -0x1

    .restart local v2    # "end":I
    goto :goto_b

    .line 2675
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_31
    add-int/2addr v3, v5

    goto :goto_c

    .line 2686
    .end local v0    # "child":Landroid/view/View;
    :cond_33
    const/4 v7, 0x0

    goto :goto_2b
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1279
    instance-of v1, p1, Lcom/android/internal/widget/ViewPager$SavedState;

    if-nez v1, :cond_8

    .line 1280
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1295
    :goto_7
    return-void

    :cond_8
    move-object v0, p1

    .line 1284
    check-cast v0, Lcom/android/internal/widget/ViewPager$SavedState;

    .line 1285
    .local v0, "ss":Lcom/android/internal/widget/ViewPager$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1287
    iget-object v1, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v1, :cond_27

    .line 1288
    iget-object v1, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v2, v0, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/android/internal/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1289
    iget v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, setCurrentItemInternal(IZZ)Z

    goto :goto_7

    .line 1291
    :cond_27
    iget v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    iput v1, p0, mRestoredCurItem:I

    .line 1292
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1293
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_7
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .prologue
    .line 2584
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 2586
    if-nez p1, :cond_9

    .line 2587
    const/4 v0, -0x1

    iput v0, p0, mLeftIncr:I

    .line 2591
    :goto_8
    return-void

    .line 2589
    :cond_9
    const/4 v0, 0x1

    iput v0, p0, mLeftIncr:I

    goto :goto_8
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 1268
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1269
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/widget/ViewPager$SavedState;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1270
    .local v0, "ss":Lcom/android/internal/widget/ViewPager$SavedState;
    iget v2, p0, mCurItem:I

    iput v2, v0, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    .line 1271
    iget-object v2, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v2, :cond_19

    .line 1272
    iget-object v2, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1274
    :cond_19
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1466
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1469
    if-eq p1, p3, :cond_c

    .line 1470
    iget v0, p0, mPageMargin:I

    iget v1, p0, mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, recomputeScrollPosition(IIII)V

    .line 1472
    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 30
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1954
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v24

    if-eqz v24, :cond_f

    .line 1957
    const/16 v24, 0x0

    .line 2076
    :goto_e
    return v24

    .line 1960
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v24

    if-nez v24, :cond_26

    .line 1962
    :cond_23
    const/16 v24, 0x0

    goto :goto_e

    .line 1965
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    if-nez v24, :cond_38

    .line 1966
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1968
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1970
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 1971
    .local v5, "action":I
    const/4 v11, 0x0

    .line 1973
    .local v11, "needsInvalidate":Z
    and-int/lit16 v0, v5, 0xff

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_31e

    .line 2073
    :cond_51
    :goto_51
    :pswitch_51
    if-eqz v11, :cond_56

    .line 2074
    invoke-virtual/range {p0 .. p0}, postInvalidateOnAnimation()V

    .line 2076
    :cond_56
    const/16 v24, 0x1

    goto :goto_e

    .line 1975
    :pswitch_59
    move-object/from16 v0, p0

    iget-object v0, v0, mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1976
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, mPopulatePending:Z

    .line 1977
    invoke-virtual/range {p0 .. p0}, populate()V

    .line 1980
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, mInitialMotionX:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, mLastMotionX:F

    .line 1981
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, mInitialMotionY:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, mLastMotionY:F

    .line 1982
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, mActivePointerId:I

    goto :goto_51

    .line 1986
    :pswitch_9e
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsBeingDragged:Z

    move/from16 v24, v0

    if-nez v24, :cond_195

    .line 1987
    move-object/from16 v0, p0

    iget v0, v0, mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v15

    .line 1988
    .local v15, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 1989
    .local v20, "x":F
    move-object/from16 v0, p0

    iget v0, v0, mLastMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 1990
    .local v21, "xDiff":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v22

    .line 1991
    .local v22, "y":F
    move-object/from16 v0, p0

    iget v0, v0, mLastMotionY:F

    move/from16 v24, v0

    sub-float v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v23

    .line 1992
    .local v23, "yDiff":F
    const-string v24, "ViewPager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Moved x to "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " diff="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    move-object/from16 v0, p0

    iget v0, v0, mTouchSlop:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v21, v24

    if-lez v24, :cond_195

    cmpl-float v24, v21, v23

    if-lez v24, :cond_195

    .line 1994
    const-string v24, "ViewPager"

    const-string v25, "Starting drag!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsBeingDragged:Z

    .line 1996
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, requestParentDisallowInterceptTouchEvent(Z)V

    .line 1997
    move-object/from16 v0, p0

    iget v0, v0, mInitialMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_1bd

    move-object/from16 v0, p0

    iget v0, v0, mInitialMotionX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    :goto_16a
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, mLastMotionX:F

    .line 1999
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mLastMotionY:F

    .line 2000
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, setScrollState(I)V

    .line 2001
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, setScrollingCacheEnabled(Z)V

    .line 2004
    invoke-virtual/range {p0 .. p0}, getParent()Landroid/view/ViewParent;

    move-result-object v14

    .line 2005
    .local v14, "parent":Landroid/view/ViewParent;
    if-eqz v14, :cond_195

    .line 2006
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2011
    .end local v14    # "parent":Landroid/view/ViewParent;
    .end local v15    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :cond_195
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_51

    .line 2013
    move-object/from16 v0, p0

    iget v0, v0, mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 2014
    .local v6, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 2015
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, performDrag(F)Z

    move-result v24

    or-int v11, v11, v24

    .line 2016
    goto/16 :goto_51

    .line 1997
    .end local v6    # "activePointerIndex":I
    .restart local v15    # "pointerIndex":I
    .restart local v21    # "xDiff":F
    .restart local v22    # "y":F
    .restart local v23    # "yDiff":F
    :cond_1bd
    move-object/from16 v0, p0

    iget v0, v0, mInitialMotionX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    goto :goto_16a

    .line 2019
    .end local v15    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :pswitch_1d1
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_51

    .line 2020
    move-object/from16 v0, p0

    iget-object v0, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    .line 2021
    .local v19, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v24, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, mMaximumVelocity:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2022
    move-object/from16 v0, p0

    iget v0, v0, mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v10, v0

    .line 2024
    .local v10, "initialVelocity":I
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, mPopulatePending:Z

    .line 2026
    invoke-direct/range {p0 .. p0}, getScrollStart()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v16, v0

    .line 2027
    .local v16, "scrollStart":F
    invoke-direct/range {p0 .. p0}, getPaddedWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v17, v16, v24

    .line 2028
    .local v17, "scrolledPages":F
    invoke-direct/range {p0 .. p0}, infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v8

    .line 2029
    .local v8, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v7, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2031
    .local v7, "currentPage":I
    invoke-virtual/range {p0 .. p0}, isLayoutRtl()Z

    move-result v24

    if-eqz v24, :cond_290

    .line 2032
    iget v0, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    move/from16 v24, v0

    sub-float v24, v24, v17

    iget v0, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v25, v0

    div-float v13, v24, v25

    .line 2037
    .local v13, "nextPageOffset":F
    :goto_23a
    move-object/from16 v0, p0

    iget v0, v0, mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 2038
    .restart local v6    # "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 2039
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, mInitialMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v18, v0

    .line 2040
    .local v18, "totalDelta":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v7, v13, v10, v1}, determineTargetPage(IFII)I

    move-result v12

    .line 2042
    .local v12, "nextPage":I
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v12, v1, v2, v10}, setCurrentItemInternal(IZZI)Z

    .line 2044
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, mActivePointerId:I

    .line 2045
    invoke-direct/range {p0 .. p0}, endDrag()V

    .line 2046
    move-object/from16 v0, p0

    iget-object v0, v0, mLeftEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2047
    move-object/from16 v0, p0

    iget-object v0, v0, mRightEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2048
    const/4 v11, 0x1

    .line 2049
    goto/16 :goto_51

    .line 2034
    .end local v6    # "activePointerIndex":I
    .end local v12    # "nextPage":I
    .end local v13    # "nextPageOffset":F
    .end local v18    # "totalDelta":I
    .end local v20    # "x":F
    :cond_290
    iget v0, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    move/from16 v24, v0

    sub-float v24, v17, v24

    iget v0, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v25, v0

    div-float v13, v24, v25

    .restart local v13    # "nextPageOffset":F
    goto :goto_23a

    .line 2052
    .end local v7    # "currentPage":I
    .end local v8    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v10    # "initialVelocity":I
    .end local v13    # "nextPageOffset":F
    .end local v16    # "scrollStart":F
    .end local v17    # "scrolledPages":F
    .end local v19    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_29d
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_51

    .line 2053
    move-object/from16 v0, p0

    iget v0, v0, mCurItem:I

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, scrollToItem(IZIZ)V

    .line 2054
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, mActivePointerId:I

    .line 2055
    invoke-direct/range {p0 .. p0}, endDrag()V

    .line 2056
    move-object/from16 v0, p0

    iget-object v0, v0, mLeftEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2057
    move-object/from16 v0, p0

    iget-object v0, v0, mRightEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2058
    const/4 v11, 0x1

    goto/16 :goto_51

    .line 2062
    :pswitch_2de
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 2063
    .local v9, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 2064
    .restart local v20    # "x":F
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mLastMotionX:F

    .line 2065
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, mActivePointerId:I

    goto/16 :goto_51

    .line 2069
    .end local v9    # "index":I
    .end local v20    # "x":F
    :pswitch_2fc
    invoke-direct/range {p0 .. p1}, onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2070
    move-object/from16 v0, p0

    iget v0, v0, mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, mLastMotionX:F

    goto/16 :goto_51

    .line 1973
    nop

    :pswitch_data_31e
    .packed-switch 0x0
        :pswitch_59
        :pswitch_1d1
        :pswitch_9e
        :pswitch_29d
        :pswitch_51
        :pswitch_2de
        :pswitch_2fc
    .end packed-switch
.end method

.method pageLeft()Z
    .registers 4

    .prologue
    .line 2575
    iget v0, p0, mCurItem:I

    iget v1, p0, mLeftIncr:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, setCurrentItemInternal(IZZ)Z

    move-result v0

    return v0
.end method

.method pageRight()Z
    .registers 4

    .prologue
    .line 2579
    iget v0, p0, mCurItem:I

    iget v1, p0, mLeftIncr:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, setCurrentItemInternal(IZZ)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 6
    .param p1, "action"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2744
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2765
    :goto_8
    return v0

    .line 2748
    :cond_9
    sparse-switch p1, :sswitch_data_30

    move v0, v1

    .line 2765
    goto :goto_8

    .line 2751
    :sswitch_e
    invoke-virtual {p0, v0}, canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2752
    iget v1, p0, mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, setCurrentItem(I)V

    goto :goto_8

    :cond_1c
    move v0, v1

    .line 2755
    goto :goto_8

    .line 2758
    :sswitch_1e
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2759
    iget v1, p0, mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, setCurrentItem(I)V

    goto :goto_8

    :cond_2d
    move v0, v1

    .line 2762
    goto :goto_8

    .line 2748
    nop

    :sswitch_data_30
    .sparse-switch
        0x1000 -> :sswitch_e
        0x2000 -> :sswitch_1e
        0x1020039 -> :sswitch_1e
        0x102003b -> :sswitch_e
    .end sparse-switch
.end method

.method public populate()V
    .registers 2

    .prologue
    .line 915
    iget v0, p0, mCurItem:I

    invoke-virtual {p0, v0}, populate(I)V

    .line 916
    return-void
.end method

.method populate(I)V
    .registers 32
    .param p1, "newCurrentItem"    # I

    .prologue
    .line 919
    const/16 v21, 0x0

    .line 920
    .local v21, "oldCurInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    const/4 v15, 0x2

    .line 921
    .local v15, "focusDirection":I
    move-object/from16 v0, p0

    iget v0, v0, mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    if-eq v0, v1, :cond_31

    .line 922
    move-object/from16 v0, p0

    iget v0, v0, mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    if-ge v0, v1, :cond_3d

    const/16 v15, 0x42

    .line 923
    :goto_1d
    move-object/from16 v0, p0

    iget v0, v0, mCurItem:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v21

    .line 924
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, mCurItem:I

    .line 927
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v27, v0

    if-nez v27, :cond_40

    .line 928
    invoke-direct/range {p0 .. p0}, sortChildDrawingOrder()V

    .line 1104
    :cond_3c
    :goto_3c
    return-void

    .line 922
    :cond_3d
    const/16 v15, 0x11

    goto :goto_1d

    .line 936
    :cond_40
    move-object/from16 v0, p0

    iget-boolean v0, v0, mPopulatePending:Z

    move/from16 v27, v0

    if-eqz v27, :cond_54

    .line 937
    const-string v27, "ViewPager"

    const-string/jumbo v28, "populate is pending, skipping for now..."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-direct/range {p0 .. p0}, sortChildDrawingOrder()V

    goto :goto_3c

    .line 945
    :cond_54
    invoke-virtual/range {p0 .. p0}, getWindowToken()Landroid/os/IBinder;

    move-result-object v27

    if-eqz v27, :cond_3c

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 951
    move-object/from16 v0, p0

    iget v0, v0, mOffscreenPageLimit:I

    move/from16 v22, v0

    .line 952
    .local v22, "pageLimit":I
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, mCurItem:I

    move/from16 v28, v0

    sub-int v28, v28, v22

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 953
    .local v26, "startPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v4

    .line 954
    .local v4, "N":I
    add-int/lit8 v27, v4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, mCurItem:I

    move/from16 v28, v0

    add-int v28, v28, v22

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 956
    .local v12, "endPos":I
    move-object/from16 v0, p0

    iget v0, v0, mExpectedAdapterCount:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v4, v0, :cond_10e

    .line 959
    :try_start_9d
    invoke-virtual/range {p0 .. p0}, getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, getId()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_a8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9d .. :try_end_a8} :catch_104

    move-result-object v24

    .line 963
    .local v24, "resName":Ljava/lang/String;
    :goto_a9
    new-instance v27, Ljava/lang/IllegalStateException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, mExpectedAdapterCount:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", found: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Pager id: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Pager class: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Problematic adapter: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 960
    .end local v24    # "resName":Ljava/lang/String;
    :catch_104
    move-exception v11

    .line 961
    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p0 .. p0}, getId()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "resName":Ljava/lang/String;
    goto :goto_a9

    .line 972
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v24    # "resName":Ljava/lang/String;
    :cond_10e
    const/4 v8, -0x1

    .line 973
    .local v8, "curIndex":I
    const/4 v9, 0x0

    .line 974
    .local v9, "curItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    const/4 v8, 0x0

    :goto_111
    move-object/from16 v0, p0

    iget-object v0, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_153

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 976
    .local v17, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_251

    .line 977
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_153

    move-object/from16 v9, v17

    .line 982
    .end local v17    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_153
    if-nez v9, :cond_165

    if-lez v4, :cond_165

    .line 983
    move-object/from16 v0, p0

    iget v0, v0, mCurItem:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v8}, addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v9

    .line 989
    :cond_165
    if-eqz v9, :cond_1e9

    .line 990
    const/4 v13, 0x0

    .line 991
    .local v13, "extraWidthLeft":F
    add-int/lit8 v18, v8, -0x1

    .line 992
    .local v18, "itemIndex":I
    if-ltz v18, :cond_255

    move-object/from16 v0, p0

    iget-object v0, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    .line 993
    .restart local v17    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_17e
    invoke-direct/range {p0 .. p0}, getPaddedWidth()I

    move-result v7

    .line 994
    .local v7, "clientWidth":I
    if-gtz v7, :cond_259

    const/16 v19, 0x0

    .line 996
    .local v19, "leftWidthNeeded":F
    :goto_186
    move-object/from16 v0, p0

    iget v0, v0, mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v23, v27, -0x1

    .local v23, "pos":I
    :goto_18e
    if-ltz v23, :cond_19c

    .line 997
    cmpl-float v27, v13, v19

    if-ltz v27, :cond_2f7

    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_2f7

    .line 998
    if-nez v17, :cond_273

    .line 1024
    :cond_19c
    iget v14, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 1025
    .local v14, "extraWidthRight":F
    add-int/lit8 v18, v8, 0x1

    .line 1026
    const/high16 v27, 0x40000000    # 2.0f

    cmpg-float v27, v14, v27

    if-gez v27, :cond_1e2

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_355

    move-object/from16 v0, p0

    iget-object v0, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    .line 1028
    :goto_1c8
    if-gtz v7, :cond_359

    const/16 v25, 0x0

    .line 1030
    .local v25, "rightWidthNeeded":F
    :goto_1cc
    move-object/from16 v0, p0

    iget v0, v0, mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v23, v27, 0x1

    :goto_1d4
    move/from16 v0, v23

    if-ge v0, v4, :cond_1e2

    .line 1031
    cmpl-float v27, v14, v25

    if-ltz v27, :cond_3fb

    move/from16 v0, v23

    if-le v0, v12, :cond_3fb

    .line 1032
    if-nez v17, :cond_36d

    .line 1057
    .end local v25    # "rightWidthNeeded":F
    :cond_1e2
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v9, v8, v1}, calculatePageOffsets(Lcom/android/internal/widget/ViewPager$ItemInfo;ILcom/android/internal/widget/ViewPager$ItemInfo;)V

    .line 1061
    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v17    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v18    # "itemIndex":I
    .end local v19    # "leftWidthNeeded":F
    .end local v23    # "pos":I
    :cond_1e9
    const-string v27, "ViewPager"

    const-string v28, "Current page list:"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1f2
    move-object/from16 v0, p0

    iget-object v0, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_473

    .line 1063
    const-string v28, "ViewPager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "#"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, ": page "

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    add-int/lit8 v16, v16, 0x1

    goto :goto_1f2

    .line 974
    .end local v16    # "i":I
    .restart local v17    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_251
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_111

    .line 992
    .end local v17    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v13    # "extraWidthLeft":F
    .restart local v18    # "itemIndex":I
    :cond_255
    const/16 v17, 0x0

    goto/16 :goto_17e

    .line 994
    .restart local v7    # "clientWidth":I
    .restart local v17    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_259
    const/high16 v27, 0x40000000    # 2.0f

    iget v0, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    invoke-virtual/range {p0 .. p0}, getPaddingLeft()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v7

    move/from16 v29, v0

    div-float v28, v28, v29

    add-float v19, v27, v28

    goto/16 :goto_186

    .line 1001
    .restart local v19    # "leftWidthNeeded":F
    .restart local v23    # "pos":I
    :cond_273
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_2f0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    move/from16 v27, v0

    if-nez v27, :cond_2f0

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1005
    const-string v27, "ViewPager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "populate() - destroyItem() with pos: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " view: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    add-int/lit8 v18, v18, -0x1

    .line 1009
    add-int/lit8 v8, v8, -0x1

    .line 1010
    if-ltz v18, :cond_2f4

    move-object/from16 v0, p0

    iget-object v0, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    .line 996
    :cond_2f0
    :goto_2f0
    add-int/lit8 v23, v23, -0x1

    goto/16 :goto_18e

    .line 1010
    :cond_2f4
    const/16 v17, 0x0

    goto :goto_2f0

    .line 1012
    :cond_2f7
    if-eqz v17, :cond_327

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_327

    .line 1013
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v13, v13, v27

    .line 1014
    add-int/lit8 v18, v18, -0x1

    .line 1015
    if-ltz v18, :cond_324

    move-object/from16 v0, p0

    iget-object v0, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_323
    goto :goto_2f0

    :cond_324
    const/16 v17, 0x0

    goto :goto_323

    .line 1017
    :cond_327
    add-int/lit8 v27, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v17

    .line 1018
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v13, v13, v27

    .line 1019
    add-int/lit8 v8, v8, 0x1

    .line 1020
    if-ltz v18, :cond_352

    move-object/from16 v0, p0

    iget-object v0, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_351
    goto :goto_2f0

    :cond_352
    const/16 v17, 0x0

    goto :goto_351

    .line 1027
    .restart local v14    # "extraWidthRight":F
    :cond_355
    const/16 v17, 0x0

    goto/16 :goto_1c8

    .line 1028
    :cond_359
    invoke-virtual/range {p0 .. p0}, getPaddingRight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v7

    move/from16 v28, v0

    div-float v27, v27, v28

    const/high16 v28, 0x40000000    # 2.0f

    add-float v25, v27, v28

    goto/16 :goto_1cc

    .line 1035
    .restart local v25    # "rightWidthNeeded":F
    :cond_36d
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_3f4

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    move/from16 v27, v0

    if-nez v27, :cond_3f4

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1039
    const-string v27, "ViewPager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "populate() - destroyItem() with pos: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " view: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_3f8

    move-object/from16 v0, p0

    iget-object v0, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    .line 1030
    :cond_3f4
    :goto_3f4
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1d4

    .line 1042
    :cond_3f8
    const/16 v17, 0x0

    goto :goto_3f4

    .line 1044
    :cond_3fb
    if-eqz v17, :cond_439

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_439

    .line 1045
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v14, v14, v27

    .line 1046
    add-int/lit8 v18, v18, 0x1

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_436

    move-object/from16 v0, p0

    iget-object v0, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_435
    goto :goto_3f4

    :cond_436
    const/16 v17, 0x0

    goto :goto_435

    .line 1049
    :cond_439
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v17

    .line 1050
    add-int/lit8 v18, v18, 0x1

    .line 1051
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v14, v14, v27

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_470

    move-object/from16 v0, p0

    iget-object v0, v0, mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_46f
    goto :goto_3f4

    :cond_470
    const/16 v17, 0x0

    goto :goto_46f

    .line 1067
    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v17    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v18    # "itemIndex":I
    .end local v19    # "leftWidthNeeded":F
    .end local v23    # "pos":I
    .end local v25    # "rightWidthNeeded":F
    .restart local v16    # "i":I
    :cond_473
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, mCurItem:I

    move/from16 v29, v0

    if-eqz v9, :cond_4f2

    iget-object v0, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v27, v0

    :goto_485
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1073
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v6

    .line 1074
    .local v6, "childCount":I
    const/16 v16, 0x0

    :goto_4a3
    move/from16 v0, v16

    if-ge v0, v6, :cond_4f5

    .line 1075
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1076
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1077
    .local v20, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    move/from16 v0, v16

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/widget/ViewPager$LayoutParams;->childIndex:I

    .line 1078
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v27, v0

    if-nez v27, :cond_4ef

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-nez v27, :cond_4ef

    .line 1080
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v17

    .line 1081
    .restart local v17    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v17, :cond_4ef

    .line 1082
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 1083
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/widget/ViewPager$LayoutParams;->position:I

    .line 1074
    .end local v17    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_4ef
    add-int/lit8 v16, v16, 0x1

    goto :goto_4a3

    .line 1067
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v20    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_4f2
    const/16 v27, 0x0

    goto :goto_485

    .line 1087
    .restart local v6    # "childCount":I
    :cond_4f5
    invoke-direct/range {p0 .. p0}, sortChildDrawingOrder()V

    .line 1089
    invoke-virtual/range {p0 .. p0}, hasFocus()Z

    move-result v27

    if-eqz v27, :cond_3c

    .line 1090
    invoke-virtual/range {p0 .. p0}, findFocus()Landroid/view/View;

    move-result-object v10

    .line 1091
    .local v10, "currentFocused":Landroid/view/View;
    if-eqz v10, :cond_555

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, infoForAnyChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v17

    .line 1092
    .restart local v17    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_50a
    if-eqz v17, :cond_51e

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_3c

    .line 1093
    :cond_51e
    const/16 v16, 0x0

    :goto_520
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v27

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_3c

    .line 1094
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1095
    .restart local v5    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v17

    .line 1096
    if-eqz v17, :cond_552

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_552

    .line 1097
    invoke-virtual {v5, v15}, Landroid/view/View;->requestFocus(I)Z

    move-result v27

    if-nez v27, :cond_3c

    .line 1093
    :cond_552
    add-int/lit8 v16, v16, 0x1

    goto :goto_520

    .line 1091
    .end local v5    # "child":Landroid/view/View;
    .end local v17    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_555
    const/16 v17, 0x0

    goto :goto_50a
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1325
    iget-boolean v0, p0, mInLayout:Z

    if-eqz v0, :cond_8

    .line 1326
    invoke-virtual {p0, p1}, removeViewInLayout(Landroid/view/View;)V

    .line 1330
    :goto_7
    return-void

    .line 1328
    :cond_8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_7
.end method

.method public setAdapter(Lcom/android/internal/widget/PagerAdapter;)V
    .registers 12
    .param p1, "adapter"    # Lcom/android/internal/widget/PagerAdapter;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 415
    iget-object v4, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v4, :cond_42

    .line 416
    iget-object v4, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v5, p0, mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 417
    iget-object v4, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v4, p0}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 418
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    iget-object v4, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_30

    .line 419
    iget-object v4, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 420
    .local v1, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v4, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v5, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget-object v6, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 422
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_30
    iget-object v4, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v4, p0}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 423
    iget-object v4, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 424
    invoke-direct {p0}, removeNonDecorViews()V

    .line 425
    iput v7, p0, mCurItem:I

    .line 426
    invoke-virtual {p0, v7, v7}, scrollTo(II)V

    .line 429
    .end local v0    # "i":I
    :cond_42
    iget-object v2, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 430
    .local v2, "oldAdapter":Lcom/android/internal/widget/PagerAdapter;
    iput-object p1, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 431
    iput v7, p0, mExpectedAdapterCount:I

    .line 433
    iget-object v4, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v4, :cond_85

    .line 434
    iget-object v4, p0, mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    if-nez v4, :cond_57

    .line 435
    new-instance v4, Lcom/android/internal/widget/ViewPager$PagerObserver;

    invoke-direct {v4, p0, v8}, Lcom/android/internal/widget/ViewPager$PagerObserver;-><init>(Lcom/android/internal/widget/ViewPager;Lcom/android/internal/widget/ViewPager$1;)V

    iput-object v4, p0, mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    .line 437
    :cond_57
    iget-object v4, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v5, p0, mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 438
    iput-boolean v7, p0, mPopulatePending:Z

    .line 439
    iget-boolean v3, p0, mFirstLayout:Z

    .line 440
    .local v3, "wasFirstLayout":Z
    iput-boolean v9, p0, mFirstLayout:Z

    .line 441
    iget-object v4, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v4

    iput v4, p0, mExpectedAdapterCount:I

    .line 442
    iget v4, p0, mRestoredCurItem:I

    if-ltz v4, :cond_91

    .line 443
    iget-object v4, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v5, p0, mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v6, p0, mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 444
    iget v4, p0, mRestoredCurItem:I

    invoke-virtual {p0, v4, v7, v9}, setCurrentItemInternal(IZZ)Z

    .line 445
    const/4 v4, -0x1

    iput v4, p0, mRestoredCurItem:I

    .line 446
    iput-object v8, p0, mRestoredAdapterState:Landroid/os/Parcelable;

    .line 447
    iput-object v8, p0, mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 455
    .end local v3    # "wasFirstLayout":Z
    :cond_85
    :goto_85
    iget-object v4, p0, mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    if-eqz v4, :cond_90

    if-eq v2, p1, :cond_90

    .line 456
    iget-object v4, p0, mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    invoke-interface {v4, v2, p1}, Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Lcom/android/internal/widget/PagerAdapter;Lcom/android/internal/widget/PagerAdapter;)V

    .line 458
    :cond_90
    return-void

    .line 448
    .restart local v3    # "wasFirstLayout":Z
    :cond_91
    if-nez v3, :cond_97

    .line 449
    invoke-virtual {p0}, populate()V

    goto :goto_85

    .line 451
    :cond_97
    invoke-virtual {p0}, requestLayout()V

    goto :goto_85
.end method

.method public setCurrentItem(I)V
    .registers 4
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x0

    .line 496
    iput-boolean v1, p0, mPopulatePending:Z

    .line 497
    iget-boolean v0, p0, mFirstLayout:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p0, p1, v0, v1}, setCurrentItemInternal(IZZ)Z

    .line 498
    return-void

    :cond_c
    move v0, v1

    .line 497
    goto :goto_8
.end method

.method public setCurrentItem(IZ)V
    .registers 4
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v0, 0x0

    .line 507
    iput-boolean v0, p0, mPopulatePending:Z

    .line 508
    invoke-virtual {p0, p1, p2, v0}, setCurrentItemInternal(IZZ)Z

    .line 509
    return-void
.end method

.method setCurrentItemInternal(IZZ)Z
    .registers 5
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 516
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, setCurrentItemInternal(IZZI)Z

    move-result v0

    return v0
.end method

.method setCurrentItemInternal(IZZI)Z
    .registers 10
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 520
    iget-object v3, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v3, :cond_e

    iget-object v3, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v3

    if-gtz v3, :cond_12

    .line 521
    :cond_e
    invoke-direct {p0, v0}, setScrollingCacheEnabled(Z)V

    .line 558
    :goto_11
    return v0

    .line 525
    :cond_12
    iget-object v3, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v0, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 526
    if-nez p3, :cond_30

    iget v3, p0, mCurItem:I

    if-ne v3, p1, :cond_30

    iget-object v3, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_30

    .line 527
    invoke-direct {p0, v0}, setScrollingCacheEnabled(Z)V

    goto :goto_11

    .line 531
    :cond_30
    iget v2, p0, mOffscreenPageLimit:I

    .line 532
    .local v2, "pageLimit":I
    iget v3, p0, mCurItem:I

    add-int/2addr v3, v2

    if-gt p1, v3, :cond_3c

    iget v3, p0, mCurItem:I

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_52

    .line 536
    :cond_3c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3d
    iget-object v3, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_52

    .line 537
    iget-object v3, p0, mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    iput-boolean v4, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 541
    .end local v1    # "i":I
    :cond_52
    iget v3, p0, mCurItem:I

    if-eq v3, p1, :cond_57

    move v0, v4

    .line 542
    .local v0, "dispatchSelected":Z
    :cond_57
    iget-boolean v3, p0, mFirstLayout:Z

    if-eqz v3, :cond_78

    .line 545
    iput p1, p0, mCurItem:I

    .line 546
    if-eqz v0, :cond_68

    iget-object v3, p0, mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_68

    .line 547
    iget-object v3, p0, mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 549
    :cond_68
    if-eqz v0, :cond_73

    iget-object v3, p0, mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_73

    .line 550
    iget-object v3, p0, mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 552
    :cond_73
    invoke-virtual {p0}, requestLayout()V

    :goto_76
    move v0, v4

    .line 558
    goto :goto_11

    .line 554
    :cond_78
    invoke-virtual {p0, p1}, populate(I)V

    .line 555
    invoke-direct {p0, p1, p2, p4, v0}, scrollToItem(IZIZ)V

    goto :goto_76
.end method

.method setInternalPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)Lcom/android/internal/widget/ViewPager$OnPageChangeListener;
    .registers 3
    .param p1, "listener"    # Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .prologue
    .line 655
    iget-object v0, p0, mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 656
    .local v0, "oldListener":Lcom/android/internal/widget/ViewPager$OnPageChangeListener;
    iput-object p1, p0, mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 657
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .registers 6
    .param p1, "limit"    # I

    .prologue
    const/4 v3, 0x1

    .line 689
    if-ge p1, v3, :cond_26

    .line 690
    const-string v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const/4 p1, 0x1

    .line 694
    :cond_26
    iget v0, p0, mOffscreenPageLimit:I

    if-eq p1, v0, :cond_2f

    .line 695
    iput p1, p0, mOffscreenPageLimit:I

    .line 696
    invoke-virtual {p0}, populate()V

    .line 698
    :cond_2f
    return-void
.end method

.method setOnAdapterChangeListener(Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    .prologue
    .line 481
    iput-object p1, p0, mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    .line 482
    return-void
.end method

.method public setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .prologue
    .line 613
    iput-object p1, p0, mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 614
    return-void
.end method

.method public setPageMargin(I)V
    .registers 4
    .param p1, "marginPixels"    # I

    .prologue
    .line 709
    iget v0, p0, mPageMargin:I

    .line 710
    .local v0, "oldMargin":I
    iput p1, p0, mPageMargin:I

    .line 712
    invoke-virtual {p0}, getWidth()I

    move-result v1

    .line 713
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, recomputeScrollPosition(IIII)V

    .line 715
    invoke-virtual {p0}, requestLayout()V

    .line 716
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 745
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 746
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 733
    iput-object p1, p0, mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 734
    if-eqz p1, :cond_7

    invoke-virtual {p0}, refreshDrawableState()V

    .line 735
    :cond_7
    if-nez p1, :cond_11

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p0, v0}, setWillNotDraw(Z)V

    .line 736
    invoke-virtual {p0}, invalidate()V

    .line 737
    return-void

    .line 735
    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setPageTransformer(ZLcom/android/internal/widget/ViewPager$PageTransformer;)V
    .registers 8
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Lcom/android/internal/widget/ViewPager$PageTransformer;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 629
    if-eqz p2, :cond_1f

    move v0, v2

    .line 630
    .local v0, "hasTransformer":Z
    :goto_5
    iget-object v4, p0, mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    if-eqz v4, :cond_21

    move v4, v2

    :goto_a
    if-eq v0, v4, :cond_23

    move v1, v2

    .line 631
    .local v1, "needsPopulate":Z
    :goto_d
    iput-object p2, p0, mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    .line 632
    invoke-virtual {p0, v0}, setChildrenDrawingOrderEnabled(Z)V

    .line 633
    if-eqz v0, :cond_25

    .line 634
    if-eqz p1, :cond_17

    const/4 v2, 0x2

    :cond_17
    iput v2, p0, mDrawingOrder:I

    .line 638
    :goto_19
    if-eqz v1, :cond_1e

    invoke-virtual {p0}, populate()V

    .line 639
    :cond_1e
    return-void

    .end local v0    # "hasTransformer":Z
    .end local v1    # "needsPopulate":Z
    :cond_1f
    move v0, v3

    .line 629
    goto :goto_5

    .restart local v0    # "hasTransformer":Z
    :cond_21
    move v4, v3

    .line 630
    goto :goto_a

    :cond_23
    move v1, v3

    goto :goto_d

    .line 636
    .restart local v1    # "needsPopulate":Z
    :cond_25
    iput v3, p0, mDrawingOrder:I

    goto :goto_19
.end method

.method smoothScrollTo(II)V
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 779
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, smoothScrollTo(III)V

    .line 780
    return-void
.end method

.method smoothScrollTo(III)V
    .registers 19
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 790
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    if-nez v1, :cond_b

    .line 792
    const/4 v1, 0x0

    invoke-direct {p0, v1}, setScrollingCacheEnabled(Z)V

    .line 828
    :goto_a
    return-void

    .line 795
    :cond_b
    invoke-virtual {p0}, getScrollX()I

    move-result v2

    .line 796
    .local v2, "sx":I
    invoke-virtual {p0}, getScrollY()I

    move-result v3

    .line 797
    .local v3, "sy":I
    sub-int v4, p1, v2

    .line 798
    .local v4, "dx":I
    sub-int v5, p2, v3

    .line 799
    .local v5, "dy":I
    if-nez v4, :cond_27

    if-nez v5, :cond_27

    .line 800
    const/4 v1, 0x0

    invoke-direct {p0, v1}, completeScroll(Z)V

    .line 801
    invoke-virtual {p0}, populate()V

    .line 802
    const/4 v1, 0x0

    invoke-direct {p0, v1}, setScrollState(I)V

    goto :goto_a

    .line 806
    :cond_27
    const/4 v1, 0x1

    invoke-direct {p0, v1}, setScrollingCacheEnabled(Z)V

    .line 807
    const/4 v1, 0x2

    invoke-direct {p0, v1}, setScrollState(I)V

    .line 809
    invoke-direct {p0}, getPaddedWidth()I

    move-result v12

    .line 810
    .local v12, "width":I
    div-int/lit8 v9, v12, 0x2

    .line 811
    .local v9, "halfWidth":I
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    int-to-float v14, v12

    div-float/2addr v13, v14

    invoke-static {v1, v13}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 812
    .local v8, "distanceRatio":F
    int-to-float v1, v9

    int-to-float v13, v9

    invoke-virtual {p0, v8}, distanceInfluenceForSnapDuration(F)F

    move-result v14

    mul-float/2addr v13, v14

    add-float v7, v1, v13

    .line 815
    .local v7, "distance":F
    const/4 v6, 0x0

    .line 816
    .local v6, "duration":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 817
    if-lez p3, :cond_76

    .line 818
    const/high16 v1, 0x447a0000    # 1000.0f

    move/from16 v0, p3

    int-to-float v13, v0

    div-float v13, v7, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    .line 824
    :goto_67
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 826
    iget-object v1, p0, mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 827
    invoke-virtual {p0}, postInvalidateOnAnimation()V

    goto :goto_a

    .line 820
    :cond_76
    int-to-float v1, v12

    iget-object v13, p0, mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v14, p0, mCurItem:I

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v13

    mul-float v11, v1, v13

    .line 821
    .local v11, "pageWidth":F
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v13, p0, mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v11

    div-float v10, v1, v13

    .line 822
    .local v10, "pageDelta":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v10

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v1, v13

    float-to-int v6, v1

    goto :goto_67
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 750
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
