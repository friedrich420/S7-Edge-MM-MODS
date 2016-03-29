.class public Lcom/android/settings/KnoxChooseLockFingerprintPassword;
.super Lcom/android/settings/SettingsActivity;
.source "KnoxChooseLockFingerprintPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;
    }
.end annotation


# static fields
.field public static isChangePwdRequired:Z

.field private static mForFingerprint:Z

.field private static mForPrivateModeBackupKey:Z

.field private static mFromPersonalPage:Z

.field private static mImm:Landroid/view/inputmethod/InputMethodManager;

.field private static mIsFromKnoxFinger:Z

.field private static mPersonalPage_isPin:Z


# instance fields
.field private mAllowHomeAndBack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    sput-boolean v1, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->isChangePwdRequired:Z

    .line 132
    sput-boolean v1, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mForFingerprint:Z

    .line 133
    sput-boolean v1, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mIsFromKnoxFinger:Z

    .line 135
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 137
    sput-boolean v1, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mFromPersonalPage:Z

    .line 138
    sput-boolean v1, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mPersonalPage_isPin:Z

    .line 139
    sput-boolean v1, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mForPrivateModeBackupKey:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mAllowHomeAndBack:Z

    .line 287
    return-void
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mPersonalPage_isPin:Z

    return v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mIsFromKnoxFinger:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings/KnoxChooseLockFingerprintPassword;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockFingerprintPassword;
    .param p1, "x1"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->sendIntentToMDMFW(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/KnoxChooseLockFingerprintPassword;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockFingerprintPassword;
    .param p1, "x1"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->sendIntentToKnoxKeyguard(I)V

    return-void
.end method

.method static synthetic access$400()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mFromPersonalPage:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 115
    sput-boolean p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mFromPersonalPage:Z

    return p0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mForPrivateModeBackupKey:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/KnoxChooseLockFingerprintPassword;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockFingerprintPassword;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->allowHomeAndBack(Z)V

    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mForFingerprint:Z

    return v0
.end method

.method private allowHomeAndBack(Z)V
    .locals 4
    .param p1, "allow"    # Z

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mAllowHomeAndBack:Z

    .line 254
    if-nez p1, :cond_0

    .line 255
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 257
    .local v0, "mWindowManager":Landroid/view/IWindowManager;
    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 258
    const/16 v1, 0xbb

    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 259
    const/16 v1, 0x3e9

    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v0    # "mWindowManager":Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    return-void

    .line 261
    .restart local v0    # "mWindowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static createIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quality"    # I
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I
    .param p4, "requirePasswordToDecrypt"    # Z
    .param p5, "confirmCredentials"    # Z

    .prologue
    .line 152
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/settings/KnoxChooseLockFingerprintPassword;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 153
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "lockscreen.password_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    const-string v1, "lockscreen.password_min"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    const-string v1, "lockscreen.password_max"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    const-string v1, "extra_require_password"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    return-object v0
.end method

.method private sendIntentToKnoxKeyguard(I)V
    .locals 4
    .param p1, "resultCode"    # I

    .prologue
    .line 278
    const-string v1, "KnoxChooseLockFingerprintPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIntentToKnoxKeyguard : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, "knoxIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.knox.kss"

    const-string v3, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 281
    const-string v1, "resetResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 283
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 284
    return-void
.end method

.method private sendIntentToMDMFW(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 273
    return-void
.end method


# virtual methods
.method getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    const-class v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 144
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->getFragmentClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 190
    const-class v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 201
    sput-boolean v4, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->isChangePwdRequired:Z

    .line 206
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 207
    const v1, 0x7f0e0270

    invoke-virtual {p0, v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 208
    .local v0, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from_personal"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mFromPersonalPage:Z

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "personal_mQuality"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mPersonalPage_isPin:Z

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "for_fingerprint"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mForFingerprint:Z

    .line 212
    const-string v1, "KnoxChooseLockFingerprintPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mForFingerprint] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mForFingerprint:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "forPrivateBackupKey"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mForPrivateModeBackupKey:Z

    .line 214
    const-string v1, "KnoxChooseLockFingerprintPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mForPrivateModeBackupKey] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mForPrivateModeBackupKey:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isFromKnoxFinger"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mIsFromKnoxFinger:Z

    .line 217
    const-string v1, "KnoxChooseLockFingerprintPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[KNOX FINGER] : init, mIsFromKnoxFinger:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mIsFromKnoxFinger:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 224
    if-eq p1, v3, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_6

    .line 225
    :cond_0
    sget-boolean v1, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->isChangePwdRequired:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mAllowHomeAndBack:Z

    if-nez v1, :cond_4

    .line 226
    :cond_1
    if-ne p1, v3, :cond_3

    .line 227
    # getter for: Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mKnoxChooseLockFingerprintPasswordFragment:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;
    invoke-static {}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->access$000()Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    move-result-object v0

    .line 228
    .local v0, "mFragmentObj":Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;
    invoke-virtual {v0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 229
    # getter for: Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;
    invoke-static {v0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->access$100(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    if-eq v1, v2, :cond_2

    # getter for: Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;
    invoke-static {v0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->access$100(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    if-ne v1, v2, :cond_3

    .line 230
    :cond_2
    # getter for: Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->access$200(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    sget-object v1, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->updateStage(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;)V

    .line 235
    .end local v0    # "mFragmentObj":Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;
    :cond_3
    const/4 v1, 0x1

    .line 249
    :goto_0
    return v1

    .line 238
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mAllowHomeAndBack:Z

    if-eqz v1, :cond_5

    .line 239
    invoke-direct {p0, v2}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->sendIntentToMDMFW(I)V

    .line 243
    :cond_5
    iget-boolean v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mAllowHomeAndBack:Z

    if-eqz v1, :cond_6

    .line 244
    invoke-direct {p0, v2}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->sendIntentToKnoxKeyguard(I)V

    .line 249
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method
