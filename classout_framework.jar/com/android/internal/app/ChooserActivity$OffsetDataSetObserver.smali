.class Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OffsetDataSetObserver"
.end annotation


# instance fields
.field private mCachedView:Landroid/view/View;

.field private mCachedViewType:I

.field private final mListView:Landroid/widget/AbsListView;

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Landroid/widget/AbsListView;)V
    .registers 4
    .param p2, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 1456
    iput-object p1, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 1453
    const/4 v0, -0x1

    iput v0, p0, mCachedViewType:I

    .line 1457
    iput-object p2, p0, mListView:Landroid/widget/AbsListView;

    .line 1458
    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 11

    .prologue
    .line 1462
    iget-object v7, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v7, v7, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-nez v7, :cond_7

    .line 1488
    :goto_6
    return-void

    .line 1466
    :cond_7
    iget-object v7, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->access$1100(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    move-result v0

    .line 1467
    .local v0, "chooserTargetRows":I
    const/4 v3, 0x0

    .line 1468
    .local v3, "offset":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_65

    .line 1469
    iget-object v7, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->access$1100(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getCallerTargetRowCount()I

    move-result v7

    add-int v4, v7, v2

    .line 1470
    .local v4, "pos":I
    iget-object v7, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->access$1100(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getItemViewType(I)I

    move-result v6

    .line 1471
    .local v6, "vt":I
    iget v7, p0, mCachedViewType:I

    if-eq v6, v7, :cond_32

    .line 1472
    const/4 v7, 0x0

    iput-object v7, p0, mCachedView:Landroid/view/View;

    .line 1474
    :cond_32
    iget-object v7, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->access$1100(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    move-result-object v7

    iget-object v8, p0, mCachedView:Landroid/view/View;

    iget-object v9, p0, mListView:Landroid/widget/AbsListView;

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1475
    .local v5, "v":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    check-cast v7, Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    iget v1, v7, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    .line 1477
    .local v1, "height":I
    int-to-float v7, v1

    iget-object v8, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->access$1100(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    move-result-object v8

    # invokes: Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getRowScale(I)F
    invoke-static {v8, v4}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$1200(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;I)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v3, v7

    .line 1479
    if-ltz v6, :cond_61

    .line 1480
    iput v6, p0, mCachedViewType:I

    .line 1481
    iput-object v5, p0, mCachedView:Landroid/view/View;

    .line 1468
    :goto_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1483
    :cond_61
    const/4 v7, -0x1

    iput v7, p0, mCachedViewType:I

    goto :goto_5e

    .line 1487
    .end local v1    # "height":I
    .end local v4    # "pos":I
    .end local v5    # "v":Landroid/view/View;
    .end local v6    # "vt":I
    :cond_65
    iget-object v7, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v7, v7, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v7, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsibleHeightReserved(I)V

    goto :goto_6
.end method
