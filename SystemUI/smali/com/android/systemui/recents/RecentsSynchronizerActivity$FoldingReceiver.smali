.class Lcom/android/systemui/recents/RecentsSynchronizerActivity$FoldingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RecentsSynchronizerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsSynchronizerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FoldingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsSynchronizerActivity;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 63
    const-string v2, "com.samsung.android.dualscreen.extra.FOLDING_STATE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 64
    .local v0, "foldingState":I
    sget-boolean v2, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "Recents_SynchronizerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FoldingReceiver d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity$FoldingReceiver;->this$0:Lcom/android/systemui/recents/RecentsSynchronizerActivity;

    invoke-virtual {v4}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 66
    const/4 v2, 0x1

    # setter for: Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsFolding:Z
    invoke-static {v2}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->access$002(Z)Z

    .line 70
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity$FoldingReceiver;->this$0:Lcom/android/systemui/recents/RecentsSynchronizerActivity;

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->requestUpdateRecentsLayout()V

    .line 71
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity$FoldingReceiver;->this$0:Lcom/android/systemui/recents/RecentsSynchronizerActivity;

    const-string v3, "folding"

    # getter for: Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsFolding:Z
    invoke-static {}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->updateSwitchAppsVisibility(Ljava/lang/String;I)I

    .line 72
    return-void

    .line 68
    :cond_2
    # setter for: Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsFolding:Z
    invoke-static {v1}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->access$002(Z)Z

    goto :goto_0
.end method
