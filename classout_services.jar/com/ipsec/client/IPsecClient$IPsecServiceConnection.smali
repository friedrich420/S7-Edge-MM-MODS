.class Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;
.super Ljava/lang/Object;
.source "IPsecClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipsec/client/IPsecClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IPsecServiceConnection"
.end annotation


# static fields
.field private static final COMPONENT:Ljava/lang/String; = "IPsecRemoteConnection"

.field private static final TAG:Ljava/lang/String; = "IPSC"


# instance fields
.field final synthetic this$0:Lcom/ipsec/client/IPsecClient;


# direct methods
.method private constructor <init>(Lcom/ipsec/client/IPsecClient;)V
    .registers 2

    .prologue
    .line 3016
    iput-object p1, p0, this$0:Lcom/ipsec/client/IPsecClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ipsec/client/IPsecClient;Lcom/ipsec/client/IPsecClient$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/ipsec/client/IPsecClient;
    .param p2, "x1"    # Lcom/ipsec/client/IPsecClient$1;

    .prologue
    .line 3016
    invoke-direct {p0, p1}, <init>(Lcom/ipsec/client/IPsecClient;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 16
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 3023
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onServiceConnected(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3025
    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    .line 3026
    .local v3, "eventError":Lcom/ipsec/client/IPsecError;
    const/4 v1, 0x0

    .line 3027
    .local v1, "eventData":Lcom/ipsec/client/IPsecEventData;
    const/4 v4, 0x0

    .line 3029
    .local v4, "listener":Lcom/ipsec/client/IIPsecListener;
    iget-object v7, p0, this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v7}, Lcom/ipsec/client/IPsecClient;->access$300(Lcom/ipsec/client/IPsecClient;)Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3032
    :try_start_36
    iget-object v7, p0, this$0:Lcom/ipsec/client/IPsecClient;

    invoke-static {p2}, Lcom/ipsec/client/IPsecServiceInterface;->getInterface(Landroid/os/IBinder;)Lcom/ipsec/client/IIPsecService;

    move-result-object v8

    # setter for: Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;
    invoke-static {v7, v8}, Lcom/ipsec/client/IPsecClient;->access$402(Lcom/ipsec/client/IPsecClient;Lcom/ipsec/client/IIPsecService;)Lcom/ipsec/client/IIPsecService;

    .line 3035
    const/4 v6, 0x0

    .line 3036
    .local v6, "resultBundle":Landroid/os/Bundle;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3038
    .local v5, "parameterBundle":Landroid/os/Bundle;
    const-string/jumbo v7, "version"

    const-string v8, "5"

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_36 .. :try_end_4d} :catchall_cc

    .line 3044
    :try_start_4d
    iget-object v7, p0, this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;
    invoke-static {v7}, Lcom/ipsec/client/IPsecClient;->access$400(Lcom/ipsec/client/IPsecClient;)Lcom/ipsec/client/IIPsecService;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/ipsec/client/IIPsecService;->startService(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 3045
    iget-object v7, p0, this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;
    invoke-static {v7}, Lcom/ipsec/client/IPsecClient;->access$400(Lcom/ipsec/client/IPsecClient;)Lcom/ipsec/client/IIPsecService;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mCallback:Lcom/ipsec/client/IPsecServiceCallbackBinder;
    invoke-static {v8}, Lcom/ipsec/client/IPsecClient;->access$500(Lcom/ipsec/client/IPsecClient;)Lcom/ipsec/client/IPsecServiceCallbackBinder;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/ipsec/client/IIPsecService;->registerCallback(Lcom/ipsec/client/IIPsecServiceCallback;)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_66} :catch_aa
    .catchall {:try_start_4d .. :try_end_66} :catchall_cc

    .line 3055
    :goto_66
    :try_start_66
    sget-object v7, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v3, v7, :cond_81

    .line 3057
    if-nez v6, :cond_d7

    .line 3059
    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_CANNOT_CONNECT:Lcom/ipsec/client/IPsecError;

    .line 3061
    iget-object v7, p0, this$0:Lcom/ipsec/client/IPsecClient;

    const/4 v8, 0x0

    # setter for: Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;
    invoke-static {v7, v8}, Lcom/ipsec/client/IPsecClient;->access$402(Lcom/ipsec/client/IPsecClient;Lcom/ipsec/client/IIPsecService;)Lcom/ipsec/client/IIPsecService;

    .line 3062
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string/jumbo v9, "onServiceConnected(): startService() failed: null"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_81
    .catchall {:try_start_66 .. :try_end_81} :catchall_cc

    .line 3086
    :cond_81
    :goto_81
    iget-object v7, p0, this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v7}, Lcom/ipsec/client/IPsecClient;->access$300(Lcom/ipsec/client/IPsecClient;)Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 3089
    iget-object v7, p0, this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;
    invoke-static {v7}, Lcom/ipsec/client/IPsecClient;->access$000(Lcom/ipsec/client/IPsecClient;)Ljava/lang/ref/WeakReference;

    move-result-object v7

    if-eqz v7, :cond_9e

    .line 3091
    iget-object v7, p0, this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;
    invoke-static {v7}, Lcom/ipsec/client/IPsecClient;->access$000(Lcom/ipsec/client/IPsecClient;)Ljava/lang/ref/WeakReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "listener":Lcom/ipsec/client/IIPsecListener;
    check-cast v4, Lcom/ipsec/client/IIPsecListener;

    .line 3094
    .restart local v4    # "listener":Lcom/ipsec/client/IIPsecListener;
    :cond_9e
    sget-object v7, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v3, v7, :cond_146

    .line 3096
    if-eqz v4, :cond_a9

    .line 3098
    sget-object v7, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    invoke-interface {v4, v7, v12}, Lcom/ipsec/client/IIPsecListener;->onServiceStatusChanged(Lcom/ipsec/client/IPsecError;Lcom/ipsec/client/IPsecEventData;)V

    .line 3109
    :cond_a9
    :goto_a9
    return-void

    .line 3047
    :catch_aa
    move-exception v0

    .line 3049
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_ab
    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_CANNOT_CONNECT:Lcom/ipsec/client/IPsecError;

    .line 3051
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onServiceConnected(): startService() remote exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_cb
    .catchall {:try_start_ab .. :try_end_cb} :catchall_cc

    goto :goto_66

    .line 3086
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "parameterBundle":Landroid/os/Bundle;
    .end local v6    # "resultBundle":Landroid/os/Bundle;
    :catchall_cc
    move-exception v7

    :goto_cd
    iget-object v8, p0, this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v8}, Lcom/ipsec/client/IPsecClient;->access$300(Lcom/ipsec/client/IPsecClient;)Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v7

    .line 3065
    .restart local v5    # "parameterBundle":Landroid/os/Bundle;
    .restart local v6    # "resultBundle":Landroid/os/Bundle;
    :cond_d7
    :try_start_d7
    const-string/jumbo v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11f

    .line 3067
    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_CANNOT_CONNECT:Lcom/ipsec/client/IPsecError;

    .line 3069
    iget-object v7, p0, this$0:Lcom/ipsec/client/IPsecClient;

    const/4 v8, 0x0

    # setter for: Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;
    invoke-static {v7, v8}, Lcom/ipsec/client/IPsecClient;->access$402(Lcom/ipsec/client/IPsecClient;Lcom/ipsec/client/IIPsecService;)Lcom/ipsec/client/IIPsecService;

    .line 3070
    new-instance v2, Lcom/ipsec/client/IPsecEventData;

    invoke-direct {v2}, Lcom/ipsec/client/IPsecEventData;-><init>()V
    :try_end_ed
    .catchall {:try_start_d7 .. :try_end_ed} :catchall_cc

    .line 3071
    .end local v1    # "eventData":Lcom/ipsec/client/IPsecEventData;
    .local v2, "eventData":Lcom/ipsec/client/IPsecEventData;
    :try_start_ed
    const-string/jumbo v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    .line 3072
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onServiceConnected(): startService() failed: error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "error"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_11c
    .catchall {:try_start_ed .. :try_end_11c} :catchall_152

    move-object v1, v2

    .end local v2    # "eventData":Lcom/ipsec/client/IPsecEventData;
    .restart local v1    # "eventData":Lcom/ipsec/client/IPsecEventData;
    goto/16 :goto_81

    .line 3078
    :cond_11f
    :try_start_11f
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onServiceConnected(): startService(): version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "version"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_144
    .catchall {:try_start_11f .. :try_end_144} :catchall_cc

    goto/16 :goto_81

    .line 3103
    :cond_146
    if-eqz v4, :cond_14b

    .line 3105
    invoke-interface {v4, v3, v1}, Lcom/ipsec/client/IIPsecListener;->onServiceStatusChanged(Lcom/ipsec/client/IPsecError;Lcom/ipsec/client/IPsecEventData;)V

    .line 3107
    :cond_14b
    iget-object v7, p0, this$0:Lcom/ipsec/client/IPsecClient;

    # invokes: Lcom/ipsec/client/IPsecClient;->doStopService()Lcom/ipsec/client/IPsecError;
    invoke-static {v7}, Lcom/ipsec/client/IPsecClient;->access$600(Lcom/ipsec/client/IPsecClient;)Lcom/ipsec/client/IPsecError;

    goto/16 :goto_a9

    .line 3086
    .end local v1    # "eventData":Lcom/ipsec/client/IPsecEventData;
    .restart local v2    # "eventData":Lcom/ipsec/client/IPsecEventData;
    :catchall_152
    move-exception v7

    move-object v1, v2

    .end local v2    # "eventData":Lcom/ipsec/client/IPsecEventData;
    .restart local v1    # "eventData":Lcom/ipsec/client/IPsecEventData;
    goto/16 :goto_cd
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 12
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 3113
    const-string v4, "IPSC"

    const-string v5, "IPsecRemoteConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onServiceDisconnected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3115
    iget-object v4, p0, this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v4}, Lcom/ipsec/client/IPsecClient;->access$300(Lcom/ipsec/client/IPsecClient;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3118
    :try_start_28
    iget-object v4, p0, this$0:Lcom/ipsec/client/IPsecClient;

    const/4 v5, 0x0

    # setter for: Lcom/ipsec/client/IPsecClient;->mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;
    invoke-static {v4, v5}, Lcom/ipsec/client/IPsecClient;->access$702(Lcom/ipsec/client/IPsecClient;Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;)Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    .line 3119
    iget-object v4, p0, this$0:Lcom/ipsec/client/IPsecClient;

    const/4 v5, 0x0

    # setter for: Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;
    invoke-static {v4, v5}, Lcom/ipsec/client/IPsecClient;->access$402(Lcom/ipsec/client/IPsecClient;Lcom/ipsec/client/IIPsecService;)Lcom/ipsec/client/IIPsecService;

    .line 3124
    iget-object v4, p0, this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/ipsec/client/IPsecClient;->access$100(Lcom/ipsec/client/IPsecClient;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_69

    .line 3126
    :try_start_3b
    new-instance v0, Ljava/util/HashMap;

    iget-object v4, p0, this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/ipsec/client/IPsecClient;->access$100(Lcom/ipsec/client/IPsecClient;)Ljava/util/HashMap;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3128
    .local v0, "activeConnections":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/ipsec/client/IPsecConnection;>;"
    iget-object v4, p0, this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/ipsec/client/IPsecClient;->access$100(Lcom/ipsec/client/IPsecClient;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 3129
    monitor-exit v5
    :try_end_50
    .catchall {:try_start_3b .. :try_end_50} :catchall_74

    .line 3130
    :try_start_50
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3132
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ipsec/client/IPsecConnection;>;"
    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 3134
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ipsec/client/IPsecConnection;

    .line 3135
    .local v1, "c":Lcom/ipsec/client/IPsecConnection;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/ipsec/client/IPsecConnection;->setConnectionId(I)V
    :try_end_68
    .catchall {:try_start_50 .. :try_end_68} :catchall_69

    goto :goto_58

    .line 3141
    .end local v0    # "activeConnections":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/ipsec/client/IPsecConnection;>;"
    .end local v1    # "c":Lcom/ipsec/client/IPsecConnection;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ipsec/client/IPsecConnection;>;"
    :catchall_69
    move-exception v4

    iget-object v5, p0, this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v5}, Lcom/ipsec/client/IPsecClient;->access$300(Lcom/ipsec/client/IPsecClient;)Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .line 3129
    :catchall_74
    move-exception v4

    :try_start_75
    monitor-exit v5
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    :try_start_76
    throw v4

    .line 3137
    .restart local v0    # "activeConnections":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/ipsec/client/IPsecConnection;>;"
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ipsec/client/IPsecConnection;>;"
    :cond_77
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_7a
    .catchall {:try_start_76 .. :try_end_7a} :catchall_69

    .line 3141
    iget-object v4, p0, this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v4}, Lcom/ipsec/client/IPsecClient;->access$300(Lcom/ipsec/client/IPsecClient;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 3144
    const/4 v3, 0x0

    .line 3145
    .local v3, "listener":Lcom/ipsec/client/IIPsecListener;
    iget-object v4, p0, this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;
    invoke-static {v4}, Lcom/ipsec/client/IPsecClient;->access$000(Lcom/ipsec/client/IPsecClient;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    if-eqz v4, :cond_98

    .line 3147
    iget-object v4, p0, this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;
    invoke-static {v4}, Lcom/ipsec/client/IPsecClient;->access$000(Lcom/ipsec/client/IPsecClient;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "listener":Lcom/ipsec/client/IIPsecListener;
    check-cast v3, Lcom/ipsec/client/IIPsecListener;

    .line 3149
    .restart local v3    # "listener":Lcom/ipsec/client/IIPsecListener;
    :cond_98
    if-eqz v3, :cond_9f

    .line 3151
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    invoke-interface {v3, v4, v8}, Lcom/ipsec/client/IIPsecListener;->onServiceStatusChanged(Lcom/ipsec/client/IPsecError;Lcom/ipsec/client/IPsecEventData;)V

    .line 3156
    :cond_9f
    return-void
.end method
