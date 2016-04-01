.class public abstract Landroid/widget/AdapterView;
.super Landroid/view/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterView$1;,
        Landroid/widget/AdapterView$SelectionNotifier;,
        Landroid/widget/AdapterView$AdapterDataSetObserver;,
        Landroid/widget/AdapterView$AdapterContextMenuInfo;,
        Landroid/widget/AdapterView$OnTwNotifyKeyPressListener;,
        Landroid/widget/AdapterView$OnTwMultiSelectedListener;,
        Landroid/widget/AdapterView$OnItemSelectedListener;,
        Landroid/widget/AdapterView$OnItemLongClickListener;,
        Landroid/widget/AdapterView$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field private final isElasticEnabled:Z

.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mOnTwMultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

.field mOnTwNotifyKeyPressListener:Landroid/widget/AdapterView$OnTwNotifyKeyPressListener;

.field private mPenPressState:Z

.field private mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 260
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 261
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 264
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 265
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 268
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 269
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    .line 272
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 76
    iput v0, p0, mFirstPosition:I

    .line 93
    iput-wide v2, p0, mSyncRowId:J

    .line 103
    iput-boolean v0, p0, mNeedSync:Z

    .line 135
    iput-boolean v0, p0, mInLayout:Z

    .line 173
    iput v1, p0, mNextSelectedPosition:I

    .line 179
    iput-wide v2, p0, mNextSelectedRowId:J

    .line 184
    iput v1, p0, mSelectedPosition:I

    .line 190
    iput-wide v2, p0, mSelectedRowId:J

    .line 222
    iput v1, p0, mOldSelectedPosition:I

    .line 227
    iput-wide v2, p0, mOldSelectedRowId:J

    .line 251
    iput-boolean v0, p0, mBlockLayoutRequests:Z

    .line 254
    iput-boolean v4, p0, isElasticEnabled:Z

    .line 275
    invoke-virtual {p0}, getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_29

    .line 276
    invoke-virtual {p0, v4}, setImportantForAccessibility(I)V

    .line 278
    :cond_29
    return-void
.end method

.method static synthetic access$000(Landroid/widget/AdapterView;Landroid/os/Parcelable;)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/AdapterView;
    .param p1, "x1"    # Landroid/os/Parcelable;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/AdapterView;)Landroid/os/Parcelable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AdapterView;

    .prologue
    .line 59
    invoke-virtual {p0}, onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/AdapterView;Landroid/widget/AdapterView$SelectionNotifier;)Landroid/widget/AdapterView$SelectionNotifier;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AdapterView;
    .param p1, "x1"    # Landroid/widget/AdapterView$SelectionNotifier;

    .prologue
    .line 59
    iput-object p1, p0, mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    return-object p1
.end method

