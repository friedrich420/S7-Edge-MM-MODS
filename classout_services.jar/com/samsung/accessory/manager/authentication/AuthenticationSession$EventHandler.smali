.class Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;
.super Landroid/os/Handler;
.source "AuthenticationSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 135
    iput-object p1, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 136
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 137
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 141
    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_142

    .line 207
    :cond_25
    :goto_25
    :pswitch_25
    return-void

    .line 146
    :pswitch_26
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$200(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 147
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-eqz v0, :cond_6b

    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->isEnabledInternally()Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->disable()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 151
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    const/16 v1, 0xc

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V
    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$300(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V

    .line 152
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleTearDown()V
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$400(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto :goto_25

    .line 154
    :cond_6b
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # setter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I
    invoke-static {v0, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$502(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)I

    goto :goto_25

    .line 155
    :cond_71
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$600(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 156
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->connect()V
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$700(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 157
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$600(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_25

    .line 161
    :pswitch_8c
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$200(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 162
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$200(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 163
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$000(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, sendEmptyMessage(I)Z

    goto/16 :goto_25

    .line 166
    :cond_ae
    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connectivity is disabled by user"

    invoke-static {v0, v1}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 170
    :pswitch_b9
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    move-result v0

    if-ne v0, v4, :cond_25

    .line 171
    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connectivity is turned off while authentication is running!"

    invoke-static {v0, v1}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # setter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z
    invoke-static {v0, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$802(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)Z

    goto/16 :goto_25

    .line 176
    :pswitch_d1
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleSetConnection()V
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$900(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto/16 :goto_25

    .line 179
    :pswitch_d8
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->connect()V
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$700(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto/16 :goto_25

    .line 182
    :pswitch_df
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1000(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    move-result-object v0

    if-eqz v0, :cond_f3

    .line 183
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1000(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v0, v1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 184
    :cond_f3
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # setter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z
    invoke-static {v0, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$802(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)Z

    .line 185
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    # setter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1102(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 186
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1100(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 187
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V
    invoke-static {v0, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1200(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V

    goto/16 :goto_25

    .line 193
    :pswitch_114
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleStartSession()V
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1300(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto/16 :goto_25

    .line 196
    :pswitch_11b
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleStopSession(Z)V
    invoke-static {v0, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1400(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)V

    goto/16 :goto_25

    .line 199
    :pswitch_122
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleTearDown()V
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$400(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto/16 :goto_25

    .line 202
    :pswitch_129
    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "session is timed out!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    const/16 v1, 0x1f

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V
    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$300(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V

    .line 204
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleStopSession(Z)V
    invoke-static {v0, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1400(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)V

    goto/16 :goto_25

    .line 142
    nop

    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_d1
        :pswitch_25
        :pswitch_26
        :pswitch_8c
        :pswitch_b9
        :pswitch_25
        :pswitch_d8
        :pswitch_df
        :pswitch_25
        :pswitch_25
        :pswitch_114
        :pswitch_11b
        :pswitch_122
        :pswitch_129
    .end packed-switch
.end method
