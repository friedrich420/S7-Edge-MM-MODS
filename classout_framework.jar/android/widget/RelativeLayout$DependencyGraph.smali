.class Landroid/widget/RelativeLayout$DependencyGraph;
.super Ljava/lang/Object;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DependencyGraph"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$DependencyGraph$Node;
    }
.end annotation


# instance fields
.field private mKeyNodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mRoots:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1646
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mNodes:Ljava/util/ArrayList;

    .line 1652
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mKeyNodes:Landroid/util/SparseArray;

    .line 1658
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, mRoots:Ljava/util/ArrayDeque;

    .line 1799
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RelativeLayout$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/widget/RelativeLayout$1;

    .prologue
    .line 1642
    invoke-direct {p0}, <init>()V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Landroid/widget/RelativeLayout$DependencyGraph;

    .prologue
    .line 1642
    iget-object v0, p0, mKeyNodes:Landroid/util/SparseArray;

    return-object v0
.end method

.method private findRoots([I)Ljava/util/ArrayDeque;
    .registers 15
    .param p1, "rulesFilter"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1742
    iget-object v4, p0, mKeyNodes:Landroid/util/SparseArray;

    .line 1743
    .local v4, "keyNodes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    iget-object v7, p0, mNodes:Ljava/util/ArrayList;

    .line 1744
    .local v7, "nodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1748
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_1e

    .line 1749
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1750
    .local v6, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iget-object v12, v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->clear()V

    .line 1751
    iget-object v12, v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->clear()V

    .line 1748
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1755
    .end local v6    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v0, :cond_58

    .line 1756
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1758
    .restart local v6    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iget-object v12, v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1759
    .local v5, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I
    invoke-static {v5}, Landroid/widget/RelativeLayout$LayoutParams;->access$700(Landroid/widget/RelativeLayout$LayoutParams;)[I

    move-result-object v10

    .line 1760
    .local v10, "rules":[I
    array-length v11, p1

    .line 1764
    .local v11, "rulesCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_35
    if-ge v3, v11, :cond_55

    .line 1765
    aget v12, p1, v3

    aget v9, v10, v12

    .line 1766
    .local v9, "rule":I
    if-lez v9, :cond_47

    .line 1768
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1770
    .local v1, "dependency":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-eqz v1, :cond_47

    if-ne v1, v6, :cond_4a

    .line 1764
    .end local v1    # "dependency":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_47
    :goto_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 1774
    .restart local v1    # "dependency":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_4a
    iget-object v12, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    iget-object v12, v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    invoke-virtual {v12, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_47

    .line 1755
    .end local v1    # "dependency":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .end local v9    # "rule":I
    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 1781
    .end local v3    # "j":I
    .end local v5    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .end local v10    # "rules":[I
    .end local v11    # "rulesCount":I
    :cond_58
    iget-object v8, p0, mRoots:Ljava/util/ArrayDeque;

    .line 1782
    .local v8, "roots":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->clear()V

    .line 1785
    const/4 v2, 0x0

    :goto_5e
    if-ge v2, v0, :cond_74

    .line 1786
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1787
    .restart local v6    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iget-object v12, v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-nez v12, :cond_71

    invoke-virtual {v8, v6}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1785
    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    .line 1790
    .end local v6    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_74
    return-object v8
.end method


# virtual methods
.method add(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1682
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1683
    .local v0, "id":I
    invoke-static {p1}, Landroid/widget/RelativeLayout$DependencyGraph$Node;->acquire(Landroid/view/View;)Landroid/widget/RelativeLayout$DependencyGraph$Node;

    move-result-object v1

    .line 1685
    .local v1, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    const/4 v2, -0x1

    if-eq v0, v2, :cond_10

    .line 1686
    iget-object v2, p0, mKeyNodes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1689
    :cond_10
    iget-object v2, p0, mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1690
    return-void
.end method

.method clear()V
    .registers 5

    .prologue
    .line 1664
    iget-object v2, p0, mNodes:Ljava/util/ArrayList;

    .line 1665
    .local v2, "nodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1667
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 1668
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout$DependencyGraph$Node;->release()V

    .line 1667
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1670
    :cond_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1672
    iget-object v3, p0, mKeyNodes:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 1673
    iget-object v3, p0, mRoots:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    .line 1674
    return-void
.end method

.method varargs getSortedViews([Landroid/view/View;[I)V
    .registers 16
    .param p1, "sorted"    # [Landroid/view/View;
    .param p2, "rules"    # [I

    .prologue
    .line 1703
    invoke-direct {p0, p2}, findRoots([I)Ljava/util/ArrayDeque;

    move-result-object v9

    .line 1704
    .local v9, "roots":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    const/4 v5, 0x0

    .line 1707
    .local v5, "index":I
    :goto_5
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .local v8, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-eqz v8, :cond_39

    .line 1708
    iget-object v10, v8, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    .line 1709
    .local v10, "view":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v7

    .line 1711
    .local v7, "key":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    aput-object v10, p1, v5

    .line 1713
    iget-object v3, v8, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Landroid/util/ArrayMap;

    .line 1714
    .local v3, "dependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RelativeLayout$DependencyGraph$Node;Landroid/widget/RelativeLayout$DependencyGraph;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1715
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    if-ge v4, v0, :cond_37

    .line 1716
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1717
    .local v2, "dependent":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iget-object v1, v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    .line 1719
    .local v1, "dependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 1720
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-nez v11, :cond_34

    .line 1721
    invoke-virtual {v9, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1715
    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .end local v1    # "dependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    .end local v2    # "dependent":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_37
    move v5, v6

    .line 1724
    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_5

    .line 1726
    .end local v0    # "count":I
    .end local v3    # "dependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RelativeLayout$DependencyGraph$Node;Landroid/widget/RelativeLayout$DependencyGraph;>;"
    .end local v4    # "i":I
    .end local v7    # "key":I
    .end local v10    # "view":Landroid/view/View;
    :cond_39
    array-length v11, p1

    if-ge v5, v11, :cond_44

    .line 1727
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Circular dependencies cannot exist in RelativeLayout"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1730
    :cond_44
    return-void
.end method
