.class Landroid/widget/AbsHorizontalListView$RecycleBin;
.super Ljava/lang/Object;
.source "AbsHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
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

.field private mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

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

.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .registers 3

    .prologue
    .line 7657
    iput-object p1, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7671
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$4600(Landroid/widget/AbsHorizontalListView$RecycleBin;)Landroid/widget/AbsHorizontalListView$RecyclerListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView$RecycleBin;

    .prologue
    .line 7657
    iget-object v0, p0, mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$4602(Landroid/widget/AbsHorizontalListView$RecycleBin;Landroid/widget/AbsHorizontalListView$RecyclerListener;)Landroid/widget/AbsHorizontalListView$RecyclerListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView$RecycleBin;
    .param p1, "x1"    # Landroid/widget/AbsHorizontalListView$RecyclerListener;

    .prologue
    .line 7657
    iput-object p1, p0, mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

    return-object p1
.end method

.method private pruneScrapViews()V
    .registers 14

    .prologue
    .line 8010
    iget-object v10, p0, mActiveViews:[Landroid/view/View;

    array-length v3, v10

    .line 8011
    .local v3, "maxViews":I
    iget v9, p0, mViewTypeCount:I

    .line 8012
    .local v9, "viewTypeCount":I
    iget-object v5, p0, mScrapViews:[Ljava/util/ArrayList;

    .line 8013
    .local v5, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v9, :cond_2d

    .line 8014
    aget-object v4, v5, v1

    .line 8015
    .local v4, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 8016
    .local v6, "size":I
    sub-int v0, v6, v3

    .line 8017
    .local v0, "extras":I
    add-int/lit8 v6, v6, -0x1

    .line 8018
    const/4 v2, 0x0

    .local v2, "j":I
    move v7, v6

    .end local v6    # "size":I
    .local v7, "size":I
    :goto_16
    if-ge v2, v0, :cond_2a

    .line 8019
    iget-object v11, p0, this$0:Landroid/widget/AbsHorizontalListView;

    add-int/lit8 v6, v7, -0x1

    .end local v7    # "size":I
    .restart local v6    # "size":I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    const/4 v12, 0x0

    # invokes: Landroid/widget/AbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v11, v10, v12}, Landroid/widget/AbsHorizontalListView;->access$5300(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V

    .line 8018
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6    # "size":I
    .restart local v7    # "size":I
    goto :goto_16

    .line 8013
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 8023
    .end local v0    # "extras":I
    .end local v2    # "j":I
    .end local v4    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "size":I
    :cond_2d
    iget-object v10, p0, mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v10, :cond_52

    .line 8024
    const/4 v1, 0x0

    :goto_32
    iget-object v10, p0, mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v1, v10, :cond_52

    .line 8025
    iget-object v10, p0, mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 8026
    .local v8, "v":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->hasTransientState()Z

    move-result v10

    if-nez v10, :cond_4f

    .line 8027
    iget-object v10, p0, mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 8028
    add-int/lit8 v1, v1, -0x1

    .line 8024
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 8032
    .end local v8    # "v":Landroid/view/View;
    :cond_52
    iget-object v10, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v10, :cond_77

    .line 8033
    const/4 v1, 0x0

    :goto_57
    iget-object v10, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v10}, Landroid/util/LongSparseArray;->size()I

    move-result v10

    if-ge v1, v10, :cond_77

    .line 8034
    iget-object v10, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 8035
    .restart local v8    # "v":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->hasTransientState()Z

    move-result v10

    if-nez v10, :cond_74

    .line 8036
    iget-object v10, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 8037
    add-int/lit8 v1, v1, -0x1

    .line 8033
    :cond_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 8041
    .end local v8    # "v":Landroid/view/View;
    :cond_77
    return-void
.end method


# virtual methods
.method addScrapView(Landroid/view/View;I)V
    .registers 9
    .param p1, "scrap"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 7864
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 7865
    .local v0, "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    if-nez v0, :cond_a

    .line 7929
    :cond_9
    :goto_9
    return-void

    .line 7869
    :cond_a
    iput p2, v0, Landroid/widget/AbsHorizontalListView$LayoutParams;->scrappedFromPosition:I

    .line 7873
    iget v2, v0, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    .line 7874
    .local v2, "viewType":I
    invoke-virtual {p0, v2}, shouldRecycleViewType(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 7878
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 7884
    iget-object v3, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v3, v4}, Landroid/widget/AbsHorizontalListView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 7888
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v1

    .line 7889
    .local v1, "scrapHasTransientState":Z
    if-eqz v1, :cond_69

    .line 7890
    iget-object v3, p0, this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v3, v3, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_41

    iget-object v3, p0, this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v3, v3, Landroid/widget/AbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v3, :cond_41

    .line 7893
    iget-object v3, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v3, :cond_39

    .line 7894
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 7896
    :cond_39
    iget-object v3, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Landroid/widget/AbsHorizontalListView$LayoutParams;->itemId:J

    invoke-virtual {v3, v4, v5, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_9

    .line 7897
    :cond_41
    iget-object v3, p0, this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v3, v3, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    if-nez v3, :cond_58

    .line 7900
    iget-object v3, p0, mTransientStateViews:Landroid/util/SparseArray;

    if-nez v3, :cond_52

    .line 7901
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, mTransientStateViews:Landroid/util/SparseArray;

    .line 7903
    :cond_52
    iget-object v3, p0, mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9

    .line 7906
    :cond_58
    iget-object v3, p0, mSkippedScrap:Ljava/util/ArrayList;

    if-nez v3, :cond_63

    .line 7907
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, mSkippedScrap:Ljava/util/ArrayList;

    .line 7909
    :cond_63
    iget-object v3, p0, mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 7912
    :cond_69
    iget v3, p0, mViewTypeCount:I

    if-ne v3, v4, :cond_89

    .line 7913
    iget-object v3, p0, mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7919
    :goto_72
    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 7920
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7923
    :cond_7b
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7925
    iget-object v3, p0, mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

    if-eqz v3, :cond_9

    .line 7926
    iget-object v3, p0, mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

    invoke-interface {v3, p1}, Landroid/widget/AbsHorizontalListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_9

    .line 7915
    :cond_89
    iget-object v3, p0, mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_72
.end method

.method clear()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 7740
    iget v5, p0, mViewTypeCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_20

    .line 7741
    iget-object v2, p0, mCurrentScrap:Ljava/util/ArrayList;

    .line 7742
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7743
    .local v3, "scrapCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v3, :cond_44

    .line 7744
    iget-object v6, p0, this$0:Landroid/widget/AbsHorizontalListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    # invokes: Landroid/widget/AbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v7}, Landroid/widget/AbsHorizontalListView;->access$4900(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V

    .line 7743
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 7747
    .end local v0    # "i":I
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    :cond_20
    iget v4, p0, mViewTypeCount:I

    .line 7748
    .local v4, "typeCount":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_23
    if-ge v0, v4, :cond_44

    .line 7749
    iget-object v5, p0, mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 7750
    .restart local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7751
    .restart local v3    # "scrapCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2e
    if-ge v1, v3, :cond_41

    .line 7752
    iget-object v6, p0, this$0:Landroid/widget/AbsHorizontalListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    # invokes: Landroid/widget/AbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v7}, Landroid/widget/AbsHorizontalListView;->access$5000(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V

    .line 7751
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 7748
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 7756
    .end local v1    # "j":I
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    .end local v4    # "typeCount":I
    :cond_44
    iget-object v5, p0, mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v5, :cond_4d

    .line 7757
    iget-object v5, p0, mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 7759
    :cond_4d
    iget-object v5, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v5, :cond_56

    .line 7760
    iget-object v5, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->clear()V

    .line 7762
    :cond_56
    return-void
.end method

.method clearTransientStateViews()V
    .registers 2

    .prologue
    .line 7831
    iget-object v0, p0, mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_9

    .line 7832
    iget-object v0, p0, mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 7834
    :cond_9
    iget-object v0, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_12

    .line 7835
    iget-object v0, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 7837
    :cond_12
    return-void
.end method

.method fillActiveViews(II)V
    .registers 9
    .param p1, "childCount"    # I
    .param p2, "firstActivePosition"    # I

    .prologue
    .line 7772
    iget-object v4, p0, mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_9

    .line 7773
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, mActiveViews:[Landroid/view/View;

    .line 7775
    :cond_9
    iput p2, p0, mFirstActivePosition:I

    .line 7778
    iget-object v0, p0, mActiveViews:[Landroid/view/View;

    .line 7779
    .local v0, "activeViews":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, p1, :cond_28

    .line 7780
    iget-object v4, p0, this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v4, v2}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7781
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 7783
    .local v3, "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    if-eqz v3, :cond_25

    iget v4, v3, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_25

    .line 7786
    aput-object v1, v0, v2

    .line 7779
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 7789
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :cond_28
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 7799
    iget v4, p0, mFirstActivePosition:I

    sub-int v1, p1, v4

    .line 7800
    .local v1, "index":I
    iget-object v0, p0, mActiveViews:[Landroid/view/View;

    .line 7801
    .local v0, "activeViews":[Landroid/view/View;
    if-ltz v1, :cond_11

    array-length v4, v0

    if-ge v1, v4, :cond_11

    .line 7802
    aget-object v2, v0, v1

    .line 7803
    .local v2, "match":Landroid/view/View;
    aput-object v3, v0, v1

    .line 7806
    .end local v2    # "match":Landroid/view/View;
    :goto_10
    return-object v2

    :cond_11
    move-object v2, v3

    goto :goto_10
.end method

.method getScrapView(I)Landroid/view/View;
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 7843
    iget v1, p0, mViewTypeCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 7844
    iget-object v1, p0, mCurrentScrap:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Landroid/widget/AbsHorizontalListView;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    .line 7851
    :goto_b
    return-object v1

    .line 7846
    :cond_c
    iget-object v1, p0, this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v1, v1, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 7847
    .local v0, "whichScrap":I
    if-ltz v0, :cond_24

    iget-object v1, p0, mScrapViews:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_24

    .line 7848
    iget-object v1, p0, mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Landroid/widget/AbsHorizontalListView;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    goto :goto_b

    .line 7851
    :cond_24
    const/4 v1, 0x0

    goto :goto_b
.end method

.method getTransientStateView(I)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 7810
    iget-object v4, p0, this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v4, v4, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_26

    iget-object v4, p0, this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v4, v4, Landroid/widget/AbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_26

    iget-object v4, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_26

    .line 7811
    iget-object v4, p0, this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v4, v4, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 7812
    .local v0, "id":J
    iget-object v4, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 7813
    .local v3, "result":Landroid/view/View;
    iget-object v4, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 7824
    .end local v0    # "id":J
    .end local v3    # "result":Landroid/view/View;
    :goto_25
    return-object v3

    .line 7816
    :cond_26
    iget-object v4, p0, mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v4, :cond_40

    .line 7817
    iget-object v4, p0, mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 7818
    .local v2, "index":I
    if-ltz v2, :cond_40

    .line 7819
    iget-object v4, p0, mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 7820
    .restart local v3    # "result":Landroid/view/View;
    iget-object v4, p0, mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_25

    .line 7824
    .end local v2    # "index":I
    .end local v3    # "result":Landroid/view/View;
    :cond_40
    const/4 v3, 0x0

    goto :goto_25
.end method

.method public markChildrenDirty()V
    .registers 9

    .prologue
    .line 7702
    iget v6, p0, mViewTypeCount:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1a

    .line 7703
    iget-object v3, p0, mCurrentScrap:Ljava/util/ArrayList;

    .line 7704
    .local v3, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 7705
    .local v4, "scrapCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v4, :cond_39

    .line 7706
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 7705
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 7709
    .end local v1    # "i":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    :cond_1a
    iget v5, p0, mViewTypeCount:I

    .line 7710
    .local v5, "typeCount":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1d
    if-ge v1, v5, :cond_39

    .line 7711
    iget-object v6, p0, mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v6, v1

    .line 7712
    .restart local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 7713
    .restart local v4    # "scrapCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_28
    if-ge v2, v4, :cond_36

    .line 7714
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 7713
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 7710
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 7718
    .end local v2    # "j":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    .end local v5    # "typeCount":I
    :cond_39
    iget-object v6, p0, mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v6, :cond_54

    .line 7719
    iget-object v6, p0, mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 7720
    .local v0, "count":I
    const/4 v1, 0x0

    :goto_44
    if-ge v1, v0, :cond_54

    .line 7721
    iget-object v6, p0, mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 7720
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 7724
    .end local v0    # "count":I
    :cond_54
    iget-object v6, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v6, :cond_6f

    .line 7725
    iget-object v6, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 7726
    .restart local v0    # "count":I
    const/4 v1, 0x0

    :goto_5f
    if-ge v1, v0, :cond_6f

    .line 7727
    iget-object v6, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 7726
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 7730
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
    .line 8047
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget v4, p0, mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 8048
    iget-object v4, p0, mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8057
    :cond_a
    return-void

    .line 8050
    :cond_b
    iget v3, p0, mViewTypeCount:I

    .line 8051
    .local v3, "viewTypeCount":I
    iget-object v2, p0, mScrapViews:[Ljava/util/ArrayList;

    .line 8052
    .local v2, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-ge v0, v3, :cond_a

    .line 8053
    aget-object v1, v2, v0

    .line 8054
    .local v1, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8052
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method removeSkippedScrap()V
    .registers 6

    .prologue
    .line 7935
    iget-object v2, p0, mSkippedScrap:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    .line 7943
    :goto_4
    return-void

    .line 7938
    :cond_5
    iget-object v2, p0, mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7939
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_1f

    .line 7940
    iget-object v3, p0, this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v2, p0, mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v4, 0x0

    # invokes: Landroid/widget/AbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v3, v2, v4}, Landroid/widget/AbsHorizontalListView;->access$5100(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V

    .line 7939
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 7942
    :cond_1f
    iget-object v2, p0, mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_4
.end method

.method scrapActiveViews()V
    .registers 15

    .prologue
    .line 7949
    iget-object v0, p0, mActiveViews:[Landroid/view/View;

    .line 7950
    .local v0, "activeViews":[Landroid/view/View;
    iget-object v12, p0, mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

    if-eqz v12, :cond_66

    const/4 v2, 0x1

    .line 7951
    .local v2, "hasListener":Z
    :goto_7
    iget v12, p0, mViewTypeCount:I

    const/4 v13, 0x1

    if-le v12, v13, :cond_68

    const/4 v7, 0x1

    .line 7953
    .local v7, "multipleScraps":Z
    :goto_d
    iget-object v9, p0, mCurrentScrap:Ljava/util/ArrayList;

    .line 7954
    .local v9, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 7955
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_12
    if-ltz v3, :cond_9b

    .line 7956
    aget-object v10, v0, v3

    .line 7957
    .local v10, "victim":Landroid/view/View;
    if-eqz v10, :cond_63

    .line 7958
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 7960
    .local v6, "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    iget v11, v6, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    .line 7962
    .local v11, "whichScrap":I
    const/4 v12, 0x0

    aput-object v12, v0, v3

    .line 7964
    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    move-result v8

    .line 7965
    .local v8, "scrapHasTransientState":Z
    invoke-virtual {p0, v11}, shouldRecycleViewType(I)Z

    move-result v12

    if-eqz v12, :cond_2f

    if-eqz v8, :cond_7e

    .line 7967
    :cond_2f
    const/4 v12, -0x2

    if-eq v11, v12, :cond_3a

    if-eqz v8, :cond_3a

    .line 7969
    iget-object v12, p0, this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v13, 0x0

    # invokes: Landroid/widget/AbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v12, v10, v13}, Landroid/widget/AbsHorizontalListView;->access$5200(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V

    .line 7971
    :cond_3a
    if-eqz v8, :cond_63

    .line 7972
    iget-object v12, p0, this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v12, v12, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v12, :cond_6a

    iget-object v12, p0, this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v12, v12, Landroid/widget/AbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v12, :cond_6a

    .line 7973
    iget-object v12, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v12, :cond_53

    .line 7974
    new-instance v12, Landroid/util/LongSparseArray;

    invoke-direct {v12}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v12, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 7976
    :cond_53
    iget-object v12, p0, this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v12, v12, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v13, p0, mFirstActivePosition:I

    add-int/2addr v13, v3

    invoke-interface {v12, v13}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 7977
    .local v4, "id":J
    iget-object v12, p0, mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v4, v5, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 7955
    .end local v4    # "id":J
    .end local v6    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    .end local v8    # "scrapHasTransientState":Z
    .end local v11    # "whichScrap":I
    :cond_63
    :goto_63
    add-int/lit8 v3, v3, -0x1

    goto :goto_12

    .line 7950
    .end local v1    # "count":I
    .end local v2    # "hasListener":Z
    .end local v3    # "i":I
    .end local v7    # "multipleScraps":Z
    .end local v9    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v10    # "victim":Landroid/view/View;
    :cond_66
    const/4 v2, 0x0

    goto :goto_7

    .line 7951
    .restart local v2    # "hasListener":Z
    :cond_68
    const/4 v7, 0x0

    goto :goto_d

    .line 7979
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v6    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    .restart local v7    # "multipleScraps":Z
    .restart local v8    # "scrapHasTransientState":Z
    .restart local v9    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v10    # "victim":Landroid/view/View;
    .restart local v11    # "whichScrap":I
    :cond_6a
    iget-object v12, p0, mTransientStateViews:Landroid/util/SparseArray;

    if-nez v12, :cond_75

    .line 7980
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    iput-object v12, p0, mTransientStateViews:Landroid/util/SparseArray;

    .line 7982
    :cond_75
    iget-object v12, p0, mTransientStateViews:Landroid/util/SparseArray;

    iget v13, p0, mFirstActivePosition:I

    add-int/2addr v13, v3

    invoke-virtual {v12, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_63

    .line 7988
    :cond_7e
    if-eqz v7, :cond_84

    .line 7989
    iget-object v12, p0, mScrapViews:[Ljava/util/ArrayList;

    aget-object v9, v12, v11

    .line 7991
    :cond_84
    invoke-virtual {v10}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 7992
    iget v12, p0, mFirstActivePosition:I

    add-int/2addr v12, v3

    iput v12, v6, Landroid/widget/AbsHorizontalListView$LayoutParams;->scrappedFromPosition:I

    .line 7993
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7995
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7996
    if-eqz v2, :cond_63

    .line 7997
    iget-object v12, p0, mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

    invoke-interface {v12, v10}, Landroid/widget/AbsHorizontalListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_63

    .line 8002
    .end local v6    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    .end local v8    # "scrapHasTransientState":Z
    .end local v10    # "victim":Landroid/view/View;
    .end local v11    # "whichScrap":I
    :cond_9b
    invoke-direct {p0}, pruneScrapViews()V

    .line 8003
    return-void
.end method

.method setCacheColorHint(I)V
    .registers 12
    .param p1, "color"    # I

    .prologue
    .line 8065
    iget v8, p0, mViewTypeCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1a

    .line 8066
    iget-object v4, p0, mCurrentScrap:Ljava/util/ArrayList;

    .line 8067
    .local v4, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 8068
    .local v5, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v5, :cond_39

    .line 8069
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8068
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 8072
    .end local v2    # "i":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    :cond_1a
    iget v6, p0, mViewTypeCount:I

    .line 8073
    .local v6, "typeCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1d
    if-ge v2, v6, :cond_39

    .line 8074
    iget-object v8, p0, mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v8, v2

    .line 8075
    .restart local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 8076
    .restart local v5    # "scrapCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_28
    if-ge v3, v5, :cond_36

    .line 8077
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8076
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 8073
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 8082
    .end local v3    # "j":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    .end local v6    # "typeCount":I
    :cond_39
    iget-object v0, p0, mActiveViews:[Landroid/view/View;

    .line 8083
    .local v0, "activeViews":[Landroid/view/View;
    array-length v1, v0

    .line 8084
    .local v1, "count":I
    const/4 v2, 0x0

    :goto_3d
    if-ge v2, v1, :cond_49

    .line 8085
    aget-object v7, v0, v2

    .line 8086
    .local v7, "victim":Landroid/view/View;
    if-eqz v7, :cond_46

    .line 8087
    invoke-virtual {v7, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8084
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 8090
    .end local v7    # "victim":Landroid/view/View;
    :cond_49
    return-void
.end method

.method public setViewTypeCount(I)V
    .registers 6
    .param p1, "viewTypeCount"    # I

    .prologue
    .line 7688
    const/4 v2, 0x1

    if-ge p1, v2, :cond_b

    .line 7689
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7692
    :cond_b
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 7693
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, p1, :cond_1a

    .line 7694
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 7693
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 7696
    :cond_1a
    iput p1, p0, mViewTypeCount:I

    .line 7697
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, mCurrentScrap:Ljava/util/ArrayList;

    .line 7698
    iput-object v1, p0, mScrapViews:[Ljava/util/ArrayList;

    .line 7699
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .registers 3
    .param p1, "viewType"    # I

    .prologue
    .line 7733
    if-ltz p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
