.class public Landroid/widget/ExpandableListView;
.super Landroid/widget/ListView;
.source "ExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ExpandableListView$1;,
        Landroid/widget/ExpandableListView$SavedState;,
        Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;,
        Landroid/widget/ExpandableListView$OnChildClickListener;,
        Landroid/widget/ExpandableListView$OnGroupClickListener;,
        Landroid/widget/ExpandableListView$OnGroupExpandListener;,
        Landroid/widget/ExpandableListView$OnGroupCollapseListener;
    }
.end annotation


# static fields
.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final CHILD_LAST_STATE_SET:[I

.field private static final EMPTY_STATE_SET:[I

.field private static final GROUP_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_STATE_SET:[I

.field private static final GROUP_STATE_SETS:[[I

.field private static final INDICATOR_UNDEFINED:I = -0x2

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL


# instance fields
.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorEnd:I

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mChildIndicatorStart:I

.field private mConnector:Landroid/widget/ExpandableListConnector;

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private mIndicatorEnd:I

.field private mIndicatorLeft:I

.field private final mIndicatorRect:Landroid/graphics/Rect;

.field private mIndicatorRight:I

.field private mIndicatorStart:I

.field private mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 189
    new-array v0, v3, [I

    sput-object v0, EMPTY_STATE_SET:[I

    .line 192
    new-array v0, v4, [I

    const v1, 0x10100a8

    aput v1, v0, v3

    sput-object v0, GROUP_EXPANDED_STATE_SET:[I

    .line 196
    new-array v0, v4, [I

    const v1, 0x10100a9

    aput v1, v0, v3

    sput-object v0, GROUP_EMPTY_STATE_SET:[I

    .line 200
    new-array v0, v2, [I

    fill-array-data v0, :array_40

    sput-object v0, GROUP_EXPANDED_EMPTY_STATE_SET:[I

    .line 204
    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget-object v1, EMPTY_STATE_SET:[I

    aput-object v1, v0, v3

    sget-object v1, GROUP_EXPANDED_STATE_SET:[I

    aput-object v1, v0, v4

    sget-object v1, GROUP_EMPTY_STATE_SET:[I

    aput-object v1, v0, v2

    const/4 v1, 0x3

    sget-object v2, GROUP_EXPANDED_EMPTY_STATE_SET:[I

    aput-object v2, v0, v1

    sput-object v0, GROUP_STATE_SETS:[[I

    .line 212
    new-array v0, v4, [I

    const v1, 0x10100a6

    aput v1, v0, v3

    sput-object v0, CHILD_LAST_STATE_SET:[I

    return-void

    .line 200
    :array_40
    .array-data 4
        0x10100a8
        0x10100a9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 226
    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 231
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, -0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 235
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 219
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mIndicatorRect:Landroid/graphics/Rect;

    .line 237
    sget-object v1, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 240
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 242
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 244
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, mIndicatorLeft:I

    .line 246
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, mIndicatorRight:I

    .line 248
    iget v1, p0, mIndicatorRight:I

    if-nez v1, :cond_41

    iget-object v1, p0, mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_41

    .line 249
    iget v1, p0, mIndicatorLeft:I

    iget-object v2, p0, mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, mIndicatorRight:I

    .line 251
    :cond_41
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, mChildIndicatorLeft:I

    .line 254
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, mChildIndicatorRight:I

    .line 257
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 260
    invoke-direct {p0}, isRtlCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_7b

    .line 261
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, mIndicatorStart:I

    .line 264
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, mIndicatorEnd:I

    .line 268
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, mChildIndicatorStart:I

    .line 271
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, mChildIndicatorEnd:I

    .line 276
    :cond_7b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 277
    return-void
.end method

.method private getAbsoluteFlatPosition(I)I
    .registers 3
    .param p1, "flatListPosition"    # I

    .prologue
    .line 641
    invoke-virtual {p0}, getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J
    .registers 5
    .param p1, "position"    # Landroid/widget/ExpandableListPosition;

    .prologue
    .line 1146
    iget v0, p1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 1147
    iget-object v0, p0, mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v2, p1, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 1149
    :goto_f
    return-wide v0

    :cond_10
    iget-object v0, p0, mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    goto :goto_f
.end method

.method private getFlatPositionForConnector(I)I
    .registers 3
    .param p1, "flatListPosition"    # I

    .prologue
    .line 630
    invoke-virtual {p0}, getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .registers 11
    .param p1, "pos"    # Landroid/widget/ExpandableListConnector$PositionMetadata;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 480
    iget-object v7, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v7, v7, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v7, v6, :cond_39

    .line 481
    iget-object v0, p0, mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 483
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_34

    .line 487
    iget-object v7, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    if-eqz v7, :cond_21

    iget-object v7, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v7, v7, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v8, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v8, v8, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v7, v8, :cond_35

    :cond_21
    move v1, v5

    .line 490
    .local v1, "isEmpty":Z
    :goto_22
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v7

    if-eqz v7, :cond_37

    :goto_28
    if-eqz v1, :cond_2b

    move v4, v6

    :cond_2b
    or-int v3, v5, v4

    .line 493
    .local v3, "stateSetIndex":I
    sget-object v4, GROUP_STATE_SETS:[[I

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 507
    .end local v1    # "isEmpty":Z
    .end local v3    # "stateSetIndex":I
    :cond_34
    :goto_34
    return-object v0

    :cond_35
    move v1, v4

    .line 487
    goto :goto_22

    .restart local v1    # "isEmpty":Z
    :cond_37
    move v5, v4

    .line 490
    goto :goto_28

    .line 496
    .end local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    .end local v1    # "isEmpty":Z
    :cond_39
    iget-object v0, p0, mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 498
    .restart local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 500
    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->flatListPos:I

    iget-object v5, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v5, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v4, v5, :cond_53

    sget-object v2, CHILD_LAST_STATE_SET:[I

    .line 503
    .local v2, "stateSet":[I
    :goto_4f
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_34

    .line 500
    .end local v2    # "stateSet":[I
    :cond_53
    sget-object v2, EMPTY_STATE_SET:[I

    goto :goto_4f
.end method

.method public static getPackedPositionChild(J)I
    .registers 10
    .param p0, "packedPosition"    # J

    .prologue
    const-wide v6, 0xffffffffL

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v0, -0x1

    .line 1074
    cmp-long v1, p0, v6

    if-nez v1, :cond_d

    .line 1079
    :cond_c
    :goto_c
    return v0

    .line 1077
    :cond_d
    and-long v2, p0, v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_c

    .line 1079
    and-long v0, p0, v6

    long-to-int v0, v0

    goto :goto_c
.end method

.method public static getPackedPositionForChild(II)J
    .registers 8
    .param p0, "groupPosition"    # I
    .param p1, "childPosition"    # I

    .prologue
    .line 1099
    const-wide/high16 v0, -0x8000000000000000L

    int-to-long v2, p0

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionForGroup(I)J
    .registers 5
    .param p0, "groupPosition"    # I

    .prologue
    .line 1114
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .registers 6
    .param p0, "packedPosition"    # J

    .prologue
    .line 1055
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    const/4 v0, -0x1

    .line 1057
    :goto_a
    return v0

    :cond_b
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_a
.end method

.method public static getPackedPositionType(J)I
    .registers 6
    .param p0, "packedPosition"    # J

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 1035
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_d

    .line 1036
    const/4 v0, 0x2

    .line 1039
    :goto_c
    return v0

    :cond_d
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_c

    :cond_15
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private hasRtlSupport()Z
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    return v0
.end method

.method private isHeaderOrFooterPosition(I)Z
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 618
    iget v1, p0, mItemCount:I

    invoke-virtual {p0}, getFooterViewsCount()I

    move-result v2

    sub-int v0, v1, v2

    .line 619
    .local v0, "footerViewsStart":I
    invoke-virtual {p0}, getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_10

    if-lt p1, v0, :cond_12

    :cond_10
    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private isRtlCompatibilityMode()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 284
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v1, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 285
    .local v1, "targetSdkVersion":I
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_25

    move v0, v3

    .line 287
    .local v0, "isSystemApp":Z
    :goto_17
    const/16 v4, 0x11

    if-ge v1, v4, :cond_1d

    if-eqz v0, :cond_23

    :cond_1d
    invoke-direct {p0}, hasRtlSupport()Z

    move-result v4

    if-nez v4, :cond_24

    :cond_23
    move v2, v3

    :cond_24
    return v2

    .end local v0    # "isSystemApp":Z
    :cond_25
    move v0, v2

    .line 285
    goto :goto_17
.end method

.method private resolveChildIndicator()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 333
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v0

    .line 334
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_18

    .line 335
    iget v1, p0, mChildIndicatorStart:I

    if-lt v1, v2, :cond_f

    .line 336
    iget v1, p0, mChildIndicatorStart:I

    iput v1, p0, mChildIndicatorRight:I

    .line 338
    :cond_f
    iget v1, p0, mChildIndicatorEnd:I

    if-lt v1, v2, :cond_17

    .line 339
    iget v1, p0, mChildIndicatorEnd:I

    iput v1, p0, mChildIndicatorLeft:I

    .line 349
    :cond_17
    :goto_17
    return-void

    .line 342
    :cond_18
    iget v1, p0, mChildIndicatorStart:I

    if-lt v1, v2, :cond_20

    .line 343
    iget v1, p0, mChildIndicatorStart:I

    iput v1, p0, mChildIndicatorLeft:I

    .line 345
    :cond_20
    iget v1, p0, mChildIndicatorEnd:I

    if-lt v1, v2, :cond_17

    .line 346
    iget v1, p0, mChildIndicatorEnd:I

    iput v1, p0, mChildIndicatorRight:I

    goto :goto_17
.end method

.method private resolveIndicator()V
    .registers 4

    .prologue
    .line 307
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v0

    .line 308
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_2a

    .line 309
    iget v1, p0, mIndicatorStart:I

    if-ltz v1, :cond_e

    .line 310
    iget v1, p0, mIndicatorStart:I

    iput v1, p0, mIndicatorRight:I

    .line 312
    :cond_e
    iget v1, p0, mIndicatorEnd:I

    if-ltz v1, :cond_16

    .line 313
    iget v1, p0, mIndicatorEnd:I

    iput v1, p0, mIndicatorLeft:I

    .line 323
    :cond_16
    :goto_16
    iget v1, p0, mIndicatorRight:I

    if-nez v1, :cond_29

    iget-object v1, p0, mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_29

    .line 324
    iget v1, p0, mIndicatorLeft:I

    iget-object v2, p0, mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, mIndicatorRight:I

    .line 326
    :cond_29
    return-void

    .line 316
    :cond_2a
    iget v1, p0, mIndicatorStart:I

    if-ltz v1, :cond_32

    .line 317
    iget v1, p0, mIndicatorStart:I

    iput v1, p0, mIndicatorLeft:I

    .line 319
    :cond_32
    iget v1, p0, mIndicatorEnd:I

    if-ltz v1, :cond_16

    .line 320
    iget v1, p0, mIndicatorEnd:I

    iput v1, p0, mIndicatorRight:I

    goto :goto_16
.end method


# virtual methods
.method public collapseGroup(I)Z
    .registers 4
    .param p1, "groupPos"    # I

    .prologue
    .line 777
    iget-object v1, p0, mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, p1}, Landroid/widget/ExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    .line 779
    .local v0, "retValue":Z
    iget-object v1, p0, mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_f

    .line 780
    iget-object v1, p0, mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 783
    :cond_f
    return v0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flatListPosition"    # I
    .param p3, "id"    # J

    .prologue
    .line 1120
    invoke-direct {p0, p2}, isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1122
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 1134
    :goto_b
    return-object v0

    .line 1125
    :cond_c
    invoke-direct {p0, p2}, getFlatPositionForConnector(I)I

    move-result v6

    .line 1126
    .local v6, "adjustedPosition":I
    iget-object v0, p0, mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, v6}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v7

    .line 1127
    .local v7, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v8, v7, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 1129
    .local v8, "pos":Landroid/widget/ExpandableListPosition;
    invoke-direct {p0, v8}, getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide p3

    .line 1130
    invoke-virtual {v8}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 1132
    .local v2, "packedPosition":J
    invoke-virtual {v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 1134
    new-instance v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    goto :goto_b
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 31
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 354
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, mChildIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    if-nez v24, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, mGroupIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    if-nez v24, :cond_14

    .line 467
    :cond_13
    :goto_13
    return-void

    .line 361
    :cond_14
    const/16 v19, 0x0

    .line 362
    .local v19, "saveCount":I
    move-object/from16 v0, p0

    iget v0, v0, mGroupFlags:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x22

    const/16 v25, 0x22

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_bc

    const/4 v8, 0x1

    .line 363
    .local v8, "clipToPadding":Z
    :goto_27
    if-eqz v8, :cond_86

    .line 364
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v19

    .line 365
    move-object/from16 v0, p0

    iget v0, v0, mScrollX:I

    move/from16 v20, v0

    .line 366
    .local v20, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, mScrollY:I

    move/from16 v21, v0

    .line 367
    .local v21, "scrollY":I
    move-object/from16 v0, p0

    iget v0, v0, mPaddingLeft:I

    move/from16 v24, v0

    add-int v24, v24, v20

    move-object/from16 v0, p0

    iget v0, v0, mPaddingTop:I

    move/from16 v25, v0

    add-int v25, v25, v21

    move-object/from16 v0, p0

    iget v0, v0, mRight:I

    move/from16 v26, v0

    add-int v26, v26, v20

    move-object/from16 v0, p0

    iget v0, v0, mLeft:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, mPaddingRight:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, mBottom:I

    move/from16 v27, v0

    add-int v27, v27, v21

    move-object/from16 v0, p0

    iget v0, v0, mTop:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, mPaddingBottom:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 372
    .end local v20    # "scrollX":I
    .end local v21    # "scrollY":I
    :cond_86
    invoke-virtual/range {p0 .. p0}, getHeaderViewsCount()I

    move-result v9

    .line 374
    .local v9, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, mItemCount:I

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, getFooterViewsCount()I

    move-result v25

    sub-int v24, v24, v25

    sub-int v24, v24, v9

    add-int/lit8 v15, v24, -0x1

    .line 376
    .local v15, "lastChildFlPos":I
    move-object/from16 v0, p0

    iget v0, v0, mBottom:I

    move/from16 v17, v0

    .line 384
    .local v17, "myB":I
    const/16 v16, -0x4

    .line 386
    .local v16, "lastItemType":I
    move-object/from16 v0, p0

    iget-object v12, v0, mIndicatorRect:Landroid/graphics/Rect;

    .line 391
    .local v12, "indicatorRect":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v6

    .line 392
    .local v6, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v24, v0

    sub-int v7, v24, v9

    .local v7, "childFlPos":I
    :goto_b3
    if-ge v10, v6, :cond_c1

    .line 395
    if-gez v7, :cond_bf

    .line 393
    :cond_b7
    :goto_b7
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_b3

    .line 362
    .end local v6    # "childCount":I
    .end local v7    # "childFlPos":I
    .end local v8    # "clipToPadding":Z
    .end local v9    # "headerViewsCount":I
    .end local v10    # "i":I
    .end local v12    # "indicatorRect":Landroid/graphics/Rect;
    .end local v15    # "lastChildFlPos":I
    .end local v16    # "lastItemType":I
    .end local v17    # "myB":I
    :cond_bc
    const/4 v8, 0x0

    goto/16 :goto_27

    .line 398
    .restart local v6    # "childCount":I
    .restart local v7    # "childFlPos":I
    .restart local v8    # "clipToPadding":Z
    .restart local v9    # "headerViewsCount":I
    .restart local v10    # "i":I
    .restart local v12    # "indicatorRect":Landroid/graphics/Rect;
    .restart local v15    # "lastChildFlPos":I
    .restart local v16    # "lastItemType":I
    .restart local v17    # "myB":I
    :cond_bf
    if-le v7, v15, :cond_cc

    .line 464
    :cond_c1
    if-eqz v8, :cond_13

    .line 465
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_13

    .line 403
    :cond_cc
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 404
    .local v14, "item":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v22

    .line 405
    .local v22, "t":I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 408
    .local v5, "b":I
    if-ltz v5, :cond_b7

    move/from16 v0, v22

    move/from16 v1, v17

    if-gt v0, v1, :cond_b7

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, mConnector:Landroid/widget/ExpandableListConnector;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v18

    .line 413
    .local v18, "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual/range {p0 .. p0}, isLayoutRtl()Z

    move-result v13

    .line 414
    .local v13, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v23

    .line 418
    .local v23, "width":I
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v16

    if-eq v0, v1, :cond_198

    .line 419
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_22b

    .line 420
    if-eqz v13, :cond_1eb

    .line 421
    move-object/from16 v0, p0

    iget v0, v0, mChildIndicatorLeft:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1cb

    move-object/from16 v0, p0

    iget v0, v0, mRight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, mIndicatorRight:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    :goto_13a
    move/from16 v0, v24

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 423
    move-object/from16 v0, p0

    iget v0, v0, mChildIndicatorRight:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1db

    move-object/from16 v0, p0

    iget v0, v0, mRight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, mIndicatorLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    :goto_15a
    move/from16 v0, v24

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 436
    :goto_15e
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    if-eqz v13, :cond_257

    move-object/from16 v0, p0

    iget v0, v0, mPaddingRight:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    :goto_16f
    add-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 437
    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    if-eqz v13, :cond_25f

    move-object/from16 v0, p0

    iget v0, v0, mPaddingRight:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    :goto_186
    add-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 439
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move/from16 v16, v0

    .line 442
    :cond_198
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1c6

    .line 444
    move-object/from16 v0, p0

    iget-boolean v0, v0, mStackFromBottom:Z

    move/from16 v24, v0

    if-eqz v24, :cond_267

    .line 446
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 447
    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    .line 454
    :goto_1b4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 455
    .local v11, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_1c6

    .line 457
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 458
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 461
    .end local v11    # "indicator":Landroid/graphics/drawable/Drawable;
    :cond_1c6
    invoke-virtual/range {v18 .. v18}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto/16 :goto_b7

    .line 421
    :cond_1cb
    move-object/from16 v0, p0

    iget v0, v0, mRight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, mChildIndicatorRight:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    goto/16 :goto_13a

    .line 423
    :cond_1db
    move-object/from16 v0, p0

    iget v0, v0, mRight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, mChildIndicatorLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    goto/16 :goto_15a

    .line 426
    :cond_1eb
    move-object/from16 v0, p0

    iget v0, v0, mChildIndicatorLeft:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_21d

    move-object/from16 v0, p0

    iget v0, v0, mIndicatorLeft:I

    move/from16 v24, v0

    :goto_1ff
    move/from16 v0, v24

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 428
    move-object/from16 v0, p0

    iget v0, v0, mChildIndicatorRight:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_224

    move-object/from16 v0, p0

    iget v0, v0, mIndicatorRight:I

    move/from16 v24, v0

    :goto_217
    move/from16 v0, v24

    iput v0, v12, Landroid/graphics/Rect;->right:I

    goto/16 :goto_15e

    .line 426
    :cond_21d
    move-object/from16 v0, p0

    iget v0, v0, mChildIndicatorLeft:I

    move/from16 v24, v0

    goto :goto_1ff

    .line 428
    :cond_224
    move-object/from16 v0, p0

    iget v0, v0, mChildIndicatorRight:I

    move/from16 v24, v0

    goto :goto_217

    .line 432
    :cond_22b
    if-eqz v13, :cond_249

    move-object/from16 v0, p0

    iget v0, v0, mIndicatorRight:I

    move/from16 v24, v0

    sub-int v24, v23, v24

    :goto_235
    move/from16 v0, v24

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 433
    if-eqz v13, :cond_250

    move-object/from16 v0, p0

    iget v0, v0, mIndicatorLeft:I

    move/from16 v24, v0

    sub-int v24, v23, v24

    :goto_243
    move/from16 v0, v24

    iput v0, v12, Landroid/graphics/Rect;->right:I

    goto/16 :goto_15e

    .line 432
    :cond_249
    move-object/from16 v0, p0

    iget v0, v0, mIndicatorLeft:I

    move/from16 v24, v0

    goto :goto_235

    .line 433
    :cond_250
    move-object/from16 v0, p0

    iget v0, v0, mIndicatorRight:I

    move/from16 v24, v0

    goto :goto_243

    .line 436
    :cond_257
    move-object/from16 v0, p0

    iget v0, v0, mPaddingLeft:I

    move/from16 v24, v0

    goto/16 :goto_16f

    .line 437
    :cond_25f
    move-object/from16 v0, p0

    iget v0, v0, mPaddingLeft:I

    move/from16 v24, v0

    goto/16 :goto_186

    .line 449
    :cond_267
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 450
    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1b4
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 523
    iget v4, p0, mFirstPosition:I

    add-int v2, p3, v4

    .line 527
    .local v2, "flatListPosition":I
    if-ltz v2, :cond_36

    .line 528
    invoke-direct {p0, v2}, getFlatPositionForConnector(I)I

    move-result v0

    .line 529
    .local v0, "adjustedPosition":I
    iget-object v4, p0, mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v4, v0}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v3

    .line 531
    .local v3, "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v4, v3, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_27

    invoke-virtual {v3}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_33

    iget-object v4, v3, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v4, v4, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v5, v3, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v5, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-eq v4, v5, :cond_33

    .line 534
    :cond_27
    iget-object v1, p0, mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 535
    .local v1, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 536
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 537
    invoke-virtual {v3}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 545
    .end local v0    # "adjustedPosition":I
    .end local v1    # "divider":Landroid/graphics/drawable/Drawable;
    .end local v3    # "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    :goto_32
    return-void

    .line 540
    .restart local v0    # "adjustedPosition":I
    .restart local v3    # "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    :cond_33
    invoke-virtual {v3}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 544
    .end local v0    # "adjustedPosition":I
    .end local v3    # "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    :cond_36
    invoke-super {p0, p1, p2, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_32
.end method

.method public expandGroup(I)Z
    .registers 3
    .param p1, "groupPos"    # I

    .prologue
    .line 735
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, expandGroup(IZ)Z

    move-result v0

    return v0
.end method

.method public expandGroup(IZ)Z
    .registers 10
    .param p1, "groupPos"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, -0x1

    .line 747
    const/4 v5, 0x2

    invoke-static {v5, p1, v6, v6}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 749
    .local v0, "elGroupPos":Landroid/widget/ExpandableListPosition;
    iget-object v5, p0, mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v5, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 750
    .local v2, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 751
    iget-object v5, p0, mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v5, v2}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v3

    .line 753
    .local v3, "retValue":Z
    iget-object v5, p0, mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz v5, :cond_1e

    .line 754
    iget-object v5, p0, mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    invoke-interface {v5, p1}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 757
    :cond_1e
    if-eqz p2, :cond_34

    .line 758
    iget-object v5, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v5, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 760
    .local v1, "groupFlatPos":I
    invoke-virtual {p0}, getHeaderViewsCount()I

    move-result v5

    add-int v4, v1, v5

    .line 761
    .local v4, "shiftedGroupPosition":I
    iget-object v5, p0, mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0, v5, v4}, smoothScrollToPosition(II)V

    .line 764
    .end local v1    # "groupFlatPos":I
    .end local v4    # "shiftedGroupPosition":I
    :cond_34
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 766
    return v3
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1347
    const-class v0, Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 85
    invoke-virtual {p0}, getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 570
    invoke-super {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .registers 2

    .prologue
    .line 610
    iget-object v0, p0, mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .registers 7
    .param p1, "flatListPosition"    # I

    .prologue
    .line 889
    invoke-direct {p0, p1}, isHeaderOrFooterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 890
    const-wide v2, 0xffffffffL

    .line 897
    :goto_b
    return-wide v2

    .line 893
    :cond_c
    invoke-direct {p0, p1}, getFlatPositionForConnector(I)I

    move-result v0

    .line 894
    .local v0, "adjustedPosition":I
    iget-object v4, p0, mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v4, v0}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 895
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v4, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-virtual {v4}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 896
    .local v2, "packedPos":J
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_b
.end method

.method public getFlatListPosition(J)I
    .registers 8
    .param p1, "packedPosition"    # J

    .prologue
    .line 912
    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainPosition(J)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 914
    .local v0, "elPackedPos":Landroid/widget/ExpandableListPosition;
    iget-object v3, p0, mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v3, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 915
    .local v2, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 916
    if-nez v2, :cond_11

    const/4 v3, -0x1

    .line 920
    :goto_10
    return v3

    .line 918
    :cond_11
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 919
    .local v1, "flatListPosition":I
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 920
    invoke-direct {p0, v1}, getAbsoluteFlatPosition(I)I

    move-result v3

    goto :goto_10
.end method

.method public getSelectedId()J
    .registers 7

    .prologue
    .line 946
    invoke-virtual {p0}, getSelectedPosition()J

    move-result-wide v2

    .line 947
    .local v2, "packedPos":J
    const-wide v4, 0xffffffffL

    cmp-long v1, v2, v4

    if-nez v1, :cond_10

    const-wide/16 v4, -0x1

    .line 956
    :goto_f
    return-wide v4

    .line 949
    :cond_10
    invoke-static {v2, v3}, getPackedPositionGroup(J)I

    move-result v0

    .line 951
    .local v0, "groupPos":I
    invoke-static {v2, v3}, getPackedPositionType(J)I

    move-result v1

    if-nez v1, :cond_21

    .line 953
    iget-object v1, p0, mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    goto :goto_f

    .line 956
    :cond_21
    iget-object v1, p0, mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v2, v3}, getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v1, v0, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v4

    goto :goto_f
.end method

.method public getSelectedPosition()J
    .registers 5

    .prologue
    .line 932
    invoke-virtual {p0}, getSelectedItemPosition()I

    move-result v0

    .line 935
    .local v0, "selectedPos":I
    invoke-virtual {p0, v0}, getExpandableListPosition(I)J

    move-result-wide v2

    return-wide v2
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .registers 18
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 666
    iget-object v0, p0, mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v10

    .line 668
    .local v10, "posMetadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-direct {p0, v0}, getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide p3

    .line 671
    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7c

    .line 675
    iget-object v0, p0, mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    if-eqz v0, :cond_2c

    .line 676
    iget-object v0, p0, mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    iget-object v1, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListView$OnGroupClickListener;->onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 678
    invoke-virtual {v10}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 679
    const/4 v11, 0x1

    .line 724
    :goto_2b
    return v11

    .line 683
    :cond_2c
    invoke-virtual {v10}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 685
    iget-object v0, p0, mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, v10}, Landroid/widget/ExpandableListConnector;->collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 687
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, playSoundEffect(I)V

    .line 689
    iget-object v0, p0, mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    if-eqz v0, :cond_48

    .line 690
    iget-object v0, p0, mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    iget-object v1, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 710
    :cond_48
    :goto_48
    const/4 v11, 0x1

    .line 722
    .local v11, "returnValue":Z
    :goto_49
    invoke-virtual {v10}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_2b

    .line 694
    .end local v11    # "returnValue":Z
    :cond_4d
    iget-object v0, p0, mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, v10}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 696
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, playSoundEffect(I)V

    .line 698
    iget-object v0, p0, mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz v0, :cond_63

    .line 699
    iget-object v0, p0, mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    iget-object v1, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 702
    :cond_63
    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v9, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 703
    .local v9, "groupPos":I
    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v8, v0, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 705
    .local v8, "groupFlatPos":I
    invoke-virtual {p0}, getHeaderViewsCount()I

    move-result v0

    add-int v12, v8, v0

    .line 706
    .local v12, "shiftedGroupPosition":I
    iget-object v0, p0, mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, v9}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    add-int/2addr v0, v12

    invoke-virtual {p0, v0, v12}, smoothScrollToPosition(II)V

    goto :goto_48

    .line 713
    .end local v8    # "groupFlatPos":I
    .end local v9    # "groupPos":I
    .end local v12    # "shiftedGroupPosition":I
    :cond_7c
    iget-object v0, p0, mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    if-eqz v0, :cond_97

    .line 714
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, playSoundEffect(I)V

    .line 715
    iget-object v1, p0, mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v6, p3

    invoke-interface/range {v1 .. v7}, Landroid/widget/ExpandableListView$OnChildClickListener;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    move-result v11

    goto :goto_2b

    .line 719
    :cond_97
    const/4 v11, 0x0

    .restart local v11    # "returnValue":Z
    goto :goto_49
.end method

.method public isGroupExpanded(I)Z
    .registers 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 1022
    iget-object v0, p0, mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1332
    instance-of v1, p1, Landroid/widget/ExpandableListView$SavedState;

    if-nez v1, :cond_8

    .line 1333
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1343
    :cond_7
    :goto_7
    return-void

    :cond_8
    move-object v0, p1

    .line 1337
    check-cast v0, Landroid/widget/ExpandableListView$SavedState;

    .line 1338
    .local v0, "ss":Landroid/widget/ExpandableListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/ExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1340
    iget-object v1, p0, mConnector:Landroid/widget/ExpandableListConnector;

    if-eqz v1, :cond_7

    iget-object v1, v0, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    .line 1341
    iget-object v1, p0, mConnector:Landroid/widget/ExpandableListConnector;

    iget-object v2, v0, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    goto :goto_7
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 298
    invoke-direct {p0}, resolveIndicator()V

    .line 299
    invoke-direct {p0}, resolveChildIndicator()V

    .line 300
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 1325
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1326
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v2, Landroid/widget/ExpandableListView$SavedState;

    iget-object v1, p0, mConnector:Landroid/widget/ExpandableListConnector;

    if-eqz v1, :cond_14

    iget-object v1, p0, mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_10
    invoke-direct {v2, v0, v1}, Landroid/widget/ExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v2

    :cond_14
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 647
    invoke-direct {p0, p2}, isHeaderOrFooterPosition(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 649
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    .line 654
    :goto_a
    return v1

    .line 653
    :cond_b
    invoke-direct {p0, p2}, getFlatPositionForConnector(I)I

    move-result v0

    .line 654
    .local v0, "adjustedPosition":I
    invoke-virtual {p0, p1, v0, p3, p4}, handleItemClick(Landroid/view/View;IJ)Z

    move-result v1

    goto :goto_a
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 85
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .registers 3
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 592
    iput-object p1, p0, mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 594
    if-eqz p1, :cond_11

    .line 596
    new-instance v0, Landroid/widget/ExpandableListConnector;

    invoke-direct {v0, p1}, Landroid/widget/ExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, mConnector:Landroid/widget/ExpandableListConnector;

    .line 602
    :goto_b
    iget-object v0, p0, mConnector:Landroid/widget/ExpandableListConnector;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 603
    return-void

    .line 598
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, mConnector:Landroid/widget/ExpandableListConnector;

    goto :goto_b
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 555
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "childDivider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 518
    iput-object p1, p0, mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 519
    return-void
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "childIndicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1161
    iput-object p1, p0, mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 1162
    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .registers 3
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1176
    iput p1, p0, mChildIndicatorLeft:I

    .line 1177
    iput p2, p0, mChildIndicatorRight:I

    .line 1178
    invoke-direct {p0}, resolveChildIndicator()V

    .line 1179
    return-void
.end method

.method public setChildIndicatorBoundsRelative(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1193
    iput p1, p0, mChildIndicatorStart:I

    .line 1194
    iput p2, p0, mChildIndicatorEnd:I

    .line 1195
    invoke-direct {p0}, resolveChildIndicator()V

    .line 1196
    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "groupIndicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1207
    iput-object p1, p0, mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 1208
    iget v0, p0, mIndicatorRight:I

    if-nez v0, :cond_15

    iget-object v0, p0, mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 1209
    iget v0, p0, mIndicatorLeft:I

    iget-object v1, p0, mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, mIndicatorRight:I

    .line 1211
    :cond_15
    return-void
.end method

.method public setIndicatorBounds(II)V
    .registers 3
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1225
    iput p1, p0, mIndicatorLeft:I

    .line 1226
    iput p2, p0, mIndicatorRight:I

    .line 1227
    invoke-direct {p0}, resolveIndicator()V

    .line 1228
    return-void
.end method

.method public setIndicatorBoundsRelative(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1242
    iput p1, p0, mIndicatorStart:I

    .line 1243
    iput p2, p0, mIndicatorEnd:I

    .line 1244
    invoke-direct {p0}, resolveIndicator()V

    .line 1245
    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    .registers 2
    .param p1, "onChildClickListener"    # Landroid/widget/ExpandableListView$OnChildClickListener;

    .prologue
    .line 871
    iput-object p1, p0, mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 872
    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .registers 2
    .param p1, "onGroupClickListener"    # Landroid/widget/ExpandableListView$OnGroupClickListener;

    .prologue
    .line 844
    iput-object p1, p0, mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 845
    return-void
.end method

.method public setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V
    .registers 2
    .param p1, "onGroupCollapseListener"    # Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    .prologue
    .line 801
    iput-object p1, p0, mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    .line 802
    return-void
.end method

.method public setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V
    .registers 2
    .param p1, "onGroupExpandListener"    # Landroid/widget/ExpandableListView$OnGroupExpandListener;

    .prologue
    .line 819
    iput-object p1, p0, mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    .line 820
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 583
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 584
    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .registers 9
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "shouldExpandGroup"    # Z

    .prologue
    .line 986
    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainChildPosition(II)Landroid/widget/ExpandableListPosition;

    move-result-object v1

    .line 988
    .local v1, "elChildPos":Landroid/widget/ExpandableListPosition;
    iget-object v3, p0, mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 990
    .local v2, "flatChildPos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    if-nez v2, :cond_23

    .line 994
    if-nez p3, :cond_10

    const/4 v3, 0x0

    .line 1012
    :goto_f
    return v3

    .line 996
    :cond_10
    invoke-virtual {p0, p1}, expandGroup(I)Z

    .line 998
    iget-object v3, p0, mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 1001
    if-nez v2, :cond_23

    .line 1002
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not find child"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1006
    :cond_23
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, getAbsoluteFlatPosition(I)I

    move-result v0

    .line 1007
    .local v0, "absoluteFlatPosition":I
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 1009
    invoke-virtual {v1}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 1010
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 1012
    const/4 v3, 0x1

    goto :goto_f
.end method

.method public setSelectedGroup(I)V
    .registers 6
    .param p1, "groupPosition"    # I

    .prologue
    .line 965
    invoke-static {p1}, Landroid/widget/ExpandableListPosition;->obtainGroupPosition(I)Landroid/widget/ExpandableListPosition;

    move-result-object v1

    .line 967
    .local v1, "elGroupPos":Landroid/widget/ExpandableListPosition;
    iget-object v3, p0, mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 968
    .local v2, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v1}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 969
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, getAbsoluteFlatPosition(I)I

    move-result v0

    .line 970
    .local v0, "absoluteFlatPosition":I
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 971
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 972
    return-void
.end method
