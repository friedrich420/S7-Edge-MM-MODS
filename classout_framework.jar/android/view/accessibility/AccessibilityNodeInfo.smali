.class public Landroid/view/accessibility/AccessibilityNodeInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    }
.end annotation


# static fields
.field public static final ACTION_ACCESSIBILITY_FOCUS:I = 0x40

.field public static final ACTION_ARGUMENT_COLUMN_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_COLUMN_INT"

.field public static final ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN:Ljava/lang/String; = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

.field public static final ACTION_ARGUMENT_HTML_ELEMENT_STRING:Ljava/lang/String; = "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

.field public static final ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT:Ljava/lang/String; = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

.field public static final ACTION_ARGUMENT_ROW_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_ROW_INT"

.field public static final ACTION_ARGUMENT_SELECTION_END_INT:Ljava/lang/String; = "ACTION_ARGUMENT_SELECTION_END_INT"

.field public static final ACTION_ARGUMENT_SELECTION_START_INT:Ljava/lang/String; = "ACTION_ARGUMENT_SELECTION_START_INT"

.field public static final ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE:Ljava/lang/String; = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

.field public static final ACTION_AUTOSCROLL_DOWN:I = 0x2000000

.field public static final ACTION_AUTOSCROLL_OFF:I = 0x800000

.field public static final ACTION_AUTOSCROLL_ON:I = 0x400000

.field public static final ACTION_AUTOSCROLL_SPEED_DOWN:I = 0x20000000

.field public static final ACTION_AUTOSCROLL_SPEED_UP:I = 0x10000000

.field public static final ACTION_AUTOSCROLL_TOP:I = 0x4000000

.field public static final ACTION_AUTOSCROLL_UP:I = 0x1000000

.field public static final ACTION_CLEAR_ACCESSIBILITY_FOCUS:I = 0x80

.field public static final ACTION_CLEAR_FOCUS:I = 0x2

.field public static final ACTION_CLEAR_SELECTION:I = 0x8

.field public static final ACTION_CLICK:I = 0x10

.field public static final ACTION_COLLAPSE:I = 0x80000

.field public static final ACTION_COPY:I = 0x4000

.field public static final ACTION_CUT:I = 0x10000

.field public static final ACTION_DISMISS:I = 0x100000

.field public static final ACTION_EXPAND:I = 0x40000

.field public static final ACTION_FOCUS:I = 0x1

.field public static final ACTION_LONG_CLICK:I = 0x20

.field public static final ACTION_NEXT_AT_MOVEMENT_GRANULARITY:I = 0x100

.field public static final ACTION_NEXT_HTML_ELEMENT:I = 0x400

.field public static final ACTION_PASTE:I = 0x8000

.field public static final ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:I = 0x200

.field public static final ACTION_PREVIOUS_HTML_ELEMENT:I = 0x800

.field public static final ACTION_SCROLL_BACKWARD:I = 0x2000

.field public static final ACTION_SCROLL_FORWARD:I = 0x1000

.field public static final ACTION_SELECT:I = 0x4

.field public static final ACTION_SET_SELECTION:I = 0x20000

.field public static final ACTION_SET_TEXT:I = 0x200000

.field private static final ACTION_TYPE_MASK:I = -0x1000000

.field public static final ACTIVE_WINDOW_ID:I = 0x7fffffff

.field public static final ANY_WINDOW_ID:I = -0x2

.field private static final BOOLEAN_PROPERTY_ACCESSIBILITY_FOCUSED:I = 0x400

.field private static final BOOLEAN_PROPERTY_CHECKABLE:I = 0x1

.field private static final BOOLEAN_PROPERTY_CHECKED:I = 0x2

.field private static final BOOLEAN_PROPERTY_CLICKABLE:I = 0x20

.field private static final BOOLEAN_PROPERTY_CONTENT_INVALID:I = 0x10000

.field private static final BOOLEAN_PROPERTY_CONTEXT_CLICKABLE:I = 0x20000

.field private static final BOOLEAN_PROPERTY_DISMISSABLE:I = 0x4000

.field private static final BOOLEAN_PROPERTY_EDITABLE:I = 0x1000

.field private static final BOOLEAN_PROPERTY_ENABLED:I = 0x80

.field private static final BOOLEAN_PROPERTY_FOCUSABLE:I = 0x4

.field private static final BOOLEAN_PROPERTY_FOCUSED:I = 0x8

.field private static final BOOLEAN_PROPERTY_LONG_CLICKABLE:I = 0x40

.field private static final BOOLEAN_PROPERTY_MULTI_LINE:I = 0x8000

.field private static final BOOLEAN_PROPERTY_OPENS_POPUP:I = 0x2000

.field private static final BOOLEAN_PROPERTY_PASSWORD:I = 0x100

.field private static final BOOLEAN_PROPERTY_SCROLLABLE:I = 0x200

.field private static final BOOLEAN_PROPERTY_SELECTED:I = 0x10

.field private static final BOOLEAN_PROPERTY_VISIBLE_TO_USER:I = 0x800

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final FLAG_INCLUDE_NOT_IMPORTANT_VIEWS:I = 0x8

.field public static final FLAG_PREFETCH_DESCENDANTS:I = 0x4

.field public static final FLAG_PREFETCH_PREDECESSORS:I = 0x1

.field public static final FLAG_PREFETCH_SIBLINGS:I = 0x2

.field public static final FLAG_REPORT_VIEW_IDS:I = 0x10

.field public static final FOCUS_ACCESSIBILITY:I = 0x2

.field public static final FOCUS_INPUT:I = 0x1

.field private static final LAST_LEGACY_STANDARD_ACTION:I = 0x200000

.field private static final MAX_POOL_SIZE:I = 0x32

.field public static final MOVEMENT_GRANULARITY_CHARACTER:I = 0x1

.field public static final MOVEMENT_GRANULARITY_LINE:I = 0x4

.field public static final MOVEMENT_GRANULARITY_PAGE:I = 0x10

.field public static final MOVEMENT_GRANULARITY_PARAGRAPH:I = 0x8

.field public static final MOVEMENT_GRANULARITY_WORD:I = 0x2

.field public static final ROOT_NODE_ID:J

.field public static final UNDEFINED_CONNECTION_ID:I = -0x1

.field public static final UNDEFINED_ITEM_ID:I = 0x7fffffff

.field public static final UNDEFINED_SELECTION_INDEX:I = -0x1

.field private static final VIRTUAL_DESCENDANT_ID_MASK:J = -0x100000000L

.field private static final VIRTUAL_DESCENDANT_ID_SHIFT:I = 0x20

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation
.end field

.field private mBooleanProperties:I

.field private final mBoundsInParent:Landroid/graphics/Rect;

.field private final mBoundsInScreen:Landroid/graphics/Rect;

.field private mChildNodeIds:Landroid/util/LongArray;

.field private mClassName:Ljava/lang/CharSequence;

.field private mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

.field private mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

.field private mConnectionId:I

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mError:Ljava/lang/CharSequence;

.field private mExtras:Landroid/os/Bundle;

.field private mInputType:I

.field private mLabelForId:J

.field private mLabeledById:J

.field private mLiveRegion:I

.field private mMaxTextLength:I

.field private mMovementGranularities:I

.field private mPackageName:Ljava/lang/CharSequence;

.field private mParentNodeId:J

.field private mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

.field private mSealed:Z

.field private mSourceNodeId:J

.field private mText:Ljava/lang/CharSequence;

.field private mTextSelectionEnd:I

.field private mTextSelectionStart:I

.field private mTraversalAfter:J

.field private mTraversalBefore:J

.field private mViewIdResourceName:Ljava/lang/String;

.field private mWindowId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const v0, 0x7fffffff

    .line 80
    invoke-static {v0, v0}, makeNodeId(II)J

    move-result-wide v0

    sput-wide v0, ROOT_NODE_ID:J

    .line 611
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, sPool:Landroid/util/Pools$SynchronizedPool;

    .line 4124
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    const v0, 0x7fffffff

    iput v0, p0, mWindowId:I

    .line 618
    sget-wide v0, ROOT_NODE_ID:J

    iput-wide v0, p0, mSourceNodeId:J

    .line 619
    sget-wide v0, ROOT_NODE_ID:J

    iput-wide v0, p0, mParentNodeId:J

    .line 620
    sget-wide v0, ROOT_NODE_ID:J

    iput-wide v0, p0, mLabelForId:J

    .line 621
    sget-wide v0, ROOT_NODE_ID:J

    iput-wide v0, p0, mLabeledById:J

    .line 622
    sget-wide v0, ROOT_NODE_ID:J

    iput-wide v0, p0, mTraversalBefore:J

    .line 623
    sget-wide v0, ROOT_NODE_ID:J

    iput-wide v0, p0, mTraversalAfter:J

    .line 626
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mBoundsInParent:Landroid/graphics/Rect;

    .line 627
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mBoundsInScreen:Landroid/graphics/Rect;

    .line 639
    iput v2, p0, mMaxTextLength:I

    .line 642
    iput v2, p0, mTextSelectionStart:I

    .line 643
    iput v2, p0, mTextSelectionEnd:I

    .line 644
    iput v3, p0, mInputType:I

    .line 645
    iput v3, p0, mLiveRegion:I

    .line 649
    iput v2, p0, mConnectionId:I

    .line 660
    return-void
