.class Lcom/android/settings/widget/ChartDataUsageView$4;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settings/widget/ChartSweepView$OnSweepListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ChartDataUsageView;
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
    .line 436
    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView$4;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/android/settings/widget/ChartSweepView;Z)V
    .locals 1
    .param p1, "sweep"    # Lcom/android/settings/widget/ChartSweepView;
    .param p2, "sweepDone"    # Z

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$4;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    # invokes: Lcom/android/settings/widget/ChartDataUsageView;->updatePrimaryRange()V
    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$400(Lcom/android/settings/widget/ChartDataUsageView;)V

    .line 442
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$4;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    # getter for: Lcom/android/settings/widget/ChartDataUsageView;->mListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$500(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$4;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    # getter for: Lcom/android/settings/widget/ChartDataUsageView;->mListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$500(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;->onInspectRangeChanged()V

    .line 445
    :cond_0
    return-void
.end method

.method public requestEdit(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0
    .param p1, "sweep"    # Lcom/android/settings/widget/ChartSweepView;

    .prologue
    .line 450
    return-void
.end method
