.class Lcom/android/server/ConnectivityService$2;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2

    .prologue
    .line 2102
    iput-object p1, p0, this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/net/INetworkPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeteredIfacesChanged([Ljava/lang/String;)V
    .registers 8
    .param p1, "meteredIfaces"    # [Ljava/lang/String;

    .prologue
    .line 2128
    iget-object v4, p0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2129
    :try_start_7
    iget-object v4, p0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 2130
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_13
    if-ge v1, v3, :cond_23

    aget-object v2, v0, v1

    .line 2131
    .local v2, "iface":Ljava/lang/String;
    iget-object v4, p0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2130
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 2133
    .end local v2    # "iface":Ljava/lang/String;
    :cond_23
    monitor-exit v5

    .line 2134
    return-void

    .line 2133
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    :catchall_25
    move-exception v4

    monitor-exit v5
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw v4
.end method

.method public onRestrictBackgroundChanged(Z)V
    .registers 2
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 2142
    return-void
.end method

.method public onUidRulesChanged(II)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "uidRules"    # I

    .prologue
    .line 2110
    iget-object v1, p0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2112
    :try_start_7
    iget-object v1, p0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2113
    .local v0, "oldRules":I
    if-ne v0, p2, :cond_16

    monitor-exit v2

    .line 2119
    :goto_15
    return-void

    .line 2115
    :cond_16
    iget-object v1, p0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2116
    monitor-exit v2

    goto :goto_15

    .end local v0    # "oldRules":I
    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v1
.end method
