.class final Landroid/widget/AbsListView$CheckForDoublePenClick;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForDoublePenClick"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;

.field x:I

.field y:I


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .registers 2

    .prologue
    .line 4230
    iput-object p1, p0, this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/AbsListView;
    .param p2, "x1"    # Landroid/widget/AbsListView$1;

    .prologue
    .line 4230
    invoke-direct {p0, p1}, <init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 4235
    const/4 v2, 0x0

    .line 4237
    .local v2, "isNeedActionMode":Z
    iget-object v3, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mIsFirstPenClick:Z
    invoke-static {v3}, Landroid/widget/AbsListView;->access$1500(Landroid/widget/AbsListView;)Z

    move-result v3

    if-eqz v3, :cond_cf

    iget-object v3, p0, this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_cf

    .line 4239
    iget-object v3, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mTwDragSelectedItemSize:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$1600(Landroid/widget/AbsListView;)I

    move-result v3

    if-eqz v3, :cond_c1

    .line 4240
    iget-object v3, p0, this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_b0

    iget-object v3, p0, this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2d

    iget-object v3, p0, this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v3, v5, :cond_b0

    .line 4243
    :cond_2d
    iget-object v3, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/widget/AbsListView;->access$1700(Landroid/widget/AbsListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_37
    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4244
    .local v0, "dragSelectedViewPosition":Ljava/lang/Integer;
    iget-object v3, p0, this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 4245
    const/4 v2, 0x1

    goto :goto_37

    .line 4249
    .end local v0    # "dragSelectedViewPosition":Ljava/lang/Integer;
    :cond_53
    iget-object v3, p0, this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v3, v5, :cond_6f

    .line 4250
    iget-object v3, p0, this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v3, :cond_6f

    if-ne v2, v6, :cond_6f

    .line 4251
    iget-object v3, p0, this$0:Landroid/widget/AbsListView;

    iget-object v4, p0, this$0:Landroid/widget/AbsListView;

    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v4

    iput-object v4, v3, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 4255
    :cond_6f
    iget-object v3, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mIsTwOnClickEnabled:Z
    invoke-static {v3}, Landroid/widget/AbsListView;->access$1800(Landroid/widget/AbsListView;)Z

    move-result v3

    if-ne v3, v6, :cond_b0

    .line 4256
    iget-object v3, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/widget/AbsListView;->access$1700(Landroid/widget/AbsListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_81
    :goto_81
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4257
    .restart local v0    # "dragSelectedViewPosition":Ljava/lang/Integer;
    iget-object v3, p0, this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 4258
    iget-object v3, p0, this$0:Landroid/widget/AbsListView;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_81

    .line 4263
    .end local v0    # "dragSelectedViewPosition":Ljava/lang/Integer;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_b0
    iget-object v3, p0, this$0:Landroid/widget/AbsListView;

    const v4, 0xc369

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 4264
    iget-object v3, p0, this$0:Landroid/widget/AbsListView;

    iget v4, p0, x:I

    iget v5, p0, y:I

    # invokes: Landroid/widget/AbsListView;->totwNotifyMultiSelectedStop(II)V
    invoke-static {v3, v4, v5}, Landroid/widget/AbsListView;->access$1900(Landroid/widget/AbsListView;II)V

    .line 4267
    :cond_c1
    iget-object v3, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/widget/AbsListView;->access$1700(Landroid/widget/AbsListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 4268
    iget-object v3, p0, this$0:Landroid/widget/AbsListView;

    # setter for: Landroid/widget/AbsListView;->mTwDragSelectedItemSize:I
    invoke-static {v3, v8}, Landroid/widget/AbsListView;->access$1602(Landroid/widget/AbsListView;I)I

    .line 4270
    :cond_cf
    iget-object v3, p0, this$0:Landroid/widget/AbsListView;

    # setter for: Landroid/widget/AbsListView;->mIsFirstPenClick:Z
    invoke-static {v3, v8}, Landroid/widget/AbsListView;->access$1502(Landroid/widget/AbsListView;Z)Z

    .line 4271
    return-void
.end method
