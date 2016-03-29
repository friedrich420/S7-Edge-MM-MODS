.class Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;
.super Landroid/os/AsyncTask;
.source "AppShortcutList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/lockappshortcut/AppShortcutList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAppListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;


# direct methods
.method private constructor <init>(Lcom/android/settings/lockappshortcut/AppShortcutList;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/lockappshortcut/AppShortcutList;Lcom/android/settings/lockappshortcut/AppShortcutList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/lockappshortcut/AppShortcutList;
    .param p2, "x1"    # Lcom/android/settings/lockappshortcut/AppShortcutList$1;

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;-><init>(Lcom/android/settings/lockappshortcut/AppShortcutList;)V

    return-void
.end method


# virtual methods
.method protected add()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    # getter for: Lcom/android/settings/lockappshortcut/AppShortcutList;->mAppListAdapter:Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;
    invoke-static {v0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->access$500(Lcom/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    # getter for: Lcom/android/settings/lockappshortcut/AppShortcutList;->mAppListAdapter:Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;
    invoke-static {v0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->access$500(Lcom/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->clear()V

    .line 425
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    # getter for: Lcom/android/settings/lockappshortcut/AppShortcutList;->mAppListAdapter:Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;
    invoke-static {v0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->access$500(Lcom/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    # invokes: Lcom/android/settings/lockappshortcut/AppShortcutList;->getAppListAdapter()Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings/lockappshortcut/AppShortcutList;->access$800(Lcom/android/settings/lockappshortcut/AppShortcutList;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->addAll(Ljava/util/Collection;)V

    .line 426
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    # getter for: Lcom/android/settings/lockappshortcut/AppShortcutList;->mAppListAdapter:Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;
    invoke-static {v0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->access$500(Lcom/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->notifyDataSetChanged()V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    # invokes: Lcom/android/settings/lockappshortcut/AppShortcutList;->stopLoading()V
    invoke-static {v0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->access$400(Lcom/android/settings/lockappshortcut/AppShortcutList;)V

    .line 429
    return-void
.end method

.method protected clear()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    # invokes: Lcom/android/settings/lockappshortcut/AppShortcutList;->stopLoading()V
    invoke-static {v0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->access$400(Lcom/android/settings/lockappshortcut/AppShortcutList;)V

    .line 417
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    # getter for: Lcom/android/settings/lockappshortcut/AppShortcutList;->mAppListAdapter:Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;
    invoke-static {v0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->access$500(Lcom/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    # getter for: Lcom/android/settings/lockappshortcut/AppShortcutList;->mAppListAdapter:Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;
    invoke-static {v0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->access$500(Lcom/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->clear()V

    .line 419
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    # getter for: Lcom/android/settings/lockappshortcut/AppShortcutList;->mAppListAdapter:Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;
    invoke-static {v0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->access$500(Lcom/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->notifyDataSetChanged()V

    .line 421
    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 380
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    # invokes: Lcom/android/settings/lockappshortcut/AppShortcutList;->getAppListAdapter()Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->access$800(Lcom/android/settings/lockappshortcut/AppShortcutList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 380
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 386
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    # invokes: Lcom/android/settings/lockappshortcut/AppShortcutList;->stopLoading()V
    invoke-static {v0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->access$400(Lcom/android/settings/lockappshortcut/AppShortcutList;)V

    .line 387
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    invoke-virtual {v0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 388
    iget-object v6, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    new-instance v0, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    iget-object v1, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    iget-object v2, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    invoke-virtual {v2}, Lcom/android/settings/lockappshortcut/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040128

    const/4 v4, 0x0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;-><init>(Lcom/android/settings/lockappshortcut/AppShortcutList;Landroid/content/Context;IILjava/util/List;)V

    # setter for: Lcom/android/settings/lockappshortcut/AppShortcutList;->mAppListAdapter:Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;
    invoke-static {v6, v0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->access$502(Lcom/android/settings/lockappshortcut/AppShortcutList;Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;)Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    .line 389
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    # getter for: Lcom/android/settings/lockappshortcut/AppShortcutList;->grid_view:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->access$600(Lcom/android/settings/lockappshortcut/AppShortcutList;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    # getter for: Lcom/android/settings/lockappshortcut/AppShortcutList;->mAppListAdapter:Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;
    invoke-static {v1}, Lcom/android/settings/lockappshortcut/AppShortcutList;->access$500(Lcom/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 390
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    # getter for: Lcom/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->access$200(Lcom/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    # getter for: Lcom/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->access$200(Lcom/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->clear()V

    .line 394
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 399
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 400
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    # invokes: Lcom/android/settings/lockappshortcut/AppShortcutList;->startLoading()V
    invoke-static {v0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->access$700(Lcom/android/settings/lockappshortcut/AppShortcutList;)V

    .line 401
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 380
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Void;

    .prologue
    .line 407
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 408
    return-void
.end method
