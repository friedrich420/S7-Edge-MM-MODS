.class Landroid/widget/AbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSkippedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViewsById:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .registers 3

    .prologue
    .line 8677
    iput-object p1, p0, this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8691
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$5400(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView$RecycleBin;

    .prologue
    .line 8677
    iget-object v0, p0, mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$5402(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView$RecycleBin;
    .param p1, "x1"    # Landroid/widget/AbsListView$RecyclerListener;

    .prologue
    .line 8677
    iput-object p1, p0, mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-object p1
.end method

.method private clearAccessibilityFromScrap(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 9170
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 9171
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 9172
    return-void
.end method

.method private clearScrap(Ljava/util/ArrayList;)V
    .registers 6
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
    .line 9163
    .local p1, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 9164
    .local v1, "scrapCount":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_5
    if-ge v0, v1, :cond_17

    .line 9165
    add-int/lit8 v2, v1, -0x1

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, removeDetachedView(Landroid/view/View;Z)V

    .line 9164
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 9167
    :cond_17
    return-void
.end method

.method private getSkippedScrap()Ljava/util/ArrayList;
    .registers 2
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
    .line 8957
    iget-object v0, p0, mSkippedScrap:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 8958
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mSkippedScrap:Ljava/util/ArrayList;

    .line 8960
    :cond_b
    iget-object v0, p0, mSkippedScrap:Ljava/util/ArrayList;

    return-object v0
.end method

.method private pruneScrapViews()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    .line 9047
    iget-object v12, p0, mActiveViews:[Landroid/view/View;

    array-length v3, v12

    .line 9048
    .local v3, "maxViews":I
    iget v11, p0, mViewTypeCount:I

    .line 9049
    .local v11, "viewTypeCount":I
    iget-object v5, p0, mScrapViews:[Ljava/util/ArrayList;

    .line 9050
    .local v5, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v11, :cond_2b

    .line 9051
    aget-object v4, v5, v1

    .line 9052
    .local v4, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 9053
    .local v6, "size":I
    sub-int v0, v6, v3

    .line 9054
    .local v0, "extras":I
    add-int/lit8 v6, v6, -0x1

    .line 9055
    const/4 v2, 0x0

    .local v2, "j":I
    move v7, v6

    .end local v6    # "size":I
    .local v7, "size":I
    :goto_17
    if-ge v2, v0, :cond_28

    .line 9056
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "size":I
    .restart local v6    # "size":I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-direct {p0, v12, v13}, removeDetachedView(Landroid/view/View;Z)V

    .line 9055
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6    # "size":I
    .restart local v7    # "size":I
    goto :goto_17

    .line 9050
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 9060
    .end local v0    # "extras":I
    .end local v2    # "j":I
    .end local v4    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "size":I
    :cond_2b
    iget-object v9, p0, mTransientStateViews:Landroid/util/SparseArray;

    .line 9061
    .local v9, "transViewsByPos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    if-eqz v9, :cond_4d

    .line 9062
    const/4 v1, 0x0

    :goto_30
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v1, v12, :cond_4d

    .line 9063
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 9064
    .local v10, "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    move-result v12

    if-nez v12, :cond_4a

    .line 9065
    invoke-direct {p0, v10, v13}, removeDetachedView(Landroid/view/View;Z)V

    .line 9066
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 9067
    add-int/lit8 v1, v1, -0x1

    .line 9062
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 9072
    .end local v10    # "v":Landroid/view/View;
    :cond_4d
    iget-object v8, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 9073
    .local v8, "transViewsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    if-eqz v8, :cond_6f

    .line 9074
    const/4 v1, 0x0

    :goto_52
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v12

    if-ge v1, v12, :cond_6f

    .line 9075
    invoke-virtual {v8, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 9076
    .restart local v10    # "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    move-result v12

    if-nez v12, :cond_6c

    .line 9077
    invoke-direct {p0, v10, v13}, removeDetachedView(Landroid/view/View;Z)V

    .line 9078
    invoke-virtual {v8, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 9079
    add-int/lit8 v1, v1, -0x1

    .line 9074
    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 9083
    .end local v10    # "v":Landroid/view/View;
    :cond_6f
    return-void
.end method

.method private removeDetachedView(Landroid/view/View;Z)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 9175
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 9176
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v0, p1, p2}, Landroid/widget/AbsListView;->access$5800(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 9177
    return-void
.end method

.method private retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .registers 13
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 9135
    .local p1, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 9136
    .local v5, "size":I
    if-lez v5, :cond_4e

    .line 9138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v5, :cond_42

    .line 9139
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 9140
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 9143
    .local v1, "params":Landroid/widget/AbsListView$LayoutParams;
    iget-object v7, p0, this$0:Landroid/widget/AbsListView;

    iget-boolean v7, v7, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v7, :cond_31

    .line 9144
    iget-object v7, p0, this$0:Landroid/widget/AbsListView;

    iget-object v7, v7, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 9145
    .local v2, "id":J
    iget-wide v8, v1, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    cmp-long v7, v2, v8

    if-nez v7, :cond_3f

    .line 9146
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object v4, v7

    .line 9158
    .end local v0    # "i":I
    .end local v1    # "params":Landroid/widget/AbsListView$LayoutParams;
    .end local v2    # "id":J
    .end local v6    # "view":Landroid/view/View;
    :goto_30
    return-object v4

    .line 9148
    .restart local v0    # "i":I
    .restart local v1    # "params":Landroid/widget/AbsListView$LayoutParams;
    .restart local v6    # "view":Landroid/view/View;
    :cond_31
    iget v7, v1, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-ne v7, p2, :cond_3f

    .line 9149
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 9150
    .local v4, "scrap":Landroid/view/View;
    invoke-direct {p0, v4}, clearAccessibilityFromScrap(Landroid/view/View;)V

    goto :goto_30

    .line 9138
    .end local v4    # "scrap":Landroid/view/View;
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 9154
    .end local v1    # "params":Landroid/widget/AbsListView$LayoutParams;
    .end local v6    # "view":Landroid/view/View;
    :cond_42
    add-int/lit8 v7, v5, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 9155
    .restart local v4    # "scrap":Landroid/view/View;
    invoke-direct {p0, v4}, clearAccessibilityFromScrap(Landroid/view/View;)V

    goto :goto_30

    .line 9158
    .end local v0    # "i":I
    .end local v4    # "scrap":Landroid/view/View;
    :cond_4e
    const/4 v4, 0x0

    goto :goto_30
.end method


# virtual methods
.method addScrapView(Landroid/view/View;I)V
    .registers 9
    .param p1, "scrap"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 8889
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 8890
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-nez v0, :cond_a

    .line 8954
    :cond_9
    :goto_9
    return-void

    .line 8896
    :cond_a
    iput p2, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 8900
    iget v2, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 8901
    .local v2, "viewType":I
    invoke-virtual {p0, v2}, shouldRecycleViewType(I)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 8905
    const/4 v3, -0x2

    if-eq v2, v3, :cond_9

    .line 8906
    invoke-direct {p0}, getSkippedScrap()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 8911
    :cond_1f
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 8917
    iget-object v3, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 8921
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v1

    .line 8922
    .local v1, "scrapHasTransientState":Z
    if-eqz v1, :cond_6b

    .line 8923
    iget-object v3, p0, this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_4c

    iget-object v3, p0, this$0:Landroid/widget/AbsListView;

    iget-boolean v3, v3, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v3, :cond_4c

    .line 8926
    iget-object v3, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v3, :cond_44

    .line 8927
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 8929
    :cond_44
    iget-object v3, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    invoke-virtual {v3, v4, v5, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_9

    .line 8930
    :cond_4c
    iget-object v3, p0, this$0:Landroid/widget/AbsListView;

    iget-boolean v3, v3, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v3, :cond_63

    .line 8933
    iget-object v3, p0, mTransientStateViews:Landroid/util/SparseArray;

    if-nez v3, :cond_5d

    .line 8934
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, mTransientStateViews:Landroid/util/SparseArray;

    .line 8936
    :cond_5d
    iget-object v3, p0, mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9

    .line 8939
    :cond_63
    invoke-direct {p0}, getSkippedScrap()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 8942
    :cond_6b
    iget v3, p0, mViewTypeCount:I

    if-ne v3, v4, :cond_7e

    .line 8943
    iget-object v3, p0, mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8950
    :cond_74
    :goto_74
    iget-object v3, p0, mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    if-eqz v3, :cond_9

    .line 8951
    iget-object v3, p0, mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v3, p1}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_9

    .line 8945
    :cond_7e
    iget-object v3, p0, mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_74

    .line 8946
    iget-object v3, p0, mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_74
.end method

.method clear()V
    .registers 6

    .prologue
    .line 8760
    iget v3, p0, mViewTypeCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    .line 8761
    iget-object v1, p0, mCurrentScrap:Ljava/util/ArrayList;

    .line 8762
    .local v1, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v1}, clearScrap(Ljava/util/ArrayList;)V

    .line 8771
    .end local v1    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_a
    invoke-virtual {p0}, clearTransientStateViews()V

    .line 8772
    return-void

    .line 8764
    :cond_e
    iget v2, p0, mViewTypeCount:I

    .line 8765
    .local v2, "typeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v2, :cond_a

    .line 8766
    iget-object v3, p0, mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v3, v0

    .line 8767
    .restart local v1    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v1}, clearScrap(Ljava/util/ArrayList;)V

    .line 8765
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method clearTransientStateViews()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 8844
    iget-object v3, p0, mTransientStateViews:Landroid/util/SparseArray;

    .line 8845
    .local v3, "viewsByPos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    if-eqz v3, :cond_1b

    .line 8846
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 8847
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_18

    .line 8848
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4, v5}, removeDetachedView(Landroid/view/View;Z)V

    .line 8847
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 8850
    :cond_18
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 8853
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1b
    iget-object v2, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 8854
    .local v2, "viewsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    if-eqz v2, :cond_35

    .line 8855
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 8856
    .restart local v0    # "N":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_24
    if-ge v1, v0, :cond_32

    .line 8857
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4, v5}, removeDetachedView(Landroid/view/View;Z)V

    .line 8856
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 8859
    :cond_32
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 8861
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_35
    return-void
.end method

.method fillActiveViews(II)V
    .registers 9
    .param p1, "childCount"    # I
    .param p2, "firstActivePosition"    # I

    .prologue
    .line 8782
    iget-object v4, p0, mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_9

    .line 8783
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, mActiveViews:[Landroid/view/View;

    .line 8785
    :cond_9
    iput p2, p0, mFirstActivePosition:I

    .line 8788
    iget-object v0, p0, mActiveViews:[Landroid/view/View;

    .line 8789
    .local v0, "activeViews":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, p1, :cond_2c

    .line 8790
    iget-object v4, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8791
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 8793
    .local v3, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_29

    iget v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_29

    .line 8796
    aput-object v1, v0, v2

    .line 8798
    add-int v4, p2, v2

    iput v4, v3, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 8789
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 8801
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_2c
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 8811
    iget v4, p0, mFirstActivePosition:I

    sub-int v1, p1, v4

    .line 8812
    .local v1, "index":I
    iget-object v0, p0, mActiveViews:[Landroid/view/View;

    .line 8813
    .local v0, "activeViews":[Landroid/view/View;
    if-ltz v1, :cond_11

    array-length v4, v0

    if-ge v1, v4, :cond_11

    .line 8814
    aget-object v2, v0, v1

    .line 8815
    .local v2, "match":Landroid/view/View;
    aput-object v3, v0, v1

    .line 8818
    .end local v2    # "match":Landroid/view/View;
    :goto_10
    return-object v2

    :cond_11
    move-object v2, v3

    goto :goto_10
.end method

.method getScrapView(I)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 8867
    iget-object v2, p0, this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 8868
    .local v0, "whichScrap":I
    if-gez v0, :cond_c

    .line 8876
    :cond_b
    :goto_b
    return-object v1

    .line 8871
    :cond_c
    iget v2, p0, mViewTypeCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 8872
    iget-object v1, p0, mCurrentScrap:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    goto :goto_b

    .line 8873
    :cond_18
    iget-object v2, p0, mScrapViews:[Ljava/util/ArrayList;

    array-length v2, v2

    if-ge v0, v2, :cond_b

    .line 8874
    iget-object v1, p0, mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1}, retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    goto :goto_b
.end method

.method getTransientStateView(I)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 8822
    iget-object v4, p0, this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_26

    iget-object v4, p0, this$0:Landroid/widget/AbsListView;

    iget-boolean v4, v4, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_26

    iget-object v4, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_26

    .line 8823
    iget-object v4, p0, this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 8824
    .local v0, "id":J
    iget-object v4, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 8825
    .local v3, "result":Landroid/view/View;
    iget-object v4, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 8836
    .end local v0    # "id":J
    .end local v3    # "result":Landroid/view/View;
    :goto_25
    return-object v3

    .line 8828
    :cond_26
    iget-object v4, p0, mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v4, :cond_40

    .line 8829
    iget-object v4, p0, mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 8830
    .local v2, "index":I
    if-ltz v2, :cond_40

    .line 8831
    iget-object v4, p0, mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 8832
    .restart local v3    # "result":Landroid/view/View;
    iget-object v4, p0, mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_25

    .line 8836
    .end local v2    # "index":I
    .end local v3    # "result":Landroid/view/View;
    :cond_40
    const/4 v3, 0x0

    goto :goto_25
.end method

.method public markChildrenDirty()V
    .registers 9

    .prologue
    .line 8722
    iget v6, p0, mViewTypeCount:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1a

    .line 8723
    iget-object v3, p0, mCurrentScrap:Ljava/util/ArrayList;

    .line 8724
    .local v3, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 8725
    .local v4, "scrapCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v4, :cond_39

    .line 8726
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 8725
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 8729
    .end local v1    # "i":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    :cond_1a
    iget v5, p0, mViewTypeCount:I

    .line 8730
    .local v5, "typeCount":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1d
    if-ge v1, v5, :cond_39

    .line 8731
    iget-object v6, p0, mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v6, v1

    .line 8732
    .restart local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 8733
    .restart local v4    # "scrapCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_28
    if-ge v2, v4, :cond_36

    .line 8734
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 8733
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 8730
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 8738
    .end local v2    # "j":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    .end local v5    # "typeCount":I
    :cond_39
    iget-object v6, p0, mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v6, :cond_54

    .line 8739
    iget-object v6, p0, mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 8740
    .local v0, "count":I
    const/4 v1, 0x0

    :goto_44
    if-ge v1, v0, :cond_54

    .line 8741
    iget-object v6, p0, mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 8740
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 8744
    .end local v0    # "count":I
    :cond_54
    iget-object v6, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v6, :cond_6f

    .line 8745
    iget-object v6, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 8746
    .restart local v0    # "count":I
    const/4 v1, 0x0

    :goto_5f
    if-ge v1, v0, :cond_6f

    .line 8747
    iget-object v6, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 8746
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 8750
    .end local v0    # "count":I
    :cond_6f
    return-void
.end method

.method reclaimScrapViews(Ljava/util/List;)V
    .registers 8
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
    .line 9089
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget v4, p0, mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 9090
    iget-object v4, p0, mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9099
    :cond_a
    return-void

    .line 9092
    :cond_b
    iget v3, p0, mViewTypeCount:I

    .line 9093
    .local v3, "viewTypeCount":I
    iget-object v2, p0, mScrapViews:[Ljava/util/ArrayList;

    .line 9094
    .local v2, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-ge v0, v3, :cond_a

    .line 9095
    aget-object v1, v2, v0

    .line 9096
    .local v1, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9094
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method removeSkippedScrap()V
    .registers 5

    .prologue
    .line 8967
    iget-object v2, p0, mSkippedScrap:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    .line 8975
    :goto_4
    return-void

    .line 8970
    :cond_5
    iget-object v2, p0, mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8971
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_1d

    .line 8972
    iget-object v2, p0, mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, removeDetachedView(Landroid/view/View;Z)V

    .line 8971
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 8974
    :cond_1d
    iget-object v2, p0, mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_4
.end method

.method scrapActiveViews()V
    .registers 16

    .prologue
    const/4 v14, -0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 8981
    iget-object v0, p0, mActiveViews:[Landroid/view/View;

    .line 8982
    .local v0, "activeViews":[Landroid/view/View;
    iget-object v13, p0, mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    if-eqz v13, :cond_58

    move v2, v11

    .line 8983
    .local v2, "hasListener":Z
    :goto_a
    iget v13, p0, mViewTypeCount:I

    if-le v13, v11, :cond_5a

    move v7, v11

    .line 8985
    .local v7, "multipleScraps":Z
    :goto_f
    iget-object v8, p0, mCurrentScrap:Ljava/util/ArrayList;

    .line 8986
    .local v8, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 8987
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_14
    if-ltz v3, :cond_a1

    .line 8988
    aget-object v9, v0, v3

    .line 8989
    .local v9, "victim":Landroid/view/View;
    if-eqz v9, :cond_55

    .line 8990
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/AbsListView$LayoutParams;

    .line 8992
    .local v6, "lp":Landroid/widget/AbsListView$LayoutParams;
    iget v10, v6, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 8994
    .local v10, "whichScrap":I
    const/4 v11, 0x0

    aput-object v11, v0, v3

    .line 8996
    invoke-virtual {v9}, Landroid/view/View;->hasTransientState()Z

    move-result v11

    if-eqz v11, :cond_7c

    .line 8998
    invoke-virtual {v9}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 9000
    iget-object v11, p0, this$0:Landroid/widget/AbsListView;

    iget-object v11, v11, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v11, :cond_5c

    iget-object v11, p0, this$0:Landroid/widget/AbsListView;

    iget-boolean v11, v11, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v11, :cond_5c

    .line 9001
    iget-object v11, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v11, :cond_45

    .line 9002
    new-instance v11, Landroid/util/LongSparseArray;

    invoke-direct {v11}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v11, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 9004
    :cond_45
    iget-object v11, p0, this$0:Landroid/widget/AbsListView;

    iget-object v11, v11, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v13, p0, mFirstActivePosition:I

    add-int/2addr v13, v3

    invoke-interface {v11, v13}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 9005
    .local v4, "id":J
    iget-object v11, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v11, v4, v5, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 8987
    .end local v4    # "id":J
    .end local v6    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .end local v10    # "whichScrap":I
    :cond_55
    :goto_55
    add-int/lit8 v3, v3, -0x1

    goto :goto_14

    .end local v1    # "count":I
    .end local v2    # "hasListener":Z
    .end local v3    # "i":I
    .end local v7    # "multipleScraps":Z
    .end local v8    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v9    # "victim":Landroid/view/View;
    :cond_58
    move v2, v12

    .line 8982
    goto :goto_a

    .restart local v2    # "hasListener":Z
    :cond_5a
    move v7, v12

    .line 8983
    goto :goto_f

    .line 9006
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v6    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .restart local v7    # "multipleScraps":Z
    .restart local v8    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v9    # "victim":Landroid/view/View;
    .restart local v10    # "whichScrap":I
    :cond_5c
    iget-object v11, p0, this$0:Landroid/widget/AbsListView;

    iget-boolean v11, v11, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v11, :cond_76

    .line 9007
    iget-object v11, p0, mTransientStateViews:Landroid/util/SparseArray;

    if-nez v11, :cond_6d

    .line 9008
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    iput-object v11, p0, mTransientStateViews:Landroid/util/SparseArray;

    .line 9010
    :cond_6d
    iget-object v11, p0, mTransientStateViews:Landroid/util/SparseArray;

    iget v13, p0, mFirstActivePosition:I

    add-int/2addr v13, v3

    invoke-virtual {v11, v13, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_55

    .line 9011
    :cond_76
    if-eq v10, v14, :cond_55

    .line 9013
    invoke-direct {p0, v9, v12}, removeDetachedView(Landroid/view/View;Z)V

    goto :goto_55

    .line 9015
    :cond_7c
    invoke-virtual {p0, v10}, shouldRecycleViewType(I)Z

    move-result v11

    if-nez v11, :cond_88

    .line 9017
    if-eq v10, v14, :cond_55

    .line 9018
    invoke-direct {p0, v9, v12}, removeDetachedView(Landroid/view/View;Z)V

    goto :goto_55

    .line 9022
    :cond_88
    if-eqz v7, :cond_8e

    .line 9023
    iget-object v11, p0, mScrapViews:[Ljava/util/ArrayList;

    aget-object v8, v11, v10

    .line 9026
    :cond_8e
    invoke-virtual {v9}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 9027
    iget v11, p0, mFirstActivePosition:I

    add-int/2addr v11, v3

    iput v11, v6, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 9028
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9030
    if-eqz v2, :cond_55

    .line 9031
    iget-object v11, p0, mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v11, v9}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_55

    .line 9037
    .end local v6    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .end local v9    # "victim":Landroid/view/View;
    .end local v10    # "whichScrap":I
    :cond_a1
    invoke-direct {p0}, pruneScrapViews()V

    .line 9038
    return-void
.end method

.method setCacheColorHint(I)V
    .registers 12
    .param p1, "color"    # I

    .prologue
    .line 9107
    iget v8, p0, mViewTypeCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1a

    .line 9108
    iget-object v4, p0, mCurrentScrap:Ljava/util/ArrayList;

    .line 9109
    .local v4, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 9110
    .local v5, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v5, :cond_39

    .line 9111
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 9110
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 9114
    .end local v2    # "i":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    :cond_1a
    iget v6, p0, mViewTypeCount:I

    .line 9115
    .local v6, "typeCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1d
    if-ge v2, v6, :cond_39

    .line 9116
    iget-object v8, p0, mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v8, v2

    .line 9117
    .restart local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 9118
    .restart local v5    # "scrapCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_28
    if-ge v3, v5, :cond_36

    .line 9119
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 9118
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 9115
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 9124
    .end local v3    # "j":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    .end local v6    # "typeCount":I
    :cond_39
    iget-object v0, p0, mActiveViews:[Landroid/view/View;

    .line 9125
    .local v0, "activeViews":[Landroid/view/View;
    array-length v1, v0

    .line 9126
    .local v1, "count":I
    const/4 v2, 0x0

    :goto_3d
    if-ge v2, v1, :cond_49

    .line 9127
    aget-object v7, v0, v2

    .line 9128
    .local v7, "victim":Landroid/view/View;
    if-eqz v7, :cond_46

    .line 9129
    invoke-virtual {v7, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 9126
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 9132
    .end local v7    # "victim":Landroid/view/View;
    :cond_49
    return-void
.end method

.method public setViewTypeCount(I)V
    .registers 6
    .param p1, "viewTypeCount"    # I

    .prologue
    .line 8708
    const/4 v2, 0x1

    if-ge p1, v2, :cond_b

    .line 8709
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8712
    :cond_b
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 8713
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, p1, :cond_1a

    .line 8714
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 8713
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 8716
    :cond_1a
    iput p1, p0, mViewTypeCount:I

    .line 8717
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, mCurrentScrap:Ljava/util/ArrayList;

    .line 8718
    iput-object v1, p0, mScrapViews:[Ljava/util/ArrayList;

    .line 8719
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .registers 3
    .param p1, "viewType"    # I

    .prologue
    .line 8753
    if-ltz p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
