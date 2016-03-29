.class Lcom/android/systemui/multiwindow/SplitAppListFragment$3;
.super Ljava/lang/Object;
.source "SplitAppListFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/SplitAppListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/SplitAppListFragment;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$3;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 320
    const-string v4, "Recents_SplitAppListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mViewPagerIconKeyListener on Keycode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 322
    const/16 v4, 0x42

    if-ne p2, v4, :cond_0

    .line 323
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$3;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridView:Landroid/widget/GridView;
    invoke-static {v4}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$100(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Landroid/widget/GridView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/GridView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$3;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridView:Landroid/widget/GridView;
    invoke-static {v4}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$100(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Landroid/widget/GridView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/GridView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 325
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$3;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridView:Landroid/widget/GridView;
    invoke-static {v4}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$100(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Landroid/widget/GridView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/GridView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;

    .line 327
    .local v0, "holder":Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$3;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridView:Landroid/widget/GridView;
    invoke-static {v4}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$100(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Landroid/widget/GridView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/GridView;->playSoundEffect(I)V

    .line 328
    iget v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->position:I

    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$3;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mPageNum:I
    invoke-static {v4}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$700(Lcom/android/systemui/multiwindow/SplitAppListFragment;)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$3;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMultiWindowItemNum:I
    invoke-static {v5}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$200(Lcom/android/systemui/multiwindow/SplitAppListFragment;)I

    move-result v5

    mul-int/2addr v4, v5

    add-int v1, v3, v4

    .line 329
    .local v1, "iconIndex":I
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$3;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$3;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mSelectedAppPackage:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$500(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->startActivityViewPagerAppList(ILjava/lang/String;)V

    .line 330
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$3;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridView:Landroid/widget/GridView;
    invoke-static {v3}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$100(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Landroid/widget/GridView;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setSelection(I)V

    .line 331
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$3;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridView:Landroid/widget/GridView;
    invoke-static {v3}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$100(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Landroid/widget/GridView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/GridView;->invalidate()V

    .line 336
    .end local v0    # "holder":Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;
    .end local v1    # "iconIndex":I
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method