.end method

.method static synthetic access$100(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 66
    invoke-static {p0}, getActionSymbolicName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/os/Parcel;)V
    .registers 2
    .param p0, "x0"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "x1"    # Landroid/os/Parcel;

    .prologue
    .line 66
    invoke-direct {p0, p1}, initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .registers 3
    .param p1, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .prologue
    .line 1042
    if-nez p1, :cond_3

    .line 1052
    :goto_2
    return-void

    .line 1046
    :cond_3
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 1047
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mActions:Ljava/util/ArrayList;

    .line 1050
    :cond_e
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1051
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private addChildInternal(Landroid/view/View;IZ)V
    .registers 8
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I
    .param p3, "checked"    # Z

    .prologue
    .line 922
    invoke-virtual {p0}, enforceNotSealed()V

    .line 923
    iget-object v3, p0, mChildNodeIds:Landroid/util/LongArray;

    if-nez v3, :cond_e

    .line 924
    new-instance v3, Landroid/util/LongArray;

    invoke-direct {v3}, Landroid/util/LongArray;-><init>()V

    iput-object v3, p0, mChildNodeIds:Landroid/util/LongArray;

    .line 926
    :cond_e
    if-eqz p1, :cond_23

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v2

    .line 928
    .local v2, "rootAccessibilityViewId":I
    :goto_14
    invoke-static {v2, p2}, makeNodeId(II)J

    move-result-wide v0

    .line 930
    .local v0, "childNodeId":J
    if-eqz p3, :cond_27

    iget-object v3, p0, mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongArray;->indexOf(J)I

    move-result v3

    if-ltz v3, :cond_27

    .line 934
    :goto_22
    return-void

    .line 926
    .end local v0    # "childNodeId":J
    .end local v2    # "rootAccessibilityViewId":I
    :cond_23
    const v2, 0x7fffffff

    goto :goto_14

    .line 933
    .restart local v0    # "childNodeId":J
    .restart local v2    # "rootAccessibilityViewId":I
    :cond_27
    iget-object v3, p0, mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongArray;->add(J)V

    goto :goto_22
.end method

.method private addLegacyStandardActions(I)V
    .registers 7
    .param p1, "actionMask"    # I

    .prologue
    .line 3011
    move v2, p1

    .line 3012
    .local v2, "remainingIds":I
    :goto_1
    if-lez v2, :cond_15

    .line 3013
    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    shl-int v1, v3, v4

    .line 3014
    .local v1, "id":I
    xor-int/lit8 v3, v1, -0x1

    and-int/2addr v2, v3

    .line 3015
    invoke-static {v1}, getActionSingleton(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v0

    .line 3016
    .local v0, "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {p0, v0}, addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1

    .line 3018
    .end local v0    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .end local v1    # "id":I
    :cond_15
    return-void
.end method

.method private canPerformRequestOverConnection(J)Z
    .registers 6
    .param p1, "accessibilityNodeId"    # J

    .prologue
    const v1, 0x7fffffff

    .line 3093
    iget v0, p0, mWindowId:I

    if-eq v0, v1, :cond_14

    invoke-static {p1, p2}, getAccessibilityViewId(J)I

    move-result v0

    if-eq v0, v1, :cond_14

    iget v0, p0, mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private clear()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2946
    iput-boolean v2, p0, mSealed:Z

    .line 2947
    sget-wide v0, ROOT_NODE_ID:J

    iput-wide v0, p0, mSourceNodeId:J

    .line 2948
    sget-wide v0, ROOT_NODE_ID:J

    iput-wide v0, p0, mParentNodeId:J

    .line 2949
    sget-wide v0, ROOT_NODE_ID:J

    iput-wide v0, p0, mLabelForId:J

    .line 2950
    sget-wide v0, ROOT_NODE_ID:J

    iput-wide v0, p0, mLabeledById:J

    .line 2951
    sget-wide v0, ROOT_NODE_ID:J

    iput-wide v0, p0, mTraversalBefore:J

    .line 2952
    sget-wide v0, ROOT_NODE_ID:J

    iput-wide v0, p0, mTraversalAfter:J

    .line 2953
    const v0, 0x7fffffff

    iput v0, p0, mWindowId:I

    .line 2954
    iput v4, p0, mConnectionId:I

    .line 2955
    iput v4, p0, mMaxTextLength:I

    .line 2956
    iput v2, p0, mMovementGranularities:I

    .line 2957
    iget-object v0, p0, mChildNodeIds:Landroid/util/LongArray;

    if-eqz v0, :cond_31

    .line 2958
    iget-object v0, p0, mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v0}, Landroid/util/LongArray;->clear()V

    .line 2960
    :cond_31
    iget-object v0, p0, mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2961
    iget-object v0, p0, mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2962
    iput v2, p0, mBooleanProperties:I

    .line 2963
    iput-object v3, p0, mPackageName:Ljava/lang/CharSequence;

    .line 2964
    iput-object v3, p0, mClassName:Ljava/lang/CharSequence;

    .line 2965
    iput-object v3, p0, mText:Ljava/lang/CharSequence;

    .line 2966
    iput-object v3, p0, mError:Ljava/lang/CharSequence;

    .line 2967
    iput-object v3, p0, mContentDescription:Ljava/lang/CharSequence;

    .line 2968
    iput-object v3, p0, mViewIdResourceName:Ljava/lang/String;

    .line 2969
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_52

    .line 2970
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2972
    :cond_52
    iput v4, p0, mTextSelectionStart:I

    .line 2973
    iput v4, p0, mTextSelectionEnd:I

    .line 2974
    iput v2, p0, mInputType:I

    .line 2975
    iput v2, p0, mLiveRegion:I

    .line 2976
    iget-object v0, p0, mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_63

    .line 2977
    iget-object v0, p0, mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 2979
    :cond_63
    iget-object v0, p0, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    if-eqz v0, :cond_6e

    .line 2980
    iget-object v0, p0, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->recycle()V

    .line 2981
    iput-object v3, p0, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 2983
    :cond_6e
    iget-object v0, p0, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    if-eqz v0, :cond_79

    .line 2984
    iget-object v0, p0, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->recycle()V

    .line 2985
    iput-object v3, p0, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 2987
    :cond_79
    iget-object v0, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    if-eqz v0, :cond_84

    .line 2988
    iget-object v0, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->recycle()V

    .line 2989
    iput-object v3, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 2991
    :cond_84
    return-void
.end method

.method private enforceValidFocusDirection(I)V
    .registers 5
    .param p1, "direction"    # I

    .prologue
    .line 2550
    sparse-switch p1, :sswitch_data_1e

    .line 2559
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2557
    :sswitch_1c
    return-void

    .line 2550
    nop

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_1c
        0x11 -> :sswitch_1c
        0x21 -> :sswitch_1c
        0x42 -> :sswitch_1c
        0x82 -> :sswitch_1c
    .end sparse-switch
.end method

.method private enforceValidFocusType(I)V
    .registers 5
    .param p1, "focusType"    # I

    .prologue
    .line 2564
    packed-switch p1, :pswitch_data_1e

    .line 2569
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown focus type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2567
    :pswitch_1c
    return-void

    .line 2564
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public static getAccessibilityViewId(J)I
    .registers 4
    .param p0, "accessibilityNodeId"    # J

    .prologue
    .line 570
    long-to-int v0, p0

    return v0
.end method

