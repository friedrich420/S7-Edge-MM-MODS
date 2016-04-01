.class Lcom/android/server/smartclip/SpenGestureManagerService$4;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 2

    .prologue
    .line 454
    iput-object p1, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 456
    iget-object v5, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "lock_screen_quick_note"

    const/4 v8, -0x2

    invoke-static {v6, v7, v3, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_18

    move v3, v4

    :cond_18
    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z
    invoke-static {v5, v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1602(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    .line 457
    iget-object v3, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->keyguardOn()Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z
    invoke-static {v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1600(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 458
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Double tap is disable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z
    invoke-static {v5}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1600(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :goto_49
    return-void

    .line 462
    :cond_4a
    iget-object v3, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->isScreenPinningEnabled()Z
    invoke-static {v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1700(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v3

    if-ne v3, v4, :cond_5a

    .line 463
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v4, "Double tap is disabled : Screen pinning mode enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 468
    :cond_5a
    :try_start_5a
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v5, "Double tapped!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v3, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->isHapticFeedbackEnabled()Z
    invoke-static {v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1800(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v3

    if-ne v3, v4, :cond_69

    .line 475
    :cond_69
    iget-object v3, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.PEN_GESTURE_PENMEMO_ACTION"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mPenMemoActionIntent:Landroid/content/Intent;
    invoke-static {v3, v5}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1902(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/content/Intent;)Landroid/content/Intent;

    .line 476
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mPenMemoActionIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1900(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 478
    iget-object v3, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2000(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 479
    .local v0, "callState":I
    const/4 v1, 0x0

    .line 480
    .local v1, "callState2":I
    iget-object v3, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mTelephonyManager2:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2100(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    if-eqz v3, :cond_a1

    .line 481
    iget-object v3, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mTelephonyManager2:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2100(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    .line 482
    :cond_a1
    if-eq v0, v4, :cond_a9

    if-eq v0, v9, :cond_a9

    if-eq v1, v4, :cond_a9

    if-ne v1, v9, :cond_bd

    .line 486
    :cond_a9
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.intent.spengesture.DOUBLE_TAB"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_b7} :catch_b8

    goto :goto_49

    .line 490
    .end local v0    # "callState":I
    .end local v1    # "callState2":I
    :catch_b8
    move-exception v2

    .line 491
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_49

    .line 488
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "callState":I
    .restart local v1    # "callState2":I
    :cond_bd
    :try_start_bd
    iget-object v3, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->launchActionMemo()V
    invoke-static {v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2200(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c2} :catch_b8

    goto :goto_49
.end method
