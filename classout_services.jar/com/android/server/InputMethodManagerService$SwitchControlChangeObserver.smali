.class Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchControlChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 3

    .prologue
    .line 6361
    iput-object p1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    .line 6362
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6363
    return-void
.end method

.method private restorePreviousUsedInputMethod()V
    .registers 7

    .prologue
    .line 6410
    iget-object v2, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$3200(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10

    .line 6411
    const-string v2, "InputMethodManagerService"

    const-string v3, "Failed to return the previous IME becuase the stored info is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6422
    :cond_f
    :goto_f
    return-void

    .line 6414
    :cond_10
    iget-object v2, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v3, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$3200(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 6415
    .local v1, "info":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v2, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    # invokes: Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    invoke-static {v2, v3, v4}, Lcom/android/server/InputMethodManagerService;->access$1200(Lcom/android/server/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 6416
    .local v0, "currentIME":Ljava/lang/String;
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " UniversalSwitch restorePreviousUsedInputMethod  previous inputmethod : : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/InputMethodManagerService;->access$3200(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currentIME: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " InputMethodinfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6417
    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    iget-object v2, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$3200(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 6419
    iget-object v2, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$3200(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v5, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/InputMethodManagerService;->access$3200(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    goto :goto_f
.end method

.method private setDefaultUniversalSwitchInputMethod()V
    .registers 5

    .prologue
    .line 6383
    iget-object v0, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->isChineseRegion()Z
    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->access$500(Lcom/android/server/InputMethodManagerService;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 6384
    iget-object v0, p0, this$0:Lcom/android/server/InputMethodManagerService;

    const-string v1, "com.samsung.inputmethod/.SamsungIME"

    # invokes: Lcom/android/server/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/InputMethodManagerService;->access$600(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 6386
    const-string v0, "com.samsung.inputmethod/.SamsungIME"

    iget-object v1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 6387
    iget-object v0, p0, this$0:Lcom/android/server/InputMethodManagerService;

    const-string v1, "com.samsung.inputmethod/.SamsungIME"

    iget-object v2, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string v3, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 6406
    :cond_2f
    :goto_2f
    return-void

    .line 6392
    :cond_30
    const-string v0, "com.sec.android.inputmethod/.SamsungKeypad"

    iget-object v1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 6393
    iget-object v0, p0, this$0:Lcom/android/server/InputMethodManagerService;

    const-string v1, "com.sec.android.inputmethod/.SamsungKeypad"

    iget-object v2, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string v3, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    goto :goto_2f

    .line 6397
    :cond_4e
    iget-object v0, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->isJapaneseRegion()Z
    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->access$400(Lcom/android/server/InputMethodManagerService;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 6399
    const-string v0, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    iget-object v1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 6400
    iget-object v0, p0, this$0:Lcom/android/server/InputMethodManagerService;

    const-string v1, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    iget-object v2, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string v3, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    invoke-virtual {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    goto :goto_2f

    .line 6402
    :cond_74
    const-string v0, "com.sec.android.inputmethod/.SamsungKeypad"

    iget-object v1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 6403
    iget-object v0, p0, this$0:Lcom/android/server/InputMethodManagerService;

    const-string v1, "com.sec.android.inputmethod/.SamsungKeypad"

    iget-object v2, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string v3, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    goto :goto_2f
.end method


# virtual methods
.method public onChange(Z)V
    .registers 9
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 6366
    iget-object v3, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "universal_switch_enabled"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 6368
    .local v1, "universalSwitchState":I
    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "universalSwitchState changed to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6369
    if-ne v1, v2, :cond_2d

    move v0, v2

    .line 6370
    .local v0, "isUniversalSwitchEnabled":Z
    :cond_2d
    if-eqz v0, :cond_4d

    .line 6371
    iget-object v3, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    # invokes: Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    invoke-static {v4, v5, v6}, Lcom/android/server/InputMethodManagerService;->access$1200(Lcom/android/server/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/server/InputMethodManagerService;->access$3202(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 6373
    invoke-direct {p0}, setDefaultUniversalSwitchInputMethod()V

    .line 6374
    iget-object v3, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->setShowImeWithHardKeyboard(Z)V

    .line 6380
    :goto_4c
    return-void

    .line 6377
    :cond_4d
    invoke-direct {p0}, restorePreviousUsedInputMethod()V

    goto :goto_4c
.end method
