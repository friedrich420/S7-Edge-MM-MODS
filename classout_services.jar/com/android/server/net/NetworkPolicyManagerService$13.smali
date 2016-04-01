.class Lcom/android/server/net/NetworkPolicyManagerService$13;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    .prologue
    .line 928
    iput-object p1, p0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 935
    const-string/jumbo v4, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/net/NetworkInfo;

    .line 936
    .local v17, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_12

    .line 962
    :goto_11
    return-void

    .line 938
    :cond_12
    const-string/jumbo v4, "wifiInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/WifiInfo;

    .line 939
    .local v16, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getMeteredHint()Z

    move-result v14

    .line 941
    .local v14, "meteredHint":Z
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 942
    .local v3, "template":Landroid/net/NetworkTemplate;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 943
    :try_start_32
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    .line 944
    .local v2, "policy":Landroid/net/NetworkPolicy;
    if-nez v2, :cond_5f

    if-eqz v14, :cond_5f

    .line 947
    new-instance v2, Landroid/net/NetworkPolicy;

    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    const/4 v4, -0x1

    const-string v5, "UTC"

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    const/4 v15, 0x1

    invoke-direct/range {v2 .. v15}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .line 950
    .restart local v2    # "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V

    .line 961
    :cond_5a
    :goto_5a
    monitor-exit v18

    goto :goto_11

    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    :catchall_5c
    move-exception v4

    monitor-exit v18
    :try_end_5e
    .catchall {:try_start_32 .. :try_end_5e} :catchall_5c

    throw v4

    .line 952
    .restart local v2    # "policy":Landroid/net/NetworkPolicy;
    :cond_5f
    if-eqz v2, :cond_5a

    :try_start_61
    iget-boolean v4, v2, Landroid/net/NetworkPolicy;->inferred:Z

    if-eqz v4, :cond_5a

    .line 955
    iput-boolean v14, v2, Landroid/net/NetworkPolicy;->metered:Z

    .line 959
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V
    :try_end_6e
    .catchall {:try_start_61 .. :try_end_6e} :catchall_5c

    goto :goto_5a
.end method
