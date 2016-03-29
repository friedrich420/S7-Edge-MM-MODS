.class Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;
.super Landroid/os/AsyncTask;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateSearchResultsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SearchResultsSummary;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/SearchResultsSummary;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/SearchResultsSummary;Lcom/android/settings/dashboard/SearchResultsSummary$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/dashboard/SearchResultsSummary;
    .param p2, "x1"    # Lcom/android/settings/dashboard/SearchResultsSummary$1;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;-><init>(Lcom/android/settings/dashboard/SearchResultsSummary;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 147
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/database/Cursor;

    .line 148
    .local v0, "cursors":[Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/search/Index;->searchTile(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    aput-object v1, v0, v3

    .line 149
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v2

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/android/settings/search/Index;->searchSubMenu(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    aput-object v2, v0, v1

    .line 150
    new-instance v1, Landroid/database/MergeCursor;

    invoke-direct {v1, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 137
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->doInBackground([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 155
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    # invokes: Lcom/android/settings/dashboard/SearchResultsSummary;->stopLoading()V
    invoke-static {v1}, Lcom/android/settings/dashboard/SearchResultsSummary;->access$100(Lcom/android/settings/dashboard/SearchResultsSummary;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 159
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    # invokes: Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V
    invoke-static {v1, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->access$200(Lcom/android/settings/dashboard/SearchResultsSummary;Landroid/database/Cursor;)V

    .line 160
    iget-object v4, p0, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    :goto_0
    # invokes: Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V
    invoke-static {v4, v1}, Lcom/android/settings/dashboard/SearchResultsSummary;->access$300(Lcom/android/settings/dashboard/SearchResultsSummary;Z)V

    .line 161
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    move v0, v2

    .line 162
    .local v0, "visible":Z
    :goto_1
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    # invokes: Lcom/android/settings/dashboard/SearchResultsSummary;->setEmptyVisibility(Z)V
    invoke-static {v1, v0}, Lcom/android/settings/dashboard/SearchResultsSummary;->access$400(Lcom/android/settings/dashboard/SearchResultsSummary;Z)V

    .line 166
    .end local v0    # "visible":Z
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 160
    goto :goto_0

    :cond_2
    move v0, v3

    .line 161
    goto :goto_1

    .line 163
    :cond_3
    if-eqz p1, :cond_0

    .line 164
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 137
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 142
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    # invokes: Lcom/android/settings/dashboard/SearchResultsSummary;->startLoading()V
    invoke-static {v0}, Lcom/android/settings/dashboard/SearchResultsSummary;->access$000(Lcom/android/settings/dashboard/SearchResultsSummary;)V

    .line 143
    return-void
.end method
