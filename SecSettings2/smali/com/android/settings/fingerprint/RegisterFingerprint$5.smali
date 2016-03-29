.class Lcom/android/settings/fingerprint/RegisterFingerprint$5;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;->eventProcess(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

.field final synthetic val$evtId:I


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iput p2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->val$evtId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x0

    const/16 v3, 0x1000

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 381
    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->val$evtId:I

    sparse-switch v1, :sswitch_data_0

    .line 548
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 385
    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityFeedbackString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showErrorMessage(ILjava/lang/String;)V
    invoke-static {v1, v3, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2200(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/String;)V

    goto :goto_0

    .line 390
    :sswitch_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityFeedbackString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showErrorMessage(ILjava/lang/String;)V
    invoke-static {v1, v3, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2200(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/String;)V

    goto :goto_0

    .line 395
    :sswitch_3
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v2, 0x200

    const/16 v3, 0x200

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityFeedbackString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showErrorMessage(ILjava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2200(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/String;)V

    goto :goto_0

    .line 400
    :sswitch_4
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/high16 v2, 0x80000

    const/high16 v3, 0x80000

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityFeedbackString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showErrorMessage(ILjava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2200(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/String;)V

    goto :goto_0

    .line 405
    :sswitch_5
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityFeedbackString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showErrorMessage(ILjava/lang/String;)V
    invoke-static {v1, v4, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2200(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/String;)V

    goto :goto_0

    .line 410
    :sswitch_6
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/high16 v2, 0x1000000

    const/high16 v3, 0x1000000

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityFeedbackString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showErrorMessage(ILjava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2200(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/String;)V

    goto :goto_0

    .line 415
    :sswitch_7
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/high16 v2, 0x30000000

    const/high16 v3, 0x30000000

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityFeedbackString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showErrorMessage(ILjava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2200(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/String;)V

    goto :goto_0

    .line 420
    :sswitch_8
    const-string v1, "FpstRegisterTouchFingerprint"

    const-string v2, "eventId[FINGERPRINT_ACQUIRED_CAPTURE_READY]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 424
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->isError:Z
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 425
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    invoke-virtual {v1, v6}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setFingerStatus(I)V

    .line 428
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    if-eqz v1, :cond_4

    .line 429
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 430
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2400(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 431
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v1, v8}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2302(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/os/Handler;)Landroid/os/Handler;

    .line 434
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftMsgShow:Z
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v1

    if-ne v1, v7, :cond_3

    .line 435
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2302(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/os/Handler;)Landroid/os/Handler;

    .line 436
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$5$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$5$1;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint$5;)V

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgRunnable:Ljava/lang/Runnable;
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2402(Lcom/android/settings/fingerprint/RegisterFingerprint;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 448
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2400(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x14a

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 454
    :goto_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftMsgShow:Z
    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2502(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    goto/16 :goto_0

    .line 450
    :cond_3
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->interrupt()V

    .line 451
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iput-object v8, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    .line 452
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->getFingerRegisterText()I
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2600(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v2

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->setFingerGuideText(I)V
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2700(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    goto :goto_1

    .line 456
    :cond_4
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftMsgShow:Z
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v1

    if-ne v1, v7, :cond_6

    .line 457
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2302(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/os/Handler;)Landroid/os/Handler;

    .line 458
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$5$2;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$5$2;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint$5;)V

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgRunnable:Ljava/lang/Runnable;
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2402(Lcom/android/settings/fingerprint/RegisterFingerprint;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 470
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2400(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x14a

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 476
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftMsgShow:Z
    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2502(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    goto/16 :goto_0

    .line 472
    :cond_6
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->isFirstGuideShow:Z
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 473
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->getFingerRegisterText()I
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2600(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v2

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->setFingerGuideText(I)V
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2700(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    goto :goto_2

    .line 480
    :sswitch_9
    const-string v1, "FpstRegisterTouchFingerprint"

    const-string v2, "eventId[FINGERPRINT_ACQUIRED_CAPTURE_STARTED]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 483
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->isFirstGuideShow:Z
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 484
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const v2, 0x7f0d02b8

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 485
    .local v0, "guideText":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v2, 0xd0

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v1, v2, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2800(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 486
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v2, 0xc9

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mFirstGuideScreen:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2900(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/RelativeLayout;

    move-result-object v3

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2800(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 487
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v2, 0xc8

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterScreen:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3000(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/RelativeLayout;

    move-result-object v3

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2800(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 488
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->isFirstGuideShow:Z
    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$302(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    .line 489
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackEnabled:Z
    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3102(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    .line 491
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3202(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/os/Handler;)Landroid/os/Handler;

    .line 492
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$5$3;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$5$3;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint$5;)V

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3302(Lcom/android/settings/fingerprint/RegisterFingerprint;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 500
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 503
    .end local v0    # "guideText":Landroid/widget/TextView;
    :cond_7
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->isError:Z
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 504
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    if-eqz v1, :cond_8

    .line 505
    const-string v1, "FpstRegisterTouchFingerprint"

    const-string v2, "Remove_Error_Runnable_In_EVENT_ENROLL_STARTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 508
    :cond_8
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v2, 0xcb

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorMessage:Landroid/widget/RelativeLayout;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2800(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 509
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v2, 0xce

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v1, v2, v8}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2800(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 510
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->isError:Z
    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$702(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    .line 517
    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    invoke-virtual {v1, v7}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setFingerStatus(I)V

    goto/16 :goto_0

    .line 512
    :cond_a
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_9

    .line 513
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->getFingerRegisterText()I
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2600(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v2

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->setFingerGuideText(I)V
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2700(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    goto :goto_3

    .line 523
    :sswitch_a
    const-string v1, "FpstRegisterTouchFingerprint"

    const-string v2, "eventId[FINGERPRINT_ACQUIRED_CAPTURE_FINGER_LEAVE]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->isLiftMsgCalled:Z
    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3502(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    goto/16 :goto_0

    .line 527
    :sswitch_b
    const-string v1, "FpstRegisterTouchFingerprint"

    const-string v2, "eventId[FINGERPRINT_ACQUIRED_CAPTURE_SUCCESS]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    if-eqz v1, :cond_b

    .line 529
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->interrupt()V

    .line 530
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iput-object v8, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    .line 532
    :cond_b
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->isLiftMsgCalled:Z
    invoke-static {v1, v7}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3502(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    .line 533
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v2, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    .line 534
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->start()V

    .line 536
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 537
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v2, 0xcc

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2800(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    goto/16 :goto_0

    .line 543
    :sswitch_c
    const-string v1, "FpstRegisterTouchFingerprint"

    const-string v2, "eventId[FINGERPRINT_ACQUIRED_CAPTURE_FINGER_LEAVE_TIMEOUT]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 381
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x3e9 -> :sswitch_6
        0x3ea -> :sswitch_7
        0x2711 -> :sswitch_8
        0x2712 -> :sswitch_9
        0x2713 -> :sswitch_0
        0x2714 -> :sswitch_a
        0x2715 -> :sswitch_b
        0x2716 -> :sswitch_0
        0x2717 -> :sswitch_c
    .end sparse-switch
.end method