.method private static getActionSingleton(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .registers 5
    .param p0, "actionId"    # I

    .prologue
    .line 2999
    # getter for: Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->sStandardActions:Landroid/util/ArraySet;
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->access$000()Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 3000
    .local v0, "actions":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_1f

    .line 3001
    # getter for: Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->sStandardActions:Landroid/util/ArraySet;
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->access$000()Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 3002
    .local v1, "currentAction":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v3

    if-ne p0, v3, :cond_1c

    .line 3007
    .end local v1    # "currentAction":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :goto_1b
    return-object v1

    .line 3000
    .restart local v1    # "currentAction":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 3007
    .end local v1    # "currentAction":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :cond_1f
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private static getActionSymbolicName(I)Ljava/lang/String;
    .registers 2
    .param p0, "action"    # I

    .prologue
    .line 3027
    sparse-switch p0, :sswitch_data_3c

    .line 3065
    const-string v0, "ACTION_UNKNOWN"

    :goto_5
    return-object v0

    .line 3029
    :sswitch_6
    const-string v0, "ACTION_FOCUS"

    goto :goto_5

    .line 3031
    :sswitch_9
    const-string v0, "ACTION_CLEAR_FOCUS"

    goto :goto_5

    .line 3033
    :sswitch_c
    const-string v0, "ACTION_SELECT"

    goto :goto_5

    .line 3035
    :sswitch_f
    const-string v0, "ACTION_CLEAR_SELECTION"

    goto :goto_5

    .line 3037
    :sswitch_12
    const-string v0, "ACTION_CLICK"

    goto :goto_5

    .line 3039
    :sswitch_15
    const-string v0, "ACTION_LONG_CLICK"

    goto :goto_5

    .line 3041
    :sswitch_18
    const-string v0, "ACTION_ACCESSIBILITY_FOCUS"

    goto :goto_5

    .line 3043
    :sswitch_1b
    const-string v0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    goto :goto_5

    .line 3045
    :sswitch_1e
    const-string v0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    goto :goto_5

    .line 3047
    :sswitch_21
    const-string v0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    goto :goto_5

    .line 3049
    :sswitch_24
    const-string v0, "ACTION_NEXT_HTML_ELEMENT"

    goto :goto_5

    .line 3051
    :sswitch_27
    const-string v0, "ACTION_PREVIOUS_HTML_ELEMENT"

    goto :goto_5

    .line 3053
    :sswitch_2a
    const-string v0, "ACTION_SCROLL_FORWARD"

    goto :goto_5

    .line 3055
    :sswitch_2d
    const-string v0, "ACTION_SCROLL_BACKWARD"

    goto :goto_5

    .line 3057
    :sswitch_30
    const-string v0, "ACTION_CUT"

    goto :goto_5

    .line 3059
    :sswitch_33
    const-string v0, "ACTION_COPY"

    goto :goto_5

    .line 3061
    :sswitch_36
    const-string v0, "ACTION_PASTE"

    goto :goto_5

    .line 3063
    :sswitch_39
    const-string v0, "ACTION_SET_SELECTION"

    goto :goto_5

    .line 3027
    :sswitch_data_3c
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_9
        0x4 -> :sswitch_c
        0x8 -> :sswitch_f
        0x10 -> :sswitch_12
        0x20 -> :sswitch_15
        0x40 -> :sswitch_18
        0x80 -> :sswitch_1b
        0x100 -> :sswitch_1e
        0x200 -> :sswitch_21
        0x400 -> :sswitch_24
        0x800 -> :sswitch_27
        0x1000 -> :sswitch_2a
        0x2000 -> :sswitch_2d
        0x4000 -> :sswitch_33
        0x8000 -> :sswitch_36
        0x10000 -> :sswitch_30
        0x20000 -> :sswitch_39
    .end sparse-switch
.end method

.method private getBooleanProperty(I)Z
    .registers 3
    .param p1, "property"    # I

    .prologue
    .line 2461
    iget v0, p0, mBooleanProperties:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static getMovementGranularitySymbolicName(I)Ljava/lang/String;
    .registers 4
    .param p0, "granularity"    # I

    .prologue
    .line 3076
    sparse-switch p0, :sswitch_data_2c

    .line 3088
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown movement granularity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3078
    :sswitch_1c
    const-string v0, "MOVEMENT_GRANULARITY_CHARACTER"

    .line 3086
    :goto_1e
    return-object v0

    .line 3080
    :sswitch_1f
    const-string v0, "MOVEMENT_GRANULARITY_WORD"

    goto :goto_1e

    .line 3082
    :sswitch_22
    const-string v0, "MOVEMENT_GRANULARITY_LINE"

    goto :goto_1e

    .line 3084
    :sswitch_25
    const-string v0, "MOVEMENT_GRANULARITY_PARAGRAPH"

    goto :goto_1e

    .line 3086
    :sswitch_28
    const-string v0, "MOVEMENT_GRANULARITY_PAGE"

    goto :goto_1e

    .line 3076
    nop

    :sswitch_data_2c
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_1f
        0x4 -> :sswitch_22
        0x8 -> :sswitch_25
        0x10 -> :sswitch_28
    .end sparse-switch
.end method

.method private getNodeForAccessibilityId(J)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 12
    .param p1, "accessibilityId"    # J

    .prologue
    .line 3195
    invoke-direct {p0, p1, p2}, canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3196
    const/4 v0, 0x0

    .line 3199
    :goto_7
    return-object v0

    .line 3198
    :cond_8
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 3199
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, mConnectionId:I

    iget v3, p0, mWindowId:I

    const/4 v6, 0x0

    const/4 v7, 0x7

    move-wide v4, p1

    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_7
.end method

.method public static getVirtualDescendantId(J)I
    .registers 6
    .param p0, "accessibilityNodeId"    # J

    .prologue
    .line 583
    const-wide v0, -0x100000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private init(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 8
    .param p1, "other"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v3, 0x0

    .line 2785
    iget-boolean v2, p1, mSealed:Z

    iput-boolean v2, p0, mSealed:Z

    .line 2786
    iget-wide v4, p1, mSourceNodeId:J

    iput-wide v4, p0, mSourceNodeId:J

    .line 2787
    iget-wide v4, p1, mParentNodeId:J

    iput-wide v4, p0, mParentNodeId:J

    .line 2788
    iget-wide v4, p1, mLabelForId:J

    iput-wide v4, p0, mLabelForId:J

    .line 2789
    iget-wide v4, p1, mLabeledById:J

    iput-wide v4, p0, mLabeledById:J

    .line 2790
    iget-wide v4, p1, mTraversalBefore:J

    iput-wide v4, p0, mTraversalBefore:J

    .line 2791
    iget-wide v4, p1, mTraversalAfter:J

    iput-wide v4, p0, mTraversalAfter:J

    .line 2792
    iget v2, p1, mWindowId:I

    iput v2, p0, mWindowId:I

    .line 2793
    iget v2, p1, mConnectionId:I

    iput v2, p0, mConnectionId:I

    .line 2794
    iget-object v2, p0, mBoundsInParent:Landroid/graphics/Rect;

    iget-object v4, p1, mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2795
    iget-object v2, p0, mBoundsInScreen:Landroid/graphics/Rect;

    iget-object v4, p1, mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2796
    iget-object v2, p1, mPackageName:Ljava/lang/CharSequence;

    iput-object v2, p0, mPackageName:Ljava/lang/CharSequence;

    .line 2797
    iget-object v2, p1, mClassName:Ljava/lang/CharSequence;

    iput-object v2, p0, mClassName:Ljava/lang/CharSequence;

    .line 2798
    iget-object v2, p1, mText:Ljava/lang/CharSequence;

    iput-object v2, p0, mText:Ljava/lang/CharSequence;

    .line 2799
    iget-object v2, p1, mError:Ljava/lang/CharSequence;

    iput-object v2, p0, mError:Ljava/lang/CharSequence;

    .line 2800
    iget-object v2, p1, mContentDescription:Ljava/lang/CharSequence;

    iput-object v2, p0, mContentDescription:Ljava/lang/CharSequence;

    .line 2801
    iget-object v2, p1, mViewIdResourceName:Ljava/lang/String;

    iput-object v2, p0, mViewIdResourceName:Ljava/lang/String;

    .line 2803
    iget-object v0, p1, mActions:Ljava/util/ArrayList;

    .line 2804
    .local v0, "otherActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;>;"
    if-eqz v0, :cond_60

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_60

    .line 2805
    iget-object v2, p0, mActions:Ljava/util/ArrayList;

    if-nez v2, :cond_ca

    .line 2806
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, mActions:Ljava/util/ArrayList;

    .line 2813
    :cond_60
    :goto_60
    iget v2, p1, mBooleanProperties:I

    iput v2, p0, mBooleanProperties:I

    .line 2814
    iget v2, p1, mMaxTextLength:I

    iput v2, p0, mMaxTextLength:I

    .line 2815
    iget v2, p1, mMovementGranularities:I

    iput v2, p0, mMovementGranularities:I

    .line 2817
    iget-object v1, p1, mChildNodeIds:Landroid/util/LongArray;

    .line 2818
    .local v1, "otherChildNodeIds":Landroid/util/LongArray;
    if-eqz v1, :cond_80

    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    move-result v2

    if-lez v2, :cond_80

    .line 2819
    iget-object v2, p0, mChildNodeIds:Landroid/util/LongArray;

    if-nez v2, :cond_d7

    .line 2820
    invoke-virtual {v1}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    move-result-object v2

    iput-object v2, p0, mChildNodeIds:Landroid/util/LongArray;

    .line 2827
    :cond_80
    :goto_80
    iget v2, p1, mTextSelectionStart:I

    iput v2, p0, mTextSelectionStart:I

    .line 2828
    iget v2, p1, mTextSelectionEnd:I

    iput v2, p0, mTextSelectionEnd:I

    .line 2829
    iget v2, p1, mInputType:I

    iput v2, p0, mInputType:I

    .line 2830
    iget v2, p1, mLiveRegion:I

    iput v2, p0, mLiveRegion:I

    .line 2831
    iget-object v2, p1, mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_a5

    iget-object v2, p1, mExtras:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a5

    .line 2832
    invoke-virtual {p0}, getExtras()Landroid/os/Bundle;

    move-result-object v2

    iget-object v4, p1, mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2834
    :cond_a5
    iget-object v2, p1, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    if-eqz v2, :cond_e2

    iget-object v2, p1, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v2

    :goto_af
    iput-object v2, p0, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 2836
    iget-object v2, p1, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    if-eqz v2, :cond_e4

    iget-object v2, p1, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v2

    :goto_bb
    iput-object v2, p0, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 2838
    iget-object v2, p1, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    if-eqz v2, :cond_c7

    iget-object v2, p1, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v3

    :cond_c7
    iput-object v3, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 2840
    return-void

    .line 2808
    .end local v1    # "otherChildNodeIds":Landroid/util/LongArray;
    :cond_ca
    iget-object v2, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2809
    iget-object v2, p0, mActions:Ljava/util/ArrayList;

    iget-object v4, p1, mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_60

    .line 2822
    .restart local v1    # "otherChildNodeIds":Landroid/util/LongArray;
    :cond_d7
    iget-object v2, p0, mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v2}, Landroid/util/LongArray;->clear()V

    .line 2823
    iget-object v2, p0, mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v2, v1}, Landroid/util/LongArray;->addAll(Landroid/util/LongArray;)V

    goto :goto_80

    :cond_e2
    move-object v2, v3

    .line 2834
    goto :goto_af

    :cond_e4
    move-object v2, v3

    .line 2836
    goto :goto_bb
