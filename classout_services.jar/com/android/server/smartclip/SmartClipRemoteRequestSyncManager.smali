.class Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNextRequestId:I

.field private mRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1776
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 1775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1785
    const/4 v0, 0x0

    iput v0, p0, mNextRequestId:I

    .line 1786
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mRequestMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public allocateNewRequestId(Z)I
    .registers 7
    .param p1, "requiresResult"    # Z

    .prologue
    .line 1839
    iget v1, p0, mNextRequestId:I

    .line 1840
    .local v1, "reqId":I
    iget v2, p0, mNextRequestId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, mNextRequestId:I

    .line 1842
    if-eqz p1, :cond_1e

    .line 1843
    new-instance v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    invoke-direct {v0}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;-><init>()V

    .line 1844
    .local v0, "item":Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;
    iput v1, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mRequestId:I

    .line 1845
    iget-object v3, p0, mRequestMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 1846
    :try_start_14
    iget-object v2, p0, mRequestMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1847
    monitor-exit v3

    .line 1849
    .end local v0    # "item":Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;
    :cond_1e
    return v1

    .line 1847
    .restart local v0    # "item":Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;
    :catchall_1f
    move-exception v2

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public getRequestItem(I)Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;
    .registers 7
    .param p1, "requestId"    # I

    .prologue
    .line 1831
    const/4 v1, 0x0

    .line 1832
    .local v1, "info":Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;
    iget-object v3, p0, mRequestMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 1833
    :try_start_4
    iget-object v2, p0, mRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    move-object v1, v0

    .line 1834
    monitor-exit v3

    .line 1835
    return-object v1

    .line 1834
    :catchall_14
    move-exception v2

    monitor-exit v3
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw v2
.end method

.method public notifyResult(Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;)V
    .registers 6
    .param p1, "resultData"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    .prologue
    .line 1817
    iget v1, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mRequestId:I

    invoke-virtual {p0, v1}, getRequestItem(I)Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    move-result-object v0

    .line 1818
    .local v0, "item":Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;
    if-nez v0, :cond_24

    .line 1819
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyResult : Could not find request information. id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mRequestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    :goto_23
    return-void

    .line 1822
    :cond_24
    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    monitor-enter v2

    .line 1823
    :try_start_27
    iput-object p1, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResultData:Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    .line 1824
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResponseArrived:Z

    .line 1825
    iget-object v1, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1826
    monitor-exit v2

    goto :goto_23

    :catchall_33
    move-exception v1

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public waitResult(II)Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .registers 13
    .param p1, "requestId"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 1789
    invoke-virtual {p0, p1}, getRequestItem(I)Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    move-result-object v3

    .line 1790
    .local v3, "item":Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;
    if-nez v3, :cond_21

    .line 1791
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "waitResult : Could not find request info!! id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    const/4 v6, 0x0

    .line 1813
    :goto_20
    return-object v6

    .line 1795
    :cond_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1797
    .local v4, "waitStartTime":J
    iget-object v7, v3, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    monitor-enter v7

    .line 1798
    :try_start_28
    iget-boolean v6, v3, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResponseArrived:Z
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_92

    if-nez v6, :cond_32

    .line 1801
    :try_start_2c
    iget-object v6, v3, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    int-to-long v8, p2

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_32} :catch_77
    .catchall {:try_start_2c .. :try_end_32} :catchall_92

    .line 1806
    :cond_32
    :goto_32
    :try_start_32
    monitor-exit v7
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_92

    .line 1808
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "waitResult : Unlocked. Id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Elapsed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    iget-object v7, p0, mRequestMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 1811
    :try_start_65
    iget-object v6, p0, mRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    move-object v3, v0

    .line 1812
    monitor-exit v7
    :try_end_74
    .catchall {:try_start_65 .. :try_end_74} :catchall_95

    .line 1813
    iget-object v6, v3, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResultData:Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    goto :goto_20

    .line 1802
    :catch_77
    move-exception v2

    .line 1803
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_78
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "waitResult : e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 1806
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_92
    move-exception v6

    monitor-exit v7
    :try_end_94
    .catchall {:try_start_78 .. :try_end_94} :catchall_92

    throw v6

    .line 1812
    :catchall_95
    move-exception v6

    :try_start_96
    monitor-exit v7
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v6
.end method
