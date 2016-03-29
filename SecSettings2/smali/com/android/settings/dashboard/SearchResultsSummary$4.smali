.class Lcom/android/settings/dashboard/SearchResultsSummary$4;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/SearchResultsSummary;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SearchResultsSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/SearchResultsSummary;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$4;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 416
    add-int/lit8 p3, p3, -0x1

    .line 419
    if-gez p3, :cond_0

    .line 428
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$4;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    # getter for: Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;
    invoke-static {v1}, Lcom/android/settings/dashboard/SearchResultsSummary;->access$1100(Lcom/android/settings/dashboard/SearchResultsSummary;)Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    move-result-object v1

    # getter for: Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->access$1200(Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;)Landroid/database/Cursor;

    move-result-object v0

    .line 423
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 425
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$4;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    const/4 v2, 0x1

    # setter for: Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z
    invoke-static {v1, v2}, Lcom/android/settings/dashboard/SearchResultsSummary;->access$1302(Lcom/android/settings/dashboard/SearchResultsSummary;Z)Z

    .line 426
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$4;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/dashboard/SearchResultsSummary;->access$1402(Lcom/android/settings/dashboard/SearchResultsSummary;Ljava/lang/String;)Ljava/lang/String;

    .line 427
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$4;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    # getter for: Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/settings/dashboard/SearchResultsSummary;->access$800(Lcom/android/settings/dashboard/SearchResultsSummary;)Landroid/widget/SearchView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary$4;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    # getter for: Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/dashboard/SearchResultsSummary;->access$1400(Lcom/android/settings/dashboard/SearchResultsSummary;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method