.end method

.method private initFromParcel(Landroid/os/Parcel;)V
    .registers 20
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 2848
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d1

    const/16 v16, 0x1

    .line 2849
    .local v16, "sealed":Z
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, mSourceNodeId:J

    .line 2850
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mWindowId:I

    .line 2851
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, mParentNodeId:J

    .line 2852
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, mLabelForId:J

    .line 2853
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, mLabeledById:J

    .line 2854
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, mTraversalBefore:J

    .line 2855
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, mTraversalAfter:J

    .line 2857
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mConnectionId:I

    .line 2859
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 2860
    .local v12, "childrenSize":I
    if-gtz v12, :cond_d5

    .line 2861
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mChildNodeIds:Landroid/util/LongArray;

    .line 2870
    :cond_54
    move-object/from16 v0, p0

    iget-object v2, v0, mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2871
    move-object/from16 v0, p0

    iget-object v2, v0, mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2872
    move-object/from16 v0, p0

    iget-object v2, v0, mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2873
    move-object/from16 v0, p0

    iget-object v2, v0, mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2875
    move-object/from16 v0, p0

    iget-object v2, v0, mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2876
    move-object/from16 v0, p0

    iget-object v2, v0, mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2877
    move-object/from16 v0, p0

    iget-object v2, v0, mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2878
    move-object/from16 v0, p0

    iget-object v2, v0, mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2880
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2881
    .local v9, "actionCount":I
    if-lez v9, :cond_ef

    .line 2882
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 2883
    .local v14, "legacyStandardActions":I
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, addLegacyStandardActions(I)V

    .line 2884
    invoke-static {v14}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    sub-int v15, v9, v2

    .line 2885
    .local v15, "nonLegacyActionCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_ba
    if-ge v13, v15, :cond_ef

    .line 2886
    new-instance v8, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v8, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 2888
    .local v8, "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2885
    add-int/lit8 v13, v13, 0x1

    goto :goto_ba

    .line 2848
    .end local v8    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .end local v9    # "actionCount":I
    .end local v12    # "childrenSize":I
    .end local v13    # "i":I
    .end local v14    # "legacyStandardActions":I
    .end local v15    # "nonLegacyActionCount":I
    .end local v16    # "sealed":Z
    :cond_d1
    const/16 v16, 0x0

    goto/16 :goto_9

    .line 2863
    .restart local v12    # "childrenSize":I
    .restart local v16    # "sealed":Z
    :cond_d5
    new-instance v2, Landroid/util/LongArray;

    invoke-direct {v2, v12}, Landroid/util/LongArray;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, mChildNodeIds:Landroid/util/LongArray;

    .line 2864
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_df
    if-ge v13, v12, :cond_54

    .line 2865
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 2866
    .local v10, "childId":J
    move-object/from16 v0, p0

    iget-object v2, v0, mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v2, v10, v11}, Landroid/util/LongArray;->add(J)V

    .line 2864
    add-int/lit8 v13, v13, 0x1

    goto :goto_df

    .line 2892
    .end local v10    # "childId":J
    .end local v13    # "i":I
    .restart local v9    # "actionCount":I
    :cond_ef
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mMaxTextLength:I

    .line 2893
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mMovementGranularities:I

    .line 2894
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mBooleanProperties:I

    .line 2896
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mPackageName:Ljava/lang/CharSequence;

    .line 2897
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mClassName:Ljava/lang/CharSequence;

    .line 2898
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mText:Ljava/lang/CharSequence;

    .line 2899
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mError:Ljava/lang/CharSequence;

    .line 2900
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mContentDescription:Ljava/lang/CharSequence;

    .line 2901
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mViewIdResourceName:Ljava/lang/String;

    .line 2903
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mTextSelectionStart:I

    .line 2904
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mTextSelectionEnd:I

    .line 2906
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mInputType:I

    .line 2907
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mLiveRegion:I

    .line 2909
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_169

    .line 2910
    invoke-virtual/range {p0 .. p0}, getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2913
    :cond_169
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_188

    .line 2914
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 2921
    :cond_188
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1ab

    .line 2922
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1e4

    const/4 v2, 0x1

    :goto_19f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v3, v4, v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 2929
    :cond_1ab
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1dd

    .line 2930
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1e6

    const/4 v6, 0x1

    :goto_1ca
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_1e8

    const/4 v7, 0x1

    :goto_1d5
    invoke-static/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 2939
    :cond_1dd
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, mSealed:Z

    .line 2940
    return-void

    .line 2922
    :cond_1e4
    const/4 v2, 0x0

    goto :goto_19f

    .line 2930
    :cond_1e6
    const/4 v6, 0x0

    goto :goto_1ca

    :cond_1e8
    const/4 v7, 0x0

    goto :goto_1d5
.end method

.method private static isDefaultLegacyStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .registers 3
    .param p0, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .prologue
    .line 2994
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    const/high16 v1, 0x200000

    if-gt v0, v1, :cond_14

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static makeNodeId(II)J
    .registers 6
    .param p0, "accessibilityViewId"    # I
    .param p1, "virtualDescendantId"    # I

    .prologue
    .line 603
    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    .line 604
    const p1, 0x7fffffff

    .line 606
    :cond_6
    int-to-long v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    .prologue
    .line 2624
    sget-object v1, sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2625
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_b

    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_a
    return-object v0

    .restart local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_b
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {v0}, <init>()V

    goto :goto_a
.end method

.method public static obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2
    .param p0, "source"    # Landroid/view/View;

    .prologue
    .line 2597
    invoke-static {}, obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2598
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v0, p0}, setSource(Landroid/view/View;)V

    .line 2599
    return-object v0
.end method