.method static synthetic access$300(Landroid/widget/AdapterView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/AdapterView;

    .prologue
    .line 59
    invoke-direct {p0}, dispatchOnItemSelected()V

    return-void
.end method

.method private dispatchOnItemSelected()V
    .registers 1

    .prologue
    .line 1154
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-direct {p0}, fireOnSelected()V

    .line 1155
    invoke-direct {p0}, performAccessibilityActionsOnSelected()V

    .line 1156
    return-void
.end method

.method private fireOnSelected()V
    .registers 7

    .prologue
    .line 1159
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_5

    .line 1170
    :goto_4
    return-void

    .line 1162
    :cond_5
    invoke-virtual {p0}, getSelectedItemPosition()I

    move-result v3

    .line 1163
    .local v3, "selection":I
    if-ltz v3, :cond_1e

    .line 1164
    invoke-virtual {p0}, getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 1165
    .local v2, "v":Landroid/view/View;
    iget-object v0, p0, mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_4

    .line 1168
    .end local v2    # "v":Landroid/view/View;
    :cond_1e
    iget-object v0, p0, mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    goto :goto_4
.end method

.method private isScrollableForAccessibility()Z
    .registers 6

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v2, 0x0

    .line 1241
    invoke-virtual {p0}, getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1242
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_1c

    .line 1243
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 1244
    .local v1, "itemCount":I
    if-lez v1, :cond_1c

    invoke-virtual {p0}, getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_1b

    invoke-virtual {p0}, getLastVisiblePosition()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_1c

    :cond_1b
    const/4 v2, 0x1

    .line 1247
    .end local v1    # "itemCount":I
    :cond_1c
    return v2
.end method

.method private performAccessibilityActionsOnSelected()V
    .registers 3

    .prologue
    .line 1173
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1181
    :cond_c
    :goto_c
    return-void

    .line 1176
    :cond_d
    invoke-virtual {p0}, getSelectedItemPosition()I

    move-result v0

    .line 1177
    .local v0, "position":I
    if-ltz v0, :cond_c

    .line 1179
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, sendAccessibilityEvent(I)V

    goto :goto_c
.end method

.method private updateEmptyStatus(Z)V
    .registers 8
    .param p1, "empty"    # Z

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 988
    invoke-virtual {p0}, isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 989
    const/4 p1, 0x0

    .line 992
    :cond_a
    if-eqz p1, :cond_2d

    .line 993
    iget-object v0, p0, mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_29

    .line 994
    iget-object v0, p0, mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 995
    invoke-virtual {p0, v2}, setVisibility(I)V

    .line 1004
    :goto_18
    iget-boolean v0, p0, mDataChanged:Z

    if-eqz v0, :cond_28

    .line 1005
    iget v2, p0, mLeft:I

    iget v3, p0, mTop:I

    iget v4, p0, mRight:I

    iget v5, p0, mBottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, onLayout(ZIIII)V

    .line 1011
    :cond_28
    :goto_28
    return-void

    .line 998
    :cond_29
    invoke-virtual {p0, v1}, setVisibility(I)V

    goto :goto_18

    .line 1008
    :cond_2d
    iget-object v0, p0, mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_36

    iget-object v0, p0, mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1009
    :cond_36
    invoke-virtual {p0, v1}, setVisibility(I)V

    goto :goto_28
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 700
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 713
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 741
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 726
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .registers 2

    .prologue
    .line 1252
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, mItemCount:I

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method checkFocus()V
    .registers 7

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 969
    invoke-virtual {p0}, getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 970
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_3d

    :cond_e
    move v1, v4

    .line 971
    .local v1, "empty":Z
    :goto_f
    if-eqz v1, :cond_17

    invoke-virtual {p0}, isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_3f

    :cond_17
    move v2, v4

    .line 975
    .local v2, "focusable":Z
    :goto_18
    if-eqz v2, :cond_41

    iget-boolean v3, p0, mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_41

    move v3, v4

    :goto_1f
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 976
    if-eqz v2, :cond_43

    iget-boolean v3, p0, mDesiredFocusableState:Z

    if-eqz v3, :cond_43

    move v3, v4

    :goto_29
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 977
    iget-object v3, p0, mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_3c

    .line 978
    if-eqz v0, :cond_38

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_39

    :cond_38
    move v5, v4

    :cond_39
    invoke-direct {p0, v5}, updateEmptyStatus(Z)V

    .line 980
    :cond_3c
    return-void

    .end local v1    # "empty":Z
    .end local v2    # "focusable":Z
    :cond_3d
    move v1, v5

    .line 970
    goto :goto_f

    .restart local v1    # "empty":Z
    :cond_3f
    move v2, v5

    .line 971
    goto :goto_18

    .restart local v2    # "focusable":Z
    :cond_41
    move v3, v5

    .line 975
    goto :goto_1f

    :cond_43
    move v3, v5

    .line 976
    goto :goto_29
.end method

.method checkSelectionChanged()V
    .registers 5

    .prologue
    .line 1325
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, mSelectedPosition:I

    iget v1, p0, mOldSelectedPosition:I

    if-ne v0, v1, :cond_e

    iget-wide v0, p0, mSelectedRowId:J

    iget-wide v2, p0, mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 1326
    :cond_e
    invoke-virtual {p0}, selectionChanged()V

    .line 1327
    iget v0, p0, mSelectedPosition:I

    iput v0, p0, mOldSelectedPosition:I

    .line 1328
    iget-wide v0, p0, mSelectedRowId:J

    iput-wide v0, p0, mOldSelectedRowId:J

    .line 1333
    :cond_19
    iget-object v0, p0, mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    if-eqz v0, :cond_22

    .line 1334
    iget-object v0, p0, mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {v0}, Landroid/widget/AdapterView$SelectionNotifier;->run()V

    .line 1336
    :cond_22
    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1186
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1187
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1189
    const/4 v1, 0x1

    .line 1191
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
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
    .line 1048
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1049
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
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
    .line 1040
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 1041
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 6
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 1500
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1502
    const-string/jumbo v0, "scrolling:firstPosition"

    iget v1, p0, mFirstPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1503
    const-string v0, "list:nextSelectedPosition"

    iget v1, p0, mNextSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1504
    const-string v0, "list:nextSelectedRowId"

    iget-wide v2, p0, mNextSelectedRowId:J

    long-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 1505
    const-string v0, "list:selectedPosition"

    iget v1, p0, mSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1506
    const-string v0, "list:itemCount"

    iget v1, p0, mItemCount:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1507
    return-void
.end method

.method findSyncPosition()I
    .registers 21

    .prologue
    .line 1347
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v3, v0, mItemCount:I

    .line 1349
    .local v3, "count":I
    if-nez v3, :cond_8

    .line 1350
    const/4 v13, -0x1

    .line 1422
    :cond_7
    :goto_7
    return v13

    .line 1353
    :cond_8
    move-object/from16 v0, p0

    iget-wide v10, v0, mSyncRowId:J

    .line 1354
    .local v10, "idToMatch":J
    move-object/from16 v0, p0

    iget v13, v0, mSyncPosition:I

    .line 1357
    .local v13, "seed":I
    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v16, v10, v16

    if-nez v16, :cond_18

    .line 1358
    const/4 v13, -0x1

    goto :goto_7

    .line 1362
    :cond_18
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1363
    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1365
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x64

    add-long v4, v16, v18

    .line 1370
    .local v4, "endTime":J
    move v6, v13

    .line 1373
    .local v6, "first":I
    move v9, v13

    .line 1376
    .local v9, "last":I
    const/4 v12, 0x0

    .line 1386
    .local v12, "next":Z
    invoke-virtual/range {p0 .. p0}, getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 1387
    .local v2, "adapter":Landroid/widget/Adapter;, "TT;"
    if-nez v2, :cond_45

    .line 1388
    const/4 v13, -0x1

    goto :goto_7

    .line 1406
    .local v7, "hitFirst":Z
    .local v8, "hitLast":Z
    .local v14, "rowId":J
    :cond_3b
    if-nez v7, :cond_41

    if-eqz v12, :cond_69

    if-nez v8, :cond_69

    .line 1408
    :cond_41
    add-int/lit8 v9, v9, 0x1

    .line 1409
    move v13, v9

    .line 1411
    const/4 v12, 0x0

    .line 1391
    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v14    # "rowId":J
    :cond_45
    :goto_45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    cmp-long v16, v16, v4

    if-gtz v16, :cond_63

    .line 1392
    invoke-interface {v2, v13}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v14

    .line 1393
    .restart local v14    # "rowId":J
    cmp-long v16, v14, v10

    if-eqz v16, :cond_7

    .line 1398
    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    if-ne v9, v0, :cond_65

    const/4 v8, 0x1

    .line 1399
    .restart local v8    # "hitLast":Z
    :goto_5c
    if-nez v6, :cond_67

    const/4 v7, 0x1

    .line 1401
    .restart local v7    # "hitFirst":Z
    :goto_5f
    if-eqz v8, :cond_3b

    if-eqz v7, :cond_3b

    .line 1422
    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v14    # "rowId":J
    :cond_63
    const/4 v13, -0x1

    goto :goto_7

    .line 1398
    .restart local v14    # "rowId":J
    :cond_65
    const/4 v8, 0x0

    goto :goto_5c

    .line 1399
    .restart local v8    # "hitLast":Z
    :cond_67
    const/4 v7, 0x0

    goto :goto_5f

    .line 1412
    .restart local v7    # "hitFirst":Z
    :cond_69
    if-nez v8, :cond_6f

    if-nez v12, :cond_45

    if-nez v7, :cond_45

    .line 1414
    :cond_6f
    add-int/lit8 v6, v6, -0x1

    .line 1415
    move v13, v6

    .line 1417
    const/4 v12, 0x1

    goto :goto_45
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1211
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const-class v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 830
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .registers 2

    .prologue
    .line 929
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .registers 2

    .prologue
    .line 882
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1020
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1021
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_8

    if-gez p1, :cond_a

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_9
.end method

.method public getItemIdAtPosition(I)J
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 1025
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1026
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_8

    if-gez p1, :cond_b

    :cond_8
    const-wide/high16 v2, -0x8000000000000000L

    :goto_a
    return-wide v2

    :cond_b
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_a
.end method

.method public getLastVisiblePosition()I
    .registers 3

    .prologue
    .line 892
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, mFirstPosition:I

    invoke-virtual {p0}, getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 318
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .registers 2

    .prologue
    .line 399
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .registers 2

    .prologue
    .line 446
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public final getOnTwMultiSelectedListener()Landroid/widget/AdapterView$OnTwMultiSelectedListener;
    .registers 2

    .prologue
    .line 505
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, mOnTwMultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

    return-object v0
.end method

.method public final getOnTwNotifyKeyPressListener()Landroid/widget/AdapterView$OnTwNotifyKeyPressListener;
    .registers 2

    .prologue
    .line 627
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, mOnTwNotifyKeyPressListener:Landroid/widget/AdapterView$OnTwNotifyKeyPressListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v5, -0x1

    .line 850
    move-object v3, p1

    .line 853
    .local v3, "listItem":Landroid/view/View;
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_14

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_d} :catch_12

    move-result v6

    if-nez v6, :cond_14

    .line 854
    move-object v3, v4

    goto :goto_2

    .line 856
    .end local v4    # "v":Landroid/view/View;
    :catch_12
    move-exception v1

    .line 872
    :cond_13
    :goto_13
    return v5

    .line 861
    .restart local v4    # "v":Landroid/view/View;
    :cond_14
    if-eqz v3, :cond_13

    .line 863
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 864
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_13

    .line 865
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 866
    iget v5, p0, mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_13

    .line 864
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 814
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 815
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    invoke-virtual {p0}, getSelectedItemPosition()I

    move-result v1

    .line 816
    .local v1, "selection":I
    if-eqz v0, :cond_17

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_17

    if-ltz v1, :cond_17

    .line 817
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 819
    :goto_16
    return-object v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public getSelectedItemId()J
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 800
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-wide v0, p0, mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 791
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .registers 11

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const-wide/high16 v8, -0x8000000000000000L

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 1256
    iget v0, p0, mItemCount:I

    .line 1257
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1259
    .local v1, "found":Z
    if-lez v0, :cond_40

    .line 1264
    iget-boolean v4, p0, mNeedSync:Z

    if-eqz v4, :cond_20

    .line 1267
    iput-boolean v5, p0, mNeedSync:Z

    .line 1271
    invoke-virtual {p0}, findSyncPosition()I

    move-result v2

    .line 1272
    .local v2, "newPos":I
    if-ltz v2, :cond_20

    .line 1274
    invoke-virtual {p0, v2, v7}, lookForSelectablePosition(IZ)I

    move-result v3

    .line 1275
    .local v3, "selectablePos":I
    if-ne v3, v2, :cond_20

    .line 1277
    invoke-virtual {p0, v2}, setNextSelectedPositionInt(I)V

    .line 1278
    const/4 v1, 0x1

    .line 1282
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_20
    if-nez v1, :cond_40

    .line 1284
    invoke-virtual {p0}, getSelectedItemPosition()I

    move-result v2

    .line 1287
    .restart local v2    # "newPos":I
    if-lt v2, v0, :cond_2a

    .line 1288
    add-int/lit8 v2, v0, -0x1

    .line 1290
    :cond_2a
    if-gez v2, :cond_2d

    .line 1291
    const/4 v2, 0x0

    .line 1295
    :cond_2d
    invoke-virtual {p0, v2, v7}, lookForSelectablePosition(IZ)I

    move-result v3

    .line 1296
    .restart local v3    # "selectablePos":I
    if-gez v3, :cond_37

    .line 1298
    invoke-virtual {p0, v2, v5}, lookForSelectablePosition(IZ)I

    move-result v3

    .line 1300
    :cond_37
    if-ltz v3, :cond_40

    .line 1301
    invoke-virtual {p0, v3}, setNextSelectedPositionInt(I)V

    .line 1302
    invoke-virtual {p0}, checkSelectionChanged()V

    .line 1303
    const/4 v1, 0x1

    .line 1307
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_40
    if-nez v1, :cond_4f

    .line 1309
    iput v6, p0, mSelectedPosition:I

    .line 1310
    iput-wide v8, p0, mSelectedRowId:J

    .line 1311
    iput v6, p0, mNextSelectedPosition:I

    .line 1312
    iput-wide v8, p0, mNextSelectedRowId:J

    .line 1313
    iput-boolean v5, p0, mNeedSync:Z

    .line 1314
    invoke-virtual {p0}, checkSelectionChanged()V

    .line 1317
    :cond_4f
    invoke-virtual {p0}, notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 1318
    return-void
