.class Landroid/widget/AbsSpinner$RecycleBin;
.super Ljava/lang/Object;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private final mScrapHeap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/AbsSpinner;


# direct methods
.method constructor <init>(Landroid/widget/AbsSpinner;)V
    .registers 3

    .prologue
    .line 439
    iput-object p1, p0, this$0:Landroid/widget/AbsSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mScrapHeap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method clear()V
    .registers 7

    .prologue
    .line 459
    iget-object v2, p0, mScrapHeap:Landroid/util/SparseArray;

    .line 460
    .local v2, "scrapHeap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 461
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1a

    .line 462
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 463
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_17

    .line 464
    iget-object v4, p0, this$0:Landroid/widget/AbsSpinner;

    const/4 v5, 0x1

    # invokes: Landroid/widget/AbsSpinner;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v4, v3, v5}, Landroid/widget/AbsSpinner;->access$000(Landroid/widget/AbsSpinner;Landroid/view/View;Z)V

    .line 461
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 467
    .end local v3    # "view":Landroid/view/View;
    :cond_1a
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 468
    return-void
.end method

.method get(I)Landroid/view/View;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 448
    iget-object v1, p0, mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 449
    .local v0, "result":Landroid/view/View;
    if-eqz v0, :cond_f

    .line 451
    iget-object v1, p0, mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 455
    :cond_f
    return-object v0
.end method

.method public put(ILandroid/view/View;)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 443
    iget-object v0, p0, mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 444
    return-void
.end method
