.class Lcom/android/settings/DataUsageSummary$35;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 3683
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$35;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    const/4 v5, 0x1

    .line 3686
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3687
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary$AppItem;

    .line 3690
    .local v0, "app":Lcom/android/settings/DataUsageSummary$AppItem;
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$35;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$6400(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/UidDetailProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 3695
    :cond_0
    :goto_0
    return-void

    .line 3692
    :cond_1
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$35;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$6400(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/UidDetailProvider;

    move-result-object v3

    iget v4, v0, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settings/net/UidDetail;

    move-result-object v2

    .line 3693
    .local v2, "detail":Lcom/android/settings/net/UidDetail;
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$35;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v4, v2, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v3, v0, v4}, Lcom/android/settings/DataUsageSummary$AppDetailsFragment;->show(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V

    .line 3694
    # setter for: Lcom/android/settings/DataUsageSummary;->clickAppItem:Z
    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->access$6502(Z)Z

    goto :goto_0
.end method
