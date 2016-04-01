.class Landroid/service/trust/TrustAgentService$1;
.super Landroid/os/Handler;
.source "TrustAgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/TrustAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/trust/TrustAgentService;


# direct methods
.method constructor <init>(Landroid/service/trust/TrustAgentService;)V
    .registers 2

    .prologue
    .line 148
    iput-object p1, p0, this$0:Landroid/service/trust/TrustAgentService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 150
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_56

    .line 177
    :cond_5
    :goto_5
    return-void

    .line 152
    :pswitch_6
    iget-object v4, p0, this$0:Landroid/service/trust/TrustAgentService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    :goto_d
    invoke-virtual {v4, v3}, Landroid/service/trust/TrustAgentService;->onUnlockAttempt(Z)V

    goto :goto_5

    :cond_11
    const/4 v3, 0x0

    goto :goto_d

    .line 155
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/trust/TrustAgentService$ConfigurationData;

    .line 156
    .local v0, "data":Landroid/service/trust/TrustAgentService$ConfigurationData;
    iget-object v3, p0, this$0:Landroid/service/trust/TrustAgentService;

    iget-object v4, v0, Landroid/service/trust/TrustAgentService$ConfigurationData;->options:Ljava/util/List;

    invoke-virtual {v3, v4}, Landroid/service/trust/TrustAgentService;->onConfigure(Ljava/util/List;)Z

    move-result v2

    .line 157
    .local v2, "result":Z
    iget-object v3, v0, Landroid/service/trust/TrustAgentService$ConfigurationData;->token:Landroid/os/IBinder;

    if-eqz v3, :cond_5

    .line 159
    :try_start_23
    iget-object v3, p0, this$0:Landroid/service/trust/TrustAgentService;

    # getter for: Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/service/trust/TrustAgentService;->access$000(Landroid/service/trust/TrustAgentService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2a} :catch_3a

    .line 160
    :try_start_2a
    iget-object v3, p0, this$0:Landroid/service/trust/TrustAgentService;

    # getter for: Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    invoke-static {v3}, Landroid/service/trust/TrustAgentService;->access$100(Landroid/service/trust/TrustAgentService;)Landroid/service/trust/ITrustAgentServiceCallback;

    move-result-object v3

    iget-object v5, v0, Landroid/service/trust/TrustAgentService$ConfigurationData;->token:Landroid/os/IBinder;

    invoke-interface {v3, v2, v5}, Landroid/service/trust/ITrustAgentServiceCallback;->onConfigureCompleted(ZLandroid/os/IBinder;)V

    .line 161
    monitor-exit v4

    goto :goto_5

    :catchall_37
    move-exception v3

    monitor-exit v4
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_37

    :try_start_39
    throw v3
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3a} :catch_3a

    .line 162
    :catch_3a
    move-exception v1

    .line 163
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v3, p0, this$0:Landroid/service/trust/TrustAgentService;

    const-string v4, "calling onSetTrustAgentFeaturesEnabledCompleted()"

    # invokes: Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/service/trust/TrustAgentService;->access$200(Landroid/service/trust/TrustAgentService;Ljava/lang/String;)V

    goto :goto_5

    .line 168
    .end local v0    # "data":Landroid/service/trust/TrustAgentService$ConfigurationData;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "result":Z
    :pswitch_43
    iget-object v3, p0, this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v3}, Landroid/service/trust/TrustAgentService;->onTrustTimeout()V

    goto :goto_5

    .line 171
    :pswitch_49
    iget-object v3, p0, this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v3}, Landroid/service/trust/TrustAgentService;->onDeviceLocked()V

    goto :goto_5

    .line 174
    :pswitch_4f
    iget-object v3, p0, this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v3}, Landroid/service/trust/TrustAgentService;->onDeviceUnlocked()V

    goto :goto_5

    .line 150
    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_6
        :pswitch_13
        :pswitch_43
        :pswitch_49
        :pswitch_4f
    .end packed-switch
.end method
