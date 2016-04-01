.class Lcom/android/server/smartclip/SmartClipView$6;
.super Ljava/lang/Object;
.source "SmartClipView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SmartClipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SmartClipView;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SmartClipView;)V
    .registers 2

    .prologue
    .line 1023
    iput-object p1, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1025
    iget-object v6, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v7, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/smartclip/SmartClipView;->access$1400(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "lock_screen_quick_note"

    const/4 v9, -0x2

    invoke-static {v7, v8, v4, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_1a

    move v4, v5

    :cond_1a
    # setter for: Lcom/android/server/smartclip/SmartClipView;->mIsEnableDoubleTapOnLockscreen:Z
    invoke-static {v6, v4}, Lcom/android/server/smartclip/SmartClipView;->access$1502(Lcom/android/server/smartclip/SmartClipView;Z)Z

    .line 1026
    iget-object v4, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mIsKeyguardOn:Z
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$1600(Lcom/android/server/smartclip/SmartClipView;)Z

    move-result v4

    if-eqz v4, :cond_64

    iget-object v4, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mIsEnableDoubleTapOnLockscreen:Z
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$1500(Lcom/android/server/smartclip/SmartClipView;)Z

    move-result v4

    if-eqz v4, :cond_35

    iget-object v4, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mIsLiveGlanceView:Z
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$1700(Lcom/android/server/smartclip/SmartClipView;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 1027
    :cond_35
    const-string v4, "SmartClipView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Double tap is disable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mIsEnableDoubleTapOnLockscreen:Z
    invoke-static {v6}, Lcom/android/server/smartclip/SmartClipView;->access$1500(Lcom/android/server/smartclip/SmartClipView;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mIsLiveGlanceView:Z
    invoke-static {v6}, Lcom/android/server/smartclip/SmartClipView;->access$1700(Lcom/android/server/smartclip/SmartClipView;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_63
    :goto_63
    return-void

    .line 1032
    :cond_64
    :try_start_64
    const-string v4, "SmartClipView"

    const-string v6, "Double tapped!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object v4, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.PEN_GESTURE_PENMEMO_ACTION"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mPenMemoActionIntent:Landroid/content/Intent;
    invoke-static {v4, v6}, Lcom/android/server/smartclip/SmartClipView;->access$1802(Lcom/android/server/smartclip/SmartClipView;Landroid/content/Intent;)Landroid/content/Intent;

    .line 1035
    iget-object v4, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v4}, Lcom/android/server/smartclip/SmartClipView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mPenMemoActionIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/android/server/smartclip/SmartClipView;->access$1800(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1037
    iget-object v4, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$1900(Lcom/android/server/smartclip/SmartClipView;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 1038
    .local v0, "callState":I
    const/4 v1, 0x0

    .line 1039
    .local v1, "callState2":I
    iget-object v4, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mTelephonyManager2:Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$2000(Lcom/android/server/smartclip/SmartClipView;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    if-eqz v4, :cond_a3

    .line 1040
    iget-object v4, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mTelephonyManager2:Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$2000(Lcom/android/server/smartclip/SmartClipView;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    .line 1041
    :cond_a3
    if-eq v0, v5, :cond_ab

    if-eq v0, v10, :cond_ab

    if-eq v1, v5, :cond_ab

    if-ne v1, v10, :cond_c1

    .line 1045
    :cond_ab
    iget-object v4, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v4}, Lcom/android/server/smartclip/SmartClipView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.intent.spengesture.DOUBLE_TAB"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_bb} :catch_bc

    goto :goto_63

    .line 1056
    .end local v0    # "callState":I
    .end local v1    # "callState2":I
    :catch_bc
    move-exception v3

    .line 1057
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_63

    .line 1047
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "callState":I
    .restart local v1    # "callState2":I
    :cond_c1
    :try_start_c1
    iget-object v4, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v4}, Lcom/android/server/smartclip/SmartClipView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1048
    .local v2, "context":Landroid/content/Context;
    iget-object v4, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mDoubleTapIntentSnote:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$2100(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_63

    .line 1049
    const-string v4, "SmartClipView"

    const-string/jumbo v5, "mPenDoubleTap : Snote action memo launch failed. Trying to launch diotek PenMemo..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v4, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mDoubleTapIntentDiotek:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$2200(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_63

    .line 1051
    const-string v4, "SmartClipView"

    const-string/jumbo v5, "mPenDoubleTap : Diotek PenMemo launch failed. Sending legacy quick memo broadcasting"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.QUICKMEMO_LAUNCH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_ff} :catch_bc

    goto/16 :goto_63
.end method