.end method

.method isInFilterMode()Z
    .registers 2

    .prologue
    .line 939
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .registers 3
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    .line 1434
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    return p1
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 1104
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1105
    iget-object v0, p0, mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1106
    return-void
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1228
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1229
    invoke-direct {p0}, isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1230
    invoke-virtual {p0}, getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1231
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_17

    .line 1232
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 1234
    :cond_17
    invoke-virtual {p0}, getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 1235
    invoke-virtual {p0}, getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1236
    invoke-virtual {p0}, getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1237
    invoke-virtual {p0}, getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1238
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1217
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1218
    invoke-direct {p0}, isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1219
    invoke-virtual {p0}, getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1220
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_17

    .line 1221
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 1223
    :cond_17
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 781
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, getHeight()I

    move-result v0

    iput v0, p0, mLayoutHeight:I

    .line 782
    return-void
.end method

.method public onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1197
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1199
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1200
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1202
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1203
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 1204
    const/4 v1, 0x1

    .line 1206
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v2, 0x1

    .line 334
    iget-object v0, p0, mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_45

    .line 336
    iget-object v0, p0, mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    instance-of v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;

    if-nez v0, :cond_13

    iget-boolean v0, p0, mPenPressState:Z

    if-nez v0, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, playSoundEffect(I)V

    .line 339
    :cond_13
    invoke-static {}, Landroid/app/im/InjectionManager;->getInstance()Landroid/app/im/InjectionManager;

    move-result-object v0

    if-eqz v0, :cond_34

    if-eqz p1, :cond_34

    .line 340
    invoke-virtual {p0}, getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-static {}, Landroid/app/im/InjectionManager;->getInstance()Landroid/app/im/InjectionManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Landroid/app/im/InjectionManager;->dispatchAdapterEvent(Ljava/lang/Object;ILandroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 355
    :goto_33
    return v2

    .line 345
    :cond_34
    iget-object v4, p0, mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move-wide v8, p3

    invoke-interface/range {v4 .. v9}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 346
    const/4 v10, 0x1

    .line 352
    .local v10, "result":Z
    :goto_3e
    if-eqz p1, :cond_43

    .line 353
    invoke-virtual {p1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_43
    move v2, v10

    .line 355
    goto :goto_33

    .line 349
    .end local v10    # "result":Z
    :cond_45
    const/4 v10, 0x0

    .restart local v10    # "result":Z
    goto :goto_3e
.end method

.method rememberSyncState()V
    .registers 7

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1467
    invoke-virtual {p0}, getChildCount()I

    move-result v2

    if-lez v2, :cond_2e

    .line 1468
    iput-boolean v5, p0, mNeedSync:Z

    .line 1469
    iget v2, p0, mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, mSyncHeight:J

    .line 1470
    iget v2, p0, mSelectedPosition:I

    if-ltz v2, :cond_2f

    .line 1472
    iget v2, p0, mSelectedPosition:I

    iget v3, p0, mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1473
    .local v1, "v":Landroid/view/View;
    iget-wide v2, p0, mNextSelectedRowId:J

    iput-wide v2, p0, mSyncRowId:J

    .line 1474
    iget v2, p0, mNextSelectedPosition:I

    iput v2, p0, mSyncPosition:I

    .line 1475
    if-eqz v1, :cond_2c

    .line 1476
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, mSpecificTop:I

    .line 1478
    :cond_2c
    iput v4, p0, mSyncMode:I

    .line 1495
    .end local v1    # "v":Landroid/view/View;
    :cond_2e
    :goto_2e
    return-void

    .line 1481
    :cond_2f
    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1482
    .restart local v1    # "v":Landroid/view/View;
    invoke-virtual {p0}, getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1483
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    iget v2, p0, mFirstPosition:I

    if-ltz v2, :cond_5a

    iget v2, p0, mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_5a

    .line 1484
    iget v2, p0, mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, mSyncRowId:J

    .line 1488
    :goto_4b
    iget v2, p0, mFirstPosition:I

    iput v2, p0, mSyncPosition:I

    .line 1489
    if-eqz v1, :cond_57

    .line 1490
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, mSpecificTop:I

    .line 1492
    :cond_57
    iput v5, p0, mSyncMode:I

    goto :goto_2e

    .line 1486
    :cond_5a
    const-wide/16 v2, -0x1

    iput-wide v2, p0, mSyncRowId:J

    goto :goto_4b
.end method

.method public removeAllViews()V
    .registers 3

    .prologue
    .line 776
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 754
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 766
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .registers 3

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v1, 0x0

    .line 1129
    iput-object v1, p0, mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    .line 1131
    iget-object v0, p0, mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_13

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1133
    :cond_13
    iget-boolean v0, p0, mInLayout:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, mBlockLayoutRequests:Z

    if-eqz v0, :cond_32

    .line 1138
    :cond_1b
    iget-object v0, p0, mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    if-nez v0, :cond_2c

    .line 1139
    new-instance v0, Landroid/widget/AdapterView$SelectionNotifier;

    invoke-direct {v0, p0, v1}, Landroid/widget/AdapterView$SelectionNotifier;-><init>(Landroid/widget/AdapterView;Landroid/widget/AdapterView$1;)V

    iput-object v0, p0, mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    .line 1143
    :goto_26
    iget-object v0, p0, mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, post(Ljava/lang/Runnable;)Z

    .line 1148
    :cond_2b
    :goto_2b
    return-void

    .line 1141
    :cond_2c
    iget-object v0, p0, mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_26

    .line 1145
    :cond_32
    invoke-direct {p0}, dispatchOnItemSelected()V

    goto :goto_2b
.end method

.method selectionChangedForAccessibility()V
    .registers 1

    .prologue
    .line 1151
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-direct {p0}, performAccessibilityActionsOnSelected()V

    .line 1152
    return-void
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .registers 5
    .param p1, "emptyView"    # Landroid/view/View;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v1, 0x1

    .line 908
    iput-object p1, p0, mEmptyView:Landroid/view/View;

    .line 911
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_e

    .line 913
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 916
    :cond_e
    invoke-virtual {p0}, getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 917
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 918
    .local v1, "empty":Z
    :cond_1a
    :goto_1a
    invoke-direct {p0, v1}, updateEmptyStatus(Z)V

    .line 919
    return-void

    .line 917
    .end local v1    # "empty":Z
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public setFocusable(Z)V
    .registers 7
    .param p1, "focusable"    # Z

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 944
    invoke-virtual {p0}, getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 945
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_23

    :cond_e
    move v1, v3

    .line 947
    .local v1, "empty":Z
    :goto_f
    iput-boolean p1, p0, mDesiredFocusableState:Z

    .line 948
    if-nez p1, :cond_15

    .line 949
    iput-boolean v2, p0, mDesiredFocusableInTouchModeState:Z

    .line 952
    :cond_15
    if-eqz p1, :cond_25

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_25

    :cond_1f
    :goto_1f
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 953
    return-void

    .end local v1    # "empty":Z
    :cond_23
    move v1, v2

    .line 945
    goto :goto_f

    .restart local v1    # "empty":Z
    :cond_25
    move v3, v2

    .line 952
    goto :goto_1f
.end method

.method public setFocusableInTouchMode(Z)V
    .registers 7
    .param p1, "focusable"    # Z

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 957
    invoke-virtual {p0}, getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 958
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_23

    :cond_e
    move v1, v3

    .line 960
    .local v1, "empty":Z
    :goto_f
    iput-boolean p1, p0, mDesiredFocusableInTouchModeState:Z

    .line 961
    if-eqz p1, :cond_15

    .line 962
    iput-boolean v3, p0, mDesiredFocusableState:Z

    .line 965
    :cond_15
    if-eqz p1, :cond_25

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_25

    :cond_1f
    :goto_1f
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 966
    return-void

    .end local v1    # "empty":Z
    :cond_23
    move v1, v2

    .line 958
    goto :goto_f

    .restart local v1    # "empty":Z
    :cond_25
    move v3, v2

    .line 965
    goto :goto_1f
.end method

.method setNextSelectedPositionInt(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1452
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput p1, p0, mNextSelectedPosition:I

    .line 1453
    invoke-virtual {p0, p1}, getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, mNextSelectedRowId:J

    .line 1455
    iget-boolean v0, p0, mNeedSync:Z

    if-eqz v0, :cond_18

    iget v0, p0, mSyncMode:I

    if-nez v0, :cond_18

    if-ltz p1, :cond_18

    .line 1456
    iput p1, p0, mSyncPosition:I

    .line 1457
    iget-wide v0, p0, mNextSelectedRowId:J

    iput-wide v0, p0, mSyncRowId:J

    .line 1459
    :cond_18
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1031
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 309
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 310
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 388
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, isLongClickable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 389
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setLongClickable(Z)V

    .line 391
    :cond_a
    iput-object p1, p0, mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 392
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 441
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 442
    return-void
.end method

.method setSelectedPositionInt(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1442
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput p1, p0, mSelectedPosition:I

    .line 1443
    invoke-virtual {p0, p1}, getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, mSelectedRowId:J

    .line 1444
    return-void
.end method

.method public abstract setSelection(I)V
.end method

.method public setTwMultiSelectedListener(Landroid/widget/AdapterView$OnTwMultiSelectedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/AdapterView$OnTwMultiSelectedListener;

    .prologue
    .line 495
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, mOnTwMultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

    .line 496
    return-void
.end method

.method public setTwNotifyOnKeyPressListener(Landroid/widget/AdapterView$OnTwNotifyKeyPressListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/AdapterView$OnTwNotifyKeyPressListener;

    .prologue
    .line 618
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, mOnTwNotifyKeyPressListener:Landroid/widget/AdapterView$OnTwNotifyKeyPressListener;

    .line 619
    return-void
.end method

.method public twNotifyKeyPress(Landroid/view/View;IJZ)Z
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "shiftPressState"    # Z

    .prologue
    .line 635
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, mOnTwNotifyKeyPressListener:Landroid/widget/AdapterView$OnTwNotifyKeyPressListener;

    if-eqz v0, :cond_10

    .line 636
    iget-object v0, p0, mOnTwNotifyKeyPressListener:Landroid/widget/AdapterView$OnTwNotifyKeyPressListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/widget/AdapterView$OnTwNotifyKeyPressListener;->onTwNotifyKeyPress(Landroid/widget/AdapterView;Landroid/view/View;IJZ)V

    .line 637
    const/4 v0, 0x1

    .line 640
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public twNotifyMultiSelectedStart()V
    .registers 2

    .prologue
    .line 537
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, mOnTwMultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

    if-eqz v0, :cond_4

    .line 541
    :cond_4
    return-void
.end method

.method public twNotifyMultiSelectedStart(II)V
    .registers 4
    .param p1, "startX"    # I
    .param p2, "startY"    # I

    .prologue
    .line 563
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, mOnTwMultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

    if-eqz v0, :cond_9

    .line 564
    iget-object v0, p0, mOnTwMultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AdapterView$OnTwMultiSelectedListener;->OnTwMultiSelectStart(II)V

    .line 567
    :cond_9
    return-void
.end method

.method public twNotifyMultiSelectedState(Landroid/view/View;IJZZZ)Z
    .registers 19
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "shiftPressState"    # Z
    .param p6, "ctrlPressState"    # Z
    .param p7, "penPressState"    # Z

    .prologue
    .line 523
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    move/from16 v0, p7

    iput-boolean v0, p0, mPenPressState:Z

    .line 524
    iget-object v2, p0, mOnTwMultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

    if-eqz v2, :cond_19

    .line 525
    iget-object v2, p0, mOnTwMultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v2 .. v10}, Landroid/widget/AdapterView$OnTwMultiSelectedListener;->onTwMultiSelected(Landroid/widget/AdapterView;Landroid/view/View;IJZZZ)V

    .line 526
    const/4 v2, 0x1

    .line 529
    :goto_18
    return v2

    :cond_19
    const/4 v2, 0x0

    goto :goto_18
.end method

.method public twNotifyMultiSelectedStop()V
    .registers 2

    .prologue
    .line 548
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, mPenPressState:Z

    .line 549
    iget-object v0, p0, mOnTwMultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

    if-eqz v0, :cond_7

    .line 552
    :cond_7
    return-void
.end method

.method public twNotifyMultiSelectedStop(II)V
    .registers 4
    .param p1, "endX"    # I
    .param p2, "endY"    # I

    .prologue
    .line 578
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, mPenPressState:Z

    .line 579
    iget-object v0, p0, mOnTwMultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

    if-eqz v0, :cond_c

    .line 580
    iget-object v0, p0, mOnTwMultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AdapterView$OnTwMultiSelectedListener;->OnTwMultiSelectStop(II)V

    .line 582
    :cond_c
    return-void
.end method
