.class Lcom/android/systemui/multiwindow/SplitAppListFragment$1;
.super Ljava/lang/Object;
.source "SplitAppListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 296
    iput-object p1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$1;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;

    .line 300
    .local v0, "holder":Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;
    iget v2, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->position:I

    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$1;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mPageNum:I
    invoke-static {v3}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$700(Lcom/android/systemui/multiwindow/SplitAppListFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$1;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMultiWindowItemNum:I
    invoke-static {v4}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$200(Lcom/android/systemui/multiwindow/SplitAppListFragment;)I

    move-result v4

    mul-int/2addr v3, v4

    add-int v1, v2, v3

    .line 301
    .local v1, "iconIndex":I
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$1;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$1;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mSelectedAppPackage:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$500(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->startActivityViewPagerAppList(ILjava/lang/String;)V

    .line 302
    return-void
.end method
