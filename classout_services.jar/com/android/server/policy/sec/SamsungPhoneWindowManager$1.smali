.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .registers 2

    .prologue
    .line 434
    iput-object p1, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 436
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput v3, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSweepDirection:I

    .line 438
    iget-object v2, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput v3, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCapturedDisplay:I

    .line 439
    iget-object v2, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput v6, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCapturedOrigin:I

    .line 440
    const-string v2, "com.samsung.android.motion.SWEEP_LEFT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 441
    iget-object v2, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 442
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_31

    const-string v2, "SamsungWindowManager"

    const-string v3, "Sweep LEFT, but keyguard on"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_31
    :goto_31
    return-void

    .line 445
    :cond_32
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_3d

    const-string v2, "SamsungWindowManager"

    const-string v3, "Sweep LEFT, so takeScreenshot"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_3d
    iget-object v2, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenShotForEffect;

    iget-object v4, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {v3, v4, v5}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenShotForEffect;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 447
    iget-object v2, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput v6, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSweepDirection:I

    .line 448
    const-string v2, "PalmMotion"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "display":Ljava/lang/String;
    const-string v2, "MAIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 450
    iget-object v2, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput v5, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCapturedDisplay:I

    goto :goto_31

    .line 451
    :cond_62
    const-string v2, "SUB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 452
    iget-object v2, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput v6, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCapturedDisplay:I

    goto :goto_31

    .line 456
    .end local v1    # "display":Ljava/lang/String;
    :cond_6f
    const-string v2, "com.samsung.android.motion.SWEEP_RIGHT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 457
    iget-object v2, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 458
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_31

    const-string v2, "SamsungWindowManager"

    const-string v3, "Sweep RIGHT, but keyguard on"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 461
    :cond_8d
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_98

    const-string v2, "SamsungWindowManager"

    const-string v3, "Sweep RIGHT, so takeScreenshot"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_98
    iget-object v2, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenShotForEffect;

    iget-object v4, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {v3, v4, v5}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenShotForEffect;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 463
    iget-object v2, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput v7, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSweepDirection:I

    .line 464
    const-string v2, "PalmMotion"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 465
    .restart local v1    # "display":Ljava/lang/String;
    const-string v2, "MAIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 466
    iget-object v2, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput v5, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCapturedDisplay:I

    goto/16 :goto_31

    .line 467
    :cond_be
    const-string v2, "SUB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 468
    iget-object v2, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput v6, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCapturedDisplay:I

    goto/16 :goto_31

    .line 472
    .end local v1    # "display":Ljava/lang/String;
    :cond_cc
    const-string v2, "com.samsung.android.motion.SWEEP_DOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 473
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_31

    const-string v2, "SamsungWindowManager"

    const-string v3, "SWEEP DOWN"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    .line 475
    :cond_e1
    const-string v2, "com.samsung.android.motion.SWEEP_FULL_SCREEN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 476
    iget-object v2, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_100

    .line 477
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_31

    const-string v2, "SamsungWindowManager"

    const-string v3, "Sweep FULL SCREEN, but keyguard on"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    .line 480
    :cond_100
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_10b

    const-string v2, "SamsungWindowManager"

    const-string v3, "Sweep FULL SCREEN, so takeScreenshot"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_10b
    iget-object v2, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenShotForEffect;

    iget-object v4, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {v3, v4, v5}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenShotForEffect;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 482
    iget-object v2, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput v5, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSweepDirection:I

    .line 483
    iget-object v2, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput v7, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCapturedDisplay:I

    goto/16 :goto_31
.end method
