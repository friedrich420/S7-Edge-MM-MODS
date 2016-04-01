.class Landroid/widget/AdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Landroid/widget/AdapterView;


# direct methods
.method constructor <init>(Landroid/widget/AdapterView;)V
    .registers 3

    .prologue
    .line 1051
    .local p0, "this":Landroid/widget/AdapterView$AdapterDataSetObserver;, "Landroid/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    iput-object p1, p0, this$0:Landroid/widget/AdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 1053
    const/4 v0, 0x0

    iput-object v0, p0, mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .registers 2

    .prologue
    .line 1098
    .local p0, "this":Landroid/widget/AdapterView$AdapterDataSetObserver;, "Landroid/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    const/4 v0, 0x0

    iput-object v0, p0, mInstanceState:Landroid/os/Parcelable;

    .line 1099
    return-void
.end method

.method public onChanged()V
    .registers 3

    .prologue
    .line 1057
    .local p0, "this":Landroid/widget/AdapterView$AdapterDataSetObserver;, "Landroid/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    iget-object v0, p0, this$0:Landroid/widget/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1058
    iget-object v0, p0, this$0:Landroid/widget/AdapterView;

    iget-object v1, p0, this$0:Landroid/widget/AdapterView;

    iget v1, v1, Landroid/widget/AdapterView;->mItemCount:I

    iput v1, v0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 1059
    iget-object v0, p0, this$0:Landroid/widget/AdapterView;

    iget-object v1, p0, this$0:Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1063
    iget-object v0, p0, this$0:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_4c

    iget-object v0, p0, this$0:Landroid/widget/AdapterView;

    iget v0, v0, Landroid/widget/AdapterView;->mOldItemCount:I

    if-nez v0, :cond_4c

    iget-object v0, p0, this$0:Landroid/widget/AdapterView;

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_4c

    .line 1065
    iget-object v0, p0, this$0:Landroid/widget/AdapterView;

    iget-object v1, p0, mInstanceState:Landroid/os/Parcelable;

    # invokes: Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    invoke-static {v0, v1}, Landroid/widget/AdapterView;->access$000(Landroid/widget/AdapterView;Landroid/os/Parcelable;)V

    .line 1066
    const/4 v0, 0x0

    iput-object v0, p0, mInstanceState:Landroid/os/Parcelable;

    .line 1070
    :goto_41
    iget-object v0, p0, this$0:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 1071
    iget-object v0, p0, this$0:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 1072
    return-void

    .line 1068
    :cond_4c
    iget-object v0, p0, this$0:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->rememberSyncState()V

    goto :goto_41
.end method

.method public onInvalidated()V
    .registers 7

    .prologue
    .local p0, "this":Landroid/widget/AdapterView$AdapterDataSetObserver;, "Landroid/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    const-wide/high16 v4, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1076
    iget-object v0, p0, this$0:Landroid/widget/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1078
    iget-object v0, p0, this$0:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1081
    iget-object v0, p0, this$0:Landroid/widget/AdapterView;

    # invokes: Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;
    invoke-static {v0}, Landroid/widget/AdapterView;->access$100(Landroid/widget/AdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, mInstanceState:Landroid/os/Parcelable;

    .line 1085
    :cond_1d
    iget-object v0, p0, this$0:Landroid/widget/AdapterView;

    iget-object v1, p0, this$0:Landroid/widget/AdapterView;

    iget v1, v1, Landroid/widget/AdapterView;->mItemCount:I

    iput v1, v0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 1086
    iget-object v0, p0, this$0:Landroid/widget/AdapterView;

    iput v3, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1087
    iget-object v0, p0, this$0:Landroid/widget/AdapterView;

    iput v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1088
    iget-object v0, p0, this$0:Landroid/widget/AdapterView;

    iput-wide v4, v0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 1089
    iget-object v0, p0, this$0:Landroid/widget/AdapterView;

    iput v2, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 1090
    iget-object v0, p0, this$0:Landroid/widget/AdapterView;

    iput-wide v4, v0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 1091
    iget-object v0, p0, this$0:Landroid/widget/AdapterView;

    iput-boolean v3, v0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1093
    iget-object v0, p0, this$0:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 1094
    iget-object v0, p0, this$0:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 1095
    return-void
.end method
