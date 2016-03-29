.class public Lcom/android/settings/ChooseLockAdditionalPin;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockAdditionalPin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;
    }
.end annotation


# static fields
.field private static mForAppLockBackupKey:Z

.field private static mForFingerprint:Z

.field private static mForPrivateModeBackupKey:Z

.field private static mFromAppLock:Z

.field private static mFromPersonalPage:Z

.field private static mImm:Landroid/view/inputmethod/InputMethodManager;

.field private static mIsFromKnoxFinger:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    sput-boolean v0, Lcom/android/settings/ChooseLockAdditionalPin;->mFromPersonalPage:Z

    .line 73
    sput-boolean v0, Lcom/android/settings/ChooseLockAdditionalPin;->mForPrivateModeBackupKey:Z

    .line 74
    sput-boolean v0, Lcom/android/settings/ChooseLockAdditionalPin;->mIsFromKnoxFinger:Z

    .line 76
    sput-boolean v0, Lcom/android/settings/ChooseLockAdditionalPin;->mFromAppLock:Z

    .line 77
    sput-boolean v0, Lcom/android/settings/ChooseLockAdditionalPin;->mForAppLockBackupKey:Z

    .line 78
    sput-boolean v0, Lcom/android/settings/ChooseLockAdditionalPin;->mForFingerprint:Z

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/ChooseLockAdditionalPin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    .line 136
    return-void
.end method

.method static synthetic access$100()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/settings/ChooseLockAdditionalPin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/settings/ChooseLockAdditionalPin;->mForPrivateModeBackupKey:Z

    return v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/settings/ChooseLockAdditionalPin;->mForAppLockBackupKey:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/settings/ChooseLockAdditionalPin;->mIsFromKnoxFinger:Z

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/settings/ChooseLockAdditionalPin;->mFromPersonalPage:Z

    return v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/settings/ChooseLockAdditionalPin;->mFromAppLock:Z

    return v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/settings/ChooseLockAdditionalPin;->mForFingerprint:Z

    return v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 84
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 100
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockAdditionalPin;->requestWindowFeature(I)Z

    .line 103
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from_personal"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockAdditionalPin;->mFromPersonalPage:Z

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from_applock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockAdditionalPin;->mFromAppLock:Z

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "forPrivateBackupKey"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockAdditionalPin;->mForPrivateModeBackupKey:Z

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "forAppLockBackupKey"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockAdditionalPin;->mForAppLockBackupKey:Z

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isFromKnoxFinger"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockAdditionalPin;->mIsFromKnoxFinger:Z

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "for_fingerprint"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockAdditionalPin;->mForFingerprint:Z

    .line 114
    const-string v1, "ChooseLockAdditionalPin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFromAppLock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings/ChooseLockAdditionalPin;->mFromAppLock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v0, ""

    .line 117
    .local v0, "msg":Ljava/lang/CharSequence;
    sget-boolean v1, Lcom/android/settings/ChooseLockAdditionalPin;->mFromPersonalPage:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/settings/ChooseLockAdditionalPin;->mFromAppLock:Z

    if-eqz v1, :cond_2

    .line 118
    :cond_1
    const v1, 0x7f0e07ae

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockAdditionalPin;->getText(I)Ljava/lang/CharSequence;

    .line 122
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockAdditionalPin;->setTitle(Ljava/lang/CharSequence;)V

    .line 123
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockAdditionalPin;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    sput-object v1, Lcom/android/settings/ChooseLockAdditionalPin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 124
    return-void

    .line 120
    :cond_2
    const v1, 0x7f0e07c6

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockAdditionalPin;->getText(I)Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 128
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockAdditionalPin;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 130
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 132
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onDestroy()V

    .line 133
    return-void
.end method
