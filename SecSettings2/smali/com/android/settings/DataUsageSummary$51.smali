.class Lcom/android/settings/DataUsageSummary$51;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;


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
    .line 6936
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$51;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Lcom/opera/max/sdk/saving/ISavingService;)V
    .locals 4
    .param p1, "service"    # Lcom/opera/max/sdk/saving/ISavingService;

    .prologue
    const/4 v2, 0x1

    .line 6939
    if-eqz p1, :cond_0

    .line 6942
    :try_start_0
    invoke-interface {p1}, Lcom/opera/max/sdk/saving/ISavingService;->getSavingState()I

    move-result v1

    .line 6943
    .local v1, "state":I
    if-ne v1, v2, :cond_1

    .line 6944
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$51;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v3, 0x1

    # setter for: Lcom/android/settings/DataUsageSummary;->mIsDataCompressionEnabled:Z
    invoke-static {v2, v3}, Lcom/android/settings/DataUsageSummary;->access$1002(Lcom/android/settings/DataUsageSummary;Z)Z

    .line 6950
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$51;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->updateSavingState()V
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$8800(Lcom/android/settings/DataUsageSummary;)V

    .line 6951
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$51;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$7100(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/datasaving/DataSavingHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$51;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mSavingServiceStateListener:Lcom/opera/max/sdk/saving/IStateListener;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$9300(Lcom/android/settings/DataUsageSummary;)Lcom/opera/max/sdk/saving/IStateListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/datasaving/DataSavingHelper;->registerSavingStateListener(Lcom/opera/max/sdk/saving/IStateListener;)V

    .line 6956
    .end local v1    # "state":I
    :cond_0
    :goto_1
    return-void

    .line 6946
    .restart local v1    # "state":I
    :cond_1
    const-string v2, "DataUsage"

    const-string v3, "mSSCListener state != DataSavingHelper.SAVING_ENABLED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6947
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$51;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v3, 0x0

    # setter for: Lcom/android/settings/DataUsageSummary;->mIsDataCompressionEnabled:Z
    invoke-static {v2, v3}, Lcom/android/settings/DataUsageSummary;->access$1002(Lcom/android/settings/DataUsageSummary;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6952
    .end local v1    # "state":I
    :catch_0
    move-exception v0

    .line 6953
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onDisconnected()V
    .locals 0

    .prologue
    .line 6961
    return-void
.end method
