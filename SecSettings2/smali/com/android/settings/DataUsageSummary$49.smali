.class Lcom/android/settings/DataUsageSummary$49;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 6867
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$49;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6870
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$49;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->updateDataCompressionSwitchView()V
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$8900(Lcom/android/settings/DataUsageSummary;)V

    .line 6871
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$49;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->updateSavedTvState()V
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$9000(Lcom/android/settings/DataUsageSummary;)V

    .line 6872
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$49;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->updateSavedDataCircleView()V
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$1100(Lcom/android/settings/DataUsageSummary;)V

    .line 6873
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$49;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-boolean v0, v0, Lcom/android/settings/DataUsageSummary;->mIsChartFragment:Z

    if-eqz v0, :cond_0

    .line 6874
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$49;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$49;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mIsDataCompressionEnabled:Z
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$1000(Lcom/android/settings/DataUsageSummary;)Z

    move-result v1

    # invokes: Lcom/android/settings/DataUsageSummary;->updateChartSavedTV(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$9100(Lcom/android/settings/DataUsageSummary;Z)V

    .line 6875
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$49;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$49;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$1700(Lcom/android/settings/DataUsageSummary;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$49;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mIsDataCompressionEnabled:Z
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$1000(Lcom/android/settings/DataUsageSummary;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/settings/DataUsageSummary;->updateAppSavedTVContainer(Z)V
    invoke-static {v1, v0}, Lcom/android/settings/DataUsageSummary;->access$9200(Lcom/android/settings/DataUsageSummary;Z)V

    .line 6877
    :cond_0
    return-void

    .line 6875
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
