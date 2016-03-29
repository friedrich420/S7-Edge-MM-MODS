.class public Lcom/android/systemui/multiwindow/SplitAppListFragment$LoadAsyncTask;
.super Landroid/os/AsyncTask;
.source "SplitAppListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/SplitAppListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;


# direct methods
.method public constructor <init>(Lcom/android/systemui/multiwindow/SplitAppListFragment;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$LoadAsyncTask;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 142
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/multiwindow/SplitAppListFragment$LoadAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 146
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$LoadAsyncTask;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridViewAdapter:Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;
    invoke-static {v3}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$000(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->getCount()I

    move-result v2

    .line 147
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 148
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$LoadAsyncTask;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridViewAdapter:Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;
    invoke-static {v3}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$000(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .line 149
    .local v1, "launchItem":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    .line 150
    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->refreshItemIcon()V

    .line 147
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "launchItem":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 142
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/multiwindow/SplitAppListFragment$LoadAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$LoadAsyncTask;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$100(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$LoadAsyncTask;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridViewAdapter:Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;
    invoke-static {v1}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$000(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    return-void
.end method
