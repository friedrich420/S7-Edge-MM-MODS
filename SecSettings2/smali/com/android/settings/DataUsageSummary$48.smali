.class Lcom/android/settings/DataUsageSummary$48;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 6774
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$48;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 6778
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$48;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mBinding:Z
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$3500(Lcom/android/settings/DataUsageSummary;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6803
    :goto_0
    return-void

    .line 6781
    :cond_0
    const/4 v0, 0x0

    .line 6782
    .local v0, "state":I
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDataCompressionEnableListener mIsDataCompressionEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$48;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mIsDataCompressionEnabled:Z
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$1000(Lcom/android/settings/DataUsageSummary;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6783
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$48;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mIsDataCompressionEnabled:Z
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$1000(Lcom/android/settings/DataUsageSummary;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6784
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$48;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/DataUsageSummary;->mIsDataCompressionEnabled:Z
    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->access$1002(Lcom/android/settings/DataUsageSummary;Z)Z

    .line 6785
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$48;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$7100(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/datasaving/DataSavingHelper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6786
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$48;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$7100(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/datasaving/DataSavingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/datasaving/DataSavingHelper;->stopSaving()V

    .line 6788
    :cond_1
    const/4 v0, 0x2

    .line 6795
    :goto_1
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$48;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$3400(Lcom/android/settings/DataUsageSummary;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_3

    .line 6796
    const-string v1, "DataUsage"

    const-string v2, "set date compression state failed"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6791
    :cond_2
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$48;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings/DataUsageSummary;->showOnlineHelpDialog()V

    goto :goto_1

    .line 6800
    :cond_3
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$48;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$3400(Lcom/android/settings/DataUsageSummary;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "opera_max_china_state"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6802
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$48;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->updateSavingState()V
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$8800(Lcom/android/settings/DataUsageSummary;)V

    goto :goto_0
.end method
