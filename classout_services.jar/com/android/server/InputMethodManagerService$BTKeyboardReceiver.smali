.class Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BTKeyboardReceiver"
.end annotation


# instance fields
.field private mIsBTConnect:Z

.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 3

    .prologue
    .line 5909
    iput-object p1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 5910
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsBTConnect:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5914
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 5915
    .local v2, "intentAction":Ljava/lang/String;
    const-string v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InputMethodService onReceive() intentAction"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5916
    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_da

    .line 5917
    const-string v6, "android.bluetooth.adapter.extra.STATE"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 5919
    .local v5, "state":I
    const-string v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BT Setting State] State ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5920
    # getter for: Lcom/android/server/InputMethodManagerService;->keyboardState:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$300()I

    move-result v6

    and-int/lit8 v0, v6, 0x2

    .line 5922
    .local v0, "checkBTKeyboard":I
    const/16 v6, 0xa

    if-ne v5, v6, :cond_a6

    .line 5923
    const-string v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BT Setting on -> off] mBTKeyboardCount ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$3100()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", KEYBOARD_BT("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5924
    const/4 v6, 0x2

    if-ne v0, v6, :cond_9e

    .line 5925
    const/4 v6, -0x3

    # &= operator for: Lcom/android/server/InputMethodManagerService;->keyboardState:I
    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->access$372(I)I

    .line 5926
    # getter for: Lcom/android/server/InputMethodManagerService;->prevAutoMode:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$900()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_95

    .line 5927
    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "screen_brightness_mode"

    # getter for: Lcom/android/server/InputMethodManagerService;->prevAutoMode:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$900()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5929
    :cond_95
    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v6}, Lcom/android/server/InputMethodManagerService;->hideKeyboardDialog()V

    .line 5930
    const/4 v6, 0x0

    # setter for: Lcom/android/server/InputMethodManagerService;->prevAutoMode:I
    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->access$902(I)I

    .line 5932
    :cond_9e
    const/4 v6, 0x0

    # setter for: Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I
    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->access$3102(I)I

    .line 5933
    const/4 v6, 0x0

    iput-boolean v6, p0, mIsBTConnect:Z

    .line 6000
    .end local v0    # "checkBTKeyboard":I
    .end local v5    # "state":I
    :cond_a5
    :goto_a5
    return-void

    .line 5934
    .restart local v0    # "checkBTKeyboard":I
    .restart local v5    # "state":I
    :cond_a6
    const/16 v6, 0xc

    if-ne v5, v6, :cond_a5

    .line 5935
    const-string v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BT Setting off -> on] mBTKeyboardCount ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$3100()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", KEYBOARD_BT("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5936
    const/4 v6, 0x1

    iput-boolean v6, p0, mIsBTConnect:Z

    goto :goto_a5

    .line 5938
    .end local v0    # "checkBTKeyboard":I
    .end local v5    # "state":I
    :cond_da
    const-string v6, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a5

    .line 5940
    const-string v6, "android.bluetooth.profile.extra.STATE"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 5941
    .local v1, "extra":I
    const-string v6, "android.bluetooth.profile.extra.isKeyboard"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 5942
    .local v3, "isKeyboard":Z
    const-string v6, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 5944
    .local v4, "prevState":I
    const-string v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive() isKeyboard = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5945
    # getter for: Lcom/android/server/InputMethodManagerService;->keyboardState:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$300()I

    move-result v6

    and-int/lit8 v0, v6, 0x2

    .line 5948
    .restart local v0    # "checkBTKeyboard":I
    if-eqz v3, :cond_a5

    .line 5949
    const-string v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive() state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", prevState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5950
    const/4 v6, 0x2

    if-ne v1, v6, :cond_1fe

    .line 5951
    const/4 v6, 0x1

    iput-boolean v6, p0, mIsBTConnect:Z

    .line 5952
    # getter for: Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$3100()I

    move-result v6

    if-gez v6, :cond_16d

    .line 5953
    const-string v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[STATE_CONNECTED] change mBTKeyboardCount "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$3100()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "--> 0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5954
    const/4 v6, 0x0

    # setter for: Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I
    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->access$3102(I)I

    .line 5956
    :cond_16d
    # operator++ for: Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$3108()I

    .line 5957
    const-string v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[STATE_CONNECTED] mBTKeyboardCount[+] -->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$3100()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5958
    const/4 v6, 0x2

    # |= operator for: Lcom/android/server/InputMethodManagerService;->keyboardState:I
    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->access$376(I)I

    .line 5959
    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->isJapaneseRegion()Z
    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->access$400(Lcom/android/server/InputMethodManagerService;)Z

    move-result v6

    if-eqz v6, :cond_1d2

    .line 5960
    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v6}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEforJapaneseKeyboard()V

    .line 5966
    :goto_19d
    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v6}, Lcom/android/server/InputMethodManagerService;->hideKeyboardDialog()V

    .line 5967
    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 5968
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Sip_SupportKcmForHwKeyboard"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1f7

    .line 5969
    # getter for: Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$800()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a5

    .line 5970
    # getter for: Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$800()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v7, v7, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f0

    .line 5971
    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/server/InputMethodManagerService;->showKeyboardNotiDailog(I)V

    goto/16 :goto_a5

    .line 5961
    :cond_1d2
    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->isChineseRegion()Z
    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->access$500(Lcom/android/server/InputMethodManagerService;)Z

    move-result v6

    if-eqz v6, :cond_1ea

    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    const-string v7, "com.samsung.inputmethod/.SamsungIME"

    # invokes: Lcom/android/server/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z
    invoke-static {v6, v7}, Lcom/android/server/InputMethodManagerService;->access$600(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1ea

    .line 5962
    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v6}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEforChineseKeyboard()V

    goto :goto_19d

    .line 5964
    :cond_1ea
    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v6}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEForKeyboard()V

    goto :goto_19d

    .line 5975
    :cond_1f0
    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v6}, Lcom/android/server/InputMethodManagerService;->showtoastkeyboardconnected()V

    goto/16 :goto_a5

    .line 5980
    :cond_1f7
    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v6}, Lcom/android/server/InputMethodManagerService;->showtoastkeyboardconnected()V

    goto/16 :goto_a5

    .line 5983
    :cond_1fe
    const/4 v6, 0x2

    if-ne v4, v6, :cond_a5

    .line 5984
    # getter for: Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$3100()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_22e

    .line 5985
    const-string v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[prevState : STATE_CONNECTED] change mBTKeyboardCount "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$3100()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "--> 1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5986
    const/4 v6, 0x1

    # setter for: Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I
    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->access$3102(I)I

    .line 5988
    :cond_22e
    # --operator for: Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$3106()I

    move-result v6

    if-eqz v6, :cond_241

    iget-boolean v6, p0, mIsBTConnect:Z

    if-nez v6, :cond_263

    # getter for: Lcom/android/server/InputMethodManagerService;->keyboardState:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$300()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_263

    .line 5989
    :cond_241
    const/4 v6, -0x3

    # &= operator for: Lcom/android/server/InputMethodManagerService;->keyboardState:I
    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->access$372(I)I

    .line 5990
    # getter for: Lcom/android/server/InputMethodManagerService;->prevAutoMode:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$900()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_25a

    .line 5991
    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "screen_brightness_mode"

    # getter for: Lcom/android/server/InputMethodManagerService;->prevAutoMode:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$900()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5993
    :cond_25a
    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v6}, Lcom/android/server/InputMethodManagerService;->hideKeyboardDialog()V

    .line 5994
    const/4 v6, 0x0

    # setter for: Lcom/android/server/InputMethodManagerService;->prevAutoMode:I
    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->access$902(I)I

    .line 5996
    :cond_263
    const-string v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[prevState : STATE_CONNECTED] mBTKeyboardCount[-] -->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$3100()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "keyboardState("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/server/InputMethodManagerService;->keyboardState:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$300()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a5
.end method