.method public static obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3
    .param p0, "root"    # Landroid/view/View;
    .param p1, "virtualDescendantId"    # I

    .prologue
    .line 2613
    invoke-static {}, obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2614
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v0, p0, p1}, setSource(Landroid/view/View;I)V

    .line 2615
    return-object v0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2
    .param p0, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2637
    invoke-static {}, obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2638
    .local v0, "infoClone":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {v0, p0}, init(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2639
    return-object v0
.end method

.method private setBooleanProperty(IZ)V
    .registers 5
    .param p1, "property"    # I
    .param p2, "value"    # Z

    .prologue
    .line 2473
    invoke-virtual {p0}, enforceNotSealed()V

    .line 2474
    if-eqz p2, :cond_b

    .line 2475
    iget v0, p0, mBooleanProperties:I

    or-int/2addr v0, p1

    iput v0, p0, mBooleanProperties:I

    .line 2479
    :goto_a
    return-void

    .line 2477
    :cond_b
    iget v0, p0, mBooleanProperties:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, mBooleanProperties:I

    goto :goto_a
.end method


# virtual methods
.method public addAction(I)V
    .registers 5
    .param p1, "action"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1071
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1073
    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_21

    .line 1074
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action is not a combination of the standard actions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1078
    :cond_21
    invoke-direct {p0, p1}, addLegacyStandardActions(I)V

    .line 1079
    return-void
.end method

.method public addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .registers 2
    .param p1, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .prologue
    .line 1036
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1038
    invoke-direct {p0, p1}, addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1039
    return-void
.end method

.method public addChild(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 872
    const v0, 0x7fffffff

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, addChildInternal(Landroid/view/View;IZ)V

    .line 873
    return-void
.end method

.method public addChild(Landroid/view/View;I)V
    .registers 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    .line 918
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, addChildInternal(Landroid/view/View;IZ)V

    .line 919
    return-void
.end method

.method public addChildUnchecked(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 882
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, addChildInternal(Landroid/view/View;IZ)V

    .line 883
    return-void
.end method

.method public canOpenPopup()Z
    .registers 2

    .prologue
    .line 2063
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 2499
    const/4 v0, 0x0

    return v0
.end method

.method protected enforceNotSealed()V
    .registers 3

    .prologue
    .line 2581
    invoke-virtual {p0}, isSealed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2582
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2585
    :cond_e
    return-void
.end method

.method protected enforceSealed()V
    .registers 3

    .prologue
    .line 2543
    invoke-virtual {p0}, isSealed()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2544
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a not sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2547
    :cond_e
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3100
    if-ne p0, p1, :cond_5

    .line 3116
    :cond_4
    :goto_4
    return v1

    .line 3103
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 3104
    goto :goto_4

    .line 3106
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 3107
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 3109
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3110
    .local v0, "other":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-wide v4, p0, mSourceNodeId:J

    iget-wide v6, v0, mSourceNodeId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_22

    move v1, v2

    .line 3111
    goto :goto_4

    .line 3113
    :cond_22
    iget v3, p0, mWindowId:I

    iget v4, v0, mWindowId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 3114
    goto :goto_4
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1362
    invoke-virtual {p0}, enforceSealed()V

    .line 1363
    iget-wide v2, p0, mSourceNodeId:J

    invoke-direct {p0, v2, v3}, canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1364
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1367
    :goto_f
    return-object v0

    .line 1366
    :cond_10
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 1367
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, mConnectionId:I

    iget v3, p0, mWindowId:I

    iget-wide v4, p0, mSourceNodeId:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfosByText(IIJLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_f
.end method

.method public findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "viewId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1393
    invoke-virtual {p0}, enforceSealed()V

    .line 1394
    iget-wide v2, p0, mSourceNodeId:J

    invoke-direct {p0, v2, v3}, canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1395
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1398
    :goto_f
    return-object v0

    .line 1397
    :cond_10
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 1398
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, mConnectionId:I

    iget v3, p0, mWindowId:I

    iget-wide v4, p0, mSourceNodeId:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfosByViewId(IIJLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_f
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9
    .param p1, "focus"    # I

    .prologue
    .line 715
    invoke-virtual {p0}, enforceSealed()V

    .line 716
    invoke-direct {p0, p1}, enforceValidFocusType(I)V

    .line 717
    iget-wide v0, p0, mSourceNodeId:J

    invoke-direct {p0, v0, v1}, canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_10

    .line 718
    const/4 v0, 0x0

    .line 720
    :goto_f
    return-object v0

    :cond_10
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, mConnectionId:I

    iget v3, p0, mWindowId:I

    iget-wide v4, p0, mSourceNodeId:J

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_f
.end method

.method public focusSearch(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9
    .param p1, "direction"    # I

    .prologue
    .line 739
    invoke-virtual {p0}, enforceSealed()V

    .line 740
    invoke-direct {p0, p1}, enforceValidFocusDirection(I)V

    .line 741
    iget-wide v0, p0, mSourceNodeId:J

    invoke-direct {p0, v0, v1}, canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_10

    .line 742
    const/4 v0, 0x0

    .line 744
    :goto_f
    return-object v0

    :cond_10
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, mConnectionId:I

    iget v3, p0, mWindowId:I

    iget-wide v4, p0, mSourceNodeId:J

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->focusSearch(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_f
.end method

.method public getActionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 967
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    .line 968
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 971
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    goto :goto_8
.end method

.method public getActions()I
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 998
    const/4 v3, 0x0

    .line 1000
    .local v3, "returnValue":I
    iget-object v5, p0, mActions:Ljava/util/ArrayList;

    if-nez v5, :cond_7

    move v4, v3

    .line 1012
    .end local v3    # "returnValue":I
    .local v4, "returnValue":I
    :goto_6
    return v4

    .line 1004
    .end local v4    # "returnValue":I
    .restart local v3    # "returnValue":I
    :cond_7
    iget-object v5, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1005
    .local v1, "actionSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_24

    .line 1006
    iget-object v5, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    .line 1007
    .local v0, "actionId":I
    const/high16 v5, 0x200000

    if-gt v0, v5, :cond_21

    .line 1008
    or-int/2addr v3, v0

    .line 1005
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .end local v0    # "actionId":I
    :cond_24
    move v4, v3

    .line 1012
    .end local v3    # "returnValue":I
    .restart local v4    # "returnValue":I
    goto :goto_6
.end method

.method public getBoundsInParent(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1490
    iget-object v0, p0, mBoundsInParent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, mBoundsInParent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, mBoundsInParent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, mBoundsInParent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1492
    return-void
.end method

.method public getBoundsInScreen()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 1527
    iget-object v0, p0, mBoundsInScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1517
    iget-object v0, p0, mBoundsInScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, mBoundsInScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, mBoundsInScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, mBoundsInScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1519
    return-void
.end method

.method public getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 10
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 846
    invoke-virtual {p0}, enforceSealed()V

    .line 847
    iget-object v2, p0, mChildNodeIds:Landroid/util/LongArray;

    if-nez v2, :cond_9

    .line 855
    :cond_8
    :goto_8
    return-object v0

    .line 850
    :cond_9
    iget-wide v2, p0, mSourceNodeId:J

    invoke-direct {p0, v2, v3}, canPerformRequestOverConnection(J)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 853
    iget-object v0, p0, mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v0, p1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v4

    .line 854
    .local v4, "childId":J
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 855
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, mConnectionId:I

    iget v3, p0, mWindowId:I

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_8
.end method

.method public getChildCount()I
    .registers 2

    .prologue
    .line 828
    iget-object v0, p0, mChildNodeIds:Landroid/util/LongArray;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getChildId(I)J
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 816
    iget-object v0, p0, mChildNodeIds:Landroid/util/LongArray;

    if-nez v0, :cond_a

    .line 817
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 819
    :cond_a
    iget-object v0, p0, mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v0, p1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getChildNodeIds()Landroid/util/LongArray;
    .registers 2

    .prologue
    .line 805
    iget-object v0, p0, mChildNodeIds:Landroid/util/LongArray;

    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 2136
    iget-object v0, p0, mClassName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCollectionInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .registers 2

    .prologue
    .line 1879
    iget-object v0, p0, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    return-object v0
.end method

.method public getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .registers 2

    .prologue
    .line 1905
    iget-object v0, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 2214
    iget-object v0, p0, mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 2205
    iget-object v0, p0, mError:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 2448
    iget-object v0, p0, mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 2449
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, mExtras:Landroid/os/Bundle;

    .line 2451
    :cond_b
    iget-object v0, p0, mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getInputType()I
    .registers 2

    .prologue
    .line 2413
    iget v0, p0, mInputType:I

    return v0
.end method

.method public getLabelFor()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    .prologue
    .line 2282
    invoke-virtual {p0}, enforceSealed()V

    .line 2283
    iget-wide v0, p0, mLabelForId:J

    invoke-direct {p0, v0, v1}, getNodeForAccessibilityId(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLabeledBy()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    .prologue
    .line 2334
    invoke-virtual {p0}, enforceSealed()V

    .line 2335
    iget-wide v0, p0, mLabeledById:J

    invoke-direct {p0, v0, v1}, getNodeForAccessibilityId(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLiveRegion()I
    .registers 2

    .prologue
    .line 2014
    iget v0, p0, mLiveRegion:I

    return v0
.end method

.method public getMaxTextLength()I
    .registers 2

    .prologue
    .line 1273
    iget v0, p0, mMaxTextLength:I

    return v0
.end method

.method public getMovementGranularities()I
    .registers 2

    .prologue
    .line 1299
    iget v0, p0, mMovementGranularities:I

    return v0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 2110
    iget-object v0, p0, mPackageName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getParent()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    .prologue
    .line 1429
    invoke-virtual {p0}, enforceSealed()V

    .line 1430
    iget-wide v0, p0, mParentNodeId:J

    invoke-direct {p0, v0, v1}, getNodeForAccessibilityId(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getParentNodeId()J
    .registers 3

    .prologue
    .line 1439
    iget-wide v0, p0, mParentNodeId:J

    return-wide v0
.end method

.method public getRangeInfo()Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    .registers 2

    .prologue
    .line 1928
    iget-object v0, p0, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    return-object v0
.end method

.method public getSourceNodeId()J
    .registers 3

    .prologue
    .line 2510
    iget-wide v0, p0, mSourceNodeId:J

    return-wide v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 2162
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextSelectionEnd()I
    .registers 2

    .prologue
    .line 2385
    iget v0, p0, mTextSelectionEnd:I

    return v0
.end method

.method public getTextSelectionStart()I
    .registers 2

    .prologue
    .line 2376
    iget v0, p0, mTextSelectionStart:I

    return v0
.end method

.method public getTraversalAfter()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    .prologue
    .line 1197
    invoke-virtual {p0}, enforceSealed()V

    .line 1198
    iget-wide v0, p0, mTraversalAfter:J

    invoke-direct {p0, v0, v1}, getNodeForAccessibilityId(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTraversalBefore()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    .prologue
    .line 1136
    invoke-virtual {p0}, enforceSealed()V

    .line 1137
    iget-wide v0, p0, mTraversalBefore:J

    invoke-direct {p0, v0, v1}, getNodeForAccessibilityId(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getViewIdResourceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2367
    iget-object v0, p0, mViewIdResourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getWindow()Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 5

    .prologue
    .line 1410
    invoke-virtual {p0}, enforceSealed()V

    .line 1411
    iget-wide v2, p0, mSourceNodeId:J

    invoke-direct {p0, v2, v3}, canPerformRequestOverConnection(J)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1412
    const/4 v1, 0x0

    .line 1415
    :goto_c
    return-object v1

    .line 1414
    :cond_d
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 1415
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v1, p0, mConnectionId:I

    iget v2, p0, mWindowId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    goto :goto_c
.end method

.method public getWindowId()I
    .registers 2

    .prologue
    .line 754
    iget v0, p0, mWindowId:I

    return v0
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 3121
    const/16 v0, 0x1f

    .line 3122
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 3123
    .local v1, "result":I
    iget-wide v2, p0, mSourceNodeId:J

    invoke-static {v2, v3}, getAccessibilityViewId(J)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 3124
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, mSourceNodeId:J

    invoke-static {v4, v5}, getVirtualDescendantId(J)I

    move-result v3

    add-int v1, v2, v3

    .line 3125
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, mWindowId:I

    add-int v1, v2, v3

    .line 3126
    return v1
.end method

.method public isAccessibilityFocused()Z
    .registers 2

    .prologue
    .line 1678
    const/16 v0, 0x400

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isCheckable()Z
    .registers 2

    .prologue
    .line 1553
    const/4 v0, 0x1

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 1578
    const/4 v0, 0x2

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isClickable()Z
    .registers 2

    .prologue
    .line 1728
    const/16 v0, 0x20

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isContentInvalid()Z
    .registers 2

    .prologue
    .line 1953
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isContextClickable()Z
    .registers 2

    .prologue
    .line 1977
    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isDismissable()Z
    .registers 2

    .prologue
    .line 2087
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isEditable()Z
    .registers 2

    .prologue
    .line 1853
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 1778
    const/16 v0, 0x80

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFocusable()Z
    .registers 2

    .prologue
    .line 1603
    const/4 v0, 0x4

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .registers 2

    .prologue
    .line 1628
    const/16 v0, 0x8

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isLongClickable()Z
    .registers 2

    .prologue
    .line 1753
    const/16 v0, 0x40

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isMultiLine()Z
    .registers 2

    .prologue
    .line 2040
    const v0, 0x8000

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .registers 2

    .prologue
    .line 1803
    const/16 v0, 0x100

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .registers 2

    .prologue
    .line 1828
    const/16 v0, 0x200

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isSealed()Z
    .registers 2

    .prologue
    .line 2532
    iget-boolean v0, p0, mSealed:Z

    return v0
.end method

.method public isSelected()Z
    .registers 2

    .prologue
    .line 1703
    const/16 v0, 0x10

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isVisibleToUser()Z
    .registers 2

    .prologue
    .line 1653
    const/16 v0, 0x800

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public performAction(I)Z
    .registers 10
    .param p1, "action"    # I

    .prologue
    .line 1315
    invoke-virtual {p0}, enforceSealed()V

    .line 1316
    iget-wide v2, p0, mSourceNodeId:J

    invoke-direct {p0, v2, v3}, canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1317
    const/4 v0, 0x0

    .line 1320
    :goto_c
    return v0

    .line 1319
    :cond_d
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 1320
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, mConnectionId:I

    iget v3, p0, mWindowId:I

    iget-wide v4, p0, mSourceNodeId:J

    const/4 v7, 0x0

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->performAccessibilityAction(IIJILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_c
.end method

.method public performAction(ILandroid/os/Bundle;)Z
    .registers 11
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 1338
    invoke-virtual {p0}, enforceSealed()V

    .line 1339
    iget-wide v2, p0, mSourceNodeId:J

    invoke-direct {p0, v2, v3}, canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1340
    const/4 v0, 0x0

    .line 1343
    :goto_c
    return v0

    .line 1342
    :cond_d
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 1343
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, mConnectionId:I

    iget v3, p0, mWindowId:I

    iget-wide v4, p0, mSourceNodeId:J

    move v6, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->performAccessibilityAction(IIJILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_c
.end method

.method public recycle()V
    .registers 2

    .prologue
    .line 2650
    invoke-direct {p0}, clear()V

    .line 2651
    sget-object v0, sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 2652
    return-void
.end method

.method public refresh()Z
    .registers 2

    .prologue
    .line 796
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, refresh(Z)Z

    move-result v0

    return v0
.end method

.method public refresh(Z)Z
    .registers 10
    .param p1, "bypassCache"    # Z

    .prologue
    const/4 v7, 0x0

    .line 771
    invoke-virtual {p0}, enforceSealed()V

    .line 772
    iget-wide v2, p0, mSourceNodeId:J

    invoke-direct {p0, v2, v3}, canPerformRequestOverConnection(J)Z

    move-result v2

    if-nez v2, :cond_d

    .line 783
    :cond_c
    :goto_c
    return v7

    .line 775
    :cond_d
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 776
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, mConnectionId:I

    iget v3, p0, mWindowId:I

    iget-wide v4, p0, mSourceNodeId:J

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 778
    .local v0, "refreshedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_c

    .line 781
    invoke-direct {p0, v0}, init(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 782
    invoke-virtual {v0}, recycle()V

    .line 783
    const/4 v7, 0x1

    goto :goto_c
.end method

.method public removeAction(I)V
    .registers 3
    .param p1, "action"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1097
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1099
    invoke-static {p1}, getActionSingleton(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v0

    invoke-virtual {p0, v0}, removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 1100
    return-void
.end method

.method public removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .registers 3
    .param p1, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .prologue
    .line 1117
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1119
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    if-nez p1, :cond_b

    .line 1120
    :cond_9
    const/4 v0, 0x0

    .line 1123
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_a
.end method

.method public removeChild(Landroid/view/View;)Z
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 900
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, removeChild(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public removeChild(Landroid/view/View;I)Z
    .registers 9
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    const/4 v5, 0x0

    .line 947
    invoke-virtual {p0}, enforceNotSealed()V

    .line 948
    iget-object v0, p0, mChildNodeIds:Landroid/util/LongArray;

    .line 949
    .local v0, "childIds":Landroid/util/LongArray;
    if-nez v0, :cond_9

    .line 960
    :cond_8
    :goto_8
    return v5

    .line 952
    :cond_9
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v4

    .line 954
    .local v4, "rootAccessibilityViewId":I
    :goto_f
    invoke-static {v4, p2}, makeNodeId(II)J

    move-result-wide v2

    .line 955
    .local v2, "childNodeId":J
    invoke-virtual {v0, v2, v3}, Landroid/util/LongArray;->indexOf(J)I

    move-result v1

    .line 956
    .local v1, "index":I
    if-ltz v1, :cond_8

    .line 959
    invoke-virtual {v0, v1}, Landroid/util/LongArray;->remove(I)V

    .line 960
    const/4 v5, 0x1

    goto :goto_8

    .line 952
    .end local v1    # "index":I
    .end local v2    # "childNodeId":J
    .end local v4    # "rootAccessibilityViewId":I
    :cond_1e
    const v4, 0x7fffffff

    goto :goto_f
.end method

.method public setAccessibilityFocused(Z)V
    .registers 3
    .param p1, "focused"    # Z

    .prologue
    .line 1694
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1695
    return-void
.end method

.method public setBoundsInParent(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1507
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1508
    iget-object v0, p0, mBoundsInParent:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1509
    return-void
.end method

.method public setBoundsInScreen(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1543
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1544
    iget-object v0, p0, mBoundsInScreen:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1545
    return-void
.end method

.method public setCanOpenPopup(Z)V
    .registers 3
    .param p1, "opensPopup"    # Z

    .prologue
    .line 2077
    invoke-virtual {p0}, enforceNotSealed()V

    .line 2078
    const/16 v0, 0x2000

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 2079
    return-void
.end method

.method public setCheckable(Z)V
    .registers 3
    .param p1, "checkable"    # Z

    .prologue
    .line 1569
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1570
    return-void
.end method

.method public setChecked(Z)V
    .registers 3
    .param p1, "checked"    # Z

    .prologue
    .line 1594
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1595
    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "className"    # Ljava/lang/CharSequence;

    .prologue
    .line 2152
    invoke-virtual {p0}, enforceNotSealed()V

    .line 2153
    iput-object p1, p0, mClassName:Ljava/lang/CharSequence;

    .line 2154
    return-void
.end method

.method public setClickable(Z)V
    .registers 3
    .param p1, "clickable"    # Z

    .prologue
    .line 1744
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1745
    return-void
.end method

.method public setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V
    .registers 2
    .param p1, "collectionInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .prologue
    .line 1894
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1895
    iput-object p1, p0, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 1896
    return-void
.end method

.method public setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V
    .registers 2
    .param p1, "collectionItemInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .prologue
    .line 1918
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1919
    iput-object p1, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 1920
    return-void
.end method

.method public setConnectionId(I)V
    .registers 2
    .param p1, "connectionId"    # I

    .prologue
    .line 2490
    invoke-virtual {p0}, enforceNotSealed()V

    .line 2491
    iput p1, p0, mConnectionId:I

    .line 2492
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 2230
    invoke-virtual {p0}, enforceNotSealed()V

    .line 2231
    iput-object p1, p0, mContentDescription:Ljava/lang/CharSequence;

    .line 2232
    return-void
.end method

.method public setContentInvalid(Z)V
    .registers 3
    .param p1, "contentInvalid"    # Z

    .prologue
    .line 1968
    const/high16 v0, 0x10000

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1969
    return-void
.end method

.method public setContextClickable(Z)V
    .registers 3
    .param p1, "contextClickable"    # Z

    .prologue
    .line 1992
    const/high16 v0, 0x20000

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1993
    return-void
.end method

.method public setDismissable(Z)V
    .registers 3
    .param p1, "dismissable"    # Z

    .prologue
    .line 2101
    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 2102
    return-void
.end method

.method public setEditable(Z)V
    .registers 3
    .param p1, "editable"    # Z

    .prologue
    .line 1869
    const/16 v0, 0x1000

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1870
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1794
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1795
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    .line 2195
    invoke-virtual {p0}, enforceNotSealed()V

    .line 2196
    iput-object p1, p0, mError:Ljava/lang/CharSequence;

    .line 2197
    return-void
.end method

.method public setFocusable(Z)V
    .registers 3
    .param p1, "focusable"    # Z

    .prologue
    .line 1619
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1620
    return-void
.end method

.method public setFocused(Z)V
    .registers 3
    .param p1, "focused"    # Z

    .prologue
    .line 1644
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1645
    return-void
.end method

.method public setInputType(I)V
    .registers 2
    .param p1, "inputType"    # I

    .prologue
    .line 2430
    invoke-virtual {p0}, enforceNotSealed()V

    .line 2431
    iput p1, p0, mInputType:I

    .line 2432
    return-void
.end method

.method public setLabelFor(Landroid/view/View;)V
    .registers 3
    .param p1, "labeled"    # Landroid/view/View;

    .prologue
    .line 2241
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, setLabelFor(Landroid/view/View;I)V

    .line 2242
    return-void
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    .line 2264
    invoke-virtual {p0}, enforceNotSealed()V

    .line 2265
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 2267
    .local v0, "rootAccessibilityViewId":I
    :goto_9
    invoke-static {v0, p2}, makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, mLabelForId:J

    .line 2268
    return-void

    .line 2265
    .end local v0    # "rootAccessibilityViewId":I
    :cond_10
    const v0, 0x7fffffff

    goto :goto_9
.end method

.method public setLabeledBy(Landroid/view/View;)V
    .registers 3
    .param p1, "label"    # Landroid/view/View;

    .prologue
    .line 2293
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, setLabeledBy(Landroid/view/View;I)V

    .line 2294
    return-void
.end method

.method public setLabeledBy(Landroid/view/View;I)V
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    .line 2316
    invoke-virtual {p0}, enforceNotSealed()V

    .line 2317
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 2319
    .local v0, "rootAccessibilityViewId":I
    :goto_9
    invoke-static {v0, p2}, makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, mLabeledById:J

    .line 2320
    return-void

    .line 2317
    .end local v0    # "rootAccessibilityViewId":I
    :cond_10
    const v0, 0x7fffffff

    goto :goto_9
.end method

.method public setLiveRegion(I)V
    .registers 2
    .param p1, "mode"    # I

    .prologue
    .line 2030
    invoke-virtual {p0}, enforceNotSealed()V

    .line 2031
    iput p1, p0, mLiveRegion:I

    .line 2032
    return-void
.end method

.method public setLongClickable(Z)V
    .registers 3
    .param p1, "longClickable"    # Z

    .prologue
    .line 1769
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1770
    return-void
.end method

.method public setMaxTextLength(I)V
    .registers 2
    .param p1, "max"    # I

    .prologue
    .line 1262
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1263
    iput p1, p0, mMaxTextLength:I

    .line 1264
    return-void
.end method

.method public setMovementGranularities(I)V
    .registers 2
    .param p1, "granularities"    # I

    .prologue
    .line 1289
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1290
    iput p1, p0, mMovementGranularities:I

    .line 1291
    return-void
.end method

.method public setMultiLine(Z)V
    .registers 3
    .param p1, "multiLine"    # Z

    .prologue
    .line 2054
    const v0, 0x8000

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 2055
    return-void
.end method

.method public setPackageName(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 2126
    invoke-virtual {p0}, enforceNotSealed()V

    .line 2127
    iput-object p1, p0, mPackageName:Ljava/lang/CharSequence;

    .line 2128
    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .registers 3
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 1455
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, setParent(Landroid/view/View;I)V

    .line 1456
    return-void
.end method

.method public setParent(Landroid/view/View;I)V
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    .line 1478
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1479
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 1481
    .local v0, "rootAccessibilityViewId":I
    :goto_9
    invoke-static {v0, p2}, makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, mParentNodeId:J

    .line 1482
    return-void

    .line 1479
    .end local v0    # "rootAccessibilityViewId":I
    :cond_10
    const v0, 0x7fffffff

    goto :goto_9
.end method

.method public setPassword(Z)V
    .registers 3
    .param p1, "password"    # Z

    .prologue
    .line 1819
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1820
    return-void
.end method

.method public setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V
    .registers 2
    .param p1, "rangeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .prologue
    .line 1942
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1943
    iput-object p1, p0, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 1944
    return-void
.end method

.method public setScrollable(Z)V
    .registers 3
    .param p1, "scrollable"    # Z

    .prologue
    .line 1844
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1845
    return-void
.end method

.method public setSealed(Z)V
    .registers 2
    .param p1, "sealed"    # Z

    .prologue
    .line 2521
    iput-boolean p1, p0, mSealed:Z

    .line 2522
    return-void
.end method

.method public setSelected(Z)V
    .registers 3
    .param p1, "selected"    # Z

    .prologue
    .line 1719
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1720
    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .registers 3
    .param p1, "source"    # Landroid/view/View;

    .prologue
    .line 673
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, setSource(Landroid/view/View;I)V

    .line 674
    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    const v2, 0x7fffffff

    .line 696
    invoke-virtual {p0}, enforceNotSealed()V

    .line 697
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityWindowId()I

    move-result v1

    :goto_c
    iput v1, p0, mWindowId:I

    .line 698
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 700
    .local v0, "rootAccessibilityViewId":I
    :goto_14
    invoke-static {v0, p2}, makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, mSourceNodeId:J

    .line 701
    return-void

    .end local v0    # "rootAccessibilityViewId":I
    :cond_1b
    move v1, v2

    .line 697
    goto :goto_c

    :cond_1d
    move v0, v2

    .line 698
    goto :goto_14
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2178
    invoke-virtual {p0}, enforceNotSealed()V

    .line 2179
    iput-object p1, p0, mText:Ljava/lang/CharSequence;

    .line 2180
    return-void
.end method

.method public setTextSelection(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2402
    invoke-virtual {p0}, enforceNotSealed()V

    .line 2403
    iput p1, p0, mTextSelectionStart:I

    .line 2404
    iput p2, p0, mTextSelectionEnd:I

    .line 2405
    return-void
.end method

.method public setTraversalAfter(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1216
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, setTraversalAfter(Landroid/view/View;I)V

    .line 1217
    return-void
.end method

.method public setTraversalAfter(Landroid/view/View;I)V
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    .line 1240
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1241
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 1243
    .local v0, "rootAccessibilityViewId":I
    :goto_9
    invoke-static {v0, p2}, makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, mTraversalAfter:J

    .line 1244
    return-void

    .line 1241
    .end local v0    # "rootAccessibilityViewId":I
    :cond_10
    const v0, 0x7fffffff

    goto :goto_9
.end method

.method public setTraversalBefore(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1155
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, setTraversalBefore(Landroid/view/View;I)V

    .line 1156
    return-void
.end method

.method public setTraversalBefore(Landroid/view/View;I)V
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    .line 1180
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1181
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 1183
    .local v0, "rootAccessibilityViewId":I
    :goto_9
    invoke-static {v0, p2}, makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, mTraversalBefore:J

    .line 1184
    return-void

    .line 1181
    .end local v0    # "rootAccessibilityViewId":I
    :cond_10
    const v0, 0x7fffffff

    goto :goto_9
.end method

.method public setViewIdResourceName(Ljava/lang/String;)V
    .registers 2
    .param p1, "viewIdResName"    # Ljava/lang/String;

    .prologue
    .line 2350
    invoke-virtual {p0}, enforceNotSealed()V

    .line 2351
    iput-object p1, p0, mViewIdResourceName:Ljava/lang/String;

    .line 2352
    return-void
.end method

.method public setVisibleToUser(Z)V
    .registers 3
    .param p1, "visibleToUser"    # Z

    .prologue
    .line 1669
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1670
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3132
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; boundsInParent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; boundsInScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3170
    const-string v1, "; packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3171
    const-string v1, "; className: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3172
    const-string v1, "; text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3173
    const-string v1, "; error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mError:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3174
    const-string v1, "; maxTextLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mMaxTextLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3175
    const-string v1, "; contentDescription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3176
    const-string v1, "; viewIdResName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mViewIdResourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3178
    const-string v1, "; checkable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, isCheckable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3179
    const-string v1, "; checked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3180
    const-string v1, "; focusable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, isFocusable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3181
    const-string v1, "; focused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, isFocused()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3182
    const-string v1, "; selected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3183
    const-string v1, "; clickable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, isClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3184
    const-string v1, "; longClickable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, isLongClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3185
    const-string v1, "; contextClickable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, isContextClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3186
    const-string v1, "; enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3187
    const-string v1, "; password: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, isPassword()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3188
    const-string v1, "; scrollable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, isScrollable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3189
    const-string v1, "; actions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 15
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2663
    invoke-virtual {p0}, isSealed()Z

    move-result v6

    if-eqz v6, :cond_a2

    move v6, v7

    :goto_9
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2664
    iget-wide v10, p0, mSourceNodeId:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 2665
    iget v6, p0, mWindowId:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2666
    iget-wide v10, p0, mParentNodeId:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 2667
    iget-wide v10, p0, mLabelForId:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 2668
    iget-wide v10, p0, mLabeledById:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 2669
    iget-wide v10, p0, mTraversalBefore:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 2670
    iget-wide v10, p0, mTraversalAfter:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 2672
    iget v6, p0, mConnectionId:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2674
    iget-object v2, p0, mChildNodeIds:Landroid/util/LongArray;

    .line 2675
    .local v2, "childIds":Landroid/util/LongArray;
    if-nez v2, :cond_a5

    .line 2676
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2685
    :cond_3b
    iget-object v6, p0, mBoundsInParent:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2686
    iget-object v6, p0, mBoundsInParent:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2687
    iget-object v6, p0, mBoundsInParent:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2688
    iget-object v6, p0, mBoundsInParent:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2690
    iget-object v6, p0, mBoundsInScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2691
    iget-object v6, p0, mBoundsInScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2692
    iget-object v6, p0, mBoundsInScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2693
    iget-object v6, p0, mBoundsInScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2695
    iget-object v6, p0, mActions:Ljava/util/ArrayList;

    if-eqz v6, :cond_de

    iget-object v6, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_de

    .line 2696
    iget-object v6, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2697
    .local v1, "actionCount":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2699
    const/4 v4, 0x0

    .line 2700
    .local v4, "defaultLegacyStandardActions":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8a
    if-ge v5, v1, :cond_b9

    .line 2701
    iget-object v6, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 2702
    .local v0, "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-static {v0}, isDefaultLegacyStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v6

    if-eqz v6, :cond_9f

    .line 2703
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v6

    or-int/2addr v4, v6

    .line 2700
    :cond_9f
    add-int/lit8 v5, v5, 0x1

    goto :goto_8a

    .end local v0    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .end local v1    # "actionCount":I
    .end local v2    # "childIds":Landroid/util/LongArray;
    .end local v4    # "defaultLegacyStandardActions":I
    .end local v5    # "i":I
    :cond_a2
    move v6, v8

    .line 2663
    goto/16 :goto_9

    .line 2678
    .restart local v2    # "childIds":Landroid/util/LongArray;
    :cond_a5
    invoke-virtual {v2}, Landroid/util/LongArray;->size()I

    move-result v3

    .line 2679
    .local v3, "childIdsSize":I
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2680
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_ad
    if-ge v5, v3, :cond_3b

    .line 2681
    invoke-virtual {v2, v5}, Landroid/util/LongArray;->get(I)J

    move-result-wide v10

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 2680
    add-int/lit8 v5, v5, 0x1

    goto :goto_ad

    .line 2706
    .end local v3    # "childIdsSize":I
    .restart local v1    # "actionCount":I
    .restart local v4    # "defaultLegacyStandardActions":I
    :cond_b9
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2708
    const/4 v5, 0x0

    :goto_bd
    if-ge v5, v1, :cond_e1

    .line 2709
    iget-object v6, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 2710
    .restart local v0    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-static {v0}, isDefaultLegacyStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v6

    if-nez v6, :cond_db

    .line 2711
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2712
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2708
    :cond_db
    add-int/lit8 v5, v5, 0x1

    goto :goto_bd

    .line 2716
    .end local v0    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .end local v1    # "actionCount":I
    .end local v4    # "defaultLegacyStandardActions":I
    .end local v5    # "i":I
    :cond_de
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2719
    :cond_e1
    iget v6, p0, mMaxTextLength:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2720
    iget v6, p0, mMovementGranularities:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2721
    iget v6, p0, mBooleanProperties:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2723
    iget-object v6, p0, mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2724
    iget-object v6, p0, mClassName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2725
    iget-object v6, p0, mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2726
    iget-object v6, p0, mError:Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2727
    iget-object v6, p0, mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2728
    iget-object v6, p0, mViewIdResourceName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2730
    iget v6, p0, mTextSelectionStart:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2731
    iget v6, p0, mTextSelectionEnd:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2732
    iget v6, p0, mInputType:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2733
    iget v6, p0, mLiveRegion:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2735
    iget-object v6, p0, mExtras:Landroid/os/Bundle;

    if-eqz v6, :cond_1cd

    .line 2736
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2737
    iget-object v6, p0, mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2742
    :goto_12e
    iget-object v6, p0, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    if-eqz v6, :cond_1d2

    .line 2743
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2744
    iget-object v6, p0, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getType()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2745
    iget-object v6, p0, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMin()F

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2746
    iget-object v6, p0, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMax()F

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2747
    iget-object v6, p0, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getCurrent()F

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2752
    :goto_159
    iget-object v6, p0, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    if-eqz v6, :cond_1d8

    .line 2753
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2754
    iget-object v6, p0, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getRowCount()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2755
    iget-object v6, p0, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getColumnCount()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2756
    iget-object v6, p0, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->isHierarchical()Z

    move-result v6

    if-eqz v6, :cond_1d6

    move v6, v7

    :goto_17b
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2757
    iget-object v6, p0, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getSelectionMode()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2762
    :goto_187
    iget-object v6, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    if-eqz v6, :cond_1e0

    .line 2763
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2764
    iget-object v6, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowIndex()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2765
    iget-object v6, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowSpan()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2766
    iget-object v6, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnIndex()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2767
    iget-object v6, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnSpan()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2768
    iget-object v6, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->isHeading()Z

    move-result v6

    if-eqz v6, :cond_1dc

    move v6, v7

    :goto_1bb
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2769
    iget-object v6, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_1de

    :goto_1c6
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2776
    :goto_1c9
    invoke-virtual {p0}, recycle()V

    .line 2777
    return-void

    .line 2739
    :cond_1cd
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_12e

    .line 2749
    :cond_1d2
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_159

    :cond_1d6
    move v6, v8

    .line 2756
    goto :goto_17b

    .line 2759
    :cond_1d8
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_187

    :cond_1dc
    move v6, v8

    .line 2768
    goto :goto_1bb

    :cond_1de
    move v7, v8

    .line 2769
    goto :goto_1c6

    .line 2771
    :cond_1e0
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c9
.end method
