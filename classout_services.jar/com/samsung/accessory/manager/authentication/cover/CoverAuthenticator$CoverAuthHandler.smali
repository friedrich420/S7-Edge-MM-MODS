.class final Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;
.super Landroid/os/Handler;
.source "CoverAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CoverAuthHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 431
    iput-object p1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 432
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 433
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 437
    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_b6

    .line 478
    :cond_26
    :goto_26
    return-void

    .line 440
    :pswitch_27
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->initialize()V
    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$1000(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    goto :goto_26

    .line 443
    :pswitch_2d
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->handleAuthResponse(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$1100(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Landroid/os/Message;)V

    goto :goto_26

    .line 446
    :pswitch_33
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isAuthenticationBlocked()Z
    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$1200(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 447
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const-wide/16 v2, 0x0

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->stopAuthentication(J)V
    invoke-static {v1, v2, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$1300(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)V

    goto :goto_26

    .line 449
    :cond_43
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->handleAuthStart()V
    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$1400(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    goto :goto_26

    .line 453
    :pswitch_49
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;
    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$400(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, removeMessages(I)V

    .line 454
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v7, :cond_6c

    .line 455
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # operator++ for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I
    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$1508(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    .line 456
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(I)V

    .line 457
    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "authentication is timed out!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_6c
    :pswitch_6c
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;
    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$300(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v1, v2}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->stop(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, "needForceUnverify":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_8d

    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I
    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$200(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    move-result v1

    if-lt v1, v4, :cond_8d

    .line 465
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    .line 466
    const/4 v0, 0x1

    .line 469
    :cond_8d
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I
    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$200(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    move-result v1

    if-lt v1, v4, :cond_a3

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v7, :cond_a1

    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I
    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$1500(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    move-result v1

    if-gt v1, v4, :cond_a3

    :cond_a1
    if-eqz v0, :cond_26

    .line 472
    :cond_a3
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->stopAuthAlarm()V
    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$1600(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    .line 473
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverVerified(ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    invoke-static {v1, v6, v6, v5, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$1700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 474
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/16 :goto_26

    .line 438
    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_27
        :pswitch_33
        :pswitch_2d
        :pswitch_6c
        :pswitch_49
        :pswitch_49
    .end packed-switch
.end method
