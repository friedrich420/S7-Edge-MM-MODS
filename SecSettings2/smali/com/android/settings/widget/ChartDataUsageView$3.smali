.class Lcom/android/settings/widget/ChartDataUsageView$3;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/ChartDataUsageView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/ChartDataUsageView;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 180
    const/16 v0, 0x14

    if-ne p2, v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    # getter for: Lcom/android/settings/widget/ChartDataUsageView;->mListView:Lcom/android/settings/widget/DataUsageListView;
    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$300(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/DataUsageListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    # getter for: Lcom/android/settings/widget/ChartDataUsageView;->mListView:Lcom/android/settings/widget/DataUsageListView;
    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$300(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/DataUsageListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/DataUsageListView;->setSelectable(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    # getter for: Lcom/android/settings/widget/ChartDataUsageView;->mListView:Lcom/android/settings/widget/DataUsageListView;
    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$300(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/DataUsageListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/widget/DataUsageListView;->requestFocus()Z

    .line 184
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    # getter for: Lcom/android/settings/widget/ChartDataUsageView;->mListView:Lcom/android/settings/widget/DataUsageListView;
    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$300(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/DataUsageListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    # getter for: Lcom/android/settings/widget/ChartDataUsageView;->mListView:Lcom/android/settings/widget/DataUsageListView;
    invoke-static {v1}, Lcom/android/settings/widget/ChartDataUsageView;->access$300(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/DataUsageListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/DataUsageListView;->getHeaderViewsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/DataUsageListView;->setSelection(I)V

    .line 187
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
