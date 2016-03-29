.class Lcom/android/settings/networkconnect/DataWarningLimitActivity$5;
.super Ljava/lang/Object;
.source "DataWarningLimitActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/networkconnect/DataWarningLimitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/net/NetworkStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    new-instance v0, Lcom/android/settings/net/SummaryForAllUidLoader;

    iget-object v1, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$000(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$1000(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings/net/SummaryForAllUidLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V
    .locals 12
    .param p2, "data"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;",
            "Landroid/net/NetworkStats;",
            ")V"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/net/NetworkStats;>;"
    sget-boolean v5, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mIsNeedReLoad:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mIsDataLoadFinished:Z
    invoke-static {v5}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$700(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 339
    const/4 v1, 0x0

    .line 340
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const-wide/16 v6, 0x0

    .line 341
    .local v6, "wifiTotal":J
    sget-object v5, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidWifiMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 342
    sget-object v5, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidWifiLongTypeMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 343
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/net/NetworkStats;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 344
    invoke-virtual {p2, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 345
    sget-object v5, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidWifiMap:Ljava/util/Map;

    iget v8, v1, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 346
    iget-wide v8, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v8, v6

    iget-wide v10, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v6, v8, v10

    .line 347
    sget-object v5, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidWifiMap:Ljava/util/Map;

    iget v8, v1, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    # invokes: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->formatFileSizeMB(J)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$600(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v5, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidWifiLongTypeMap:Ljava/util/Map;

    iget v8, v1, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-wide/16 v6, 0x0

    .line 343
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 351
    :cond_0
    iget-wide v8, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v10, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v6, v8, v10

    .line 352
    sget-object v5, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidWifiMap:Ljava/util/Map;

    iget v8, v1, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    # invokes: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->formatFileSizeMB(J)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$600(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v5, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidWifiLongTypeMap:Ljava/util/Map;

    iget v8, v1, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 356
    :cond_1
    const/4 v2, 0x0

    :goto_2
    sget-object v5, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 357
    sget-object v5, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    invoke-virtual {v5}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v3

    .line 358
    .local v3, "uid":I
    sget-object v5, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidWifiLongTypeMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 359
    sget-object v5, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    sget-object v8, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidWifiLongTypeMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->setWlanTotal(J)V

    .line 356
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 362
    .end local v3    # "uid":I
    :cond_3
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mIsNeedReLoad:Z

    .line 364
    .end local v1    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v2    # "i":I
    .end local v6    # "wifiTotal":J
    :cond_4
    iget-object v5, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    new-instance v8, Lcom/android/settings/networkconnect/DataWarningAdapter;

    iget-object v9, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$000(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Landroid/content/Context;

    move-result-object v9

    sget-object v10, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-direct {v8, v9, v10}, Lcom/android/settings/networkconnect/DataWarningAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    # setter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mDataWarningAdapter:Lcom/android/settings/networkconnect/DataWarningAdapter;
    invoke-static {v5, v8}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$502(Lcom/android/settings/networkconnect/DataWarningLimitActivity;Lcom/android/settings/networkconnect/DataWarningAdapter;)Lcom/android/settings/networkconnect/DataWarningAdapter;

    .line 365
    iget-object v5, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mEnableWarningStatus:I
    invoke-static {v5}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$1100(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_7

    const/4 v0, 0x1

    .line 366
    .local v0, "checked":Z
    :goto_3
    iget-object v5, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mDataWarningAdapter:Lcom/android/settings/networkconnect/DataWarningAdapter;
    invoke-static {v5}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$500(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Lcom/android/settings/networkconnect/DataWarningAdapter;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/settings/networkconnect/DataWarningAdapter;->setListViewEnabled(Z)V

    .line 367
    iget-object v5, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$1200(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Landroid/widget/ListView;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mDataWarningAdapter:Lcom/android/settings/networkconnect/DataWarningAdapter;
    invoke-static {v8}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$500(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Lcom/android/settings/networkconnect/DataWarningAdapter;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 368
    iget-object v5, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mDataWarningAdapter:Lcom/android/settings/networkconnect/DataWarningAdapter;
    invoke-static {v5}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$500(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Lcom/android/settings/networkconnect/DataWarningAdapter;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 369
    iget-object v5, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mDataWarningAdapter:Lcom/android/settings/networkconnect/DataWarningAdapter;
    invoke-static {v5}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$500(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Lcom/android/settings/networkconnect/DataWarningAdapter;

    move-result-object v5

    sget-object v8, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidDataMap:Ljava/util/Map;

    invoke-virtual {v5, v8}, Lcom/android/settings/networkconnect/DataWarningAdapter;->bindDataStats(Ljava/util/Map;)V

    .line 370
    iget-object v5, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mDataWarningAdapter:Lcom/android/settings/networkconnect/DataWarningAdapter;
    invoke-static {v5}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$500(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Lcom/android/settings/networkconnect/DataWarningAdapter;

    move-result-object v5

    sget-object v8, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidWifiMap:Ljava/util/Map;

    invoke-virtual {v5, v8}, Lcom/android/settings/networkconnect/DataWarningAdapter;->bindWifiStats(Ljava/util/Map;)V

    .line 372
    :cond_5
    iget-object v5, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$1200(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    if-nez v5, :cond_6

    .line 373
    iget-object v5, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mMobileText:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$1300(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Landroid/widget/TextView;

    move-result-object v5

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    :cond_6
    new-instance v4, Lcom/android/settings/networkconnect/NetworkManagerUtils;

    iget-object v5, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$000(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    .line 376
    .local v4, "utils":Lcom/android/settings/networkconnect/NetworkManagerUtils;
    iget-object v5, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    const/4 v8, 0x0

    # setter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mIsDataLoadFinished:Z
    invoke-static {v5, v8}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$702(Lcom/android/settings/networkconnect/DataWarningLimitActivity;Z)Z

    .line 377
    return-void

    .line 365
    .end local v0    # "checked":Z
    .end local v4    # "utils":Lcom/android/settings/networkconnect/NetworkManagerUtils;
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 330
    check-cast p2, Landroid/net/NetworkStats;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/networkconnect/DataWarningLimitActivity$5;->onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, "arg0":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/net/NetworkStats;>;"
    sget-object v0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidWifiMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 334
    return-void
.end method
