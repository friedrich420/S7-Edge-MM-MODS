.class public abstract Landroid/view/ViewGroup;
.super Landroid/view/View;
.source "ViewGroup.java"

# interfaces
.implements Landroid/view/ViewManager;
.implements Landroid/view/ViewParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewGroup$ViewLocationHolder;,
        Landroid/view/ViewGroup$ChildListForAccessibility;,
        Landroid/view/ViewGroup$HoverTarget;,
        Landroid/view/ViewGroup$TouchTarget;,
        Landroid/view/ViewGroup$MarginLayoutParams;,
        Landroid/view/ViewGroup$LayoutParams;,
        Landroid/view/ViewGroup$OnHierarchyChangeListener;
    }
.end annotation


# static fields
.field private static final ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final ARRAY_INITIAL_CAPACITY:I = 0xc

.field private static final CHILD_LEFT_INDEX:I = 0x0

.field private static final CHILD_TOP_INDEX:I = 0x1

.field protected static final CLIP_TO_PADDING_MASK:I = 0x22

.field private static final DBG:Z = false

.field public static DEBUG_DRAW:Z = false

.field private static final DESCENDANT_FOCUSABILITY_FLAGS:[I

.field private static final FLAG_ADD_STATES_FROM_CHILDREN:I = 0x2000

.field private static final FLAG_ALWAYS_DRAWN_WITH_CACHE:I = 0x4000

.field private static final FLAG_ANIMATION_CACHE:I = 0x40

.field static final FLAG_ANIMATION_DONE:I = 0x10

.field private static final FLAG_CHILDREN_DRAWN_WITH_CACHE:I = 0x8000

.field static final FLAG_CLEAR_TRANSFORMATION:I = 0x100

.field static final FLAG_CLIP_CHILDREN:I = 0x1

.field private static final FLAG_CLIP_TO_PADDING:I = 0x2

.field protected static final FLAG_DISALLOW_INTERCEPT:I = 0x80000

.field static final FLAG_INVALIDATE_REQUIRED:I = 0x4

.field static final FLAG_IS_TRANSITION_GROUP:I = 0x1000000

.field static final FLAG_IS_TRANSITION_GROUP_SET:I = 0x2000000

.field private static final FLAG_LAYOUT_MODE_WAS_EXPLICITLY_SET:I = 0x800000

.field private static final FLAG_MASK_FOCUSABILITY:I = 0x60000

.field private static final FLAG_NOTIFY_ANIMATION_LISTENER:I = 0x200

.field private static final FLAG_NOTIFY_CHILDREN_ON_DRAWABLE_STATE_CHANGE:I = 0x10000

.field static final FLAG_OPTIMIZE_INVALIDATE:I = 0x80

.field private static final FLAG_PADDING_NOT_NULL:I = 0x20

.field private static final FLAG_PREVENT_DISPATCH_ATTACHED_TO_WINDOW:I = 0x400000

.field private static final FLAG_RUN_ANIMATION:I = 0x8

.field private static final FLAG_SPLIT_MOTION_EVENTS:I = 0x200000

.field private static final FLAG_START_ACTION_MODE_FOR_CHILD_IS_NOT_TYPED:I = 0x10000000

.field private static final FLAG_START_ACTION_MODE_FOR_CHILD_IS_TYPED:I = 0x8000000

.field protected static final FLAG_SUPPORT_STATIC_TRANSFORMATIONS:I = 0x800

.field static final FLAG_TOUCHSCREEN_BLOCKS_FOCUS:I = 0x4000000

.field protected static final FLAG_USE_CHILD_DRAWING_ORDER:I = 0x400

.field public static final FOCUS_AFTER_DESCENDANTS:I = 0x40000

.field public static final FOCUS_BEFORE_DESCENDANTS:I = 0x20000

.field public static final FOCUS_BLOCK_DESCENDANTS:I = 0x60000

.field public static final LAYOUT_MODE_CLIP_BOUNDS:I = 0x0

.field public static LAYOUT_MODE_DEFAULT:I = 0x0

.field public static final LAYOUT_MODE_OPTICAL_BOUNDS:I = 0x1

.field private static final LAYOUT_MODE_UNDEFINED:I = -0x1

.field public static final PERSISTENT_ALL_CACHES:I = 0x3

.field public static final PERSISTENT_ANIMATION_CACHE:I = 0x1

.field public static final PERSISTENT_NO_CACHE:I = 0x0

.field public static final PERSISTENT_SCROLLING_CACHE:I = 0x2

.field private static final SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

.field private static final TAG:Ljava/lang/String; = "ViewGroup"

.field private static sDebugLines:[F

.field private static sDebugPaint:Landroid/graphics/Paint;


# instance fields
.field private final isElasticEnabled:Z

.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field mCachePaint:Landroid/graphics/Paint;

.field private mChildAcceptsDrag:Z

.field private mChildCountWithTransientState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mChildTransformation:Landroid/view/animation/Transformation;

.field private mChildren:[Landroid/view/View;

.field private mChildrenCount:I

.field private mCurrentDrag:Landroid/view/DragEvent;

.field private mCurrentDragView:Landroid/view/View;

.field protected mDisappearingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDragNotifiedChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

.field private mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

.field private mFocused:Landroid/view/View;

.field protected mGroupFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CLIP_CHILDREN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "CLIP_TO_PADDING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "PADDING_NOT_NULL"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private mHoveredSelf:Z

.field mInvalidateRegion:Landroid/graphics/RectF;

.field mInvalidationTransformation:Landroid/view/animation/Transformation;

.field private mLastTouchDownIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownTime:J
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private mLayoutCalledWhileSuppressed:Z

.field private mLayoutMode:I

.field private mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

.field private mLocalPoint:Landroid/graphics/PointF;

.field private mNestedScrollAxes:I

.field protected mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field protected mPersistentDrawingCache:I

.field private mPreSortedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mSuppressLayout:Z

.field private mTempPoint:[F

.field private mTransientIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransition:Landroid/animation/LayoutTransition;

.field private mTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTwHorizontalScrollbarRectRelativePosX:I

.field private mTwVerticalScrollbarRectRelativePosY:I

.field private mTwX:F

.field private mTwY:F

.field private mVisibilityChangingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 129
    sput-boolean v1, DEBUG_DRAW:Z

    .line 347
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, DESCENDANT_FOCUSABILITY_FLAGS:[I

    .line 453
    sput v1, LAYOUT_MODE_DEFAULT:I

    .line 528
    new-instance v0, Landroid/view/ViewGroup$1;

    invoke-direct {v0}, Landroid/view/ViewGroup$1;-><init>()V

    sput-object v0, SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    return-void

    .line 347
    nop

    :array_16
    .array-data 4
        0x20000
        0x40000
        0x60000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 577
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 578
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 581
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 582
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 585
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 586
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 589
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 194
    iput v2, p0, mLastTouchDownIndex:I

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, isElasticEnabled:Z

    .line 237
    iput v2, p0, mLayoutMode:I

    .line 474
    iput-boolean v1, p0, mSuppressLayout:Z

    .line 479
    iput-boolean v1, p0, mLayoutCalledWhileSuppressed:Z

    .line 507
    iput v1, p0, mChildCountWithTransientState:I

    .line 518
    iput-object v3, p0, mTransientIndices:Ljava/util/List;

    .line 519
    iput-object v3, p0, mTransientViews:Ljava/util/List;

    .line 2221
    iput v1, p0, mTwHorizontalScrollbarRectRelativePosX:I

    .line 2222
    iput v1, p0, mTwVerticalScrollbarRectRelativePosY:I

    .line 6552
    new-instance v0, Landroid/view/ViewGroup$4;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$4;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 590
    invoke-direct {p0}, initViewGroup()V

    .line 591
    invoke-direct {p0, p1, p2, p3, p4}, initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 592
    return-void
.end method

.method static synthetic access$000(Landroid/view/ViewGroup;)V
    .registers 1
    .param p0, "x0"    # Landroid/view/ViewGroup;

    .prologue
    .line 124
    invoke-direct {p0}, notifyAnimationListener()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/ViewGroup;)Landroid/view/animation/LayoutAnimationController;
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewGroup;

    .prologue
    .line 124
    iget-object v0, p0, mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/ViewGroup;)Landroid/view/animation/Animation$AnimationListener;
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewGroup;

    .prologue
    .line 124
    iget-object v0, p0, mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/ViewGroup;)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewGroup;

    .prologue
    .line 124
    iget-boolean v0, p0, mLayoutCalledWhileSuppressed:Z

    return v0
.end method

.method static synthetic access$302(Landroid/view/ViewGroup;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewGroup;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, mLayoutCalledWhileSuppressed:Z

    return p1
.end method

.method static synthetic access$400(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewGroup;

    .prologue
    .line 124
    iget-object v0, p0, mTransitioningViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V
    .registers 10
    .param p0, "x0"    # Landroid/graphics/Canvas;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Landroid/graphics/Paint;

    .prologue
    .line 124
    invoke-static/range {p0 .. p9}, fillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V

    return-void
.end method

.method private addDisappearingView(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 6445
    iget-object v0, p0, mDisappearingChildren:Ljava/util/ArrayList;

    .line 6447
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v0, :cond_b

    .line 6448
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDisappearingChildren:Ljava/util/ArrayList;

    .line 6451
    .restart local v0    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6452
    return-void
.end method

.method private addInArray(Landroid/view/View;I)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 4730
    iget-object v0, p0, mChildren:[Landroid/view/View;

    .line 4731
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, mChildrenCount:I

    .line 4732
    .local v1, "count":I
    array-length v2, v0

    .line 4733
    .local v2, "size":I
    if-ne p2, v1, :cond_20

    .line 4734
    if-ne v2, v1, :cond_17

    .line 4735
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, mChildren:[Landroid/view/View;

    .line 4736
    iget-object v3, p0, mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4737
    iget-object v0, p0, mChildren:[Landroid/view/View;

    .line 4739
    :cond_17
    iget v3, p0, mChildrenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, mChildrenCount:I

    aput-object p1, v0, v3

    .line 4757
    :cond_1f
    :goto_1f
    return-void

    .line 4740
    :cond_20
    if-ge p2, v1, :cond_55

    .line 4741
    if-ne v2, v1, :cond_4d

    .line 4742
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, mChildren:[Landroid/view/View;

    .line 4743
    iget-object v3, p0, mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4744
    iget-object v3, p0, mChildren:[Landroid/view/View;

    add-int/lit8 v4, p2, 0x1

    sub-int v5, v1, p2

    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4745
    iget-object v0, p0, mChildren:[Landroid/view/View;

    .line 4749
    :goto_3a
    aput-object p1, v0, p2

    .line 4750
    iget v3, p0, mChildrenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, mChildrenCount:I

    .line 4751
    iget v3, p0, mLastTouchDownIndex:I

    if-lt v3, p2, :cond_1f

    .line 4752
    iget v3, p0, mLastTouchDownIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, mLastTouchDownIndex:I

    goto :goto_1f

    .line 4747
    :cond_4d
    add-int/lit8 v3, p2, 0x1

    sub-int v4, v1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3a

    .line 4755
    :cond_55
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerIdBits"    # I

    .prologue
    .line 2668
    invoke-static {p1, p2}, Landroid/view/ViewGroup$TouchTarget;->obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v0

    .line 2669
    .local v0, "target":Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, p0, mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    iput-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2670
    iput-object v0, p0, mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2671
    return-object v0
.end method

.method private addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .registers 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "preventRequestLayout"    # Z

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x400000

    .line 4647
    iget-object v5, p0, mTransition:Landroid/animation/LayoutTransition;

    if-eqz v5, :cond_d

    .line 4650
    iget-object v5, p0, mTransition:Landroid/animation/LayoutTransition;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 4653
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_1b

    .line 4654
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4658
    :cond_1b
    iget-object v5, p0, mTransition:Landroid/animation/LayoutTransition;

    if-eqz v5, :cond_24

    .line 4659
    iget-object v5, p0, mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v5, p0, p1}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 4662
    :cond_24
    invoke-virtual {p0, p3}, checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 4663
    invoke-virtual {p0, p3}, generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 4666
    :cond_2e
    if-eqz p4, :cond_c0

    .line 4667
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 4672
    :goto_32
    if-gez p2, :cond_36

    .line 4673
    iget p2, p0, mChildrenCount:I

    .line 4676
    :cond_36
    invoke-direct {p0, p1, p2}, addInArray(Landroid/view/View;I)V

    .line 4679
    if-eqz p4, :cond_c5

    .line 4680
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 4685
    :goto_3e
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 4686
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 4689
    :cond_4b
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 4690
    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_6b

    iget v5, p0, mGroupFlags:I

    and-int/2addr v5, v7

    if-nez v5, :cond_6b

    .line 4691
    iget-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 4692
    .local v2, "lastKeepOn":Z
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 4693
    iget-object v5, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, p0, mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    invoke-virtual {p1, v5, v6}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 4694
    iget-boolean v5, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v5, :cond_69

    .line 4695
    invoke-virtual {p0, v8}, needGlobalAttributesUpdate(Z)V

    .line 4697
    :cond_69
    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 4700
    .end local v2    # "lastKeepOn":Z
    :cond_6b
    invoke-virtual {p1}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v5

    if-eqz v5, :cond_74

    .line 4701
    invoke-virtual {p1}, Landroid/view/View;->resetRtlProperties()V

    .line 4704
    :cond_74
    invoke-virtual {p0, p1}, dispatchViewAdded(Landroid/view/View;)V

    .line 4706
    iget v5, p1, Landroid/view/View;->mViewFlags:I

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_83

    .line 4707
    iget v5, p0, mGroupFlags:I

    const/high16 v6, 0x10000

    or-int/2addr v5, v6

    iput v5, p0, mGroupFlags:I

    .line 4710
    :cond_83
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 4711
    invoke-virtual {p0, p1, v8}, childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 4714
    :cond_8c
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_97

    .line 4715
    invoke-virtual {p0}, notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 4718
    :cond_97
    iget-object v5, p0, mTransientIndices:Ljava/util/List;

    if-eqz v5, :cond_c9

    .line 4719
    iget-object v5, p0, mTransientIndices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 4720
    .local v4, "transientCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a2
    if-ge v1, v4, :cond_c9

    .line 4721
    iget-object v5, p0, mTransientIndices:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4722
    .local v3, "oldIndex":I
    if-gt p2, v3, :cond_bd

    .line 4723
    iget-object v5, p0, mTransientIndices:Ljava/util/List;

    add-int/lit8 v6, v3, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4720
    :cond_bd
    add-int/lit8 v1, v1, 0x1

    goto :goto_a2

    .line 4669
    .end local v0    # "ai":Landroid/view/View$AttachInfo;
    .end local v1    # "i":I
    .end local v3    # "oldIndex":I
    .end local v4    # "transientCount":I
    :cond_c0
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_32

    .line 4682
    :cond_c5
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto/16 :goto_3e

    .line 4727
    .restart local v0    # "ai":Landroid/view/View$AttachInfo;
    :cond_c9
    return-void
.end method

.method private bindLayoutAnimation(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4819
    iget-object v1, p0, mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v1, p1}, Landroid/view/animation/LayoutAnimationController;->getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 4820
    .local v0, "a":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 4821
    return-void
.end method

.method private static canViewReceivePointerEvents(Landroid/view/View;)Z
    .registers 4
    .param p0, "child"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 2731
    if-nez p0, :cond_b

    .line 2732
    const-string v1, "ViewGroup"

    const-string v2, "There is not child on canViewReceivePointerEvents"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    :cond_a
    :goto_a
    return v0

    :cond_b
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0xc

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_a

    :cond_17
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 2628
    iget-object v2, p0, mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v2, :cond_3a

    .line 2629
    const/4 v8, 0x0

    .line 2630
    .local v8, "syntheticEvent":Z
    if-nez p1, :cond_1a

    .line 2631
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2632
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2634
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2635
    const/4 v8, 0x1

    .line 2638
    .end local v0    # "now":J
    :cond_1a
    iget-object v9, p0, mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v9, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_1c
    if-eqz v9, :cond_2e

    .line 2639
    iget-object v2, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    invoke-static {v2}, resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2640
    const/4 v2, 0x1

    iget-object v3, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    iget v4, v9, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    invoke-direct {p0, p1, v2, v3, v4}, dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    .line 2638
    iget-object v9, v9, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1c

    .line 2642
    :cond_2e
    invoke-direct {p0}, clearTouchTargets()V

    .line 2644
    if-eqz v8, :cond_3a

    iget-boolean v2, p1, Landroid/view/MotionEvent;->mRecycled:Z

    if-nez v2, :cond_3a

    .line 2645
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 2648
    .end local v8    # "syntheticEvent":Z
    .end local v9    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_3a
    return-void
.end method

.method private cancelHoverTarget(Landroid/view/View;)V
    .registers 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 2000
    const/4 v10, 0x0

    .line 2001
    .local v10, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    iget-object v11, p0, mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 2002
    .local v11, "target":Landroid/view/ViewGroup$HoverTarget;
    :goto_4
    if-eqz v11, :cond_2b

    .line 2003
    iget-object v9, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 2004
    .local v9, "next":Landroid/view/ViewGroup$HoverTarget;
    iget-object v2, v11, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    if-ne v2, p1, :cond_2f

    .line 2005
    if-nez v10, :cond_2c

    .line 2006
    iput-object v9, p0, mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 2010
    :goto_10
    invoke-virtual {v11}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 2012
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2013
    .local v0, "now":J
    const/16 v4, 0xa

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 2015
    .local v8, "event":Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2016
    invoke-virtual {p1, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2017
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 2023
    .end local v0    # "now":J
    .end local v8    # "event":Landroid/view/MotionEvent;
    .end local v9    # "next":Landroid/view/ViewGroup$HoverTarget;
    :cond_2b
    return-void

    .line 2008
    .restart local v9    # "next":Landroid/view/ViewGroup$HoverTarget;
    :cond_2c
    iput-object v9, v10, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_10

    .line 2020
    :cond_2f
    move-object v10, v11

    .line 2021
    move-object v11, v9

    .line 2022
    goto :goto_4
.end method

.method private cancelTouchTarget(Landroid/view/View;)V
    .registers 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 2701
    const/4 v10, 0x0

    .line 2702
    .local v10, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    iget-object v11, p0, mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2703
    .local v11, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_4
    if-eqz v11, :cond_2a

    .line 2704
    iget-object v9, v11, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2705
    .local v9, "next":Landroid/view/ViewGroup$TouchTarget;
    iget-object v2, v11, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v2, p1, :cond_2e

    .line 2706
    if-nez v10, :cond_2b

    .line 2707
    iput-object v9, p0, mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2711
    :goto_10
    invoke-virtual {v11}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2713
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2714
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 2716
    .local v8, "event":Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2717
    invoke-virtual {p1, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2718
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 2724
    .end local v0    # "now":J
    .end local v8    # "event":Landroid/view/MotionEvent;
    .end local v9    # "next":Landroid/view/ViewGroup$TouchTarget;
    :cond_2a
    return-void

    .line 2709
    .restart local v9    # "next":Landroid/view/ViewGroup$TouchTarget;
    :cond_2b
    iput-object v9, v10, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_10

    .line 2721
    :cond_2e
    move-object v10, v11

    .line 2722
    move-object v11, v9

    .line 2723
    goto :goto_4
.end method

.method private clearCachedLayoutMode()V
    .registers 2

    .prologue
    .line 4579
    const/high16 v0, 0x800000

    invoke-direct {p0, v0}, hasBooleanFlag(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 4580
    const/4 v0, -0x1

    iput v0, p0, mLayoutMode:I

    .line 4582
    :cond_b
    return-void
.end method

.method private clearTouchTargets()V
    .registers 4

    .prologue
    .line 2613
    iget-object v1, p0, mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2614
    .local v1, "target":Landroid/view/ViewGroup$TouchTarget;
    if-eqz v1, :cond_f

    .line 2616
    :cond_4
    iget-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2617
    .local v0, "next":Landroid/view/ViewGroup$TouchTarget;
    invoke-virtual {v1}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2618
    move-object v1, v0

    .line 2619
    if-nez v1, :cond_4

    .line 2620
    const/4 v2, 0x0

    iput-object v2, p0, mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2622
    .end local v0    # "next":Landroid/view/ViewGroup$TouchTarget;
    :cond_f
    return-void
.end method

.method private debugDraw()Z
    .registers 2

    .prologue
    .line 595
    sget-boolean v0, DEBUG_DRAW:Z

    if-nez v0, :cond_e

    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_10

    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private dipsToPixels(I)I
    .registers 5
    .param p1, "dips"    # I

    .prologue
    .line 3544
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 3545
    .local v0, "scale":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 2164
    iget v4, p0, mScrollX:I

    iget v5, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v1, v4

    .line 2165
    .local v1, "offsetX":F
    iget v4, p0, mScrollY:I

    iget v5, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    int-to-float v2, v4

    .line 2168
    .local v2, "offsetY":F
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_28

    .line 2169
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 2170
    .local v3, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {v3, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2171
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 2172
    invoke-virtual {p2, v3}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2173
    .local v0, "handled":Z
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 2179
    .end local v3    # "transformedEvent":Landroid/view/MotionEvent;
    :goto_27
    return v0

    .line 2175
    .end local v0    # "handled":Z
    :cond_28
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2176
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2177
    .restart local v0    # "handled":Z
    neg-float v4, v1

    neg-float v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_27
.end method

.method private dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "cancel"    # Z
    .param p3, "child"    # Landroid/view/View;
    .param p4, "desiredPointerIdBits"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2788
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 2789
    .local v4, "oldAction":I
    if-nez p2, :cond_b

    if-ne v4, v7, :cond_3b

    .line 2790
    :cond_b
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2791
    if-nez p3, :cond_27

    .line 2792
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2794
    .local v0, "handled":Z
    invoke-static {}, Landroid/app/im/InjectionManager;->getInstance()Landroid/app/im/InjectionManager;

    move-result-object v7

    if-eqz v7, :cond_23

    .line 2795
    invoke-static {}, Landroid/app/im/InjectionManager;->getInstance()Landroid/app/im/InjectionManager;

    move-result-object v7

    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v9, v10, p1}, Landroid/app/im/InjectionManager;->dispatchScaleEvent(Ljava/lang/Object;ILandroid/view/ScaleGestureDetector;Landroid/view/MotionEvent;)Z

    .line 2806
    :cond_23
    :goto_23
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2881
    .end local v0    # "handled":Z
    :cond_26
    :goto_26
    return v0

    .line 2799
    :cond_27
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2801
    .restart local v0    # "handled":Z
    invoke-static {}, Landroid/app/im/InjectionManager;->getInstance()Landroid/app/im/InjectionManager;

    move-result-object v7

    if-eqz v7, :cond_23

    .line 2802
    invoke-static {}, Landroid/app/im/InjectionManager;->getInstance()Landroid/app/im/InjectionManager;

    move-result-object v7

    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v9, v10, p1}, Landroid/app/im/InjectionManager;->dispatchScaleEvent(Ljava/lang/Object;ILandroid/view/ScaleGestureDetector;Landroid/view/MotionEvent;)Z

    goto :goto_23

    .line 2811
    .end local v0    # "handled":Z
    :cond_3b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v5

    .line 2812
    .local v5, "oldPointerIdBits":I
    and-int v1, v5, p4

    .line 2816
    .local v1, "newPointerIdBits":I
    if-nez v1, :cond_45

    .line 2817
    const/4 v0, 0x0

    goto :goto_26

    .line 2825
    :cond_45
    if-ne v1, v5, :cond_ab

    .line 2826
    if-eqz p3, :cond_4f

    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v7

    if-eqz v7, :cond_8d

    .line 2827
    :cond_4f
    if-nez p3, :cond_65

    .line 2828
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2830
    .restart local v0    # "handled":Z
    invoke-static {}, Landroid/app/im/InjectionManager;->getInstance()Landroid/app/im/InjectionManager;

    move-result-object v7

    if-eqz v7, :cond_26

    .line 2831
    invoke-static {}, Landroid/app/im/InjectionManager;->getInstance()Landroid/app/im/InjectionManager;

    move-result-object v7

    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v9, v10, p1}, Landroid/app/im/InjectionManager;->dispatchScaleEvent(Ljava/lang/Object;ILandroid/view/ScaleGestureDetector;Landroid/view/MotionEvent;)Z

    goto :goto_26

    .line 2835
    .end local v0    # "handled":Z
    :cond_65
    iget v7, p0, mScrollX:I

    iget v8, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    int-to-float v2, v7

    .line 2836
    .local v2, "offsetX":F
    iget v7, p0, mScrollY:I

    iget v8, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v3, v7

    .line 2837
    .local v3, "offsetY":F
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2839
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2841
    .restart local v0    # "handled":Z
    invoke-static {}, Landroid/app/im/InjectionManager;->getInstance()Landroid/app/im/InjectionManager;

    move-result-object v7

    if-eqz v7, :cond_87

    .line 2842
    invoke-static {}, Landroid/app/im/InjectionManager;->getInstance()Landroid/app/im/InjectionManager;

    move-result-object v7

    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v9, v10, p1}, Landroid/app/im/InjectionManager;->dispatchScaleEvent(Ljava/lang/Object;ILandroid/view/ScaleGestureDetector;Landroid/view/MotionEvent;)Z

    .line 2846
    :cond_87
    neg-float v7, v2

    neg-float v8, v3

    invoke-virtual {p1, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_26

    .line 2850
    .end local v0    # "handled":Z
    .end local v2    # "offsetX":F
    .end local v3    # "offsetY":F
    :cond_8d
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 2856
    .local v6, "transformedEvent":Landroid/view/MotionEvent;
    :goto_91
    if-nez p3, :cond_b0

    .line 2857
    invoke-super {p0, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2859
    .restart local v0    # "handled":Z
    invoke-static {}, Landroid/app/im/InjectionManager;->getInstance()Landroid/app/im/InjectionManager;

    move-result-object v7

    if-eqz v7, :cond_a6

    .line 2860
    invoke-static {}, Landroid/app/im/InjectionManager;->getInstance()Landroid/app/im/InjectionManager;

    move-result-object v7

    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v9, v10, p1}, Landroid/app/im/InjectionManager;->dispatchScaleEvent(Ljava/lang/Object;ILandroid/view/ScaleGestureDetector;Landroid/view/MotionEvent;)Z

    .line 2880
    :cond_a6
    :goto_a6
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_26

    .line 2852
    .end local v0    # "handled":Z
    .end local v6    # "transformedEvent":Landroid/view/MotionEvent;
    :cond_ab
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v6

    .restart local v6    # "transformedEvent":Landroid/view/MotionEvent;
    goto :goto_91

    .line 2864
    :cond_b0
    iget v7, p0, mScrollX:I

    iget v8, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    int-to-float v2, v7

    .line 2865
    .restart local v2    # "offsetX":F
    iget v7, p0, mScrollY:I

    iget v8, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v3, v7

    .line 2866
    .restart local v3    # "offsetY":F
    invoke-virtual {v6, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2867
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v7

    if-nez v7, :cond_cc

    .line 2868
    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 2871
    :cond_cc
    invoke-virtual {p3, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2873
    .restart local v0    # "handled":Z
    invoke-static {}, Landroid/app/im/InjectionManager;->getInstance()Landroid/app/im/InjectionManager;

    move-result-object v7

    if-eqz v7, :cond_a6

    .line 2874
    invoke-static {}, Landroid/app/im/InjectionManager;->getInstance()Landroid/app/im/InjectionManager;

    move-result-object v7

    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v9, v10, p1}, Landroid/app/im/InjectionManager;->dispatchScaleEvent(Ljava/lang/Object;ILandroid/view/ScaleGestureDetector;Landroid/view/MotionEvent;)Z

    goto :goto_a6
.end method

.method private static drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V
    .registers 13
    .param p0, "c"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "lw"    # I

    .prologue
    .line 3539
    add-int v4, p2, p4

    invoke-static {p5}, sign(I)I

    move-result v0

    mul-int/2addr v0, p6

    add-int v5, p3, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 3540
    invoke-static {p4}, sign(I)I

    move-result v0

    mul-int/2addr v0, p6

    add-int v4, p2, v0

    add-int v5, p3, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 3541
    return-void
.end method

.method private static drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .registers 9
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I

    .prologue
    .line 8130
    sget-object v0, sDebugLines:[F

    if-nez v0, :cond_a

    .line 8132
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, sDebugLines:[F

    .line 8135
    :cond_a
    sget-object v0, sDebugLines:[F

    const/4 v1, 0x0

    int-to-float v2, p2

    aput v2, v0, v1

    .line 8136
    sget-object v0, sDebugLines:[F

    const/4 v1, 0x1

    int-to-float v2, p3

    aput v2, v0, v1

    .line 8137
    sget-object v0, sDebugLines:[F

    const/4 v1, 0x2

    int-to-float v2, p4

    aput v2, v0, v1

    .line 8138
    sget-object v0, sDebugLines:[F

    const/4 v1, 0x3

    int-to-float v2, p3

    aput v2, v0, v1

    .line 8140
    sget-object v0, sDebugLines:[F

    const/4 v1, 0x4

    int-to-float v2, p4

    aput v2, v0, v1

    .line 8141
    sget-object v0, sDebugLines:[F

    const/4 v1, 0x5

    int-to-float v2, p3

    aput v2, v0, v1

    .line 8142
    sget-object v0, sDebugLines:[F

    const/4 v1, 0x6

    int-to-float v2, p4

    aput v2, v0, v1

    .line 8143
    sget-object v0, sDebugLines:[F

    const/4 v1, 0x7

    int-to-float v2, p5

    aput v2, v0, v1

    .line 8145
    sget-object v0, sDebugLines:[F

    const/16 v1, 0x8

    int-to-float v2, p4

    aput v2, v0, v1

    .line 8146
    sget-object v0, sDebugLines:[F

    const/16 v1, 0x9

    int-to-float v2, p5

    aput v2, v0, v1

    .line 8147
    sget-object v0, sDebugLines:[F

    const/16 v1, 0xa

    int-to-float v2, p2

    aput v2, v0, v1

    .line 8148
    sget-object v0, sDebugLines:[F

    const/16 v1, 0xb

    int-to-float v2, p5

    aput v2, v0, v1

    .line 8150
    sget-object v0, sDebugLines:[F

    const/16 v1, 0xc

    int-to-float v2, p2

    aput v2, v0, v1

    .line 8151
    sget-object v0, sDebugLines:[F

    const/16 v1, 0xd

    int-to-float v2, p5

    aput v2, v0, v1

    .line 8152
    sget-object v0, sDebugLines:[F

    const/16 v1, 0xe

    int-to-float v2, p2

    aput v2, v0, v1

    .line 8153
    sget-object v0, sDebugLines:[F

    const/16 v1, 0xf

    int-to-float v2, p3

    aput v2, v0, v1

    .line 8155
    sget-object v0, sDebugLines:[F

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 8156
    return-void
.end method

.method private static drawRectCorners(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;II)V
    .registers 15
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "lineLength"    # I
    .param p7, "lineWidth"    # I

    .prologue
    .line 3550
    move-object v0, p0

    move-object v1, p5

    move v2, p1

    move v3, p2

    move v4, p6

    move v5, p6

    move v6, p7

    invoke-static/range {v0 .. v6}, drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 3551
    neg-int v5, p6

    move-object v0, p0

    move-object v1, p5

    move v2, p1

    move v3, p4

    move v4, p6

    move v6, p7

    invoke-static/range {v0 .. v6}, drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 3552
    neg-int v4, p6

    move-object v0, p0

    move-object v1, p5

    move v2, p3

    move v3, p2

    move v5, p6

    move v6, p7

    invoke-static/range {v0 .. v6}, drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 3553
    neg-int v4, p6

    neg-int v5, p6

    move-object v0, p0

    move-object v1, p5

    move v2, p3

    move v3, p4

    move v6, p7

    invoke-static/range {v0 .. v6}, drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 3554
    return-void
.end method

.method private exitHoverTargets()V
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 1989
    iget-boolean v2, p0, mHoveredSelf:Z

    if-nez v2, :cond_9

    iget-object v2, p0, mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v2, :cond_21

    .line 1990
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1991
    .local v0, "now":J
    const/16 v4, 0xa

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1993
    .local v8, "event":Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1994
    invoke-virtual {p0, v8}, dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1995
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1997
    .end local v0    # "now":J
    .end local v8    # "event":Landroid/view/MotionEvent;
    :cond_21
    return-void
.end method

.method private static fillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V
    .registers 22
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "x2"    # I
    .param p2, "y2"    # I
    .param p3, "x3"    # I
    .param p4, "y3"    # I
    .param p5, "dx1"    # I
    .param p6, "dy1"    # I
    .param p7, "dx2"    # I
    .param p8, "dy2"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 3559
    sub-int v2, p1, p5

    .line 3560
    .local v2, "x1":I
    sub-int v3, p2, p6

    .line 3562
    .local v3, "y1":I
    add-int v4, p3, p7

    .line 3563
    .local v4, "x4":I
    add-int v11, p4, p8

    .local v11, "y4":I
    move-object v0, p0

    move-object/from16 v1, p9

    move v5, p2

    .line 3565
    invoke-static/range {v0 .. v5}, fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    move-object v5, p0

    move-object/from16 v6, p9

    move v7, v2

    move v8, p2

    move v9, p1

    move/from16 v10, p4

    .line 3566
    invoke-static/range {v5 .. v10}, fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    move-object v5, p0

    move-object/from16 v6, p9

    move v7, p3

    move v8, p2

    move v9, v4

    move/from16 v10, p4

    .line 3567
    invoke-static/range {v5 .. v10}, fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    move-object v5, p0

    move-object/from16 v6, p9

    move v7, v2

    move/from16 v8, p4

    move v9, v4

    move v10, v11

    .line 3568
    invoke-static/range {v5 .. v10}, fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 3569
    return-void
.end method

.method private static fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .registers 13
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I

    .prologue
    .line 3523
    if-eq p2, p4, :cond_17

    if-eq p3, p5, :cond_17

    .line 3524
    if-le p2, p4, :cond_9

    .line 3525
    move v6, p2

    .local v6, "tmp":I
    move p2, p4

    move p4, v6

    .line 3527
    .end local v6    # "tmp":I
    :cond_9
    if-le p3, p5, :cond_e

    .line 3528
    move v6, p3

    .restart local v6    # "tmp":I
    move p3, p5

    move p5, v6

    .line 3530
    .end local v6    # "tmp":I
    :cond_e
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3532
    :cond_17
    return-void
.end method

.method private findChildWithAccessibilityFocus()Landroid/view/View;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 2562
    invoke-virtual {p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 2563
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v2, :cond_9

    move-object v0, v3

    .line 2581
    :cond_8
    :goto_8
    return-object v0

    .line 2567
    :cond_9
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v0

    .line 2568
    .local v0, "current":Landroid/view/View;
    if-nez v0, :cond_11

    move-object v0, v3

    .line 2569
    goto :goto_8

    .line 2572
    :cond_11
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2573
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_15
    instance-of v4, v1, Landroid/view/View;

    if-eqz v4, :cond_23

    .line 2574
    if-eq v1, p0, :cond_8

    move-object v0, v1

    .line 2577
    check-cast v0, Landroid/view/View;

    .line 2578
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_15

    :cond_23
    move-object v0, v3

    .line 2581
    goto :goto_8
.end method

.method public static getChildMeasureSpec(III)I
    .registers 12
    .param p0, "spec"    # I
    .param p1, "padding"    # I
    .param p2, "childDimension"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 6351
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 6352
    .local v3, "specMode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 6354
    .local v4, "specSize":I
    sub-int v6, v4, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 6356
    .local v2, "size":I
    const/4 v1, 0x0

    .line 6357
    .local v1, "resultSize":I
    const/4 v0, 0x0

    .line 6359
    .local v0, "resultMode":I
    sparse-switch v3, :sswitch_data_5c

    .line 6415
    :cond_16
    :goto_16
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

    .line 6362
    :sswitch_1b
    if-ltz p2, :cond_21

    .line 6363
    move v1, p2

    .line 6364
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_16

    .line 6365
    :cond_21
    if-ne p2, v8, :cond_27

    .line 6367
    move v1, v2

    .line 6368
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_16

    .line 6369
    :cond_27
    if-ne p2, v7, :cond_16

    .line 6372
    move v1, v2

    .line 6373
    const/high16 v0, -0x80000000

    goto :goto_16

    .line 6379
    :sswitch_2d
    if-ltz p2, :cond_33

    .line 6381
    move v1, p2

    .line 6382
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_16

    .line 6383
    :cond_33
    if-ne p2, v8, :cond_39

    .line 6386
    move v1, v2

    .line 6387
    const/high16 v0, -0x80000000

    goto :goto_16

    .line 6388
    :cond_39
    if-ne p2, v7, :cond_16

    .line 6391
    move v1, v2

    .line 6392
    const/high16 v0, -0x80000000

    goto :goto_16

    .line 6398
    :sswitch_3f
    if-ltz p2, :cond_45

    .line 6400
    move v1, p2

    .line 6401
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_16

    .line 6402
    :cond_45
    if-ne p2, v8, :cond_50

    .line 6405
    sget-boolean v6, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    if-eqz v6, :cond_4e

    move v1, v5

    .line 6406
    :goto_4c
    const/4 v0, 0x0

    goto :goto_16

    :cond_4e
    move v1, v2

    .line 6405
    goto :goto_4c

    .line 6407
    :cond_50
    if-ne p2, v7, :cond_16

    .line 6410
    sget-boolean v6, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    if-eqz v6, :cond_59

    move v1, v5

    .line 6411
    :goto_57
    const/4 v0, 0x0

    goto :goto_16

    :cond_59
    move v1, v2

    .line 6410
    goto :goto_57

    .line 6359
    nop

    :sswitch_data_5c
    .sparse-switch
        -0x80000000 -> :sswitch_2d
        0x0 -> :sswitch_3f
        0x40000000 -> :sswitch_1b
    .end sparse-switch
.end method

.method private static getDebugPaint()Landroid/graphics/Paint;
    .registers 2

    .prologue
    .line 8122
    sget-object v0, sDebugPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_11

    .line 8123
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, sDebugPaint:Landroid/graphics/Paint;

    .line 8124
    sget-object v0, sDebugPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8126
    :cond_11
    sget-object v0, sDebugPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private getLocalPoint()Landroid/graphics/PointF;
    .registers 2

    .prologue
    .line 1387
    iget-object v0, p0, mLocalPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, mLocalPoint:Landroid/graphics/PointF;

    .line 1388
    :cond_b
    iget-object v0, p0, mLocalPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method private getTempPoint()[F
    .registers 2

    .prologue
    .line 2740
    iget-object v0, p0, mTempPoint:[F

    if-nez v0, :cond_9

    .line 2741
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, mTempPoint:[F

    .line 2743
    :cond_9
    iget-object v0, p0, mTempPoint:[F

    return-object v0
.end method

.method private getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2655
    iget-object v0, p0, mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v0, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_2
    if-eqz v0, :cond_c

    .line 2656
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v1, p1, :cond_9

    .line 2660
    .end local v0    # "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_8
    return-object v0

    .line 2655
    .restart local v0    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_9
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_2

    .line 2660
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private hasBooleanFlag(I)Z
    .registers 3
    .param p1, "flag"    # I

    .prologue
    .line 6028
    iget v0, p0, mGroupFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private hasChildWithZ()Z
    .registers 4

    .prologue
    .line 3813
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, mChildrenCount:I

    if-ge v0, v1, :cond_17

    .line 3814
    iget-object v1, p0, mChildren:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getZ()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    .line 3816
    :goto_13
    return v1

    .line 3813
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3816
    :cond_17
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 623
    sget-object v6, Lcom/android/internal/R$styleable;->ViewGroup:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 626
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 627
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v0, :cond_96

    .line 628
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 629
    .local v3, "attr":I
    packed-switch v3, :pswitch_data_9a

    .line 627
    :cond_17
    :goto_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 631
    :pswitch_1a
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, setClipChildren(Z)V

    goto :goto_17

    .line 634
    :pswitch_22
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, setClipToPadding(Z)V

    goto :goto_17

    .line 637
    :pswitch_2a
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, setAnimationCacheEnabled(Z)V

    goto :goto_17

    .line 640
    :pswitch_32
    const/4 v6, 0x2

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, setPersistentDrawingCache(I)V

    goto :goto_17

    .line 643
    :pswitch_3b
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, setAddStatesFromChildren(Z)V

    goto :goto_17

    .line 646
    :pswitch_43
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, setAlwaysDrawnWithCacheEnabled(Z)V

    goto :goto_17

    .line 649
    :pswitch_4b
    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 650
    .local v5, "id":I
    if-lez v5, :cond_17

    .line 651
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v6

    invoke-virtual {p0, v6}, setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_17

    .line 655
    .end local v5    # "id":I
    :pswitch_5b
    sget-object v6, DESCENDANT_FOCUSABILITY_FLAGS:[I

    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aget v6, v6, v7

    invoke-virtual {p0, v6}, setDescendantFocusability(I)V

    goto :goto_17

    .line 658
    :pswitch_67
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, setMotionEventSplittingEnabled(Z)V

    goto :goto_17

    .line 661
    :pswitch_6f
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 662
    .local v2, "animateLayoutChanges":Z
    if-eqz v2, :cond_17

    .line 663
    new-instance v6, Landroid/animation/LayoutTransition;

    invoke-direct {v6}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v6}, setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_17

    .line 667
    .end local v2    # "animateLayoutChanges":Z
    :pswitch_7e
    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, setLayoutMode(I)V

    goto :goto_17

    .line 670
    :pswitch_86
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, setTransitionGroup(Z)V

    goto :goto_17

    .line 673
    :pswitch_8e
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, setTouchscreenBlocksFocus(Z)V

    goto :goto_17

    .line 678
    .end local v3    # "attr":I
    :cond_96
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 679
    return-void

    .line 629
    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_22
        :pswitch_4b
        :pswitch_2a
        :pswitch_32
        :pswitch_43
        :pswitch_3b
        :pswitch_5b
        :pswitch_67
        :pswitch_6f
        :pswitch_7e
        :pswitch_86
        :pswitch_8e
    .end packed-switch
.end method

.method private initViewGroup()V
    .registers 3

    .prologue
    const/16 v1, 0x80

    .line 600
    invoke-direct {p0}, debugDraw()Z

    move-result v0

    if-nez v0, :cond_b

    .line 601
    invoke-virtual {p0, v1, v1}, setFlags(II)V

    .line 603
    :cond_b
    iget v0, p0, mGroupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, mGroupFlags:I

    .line 604
    iget v0, p0, mGroupFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, mGroupFlags:I

    .line 605
    iget v0, p0, mGroupFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, mGroupFlags:I

    .line 606
    iget v0, p0, mGroupFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, mGroupFlags:I

    .line 607
    iget v0, p0, mGroupFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, mGroupFlags:I

    .line 609
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3c

    .line 610
    iget v0, p0, mGroupFlags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, mGroupFlags:I

    .line 613
    :cond_3c
    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, setDescendantFocusability(I)V

    .line 615
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, mChildren:[Landroid/view/View;

    .line 616
    const/4 v0, 0x0

    iput v0, p0, mChildrenCount:I

    .line 618
    const/4 v0, 0x2

    iput v0, p0, mPersistentDrawingCache:I

    .line 619
    return-void
.end method

.method private notifyAnimationListener()V
    .registers 3

    .prologue
    .line 3855
    iget v1, p0, mGroupFlags:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, mGroupFlags:I

    .line 3856
    iget v1, p0, mGroupFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, mGroupFlags:I

    .line 3858
    iget-object v1, p0, mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_18

    .line 3859
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    .line 3864
    .local v0, "end":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, post(Ljava/lang/Runnable;)Z

    .line 3867
    .end local v0    # "end":Ljava/lang/Runnable;
    :cond_18
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, invalidate(Z)V

    .line 3868
    return-void
.end method

.method private static obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 2
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2097
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-nez v0, :cond_7

    .line 2100
    .end local p0    # "event":Landroid/view/MotionEvent;
    :goto_6
    return-object p0

    .restart local p0    # "event":Landroid/view/MotionEvent;
    :cond_7
    invoke-static {p0}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    goto :goto_6
.end method

.method private recreateChildDisplayList(Landroid/view/View;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 3903
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, -0x80000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    :goto_9
    iput-boolean v0, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 3904
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 3905
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    .line 3906
    iput-boolean v1, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 3907
    return-void

    :cond_19
    move v0, v1

    .line 3903
    goto :goto_9
.end method

.method private removeFromArray(I)V
    .registers 7
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 4761
    iget-object v0, p0, mChildren:[Landroid/view/View;

    .line 4762
    .local v0, "children":[Landroid/view/View;
    iget-object v2, p0, mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_11

    iget-object v2, p0, mTransitioningViews:Ljava/util/ArrayList;

    aget-object v3, v0, p1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 4763
    :cond_11
    aget-object v2, v0, p1

    if-eqz v2, :cond_19

    .line 4764
    aget-object v2, v0, p1

    iput-object v4, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4767
    :cond_19
    iget v1, p0, mChildrenCount:I

    .line 4768
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_33

    .line 4769
    iget v2, p0, mChildrenCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, mChildrenCount:I

    aput-object v4, v0, v2

    .line 4776
    :goto_27
    iget v2, p0, mLastTouchDownIndex:I

    if-ne v2, p1, :cond_4f

    .line 4777
    const-wide/16 v2, 0x0

    iput-wide v2, p0, mLastTouchDownTime:J

    .line 4778
    const/4 v2, -0x1

    iput v2, p0, mLastTouchDownIndex:I

    .line 4782
    :cond_32
    :goto_32
    return-void

    .line 4770
    :cond_33
    if-ltz p1, :cond_49

    if-ge p1, v1, :cond_49

    .line 4771
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v1, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4772
    iget v2, p0, mChildrenCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, mChildrenCount:I

    aput-object v4, v0, v2

    goto :goto_27

    .line 4774
    :cond_49
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 4779
    :cond_4f
    iget v2, p0, mLastTouchDownIndex:I

    if-le v2, p1, :cond_32

    .line 4780
    iget v2, p0, mLastTouchDownIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, mLastTouchDownIndex:I

    goto :goto_32
.end method

.method private removeFromArray(II)V
    .registers 9
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v5, 0x0

    .line 4786
    iget-object v0, p0, mChildren:[Landroid/view/View;

    .line 4787
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, mChildrenCount:I

    .line 4789
    .local v1, "childrenCount":I
    const/4 v4, 0x0

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4790
    add-int v4, p1, p2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4792
    .local v2, "end":I
    if-ne p1, v2, :cond_13

    .line 4816
    :goto_12
    return-void

    .line 4796
    :cond_13
    if-ne v2, v1, :cond_21

    .line 4797
    move v3, p1

    .local v3, "i":I
    :goto_16
    if-ge v3, v2, :cond_3b

    .line 4798
    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4799
    aput-object v5, v0, v3

    .line 4797
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 4802
    .end local v3    # "i":I
    :cond_21
    move v3, p1

    .restart local v3    # "i":I
    :goto_22
    if-ge v3, v2, :cond_2b

    .line 4803
    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4802
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 4808
    :cond_2b
    sub-int v4, v1, v2

    invoke-static {v0, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4810
    sub-int v4, v2, p1

    sub-int v3, v1, v4

    :goto_34
    if-ge v3, v1, :cond_3b

    .line 4811
    aput-object v5, v0, v3

    .line 4810
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 4815
    :cond_3b
    iget v4, p0, mChildrenCount:I

    sub-int v5, v2, p1

    sub-int/2addr v4, v5

    iput v4, p0, mChildrenCount:I

    goto :goto_12
.end method

.method private removePointersFromTouchTargets(I)V
    .registers 7
    .param p1, "pointerIdBits"    # I

    .prologue
    .line 2678
    const/4 v1, 0x0

    .line 2679
    .local v1, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    iget-object v2, p0, mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2680
    .local v2, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_3
    if-eqz v2, :cond_26

    .line 2681
    iget-object v0, v2, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2682
    .local v0, "next":Landroid/view/ViewGroup$TouchTarget;
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_23

    .line 2683
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    xor-int/lit8 v4, p1, -0x1

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 2684
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    if-nez v3, :cond_23

    .line 2685
    if-nez v1, :cond_20

    .line 2686
    iput-object v0, p0, mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2690
    :goto_1b
    invoke-virtual {v2}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2691
    move-object v2, v0

    .line 2692
    goto :goto_3

    .line 2688
    :cond_20
    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1b

    .line 2695
    :cond_23
    move-object v1, v2

    .line 2696
    move-object v2, v0

    .line 2697
    goto :goto_3

    .line 2698
    .end local v0    # "next":Landroid/view/ViewGroup$TouchTarget;
    :cond_26
    return-void
.end method

.method private removeViewInternal(ILandroid/view/View;)V
    .registers 9
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 4931
    iget-object v4, p0, mTransition:Landroid/animation/LayoutTransition;

    if-eqz v4, :cond_a

    .line 4932
    iget-object v4, p0, mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v4, p0, p2}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 4935
    :cond_a
    const/4 v0, 0x0

    .line 4936
    .local v0, "clearChildFocus":Z
    iget-object v4, p0, mFocused:Landroid/view/View;

    if-ne p2, v4, :cond_14

    .line 4937
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 4938
    const/4 v0, 0x1

    .line 4941
    :cond_14
    invoke-virtual {p2}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 4943
    invoke-direct {p0, p2}, cancelTouchTarget(Landroid/view/View;)V

    .line 4944
    invoke-direct {p0, p2}, cancelHoverTarget(Landroid/view/View;)V

    .line 4946
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-nez v4, :cond_2f

    iget-object v4, p0, mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v4, :cond_80

    iget-object v4, p0, mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 4948
    :cond_2f
    invoke-direct {p0, p2}, addDisappearingView(Landroid/view/View;)V

    .line 4953
    :cond_32
    :goto_32
    invoke-virtual {p2}, Landroid/view/View;->hasTransientState()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 4954
    invoke-virtual {p0, p2, v3}, childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 4957
    :cond_3b
    invoke-virtual {p0, v3}, needGlobalAttributesUpdate(Z)V

    .line 4959
    invoke-direct {p0, p1}, removeFromArray(I)V

    .line 4961
    if-eqz v0, :cond_4f

    .line 4962
    invoke-virtual {p0, p2}, clearChildFocus(Landroid/view/View;)V

    .line 4963
    invoke-virtual {p0}, rootViewRequestFocus()Z

    move-result v4

    if-nez v4, :cond_4f

    .line 4964
    invoke-virtual {p0, p0}, notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 4968
    :cond_4f
    invoke-virtual {p0, p2}, dispatchViewRemoved(Landroid/view/View;)V

    .line 4970
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_5d

    .line 4971
    invoke-virtual {p0}, notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 4974
    :cond_5d
    iget-object v4, p0, mTransientIndices:Ljava/util/List;

    if-nez v4, :cond_88

    .line 4975
    .local v3, "transientCount":I
    :goto_61
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_62
    if-ge v1, v3, :cond_8f

    .line 4976
    iget-object v4, p0, mTransientIndices:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4977
    .local v2, "oldIndex":I
    if-ge p1, v2, :cond_7d

    .line 4978
    iget-object v4, p0, mTransientIndices:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4975
    :cond_7d
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 4949
    .end local v1    # "i":I
    .end local v2    # "oldIndex":I
    .end local v3    # "transientCount":I
    :cond_80
    iget-object v4, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_32

    .line 4950
    invoke-virtual {p2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_32

    .line 4974
    :cond_88
    iget-object v4, p0, mTransientIndices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_61

    .line 4981
    .restart local v1    # "i":I
    .restart local v3    # "transientCount":I
    :cond_8f
    return-void
.end method

.method private removeViewInternal(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4921
    invoke-virtual {p0, p1}, indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 4922
    .local v0, "index":I
    if-ltz v0, :cond_b

    .line 4923
    invoke-direct {p0, v0, p1}, removeViewInternal(ILandroid/view/View;)V

    .line 4924
    const/4 v1, 0x1

    .line 4926
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private removeViewsInternal(II)V
    .registers 12
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v7, 0x0

    .line 5023
    iget-object v4, p0, mFocused:Landroid/view/View;

    .line 5024
    .local v4, "focused":Landroid/view/View;
    iget-object v8, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v8, :cond_52

    const/4 v2, 0x1

    .line 5025
    .local v2, "detach":Z
    :goto_8
    const/4 v1, 0x0

    .line 5027
    .local v1, "clearChildFocus":Z
    iget-object v0, p0, mChildren:[Landroid/view/View;

    .line 5028
    .local v0, "children":[Landroid/view/View;
    add-int v3, p1, p2

    .line 5030
    .local v3, "end":I
    move v5, p1

    .local v5, "i":I
    :goto_e
    if-ge v5, v3, :cond_5a

    .line 5031
    aget-object v6, v0, v5

    .line 5033
    .local v6, "view":Landroid/view/View;
    iget-object v8, p0, mTransition:Landroid/animation/LayoutTransition;

    if-eqz v8, :cond_1b

    .line 5034
    iget-object v8, p0, mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v8, p0, v6}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5037
    :cond_1b
    if-ne v6, v4, :cond_22

    .line 5038
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 5039
    const/4 v1, 0x1

    .line 5042
    :cond_22
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5044
    invoke-direct {p0, v6}, cancelTouchTarget(Landroid/view/View;)V

    .line 5045
    invoke-direct {p0, v6}, cancelHoverTarget(Landroid/view/View;)V

    .line 5047
    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-nez v8, :cond_3d

    iget-object v8, p0, mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v8, :cond_54

    iget-object v8, p0, mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_54

    .line 5049
    :cond_3d
    invoke-direct {p0, v6}, addDisappearingView(Landroid/view/View;)V

    .line 5054
    :cond_40
    :goto_40
    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    move-result v8

    if-eqz v8, :cond_49

    .line 5055
    invoke-virtual {p0, v6, v7}, childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 5058
    :cond_49
    invoke-virtual {p0, v7}, needGlobalAttributesUpdate(Z)V

    .line 5060
    invoke-virtual {p0, v6}, dispatchViewRemoved(Landroid/view/View;)V

    .line 5030
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .end local v0    # "children":[Landroid/view/View;
    .end local v1    # "clearChildFocus":Z
    .end local v2    # "detach":Z
    .end local v3    # "end":I
    .end local v5    # "i":I
    .end local v6    # "view":Landroid/view/View;
    :cond_52
    move v2, v7

    .line 5024
    goto :goto_8

    .line 5050
    .restart local v0    # "children":[Landroid/view/View;
    .restart local v1    # "clearChildFocus":Z
    .restart local v2    # "detach":Z
    .restart local v3    # "end":I
    .restart local v5    # "i":I
    .restart local v6    # "view":Landroid/view/View;
    :cond_54
    if-eqz v2, :cond_40

    .line 5051
    invoke-virtual {v6}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_40

    .line 5063
    .end local v6    # "view":Landroid/view/View;
    :cond_5a
    invoke-direct {p0, p1, p2}, removeFromArray(II)V

    .line 5065
    if-eqz v1, :cond_6b

    .line 5066
    invoke-virtual {p0, v4}, clearChildFocus(Landroid/view/View;)V

    .line 5067
    invoke-virtual {p0}, rootViewRequestFocus()Z

    move-result v7

    if-nez v7, :cond_6b

    .line 5068
    invoke-virtual {p0, v4}, notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 5071
    :cond_6b
    return-void
.end method

.method private static resetCancelNextUpFlag(Landroid/view/View;)Z
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 2599
    if-nez p0, :cond_4

    .line 2606
    :cond_3
    :goto_3
    return v0

    .line 2602
    :cond_4
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 2603
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2604
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private resetTouchState()V
    .registers 3

    .prologue
    .line 2588
    invoke-direct {p0}, clearTouchTargets()V

    .line 2589
    invoke-static {p0}, resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2590
    iget v0, p0, mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, mGroupFlags:I

    .line 2591
    const/4 v0, 0x0

    iput v0, p0, mNestedScrollAxes:I

    .line 2592
    return-void
.end method

.method private setBooleanFlag(IZ)V
    .registers 5
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    .prologue
    .line 6032
    if-eqz p2, :cond_8

    .line 6033
    iget v0, p0, mGroupFlags:I

    or-int/2addr v0, p1

    iput v0, p0, mGroupFlags:I

    .line 6037
    :goto_7
    return-void

    .line 6035
    :cond_8
    iget v0, p0, mGroupFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, mGroupFlags:I

    goto :goto_7
.end method

.method private setLayoutMode(IZ)V
    .registers 4
    .param p1, "layoutMode"    # I
    .param p2, "explicitly"    # Z

    .prologue
    .line 6075
    iput p1, p0, mLayoutMode:I

    .line 6076
    const/high16 v0, 0x800000

    invoke-direct {p0, v0, p2}, setBooleanFlag(IZ)V

    .line 6077
    return-void
.end method

.method private static sign(I)I
    .registers 2
    .param p0, "x"    # I

    .prologue
    .line 3535
    if-ltz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, -0x1

    goto :goto_3
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
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
    .line 2033
    .local p1, "outChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 2052
    :goto_6
    return-void

    .line 2036
    :cond_7
    const/4 v4, 0x1

    invoke-static {p0, v4}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v1

    .line 2038
    .local v1, "children":Landroid/view/ViewGroup$ChildListForAccessibility;
    :try_start_c
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v2

    .line 2039
    .local v2, "childrenCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v2, :cond_32

    .line 2040
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2041
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_26

    .line 2042
    invoke-virtual {v0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 2043
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2039
    :cond_26
    :goto_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 2045
    :cond_29
    invoke-virtual {v0, p1}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_2d

    goto :goto_26

    .line 2050
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childrenCount":I
    .end local v3    # "i":I
    :catchall_2d
    move-exception v4

    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    throw v4

    .restart local v2    # "childrenCount":I
    .restart local v3    # "i":I
    :cond_32
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    goto :goto_6
.end method

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
    .line 1104
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1106
    .local v4, "focusableCount":I
    invoke-virtual {p0}, getDescendantFocusability()I

    move-result v3

    .line 1108
    .local v3, "descendantFocusability":I
    const/high16 v6, 0x60000

    if-eq v3, v6, :cond_29

    .line 1109
    invoke-virtual {p0}, shouldBlockFocusForTouchscreen()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1110
    or-int/lit8 p3, p3, 0x1

    .line 1113
    :cond_14
    iget v2, p0, mChildrenCount:I

    .line 1114
    .local v2, "count":I
    iget-object v1, p0, mChildren:[Landroid/view/View;

    .line 1116
    .local v1, "children":[Landroid/view/View;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_19
    if-ge v5, v2, :cond_29

    .line 1117
    aget-object v0, v1, v5

    .line 1118
    .local v0, "child":Landroid/view/View;
    iget v6, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_26

    .line 1119
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1116
    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 1128
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "children":[Landroid/view/View;
    .end local v2    # "count":I
    .end local v5    # "i":I
    :cond_29
    const/high16 v6, 0x40000

    if-ne v3, v6, :cond_33

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v4, v6, :cond_42

    :cond_33
    invoke-virtual {p0}, isFocusableInTouchMode()Z

    move-result v6

    if-nez v6, :cond_3f

    invoke-virtual {p0}, shouldBlockFocusForTouchscreen()Z

    move-result v6

    if-nez v6, :cond_42

    .line 1132
    :cond_3f
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1134
    :cond_42
    return-void
.end method

.method public addStatesFromChildren()Z
    .registers 2

    .prologue
    .line 6754
    iget v0, p0, mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 1229
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1231
    iget v2, p0, mChildrenCount:I

    .line 1232
    .local v2, "count":I
    iget-object v1, p0, mChildren:[Landroid/view/View;

    .line 1234
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v2, :cond_18

    .line 1235
    aget-object v0, v1, v3

    .line 1236
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_15

    .line 1237
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1234
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1240
    .end local v0    # "child":Landroid/view/View;
    :cond_18
    return-void
.end method

.method public addTransientView(Landroid/view/View;I)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 4290
    if-gez p2, :cond_3

    .line 4314
    :goto_2
    return-void

    .line 4293
    :cond_3
    iget-object v2, p0, mTransientIndices:Ljava/util/List;

    if-nez v2, :cond_15

    .line 4294
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mTransientIndices:Ljava/util/List;

    .line 4295
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mTransientViews:Ljava/util/List;

    .line 4297
    :cond_15
    iget-object v2, p0, mTransientIndices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 4298
    .local v1, "oldSize":I
    if-lez v1, :cond_4f

    .line 4300
    const/4 v0, 0x0

    .local v0, "insertionIndex":I
    :goto_1e
    if-ge v0, v1, :cond_2e

    .line 4301
    iget-object v2, p0, mTransientIndices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge p2, v2, :cond_4c

    .line 4305
    :cond_2e
    iget-object v2, p0, mTransientIndices:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4306
    iget-object v2, p0, mTransientViews:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4311
    .end local v0    # "insertionIndex":I
    :goto_3c
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4312
    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, p0, mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 4313
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, invalidate(Z)V

    goto :goto_2

    .line 4300
    .restart local v0    # "insertionIndex":I
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 4308
    .end local v0    # "insertionIndex":I
    :cond_4f
    iget-object v2, p0, mTransientIndices:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4309
    iget-object v2, p0, mTransientViews:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c
.end method

.method public addView(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4404
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, addView(Landroid/view/View;I)V

    .line 4405
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 4421
    if-nez p1, :cond_a

    .line 4422
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4424
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4425
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_1e

    .line 4426
    invoke-virtual {p0}, generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4427
    if-nez v0, :cond_1e

    .line 4428
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "generateDefaultLayoutParams() cannot return null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4431
    :cond_1e
    invoke-virtual {p0, p1, p2, v0}, addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4432
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 4445
    invoke-virtual {p0}, generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4446
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4447
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4448
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4449
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 4481
    if-nez p1, :cond_a

    .line 4482
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4488
    :cond_a
    invoke-virtual {p0}, requestLayout()V

    .line 4489
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, invalidate(Z)V

    .line 4490
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 4491
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 4462
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4463
    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 4608
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "preventRequestLayout"    # Z

    .prologue
    .line 4626
    if-nez p1, :cond_a

    .line 4627
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4629
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4630
    invoke-direct {p0, p1, p2, p3, p4}, addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 4631
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 4632
    const/4 v0, 0x1

    return v0
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "index"    # I
    .param p4, "count"    # I

    .prologue
    .line 4835
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 4837
    .local v0, "animationParams":Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_b

    .line 4838
    new-instance v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .end local v0    # "animationParams":Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    .line 4839
    .restart local v0    # "animationParams":Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 4842
    :cond_b
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 4843
    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 4844
    return-void
.end method

.method protected attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/high16 v2, -0x80000000

    .line 5229
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 5231
    if-gez p2, :cond_8

    .line 5232
    iget p2, p0, mChildrenCount:I

    .line 5235
    :cond_8
    invoke-direct {p0, p1, p2}, addInArray(Landroid/view/View;I)V

    .line 5237
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5238
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    const v1, -0x8001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    or-int/2addr v0, v2

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 5241
    iget v0, p0, mPrivateFlags:I

    or-int/2addr v0, v2

    iput v0, p0, mPrivateFlags:I

    .line 5243
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 5244
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 5246
    :cond_2e
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1376
    invoke-virtual {p0, p1}, indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1377
    .local v0, "index":I
    if-ltz v0, :cond_16

    .line 1378
    invoke-direct {p0, v0}, removeFromArray(I)V

    .line 1379
    iget v1, p0, mChildrenCount:I

    invoke-direct {p0, p1, v1}, addInArray(Landroid/view/View;I)V

    .line 1380
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 1381
    invoke-virtual {p0}, requestLayout()V

    .line 1382
    invoke-virtual {p0}, invalidate()V

    .line 1384
    :cond_16
    return-void
.end method

.method buildOrderedChildList()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3828
    iget v1, p0, mChildrenCount:I

    .line 3829
    .local v1, "count":I
    const/4 v7, 0x1

    if-le v1, v7, :cond_b

    invoke-direct {p0}, hasChildWithZ()Z

    move-result v7

    if-nez v7, :cond_d

    :cond_b
    const/4 v7, 0x0

    .line 3851
    :goto_c
    return-object v7

    .line 3831
    :cond_d
    iget-object v7, p0, mPreSortedChildren:Ljava/util/ArrayList;

    if-nez v7, :cond_49

    .line 3832
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, mPreSortedChildren:Ljava/util/ArrayList;

    .line 3837
    :goto_18
    invoke-virtual {p0}, isChildrenDrawingOrderEnabled()Z

    move-result v6

    .line 3838
    .local v6, "useCustomOrder":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    iget v7, p0, mChildrenCount:I

    if-ge v3, v7, :cond_59

    .line 3840
    if-eqz v6, :cond_4f

    iget v7, p0, mChildrenCount:I

    invoke-virtual {p0, v7, v3}, getChildDrawingOrder(II)I

    move-result v0

    .line 3841
    .local v0, "childIndex":I
    :goto_29
    iget-object v7, p0, mChildren:[Landroid/view/View;

    aget-object v5, v7, v0

    .line 3842
    .local v5, "nextChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getZ()F

    move-result v2

    .line 3845
    .local v2, "currentZ":F
    move v4, v3

    .line 3846
    .local v4, "insertIndex":I
    :goto_32
    if-lez v4, :cond_51

    iget-object v7, p0, mPreSortedChildren:Ljava/util/ArrayList;

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getZ()F

    move-result v7

    cmpl-float v7, v7, v2

    if-lez v7, :cond_51

    .line 3847
    add-int/lit8 v4, v4, -0x1

    goto :goto_32

    .line 3834
    .end local v0    # "childIndex":I
    .end local v2    # "currentZ":F
    .end local v3    # "i":I
    .end local v4    # "insertIndex":I
    .end local v5    # "nextChild":Landroid/view/View;
    .end local v6    # "useCustomOrder":Z
    :cond_49
    iget-object v7, p0, mPreSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    goto :goto_18

    .restart local v3    # "i":I
    .restart local v6    # "useCustomOrder":Z
    :cond_4f
    move v0, v3

    .line 3840
    goto :goto_29

    .line 3849
    .restart local v0    # "childIndex":I
    .restart local v2    # "currentZ":F
    .restart local v4    # "insertIndex":I
    .restart local v5    # "nextChild":Landroid/view/View;
    :cond_51
    iget-object v7, p0, mPreSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3838
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 3851
    .end local v0    # "childIndex":I
    .end local v2    # "currentZ":F
    .end local v4    # "insertIndex":I
    .end local v5    # "nextChild":Landroid/view/View;
    :cond_59
    iget-object v7, p0, mPreSortedChildren:Ljava/util/ArrayList;

    goto :goto_c
.end method

.method protected canAnimate()Z
    .registers 2

    .prologue
    .line 5833
    iget-object v0, p0, mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public captureTransitioningViews(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7090
    .local p1, "transitioningViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, getVisibility()I

    move-result v3

    if-eqz v3, :cond_7

    .line 7102
    :cond_6
    :goto_6
    return-void

    .line 7093
    :cond_7
    invoke-virtual {p0}, isTransitionGroup()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 7094
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 7096
    :cond_11
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 7097
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v1, :cond_6

    .line 7098
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7099
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->captureTransitioningViews(Ljava/util/List;)V

    .line 7097
    add-int/lit8 v2, v2, 0x1

    goto :goto_16
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 4510
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6762
    iget v0, p0, mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_9

    .line 6763
    invoke-virtual {p0}, refreshDrawableState()V

    .line 6765
    :cond_9
    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childHasTransientState"    # Z

    .prologue
    .line 938
    invoke-virtual {p0}, hasTransientState()Z

    move-result v2

    .line 939
    .local v2, "oldHasTransientState":Z
    if-eqz p2, :cond_1c

    .line 940
    iget v3, p0, mChildCountWithTransientState:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, mChildCountWithTransientState:I

    .line 945
    :goto_c
    invoke-virtual {p0}, hasTransientState()Z

    move-result v1

    .line 946
    .local v1, "newHasTransientState":Z
    iget-object v3, p0, mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_1b

    if-eq v2, v1, :cond_1b

    .line 948
    :try_start_16
    iget-object v3, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0, v1}, Landroid/view/ViewParent;->childHasTransientStateChanged(Landroid/view/View;Z)V
    :try_end_1b
    .catch Ljava/lang/AbstractMethodError; {:try_start_16 .. :try_end_1b} :catch_23

    .line 954
    :cond_1b
    :goto_1b
    return-void

    .line 942
    .end local v1    # "newHasTransientState":Z
    :cond_1c
    iget v3, p0, mChildCountWithTransientState:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, mChildCountWithTransientState:I

    goto :goto_c

    .line 949
    .restart local v1    # "newHasTransientState":Z
    :catch_23
    move-exception v0

    .line 950
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v3, "ViewGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, mParent:Landroid/view/ViewParent;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not fully implement ViewParent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b
.end method

.method protected cleanupLayoutState(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4641
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 4642
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 978
    const/4 v0, 0x0

    iput-object v0, p0, mFocused:Landroid/view/View;

    .line 979
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_c

    .line 980
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 982
    :cond_c
    return-void
.end method

.method public clearDisappearingChildren()V
    .registers 6

    .prologue
    .line 6424
    iget-object v1, p0, mDisappearingChildren:Ljava/util/ArrayList;

    .line 6425
    .local v1, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v1, :cond_24

    .line 6426
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6427
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_1e

    .line 6428
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 6429
    .local v3, "view":Landroid/view/View;
    iget-object v4, v3, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_18

    .line 6430
    invoke-virtual {v3}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 6432
    :cond_18
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 6427
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 6434
    .end local v3    # "view":Landroid/view/View;
    :cond_1e
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6435
    invoke-virtual {p0}, invalidate()V

    .line 6437
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_24
    return-void
.end method

.method public clearFocus()V
    .registers 3

    .prologue
    .line 992
    iget-object v1, p0, mFocused:Landroid/view/View;

    if-nez v1, :cond_8

    .line 993
    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    .line 999
    :goto_7
    return-void

    .line 995
    :cond_8
    iget-object v0, p0, mFocused:Landroid/view/View;

    .line 996
    .local v0, "focused":Landroid/view/View;
    const/4 v1, 0x0

    iput-object v1, p0, mFocused:Landroid/view/View;

    .line 997
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    goto :goto_7
.end method

.method computeOpticalInsets()Landroid/graphics/Insets;
    .registers 9

    .prologue
    .line 3501
    invoke-virtual {p0}, isLayoutModeOptical()Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 3502
    const/4 v4, 0x0

    .line 3503
    .local v4, "left":I
    const/4 v6, 0x0

    .line 3504
    .local v6, "top":I
    const/4 v5, 0x0

    .line 3505
    .local v5, "right":I
    const/4 v0, 0x0

    .line 3506
    .local v0, "bottom":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    iget v7, p0, mChildrenCount:I

    if-ge v2, v7, :cond_38

    .line 3507
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3508
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_35

    .line 3509
    invoke-virtual {v1}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v3

    .line 3510
    .local v3, "insets":Landroid/graphics/Insets;
    iget v7, v3, Landroid/graphics/Insets;->left:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3511
    iget v7, v3, Landroid/graphics/Insets;->top:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3512
    iget v7, v3, Landroid/graphics/Insets;->right:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3513
    iget v7, v3, Landroid/graphics/Insets;->bottom:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3506
    .end local v3    # "insets":Landroid/graphics/Insets;
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 3516
    .end local v1    # "child":Landroid/view/View;
    :cond_38
    invoke-static {v4, v6, v5, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v7

    .line 3518
    .end local v0    # "bottom":I
    .end local v2    # "i":I
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v6    # "top":I
    :goto_3c
    return-object v7

    :cond_3d
    sget-object v7, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_3c
.end method

.method createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "quality"    # Landroid/graphics/Bitmap$Config;
    .param p2, "backgroundColor"    # I
    .param p3, "skipChildren"    # Z

    .prologue
    .line 3470
    iget v2, p0, mChildrenCount:I

    .line 3471
    .local v2, "count":I
    const/4 v4, 0x0

    .line 3473
    .local v4, "visibilities":[I
    if-eqz p3, :cond_1f

    .line 3474
    new-array v4, v2, [I

    .line 3475
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v2, :cond_1f

    .line 3476
    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3477
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    aput v5, v4, v3

    .line 3478
    aget v5, v4, v3

    if-nez v5, :cond_1c

    .line 3479
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3475
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 3484
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1f
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3486
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_34

    .line 3487
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_26
    if-ge v3, v2, :cond_34

    .line 3488
    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    aget v6, v4, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3487
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 3492
    .end local v3    # "i":I
    :cond_34
    return-object v0
.end method

.method public damageChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 5537
    invoke-virtual {p0, p1}, damageChildDeferred(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 5573
    :cond_6
    :goto_6
    return-void

    .line 5541
    :cond_7
    move-object v3, p0

    .line 5543
    .local v3, "parent":Landroid/view/ViewParent;
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 5544
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_6

    .line 5545
    iget v1, p1, Landroid/view/View;->mLeft:I

    .line 5546
    .local v1, "left":I
    iget v5, p1, Landroid/view/View;->mTop:I

    .line 5547
    .local v5, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-nez v6, :cond_1d

    .line 5548
    invoke-virtual {p1, p2}, Landroid/view/View;->transformRect(Landroid/graphics/Rect;)V

    .line 5552
    :cond_1d
    instance-of v6, v3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_38

    move-object v4, v3

    .line 5553
    check-cast v4, Landroid/view/ViewGroup;

    .line 5554
    .local v4, "parentVG":Landroid/view/ViewGroup;
    iget v6, v4, mLayerType:I

    if-eqz v6, :cond_2f

    .line 5556
    invoke-virtual {v4}, invalidate()V

    .line 5557
    const/4 v3, 0x0

    .line 5571
    .end local v4    # "parentVG":Landroid/view/ViewGroup;
    :goto_2c
    if-nez v3, :cond_1d

    goto :goto_6

    .line 5559
    .restart local v4    # "parentVG":Landroid/view/ViewGroup;
    :cond_2f
    invoke-virtual {v4, v1, v5, p2}, damageChildInParent(IILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v3

    .line 5560
    iget v1, v4, mLeft:I

    .line 5561
    iget v5, v4, mTop:I

    goto :goto_2c

    .line 5566
    .end local v4    # "parentVG":Landroid/view/ViewGroup;
    :cond_38
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 5567
    .local v2, "location":[I
    const/4 v6, 0x0

    aput v1, v2, v6

    .line 5568
    const/4 v6, 0x1

    aput v5, v2, v6

    .line 5569
    invoke-interface {v3, v2, p2}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_2c
.end method

.method public damageChildDeferred(Landroid/view/View;)Z
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 5515
    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5516
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_4
    if-eqz v0, :cond_1c

    .line 5517
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_f

    .line 5518
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    .line 5519
    :cond_f
    instance-of v1, v0, Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_1a

    .line 5520
    check-cast v0, Landroid/view/ViewRootImpl;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 5521
    const/4 v1, 0x1

    .line 5526
    :goto_19
    return v1

    .line 5523
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_1a
    const/4 v0, 0x0

    goto :goto_4

    .line 5526
    :cond_1c
    const/4 v1, 0x0

    goto :goto_19
.end method

.method protected damageChildInParent(IILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 5582
    iget v0, p0, mPrivateFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_f

    iget v0, p0, mPrivateFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_53

    .line 5584
    :cond_f
    iget v0, p0, mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 5585
    iget v0, p0, mGroupFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2d

    .line 5586
    iget v0, p0, mRight:I

    iget v1, p0, mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, mBottom:I

    iget v2, p0, mTop:I

    sub-int/2addr v1, v2

    invoke-virtual {p3, v3, v3, v0, v1}, Landroid/graphics/Rect;->union(IIII)V

    .line 5589
    :cond_2d
    iget v0, p0, mGroupFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_43

    iget v0, p0, mRight:I

    iget v1, p0, mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, mBottom:I

    iget v2, p0, mTop:I

    sub-int/2addr v1, v2

    invoke-virtual {p3, v3, v3, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 5592
    :cond_43
    invoke-virtual {p0}, getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_50

    .line 5593
    invoke-virtual {p0, p3}, transformRect(Landroid/graphics/Rect;)V

    .line 5596
    :cond_50
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    .line 5600
    :goto_52
    return-object v0

    :cond_53
    const/4 v0, 0x0

    goto :goto_52
.end method

.method protected debug(I)V
    .registers 8
    .param p1, "depth"    # I

    .prologue
    .line 6191
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 6194
    iget-object v4, p0, mFocused:Landroid/view/View;

    if-eqz v4, :cond_24

    .line 6195
    invoke-static {p1}, debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 6196
    .local v3, "output":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mFocused"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6197
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6199
    .end local v3    # "output":Ljava/lang/String;
    :cond_24
    iget v4, p0, mChildrenCount:I

    if-eqz v4, :cond_45

    .line 6200
    invoke-static {p1}, debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 6201
    .restart local v3    # "output":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6202
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6204
    .end local v3    # "output":Ljava/lang/String;
    :cond_45
    iget v1, p0, mChildrenCount:I

    .line 6205
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_48
    if-ge v2, v1, :cond_56

    .line 6206
    iget-object v4, p0, mChildren:[Landroid/view/View;

    aget-object v0, v4, v2

    .line 6207
    .local v0, "child":Landroid/view/View;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->debug(I)V

    .line 6205
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 6210
    .end local v0    # "child":Landroid/view/View;
    :cond_56
    iget v4, p0, mChildrenCount:I

    if-eqz v4, :cond_77

    .line 6211
    invoke-static {p1}, debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 6212
    .restart local v3    # "output":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6213
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6215
    .end local v3    # "output":Ljava/lang/String;
    :cond_77
    return-void
.end method

.method protected detachAllViewsFromParent()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 5328
    iget v1, p0, mChildrenCount:I

    .line 5329
    .local v1, "count":I
    if-gtz v1, :cond_6

    .line 5340
    :cond_5
    return-void

    .line 5333
    :cond_6
    iget-object v0, p0, mChildren:[Landroid/view/View;

    .line 5334
    .local v0, "children":[Landroid/view/View;
    const/4 v3, 0x0

    iput v3, p0, mChildrenCount:I

    .line 5336
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_d
    if-ltz v2, :cond_5

    .line 5337
    aget-object v3, v0, v2

    iput-object v4, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5338
    aput-object v4, v0, v2

    .line 5336
    add-int/lit8 v2, v2, -0x1

    goto :goto_d
.end method

.method protected detachViewFromParent(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 5287
    invoke-direct {p0, p1}, removeFromArray(I)V

    .line 5288
    return-void
.end method

.method protected detachViewFromParent(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 5266
    invoke-virtual {p0, p1}, indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, removeFromArray(I)V

    .line 5267
    return-void
.end method

.method protected detachViewsFromParent(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 5309
    invoke-direct {p0, p1, p2}, removeFromArray(II)V

    .line 5310
    return-void
.end method

.method public dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z
    .registers 10
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 843
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 853
    :cond_7
    :goto_7
    return v3

    .line 846
    :cond_8
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 847
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_1c

    .line 848
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 849
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 847
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 853
    .end local v0    # "child":Landroid/view/View;
    :cond_1c
    const/4 v3, 0x0

    goto :goto_7
.end method

.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 5
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 6647
    invoke-super {p0, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 6648
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 6649
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 6650
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_1f

    .line 6651
    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 6652
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 6657
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1f
    return-object p1

    .line 6650
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .registers 11
    .param p1, "info"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .prologue
    .line 3136
    iget v6, p0, mGroupFlags:I

    const/high16 v7, 0x400000

    or-int/2addr v6, v7

    iput v6, p0, mGroupFlags:I

    .line 3137
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3138
    iget v6, p0, mGroupFlags:I

    const v7, -0x400001

    and-int/2addr v6, v7

    iput v6, p0, mGroupFlags:I

    .line 3140
    iget v2, p0, mChildrenCount:I

    .line 3141
    .local v2, "count":I
    iget-object v1, p0, mChildren:[Landroid/view/View;

    .line 3142
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v2, :cond_2b

    .line 3143
    aget-object v0, v1, v3

    .line 3144
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_28

    .line 3145
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {p0, p2, v6}, combineVisibility(II)I

    move-result v6

    invoke-virtual {v0, p1, v6}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3142
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 3149
    .end local v0    # "child":Landroid/view/View;
    :cond_2b
    iget-object v6, p0, mTransientIndices:Ljava/util/List;

    if-nez v6, :cond_49

    const/4 v4, 0x0

    .line 3150
    .local v4, "transientCount":I
    :goto_30
    const/4 v3, 0x0

    :goto_31
    if-ge v3, v4, :cond_50

    .line 3151
    iget-object v6, p0, mTransientViews:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 3152
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {p0, p2, v6}, combineVisibility(II)I

    move-result v6

    invoke-virtual {v5, p1, v6}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3150
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 3149
    .end local v4    # "transientCount":I
    .end local v5    # "view":Landroid/view/View;
    :cond_49
    iget-object v6, p0, mTransientIndices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_30

    .line 3155
    .restart local v4    # "transientCount":I
    :cond_50
    return-void
.end method

.method dispatchCancelPendingInputEvents()V
    .registers 5

    .prologue
    .line 4088
    invoke-super {p0}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    .line 4090
    iget-object v0, p0, mChildren:[Landroid/view/View;

    .line 4091
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, mChildrenCount:I

    .line 4092
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_16

    .line 4093
    aget-object v3, v0, v2

    if-eqz v3, :cond_13

    .line 4094
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    .line 4092
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4097
    :cond_16
    return-void
.end method

.method dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .registers 8
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .prologue
    .line 1360
    and-int/lit8 v4, p2, 0xc

    if-nez v4, :cond_1b

    .line 1361
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1362
    iget v2, p0, mChildrenCount:I

    .line 1363
    .local v2, "count":I
    iget-object v1, p0, mChildren:[Landroid/view/View;

    .line 1364
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v2, :cond_1b

    .line 1365
    aget-object v0, v1, v3

    .line 1366
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    or-int/2addr v4, p2

    invoke-virtual {v0, p1, v4}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1364
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1370
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "children":[Landroid/view/View;
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_1b
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1338
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1339
    iget v1, p0, mChildrenCount:I

    .line 1340
    .local v1, "count":I
    iget-object v0, p0, mChildren:[Landroid/view/View;

    .line 1341
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_16

    .line 1342
    aget-object v3, v0, v2

    if-eqz v3, :cond_13

    .line 1343
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1341
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1346
    :cond_16
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 3354
    invoke-direct {p0, v6}, cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 3357
    invoke-direct {p0}, exitHoverTargets()V

    .line 3360
    iput-boolean v3, p0, mLayoutCalledWhileSuppressed:Z

    .line 3363
    iput-object v6, p0, mDragNotifiedChildren:Ljava/util/HashSet;

    .line 3364
    iget-object v5, p0, mCurrentDrag:Landroid/view/DragEvent;

    if-eqz v5, :cond_17

    .line 3365
    iget-object v5, p0, mCurrentDrag:Landroid/view/DragEvent;

    invoke-virtual {v5}, Landroid/view/DragEvent;->recycle()V

    .line 3366
    iput-object v6, p0, mCurrentDrag:Landroid/view/DragEvent;

    .line 3369
    :cond_17
    iget v1, p0, mChildrenCount:I

    .line 3370
    .local v1, "count":I
    iget-object v0, p0, mChildren:[Landroid/view/View;

    .line 3371
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    if-ge v2, v1, :cond_26

    .line 3372
    aget-object v5, v0, v2

    invoke-virtual {v5}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3371
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 3374
    :cond_26
    invoke-virtual {p0}, clearDisappearingChildren()V

    .line 3375
    iget-object v5, p0, mTransientViews:Ljava/util/List;

    if-nez v5, :cond_3e

    .line 3376
    .local v3, "transientCount":I
    :goto_2d
    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v3, :cond_45

    .line 3377
    iget-object v5, p0, mTransientViews:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 3378
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3376
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 3375
    .end local v3    # "transientCount":I
    .end local v4    # "view":Landroid/view/View;
    :cond_3e
    iget-object v5, p0, mTransientIndices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_2d

    .line 3380
    .restart local v3    # "transientCount":I
    :cond_45
    invoke-super {p0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3381
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .registers 6
    .param p1, "hint"    # I

    .prologue
    .line 1260
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 1261
    iget v1, p0, mChildrenCount:I

    .line 1262
    .local v1, "count":I
    iget-object v0, p0, mChildren:[Landroid/view/View;

    .line 1263
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 1264
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 1263
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1266
    :cond_12
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .registers 21
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 1397
    const/4 v11, 0x0

    .line 1398
    .local v11, "retval":Z
    move-object/from16 v0, p1

    iget v14, v0, Landroid/view/DragEvent;->mX:F

    .line 1399
    .local v14, "tx":F
    move-object/from16 v0, p1

    iget v15, v0, Landroid/view/DragEvent;->mY:F

    .line 1401
    .local v15, "ty":F
    invoke-virtual/range {p0 .. p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v12

    .line 1404
    .local v12, "root":Landroid/view/ViewRootImpl;
    invoke-direct/range {p0 .. p0}, getLocalPoint()Landroid/graphics/PointF;

    move-result-object v10

    .line 1406
    .local v10, "localPoint":Landroid/graphics/PointF;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mAction:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_200

    .line 1552
    :cond_1a
    :goto_1a
    :pswitch_1a
    if-nez v11, :cond_20

    .line 1554
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 1556
    :cond_20
    return v11

    .line 1409
    :pswitch_21
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mCurrentDragView:Landroid/view/View;

    .line 1412
    invoke-static/range {p1 .. p1}, Landroid/view/DragEvent;->obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mCurrentDrag:Landroid/view/DragEvent;

    .line 1413
    move-object/from16 v0, p0

    iget-object v0, v0, mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    if-nez v17, :cond_82

    .line 1414
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mDragNotifiedChildren:Ljava/util/HashSet;

    .line 1420
    :goto_46
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mChildAcceptsDrag:Z

    .line 1421
    move-object/from16 v0, p0

    iget v6, v0, mChildrenCount:I

    .line 1422
    .local v6, "count":I
    move-object/from16 v0, p0

    iget-object v5, v0, mChildren:[Landroid/view/View;

    .line 1423
    .local v5, "children":[Landroid/view/View;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_57
    if-ge v8, v6, :cond_8c

    .line 1424
    aget-object v4, v5, v8

    .line 1425
    .local v4, "child":Landroid/view/View;
    iget v0, v4, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x4

    move/from16 v0, v17

    iput v0, v4, Landroid/view/View;->mPrivateFlags2:I

    .line 1426
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_7f

    .line 1427
    aget-object v17, v5, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, notifyChildOfDrag(Landroid/view/View;)Z

    move-result v7

    .line 1428
    .local v7, "handled":Z
    if-eqz v7, :cond_7f

    .line 1429
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mChildAcceptsDrag:Z

    .line 1423
    .end local v7    # "handled":Z
    :cond_7f
    add-int/lit8 v8, v8, 0x1

    goto :goto_57

    .line 1416
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "children":[Landroid/view/View;
    .end local v6    # "count":I
    .end local v8    # "i":I
    :cond_82
    move-object/from16 v0, p0

    iget-object v0, v0, mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->clear()V

    goto :goto_46

    .line 1435
    .restart local v5    # "children":[Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v8    # "i":I
    :cond_8c
    move-object/from16 v0, p0

    iget-boolean v0, v0, mChildAcceptsDrag:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1a

    .line 1436
    const/4 v11, 0x1

    goto :goto_1a

    .line 1442
    .end local v5    # "children":[Landroid/view/View;
    .end local v6    # "count":I
    .end local v8    # "i":I
    :pswitch_96
    move-object/from16 v0, p0

    iget-object v0, v0, mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e9

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_a8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1445
    .restart local v4    # "child":Landroid/view/View;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1446
    iget v0, v4, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x4

    move/from16 v0, v17

    iput v0, v4, Landroid/view/View;->mPrivateFlags2:I

    .line 1447
    invoke-virtual {v4}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_a8

    .line 1450
    .end local v4    # "child":Landroid/view/View;
    :cond_c7
    move-object/from16 v0, p0

    iget-object v0, v0, mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->clear()V

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentDrag:Landroid/view/DragEvent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e9

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentDrag:Landroid/view/DragEvent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/DragEvent;->recycle()V

    .line 1453
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mCurrentDrag:Landroid/view/DragEvent;

    .line 1459
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_e9
    move-object/from16 v0, p0

    iget-boolean v0, v0, mChildAcceptsDrag:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1a

    .line 1460
    const/4 v11, 0x1

    goto/16 :goto_1a

    .line 1466
    :pswitch_f4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mX:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v10}, findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v13

    .line 1474
    .local v13, "target":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentDragView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-eq v0, v13, :cond_16d

    .line 1475
    invoke-virtual {v12, v13}, Landroid/view/ViewRootImpl;->setDragFocus(Landroid/view/View;)V

    .line 1477
    move-object/from16 v0, p1

    iget v3, v0, Landroid/view/DragEvent;->mAction:I

    .line 1479
    .local v3, "action":I
    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentDragView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_149

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentDragView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 1481
    .local v16, "view":Landroid/view/View;
    const/16 v17, 0x6

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mAction:I

    .line 1482
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1483
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x3

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 1484
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->refreshDrawableState()V

    .line 1486
    .end local v16    # "view":Landroid/view/View;
    :cond_149
    move-object/from16 v0, p0

    iput-object v13, v0, mCurrentDragView:Landroid/view/View;

    .line 1489
    if-eqz v13, :cond_169

    .line 1490
    const/16 v17, 0x5

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mAction:I

    .line 1491
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1492
    iget v0, v13, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    iput v0, v13, Landroid/view/View;->mPrivateFlags2:I

    .line 1493
    invoke-virtual {v13}, Landroid/view/View;->refreshDrawableState()V

    .line 1495
    :cond_169
    move-object/from16 v0, p1

    iput v3, v0, Landroid/view/DragEvent;->mAction:I

    .line 1499
    .end local v3    # "action":I
    :cond_16d
    if-eqz v13, :cond_1a

    .line 1500
    iget v0, v10, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mX:F

    .line 1501
    iget v0, v10, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mY:F

    .line 1503
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 1505
    move-object/from16 v0, p1

    iput v14, v0, Landroid/view/DragEvent;->mX:F

    .line 1506
    move-object/from16 v0, p1

    iput v15, v0, Landroid/view/DragEvent;->mY:F

    goto/16 :goto_1a

    .line 1523
    .end local v13    # "target":Landroid/view/View;
    :pswitch_193
    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentDragView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1a

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentDragView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 1525
    .restart local v16    # "view":Landroid/view/View;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1526
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x3

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 1527
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->refreshDrawableState()V

    .line 1529
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mCurrentDragView:Landroid/view/View;

    goto/16 :goto_1a

    .line 1535
    .end local v16    # "view":Landroid/view/View;
    :pswitch_1c3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mX:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v10}, findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v13

    .line 1536
    .restart local v13    # "target":Landroid/view/View;
    if-eqz v13, :cond_1a

    .line 1538
    iget v0, v10, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mX:F

    .line 1539
    iget v0, v10, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mY:F

    .line 1540
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 1541
    move-object/from16 v0, p1

    iput v14, v0, Landroid/view/DragEvent;->mX:F

    .line 1542
    move-object/from16 v0, p1

    iput v15, v0, Landroid/view/DragEvent;->mY:F

    goto/16 :goto_1a

    .line 1406
    nop

    :pswitch_data_200
    .packed-switch 0x1
        :pswitch_21
        :pswitch_f4
        :pswitch_1c3
        :pswitch_96
        :pswitch_1a
        :pswitch_193
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 36
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3636
    move-object/from16 v0, p0

    iget-object v0, v0, mRenderNode:Landroid/view/RenderNode;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->isRecordingFor(Ljava/lang/Object;)Z

    move-result v28

    .line 3637
    .local v28, "usingRenderNodeProperties":Z
    move-object/from16 v0, p0

    iget v10, v0, mChildrenCount:I

    .line 3638
    .local v10, "childrenCount":I
    move-object/from16 v0, p0

    iget-object v9, v0, mChildren:[Landroid/view/View;

    .line 3639
    .local v9, "children":[Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, mGroupFlags:I

    move/from16 v20, v0

    .line 3641
    .local v20, "flags":I
    and-int/lit8 v29, v20, 0x8

    if-eqz v29, :cond_a4

    invoke-virtual/range {p0 .. p0}, canAnimate()Z

    move-result v29

    if-eqz v29, :cond_a4

    .line 3642
    invoke-virtual/range {p0 .. p0}, isHardwareAccelerated()Z

    move-result v29

    if-nez v29, :cond_52

    const/4 v6, 0x1

    .line 3643
    .local v6, "buildCache":Z
    :goto_2d
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_2f
    move/from16 v0, v21

    if-ge v0, v10, :cond_54

    .line 3644
    aget-object v7, v9, v21

    .line 3645
    .local v7, "child":Landroid/view/View;
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0xc

    if-nez v29, :cond_4f

    .line 3646
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 3647
    .local v23, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v21

    invoke-virtual {v0, v7, v1, v2, v10}, attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    .line 3648
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, bindLayoutAnimation(Landroid/view/View;)V

    .line 3643
    .end local v23    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_4f
    add-int/lit8 v21, v21, 0x1

    goto :goto_2f

    .line 3642
    .end local v6    # "buildCache":Z
    .end local v7    # "child":Landroid/view/View;
    .end local v21    # "i":I
    :cond_52
    const/4 v6, 0x0

    goto :goto_2d

    .line 3652
    .restart local v6    # "buildCache":Z
    .restart local v21    # "i":I
    :cond_54
    move-object/from16 v0, p0

    iget-object v13, v0, mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 3653
    .local v13, "controller":Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {v13}, Landroid/view/animation/LayoutAnimationController;->willOverlap()Z

    move-result v29

    if-eqz v29, :cond_70

    .line 3654
    move-object/from16 v0, p0

    iget v0, v0, mGroupFlags:I

    move/from16 v29, v0

    move/from16 v0, v29

    or-int/lit16 v0, v0, 0x80

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, mGroupFlags:I

    .line 3657
    :cond_70
    invoke-virtual {v13}, Landroid/view/animation/LayoutAnimationController;->start()V

    .line 3659
    move-object/from16 v0, p0

    iget v0, v0, mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, -0x9

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, mGroupFlags:I

    .line 3660
    move-object/from16 v0, p0

    iget v0, v0, mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, -0x11

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, mGroupFlags:I

    .line 3662
    move-object/from16 v0, p0

    iget-object v0, v0, mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v29, v0

    if-eqz v29, :cond_a4

    .line 3663
    move-object/from16 v0, p0

    iget-object v0, v0, mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v29, v0

    invoke-virtual {v13}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 3667
    .end local v6    # "buildCache":Z
    .end local v13    # "controller":Landroid/view/animation/LayoutAnimationController;
    .end local v21    # "i":I
    :cond_a4
    const/4 v11, 0x0

    .line 3668
    .local v11, "clipSaveCount":I
    and-int/lit8 v29, v20, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1b8

    const/4 v12, 0x1

    .line 3669
    .local v12, "clipToPadding":Z
    :goto_b0
    if-eqz v12, :cond_11b

    .line 3670
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 3671
    move-object/from16 v0, p0

    iget v0, v0, mScrollX:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, mPaddingLeft:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, mScrollY:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, mPaddingTop:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, mScrollX:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, mRight:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, mLeft:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, mPaddingRight:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, mScrollY:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, mBottom:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, mTop:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, mPaddingBottom:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3677
    :cond_11b
    move-object/from16 v0, p0

    iget v0, v0, mPrivateFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, -0x41

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, mPrivateFlags:I

    .line 3678
    move-object/from16 v0, p0

    iget v0, v0, mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, -0x5

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, mGroupFlags:I

    .line 3680
    const/16 v22, 0x0

    .line 3681
    .local v22, "more":Z
    invoke-virtual/range {p0 .. p0}, getDrawingTime()J

    move-result-wide v18

    .line 3683
    .local v18, "drawingTime":J
    if-eqz v28, :cond_142

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->insertReorderBarrier()V

    .line 3684
    :cond_142
    move-object/from16 v0, p0

    iget-object v0, v0, mTransientIndices:Ljava/util/List;

    move-object/from16 v29, v0

    if-nez v29, :cond_1bb

    const/16 v26, 0x0

    .line 3685
    .local v26, "transientCount":I
    :goto_14c
    if-eqz v26, :cond_1c6

    const/16 v27, 0x0

    .line 3688
    .local v27, "transientIndex":I
    :goto_150
    if-eqz v28, :cond_1c9

    const/16 v24, 0x0

    .line 3690
    .local v24, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_154
    if-nez v24, :cond_1ce

    invoke-virtual/range {p0 .. p0}, isChildrenDrawingOrderEnabled()Z

    move-result v29

    if-eqz v29, :cond_1ce

    const/4 v14, 0x1

    .line 3692
    .local v14, "customOrder":Z
    :goto_15d
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_15f
    move/from16 v0, v21

    if-ge v0, v10, :cond_20d

    .line 3693
    :cond_163
    :goto_163
    if-ltz v27, :cond_1d0

    move-object/from16 v0, p0

    iget-object v0, v0, mTransientIndices:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v21

    if-ne v0, v1, :cond_1d0

    .line 3694
    move-object/from16 v0, p0

    iget-object v0, v0, mTransientViews:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/View;

    .line 3695
    .local v25, "transientChild":Landroid/view/View;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0xc

    if-eqz v29, :cond_19f

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v29

    if-eqz v29, :cond_1ad

    .line 3697
    :cond_19f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v29

    or-int v22, v22, v29

    .line 3699
    :cond_1ad
    add-int/lit8 v27, v27, 0x1

    .line 3700
    move/from16 v0, v27

    move/from16 v1, v26

    if-lt v0, v1, :cond_163

    .line 3701
    const/16 v27, -0x1

    goto :goto_163

    .line 3668
    .end local v12    # "clipToPadding":Z
    .end local v14    # "customOrder":Z
    .end local v18    # "drawingTime":J
    .end local v21    # "i":I
    .end local v22    # "more":Z
    .end local v24    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v25    # "transientChild":Landroid/view/View;
    .end local v26    # "transientCount":I
    .end local v27    # "transientIndex":I
    :cond_1b8
    const/4 v12, 0x0

    goto/16 :goto_b0

    .line 3684
    .restart local v12    # "clipToPadding":Z
    .restart local v18    # "drawingTime":J
    .restart local v22    # "more":Z
    :cond_1bb
    move-object/from16 v0, p0

    iget-object v0, v0, mTransientIndices:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v26

    goto :goto_14c

    .line 3685
    .restart local v26    # "transientCount":I
    :cond_1c6
    const/16 v27, -0x1

    goto :goto_150

    .line 3688
    .restart local v27    # "transientIndex":I
    :cond_1c9
    invoke-virtual/range {p0 .. p0}, buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v24

    goto :goto_154

    .line 3690
    .restart local v24    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1ce
    const/4 v14, 0x0

    goto :goto_15d

    .line 3704
    .restart local v14    # "customOrder":Z
    .restart local v21    # "i":I
    :cond_1d0
    if-eqz v14, :cond_1e4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v10, v1}, getChildDrawingOrder(II)I

    move-result v8

    .line 3705
    .local v8, "childIndex":I
    :goto_1da
    if-nez v24, :cond_1e7

    aget-object v7, v9, v8

    .line 3707
    .restart local v7    # "child":Landroid/view/View;
    :goto_1de
    if-nez v7, :cond_1f2

    .line 3692
    :cond_1e0
    :goto_1e0
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_15f

    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childIndex":I
    :cond_1e4
    move/from16 v8, v21

    .line 3704
    goto :goto_1da

    .line 3705
    .restart local v8    # "childIndex":I
    :cond_1e7
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/view/View;

    move-object/from16 v7, v29

    goto :goto_1de

    .line 3710
    .restart local v7    # "child":Landroid/view/View;
    :cond_1f2
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0xc

    if-eqz v29, :cond_200

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v29

    if-eqz v29, :cond_1e0

    .line 3711
    :cond_200
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v7, v2, v3}, drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v29

    or-int v22, v22, v29

    goto :goto_1e0

    .line 3714
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childIndex":I
    :cond_20d
    if-ltz v27, :cond_245

    .line 3716
    move-object/from16 v0, p0

    iget-object v0, v0, mTransientViews:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/View;

    .line 3717
    .restart local v25    # "transientChild":Landroid/view/View;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0xc

    if-eqz v29, :cond_22f

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v29

    if-eqz v29, :cond_23d

    .line 3719
    :cond_22f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v29

    or-int v22, v22, v29

    .line 3721
    :cond_23d
    add-int/lit8 v27, v27, 0x1

    .line 3722
    move/from16 v0, v27

    move/from16 v1, v26

    if-lt v0, v1, :cond_20d

    .line 3726
    .end local v25    # "transientChild":Landroid/view/View;
    :cond_245
    if-eqz v24, :cond_24a

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 3729
    :cond_24a
    move-object/from16 v0, p0

    iget-object v0, v0, mDisappearingChildren:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    if-eqz v29, :cond_277

    .line 3730
    move-object/from16 v0, p0

    iget-object v15, v0, mDisappearingChildren:Ljava/util/ArrayList;

    .line 3731
    .local v15, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v29

    add-int/lit8 v16, v29, -0x1

    .line 3733
    .local v16, "disappearingCount":I
    move/from16 v21, v16

    :goto_25e
    if-ltz v21, :cond_277

    .line 3734
    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 3735
    .restart local v7    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v7, v2, v3}, drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v29

    or-int v22, v22, v29

    .line 3733
    add-int/lit8 v21, v21, -0x1

    goto :goto_25e

    .line 3738
    .end local v7    # "child":Landroid/view/View;
    .end local v15    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v16    # "disappearingCount":I
    :cond_277
    if-eqz v28, :cond_27c

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->insertInorderBarrier()V

    .line 3740
    :cond_27c
    invoke-direct/range {p0 .. p0}, debugDraw()Z

    move-result v29

    if-eqz v29, :cond_285

    .line 3741
    invoke-virtual/range {p0 .. p1}, onDebugDraw(Landroid/graphics/Canvas;)V

    .line 3744
    :cond_285
    if-eqz v12, :cond_28c

    .line 3745
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3749
    :cond_28c
    move-object/from16 v0, p0

    iget v0, v0, mGroupFlags:I

    move/from16 v20, v0

    .line 3751
    and-int/lit8 v29, v20, 0x4

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2a5

    .line 3752
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, invalidate(Z)V

    .line 3755
    :cond_2a5
    and-int/lit8 v29, v20, 0x10

    if-nez v29, :cond_2e1

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x200

    move/from16 v29, v0

    if-nez v29, :cond_2e1

    move-object/from16 v0, p0

    iget-object v0, v0, mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/animation/LayoutAnimationController;->isDone()Z

    move-result v29

    if-eqz v29, :cond_2e1

    if-nez v22, :cond_2e1

    .line 3760
    move-object/from16 v0, p0

    iget v0, v0, mGroupFlags:I

    move/from16 v29, v0

    move/from16 v0, v29

    or-int/lit16 v0, v0, 0x200

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, mGroupFlags:I

    .line 3761
    new-instance v17, Landroid/view/ViewGroup$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$2;-><init>(Landroid/view/ViewGroup;)V

    .line 3766
    .local v17, "end":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, post(Ljava/lang/Runnable;)Z

    .line 3768
    .end local v17    # "end":Ljava/lang/Runnable;
    :cond_2e1
    return-void
.end method

.method public dispatchDrawableHotspotChanged(FF)V
    .registers 14
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 4064
    iget v2, p0, mChildrenCount:I

    .line 4065
    .local v2, "count":I
    if-nez v2, :cond_7

    .line 4084
    :cond_6
    return-void

    .line 4069
    :cond_7
    iget-object v1, p0, mChildren:[Landroid/view/View;

    .line 4070
    .local v1, "children":[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a
    if-ge v4, v2, :cond_6

    .line 4071
    aget-object v0, v1, v4

    .line 4074
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v9

    if-nez v9, :cond_3c

    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    move-result v9

    if-nez v9, :cond_3c

    move v5, v7

    .line 4075
    .local v5, "nonActionable":Z
    :goto_1b
    iget v9, v0, Landroid/view/View;->mViewFlags:I

    const/high16 v10, 0x400000

    and-int/2addr v9, v10

    if-eqz v9, :cond_3e

    move v3, v7

    .line 4076
    .local v3, "duplicatesState":Z
    :goto_23
    if-nez v5, :cond_27

    if-eqz v3, :cond_39

    .line 4077
    :cond_27
    invoke-direct {p0}, getTempPoint()[F

    move-result-object v6

    .line 4078
    .local v6, "point":[F
    aput p1, v6, v8

    .line 4079
    aput p2, v6, v7

    .line 4080
    invoke-virtual {p0, v6, v0}, transformPointToViewLocal([FLandroid/view/View;)V

    .line 4081
    aget v9, v6, v8

    aget v10, v6, v7

    invoke-virtual {v0, v9, v10}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 4070
    .end local v6    # "point":[F
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .end local v3    # "duplicatesState":Z
    .end local v5    # "nonActionable":Z
    :cond_3c
    move v5, v8

    .line 4074
    goto :goto_1b

    .restart local v5    # "nonActionable":Z
    :cond_3e
    move v3, v8

    .line 4075
    goto :goto_23
.end method

.method public dispatchFinishTemporaryDetach()V
    .registers 5

    .prologue
    .line 3123
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 3124
    iget v1, p0, mChildrenCount:I

    .line 3125
    .local v1, "count":I
    iget-object v0, p0, mChildren:[Landroid/view/View;

    .line 3126
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 3127
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 3126
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3129
    :cond_12
    return-void
.end method

.method protected dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3422
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 3423
    return-void
.end method

.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2145
    iget v0, p0, mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_d

    .line 2147
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2152
    :goto_c
    return v0

    .line 2148
    :cond_d
    iget-object v0, p0, mFocused:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_22

    .line 2150
    iget-object v0, p0, mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_c

    .line 2152
    :cond_22
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    .line 2109
    iget v3, p0, mChildrenCount:I

    .line 2110
    .local v3, "childrenCount":I
    if-eqz v3, :cond_57

    .line 2111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 2112
    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 2114
    .local v8, "y":F
    invoke-virtual {p0}, buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v6

    .line 2115
    .local v6, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v6, :cond_3a

    invoke-virtual {p0}, isChildrenDrawingOrderEnabled()Z

    move-result v9

    if-eqz v9, :cond_3a

    move v4, v10

    .line 2117
    .local v4, "customOrder":Z
    :goto_1a
    iget-object v2, p0, mChildren:[Landroid/view/View;

    .line 2118
    .local v2, "children":[Landroid/view/View;
    add-int/lit8 v5, v3, -0x1

    .local v5, "i":I
    :goto_1e
    if-ltz v5, :cond_52

    .line 2119
    if-eqz v4, :cond_3c

    invoke-virtual {p0, v3, v5}, getChildDrawingOrder(II)I

    move-result v1

    .line 2120
    .local v1, "childIndex":I
    :goto_26
    if-nez v6, :cond_3e

    aget-object v0, v2, v1

    .line 2122
    .local v0, "child":Landroid/view/View;
    :goto_2a
    invoke-static {v0}, canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_37

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v0, v9}, isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v9

    if-nez v9, :cond_46

    .line 2118
    :cond_37
    add-int/lit8 v5, v5, -0x1

    goto :goto_1e

    .line 2115
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childIndex":I
    .end local v2    # "children":[Landroid/view/View;
    .end local v4    # "customOrder":Z
    .end local v5    # "i":I
    :cond_3a
    const/4 v4, 0x0

    goto :goto_1a

    .restart local v2    # "children":[Landroid/view/View;
    .restart local v4    # "customOrder":Z
    .restart local v5    # "i":I
    :cond_3c
    move v1, v5

    .line 2119
    goto :goto_26

    .line 2120
    .restart local v1    # "childIndex":I
    :cond_3e
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    move-object v0, v9

    goto :goto_2a

    .line 2127
    .restart local v0    # "child":Landroid/view/View;
    :cond_46
    invoke-direct {p0, p1, v0}, dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_37

    .line 2128
    if-eqz v6, :cond_51

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2136
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childIndex":I
    .end local v2    # "children":[Landroid/view/View;
    .end local v4    # "customOrder":Z
    .end local v5    # "i":I
    .end local v6    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_51
    :goto_51
    return v10

    .line 2132
    .restart local v2    # "children":[Landroid/view/View;
    .restart local v4    # "customOrder":Z
    .restart local v5    # "i":I
    .restart local v6    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v7    # "x":F
    .restart local v8    # "y":F
    :cond_52
    if-eqz v6, :cond_57

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2136
    .end local v2    # "children":[Landroid/view/View;
    .end local v4    # "customOrder":Z
    .end local v5    # "i":I
    .end local v6    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_57
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    goto :goto_51
.end method

.method protected dispatchGetDisplayList()V
    .registers 9

    .prologue
    .line 3880
    iget v2, p0, mChildrenCount:I

    .line 3881
    .local v2, "count":I
    iget-object v1, p0, mChildren:[Landroid/view/View;

    .line 3882
    .local v1, "children":[Landroid/view/View;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    if-ge v5, v2, :cond_1d

    .line 3883
    aget-object v0, v1, v5

    .line 3884
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1a

    iget v7, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-eqz v7, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    if-eqz v7, :cond_1a

    .line 3885
    :cond_17
    invoke-direct {p0, v0}, recreateChildDisplayList(Landroid/view/View;)V

    .line 3882
    :cond_1a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 3888
    .end local v0    # "child":Landroid/view/View;
    :cond_1d
    iget-object v7, p0, mOverlay:Landroid/view/ViewOverlay;

    if-eqz v7, :cond_2a

    .line 3889
    iget-object v7, p0, mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v7}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v6

    .line 3890
    .local v6, "overlayView":Landroid/view/View;
    invoke-direct {p0, v6}, recreateChildDisplayList(Landroid/view/View;)V

    .line 3892
    .end local v6    # "overlayView":Landroid/view/View;
    :cond_2a
    iget-object v7, p0, mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v7, :cond_43

    .line 3893
    iget-object v3, p0, mDisappearingChildren:Ljava/util/ArrayList;

    .line 3894
    .local v3, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3895
    .local v4, "disappearingCount":I
    const/4 v5, 0x0

    :goto_35
    if-ge v5, v4, :cond_43

    .line 3896
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3897
    .restart local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0}, recreateChildDisplayList(Landroid/view/View;)V

    .line 3895
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    .line 3900
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "disappearingCount":I
    :cond_43
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 27
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1798
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1811
    .local v4, "action":I
    invoke-virtual/range {p0 .. p1}, onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v15

    .line 1812
    .local v15, "interceptHover":Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1814
    move-object/from16 v10, p1

    .line 1815
    .local v10, "eventNoHistory":Landroid/view/MotionEvent;
    const/4 v12, 0x0

    .line 1819
    .local v12, "handled":Z
    move-object/from16 v0, p0

    iget-object v11, v0, mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1820
    .local v11, "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1821
    if-nez v15, :cond_a9

    const/16 v24, 0xa

    move/from16 v0, v24

    if-eq v4, v0, :cond_a9

    .line 1822
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    .line 1823
    .local v22, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    .line 1824
    .local v23, "y":F
    move-object/from16 v0, p0

    iget v8, v0, mChildrenCount:I

    .line 1825
    .local v8, "childrenCount":I
    if-eqz v8, :cond_a9

    .line 1826
    invoke-virtual/range {p0 .. p0}, buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v20

    .line 1827
    .local v20, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v20, :cond_6e

    invoke-virtual/range {p0 .. p0}, isChildrenDrawingOrderEnabled()Z

    move-result v24

    if-eqz v24, :cond_6e

    const/4 v9, 0x1

    .line 1829
    .local v9, "customOrder":Z
    :goto_3f
    move-object/from16 v0, p0

    iget-object v7, v0, mChildren:[Landroid/view/View;

    .line 1830
    .local v7, "children":[Landroid/view/View;
    const/16 v16, 0x0

    .line 1831
    .local v16, "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    add-int/lit8 v14, v8, -0x1

    .local v14, "i":I
    :goto_47
    if-ltz v14, :cond_a4

    .line 1832
    if-eqz v9, :cond_70

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14}, getChildDrawingOrder(II)I

    move-result v6

    .line 1833
    .local v6, "childIndex":I
    :goto_51
    if-nez v20, :cond_72

    aget-object v5, v7, v6

    .line 1835
    .local v5, "child":Landroid/view/View;
    :goto_55
    invoke-static {v5}, canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v24

    if-eqz v24, :cond_6b

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v5, v3}, isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v24

    if-nez v24, :cond_7d

    .line 1831
    :cond_6b
    add-int/lit8 v14, v14, -0x1

    goto :goto_47

    .line 1827
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childIndex":I
    .end local v7    # "children":[Landroid/view/View;
    .end local v9    # "customOrder":Z
    .end local v14    # "i":I
    .end local v16    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :cond_6e
    const/4 v9, 0x0

    goto :goto_3f

    .restart local v7    # "children":[Landroid/view/View;
    .restart local v9    # "customOrder":Z
    .restart local v14    # "i":I
    .restart local v16    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :cond_70
    move v6, v14

    .line 1832
    goto :goto_51

    .line 1833
    .restart local v6    # "childIndex":I
    :cond_72
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    move-object/from16 v5, v24

    goto :goto_55

    .line 1842
    .restart local v5    # "child":Landroid/view/View;
    :cond_7d
    move-object v13, v11

    .line 1844
    .local v13, "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    const/16 v19, 0x0

    .line 1845
    .local v19, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    :goto_80
    if-nez v13, :cond_c7

    .line 1846
    invoke-static {v5}, Landroid/view/ViewGroup$HoverTarget;->obtain(Landroid/view/View;)Landroid/view/ViewGroup$HoverTarget;

    move-result-object v13

    .line 1847
    const/16 v21, 0x0

    .line 1867
    .local v21, "wasHovered":Z
    :goto_88
    if-eqz v16, :cond_ec

    .line 1868
    move-object/from16 v0, v16

    iput-object v13, v0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1872
    :goto_8e
    move-object/from16 v16, v13

    .line 1875
    const/16 v24, 0x9

    move/from16 v0, v24

    if-ne v4, v0, :cond_f1

    .line 1876
    if-nez v21, :cond_a2

    .line 1878
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v24

    or-int v12, v12, v24

    .line 1897
    :cond_a2
    :goto_a2
    if-eqz v12, :cond_6b

    .line 1901
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childIndex":I
    .end local v13    # "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v19    # "predecessor":Landroid/view/ViewGroup$HoverTarget;
    .end local v21    # "wasHovered":Z
    :cond_a4
    if-eqz v20, :cond_a9

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 1906
    .end local v7    # "children":[Landroid/view/View;
    .end local v8    # "childrenCount":I
    .end local v9    # "customOrder":Z
    .end local v14    # "i":I
    .end local v16    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v20    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_a9
    :goto_a9
    if-eqz v11, :cond_145

    .line 1907
    iget-object v5, v11, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 1910
    .restart local v5    # "child":Landroid/view/View;
    const/16 v24, 0xa

    move/from16 v0, v24

    if-ne v4, v0, :cond_123

    .line 1912
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v24

    or-int v12, v12, v24

    .line 1928
    :goto_bd
    iget-object v0, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v18, v0

    .line 1929
    .local v18, "nextOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    invoke-virtual {v11}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 1930
    move-object/from16 v11, v18

    .line 1931
    goto :goto_a9

    .line 1851
    .end local v18    # "nextOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .restart local v6    # "childIndex":I
    .restart local v7    # "children":[Landroid/view/View;
    .restart local v8    # "childrenCount":I
    .restart local v9    # "customOrder":Z
    .restart local v13    # "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .restart local v14    # "i":I
    .restart local v16    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .restart local v19    # "predecessor":Landroid/view/ViewGroup$HoverTarget;
    .restart local v20    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v22    # "x":F
    .restart local v23    # "y":F
    :cond_c7
    iget-object v0, v13, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    if-ne v0, v5, :cond_e7

    .line 1852
    if-eqz v19, :cond_e4

    .line 1853
    iget-object v0, v13, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1857
    :goto_db
    const/16 v24, 0x0

    move-object/from16 v0, v24

    iput-object v0, v13, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1858
    const/16 v21, 0x1

    .line 1859
    .restart local v21    # "wasHovered":Z
    goto :goto_88

    .line 1855
    .end local v21    # "wasHovered":Z
    :cond_e4
    iget-object v11, v13, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_db

    .line 1862
    :cond_e7
    move-object/from16 v19, v13

    .line 1863
    iget-object v13, v13, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_80

    .line 1870
    .restart local v21    # "wasHovered":Z
    :cond_ec
    move-object/from16 v0, p0

    iput-object v13, v0, mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_8e

    .line 1881
    :cond_f1
    const/16 v24, 0x7

    move/from16 v0, v24

    if-ne v4, v0, :cond_a2

    .line 1882
    if-nez v21, :cond_118

    .line 1884
    invoke-static {v10}, obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    .line 1885
    const/16 v24, 0x9

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1886
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5}, dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v24

    or-int v12, v12, v24

    .line 1888
    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1890
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5}, dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v24

    or-int v12, v12, v24

    goto :goto_a2

    .line 1894
    :cond_118
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v24

    or-int v12, v12, v24

    goto :goto_a2

    .line 1917
    .end local v6    # "childIndex":I
    .end local v7    # "children":[Landroid/view/View;
    .end local v8    # "childrenCount":I
    .end local v9    # "customOrder":Z
    .end local v13    # "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v14    # "i":I
    .end local v16    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v19    # "predecessor":Landroid/view/ViewGroup$HoverTarget;
    .end local v20    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v21    # "wasHovered":Z
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_123
    const/16 v24, 0x7

    move/from16 v0, v24

    if-ne v4, v0, :cond_130

    .line 1918
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 1921
    :cond_130
    invoke-static {v10}, obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    .line 1922
    const/16 v24, 0xa

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1923
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5}, dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 1925
    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_bd

    .line 1934
    .end local v5    # "child":Landroid/view/View;
    :cond_145
    if-nez v12, :cond_16b

    const/16 v17, 0x1

    .line 1935
    .local v17, "newHoveredSelf":Z
    :goto_149
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHoveredSelf:Z

    move/from16 v24, v0

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_16e

    .line 1936
    if-eqz v17, :cond_15d

    .line 1938
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v24

    or-int v12, v12, v24

    .line 1980
    :cond_15d
    :goto_15d
    move-object/from16 v0, p1

    if-eq v10, v0, :cond_16a

    iget-boolean v0, v10, Landroid/view/MotionEvent;->mRecycled:Z

    move/from16 v24, v0

    if-nez v24, :cond_16a

    .line 1981
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 1985
    :cond_16a
    return v12

    .line 1934
    .end local v17    # "newHoveredSelf":Z
    :cond_16b
    const/16 v17, 0x0

    goto :goto_149

    .line 1941
    .restart local v17    # "newHoveredSelf":Z
    :cond_16e
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHoveredSelf:Z

    move/from16 v24, v0

    if-eqz v24, :cond_18a

    .line 1943
    const/16 v24, 0xa

    move/from16 v0, v24

    if-ne v4, v0, :cond_1a1

    .line 1945
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v24

    or-int v12, v12, v24

    .line 1957
    :goto_182
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHoveredSelf:Z

    .line 1960
    :cond_18a
    if-eqz v17, :cond_15d

    .line 1962
    const/16 v24, 0x9

    move/from16 v0, v24

    if-ne v4, v0, :cond_1be

    .line 1964
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v24

    or-int v12, v12, v24

    .line 1965
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHoveredSelf:Z

    goto :goto_15d

    .line 1949
    :cond_1a1
    const/16 v24, 0x7

    move/from16 v0, v24

    if-ne v4, v0, :cond_1aa

    .line 1950
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1952
    :cond_1aa
    invoke-static {v10}, obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    .line 1953
    const/16 v24, 0xa

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1954
    move-object/from16 v0, p0

    invoke-super {v0, v10}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1955
    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_182

    .line 1966
    :cond_1be
    const/16 v24, 0x7

    move/from16 v0, v24

    if-ne v4, v0, :cond_15d

    .line 1968
    invoke-static {v10}, obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    .line 1969
    const/16 v24, 0x9

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1970
    move-object/from16 v0, p0

    invoke-super {v0, v10}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v24

    or-int v12, v12, v24

    .line 1971
    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1973
    move-object/from16 v0, p0

    invoke-super {v0, v10}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v24

    or-int v12, v12, v24

    .line 1974
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHoveredSelf:Z

    goto/16 :goto_15d
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1728
    iget-object v1, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_a

    .line 1729
    iget-object v1, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 1732
    :cond_a
    iget v1, p0, mPrivateFlags:I

    and-int/lit8 v1, v1, 0x12

    const/16 v2, 0x12

    if-ne v1, v2, :cond_19

    .line 1734
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1747
    :cond_18
    :goto_18
    return v0

    .line 1737
    :cond_19
    iget-object v1, p0, mFocused:Landroid/view/View;

    if-eqz v1, :cond_2f

    iget-object v1, p0, mFocused:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2f

    .line 1739
    iget-object v1, p0, mFocused:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1744
    :cond_2f
    iget-object v1, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_38

    .line 1745
    iget-object v1, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1747
    :cond_38
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1713
    iget v0, p0, mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_d

    .line 1715
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1720
    :goto_c
    return v0

    .line 1716
    :cond_d
    iget-object v0, p0, mFocused:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_22

    .line 1718
    iget-object v0, p0, mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c

    .line 1720
    :cond_22
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public dispatchKeyEventTextMultiSelection(Landroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    .line 1694
    sget v5, sSpenUspLevel:I

    if-gtz v5, :cond_6

    .line 1705
    :cond_5
    :goto_5
    return v4

    .line 1697
    :cond_6
    iget v2, p0, mChildrenCount:I

    .line 1698
    .local v2, "count":I
    iget-object v1, p0, mChildren:[Landroid/view/View;

    .line 1699
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_5

    .line 1700
    aget-object v0, v1, v3

    .line 1701
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventTextMultiSelection(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1702
    const/4 v4, 0x1

    goto :goto_5

    .line 1699
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_b
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1755
    iget v0, p0, mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_d

    .line 1757
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1762
    :goto_c
    return v0

    .line 1758
    :cond_d
    iget-object v0, p0, mFocused:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_22

    .line 1760
    iget-object v0, p0, mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c

    .line 1762
    :cond_22
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3171
    const/4 v3, 0x0

    .line 3172
    .local v3, "handled":Z
    invoke-virtual {p0}, includeForAccessibility()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 3173
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    .line 3174
    if-eqz v3, :cond_f

    move v5, v3

    .line 3194
    :goto_e
    return v5

    .line 3179
    :cond_f
    const/4 v5, 0x1

    invoke-static {p0, v5}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v2

    .line 3181
    .local v2, "children":Landroid/view/ViewGroup$ChildListForAccessibility;
    :try_start_14
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v1

    .line 3182
    .local v1, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    if-ge v4, v1, :cond_33

    .line 3183
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3184
    .local v0, "child":Landroid/view/View;
    iget v5, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0xc

    if-nez v5, :cond_30

    .line 3185
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_38

    move-result v3

    .line 3186
    if-eqz v3, :cond_30

    .line 3192
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    move v5, v3

    goto :goto_e

    .line 3182
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 3192
    .end local v0    # "child":Landroid/view/View;
    :cond_33
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 3194
    const/4 v5, 0x0

    goto :goto_e

    .line 3192
    .end local v1    # "childCount":I
    .end local v4    # "i":I
    :catchall_38
    move-exception v5

    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    throw v5
.end method

.method public dispatchProvideStructure(Landroid/view/ViewStructure;)V
    .registers 19
    .param p1, "structure"    # Landroid/view/ViewStructure;

    .prologue
    .line 3203
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    .line 3204
    invoke-virtual/range {p0 .. p0}, isAssistBlocked()Z

    move-result v14

    if-nez v14, :cond_cb

    .line 3205
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewStructure;->getChildCount()I

    move-result v14

    if-nez v14, :cond_cb

    .line 3206
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v4

    .line 3207
    .local v4, "childrenCount":I
    if-lez v4, :cond_cb

    .line 3208
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 3209
    invoke-virtual/range {p0 .. p0}, buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v12

    .line 3210
    .local v12, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v12, :cond_46

    invoke-virtual/range {p0 .. p0}, isChildrenDrawingOrderEnabled()Z

    move-result v14

    if-eqz v14, :cond_46

    const/4 v6, 0x1

    .line 3212
    .local v6, "customOrder":Z
    :goto_27
    move-object/from16 v0, p0

    iget-object v3, v0, mChildren:[Landroid/view/View;

    .line 3213
    .local v3, "children":[Landroid/view/View;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2c
    if-ge v8, v4, :cond_cb

    .line 3216
    if-eqz v6, :cond_48

    :try_start_30
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, getChildDrawingOrder(II)I
    :try_end_35
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_30 .. :try_end_35} :catch_4a

    move-result v2

    .line 3261
    .local v2, "childIndex":I
    :cond_36
    :goto_36
    if-nez v12, :cond_c2

    aget-object v1, v3, v2

    .line 3263
    .local v1, "child":Landroid/view/View;
    :goto_3a
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v5

    .line 3264
    .local v5, "cstructure":Landroid/view/ViewStructure;
    invoke-virtual {v1, v5}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    .line 3213
    add-int/lit8 v8, v8, 0x1

    goto :goto_2c

    .line 3210
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childIndex":I
    .end local v3    # "children":[Landroid/view/View;
    .end local v5    # "cstructure":Landroid/view/ViewStructure;
    .end local v6    # "customOrder":Z
    .end local v8    # "i":I
    :cond_46
    const/4 v6, 0x0

    goto :goto_27

    .restart local v3    # "children":[Landroid/view/View;
    .restart local v6    # "customOrder":Z
    .restart local v8    # "i":I
    :cond_48
    move v2, v8

    .line 3216
    goto :goto_36

    .line 3217
    :catch_4a
    move-exception v7

    .line 3218
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    move v2, v8

    .line 3219
    .restart local v2    # "childIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v15, 0x17

    if-ge v14, v15, :cond_c1

    .line 3221
    const-string v14, "ViewGroup"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bad getChildDrawingOrder while collecting assist @ "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3226
    const/4 v6, 0x0

    .line 3227
    if-lez v8, :cond_36

    .line 3234
    new-array v11, v4, [I

    .line 3235
    .local v11, "permutation":[I
    new-instance v13, Landroid/util/SparseBooleanArray;

    invoke-direct {v13}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 3237
    .local v13, "usedIndices":Landroid/util/SparseBooleanArray;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_87
    if-ge v9, v8, :cond_9a

    .line 3238
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, getChildDrawingOrder(II)I

    move-result v14

    aput v14, v11, v9

    .line 3239
    aget v14, v11, v9

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3237
    add-int/lit8 v9, v9, 0x1

    goto :goto_87

    .line 3243
    :cond_9a
    const/4 v10, 0x0

    .line 3244
    .local v10, "nextIndex":I
    move v9, v8

    :goto_9c
    if-ge v9, v4, :cond_af

    .line 3245
    :goto_9e
    const/4 v14, 0x0

    invoke-virtual {v13, v10, v14}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v14

    if-eqz v14, :cond_a8

    .line 3246
    add-int/lit8 v10, v10, 0x1

    goto :goto_9e

    .line 3248
    :cond_a8
    aput v10, v11, v9

    .line 3249
    add-int/lit8 v10, v10, 0x1

    .line 3244
    add-int/lit8 v9, v9, 0x1

    goto :goto_9c

    .line 3252
    :cond_af
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3253
    .restart local v12    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v9, 0x0

    :goto_b5
    if-ge v9, v4, :cond_36

    .line 3254
    aget v14, v11, v9

    aget-object v14, v3, v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3253
    add-int/lit8 v9, v9, 0x1

    goto :goto_b5

    .line 3258
    .end local v9    # "j":I
    .end local v10    # "nextIndex":I
    .end local v11    # "permutation":[I
    .end local v13    # "usedIndices":Landroid/util/SparseBooleanArray;
    :cond_c1
    throw v7

    .line 3261
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_c2
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    move-object v1, v14

    goto/16 :goto_3a

    .line 3269
    .end local v2    # "childIndex":I
    .end local v3    # "children":[Landroid/view/View;
    .end local v4    # "childrenCount":I
    .end local v6    # "customOrder":Z
    .end local v8    # "i":I
    .end local v12    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_cb
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/high16 v5, 0x20000000

    .line 3430
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 3431
    iget v2, p0, mChildrenCount:I

    .line 3432
    .local v2, "count":I
    iget-object v1, p0, mChildren:[Landroid/view/View;

    .line 3433
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v2, :cond_19

    .line 3434
    aget-object v0, v1, v3

    .line 3435
    .local v0, "c":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_16

    .line 3436
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 3433
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 3439
    .end local v0    # "c":Landroid/view/View;
    :cond_19
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/high16 v5, 0x20000000

    .line 3402
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 3403
    iget v2, p0, mChildrenCount:I

    .line 3404
    .local v2, "count":I
    iget-object v1, p0, mChildren:[Landroid/view/View;

    .line 3405
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v2, :cond_19

    .line 3406
    aget-object v0, v1, v3

    .line 3407
    .local v0, "c":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_16

    .line 3408
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 3405
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 3411
    .end local v0    # "c":Landroid/view/View;
    :cond_19
    return-void
.end method

.method dispatchScreenStateChanged(I)V
    .registers 6
    .param p1, "screenState"    # I

    .prologue
    .line 3159
    invoke-super {p0, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 3161
    iget v1, p0, mChildrenCount:I

    .line 3162
    .local v1, "count":I
    iget-object v0, p0, mChildren:[Landroid/view/View;

    .line 3163
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 3164
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 3163
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3166
    :cond_12
    return-void
.end method

.method public dispatchSetActivated(Z)V
    .registers 6
    .param p1, "activated"    # Z

    .prologue
    .line 4026
    iget-object v0, p0, mChildren:[Landroid/view/View;

    .line 4027
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, mChildrenCount:I

    .line 4028
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_f

    .line 4029
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setActivated(Z)V

    .line 4028
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4031
    :cond_f
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .registers 7
    .param p1, "pressed"    # Z

    .prologue
    .line 4035
    iget-object v1, p0, mChildren:[Landroid/view/View;

    .line 4036
    .local v1, "children":[Landroid/view/View;
    iget v2, p0, mChildrenCount:I

    .line 4037
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-ge v3, v2, :cond_1d

    .line 4038
    aget-object v0, v1, v3

    .line 4042
    .local v0, "child":Landroid/view/View;
    if-eqz p1, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 4043
    :cond_17
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 4037
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 4046
    .end local v0    # "child":Landroid/view/View;
    :cond_1d
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .registers 6
    .param p1, "selected"    # Z

    .prologue
    .line 4014
    iget-object v0, p0, mChildren:[Landroid/view/View;

    .line 4015
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, mChildrenCount:I

    .line 4016
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_f

    .line 4017
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    .line 4016
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4019
    :cond_f
    return-void
.end method

.method protected dispatchSipResizeAnimationState(Z)Z
    .registers 7
    .param p1, "isStart"    # Z

    .prologue
    .line 8222
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 8223
    .local v1, "count":I
    const/4 v3, 0x0

    .line 8224
    .local v3, "isConsumed":Z
    const/4 v0, 0x0

    .line 8226
    .local v0, "childView":Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_19

    .line 8227
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8228
    if-eqz v0, :cond_17

    .line 8229
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchSipResizeAnimationState(Z)Z

    move-result v3

    .line 8230
    :cond_17
    if-eqz v3, :cond_1b

    .line 8234
    :cond_19
    const/4 v4, 0x0

    return v4

    .line 8226
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method public dispatchStartTemporaryDetach()V
    .registers 5

    .prologue
    .line 3108
    invoke-super {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 3109
    iget v1, p0, mChildrenCount:I

    .line 3110
    .local v1, "count":I
    iget-object v0, p0, mChildren:[Landroid/view/View;

    .line 3111
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 3112
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 3111
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3114
    :cond_12
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .registers 6
    .param p1, "visible"    # I

    .prologue
    .line 1666
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1668
    iget v2, p0, mChildrenCount:I

    .line 1669
    .local v2, "count":I
    iget-object v1, p0, mChildren:[Landroid/view/View;

    .line 1670
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v2, :cond_12

    .line 1671
    aget-object v0, v1, v3

    .line 1672
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1670
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1674
    .end local v0    # "child":Landroid/view/View;
    :cond_12
    return-void
.end method

.method protected dispatchThawSelfOnly(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3450
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 3451
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 36
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2231
    move-object/from16 v0, p0

    iget-object v0, v0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v31, v0

    if-eqz v31, :cond_19

    .line 2232
    move-object/from16 v0, p0

    iget-object v0, v0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 2237
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isTargetAccessibilityFocus()Z

    move-result v31

    if-eqz v31, :cond_2e

    invoke-virtual/range {p0 .. p0}, isAccessibilityFocusedViewOrHost()Z

    move-result v31

    if-eqz v31, :cond_2e

    .line 2238
    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 2345
    :cond_2e
    const/16 v17, 0x0

    .line 2346
    .local v17, "handled":Z
    invoke-virtual/range {p0 .. p1}, onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v31

    if-eqz v31, :cond_24b

    .line 2347
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 2348
    .local v4, "action":I
    and-int/lit16 v6, v4, 0xff

    .line 2351
    .local v6, "actionMasked":I
    if-eqz v6, :cond_44

    const/16 v31, 0xd3

    move/from16 v0, v31

    if-ne v6, v0, :cond_4a

    .line 2355
    :cond_44
    invoke-direct/range {p0 .. p1}, cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 2356
    invoke-direct/range {p0 .. p0}, resetTouchState()V

    .line 2361
    :cond_4a
    if-eqz v6, :cond_5a

    const/16 v31, 0xd3

    move/from16 v0, v31

    if-eq v6, v0, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v31, v0

    if-eqz v31, :cond_125

    .line 2364
    :cond_5a
    move-object/from16 v0, p0

    iget v0, v0, mGroupFlags:I

    move/from16 v31, v0

    const/high16 v32, 0x80000

    and-int v31, v31, v32

    if-eqz v31, :cond_11d

    const/16 v16, 0x1

    .line 2365
    .local v16, "disallowIntercept":Z
    :goto_68
    if-nez v16, :cond_121

    .line 2366
    invoke-virtual/range {p0 .. p1}, onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    .line 2367
    .local v21, "intercepted":Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2379
    .end local v16    # "disallowIntercept":Z
    :goto_73
    if-nez v21, :cond_7d

    move-object/from16 v0, p0

    iget-object v0, v0, mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v31, v0

    if-eqz v31, :cond_86

    .line 2380
    :cond_7d
    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 2384
    :cond_86
    invoke-static/range {p0 .. p0}, resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v31

    if-nez v31, :cond_92

    const/16 v31, 0x3

    move/from16 v0, v31

    if-ne v6, v0, :cond_129

    :cond_92
    const/4 v9, 0x1

    .line 2388
    .local v9, "canceled":Z
    :goto_93
    move-object/from16 v0, p0

    iget v0, v0, mGroupFlags:I

    move/from16 v31, v0

    const/high16 v32, 0x200000

    and-int v31, v31, v32

    if-eqz v31, :cond_12c

    const/16 v27, 0x1

    .line 2389
    .local v27, "split":Z
    :goto_a1
    const/16 v23, 0x0

    .line 2390
    .local v23, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    const/4 v7, 0x0

    .line 2391
    .local v7, "alreadyDispatchedToNewTouchTarget":Z
    if-nez v9, :cond_21c

    if-nez v21, :cond_21c

    .line 2398
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isTargetAccessibilityFocus()Z

    move-result v31

    if-eqz v31, :cond_130

    invoke-direct/range {p0 .. p0}, findChildWithAccessibilityFocus()Landroid/view/View;

    move-result-object v12

    .line 2401
    .local v12, "childWithAccessibilityFocus":Landroid/view/View;
    :goto_b2
    if-eqz v6, :cond_c8

    const/16 v31, 0xd3

    move/from16 v0, v31

    if-eq v6, v0, :cond_c8

    if-eqz v27, :cond_c2

    const/16 v31, 0x5

    move/from16 v0, v31

    if-eq v6, v0, :cond_c8

    :cond_c2
    const/16 v31, 0x7

    move/from16 v0, v31

    if-ne v6, v0, :cond_21c

    .line 2405
    :cond_c8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 2406
    .local v5, "actionIndex":I
    if-eqz v27, :cond_132

    const/16 v31, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v32

    shl-int v19, v31, v32

    .line 2411
    .local v19, "idBitsToAssign":I
    :goto_d8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, removePointersFromTouchTargets(I)V

    .line 2413
    move-object/from16 v0, p0

    iget v14, v0, mChildrenCount:I

    .line 2414
    .local v14, "childrenCount":I
    if-nez v23, :cond_183

    if-eqz v14, :cond_183

    .line 2415
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v29

    .line 2416
    .local v29, "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v30

    .line 2419
    .local v30, "y":F
    invoke-virtual/range {p0 .. p0}, buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v26

    .line 2420
    .local v26, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v26, :cond_135

    invoke-virtual/range {p0 .. p0}, isChildrenDrawingOrderEnabled()Z

    move-result v31

    if-eqz v31, :cond_135

    const/4 v15, 0x1

    .line 2422
    .local v15, "customOrder":Z
    :goto_100
    move-object/from16 v0, p0

    iget-object v13, v0, mChildren:[Landroid/view/View;

    .line 2423
    .local v13, "children":[Landroid/view/View;
    add-int/lit8 v18, v14, -0x1

    .local v18, "i":I
    :goto_106
    if-ltz v18, :cond_17e

    .line 2424
    if-eqz v15, :cond_137

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, getChildDrawingOrder(II)I

    move-result v11

    .line 2426
    .local v11, "childIndex":I
    :goto_112
    if-nez v26, :cond_13a

    aget-object v10, v13, v11

    .line 2433
    .local v10, "child":Landroid/view/View;
    :goto_116
    if-eqz v12, :cond_148

    .line 2434
    if-eq v12, v10, :cond_145

    .line 2423
    :goto_11a
    add-int/lit8 v18, v18, -0x1

    goto :goto_106

    .line 2364
    .end local v5    # "actionIndex":I
    .end local v7    # "alreadyDispatchedToNewTouchTarget":Z
    .end local v9    # "canceled":Z
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "childIndex":I
    .end local v12    # "childWithAccessibilityFocus":Landroid/view/View;
    .end local v13    # "children":[Landroid/view/View;
    .end local v14    # "childrenCount":I
    .end local v15    # "customOrder":Z
    .end local v18    # "i":I
    .end local v19    # "idBitsToAssign":I
    .end local v21    # "intercepted":Z
    .end local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .end local v26    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v27    # "split":Z
    .end local v29    # "x":F
    .end local v30    # "y":F
    :cond_11d
    const/16 v16, 0x0

    goto/16 :goto_68

    .line 2369
    .restart local v16    # "disallowIntercept":Z
    :cond_121
    const/16 v21, 0x0

    .restart local v21    # "intercepted":Z
    goto/16 :goto_73

    .line 2374
    .end local v16    # "disallowIntercept":Z
    .end local v21    # "intercepted":Z
    :cond_125
    const/16 v21, 0x1

    .restart local v21    # "intercepted":Z
    goto/16 :goto_73

    .line 2384
    :cond_129
    const/4 v9, 0x0

    goto/16 :goto_93

    .line 2388
    .restart local v9    # "canceled":Z
    :cond_12c
    const/16 v27, 0x0

    goto/16 :goto_a1

    .line 2398
    .restart local v7    # "alreadyDispatchedToNewTouchTarget":Z
    .restart local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .restart local v27    # "split":Z
    :cond_130
    const/4 v12, 0x0

    goto :goto_b2

    .line 2406
    .restart local v5    # "actionIndex":I
    .restart local v12    # "childWithAccessibilityFocus":Landroid/view/View;
    :cond_132
    const/16 v19, -0x1

    goto :goto_d8

    .line 2420
    .restart local v14    # "childrenCount":I
    .restart local v19    # "idBitsToAssign":I
    .restart local v26    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v29    # "x":F
    .restart local v30    # "y":F
    :cond_135
    const/4 v15, 0x0

    goto :goto_100

    .restart local v13    # "children":[Landroid/view/View;
    .restart local v15    # "customOrder":Z
    .restart local v18    # "i":I
    :cond_137
    move/from16 v11, v18

    .line 2424
    goto :goto_112

    .line 2426
    .restart local v11    # "childIndex":I
    :cond_13a
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/View;

    move-object/from16 v10, v31

    goto :goto_116

    .line 2437
    .restart local v10    # "child":Landroid/view/View;
    :cond_145
    const/4 v12, 0x0

    .line 2438
    add-int/lit8 v18, v14, -0x1

    .line 2441
    :cond_148
    invoke-static {v10}, canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v31

    if-eqz v31, :cond_15e

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v10, v3}, isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v31

    if-nez v31, :cond_168

    .line 2443
    :cond_15e
    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    goto :goto_11a

    .line 2447
    :cond_168
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v23

    .line 2448
    if-eqz v23, :cond_1a2

    .line 2451
    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v31, v0

    or-int v31, v31, v19

    move/from16 v0, v31

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 2481
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "childIndex":I
    :cond_17e
    :goto_17e
    if-eqz v26, :cond_183

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 2484
    .end local v13    # "children":[Landroid/view/View;
    .end local v15    # "customOrder":Z
    .end local v18    # "i":I
    .end local v26    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v29    # "x":F
    .end local v30    # "y":F
    :cond_183
    if-nez v23, :cond_21c

    move-object/from16 v0, p0

    iget-object v0, v0, mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v31, v0

    if-eqz v31, :cond_21c

    .line 2487
    move-object/from16 v0, p0

    iget-object v0, v0, mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v23, v0

    .line 2488
    :goto_193
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v31, v0

    if-eqz v31, :cond_20e

    .line 2489
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v23, v0

    goto :goto_193

    .line 2455
    .restart local v10    # "child":Landroid/view/View;
    .restart local v11    # "childIndex":I
    .restart local v13    # "children":[Landroid/view/View;
    .restart local v15    # "customOrder":Z
    .restart local v18    # "i":I
    .restart local v26    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v29    # "x":F
    .restart local v30    # "y":F
    :cond_1a2
    invoke-static {v10}, resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2456
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v10, v3}, dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v31

    if-eqz v31, :cond_203

    .line 2458
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, mLastTouchDownTime:J

    .line 2459
    if-eqz v26, :cond_1fe

    .line 2461
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_1c3
    move/from16 v0, v22

    if-ge v0, v14, :cond_1dd

    .line 2462
    aget-object v31, v13, v11

    move-object/from16 v0, p0

    iget-object v0, v0, mChildren:[Landroid/view/View;

    move-object/from16 v32, v0

    aget-object v32, v32, v22

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_1fb

    .line 2463
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mLastTouchDownIndex:I

    .line 2470
    .end local v22    # "j":I
    :cond_1dd
    :goto_1dd
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, mLastTouchDownX:F

    .line 2471
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, mLastTouchDownY:F

    .line 2472
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v10, v1}, addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v23

    .line 2473
    const/4 v7, 0x1

    .line 2474
    goto :goto_17e

    .line 2461
    .restart local v22    # "j":I
    :cond_1fb
    add-int/lit8 v22, v22, 0x1

    goto :goto_1c3

    .line 2468
    .end local v22    # "j":I
    :cond_1fe
    move-object/from16 v0, p0

    iput v11, v0, mLastTouchDownIndex:I

    goto :goto_1dd

    .line 2479
    :cond_203
    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    goto/16 :goto_11a

    .line 2491
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "childIndex":I
    .end local v13    # "children":[Landroid/view/View;
    .end local v15    # "customOrder":Z
    .end local v18    # "i":I
    .end local v26    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v29    # "x":F
    .end local v30    # "y":F
    :cond_20e
    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v31, v0

    or-int v31, v31, v19

    move/from16 v0, v31

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 2497
    .end local v5    # "actionIndex":I
    .end local v12    # "childWithAccessibilityFocus":Landroid/view/View;
    .end local v14    # "childrenCount":I
    .end local v19    # "idBitsToAssign":I
    :cond_21c
    move-object/from16 v0, p0

    iget-object v0, v0, mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v31, v0

    if-nez v31, :cond_267

    .line 2499
    const/16 v31, 0x0

    const/16 v32, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v9, v2, v3}, dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v17

    .line 2538
    :cond_234
    if-nez v9, :cond_248

    const/16 v31, 0x1

    move/from16 v0, v31

    if-eq v6, v0, :cond_248

    const/16 v31, 0xd4

    move/from16 v0, v31

    if-eq v6, v0, :cond_248

    const/16 v31, 0x7

    move/from16 v0, v31

    if-ne v6, v0, :cond_2da

    .line 2542
    :cond_248
    invoke-direct/range {p0 .. p0}, resetTouchState()V

    .line 2550
    .end local v4    # "action":I
    .end local v6    # "actionMasked":I
    .end local v7    # "alreadyDispatchedToNewTouchTarget":Z
    .end local v9    # "canceled":Z
    .end local v21    # "intercepted":Z
    .end local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .end local v27    # "split":Z
    :cond_24b
    :goto_24b
    if-nez v17, :cond_266

    move-object/from16 v0, p0

    iget-object v0, v0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v31, v0

    if-eqz v31, :cond_266

    .line 2551
    move-object/from16 v0, p0

    iget-object v0, v0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 2553
    :cond_266
    return v17

    .line 2504
    .restart local v4    # "action":I
    .restart local v6    # "actionMasked":I
    .restart local v7    # "alreadyDispatchedToNewTouchTarget":Z
    .restart local v9    # "canceled":Z
    .restart local v21    # "intercepted":Z
    .restart local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .restart local v27    # "split":Z
    :cond_267
    const/16 v25, 0x0

    .line 2505
    .local v25, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    move-object/from16 v0, p0

    iget-object v0, v0, mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v28, v0

    .line 2506
    .local v28, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_26f
    if-eqz v28, :cond_234

    .line 2507
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v24, v0

    .line 2508
    .local v24, "next":Landroid/view/ViewGroup$TouchTarget;
    if-eqz v7, :cond_286

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_286

    .line 2509
    const/16 v17, 0x1

    .line 2532
    :cond_281
    :goto_281
    move-object/from16 v25, v28

    .line 2533
    move-object/from16 v28, v24

    .line 2534
    goto :goto_26f

    .line 2511
    :cond_286
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2d2

    .line 2512
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v31

    if-nez v31, :cond_29c

    if-eqz v21, :cond_2c9

    :cond_29c
    const/4 v8, 0x1

    .line 2514
    .local v8, "cancelChild":Z
    :goto_29d
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    move-object/from16 v31, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v8, v2, v3}, dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v31

    if-eqz v31, :cond_2b9

    .line 2516
    const/16 v17, 0x1

    .line 2518
    :cond_2b9
    if-eqz v8, :cond_281

    .line 2519
    if-nez v25, :cond_2cb

    .line 2520
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2524
    :goto_2c3
    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2525
    move-object/from16 v28, v24

    .line 2526
    goto :goto_26f

    .line 2512
    .end local v8    # "cancelChild":Z
    :cond_2c9
    const/4 v8, 0x0

    goto :goto_29d

    .line 2522
    .restart local v8    # "cancelChild":Z
    :cond_2cb
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_2c3

    .line 2529
    .end local v8    # "cancelChild":Z
    :cond_2d2
    const-string v31, "ViewGroup"

    const-string v32, "Skip dispatching event because target.child is null."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_281

    .line 2543
    .end local v24    # "next":Landroid/view/ViewGroup$TouchTarget;
    .end local v25    # "predecessor":Landroid/view/ViewGroup$TouchTarget;
    .end local v28    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_2da
    if-eqz v27, :cond_24b

    const/16 v31, 0x6

    move/from16 v0, v31

    if-ne v6, v0, :cond_24b

    .line 2544
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 2545
    .restart local v5    # "actionIndex":I
    const/16 v31, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v32

    shl-int v20, v31, v32

    .line 2546
    .local v20, "idBitsToRemove":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, removePointersFromTouchTargets(I)V

    goto/16 :goto_24b
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 1770
    iget-object v1, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_a

    .line 1771
    iget-object v1, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 1774
    :cond_a
    iget v1, p0, mPrivateFlags:I

    and-int/lit8 v1, v1, 0x12

    const/16 v2, 0x12

    if-ne v1, v2, :cond_19

    .line 1776
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1789
    :cond_18
    :goto_18
    return v0

    .line 1779
    :cond_19
    iget-object v1, p0, mFocused:Landroid/view/View;

    if-eqz v1, :cond_2f

    iget-object v1, p0, mFocused:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2f

    .line 1781
    iget-object v1, p0, mFocused:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1786
    :cond_2f
    iget-object v1, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_38

    .line 1787
    iget-object v1, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1789
    :cond_38
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 4
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 966
    iget-object v0, p0, mFocused:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, mFocused:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method dispatchViewAdded(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4547
    invoke-virtual {p0, p1}, onViewAdded(Landroid/view/View;)V

    .line 4548
    iget-object v0, p0, mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_c

    .line 4549
    iget-object v0, p0, mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 4551
    :cond_c
    return-void
.end method

.method dispatchViewRemoved(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4563
    invoke-virtual {p0, p1}, onViewRemoved(Landroid/view/View;)V

    .line 4564
    iget-object v0, p0, mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_c

    .line 4565
    iget-object v0, p0, mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 4567
    :cond_c
    return-void
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .registers 7
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 1308
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 1309
    iget v1, p0, mChildrenCount:I

    .line 1310
    .local v1, "count":I
    iget-object v0, p0, mChildren:[Landroid/view/View;

    .line 1311
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_16

    .line 1312
    aget-object v3, v0, v2

    if-eqz v3, :cond_13

    .line 1313
    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 1311
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1316
    :cond_16
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .registers 6
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1216
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 1217
    iget v1, p0, mChildrenCount:I

    .line 1218
    .local v1, "count":I
    iget-object v0, p0, mChildren:[Landroid/view/View;

    .line 1219
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 1220
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 1219
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1222
    :cond_12
    return-void
.end method

.method public dispatchWindowSystemUiVisiblityChanged(I)V
    .registers 6
    .param p1, "visible"    # I

    .prologue
    .line 1654
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1656
    iget v2, p0, mChildrenCount:I

    .line 1657
    .local v2, "count":I
    iget-object v1, p0, mChildren:[Landroid/view/View;

    .line 1658
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v2, :cond_12

    .line 1659
    aget-object v0, v1, v3

    .line 1660
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1658
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1662
    .end local v0    # "child":Landroid/view/View;
    :cond_12
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .registers 6
    .param p1, "visibility"    # I

    .prologue
    .line 1323
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1324
    iget v1, p0, mChildrenCount:I

    .line 1325
    .local v1, "count":I
    iget-object v0, p0, mChildren:[Landroid/view/View;

    .line 1326
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_16

    .line 1327
    aget-object v3, v0, v2

    if-eqz v3, :cond_13

    .line 1328
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1326
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1331
    :cond_16
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 3921
    invoke-virtual {p2, p1, p0, p3, p4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .registers 7

    .prologue
    .line 6672
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 6674
    iget v4, p0, mGroupFlags:I

    const/high16 v5, 0x10000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2e

    .line 6675
    iget v4, p0, mGroupFlags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_18

    .line 6676
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "addStateFromChildren cannot be enabled if a child has duplicateParentState set to true"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6680
    :cond_18
    iget-object v1, p0, mChildren:[Landroid/view/View;

    .line 6681
    .local v1, "children":[Landroid/view/View;
    iget v2, p0, mChildrenCount:I

    .line 6683
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    if-ge v3, v2, :cond_2e

    .line 6684
    aget-object v0, v1, v3

    .line 6685
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x400000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2b

    .line 6686
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 6683
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 6690
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "children":[Landroid/view/View;
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_2e
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 6
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 8161
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 8163
    const-string v2, "focus:descendantFocusability"

    invoke-virtual {p0}, getDescendantFocusability()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 8164
    const-string v2, "drawing:clipChildren"

    invoke-virtual {p0}, getClipChildren()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 8165
    const-string v2, "drawing:clipToPadding"

    invoke-virtual {p0}, getClipToPadding()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 8166
    const-string v2, "drawing:childrenDrawingOrderEnabled"

    invoke-virtual {p0}, isChildrenDrawingOrderEnabled()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 8167
    const-string v2, "drawing:persistentDrawingCache"

    invoke-virtual {p0}, getPersistentDrawingCache()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 8169
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 8170
    .local v1, "n":I
    const-string/jumbo v2, "meta:__childCount__"

    int-to-short v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;S)V

    .line 8171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3c
    if-ge v0, v1, :cond_5f

    .line 8172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "meta:__child__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    .line 8173
    invoke-virtual {p0, v0}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 8171
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 8175
    :cond_5f
    return-void
.end method

.method public endViewTransition(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6531
    iget-object v1, p0, mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_2a

    .line 6532
    iget-object v1, p0, mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6533
    iget-object v0, p0, mDisappearingChildren:Ljava/util/ArrayList;

    .line 6534
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_2a

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 6535
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6536
    iget-object v1, p0, mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_2b

    iget-object v1, p0, mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 6538
    iget-object v1, p0, mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6547
    :cond_27
    :goto_27
    invoke-virtual {p0}, invalidate()V

    .line 6550
    .end local v0    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2a
    return-void

    .line 6540
    .restart local v0    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2b
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_32

    .line 6541
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 6543
    :cond_32
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_27

    .line 6544
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_27
.end method

.method public findFocus()Landroid/view/View;
    .registers 2

    .prologue
    .line 1060
    invoke-virtual {p0}, isFocused()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1067
    .end local p0    # "this":Landroid/view/ViewGroup;
    :goto_6
    return-object p0

    .line 1064
    .restart local p0    # "this":Landroid/view/ViewGroup;
    :cond_7
    iget-object v0, p0, mFocused:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 1065
    iget-object v0, p0, mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p0

    goto :goto_6

    .line 1067
    :cond_12
    const/4 p0, 0x0

    goto :goto_6
.end method

.method findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;
    .registers 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "outLocalPoint"    # Landroid/graphics/PointF;

    .prologue
    .line 1562
    iget v2, p0, mChildrenCount:I

    .line 1563
    .local v2, "count":I
    iget-object v1, p0, mChildren:[Landroid/view/View;

    .line 1564
    .local v1, "children":[Landroid/view/View;
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_6
    if-ltz v3, :cond_1a

    .line 1565
    aget-object v0, v1, v3

    .line 1566
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->canAcceptDrag()Z

    move-result v4

    if-nez v4, :cond_13

    .line 1564
    :cond_10
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 1570
    :cond_13
    invoke-virtual {p0, p1, p2, v0, p3}, isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1574
    .end local v0    # "child":Landroid/view/View;
    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public findNamedViews(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7107
    .local p1, "namedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, getVisibility()I

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, mGhostView:Landroid/view/GhostView;

    if-nez v3, :cond_b

    .line 7116
    :cond_a
    return-void

    .line 7110
    :cond_b
    invoke-super {p0, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 7111
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 7112
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_a

    .line 7113
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7114
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 7112
    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .registers 9
    .param p1, "accessibilityId"    # I

    .prologue
    const/4 v5, 0x0

    .line 1189
    invoke-super {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v3

    .line 1190
    .local v3, "foundView":Landroid/view/View;
    if-eqz v3, :cond_9

    move-object v5, v3

    .line 1208
    :cond_8
    :goto_8
    return-object v5

    .line 1194
    :cond_9
    invoke-virtual {p0}, getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v6

    if-nez v6, :cond_8

    .line 1198
    iget v2, p0, mChildrenCount:I

    .line 1199
    .local v2, "childrenCount":I
    iget-object v1, p0, mChildren:[Landroid/view/View;

    .line 1200
    .local v1, "children":[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-ge v4, v2, :cond_8

    .line 1201
    aget-object v0, v1, v4

    .line 1202
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v3

    .line 1203
    if-eqz v3, :cond_20

    move-object v5, v3

    .line 1204
    goto :goto_8

    .line 1200
    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_14
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 8
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 4230
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-interface {p1, p0}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4249
    .end local p0    # "this":Landroid/view/ViewGroup;
    :goto_6
    return-object p0

    .line 4234
    .restart local p0    # "this":Landroid/view/ViewGroup;
    :cond_7
    iget-object v3, p0, mChildren:[Landroid/view/View;

    .line 4235
    .local v3, "where":[Landroid/view/View;
    iget v1, p0, mChildrenCount:I

    .line 4237
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v1, :cond_23

    .line 4238
    aget-object v2, v3, v0

    .line 4240
    .local v2, "v":Landroid/view/View;
    if-eq v2, p2, :cond_20

    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_20

    .line 4241
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 4243
    if-eqz v2, :cond_20

    move-object p0, v2

    .line 4244
    goto :goto_6

    .line 4237
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 4249
    .end local v2    # "v":Landroid/view/View;
    :cond_23
    const/4 p0, 0x0

    goto :goto_6
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .registers 11
    .param p1, "id"    # I

    .prologue
    const/4 v8, -0x1

    .line 4145
    iget v5, p0, mID:I

    if-ne p1, v5, :cond_6

    .line 4195
    .end local p0    # "this":Landroid/view/ViewGroup;
    :cond_5
    :goto_5
    return-object p0

    .line 4149
    .restart local p0    # "this":Landroid/view/ViewGroup;
    :cond_6
    iget-object v4, p0, mChildren:[Landroid/view/View;

    .line 4150
    .local v4, "where":[Landroid/view/View;
    iget v1, p0, mChildrenCount:I

    .line 4152
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v1, :cond_22

    .line 4153
    aget-object v3, v4, v0

    .line 4155
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_1f

    iget v5, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_1f

    .line 4156
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 4158
    if-eqz v3, :cond_1f

    move-object p0, v3

    .line 4159
    goto :goto_5

    .line 4152
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 4166
    .end local v3    # "v":Landroid/view/View;
    :cond_22
    const/4 v2, -0x1

    .line 4168
    .local v2, "overlayID":I
    const/high16 v5, -0x1000000

    and-int/2addr v5, p1

    const/high16 v6, 0x1000000

    if-eq v5, v6, :cond_5e

    .line 4169
    iget-object v5, p0, mContext:Landroid/content/Context;

    if-eqz v5, :cond_5e

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5e

    .line 4170
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->getOverlayID(I)I

    move-result v2

    .line 4171
    if-eq v2, v8, :cond_5e

    .line 4172
    const-string v5, "ViewGroup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Overriding ID from overlay package = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4176
    :cond_5e
    if-eq v2, v8, :cond_7a

    .line 4177
    iget v5, p0, mID:I

    if-eq v2, v5, :cond_5

    .line 4180
    const/4 v0, 0x0

    :goto_65
    if-ge v0, v1, :cond_7a

    .line 4181
    aget-object v3, v4, v0

    .line 4183
    .restart local v3    # "v":Landroid/view/View;
    iget v5, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_77

    .line 4184
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 4186
    if-eqz v3, :cond_77

    move-object p0, v3

    .line 4187
    goto :goto_5

    .line 4180
    :cond_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 4195
    .end local v3    # "v":Landroid/view/View;
    :cond_7a
    const/4 p0, 0x0

    goto :goto_5
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .registers 7
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 4203
    if-eqz p1, :cond_b

    iget-object v4, p0, mTag:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4222
    .end local p0    # "this":Landroid/view/ViewGroup;
    :goto_a
    return-object p0

    .line 4207
    .restart local p0    # "this":Landroid/view/ViewGroup;
    :cond_b
    iget-object v3, p0, mChildren:[Landroid/view/View;

    .line 4208
    .local v3, "where":[Landroid/view/View;
    iget v1, p0, mChildrenCount:I

    .line 4210
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-ge v0, v1, :cond_25

    .line 4211
    aget-object v2, v3, v0

    .line 4213
    .local v2, "v":Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_22

    .line 4214
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 4216
    if-eqz v2, :cond_22

    move-object p0, v2

    .line 4217
    goto :goto_a

    .line 4210
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 4222
    .end local v2    # "v":Landroid/view/View;
    :cond_25
    const/4 p0, 0x0

    goto :goto_a
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .registers 9
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1174
    .local p1, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 1175
    iget v2, p0, mChildrenCount:I

    .line 1176
    .local v2, "childrenCount":I
    iget-object v1, p0, mChildren:[Landroid/view/View;

    .line 1177
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v2, :cond_1e

    .line 1178
    aget-object v0, v1, v3

    .line 1179
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_1b

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1b

    .line 1181
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 1177
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1184
    .end local v0    # "child":Landroid/view/View;
    :cond_1e
    return-void
.end method

.method finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/high16 v2, 0x10000

    .line 6462
    iget-object v0, p0, mDisappearingChildren:Ljava/util/ArrayList;

    .line 6463
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1f

    .line 6464
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 6465
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6467
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_16

    .line 6468
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 6471
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 6472
    iget v1, p0, mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, mGroupFlags:I

    .line 6476
    :cond_1f
    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 6477
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 6480
    :cond_2a
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_40

    .line 6481
    invoke-virtual {p1}, Landroid/view/View;->onAnimationEnd()V

    .line 6484
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/View;->mPrivateFlags:I

    .line 6486
    iget v1, p0, mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, mGroupFlags:I

    .line 6488
    :cond_40
    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 4
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 865
    invoke-virtual {p0}, isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 869
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 873
    :goto_e
    return-object v0

    .line 870
    :cond_f
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1a

    .line 871
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_e

    .line 873
    :cond_1a
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 764
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_2b

    invoke-virtual {p0}, isFocusableInTouchMode()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, shouldBlockFocusForTouchscreen()Z

    move-result v0

    if-nez v0, :cond_2b

    :cond_18
    invoke-virtual {p0}, isFocused()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x40000

    if-ne v0, v1, :cond_2b

    .line 777
    :cond_26
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 779
    :cond_2b
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 11
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 6613
    iget v8, p0, mPrivateFlags:I

    and-int/lit16 v8, v8, 0x200

    if-nez v8, :cond_e

    move v4, v7

    .line 6614
    .local v4, "meOpaque":Z
    :goto_9
    if-eqz v4, :cond_10

    if-nez p1, :cond_10

    .line 6630
    :goto_d
    return v7

    .end local v4    # "meOpaque":Z
    :cond_e
    move v4, v6

    .line 6613
    goto :goto_9

    .line 6618
    .restart local v4    # "meOpaque":Z
    :cond_10
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 6619
    iget-object v1, p0, mChildren:[Landroid/view/View;

    .line 6620
    .local v1, "children":[Landroid/view/View;
    iget v2, p0, mChildrenCount:I

    .line 6621
    .local v2, "count":I
    const/4 v5, 0x1

    .line 6622
    .local v5, "noneOfTheChildrenAreTransparent":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    if-ge v3, v2, :cond_33

    .line 6623
    aget-object v0, v1, v3

    .line 6624
    .local v0, "child":Landroid/view/View;
    iget v8, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v8, v8, 0xc

    if-eqz v8, :cond_29

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-eqz v8, :cond_30

    .line 6625
    :cond_29
    invoke-virtual {v0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v8

    if-nez v8, :cond_30

    .line 6626
    const/4 v5, 0x0

    .line 6622
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 6630
    .end local v0    # "child":Landroid/view/View;
    :cond_33
    if-nez v4, :cond_37

    if-eqz v5, :cond_38

    :cond_37
    move v6, v7

    :cond_38
    move v7, v6

    goto :goto_d
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 6183
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 6154
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 6172
    return-object p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 3297
    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 6253
    if-ltz p1, :cond_6

    iget v0, p0, mChildrenCount:I

    if-lt p1, v0, :cond_8

    .line 6254
    :cond_6
    const/4 v0, 0x0

    .line 6256
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, mChildren:[Landroid/view/View;

    aget-object v0, v0, p1

    goto :goto_7
.end method

.method public getChildCount()I
    .registers 2

    .prologue
    .line 6242
    iget v0, p0, mChildrenCount:I

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 3
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 3809
    return p2
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 4130
    const/4 v0, 0x0

    return v0
.end method

.method getChildTransformation()Landroid/view/animation/Transformation;
    .registers 2

    .prologue
    .line 4134
    iget-object v0, p0, mChildTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_b

    .line 4135
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, mChildTransformation:Landroid/view/animation/Transformation;

    .line 4137
    :cond_b
    iget-object v0, p0, mChildTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .registers 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "offset"    # Landroid/graphics/Point;

    .prologue
    .line 5748
    iget-object v7, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_f5

    iget-object v7, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v7, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 5749
    .local v4, "rect":Landroid/graphics/RectF;
    :goto_8
    invoke-virtual {v4, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 5751
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v7

    if-nez v7, :cond_18

    .line 5752
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 5755
    :cond_18
    iget v7, p1, Landroid/view/View;->mLeft:I

    iget v8, p0, mScrollX:I

    sub-int v0, v7, v8

    .line 5756
    .local v0, "dx":I
    iget v7, p1, Landroid/view/View;->mTop:I

    iget v8, p0, mScrollY:I

    sub-int v1, v7, v8

    .line 5758
    .local v1, "dy":I
    int-to-float v7, v0

    int-to-float v8, v1

    invoke-virtual {v4, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 5760
    if-eqz p3, :cond_68

    .line 5761
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v7

    if-nez v7, :cond_5e

    .line 5762
    iget-object v7, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_fc

    iget-object v7, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v7, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 5764
    .local v3, "position":[F
    :goto_39
    const/4 v7, 0x0

    iget v8, p3, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    aput v8, v3, v7

    .line 5765
    const/4 v7, 0x1

    iget v8, p3, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    aput v8, v3, v7

    .line 5766
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 5767
    const/4 v7, 0x0

    aget v7, v3, v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p3, Landroid/graphics/Point;->x:I

    .line 5768
    const/4 v7, 0x1

    aget v7, v3, v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p3, Landroid/graphics/Point;->y:I

    .line 5770
    .end local v3    # "position":[F
    :cond_5e
    iget v7, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v7, v0

    iput v7, p3, Landroid/graphics/Point;->x:I

    .line 5771
    iget v7, p3, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v1

    iput v7, p3, Landroid/graphics/Point;->y:I

    .line 5774
    :cond_68
    iget v7, p0, mRight:I

    iget v8, p0, mLeft:I

    sub-int v6, v7, v8

    .line 5775
    .local v6, "width":I
    iget v7, p0, mBottom:I

    iget v8, p0, mTop:I

    sub-int v2, v7, v8

    .line 5777
    .local v2, "height":I
    const/4 v5, 0x1

    .line 5778
    .local v5, "rectIsVisible":Z
    iget-object v7, p0, mParent:Landroid/view/ViewParent;

    if-eqz v7, :cond_89

    iget-object v7, p0, mParent:Landroid/view/ViewParent;

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_91

    iget-object v7, p0, mParent:Landroid/view/ViewParent;

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7}, getClipChildren()Z

    move-result v7

    if-eqz v7, :cond_91

    .line 5781
    :cond_89
    const/4 v7, 0x0

    const/4 v8, 0x0

    int-to-float v9, v6

    int-to-float v10, v2

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    .line 5784
    :cond_91
    if-eqz v5, :cond_af

    iget v7, p0, mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    const/16 v8, 0x22

    if-ne v7, v8, :cond_af

    .line 5786
    iget v7, p0, mPaddingLeft:I

    int-to-float v7, v7

    iget v8, p0, mPaddingTop:I

    int-to-float v8, v8

    iget v9, p0, mPaddingRight:I

    sub-int v9, v6, v9

    int-to-float v9, v9

    iget v10, p0, mPaddingBottom:I

    sub-int v10, v2, v10

    int-to-float v10, v10

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    .line 5790
    :cond_af
    if-eqz v5, :cond_cd

    iget-object v7, p0, mClipBounds:Landroid/graphics/Rect;

    if-eqz v7, :cond_cd

    .line 5792
    iget-object v7, p0, mClipBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget-object v8, p0, mClipBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iget-object v9, p0, mClipBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    iget-object v10, p0, mClipBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    .line 5795
    :cond_cd
    iget v7, v4, Landroid/graphics/RectF;->left:F

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, v4, Landroid/graphics/RectF;->top:F

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    iget v9, v4, Landroid/graphics/RectF;->right:F

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {p2, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 5797
    if-eqz v5, :cond_f4

    iget-object v7, p0, mParent:Landroid/view/ViewParent;

    if-eqz v7, :cond_f4

    .line 5798
    iget-object v7, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v7, p0, p2, p3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v5

    .line 5800
    :cond_f4
    return v5

    .line 5748
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    .end local v2    # "height":I
    .end local v4    # "rect":Landroid/graphics/RectF;
    .end local v5    # "rectIsVisible":Z
    .end local v6    # "width":I
    :cond_f5
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    goto/16 :goto_8

    .line 5762
    .restart local v0    # "dx":I
    .restart local v1    # "dy":I
    .restart local v4    # "rect":Landroid/graphics/RectF;
    :cond_fc
    const/4 v7, 0x2

    new-array v3, v7, [F

    goto/16 :goto_39
.end method

.method public getClipChildren()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 3949
    iget v0, p0, mGroupFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getClipToPadding()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 4006
    const/4 v0, 0x2

    invoke-direct {p0, v0}, hasBooleanFlag(I)Z

    move-result v0

    return v0
.end method

.method getDeepestFocusedChild()Landroid/view/View;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1028
    move-object v0, p0

    .line 1029
    .local v0, "v":Landroid/view/View;
    :goto_2
    if-eqz v0, :cond_18

    .line 1030
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1035
    .end local v0    # "v":Landroid/view/View;
    :goto_a
    return-object v0

    .line 1033
    .restart local v0    # "v":Landroid/view/View;
    :cond_b
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_16

    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "v":Landroid/view/View;
    invoke-virtual {v0}, getFocusedChild()Landroid/view/View;

    move-result-object v0

    .restart local v0    # "v":Landroid/view/View;
    :goto_15
    goto :goto_2

    :cond_16
    move-object v0, v1

    goto :goto_15

    :cond_18
    move-object v0, v1

    .line 1035
    goto :goto_a
.end method

.method public getDescendantFocusability()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x20000
                to = "FOCUS_BEFORE_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x40000
                to = "FOCUS_AFTER_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x60000
                to = "FOCUS_BLOCK_DESCENDANTS"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 696
    iget v0, p0, mGroupFlags:I

    const/high16 v1, 0x60000

    and-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .registers 2

    .prologue
    .line 1024
    iget-object v0, p0, mFocused:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .registers 2

    .prologue
    .line 5877
    iget-object v0, p0, mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method public getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .registers 2

    .prologue
    .line 6667
    iget-object v0, p0, mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public getLayoutMode()I
    .registers 4

    .prologue
    .line 6119
    iget v1, p0, mLayoutMode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    .line 6120
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1a

    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, getLayoutMode()I

    move-result v0

    .line 6122
    .local v0, "inheritedLayoutMode":I
    :goto_13
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, setLayoutMode(IZ)V

    .line 6124
    .end local v0    # "inheritedLayoutMode":I
    :cond_17
    iget v1, p0, mLayoutMode:I

    return v1

    .line 6120
    :cond_1a
    sget v0, LAYOUT_MODE_DEFAULT:I

    goto :goto_13
.end method

.method public getLayoutTransition()Landroid/animation/LayoutTransition;
    .registers 2

    .prologue
    .line 5019
    iget-object v0, p0, mTransition:Landroid/animation/LayoutTransition;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .registers 2

    .prologue
    .line 7080
    iget v0, p0, mNestedScrollAxes:I

    return v0
.end method

.method public getOverlay()Landroid/view/ViewGroupOverlay;
    .registers 3

    .prologue
    .line 3788
    iget-object v0, p0, mOverlay:Landroid/view/ViewOverlay;

    if-nez v0, :cond_d

    .line 3789
    new-instance v0, Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/ViewGroupOverlay;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, mOverlay:Landroid/view/ViewOverlay;

    .line 3791
    :cond_d
    iget-object v0, p0, mOverlay:Landroid/view/ViewOverlay;

    check-cast v0, Landroid/view/ViewGroupOverlay;

    return-object v0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .registers 2

    .prologue
    .line 123
    invoke-virtual {p0}, getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    return-object v0
.end method

.method public getPersistentDrawingCache()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "SCROLLING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "ALL"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 6056
    iget v0, p0, mPersistentDrawingCache:I

    return v0
.end method

.method getScrollIndicatorBounds(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 3926
    invoke-super {p0, p1}, Landroid/view/View;->getScrollIndicatorBounds(Landroid/graphics/Rect;)V

    .line 3930
    iget v1, p0, mGroupFlags:I

    and-int/lit8 v1, v1, 0x22

    const/16 v2, 0x22

    if-ne v1, v2, :cond_2b

    const/4 v0, 0x1

    .line 3931
    .local v0, "clipToPadding":Z
    :goto_c
    if-eqz v0, :cond_2a

    .line 3932
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 3933
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, mPaddingRight:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 3934
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 3935
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, mPaddingBottom:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 3937
    :cond_2a
    return-void

    .line 3930
    .end local v0    # "clipToPadding":Z
    :cond_2b
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getTouchscreenBlocksFocus()Z
    .registers 3

    .prologue
    .line 1164
    iget v0, p0, mGroupFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getTransientView(I)Landroid/view/View;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 4385
    iget-object v0, p0, mTransientViews:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, mTransientViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_e

    .line 4386
    :cond_c
    const/4 v0, 0x0

    .line 4388
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, mTransientViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_d
.end method

.method public getTransientViewCount()I
    .registers 2

    .prologue
    .line 4352
    iget-object v0, p0, mTransientIndices:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, mTransientIndices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getTransientViewIndex(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 4367
    if-ltz p1, :cond_e

    iget-object v0, p0, mTransientIndices:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, mTransientIndices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_10

    .line 4368
    :cond_e
    const/4 v0, -0x1

    .line 4370
    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, mTransientIndices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_f
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .registers 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 726
    iget-object v0, p0, mFocused:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 727
    iget-object v0, p0, mFocused:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 728
    const/4 v0, 0x0

    iput-object v0, p0, mFocused:Landroid/view/View;

    .line 730
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    .line 731
    return-void
.end method

.method public hasCurrentDrag()Z
    .registers 2

    .prologue
    .line 1648
    iget-object v0, p0, mCurrentDrag:Landroid/view/DragEvent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasFocus()Z
    .registers 2

    .prologue
    .line 1045
    iget v0, p0, mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a

    iget-object v0, p0, mFocused:Landroid/view/View;

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hasFocusable()Z
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1075
    iget v7, p0, mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-eqz v7, :cond_9

    .line 1096
    :cond_8
    :goto_8
    return v5

    .line 1079
    :cond_9
    invoke-virtual {p0}, isFocusable()Z

    move-result v7

    if-eqz v7, :cond_11

    move v5, v6

    .line 1080
    goto :goto_8

    .line 1083
    :cond_11
    invoke-virtual {p0}, getDescendantFocusability()I

    move-result v3

    .line 1084
    .local v3, "descendantFocusability":I
    const/high16 v7, 0x60000

    if-eq v3, v7, :cond_8

    .line 1085
    iget v2, p0, mChildrenCount:I

    .line 1086
    .local v2, "count":I
    iget-object v1, p0, mChildren:[Landroid/view/View;

    .line 1088
    .local v1, "children":[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    if-ge v4, v2, :cond_8

    .line 1089
    aget-object v0, v1, v4

    .line 1090
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_2a

    move v5, v6

    .line 1091
    goto :goto_8

    .line 1088
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e
.end method

.method protected hasHoveredChild()Z
    .registers 2

    .prologue
    .line 2028
    iget-object v0, p0, mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasTransientState()Z
    .registers 2

    .prologue
    .line 958
    iget v0, p0, mChildCountWithTransientState:I

    if-gtz v0, :cond_a

    invoke-super {p0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public indexOfChild(Landroid/view/View;)I
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6225
    iget v1, p0, mChildrenCount:I

    .line 6226
    .local v1, "count":I
    iget-object v0, p0, mChildren:[Landroid/view/View;

    .line 6227
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_f

    .line 6228
    aget-object v3, v0, v2

    if-ne v3, p1, :cond_c

    .line 6232
    .end local v2    # "i":I
    :goto_b
    return v2

    .line 6227
    .restart local v2    # "i":I
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 6232
    :cond_f
    const/4 v2, -0x1

    goto :goto_b
.end method

.method protected internalSetPadding(IIII)V
    .registers 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 3388
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 3390
    iget v0, p0, mPaddingLeft:I

    iget v1, p0, mPaddingTop:I

    or-int/2addr v0, v1

    iget v1, p0, mPaddingRight:I

    or-int/2addr v0, v1

    iget v1, p0, mPaddingBottom:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_17

    .line 3391
    iget v0, p0, mGroupFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, mGroupFlags:I

    .line 3395
    :goto_16
    return-void

    .line 3393
    :cond_17
    iget v0, p0, mGroupFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, mGroupFlags:I

    goto :goto_16
.end method

.method public final invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 26
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 5347
    move-object/from16 v13, p0

    .line 5349
    .local v13, "parent":Landroid/view/ViewParent;
    move-object/from16 v0, p0

    iget-object v5, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 5350
    .local v5, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v5, :cond_1bc

    .line 5354
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x40

    const/16 v19, 0x40

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1bd

    const/4 v8, 0x1

    .line 5360
    .local v8, "drawAnimation":Z
    :goto_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    .line 5361
    .local v7, "childMatrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isOpaque()Z

    move-result v18

    if-eqz v18, :cond_1c0

    if-nez v8, :cond_1c0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v18

    if-nez v18, :cond_1c0

    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v18

    if-eqz v18, :cond_1c0

    const/4 v9, 0x1

    .line 5365
    .local v9, "isOpaque":Z
    :goto_32
    if-eqz v9, :cond_1c3

    const/high16 v12, 0x400000

    .line 5367
    .local v12, "opaqueFlag":I
    :goto_36
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mLayerType:I

    move/from16 v18, v0

    if-eqz v18, :cond_5f

    .line 5368
    move-object/from16 v0, p0

    iget v0, v0, mPrivateFlags:I

    move/from16 v18, v0

    const/high16 v19, -0x80000000

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mPrivateFlags:I

    .line 5369
    move-object/from16 v0, p0

    iget v0, v0, mPrivateFlags:I

    move/from16 v18, v0

    const v19, -0x8001

    and-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mPrivateFlags:I

    .line 5372
    :cond_5f
    iget-object v10, v5, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 5373
    .local v10, "location":[I
    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v19, v0

    aput v19, v10, v18

    .line 5374
    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v19, v0

    aput v19, v10, v18

    .line 5375
    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v18

    if-eqz v18, :cond_89

    move-object/from16 v0, p0

    iget v0, v0, mGroupFlags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x800

    move/from16 v18, v0

    if-eqz v18, :cond_102

    .line 5377
    :cond_89
    iget-object v6, v5, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 5378
    .local v6, "boundingRect":Landroid/graphics/RectF;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 5380
    move-object/from16 v0, p0

    iget v0, v0, mGroupFlags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x800

    move/from16 v18, v0

    if-eqz v18, :cond_1ca

    .line 5381
    iget-object v14, v5, Landroid/view/View$AttachInfo;->mTmpTransformation:Landroid/view/animation/Transformation;

    .line 5382
    .local v14, "t":Landroid/view/animation/Transformation;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v16

    .line 5383
    .local v16, "transformed":Z
    if-eqz v16, :cond_1c7

    .line 5384
    iget-object v15, v5, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 5385
    .local v15, "transformMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v14}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 5386
    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v18

    if-nez v18, :cond_be

    .line 5387
    invoke-virtual {v15, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 5395
    .end local v14    # "t":Landroid/view/animation/Transformation;
    .end local v16    # "transformed":Z
    :cond_be
    :goto_be
    invoke-virtual {v15, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 5396
    iget v0, v6, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    iget v0, v6, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 5403
    .end local v6    # "boundingRect":Landroid/graphics/RectF;
    .end local v15    # "transformMatrix":Landroid/graphics/Matrix;
    :cond_102
    const/16 v17, 0x0

    .line 5404
    .local v17, "view":Landroid/view/View;
    instance-of v0, v13, Landroid/view/View;

    move/from16 v18, v0

    if-eqz v18, :cond_10e

    move-object/from16 v17, v13

    .line 5405
    check-cast v17, Landroid/view/View;

    .line 5408
    :cond_10e
    if-eqz v8, :cond_120

    .line 5409
    if-eqz v17, :cond_1cd

    .line 5410
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x40

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 5418
    :cond_120
    :goto_120
    if-eqz v17, :cond_15d

    .line 5419
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x3000

    move/from16 v18, v0

    if-eqz v18, :cond_138

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getSolidColor()I

    move-result v18

    if-nez v18, :cond_138

    .line 5421
    const/high16 v12, 0x200000

    .line 5423
    :cond_138
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v18, v0

    const/high16 v19, 0x600000

    and-int v18, v18, v19

    const/high16 v19, 0x200000

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_15d

    .line 5424
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v18, v0

    const v19, -0x600001

    and-int v18, v18, v19

    or-int v18, v18, v12

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 5428
    :cond_15d
    move-object/from16 v0, p2

    invoke-interface {v13, v10, v0}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v13

    .line 5429
    if-eqz v17, :cond_1ba

    .line 5431
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    .line 5432
    .local v11, "m":Landroid/graphics/Matrix;
    invoke-virtual {v11}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v18

    if-nez v18, :cond_1ba

    .line 5433
    iget-object v6, v5, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 5434
    .restart local v6    # "boundingRect":Landroid/graphics/RectF;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 5435
    invoke-virtual {v11, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 5436
    iget v0, v6, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    iget v0, v6, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 5442
    .end local v6    # "boundingRect":Landroid/graphics/RectF;
    .end local v11    # "m":Landroid/graphics/Matrix;
    :cond_1ba
    if-nez v13, :cond_102

    .line 5444
    .end local v7    # "childMatrix":Landroid/graphics/Matrix;
    .end local v8    # "drawAnimation":Z
    .end local v9    # "isOpaque":Z
    .end local v10    # "location":[I
    .end local v12    # "opaqueFlag":I
    .end local v17    # "view":Landroid/view/View;
    :cond_1bc
    return-void

    .line 5354
    :cond_1bd
    const/4 v8, 0x0

    goto/16 :goto_19

    .line 5361
    .restart local v7    # "childMatrix":Landroid/graphics/Matrix;
    .restart local v8    # "drawAnimation":Z
    :cond_1c0
    const/4 v9, 0x0

    goto/16 :goto_32

    .line 5365
    .restart local v9    # "isOpaque":Z
    :cond_1c3
    const/high16 v12, 0x200000

    goto/16 :goto_36

    .line 5390
    .restart local v6    # "boundingRect":Landroid/graphics/RectF;
    .restart local v10    # "location":[I
    .restart local v12    # "opaqueFlag":I
    .restart local v14    # "t":Landroid/view/animation/Transformation;
    .restart local v16    # "transformed":Z
    :cond_1c7
    move-object v15, v7

    .restart local v15    # "transformMatrix":Landroid/graphics/Matrix;
    goto/16 :goto_be

    .line 5393
    .end local v14    # "t":Landroid/view/animation/Transformation;
    .end local v15    # "transformMatrix":Landroid/graphics/Matrix;
    .end local v16    # "transformed":Z
    :cond_1ca
    move-object v15, v7

    .restart local v15    # "transformMatrix":Landroid/graphics/Matrix;
    goto/16 :goto_be

    .line 5411
    .end local v6    # "boundingRect":Landroid/graphics/RectF;
    .end local v15    # "transformMatrix":Landroid/graphics/Matrix;
    .restart local v17    # "view":Landroid/view/View;
    :cond_1cd
    instance-of v0, v13, Landroid/view/ViewRootImpl;

    move/from16 v18, v0

    if-eqz v18, :cond_120

    move-object/from16 v18, v13

    .line 5412
    check-cast v18, Landroid/view/ViewRootImpl;

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    goto/16 :goto_120
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 11
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const v4, 0x8000

    const/high16 v7, -0x80000000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5455
    iget v2, p0, mPrivateFlags:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-eq v2, v3, :cond_14

    iget v2, p0, mPrivateFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_aa

    .line 5457
    :cond_14
    iget v2, p0, mGroupFlags:I

    and-int/lit16 v2, v2, 0x90

    const/16 v3, 0x80

    if-eq v2, v3, :cond_6d

    .line 5459
    aget v2, p1, v5

    iget v3, p0, mScrollX:I

    sub-int/2addr v2, v3

    aget v3, p1, v6

    iget v4, p0, mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 5461
    iget v2, p0, mGroupFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3c

    .line 5462
    iget v2, p0, mRight:I

    iget v3, p0, mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, mBottom:I

    iget v4, p0, mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 5465
    :cond_3c
    iget v0, p0, mLeft:I

    .line 5466
    .local v0, "left":I
    iget v1, p0, mTop:I

    .line 5468
    .local v1, "top":I
    iget v2, p0, mGroupFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_55

    .line 5469
    iget v2, p0, mRight:I

    sub-int/2addr v2, v0

    iget v3, p0, mBottom:I

    sub-int/2addr v3, v1

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_55

    .line 5470
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 5473
    :cond_55
    iget v2, p0, mPrivateFlags:I

    const v3, -0x8001

    and-int/2addr v2, v3

    iput v2, p0, mPrivateFlags:I

    .line 5475
    aput v0, p1, v5

    .line 5476
    aput v1, p1, v6

    .line 5478
    iget v2, p0, mLayerType:I

    if-eqz v2, :cond_6a

    .line 5479
    iget v2, p0, mPrivateFlags:I

    or-int/2addr v2, v7

    iput v2, p0, mPrivateFlags:I

    .line 5482
    :cond_6a
    iget-object v2, p0, mParent:Landroid/view/ViewParent;

    .line 5504
    .end local v0    # "left":I
    .end local v1    # "top":I
    :goto_6c
    return-object v2

    .line 5485
    :cond_6d
    iget v2, p0, mPrivateFlags:I

    const v3, -0x8021

    and-int/2addr v2, v3

    iput v2, p0, mPrivateFlags:I

    .line 5487
    iget v2, p0, mLeft:I

    aput v2, p1, v5

    .line 5488
    iget v2, p0, mTop:I

    aput v2, p1, v6

    .line 5489
    iget v2, p0, mGroupFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_9c

    .line 5490
    iget v2, p0, mRight:I

    iget v3, p0, mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, mBottom:I

    iget v4, p0, mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 5496
    :goto_90
    iget v2, p0, mLayerType:I

    if-eqz v2, :cond_99

    .line 5497
    iget v2, p0, mPrivateFlags:I

    or-int/2addr v2, v7

    iput v2, p0, mPrivateFlags:I

    .line 5500
    :cond_99
    iget-object v2, p0, mParent:Landroid/view/ViewParent;

    goto :goto_6c

    .line 5493
    :cond_9c
    iget v2, p0, mRight:I

    iget v3, p0, mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, mBottom:I

    iget v4, p0, mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_90

    .line 5504
    :cond_aa
    const/4 v2, 0x0

    goto :goto_6c
.end method

.method invalidateInheritedLayoutMode(I)V
    .registers 6
    .param p1, "layoutModeOfRoot"    # I

    .prologue
    const/4 v3, -0x1

    .line 6093
    iget v2, p0, mLayoutMode:I

    if-eq v2, v3, :cond_11

    iget v2, p0, mLayoutMode:I

    if-eq v2, p1, :cond_11

    const/high16 v2, 0x800000

    invoke-direct {p0, v2}, hasBooleanFlag(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 6104
    :cond_11
    return-void

    .line 6098
    :cond_12
    const/4 v2, 0x0

    invoke-direct {p0, v3, v2}, setLayoutMode(IZ)V

    .line 6101
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_1b
    if-ge v1, v0, :cond_11

    .line 6102
    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->invalidateInheritedLayoutMode(I)V

    .line 6101
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b
.end method

.method public isAlwaysDrawnWithCacheEnabled()Z
    .registers 3

    .prologue
    .line 5930
    iget v0, p0, mGroupFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isAnimationCacheEnabled()Z
    .registers 3

    .prologue
    .line 5895
    iget v0, p0, mGroupFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected isChildrenDrawingOrderEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 6007
    iget v0, p0, mGroupFlags:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected isChildrenDrawnWithCacheEnabled()Z
    .registers 3

    .prologue
    const v1, 0x8000

    .line 5971
    iget v0, p0, mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method isLayoutModeOptical()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3497
    iget v1, p0, mLayoutMode:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isLayoutSuppressed()Z
    .registers 2

    .prologue
    .line 6604
    iget-boolean v0, p0, mSuppressLayout:Z

    return v0
.end method

.method public isMotionEventSplittingEnabled()Z
    .registers 3

    .prologue
    const/high16 v1, 0x200000

    .line 2915
    iget v0, p0, mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .registers 11
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "child"    # Landroid/view/View;
    .param p4, "outLocalPoint"    # Landroid/graphics/PointF;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2754
    invoke-direct {p0}, getTempPoint()[F

    move-result-object v1

    .line 2755
    .local v1, "point":[F
    aput p1, v1, v4

    .line 2756
    aput p2, v1, v5

    .line 2757
    invoke-virtual {p0, v1, p3}, transformPointToViewLocal([FLandroid/view/View;)V

    .line 2758
    aget v2, v1, v4

    aget v3, v1, v5

    invoke-virtual {p3, v2, v3}, Landroid/view/View;->pointInView(FF)Z

    move-result v0

    .line 2759
    .local v0, "isInView":Z
    if-eqz v0, :cond_20

    if-eqz p4, :cond_20

    .line 2760
    aget v2, v1, v4

    aget v3, v1, v5

    invoke-virtual {p4, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 2762
    :cond_20
    return v0
.end method

.method public isTransitionGroup()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2931
    iget v3, p0, mGroupFlags:I

    const/high16 v4, 0x2000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_13

    .line 2932
    iget v3, p0, mGroupFlags:I

    const/high16 v4, 0x1000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_11

    .line 2935
    :goto_10
    return v1

    :cond_11
    move v1, v2

    .line 2932
    goto :goto_10

    .line 2934
    :cond_13
    invoke-virtual {p0}, getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    .line 2935
    .local v0, "outlineProvider":Landroid/view/ViewOutlineProvider;
    invoke-virtual {p0}, getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_29

    invoke-virtual {p0}, getTransitionName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_29

    if-eqz v0, :cond_2a

    sget-object v3, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    if-eq v0, v3, :cond_2a

    :cond_29
    move v2, v1

    :cond_2a
    move v1, v2

    goto :goto_10
.end method

.method protected isTwUsingAdapterView()Z
    .registers 2

    .prologue
    .line 2218
    const/4 v0, 0x0

    return v0
.end method

.method isViewTransitioning(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6496
    iget-object v0, p0, mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 5

    .prologue
    .line 6694
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 6695
    iget-object v0, p0, mChildren:[Landroid/view/View;

    .line 6696
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, mChildrenCount:I

    .line 6697
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 6698
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 6697
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 6700
    :cond_12
    return-void
.end method

.method public final layout(IIII)V
    .registers 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 5808
    iget-boolean v0, p0, mSuppressLayout:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_10

    iget-object v0, p0, mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 5809
    :cond_10
    iget-object v0, p0, mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_19

    .line 5810
    iget-object v0, p0, mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0}, Landroid/animation/LayoutTransition;->layoutChange(Landroid/view/ViewGroup;)V

    .line 5812
    :cond_19
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 5817
    :goto_1c
    return-void

    .line 5815
    :cond_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, mLayoutCalledWhileSuppressed:Z

    goto :goto_1c
.end method

.method public makeOptionalFitsSystemWindows()V
    .registers 5

    .prologue
    .line 1247
    invoke-super {p0}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    .line 1248
    iget v1, p0, mChildrenCount:I

    .line 1249
    .local v1, "count":I
    iget-object v0, p0, mChildren:[Landroid/view/View;

    .line 1250
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 1251
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    .line 1250
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1253
    :cond_12
    return-void
.end method

.method protected measureChild(Landroid/view/View;II)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    .line 6290
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 6292
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, mPaddingLeft:I

    iget v4, p0, mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, getChildMeasureSpec(III)I

    move-result v1

    .line 6294
    .local v1, "childWidthMeasureSpec":I
    iget v3, p0, mPaddingTop:I

    iget v4, p0, mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, getChildMeasureSpec(III)I

    move-result v0

    .line 6297
    .local v0, "childHeightMeasureSpec":I
    iget-boolean v3, p0, mSkipRtlCheck:Z

    if-eqz v3, :cond_22

    iget-boolean v3, p0, mSkipRtlCheck:Z

    iput-boolean v3, p1, Landroid/view/View;->mSkipRtlCheck:Z

    .line 6298
    :cond_22
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 6299
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
    .line 6318
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6320
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

    .line 6323
    .local v1, "childWidthMeasureSpec":I
    iget v3, p0, mPaddingTop:I

    iget v4, p0, mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v3, v4}, getChildMeasureSpec(III)I

    move-result v0

    .line 6327
    .local v0, "childHeightMeasureSpec":I
    iget-boolean v3, p0, mSkipRtlCheck:Z

    if-eqz v3, :cond_32

    iget-boolean v3, p0, mSkipRtlCheck:Z

    iput-boolean v3, p1, Landroid/view/View;->mSkipRtlCheck:Z

    .line 6328
    :cond_32
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 6329
    return-void
.end method

.method protected measureChildren(II)V
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 6269
    iget v3, p0, mChildrenCount:I

    .line 6270
    .local v3, "size":I
    iget-object v1, p0, mChildren:[Landroid/view/View;

    .line 6271
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v3, :cond_17

    .line 6272
    aget-object v0, v1, v2

    .line 6273
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    const/16 v5, 0x8

    if-eq v4, v5, :cond_14

    .line 6274
    invoke-virtual {p0, v0, p1, p2}, measureChild(Landroid/view/View;II)V

    .line 6271
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 6277
    .end local v0    # "child":Landroid/view/View;
    :cond_17
    return-void
.end method

.method notifyChildOfDrag(Landroid/view/View;)Z
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1582
    const/4 v0, 0x0

    .line 1583
    .local v0, "canAccept":Z
    iget-object v1, p0, mDragNotifiedChildren:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 1584
    iget-object v1, p0, mDragNotifiedChildren:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1585
    iget-object v1, p0, mCurrentDrag:Landroid/view/DragEvent;

    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 1586
    if-eqz v0, :cond_25

    invoke-virtual {p1}, Landroid/view/View;->canAcceptDrag()Z

    move-result v1

    if-nez v1, :cond_25

    .line 1587
    iget v1, p1, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/view/View;->mPrivateFlags2:I

    .line 1588
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    .line 1591
    :cond_25
    return v0
.end method

.method public notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Landroid/view/View;
    .param p3, "changeType"    # I

    .prologue
    .line 3304
    invoke-virtual {p0}, getAccessibilityLiveRegion()I

    move-result v1

    if-eqz v1, :cond_a

    .line 3305
    invoke-virtual {p0, p3}, notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 3314
    :cond_9
    :goto_9
    return-void

    .line 3306
    :cond_a
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_9

    .line 3308
    :try_start_e
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, p2, p3}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_13
    .catch Ljava/lang/AbstractMethodError; {:try_start_e .. :try_end_13} :catch_14

    goto :goto_9

    .line 3309
    :catch_14
    move-exception v0

    .line 3310
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public offsetChildrenTopAndBottom(I)V
    .registers 9
    .param p1, "offset"    # I

    .prologue
    const/4 v6, 0x0

    .line 5693
    iget v1, p0, mChildrenCount:I

    .line 5694
    .local v1, "count":I
    iget-object v0, p0, mChildren:[Landroid/view/View;

    .line 5695
    .local v0, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .line 5697
    .local v3, "invalidate":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_22

    .line 5698
    aget-object v4, v0, v2

    .line 5699
    .local v4, "v":Landroid/view/View;
    iget v5, v4, Landroid/view/View;->mTop:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/View;->mTop:I

    .line 5700
    iget v5, v4, Landroid/view/View;->mBottom:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/View;->mBottom:I

    .line 5701
    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    if-eqz v5, :cond_1f

    .line 5702
    const/4 v3, 0x1

    .line 5703
    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v5, p1}, Landroid/view/RenderNode;->offsetTopAndBottom(I)Z

    .line 5697
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 5707
    .end local v4    # "v":Landroid/view/View;
    :cond_22
    if-eqz v3, :cond_27

    .line 5708
    invoke-virtual {p0, v6, v6}, invalidateViewProperty(ZZ)V

    .line 5710
    :cond_27
    invoke-virtual {p0}, notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 5711
    return-void
.end method

.method public final offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 5610
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 5611
    return-void
.end method

.method offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .registers 12
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "offsetFromChildToParent"    # Z
    .param p4, "clipToBounds"    # Z

    .prologue
    const/4 v6, 0x0

    .line 5631
    if-ne p1, p0, :cond_4

    .line 5683
    :goto_3
    return-void

    .line 5635
    :cond_4
    iget-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5640
    .local v2, "theParent":Landroid/view/ViewParent;
    :goto_6
    if-eqz v2, :cond_61

    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_61

    if-eq v2, p0, :cond_61

    .line 5642
    if-eqz p3, :cond_3b

    .line 5643
    iget v3, p1, Landroid/view/View;->mLeft:I

    iget v4, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mTop:I

    iget v5, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 5645
    if-eqz p4, :cond_35

    move-object v1, v2

    .line 5646
    check-cast v1, Landroid/view/View;

    .line 5647
    .local v1, "p":Landroid/view/View;
    iget v3, v1, Landroid/view/View;->mRight:I

    iget v4, v1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/view/View;->mBottom:I

    iget v5, v1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v6, v6, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    .line 5649
    .local v0, "intersected":Z
    if-nez v0, :cond_35

    .line 5650
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .end local v0    # "intersected":Z
    .end local v1    # "p":Landroid/view/View;
    :cond_35
    :goto_35
    move-object p1, v2

    .line 5666
    check-cast p1, Landroid/view/View;

    .line 5667
    iget-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_6

    .line 5654
    :cond_3b
    if-eqz p4, :cond_53

    move-object v1, v2

    .line 5655
    check-cast v1, Landroid/view/View;

    .line 5656
    .restart local v1    # "p":Landroid/view/View;
    iget v3, v1, Landroid/view/View;->mRight:I

    iget v4, v1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/view/View;->mBottom:I

    iget v5, v1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v6, v6, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    .line 5658
    .restart local v0    # "intersected":Z
    if-nez v0, :cond_53

    .line 5659
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 5662
    .end local v0    # "intersected":Z
    .end local v1    # "p":Landroid/view/View;
    :cond_53
    iget v3, p1, Landroid/view/View;->mScrollX:I

    iget v4, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mScrollY:I

    iget v5, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_35

    .line 5672
    :cond_61
    if-ne v2, p0, :cond_81

    .line 5673
    if-eqz p3, :cond_73

    .line 5674
    iget v3, p1, Landroid/view/View;->mLeft:I

    iget v4, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mTop:I

    iget v5, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    .line 5677
    :cond_73
    iget v3, p1, Landroid/view/View;->mScrollX:I

    iget v4, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mScrollY:I

    iget v5, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    .line 5681
    :cond_81
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "parameter must be a descendant of this view"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 5620
    invoke-virtual {p0, p1, p2, v0, v0}, offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 5621
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 4586
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4587
    invoke-direct {p0}, clearCachedLayoutMode()V

    .line 4588
    return-void
.end method

.method protected onChildVisibilityChanged(Landroid/view/View;II)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "oldVisibility"    # I
    .param p3, "newVisibility"    # I

    .prologue
    .line 1278
    iget-object v0, p0, mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_b

    .line 1279
    if-nez p3, :cond_15

    .line 1280
    iget-object v0, p0, mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/LayoutTransition;->showChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1296
    :cond_b
    :goto_b
    iget-object v0, p0, mCurrentDrag:Landroid/view/DragEvent;

    if-eqz v0, :cond_14

    .line 1297
    if-nez p3, :cond_14

    .line 1298
    invoke-virtual {p0, p1}, notifyChildOfDrag(Landroid/view/View;)Z

    .line 1301
    :cond_14
    return-void

    .line 1282
    :cond_15
    iget-object v0, p0, mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1, p3}, Landroid/animation/LayoutTransition;->hideChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1283
    iget-object v0, p0, mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1286
    iget-object v0, p0, mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_31

    .line 1287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mVisibilityChangingChildren:Ljava/util/ArrayList;

    .line 1289
    :cond_31
    iget-object v0, p0, mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    invoke-direct {p0, p1}, addDisappearingView(Landroid/view/View;)V

    goto :goto_b
.end method

.method protected onCreateDrawableState(I)[I
    .registers 8
    .param p1, "extraSpace"    # I

    .prologue
    .line 6704
    iget v5, p0, mGroupFlags:I

    and-int/lit16 v5, v5, 0x2000

    if-nez v5, :cond_b

    .line 6705
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 6728
    :cond_a
    return-object v4

    .line 6708
    :cond_b
    const/4 v3, 0x0

    .line 6709
    .local v3, "need":I
    invoke-virtual {p0}, getChildCount()I

    move-result v2

    .line 6710
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v2, :cond_22

    .line 6711
    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 6713
    .local v0, "childState":[I
    if-eqz v0, :cond_1f

    .line 6714
    array-length v5, v0

    add-int/2addr v3, v5

    .line 6710
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 6718
    .end local v0    # "childState":[I
    :cond_22
    add-int v5, p1, v3

    invoke-super {p0, v5}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 6720
    .local v4, "state":[I
    const/4 v1, 0x0

    :goto_29
    if-ge v1, v2, :cond_a

    .line 6721
    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 6723
    .restart local v0    # "childState":[I
    if-eqz v0, :cond_39

    .line 6724
    invoke-static {v4, v0}, mergeDrawableStates([I[I)[I

    move-result-object v4

    .line 6720
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_29
.end method

.method protected onDebugDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v7, 0x3f

    const/16 v6, 0xff

    const/16 v13, 0x8

    .line 3585
    invoke-static {}, getDebugPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 3589
    .local v1, "paint":Landroid/graphics/Paint;
    const/high16 v0, -0x10000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3590
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3592
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_15
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    if-ge v11, v0, :cond_50

    .line 3593
    invoke-virtual {p0, v11}, getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3594
    .local v10, "c":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v13, :cond_4d

    .line 3595
    invoke-virtual {v10}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v12

    .line 3597
    .local v12, "insets":Landroid/graphics/Insets;
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, v12, Landroid/graphics/Insets;->left:I

    add-int/2addr v2, v0

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v0

    iget v3, v12, Landroid/graphics/Insets;->top:I

    add-int/2addr v3, v0

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v0

    iget v4, v12, Landroid/graphics/Insets;->right:I

    sub-int/2addr v0, v4

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v5, v12, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, v5

    add-int/lit8 v5, v0, -0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 3592
    .end local v12    # "insets":Landroid/graphics/Insets;
    :cond_4d
    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    .line 3608
    .end local v10    # "c":Landroid/view/View;
    :cond_50
    const/4 v0, 0x0

    invoke-static {v7, v6, v0, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3609
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3611
    invoke-virtual {p0, p1, v1}, onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 3616
    const/16 v0, 0x7f

    invoke-static {v7, v0, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3617
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3619
    invoke-direct {p0, v13}, dipsToPixels(I)I

    move-result v8

    .line 3620
    .local v8, "lineLength":I
    const/4 v0, 0x1

    invoke-direct {p0, v0}, dipsToPixels(I)I

    move-result v9

    .line 3621
    .local v9, "lineWidth":I
    const/4 v11, 0x0

    :goto_78
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    if-ge v11, v0, :cond_a0

    .line 3622
    invoke-virtual {p0, v11}, getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3623
    .restart local v10    # "c":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v13, :cond_9d

    .line 3624
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v6

    move-object v2, p1

    move-object v7, v1

    invoke-static/range {v2 .. v9}, drawRectCorners(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;II)V

    .line 3621
    :cond_9d
    add-int/lit8 v11, v11, 0x1

    goto :goto_78

    .line 3629
    .end local v10    # "c":Landroid/view/View;
    :cond_a0
    return-void
.end method

.method protected onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 3575
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_15

    .line 3576
    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3577
    .local v0, "c":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v2, v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;->onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 3575
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3579
    .end local v0    # "c":Landroid/view/View;
    :cond_15
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 4592
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4593
    invoke-direct {p0}, clearCachedLayoutMode()V

    .line 4594
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 8
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 3274
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3275
    invoke-virtual {p0}, getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 3293
    :cond_9
    :goto_9
    return-void

    .line 3278
    :cond_a
    iget-object v5, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_9

    .line 3279
    iget-object v5, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v5, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    .line 3280
    .local v1, "childrenForAccessibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3281
    invoke-virtual {p0, v1}, addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 3282
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3284
    .local v2, "childrenForAccessibilityCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    if-ge v4, v2, :cond_2f

    .line 3285
    :try_start_1f
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3286
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildUnchecked(Landroid/view/View;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_28} :catch_2b

    .line 3284
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 3288
    .end local v0    # "child":Landroid/view/View;
    :catch_2b
    move-exception v3

    .line 3289
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 3291
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2f
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_9
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2093
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3019
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onLayout(ZIIII)V
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 7057
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 7065
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 3341
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    .line 7050
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 7042
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 7019
    iput p3, p0, mNestedScrollAxes:I

    .line 7020
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 11
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3079
    iget v2, p0, mChildrenCount:I

    .line 3080
    .local v2, "count":I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_1e

    .line 3081
    const/4 v6, 0x0

    .line 3082
    .local v6, "index":I
    const/4 v5, 0x1

    .line 3083
    .local v5, "increment":I
    move v3, v2

    .line 3089
    .local v3, "end":I
    :goto_9
    iget-object v1, p0, mChildren:[Landroid/view/View;

    .line 3090
    .local v1, "children":[Landroid/view/View;
    move v4, v6

    .local v4, "i":I
    :goto_c
    if-eq v4, v3, :cond_25

    .line 3091
    aget-object v0, v1, v4

    .line 3092
    .local v0, "child":Landroid/view/View;
    iget v7, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_23

    .line 3093
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 3094
    const/4 v7, 0x1

    .line 3098
    .end local v0    # "child":Landroid/view/View;
    :goto_1d
    return v7

    .line 3085
    .end local v1    # "children":[Landroid/view/View;
    .end local v3    # "end":I
    .end local v4    # "i":I
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_1e
    add-int/lit8 v6, v2, -0x1

    .line 3086
    .restart local v6    # "index":I
    const/4 v5, -0x1

    .line 3087
    .restart local v5    # "increment":I
    const/4 v3, -0x1

    .restart local v3    # "end":I
    goto :goto_9

    .line 3090
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "children":[Landroid/view/View;
    .restart local v4    # "i":I
    :cond_23
    add-int/2addr v4, v5

    goto :goto_c

    .line 3098
    .end local v0    # "child":Landroid/view/View;
    :cond_25
    const/4 v7, 0x0

    goto :goto_1d
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 916
    iget-object v0, p0, mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_b

    .line 917
    iget-object v0, p0, mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 919
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0, p1, p2}, onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method public onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 931
    const/4 v0, 0x1

    return v0
.end method

.method protected onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 7085
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 7011
    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7031
    invoke-virtual {p0}, stopNestedScroll()V

    .line 7032
    const/4 v0, 0x0

    iput v0, p0, mNestedScrollAxes:I

    .line 7033
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4560
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4576
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1352
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_11

    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v1, :cond_11

    .line 1353
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    .line 1354
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_11

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 1356
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_11
    return-void
.end method

.method public removeAllViews()V
    .registers 2

    .prologue
    .line 5082
    invoke-virtual {p0}, removeAllViewsInLayout()V

    .line 5083
    invoke-virtual {p0}, requestLayout()V

    .line 5084
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, invalidate(Z)V

    .line 5085
    return-void
.end method

.method public removeAllViewsInLayout()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 5101
    iget v2, p0, mChildrenCount:I

    .line 5102
    .local v2, "count":I
    if-gtz v2, :cond_7

    .line 5155
    :cond_6
    :goto_6
    return-void

    .line 5106
    :cond_7
    iget-object v0, p0, mChildren:[Landroid/view/View;

    .line 5107
    .local v0, "children":[Landroid/view/View;
    iput v7, p0, mChildrenCount:I

    .line 5109
    iget-object v4, p0, mFocused:Landroid/view/View;

    .line 5110
    .local v4, "focused":Landroid/view/View;
    iget-object v8, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v8, :cond_5c

    const/4 v3, 0x1

    .line 5111
    .local v3, "detach":Z
    :goto_12
    const/4 v1, 0x0

    .line 5113
    .local v1, "clearChildFocus":Z
    invoke-virtual {p0, v7}, needGlobalAttributesUpdate(Z)V

    .line 5115
    add-int/lit8 v5, v2, -0x1

    .local v5, "i":I
    :goto_18
    if-ltz v5, :cond_64

    .line 5116
    aget-object v6, v0, v5

    .line 5118
    .local v6, "view":Landroid/view/View;
    iget-object v8, p0, mTransition:Landroid/animation/LayoutTransition;

    if-eqz v8, :cond_25

    .line 5119
    iget-object v8, p0, mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v8, p0, v6}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5122
    :cond_25
    if-ne v6, v4, :cond_2b

    .line 5123
    invoke-virtual {v6, v9}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 5124
    const/4 v1, 0x1

    .line 5127
    :cond_2b
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5129
    invoke-direct {p0, v6}, cancelTouchTarget(Landroid/view/View;)V

    .line 5130
    invoke-direct {p0, v6}, cancelHoverTarget(Landroid/view/View;)V

    .line 5132
    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-nez v8, :cond_46

    iget-object v8, p0, mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v8, :cond_5e

    iget-object v8, p0, mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 5134
    :cond_46
    invoke-direct {p0, v6}, addDisappearingView(Landroid/view/View;)V

    .line 5139
    :cond_49
    :goto_49
    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    move-result v8

    if-eqz v8, :cond_52

    .line 5140
    invoke-virtual {p0, v6, v7}, childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 5143
    :cond_52
    invoke-virtual {p0, v6}, dispatchViewRemoved(Landroid/view/View;)V

    .line 5145
    iput-object v9, v6, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5146
    aput-object v9, v0, v5

    .line 5115
    add-int/lit8 v5, v5, -0x1

    goto :goto_18

    .end local v1    # "clearChildFocus":Z
    .end local v3    # "detach":Z
    .end local v5    # "i":I
    .end local v6    # "view":Landroid/view/View;
    :cond_5c
    move v3, v7

    .line 5110
    goto :goto_12

    .line 5135
    .restart local v1    # "clearChildFocus":Z
    .restart local v3    # "detach":Z
    .restart local v5    # "i":I
    .restart local v6    # "view":Landroid/view/View;
    :cond_5e
    if-eqz v3, :cond_49

    .line 5136
    invoke-virtual {v6}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_49

    .line 5149
    .end local v6    # "view":Landroid/view/View;
    :cond_64
    if-eqz v1, :cond_6

    .line 5150
    invoke-virtual {p0, v4}, clearChildFocus(Landroid/view/View;)V

    .line 5151
    invoke-virtual {p0}, rootViewRequestFocus()Z

    move-result v7

    if-nez v7, :cond_6

    .line 5152
    invoke-virtual {p0, v4}, notifyGlobalFocusCleared(Landroid/view/View;)V

    goto :goto_6
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 5178
    iget-object v0, p0, mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_9

    .line 5179
    iget-object v0, p0, mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5182
    :cond_9
    iget-object v0, p0, mFocused:Landroid/view/View;

    if-ne p1, v0, :cond_10

    .line 5183
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 5186
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5188
    invoke-direct {p0, p1}, cancelTouchTarget(Landroid/view/View;)V

    .line 5189
    invoke-direct {p0, p1}, cancelHoverTarget(Landroid/view/View;)V

    .line 5191
    if-eqz p2, :cond_21

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_2d

    :cond_21
    iget-object v0, p0, mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_3e

    iget-object v0, p0, mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 5193
    :cond_2d
    invoke-direct {p0, p1}, addDisappearingView(Landroid/view/View;)V

    .line 5198
    :cond_30
    :goto_30
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 5199
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 5202
    :cond_3a
    invoke-virtual {p0, p1}, dispatchViewRemoved(Landroid/view/View;)V

    .line 5203
    return-void

    .line 5194
    :cond_3e
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_30

    .line 5195
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_30
.end method

.method public removeTransientView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4325
    iget-object v2, p0, mTransientViews:Ljava/util/List;

    if-nez v2, :cond_5

    .line 4339
    :cond_4
    :goto_4
    return-void

    .line 4328
    :cond_5
    iget-object v2, p0, mTransientViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 4329
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v1, :cond_4

    .line 4330
    iget-object v2, p0, mTransientViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_2b

    .line 4331
    iget-object v2, p0, mTransientViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4332
    iget-object v2, p0, mTransientIndices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4333
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4334
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 4335
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, invalidate(Z)V

    goto :goto_4

    .line 4329
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4854
    invoke-direct {p0, p1}, removeViewInternal(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4855
    invoke-virtual {p0}, requestLayout()V

    .line 4856
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, invalidate(Z)V

    .line 4858
    :cond_d
    return-void
.end method

.method public removeViewAt(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 4899
    invoke-virtual {p0, p1}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, removeViewInternal(ILandroid/view/View;)V

    .line 4900
    invoke-virtual {p0}, requestLayout()V

    .line 4901
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, invalidate(Z)V

    .line 4902
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4871
    invoke-direct {p0, p1}, removeViewInternal(Landroid/view/View;)Z

    .line 4872
    return-void
.end method

.method public removeViews(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 4915
    invoke-direct {p0, p1, p2}, removeViewsInternal(II)V

    .line 4916
    invoke-virtual {p0}, requestLayout()V

    .line 4917
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, invalidate(Z)V

    .line 4918
    return-void
.end method

.method public removeViewsInLayout(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 4886
    invoke-direct {p0, p1, p2}, removeViewsInternal(II)V

    .line 4887
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 740
    invoke-virtual {p0}, getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_9

    .line 758
    :cond_8
    :goto_8
    return-void

    .line 745
    :cond_9
    invoke-super {p0, p2}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 748
    iget-object v0, p0, mFocused:Landroid/view/View;

    if-eq v0, p1, :cond_1b

    .line 749
    iget-object v0, p0, mFocused:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 750
    iget-object v0, p0, mFocused:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 753
    :cond_19
    iput-object p1, p0, mFocused:Landroid/view/View;

    .line 755
    :cond_1b
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_8

    .line 756
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    goto :goto_8
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 880
    const/4 v0, 0x0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 4
    .param p1, "disallowIntercept"    # Z

    .prologue
    const/high16 v1, 0x80000

    .line 2964
    iget v0, p0, mGroupFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_8
    if-ne p1, v0, :cond_d

    .line 2979
    :cond_a
    :goto_a
    return-void

    .line 2964
    :cond_b
    const/4 v0, 0x0

    goto :goto_8

    .line 2969
    :cond_d
    if-eqz p1, :cond_1e

    .line 2970
    iget v0, p0, mGroupFlags:I

    or-int/2addr v0, v1

    iput v0, p0, mGroupFlags:I

    .line 2976
    :goto_14
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_a

    .line 2977
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_a

    .line 2972
    :cond_1e
    iget v0, p0, mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, mGroupFlags:I

    goto :goto_14
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 8
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3042
    invoke-virtual {p0}, getDescendantFocusability()I

    move-result v0

    .line 3044
    .local v0, "descendantFocusability":I
    sparse-switch v0, :sswitch_data_3c

    .line 3056
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3046
    :sswitch_20
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 3053
    :cond_24
    :goto_24
    return v1

    .line 3048
    :sswitch_25
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 3049
    .local v1, "took":Z
    if-nez v1, :cond_24

    invoke-virtual {p0, p1, p2}, onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_24

    .line 3052
    .end local v1    # "took":Z
    :sswitch_30
    invoke-virtual {p0, p1, p2}, onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 3053
    .restart local v1    # "took":Z
    if-nez v1, :cond_24

    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_24

    .line 3044
    nop

    :sswitch_data_3c
    .sparse-switch
        0x20000 -> :sswitch_25
        0x40000 -> :sswitch_30
        0x60000 -> :sswitch_20
    .end sparse-switch
.end method

.method public requestOnStylusButtonEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 8182
    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 8183
    .local v0, "parent":Landroid/view/ViewParent;
    if-nez v0, :cond_7

    .line 8187
    :goto_6
    return-void

    .line 8186
    :cond_7
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestOnStylusButtonEvent(Landroid/view/MotionEvent;)V

    goto :goto_6
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x0

    .line 888
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    .line 889
    .local v0, "parent":Landroid/view/ViewParent;
    if-nez v0, :cond_6

    .line 896
    :cond_5
    :goto_5
    return v2

    .line 892
    :cond_6
    invoke-virtual {p0, p1, p2}, onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .line 893
    .local v1, "propagate":Z
    if-eqz v1, :cond_5

    .line 896
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    goto :goto_5
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .registers 3
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 6791
    invoke-virtual {p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 6792
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_9

    .line 6793
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    .line 6795
    :cond_9
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6637
    if-eqz p1, :cond_11

    .line 6638
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 6639
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_11

    .line 6640
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 6643
    :cond_11
    return-void
.end method

.method public resetDragableChildren(Landroid/view/DragEvent;)Z
    .registers 13
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 1599
    const/4 v7, 0x0

    .line 1601
    .local v7, "ret":Z
    iget-object v10, p0, mCurrentDragView:Landroid/view/View;

    if-eqz v10, :cond_21

    .line 1602
    iget-object v9, p0, mCurrentDragView:Landroid/view/View;

    .line 1604
    .local v9, "view":Landroid/view/View;
    invoke-static {p1}, Landroid/view/DragEvent;->obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v3

    .line 1605
    .local v3, "ev":Landroid/view/DragEvent;
    const/4 v10, 0x6

    iput v10, v3, Landroid/view/DragEvent;->mAction:I

    .line 1606
    invoke-virtual {v9, v3}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1607
    invoke-virtual {v3}, Landroid/view/DragEvent;->recycle()V

    .line 1608
    const/4 v3, 0x0

    .line 1610
    iget v10, v9, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v10, v10, -0x3

    iput v10, v9, Landroid/view/View;->mPrivateFlags2:I

    .line 1611
    invoke-virtual {v9}, Landroid/view/View;->refreshDrawableState()V

    .line 1612
    const/4 v10, 0x0

    iput-object v10, p0, mCurrentDragView:Landroid/view/View;

    .line 1615
    .end local v3    # "ev":Landroid/view/DragEvent;
    .end local v9    # "view":Landroid/view/View;
    :cond_21
    iget-object v10, p0, mDragNotifiedChildren:Ljava/util/HashSet;

    if-nez v10, :cond_53

    .line 1616
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    iput-object v10, p0, mDragNotifiedChildren:Ljava/util/HashSet;

    .line 1626
    :goto_2c
    const/4 v10, 0x0

    iput-boolean v10, p0, mChildAcceptsDrag:Z

    .line 1627
    iget v2, p0, mChildrenCount:I

    .line 1628
    .local v2, "count":I
    iget-object v1, p0, mChildren:[Landroid/view/View;

    .line 1629
    .local v1, "children":[Landroid/view/View;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_34
    if-ge v5, v2, :cond_74

    .line 1630
    aget-object v0, v1, v5

    .line 1631
    .local v0, "child":Landroid/view/View;
    iget v10, v0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v10, v10, -0x4

    iput v10, v0, Landroid/view/View;->mPrivateFlags2:I

    .line 1632
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_50

    .line 1633
    aget-object v10, v1, v5

    invoke-virtual {p0, v10}, notifyChildOfDrag(Landroid/view/View;)Z

    move-result v4

    .line 1634
    .local v4, "handled":Z
    if-eqz v4, :cond_50

    .line 1635
    const/4 v10, 0x1

    iput-boolean v10, p0, mChildAcceptsDrag:Z

    .line 1636
    const/4 v7, 0x1

    .line 1629
    .end local v4    # "handled":Z
    :cond_50
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 1618
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "children":[Landroid/view/View;
    .end local v2    # "count":I
    .end local v5    # "i":I
    :cond_53
    iget-object v10, p0, mDragNotifiedChildren:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_59
    :goto_59
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1619
    .local v8, "v":Landroid/view/View;
    if-eqz v8, :cond_59

    .line 1620
    iget v10, v8, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v10, v10, -0x3

    iput v10, v8, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_59

    .line 1622
    .end local v8    # "v":Landroid/view/View;
    :cond_6e
    iget-object v10, p0, mDragNotifiedChildren:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->clear()V

    goto :goto_2c

    .line 1641
    .end local v6    # "i$":Ljava/util/Iterator;
    .restart local v1    # "children":[Landroid/view/View;
    .restart local v2    # "count":I
    .restart local v5    # "i":I
    :cond_74
    return v7
.end method

.method protected resetResolvedDrawables()V
    .registers 5

    .prologue
    .line 6982
    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 6984
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 6985
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_1a

    .line 6986
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6987
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 6988
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 6985
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 6991
    .end local v0    # "child":Landroid/view/View;
    :cond_1a
    return-void
.end method

.method public resetResolvedLayoutDirection()V
    .registers 5

    .prologue
    .line 6918
    invoke-super {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 6920
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 6921
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_1a

    .line 6922
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6923
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 6924
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 6921
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 6927
    .end local v0    # "child":Landroid/view/View;
    :cond_1a
    return-void
.end method

.method public resetResolvedPadding()V
    .registers 5

    .prologue
    .line 6966
    invoke-super {p0}, Landroid/view/View;->resetResolvedPadding()V

    .line 6968
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 6969
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_1a

    .line 6970
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6971
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 6972
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedPadding()V

    .line 6969
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 6975
    .end local v0    # "child":Landroid/view/View;
    :cond_1a
    return-void
.end method

.method public resetResolvedTextAlignment()V
    .registers 5

    .prologue
    .line 6950
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 6952
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 6953
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_1a

    .line 6954
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6955
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextAlignmentInherited()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 6956
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 6953
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 6959
    .end local v0    # "child":Landroid/view/View;
    :cond_1a
    return-void
.end method

.method public resetResolvedTextDirection()V
    .registers 5

    .prologue
    .line 6934
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 6936
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 6937
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_1a

    .line 6938
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6939
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 6940
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 6937
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 6943
    .end local v0    # "child":Landroid/view/View;
    :cond_1a
    return-void
.end method

.method resetSubtreeAccessibilityStateChanged()V
    .registers 5

    .prologue
    .line 3318
    invoke-super {p0}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 3319
    iget-object v1, p0, mChildren:[Landroid/view/View;

    .line 3320
    .local v1, "children":[Landroid/view/View;
    iget v0, p0, mChildrenCount:I

    .line 3321
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_16

    .line 3322
    aget-object v3, v1, v2

    if-eqz v3, :cond_13

    .line 3323
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 3321
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3326
    :cond_16
    return-void
.end method

.method protected resolveDrawables()V
    .registers 5

    .prologue
    .line 6890
    invoke-super {p0}, Landroid/view/View;->resolveDrawables()V

    .line 6891
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 6892
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_20

    .line 6893
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6894
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v0}, Landroid/view/View;->areDrawablesResolved()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 6895
    invoke-virtual {v0}, Landroid/view/View;->resolveDrawables()V

    .line 6892
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 6898
    .end local v0    # "child":Landroid/view/View;
    :cond_20
    return-void
.end method

.method public resolveLayoutDirection()Z
    .registers 6

    .prologue
    .line 6821
    invoke-super {p0}, Landroid/view/View;->resolveLayoutDirection()Z

    move-result v3

    .line 6822
    .local v3, "result":Z
    if-eqz v3, :cond_1d

    .line 6823
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 6824
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_1d

    .line 6825
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6826
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 6827
    invoke-virtual {v0}, Landroid/view/View;->resolveLayoutDirection()Z

    .line 6824
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 6831
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1d
    return v3
.end method

.method public resolveLayoutParams()V
    .registers 4

    .prologue
    .line 6905
    invoke-super {p0}, Landroid/view/View;->resolveLayoutParams()V

    .line 6906
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 6907
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_14

    .line 6908
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6909
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->resolveLayoutParams()V

    .line 6907
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 6911
    .end local v0    # "child":Landroid/view/View;
    :cond_14
    return-void
.end method

.method public resolvePadding()V
    .registers 5

    .prologue
    .line 6875
    invoke-super {p0}, Landroid/view/View;->resolvePadding()V

    .line 6876
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 6877
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_20

    .line 6878
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6879
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v0}, Landroid/view/View;->isPaddingResolved()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 6880
    invoke-virtual {v0}, Landroid/view/View;->resolvePadding()V

    .line 6877
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 6883
    .end local v0    # "child":Landroid/view/View;
    :cond_20
    return-void
.end method

.method public resolveRtlPropertiesIfNeeded()Z
    .registers 6

    .prologue
    .line 6802
    invoke-super {p0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    move-result v3

    .line 6804
    .local v3, "result":Z
    if-eqz v3, :cond_1d

    .line 6805
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 6806
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_1d

    .line 6807
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6808
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 6809
    invoke-virtual {v0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    .line 6806
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 6813
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1d
    return v3
.end method

.method public resolveTextAlignment()Z
    .registers 6

    .prologue
    .line 6857
    invoke-super {p0}, Landroid/view/View;->resolveTextAlignment()Z

    move-result v3

    .line 6858
    .local v3, "result":Z
    if-eqz v3, :cond_1d

    .line 6859
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 6860
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_1d

    .line 6861
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6862
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextAlignmentInherited()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 6863
    invoke-virtual {v0}, Landroid/view/View;->resolveTextAlignment()Z

    .line 6860
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 6867
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1d
    return v3
.end method

.method public resolveTextDirection()Z
    .registers 6

    .prologue
    .line 6839
    invoke-super {p0}, Landroid/view/View;->resolveTextDirection()Z

    move-result v3

    .line 6840
    .local v3, "result":Z
    if-eqz v3, :cond_1d

    .line 6841
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 6842
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_1d

    .line 6843
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6844
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 6845
    invoke-virtual {v0}, Landroid/view/View;->resolveTextDirection()Z

    .line 6842
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 6849
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1d
    return v3
.end method

.method public scheduleLayoutAnimation()V
    .registers 2

    .prologue
    .line 5854
    iget v0, p0, mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, mGroupFlags:I

    .line 5855
    return-void
.end method

.method public setAddStatesFromChildren(Z)V
    .registers 3
    .param p1, "addsStates"    # Z

    .prologue
    .line 6738
    if-eqz p1, :cond_c

    .line 6739
    iget v0, p0, mGroupFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, mGroupFlags:I

    .line 6744
    :goto_8
    invoke-virtual {p0}, refreshDrawableState()V

    .line 6745
    return-void

    .line 6741
    :cond_c
    iget v0, p0, mGroupFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, mGroupFlags:I

    goto :goto_8
.end method

.method public setAlwaysDrawnWithCacheEnabled(Z)V
    .registers 3
    .param p1, "always"    # Z

    .prologue
    .line 5954
    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, setBooleanFlag(IZ)V

    .line 5955
    return-void
.end method

.method public setAnimationCacheEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 5913
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, setBooleanFlag(IZ)V

    .line 5914
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .registers 7
    .param p1, "enabled"    # Z

    .prologue
    .line 3459
    if-nez p1, :cond_9

    iget v3, p0, mPersistentDrawingCache:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_18

    .line 3460
    :cond_9
    iget-object v0, p0, mChildren:[Landroid/view/View;

    .line 3461
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, mChildrenCount:I

    .line 3462
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_18

    .line 3463
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 3462
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 3466
    .end local v0    # "children":[Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_18
    return-void
.end method

.method protected setChildrenDrawingOrderEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 6024
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, setBooleanFlag(IZ)V

    .line 6025
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 5992
    const v0, 0x8000

    invoke-direct {p0, v0, p1}, setBooleanFlag(IZ)V

    .line 5993
    return-void
.end method

.method public setClipChildren(Z)V
    .registers 7
    .param p1, "clipChildren"    # Z

    .prologue
    const/4 v3, 0x1

    .line 3961
    iget v4, p0, mGroupFlags:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_22

    move v2, v3

    .line 3962
    .local v2, "previousValue":Z
    :goto_8
    if-eq p1, v2, :cond_27

    .line 3963
    invoke-direct {p0, v3, p1}, setBooleanFlag(IZ)V

    .line 3964
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    iget v4, p0, mChildrenCount:I

    if-ge v1, v4, :cond_24

    .line 3965
    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3966
    .local v0, "child":Landroid/view/View;
    iget-object v4, v0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    if-eqz v4, :cond_1f

    .line 3967
    iget-object v4, v0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v4, p1}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 3964
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 3961
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v2    # "previousValue":Z
    :cond_22
    const/4 v2, 0x0

    goto :goto_8

    .line 3970
    .restart local v1    # "i":I
    .restart local v2    # "previousValue":Z
    :cond_24
    invoke-virtual {p0, v3}, invalidate(Z)V

    .line 3972
    .end local v1    # "i":I
    :cond_27
    return-void
.end method

.method public setClipToPadding(Z)V
    .registers 4
    .param p1, "clipToPadding"    # Z

    .prologue
    const/4 v1, 0x2

    .line 3986
    invoke-direct {p0, v1}, hasBooleanFlag(I)Z

    move-result v0

    if-eq v0, p1, :cond_e

    .line 3987
    invoke-direct {p0, v1, p1}, setBooleanFlag(IZ)V

    .line 3988
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, invalidate(Z)V

    .line 3990
    :cond_e
    return-void
.end method

.method public setDescendantFocusability(I)V
    .registers 4
    .param p1, "focusability"    # I

    .prologue
    .line 708
    sparse-switch p1, :sswitch_data_1e

    .line 714
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 717
    :sswitch_c
    iget v0, p0, mGroupFlags:I

    const v1, -0x60001

    and-int/2addr v0, v1

    iput v0, p0, mGroupFlags:I

    .line 718
    iget v0, p0, mGroupFlags:I

    const/high16 v1, 0x60000

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, mGroupFlags:I

    .line 719
    return-void

    .line 708
    nop

    :sswitch_data_1e
    .sparse-switch
        0x20000 -> :sswitch_c
        0x40000 -> :sswitch_c
        0x60000 -> :sswitch_c
    .end sparse-switch
.end method

.method public setFingerHoveredInAppWidget(Z)V
    .registers 5
    .param p1, "fingerHovered"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 8194
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 8195
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 8196
    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, setFingerHoveredInAppWidgetWithChild(Landroid/view/View;Z)V

    .line 8195
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 8198
    :cond_11
    return-void
.end method

.method protected setFingerHoveredInAppWidgetWithChild(Landroid/view/View;Z)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fingerHovered"    # Z

    .prologue
    .line 8204
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_18

    move-object v3, p1

    .line 8205
    check-cast v3, Landroid/view/ViewGroup;

    .line 8206
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v3}, getChildCount()I

    move-result v0

    .line 8207
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_22

    .line 8208
    invoke-virtual {v3, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, setFingerHoveredInAppWidgetWithChild(Landroid/view/View;Z)V

    .line 8207
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 8210
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_18
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_22

    move-object v2, p1

    .line 8211
    check-cast v2, Landroid/widget/TextView;

    .line 8212
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setFingerHoveredInAppWidget(Z)V

    .line 8214
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_22
    return-void
.end method

.method public setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .registers 3
    .param p1, "controller"    # Landroid/view/animation/LayoutAnimationController;

    .prologue
    .line 5864
    iput-object p1, p0, mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 5865
    iget-object v0, p0, mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_c

    .line 5866
    iget v0, p0, mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, mGroupFlags:I

    .line 5868
    :cond_c
    return-void
.end method

.method public setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 2
    .param p1, "animationListener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 6778
    iput-object p1, p0, mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 6779
    return-void
.end method

.method public setLayoutMode(I)V
    .registers 3
    .param p1, "layoutMode"    # I

    .prologue
    .line 6138
    iget v0, p0, mLayoutMode:I

    if-eq v0, p1, :cond_11

    .line 6139
    invoke-virtual {p0, p1}, invalidateInheritedLayoutMode(I)V

    .line 6140
    const/4 v0, -0x1

    if-eq p1, v0, :cond_12

    const/4 v0, 0x1

    :goto_b
    invoke-direct {p0, p1, v0}, setLayoutMode(IZ)V

    .line 6141
    invoke-virtual {p0}, requestLayout()V

    .line 6143
    :cond_11
    return-void

    .line 6140
    :cond_12
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .registers 5
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 4998
    iget-object v1, p0, mTransition:Landroid/animation/LayoutTransition;

    if-eqz v1, :cond_e

    .line 4999
    iget-object v0, p0, mTransition:Landroid/animation/LayoutTransition;

    .line 5000
    .local v0, "previousTransition":Landroid/animation/LayoutTransition;
    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->cancel()V

    .line 5001
    iget-object v1, p0, mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 5003
    .end local v0    # "previousTransition":Landroid/animation/LayoutTransition;
    :cond_e
    iput-object p1, p0, mTransition:Landroid/animation/LayoutTransition;

    .line 5004
    iget-object v1, p0, mTransition:Landroid/animation/LayoutTransition;

    if-eqz v1, :cond_1b

    .line 5005
    iget-object v1, p0, mTransition:Landroid/animation/LayoutTransition;

    iget-object v2, p0, mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 5007
    :cond_1b
    return-void
.end method

.method public setMotionEventSplittingEnabled(Z)V
    .registers 4
    .param p1, "split"    # Z

    .prologue
    .line 2903
    if-eqz p1, :cond_a

    .line 2904
    iget v0, p0, mGroupFlags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, mGroupFlags:I

    .line 2908
    :goto_9
    return-void

    .line 2906
    :cond_a
    iget v0, p0, mGroupFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, mGroupFlags:I

    goto :goto_9
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 4543
    iput-object p1, p0, mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 4544
    return-void
.end method

.method public setPersistentDrawingCache(I)V
    .registers 3
    .param p1, "drawingCacheToKeep"    # I

    .prologue
    .line 6071
    and-int/lit8 v0, p1, 0x3

    iput v0, p0, mPersistentDrawingCache:I

    .line 6072
    return-void
.end method

.method protected setStaticTransformationsEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 4114
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, setBooleanFlag(IZ)V

    .line 4115
    return-void
.end method

.method public setTouchscreenBlocksFocus(Z)V
    .registers 6
    .param p1, "touchscreenBlocksFocus"    # Z

    .prologue
    .line 1144
    if-eqz p1, :cond_24

    .line 1145
    iget v2, p0, mGroupFlags:I

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    iput v2, p0, mGroupFlags:I

    .line 1146
    invoke-virtual {p0}, hasFocus()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1147
    invoke-virtual {p0}, getDeepestFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1148
    .local v0, "focusedChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_23

    .line 1149
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, focusSearch(I)Landroid/view/View;

    move-result-object v1

    .line 1150
    .local v1, "newFocus":Landroid/view/View;
    if-eqz v1, :cond_23

    .line 1151
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1158
    .end local v0    # "focusedChild":Landroid/view/View;
    .end local v1    # "newFocus":Landroid/view/View;
    :cond_23
    :goto_23
    return-void

    .line 1156
    :cond_24
    iget v2, p0, mGroupFlags:I

    const v3, -0x4000001

    and-int/2addr v2, v3

    iput v2, p0, mGroupFlags:I

    goto :goto_23
.end method

.method public setTransitionGroup(Z)V
    .registers 4
    .param p1, "isTransitionGroup"    # Z

    .prologue
    .line 2951
    iget v0, p0, mGroupFlags:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, mGroupFlags:I

    .line 2952
    if-eqz p1, :cond_11

    .line 2953
    iget v0, p0, mGroupFlags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, mGroupFlags:I

    .line 2957
    :goto_10
    return-void

    .line 2955
    :cond_11
    iget v0, p0, mGroupFlags:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, mGroupFlags:I

    goto :goto_10
.end method

.method shouldBlockFocusForTouchscreen()Z
    .registers 3

    .prologue
    .line 1168
    invoke-virtual {p0}, getTouchscreenBlocksFocus()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 7003
    const/4 v0, 0x1

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 3
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 785
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_e

    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 6
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const v2, -0x10000001

    .line 793
    iget v0, p0, mGroupFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-nez v0, :cond_23

    .line 796
    :try_start_a
    iget v0, p0, mGroupFlags:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, mGroupFlags:I

    .line 797
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_1c

    move-result-object v0

    .line 799
    iget v1, p0, mGroupFlags:I

    and-int/2addr v1, v2

    iput v1, p0, mGroupFlags:I

    .line 803
    :goto_1b
    return-object v0

    .line 799
    :catchall_1c
    move-exception v0

    iget v1, p0, mGroupFlags:I

    and-int/2addr v1, v2

    iput v1, p0, mGroupFlags:I

    throw v0

    .line 803
    :cond_23
    sget-object v0, SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    goto :goto_1b
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 9
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .prologue
    const v4, -0x8000001

    .line 813
    iget v2, p0, mGroupFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-nez v2, :cond_28

    if-nez p3, :cond_28

    .line 817
    :try_start_c
    iget v2, p0, mGroupFlags:I

    const/high16 v3, 0x8000000

    or-int/2addr v2, v3

    iput v2, p0, mGroupFlags:I

    .line 818
    invoke-virtual {p0, p1, p2}, startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_21

    move-result-object v1

    .line 820
    .local v1, "mode":Landroid/view/ActionMode;
    iget v2, p0, mGroupFlags:I

    and-int/2addr v2, v4

    iput v2, p0, mGroupFlags:I

    .line 822
    sget-object v2, SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    if-eq v1, v2, :cond_28

    .line 834
    .end local v1    # "mode":Landroid/view/ActionMode;
    :goto_20
    return-object v1

    .line 820
    :catchall_21
    move-exception v2

    iget v3, p0, mGroupFlags:I

    and-int/2addr v3, v4

    iput v3, p0, mGroupFlags:I

    throw v2

    .line 826
    :cond_28
    iget-object v2, p0, mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_3b

    .line 828
    :try_start_2c
    iget-object v2, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p1, p2, p3}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    :try_end_31
    .catch Ljava/lang/AbstractMethodError; {:try_start_2c .. :try_end_31} :catch_33

    move-result-object v1

    goto :goto_20

    .line 829
    :catch_33
    move-exception v0

    .line 831
    .local v0, "ame":Ljava/lang/AbstractMethodError;
    iget-object v2, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p1, p2}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    goto :goto_20

    .line 834
    .end local v0    # "ame":Ljava/lang/AbstractMethodError;
    :cond_3b
    const/4 v1, 0x0

    goto :goto_20
.end method

.method public startLayoutAnimation()V
    .registers 2

    .prologue
    .line 5841
    iget-object v0, p0, mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_d

    .line 5842
    iget v0, p0, mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, mGroupFlags:I

    .line 5843
    invoke-virtual {p0}, requestLayout()V

    .line 5845
    :cond_d
    return-void
.end method

.method public startViewTransition(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6512
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-ne v0, p0, :cond_14

    .line 6513
    iget-object v0, p0, mTransitioningViews:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    .line 6514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mTransitioningViews:Ljava/util/ArrayList;

    .line 6516
    :cond_f
    iget-object v0, p0, mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6518
    :cond_14
    return-void
.end method

.method public suppressLayout(Z)V
    .registers 3
    .param p1, "suppress"    # Z

    .prologue
    .line 6586
    iput-boolean p1, p0, mSuppressLayout:Z

    .line 6587
    if-nez p1, :cond_e

    .line 6588
    iget-boolean v0, p0, mLayoutCalledWhileSuppressed:Z

    if-eqz v0, :cond_e

    .line 6589
    invoke-virtual {p0}, requestLayout()V

    .line 6590
    const/4 v0, 0x0

    iput-boolean v0, p0, mLayoutCalledWhileSuppressed:Z

    .line 6593
    :cond_e
    return-void
.end method

.method public transformPointToViewLocal([FLandroid/view/View;)V
    .registers 7
    .param p1, "point"    # [F
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 2769
    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, mScrollX:I

    iget v3, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 2770
    const/4 v0, 0x1

    aget v1, p1, v0

    iget v2, p0, mScrollY:I

    iget v3, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 2772
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_25

    .line 2773
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2775
    :cond_25
    return-void
.end method

.method protected twGetItemCount()I
    .registers 2

    .prologue
    .line 2209
    const/4 v0, 0x0

    return v0
.end method

.method public twOffsetChildrenLeftAndRight(I)V
    .registers 9
    .param p1, "offset"    # I

    .prologue
    const/4 v6, 0x0

    .line 5721
    iget v1, p0, mChildrenCount:I

    .line 5722
    .local v1, "count":I
    iget-object v0, p0, mChildren:[Landroid/view/View;

    .line 5723
    .local v0, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .line 5725
    .local v3, "invalidate":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_22

    .line 5726
    aget-object v4, v0, v2

    .line 5727
    .local v4, "v":Landroid/view/View;
    iget v5, v4, Landroid/view/View;->mLeft:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/View;->mLeft:I

    .line 5728
    iget v5, v4, Landroid/view/View;->mRight:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/View;->mRight:I

    .line 5729
    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    if-eqz v5, :cond_1f

    .line 5730
    const/4 v3, 0x1

    .line 5731
    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v5, p1}, Landroid/view/RenderNode;->offsetLeftAndRight(I)Z

    .line 5725
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 5735
    .end local v4    # "v":Landroid/view/View;
    :cond_22
    if-eqz v3, :cond_27

    .line 5736
    invoke-virtual {p0, v6, v6}, invalidateViewProperty(ZZ)V

    .line 5738
    :cond_27
    invoke-virtual {p0}, notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 5739
    return-void
.end method

.method public twSetSelection(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 2200
    return-void
.end method

.method public twSmoothScrollBy(I)V
    .registers 2
    .param p1, "distance"    # I

    .prologue
    .line 2190
    return-void
.end method

.method unFocus(Landroid/view/View;)V
    .registers 3
    .param p1, "focused"    # Landroid/view/View;

    .prologue
    .line 1009
    iget-object v0, p0, mFocused:Landroid/view/View;

    if-nez v0, :cond_8

    .line 1010
    invoke-super {p0, p1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 1015
    :goto_7
    return-void

    .line 1012
    :cond_8
    iget-object v0, p0, mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 1013
    const/4 v0, 0x0

    iput-object v0, p0, mFocused:Landroid/view/View;

    goto :goto_7
.end method

.method updateLocalSystemUiVisibility(II)Z
    .registers 9
    .param p1, "localValue"    # I
    .param p2, "localChanges"    # I

    .prologue
    .line 1678
    invoke-super {p0, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v0

    .line 1680
    .local v0, "changed":Z
    iget v3, p0, mChildrenCount:I

    .line 1681
    .local v3, "count":I
    iget-object v2, p0, mChildren:[Landroid/view/View;

    .line 1682
    .local v2, "children":[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_9
    if-ge v4, v3, :cond_15

    .line 1683
    aget-object v1, v2, v4

    .line 1684
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1682
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1686
    .end local v1    # "child":Landroid/view/View;
    :cond_15
    return v0
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 4497
    invoke-virtual {p0, p2}, checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 4498
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid LayoutParams supplied to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4500
    :cond_1f
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eq v0, p0, :cond_3c

    .line 4501
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given view not a child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4503
    :cond_3c
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4504
    return-void
.end method
