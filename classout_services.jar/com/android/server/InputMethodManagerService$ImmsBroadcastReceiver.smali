.class Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImmsBroadcastReceiver"
.end annotation


# instance fields
.field private final LID_OPEN:I

.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 3

    .prologue
    .line 836
    iput-object p1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 837
    const/4 v0, 0x1

    iput v0, p0, LID_OPEN:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 843
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 845
    iget-object v5, p0, this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v5}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenu()V

    .line 888
    :cond_14
    :goto_14
    return-void

    .line 849
    :cond_15
    const-string v6, "android.intent.action.USER_ADDED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_25

    const-string v6, "android.intent.action.USER_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 851
    :cond_25
    iget-object v5, p0, this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v5}, Lcom/android/server/InputMethodManagerService;->updateCurrentProfileIds()V

    goto :goto_14

    .line 853
    :cond_2b
    const-string v6, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 854
    const-string/jumbo v5, "setting_name"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 855
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v5, "enabled_input_methods"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 856
    const-string/jumbo v5, "previous_value"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 858
    .local v4, "prevValue":Ljava/lang/String;
    const-string/jumbo v5, "new_value"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 860
    .local v3, "newValue":Ljava/lang/String;
    iget-object v5, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v3}, Lcom/android/server/InputMethodManagerService;->restoreEnabledInputMethods(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 862
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "newValue":Ljava/lang/String;
    .end local v4    # "prevValue":Ljava/lang/String;
    :cond_59
    const-string v6, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_89

    .line 864
    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    const-string/jumbo v7, "enable"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v6, Lcom/android/server/InputMethodManagerService;->mIsScreenPinnedState:Z

    .line 865
    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "lock_to_app_exit_locked"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_87

    .line 866
    .local v1, "isLockEnabledOnUnpin":Z
    :goto_79
    iget-object v5, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-boolean v5, v5, Lcom/android/server/InputMethodManagerService;->mIsScreenPinnedState:Z

    if-nez v5, :cond_14

    if-eqz v1, :cond_14

    .line 867
    iget-object v5, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->hideImeNotification()V
    invoke-static {v5}, Lcom/android/server/InputMethodManagerService;->access$200(Lcom/android/server/InputMethodManagerService;)V

    goto :goto_14

    .end local v1    # "isLockEnabledOnUnpin":Z
    :cond_87
    move v1, v5

    .line 865
    goto :goto_79

    .line 871
    :cond_89
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bf

    iget-object v5, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-boolean v5, v5, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v5, :cond_bf

    .line 873
    iget-object v5, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v5}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->getKeyboardState()I

    move-result v5

    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v5, v7, :cond_14

    .line 874
    iget-object v5, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v5}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardPerflockAcquire()V

    .line 875
    iget-object v5, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v1}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->setKeyboardState(I)V

    goto/16 :goto_14

    .line 878
    :cond_bf
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f5

    iget-object v5, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-boolean v5, v5, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-nez v5, :cond_f5

    .line 880
    iget-object v5, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v5}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->getKeyboardState()I

    move-result v5

    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v5, v1, :cond_14

    .line 881
    iget-object v5, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v5}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardPerflockRelease()V

    .line 882
    iget-object v5, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v7}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->setKeyboardState(I)V

    goto/16 :goto_14

    .line 886
    :cond_f5
    const-string v5, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14
.end method
