.class Lcom/android/server/policy/GlobalActions$34;
.super Landroid/content/BroadcastReceiver;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .registers 2

    .prologue
    .line 4146
    iput-object p1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4148
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4149
    .local v0, "action":Ljava/lang/String;
    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBroadcastReceiver : onReceive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4150
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    const-string v2, "android.intent.action.SUBSCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    const-string v2, "android.intent.action.SUBSCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    const-string v2, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    iget-object v2, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$7500(Lcom/android/server/policy/GlobalActions;)Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v2

    if-eqz v2, :cond_5f

    iget-object v2, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$7500(Lcom/android/server/policy/GlobalActions;)Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-nez v2, :cond_8e

    .line 4157
    :cond_5f
    const-string/jumbo v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4158
    .local v1, "reason":Ljava/lang/String;
    const-string/jumbo v2, "globalactions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8d

    .line 4159
    const-string v2, "GlobalActions"

    const-string/jumbo v3, "mBroadcastReceiver : onReceive : sendEmptyMessage(MESSAGE_DISMISS) reason #1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4160
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 4161
    iget-object v2, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z
    invoke-static {v2, v6}, Lcom/android/server/policy/GlobalActions;->access$7602(Lcom/android/server/policy/GlobalActions;Z)Z

    .line 4163
    :cond_84
    iget-object v2, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$400(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4190
    .end local v1    # "reason":Ljava/lang/String;
    :cond_8d
    :goto_8d
    return-void

    .line 4165
    :cond_8e
    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 4168
    const-string v2, "PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_8d

    iget-object v2, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$2800(Lcom/android/server/policy/GlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 4170
    iget-object v2, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v2, v5}, Lcom/android/server/policy/GlobalActions;->access$2802(Lcom/android/server/policy/GlobalActions;Z)Z

    .line 4171
    const-string v2, "GlobalActions"

    const-string/jumbo v3, "mBroadcastReceiver changeAirplaneModeSystemSetting called "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4172
    iget-object v2, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v2, v6}, Lcom/android/server/policy/GlobalActions;->access$2900(Lcom/android/server/policy/GlobalActions;Z)V

    goto :goto_8d

    .line 4174
    :cond_b9
    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    .line 4175
    const-string v2, "GlobalActions"

    const-string v3, "ACTION_SUBINFO_RECORD_UPDATED received"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4177
    iget-object v2, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->unregisterPhoneStateListener()V
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$7700(Lcom/android/server/policy/GlobalActions;)V

    .line 4178
    iget-object v2, p0, this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v3, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    # invokes: Lcom/android/server/policy/GlobalActions;->registerPhoneStateListener(Landroid/content/Context;)V
    invoke-static {v2, v3}, Lcom/android/server/policy/GlobalActions;->access$7800(Lcom/android/server/policy/GlobalActions;Landroid/content/Context;)V

    goto :goto_8d

    .line 4185
    :cond_d9
    const-string v2, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 4186
    iget-object v2, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$400(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_8d

    .line 4187
    :cond_eb
    const-string v2, "ACTION_DUALMODE_SETTING"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 4188
    iget-object v2, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$400(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_8d
.end method
