.class Lcom/android/server/bridge/BridgeProxy$IncomingHandler;
.super Landroid/os/Handler;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/BridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/bridge/BridgeProxy;)V
    .registers 2

    .prologue
    .line 924
    iput-object p1, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p2, "x1"    # Lcom/android/server/bridge/BridgeProxy$1;

    .prologue
    .line 924
    invoke-direct {p0, p1}, <init>(Lcom/android/server/bridge/BridgeProxy;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 927
    iget-object v1, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v2, "handleMessage"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 928
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_e8

    .line 958
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 960
    :goto_10
    return-void

    .line 930
    :pswitch_11
    iget-object v1, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->resultLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$1900(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 933
    :try_start_18
    iget-object v1, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/bridge/BridgeProxy;->result:Landroid/content/CustomCursor;
    invoke-static {v1, v3}, Lcom/android/server/bridge/BridgeProxy;->access$2002(Lcom/android/server/bridge/BridgeProxy;Landroid/content/CustomCursor;)Landroid/content/CustomCursor;
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_5a

    .line 935
    :try_start_1e
    iget-object v3, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    const-string v4, "RESULT"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/CustomCursor;

    # setter for: Lcom/android/server/bridge/BridgeProxy;->result:Landroid/content/CustomCursor;
    invoke-static {v3, v1}, Lcom/android/server/bridge/BridgeProxy;->access$2002(Lcom/android/server/bridge/BridgeProxy;Landroid/content/CustomCursor;)Landroid/content/CustomCursor;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2f} :catch_5d
    .catchall {:try_start_1e .. :try_end_2f} :catchall_5a

    .line 940
    :goto_2f
    :try_start_2f
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IncomingHandler result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->result:Landroid/content/CustomCursor;
    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object v1, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->resultLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$1900(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 942
    monitor-exit v2

    goto :goto_10

    :catchall_5a
    move-exception v1

    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_2f .. :try_end_5c} :catchall_5a

    throw v1

    .line 936
    :catch_5d
    move-exception v0

    .line 937
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5e
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "From IncomingHandler().result: e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7b
    .catchall {:try_start_5e .. :try_end_7b} :catchall_5a

    goto :goto_2f

    .line 945
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_7c
    iget-object v1, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->resultLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$1900(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 946
    :try_start_83
    iget-object v1, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/bridge/BridgeProxy;->mCallerInfoResult:Landroid/content/CustomCursor;
    invoke-static {v1, v3}, Lcom/android/server/bridge/BridgeProxy;->access$2102(Lcom/android/server/bridge/BridgeProxy;Landroid/content/CustomCursor;)Landroid/content/CustomCursor;
    :try_end_89
    .catchall {:try_start_83 .. :try_end_89} :catchall_c6

    .line 948
    :try_start_89
    iget-object v3, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    const-string v4, "RESULT"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/CustomCursor;

    # setter for: Lcom/android/server/bridge/BridgeProxy;->mCallerInfoResult:Landroid/content/CustomCursor;
    invoke-static {v3, v1}, Lcom/android/server/bridge/BridgeProxy;->access$2102(Lcom/android/server/bridge/BridgeProxy;Landroid/content/CustomCursor;)Landroid/content/CustomCursor;
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_9a} :catch_c9
    .catchall {:try_start_89 .. :try_end_9a} :catchall_c6

    .line 953
    :goto_9a
    :try_start_9a
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IncomingHandler result for case 2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mCallerInfoResult:Landroid/content/CustomCursor;
    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$2100(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v1, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->resultLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$1900(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 955
    monitor-exit v2

    goto/16 :goto_10

    :catchall_c6
    move-exception v1

    monitor-exit v2
    :try_end_c8
    .catchall {:try_start_9a .. :try_end_c8} :catchall_c6

    throw v1

    .line 949
    :catch_c9
    move-exception v0

    .line 950
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_ca
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "From IncomingHandler().mCallerInfoResult: e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e7
    .catchall {:try_start_ca .. :try_end_e7} :catchall_c6

    goto :goto_9a

    .line 928
    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_11
        :pswitch_7c
    .end packed-switch
.end method
