.class Landroid/widget/AbsListView$AdapterDataSetObserver;
.super Landroid/widget/AdapterView$AdapterDataSetObserver;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">.AdapterDataSetObserver;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .registers 2

    .prologue
    .line 8467
    iput-object p1, p0, this$0:Landroid/widget/AbsListView;

    invoke-direct {p0, p1}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 8470
    invoke-super {p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 8471
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5500(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 8472
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5500(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FastScroller;->onSectionsChanged()V

    .line 8476
    :cond_14
    :goto_14
    return-void

    .line 8473
    :cond_15
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5600(Landroid/widget/AbsListView;)Landroid/widget/FluidScroller;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 8474
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5600(Landroid/widget/AbsListView;)Landroid/widget/FluidScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FluidScroller;->onSectionsChanged()V

    goto :goto_14
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 8480
    invoke-super {p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onInvalidated()V

    .line 8481
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5500(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 8482
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5500(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FastScroller;->onSectionsChanged()V

    .line 8486
    :cond_14
    :goto_14
    return-void

    .line 8483
    :cond_15
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5600(Landroid/widget/AbsListView;)Landroid/widget/FluidScroller;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 8484
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5600(Landroid/widget/AbsListView;)Landroid/widget/FluidScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FluidScroller;->onSectionsChanged()V

    goto :goto_14
.end method
