.class Lcom/android/settings/networkconnect/NetworkConnectActivity$5;
.super Ljava/lang/Object;
.source "NetworkConnectActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/networkconnect/NetworkConnectActivity;
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
.field final synthetic this$0:Lcom/android/settings/networkconnect/NetworkConnectActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/networkconnect/NetworkConnectActivity;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity$5;->this$0:Lcom/android/settings/networkconnect/NetworkConnectActivity;

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

    iget-object v1, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity$5;->this$0:Lcom/android/settings/networkconnect/NetworkConnectActivity;

    # getter for: Lcom/android/settings/networkconnect/NetworkConnectActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->access$300(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity$5;->this$0:Lcom/android/settings/networkconnect/NetworkConnectActivity;

    # getter for: Lcom/android/settings/networkconnect/NetworkConnectActivity;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->access$800(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Landroid/net/INetworkStatsSession;

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
    .line 349
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/net/NetworkStats;>;"
    sget-boolean v7, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mIsNeedReLoad:Z

    if-eqz v7, :cond_3

    .line 350
    const/4 v2, 0x0

    .line 351
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    const-wide/16 v0, 0x0

    .line 352
    .local v0, "dataTotal":J
    sget-object v7, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidDataMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 353
    sget-object v7, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidDataLongTypeMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 354
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/net/NetworkStats;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 355
    invoke-virtual {p2, v3, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    .line 356
    sget-object v7, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidDataMap:Ljava/util/Map;

    iget v8, v2, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 357
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v8, v0

    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v0, v8, v10

    .line 358
    sget-object v7, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidDataMap:Ljava/util/Map;

    iget v8, v2, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    # invokes: Lcom/android/settings/networkconnect/NetworkConnectActivity;->formatFileSizeMB(J)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->access$400(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v7, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidDataLongTypeMap:Ljava/util/Map;

    iget v8, v2, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-wide/16 v0, 0x0

    .line 354
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 362
    :cond_0
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v0, v8, v10

    .line 363
    sget-object v7, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidDataMap:Ljava/util/Map;

    iget v8, v2, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    # invokes: Lcom/android/settings/networkconnect/NetworkConnectActivity;->formatFileSizeMB(J)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->access$400(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v7, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidDataLongTypeMap:Ljava/util/Map;

    iget v8, v2, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 367
    :cond_1
    const/4 v3, 0x0

    :goto_2
    sget-object v7, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 368
    sget-object v7, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    invoke-virtual {v7}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v6

    .line 369
    .local v6, "uid":I
    sget-object v7, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidDataLongTypeMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 370
    sget-object v7, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    sget-object v8, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidDataLongTypeMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->setDataTotal(J)V

    .line 367
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 374
    .end local v0    # "dataTotal":J
    .end local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v3    # "i":I
    .end local v6    # "uid":I
    :cond_3
    iget-object v7, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity$5;->this$0:Lcom/android/settings/networkconnect/NetworkConnectActivity;

    const/4 v8, 0x1

    # setter for: Lcom/android/settings/networkconnect/NetworkConnectActivity;->mIsDataLoadFinished:Z
    invoke-static {v7, v8}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->access$502(Lcom/android/settings/networkconnect/NetworkConnectActivity;Z)Z

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 376
    .local v4, "now":J
    iget-object v7, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity$5;->this$0:Lcom/android/settings/networkconnect/NetworkConnectActivity;

    # getter for: Lcom/android/settings/networkconnect/NetworkConnectActivity;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->access$300(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v7

    const/16 v8, 0xc

    iget-object v9, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity$5;->this$0:Lcom/android/settings/networkconnect/NetworkConnectActivity;

    iget-object v9, v9, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mWifiTemplate:Landroid/net/NetworkTemplate;

    iget-object v10, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity$5;->this$0:Lcom/android/settings/networkconnect/NetworkConnectActivity;

    # invokes: Lcom/android/settings/networkconnect/NetworkConnectActivity;->getStartTime()J
    invoke-static {v10}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->access$600(Lcom/android/settings/networkconnect/NetworkConnectActivity;)J

    move-result-wide v10

    invoke-static {v9, v10, v11, v4, v5}, Lcom/android/settings/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity$5;->this$0:Lcom/android/settings/networkconnect/NetworkConnectActivity;

    # getter for: Lcom/android/settings/networkconnect/NetworkConnectActivity;->mWifiCallback:Landroid/app/LoaderManager$LoaderCallbacks;
    invoke-static {v10}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->access$700(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 377
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 340
    check-cast p2, Landroid/net/NetworkStats;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/networkconnect/NetworkConnectActivity$5;->onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V

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
    .line 344
    .local p1, "arg0":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/net/NetworkStats;>;"
    sget-object v0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 345
    return-void
.end method
