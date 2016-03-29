.class Lcom/android/settings/dashboard/DashboardSummarySplit$2;
.super Landroid/database/ContentObserver;
.source "DashboardSummarySplit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardSummarySplit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardSummarySplit;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardSummarySplit;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$2;->this$0:Lcom/android/settings/dashboard/DashboardSummarySplit;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x1

    .line 159
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$2;->this$0:Lcom/android/settings/dashboard/DashboardSummarySplit;

    # getter for: Lcom/android/settings/dashboard/DashboardSummarySplit;->mPrevTileView:Lcom/android/settings/dashboard/DashboardTileView;
    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->access$100(Lcom/android/settings/dashboard/DashboardSummarySplit;)Lcom/android/settings/dashboard/DashboardTileView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$2;->this$0:Lcom/android/settings/dashboard/DashboardSummarySplit;

    # getter for: Lcom/android/settings/dashboard/DashboardSummarySplit;->mPrevTileView:Lcom/android/settings/dashboard/DashboardTileView;
    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->access$100(Lcom/android/settings/dashboard/DashboardSummarySplit;)Lcom/android/settings/dashboard/DashboardTileView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardTileView;->getTile()Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/settings/dashboard/DashboardTile;->id:J

    const-wide/32 v2, 0x7f0d0655

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$2;->this$0:Lcom/android/settings/dashboard/DashboardSummarySplit;

    # getter for: Lcom/android/settings/dashboard/DashboardSummarySplit;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->access$200(Lcom/android/settings/dashboard/DashboardSummarySplit;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$2;->this$0:Lcom/android/settings/dashboard/DashboardSummarySplit;

    # getter for: Lcom/android/settings/dashboard/DashboardSummarySplit;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->access$200(Lcom/android/settings/dashboard/DashboardSummarySplit;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$2;->this$0:Lcom/android/settings/dashboard/DashboardSummarySplit;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$2;->this$0:Lcom/android/settings/dashboard/DashboardSummarySplit;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v1

    # invokes: Lcom/android/settings/dashboard/DashboardSummarySplit;->rebuildUI(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/settings/dashboard/DashboardSummarySplit;->access$000(Lcom/android/settings/dashboard/DashboardSummarySplit;Landroid/content/Context;)V

    goto :goto_0
.end method
