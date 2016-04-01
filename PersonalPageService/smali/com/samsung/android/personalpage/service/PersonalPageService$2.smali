.class Lcom/samsung/android/personalpage/service/PersonalPageService$2;
.super Landroid/content/BroadcastReceiver;
.source "PersonalPageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/personalpage/service/PersonalPageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;


# direct methods
.method constructor <init>(Lcom/samsung/android/personalpage/service/PersonalPageService;)V
    .locals 0

    .prologue
    .line 925
    iput-object p1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 929
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, "action":Ljava/lang/String;
    const-string v3, "PersonalPageService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 932
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    # invokes: Lcom/samsung/android/personalpage/service/PersonalPageService;->requestUpdateLocale()V
    invoke-static {v3}, Lcom/samsung/android/personalpage/service/PersonalPageService;->access$700(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    .line 1005
    :cond_0
    :goto_0
    return-void

    .line 934
    :cond_1
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 935
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    # invokes: Lcom/samsung/android/personalpage/service/PersonalPageService;->requestUserSwitch()V
    invoke-static {v3}, Lcom/samsung/android/personalpage/service/PersonalPageService;->access$800(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    goto :goto_0

    .line 937
    :cond_3
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 938
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    iget-object v3, v3, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPrivateModeDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    iget-object v3, v3, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPrivateModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 940
    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    # getter for: Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/android/personalpage/service/PersonalPageService;->access$600(Lcom/samsung/android/personalpage/service/PersonalPageService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "personal_mode_enabled"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 941
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    iget-object v3, v3, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPrivateModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    # getter for: Lcom/samsung/android/personalpage/service/PersonalPageService;->mPmManagerService:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;
    invoke-static {v3}, Lcom/samsung/android/personalpage/service/PersonalPageService;->access$900(Lcom/samsung/android/personalpage/service/PersonalPageService;)Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    iget-object v3, v3, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    # getter for: Lcom/samsung/android/personalpage/service/PersonalPageService;->mPmManagerService:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;
    invoke-static {v3}, Lcom/samsung/android/personalpage/service/PersonalPageService;->access$900(Lcom/samsung/android/personalpage/service/PersonalPageService;)Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    iget-object v3, v3, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 948
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    # getter for: Lcom/samsung/android/personalpage/service/PersonalPageService;->mPmManagerService:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;
    invoke-static {v3}, Lcom/samsung/android/personalpage/service/PersonalPageService;->access$900(Lcom/samsung/android/personalpage/service/PersonalPageService;)Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    iget-object v3, v3, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_0

    .line 943
    :catch_0
    move-exception v1

    .line 944
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 951
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_5
    const-string v3, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 970
    const-string v3, "reason"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 971
    .local v2, "reason":I
    const-string v3, "PersonalPageService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EMERGENCY_STATE_CHANGED resaon:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 973
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    # invokes: Lcom/samsung/android/personalpage/service/PersonalPageService;->requestUserSwitch()V
    invoke-static {v3}, Lcom/samsung/android/personalpage/service/PersonalPageService;->access$800(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    goto/16 :goto_0

    .line 975
    .end local v2    # "reason":I
    :cond_6
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 976
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v3}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "personal_mode_auto_disable_when_screen_off"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_a

    .line 978
    const-string v3, "PersonalPageService"

    const-string v4, "ACTION_SCREEN_OFF going to turn off"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v3}, Lcom/samsung/android/personalpage/service/PersonalPageService;->cancelVerifyByUser()Z

    move-result v3

    if-nez v3, :cond_8

    .line 980
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    # invokes: Lcom/samsung/android/personalpage/service/PersonalPageService;->requestUserSwitch()V
    invoke-static {v3}, Lcom/samsung/android/personalpage/service/PersonalPageService;->access$800(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    .line 981
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const/4 v4, 0x1

    # setter for: Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsSkipTurnOffToast:Z
    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/PersonalPageService;->access$1002(Lcom/samsung/android/personalpage/service/PersonalPageService;Z)Z

    .line 984
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    iget-object v3, v3, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPrivateModeDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    iget-object v3, v3, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPrivateModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 985
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    iget-object v3, v3, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPrivateModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V

    .line 988
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    # getter for: Lcom/samsung/android/personalpage/service/PersonalPageService;->mPmManagerService:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;
    invoke-static {v3}, Lcom/samsung/android/personalpage/service/PersonalPageService;->access$900(Lcom/samsung/android/personalpage/service/PersonalPageService;)Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    iget-object v3, v3, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    # getter for: Lcom/samsung/android/personalpage/service/PersonalPageService;->mPmManagerService:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;
    invoke-static {v3}, Lcom/samsung/android/personalpage/service/PersonalPageService;->access$900(Lcom/samsung/android/personalpage/service/PersonalPageService;)Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    iget-object v3, v3, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 989
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    # getter for: Lcom/samsung/android/personalpage/service/PersonalPageService;->mPmManagerService:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;
    invoke-static {v3}, Lcom/samsung/android/personalpage/service/PersonalPageService;->access$900(Lcom/samsung/android/personalpage/service/PersonalPageService;)Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    iget-object v3, v3, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V

    .line 993
    :cond_a
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    # getter for: Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;
    invoke-static {v3}, Lcom/samsung/android/personalpage/service/PersonalPageService;->access$1100(Lcom/samsung/android/personalpage/service/PersonalPageService;)Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 994
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    # getter for: Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;
    invoke-static {v3}, Lcom/samsung/android/personalpage/service/PersonalPageService;->access$1100(Lcom/samsung/android/personalpage/service/PersonalPageService;)Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    # getter for: Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;
    invoke-static {v3}, Lcom/samsung/android/personalpage/service/PersonalPageService;->access$1100(Lcom/samsung/android/personalpage/service/PersonalPageService;)Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 995
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    # getter for: Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;
    invoke-static {v3}, Lcom/samsung/android/personalpage/service/PersonalPageService;->access$1100(Lcom/samsung/android/personalpage/service/PersonalPageService;)Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onWindowFocusChanged(Z)V

    .line 996
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const/4 v4, 0x0

    # setter for: Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;
    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/PersonalPageService;->access$1102(Lcom/samsung/android/personalpage/service/PersonalPageService;Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;)Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    goto/16 :goto_0
.end method
