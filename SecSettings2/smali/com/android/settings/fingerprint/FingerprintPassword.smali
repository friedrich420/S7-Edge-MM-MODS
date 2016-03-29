.class public Lcom/android/settings/fingerprint/FingerprintPassword;
.super Landroid/preference/PreferenceActivity;
.source "FingerprintPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;,
        Lcom/android/settings/fingerprint/FingerprintPassword$onKeyBackListener;
    }
.end annotation


# static fields
.field public static isScreenRotated:Z

.field private static mDPM:Landroid/app/admin/DevicePolicyManager;

.field private static mFingerpintOwnName:Ljava/lang/String;

.field private static mFingerprintIndex:I

.field private static mFingerprintPreviousStage:Ljava/lang/String;

.field private static mIsSetupWizard:Z

.field private static window:Landroid/view/Window;


# instance fields
.field private mOnKeyBackListener:Lcom/android/settings/fingerprint/FingerprintPassword$onKeyBackListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    const-string v0, ""

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;

    .line 76
    sput v1, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintIndex:I

    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerpintOwnName:Ljava/lang/String;

    .line 80
    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintPassword;->mIsSetupWizard:Z

    .line 84
    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintPassword;->isScreenRotated:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 158
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/settings/fingerprint/FingerprintPassword;->mIsSetupWizard:Z

    return v0
.end method

.method static synthetic access$100()Landroid/app/admin/DevicePolicyManager;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/admin/DevicePolicyManager;)Landroid/app/admin/DevicePolicyManager;
    .locals 0
    .param p0, "x0"    # Landroid/app/admin/DevicePolicyManager;

    .prologue
    .line 63
    sput-object p0, Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method static synthetic access$200()Landroid/view/Window;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/settings/fingerprint/FingerprintPassword;->window:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$202(Landroid/view/Window;)Landroid/view/Window;
    .locals 0
    .param p0, "x0"    # Landroid/view/Window;

    .prologue
    .line 63
    sput-object p0, Lcom/android/settings/fingerprint/FingerprintPassword;->window:Landroid/view/Window;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;

    return-object v0
.end method

.method public static getFingerPasswordQuality()I
    .locals 1

    .prologue
    .line 958
    const/high16 v0, 0x50000

    .line 959
    .local v0, "fingetPasswordQuality":I
    return v0
.end method

.method public static getShortPasswordLength()I
    .locals 1

    .prologue
    .line 953
    const/4 v0, 0x6

    .line 954
    .local v0, "shortPasswordLength":I
    return v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 89
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 96
    const-class v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/res/Configuration;

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    const-string v0, "FingerprintPassword"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 107
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    const-string v3, "previousStage"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;

    .line 108
    const-string v3, "fingerprint_setup_wizard"

    sget-object v4, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/fingerprint/FingerprintPassword;->mIsSetupWizard:Z

    .line 109
    const-string v3, "fingerIndex"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintIndex:I

    .line 110
    const-string v3, "ownName"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerpintOwnName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintPassword;->setFinishOnTouchOutside(Z)V

    .line 121
    :cond_0
    const v3, 0x7f0e07ae

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 122
    .local v2, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v2, v2}, Lcom/android/settings/fingerprint/FingerprintPassword;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 123
    const-string v3, "device_policy"

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintPassword;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    sput-object v3, Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 124
    return-void

    .line 111
    .end local v2    # "msg":Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "FingerprintPassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[mFingerprintPreviousStage] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " [mFingerprintIndex] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " [mFingerpintOwnName] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerpintOwnName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 135
    const-string v1, "FingerPrintPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword;->mOnKeyBackListener:Lcom/android/settings/fingerprint/FingerprintPassword$onKeyBackListener;

    invoke-interface {v1}, Lcom/android/settings/fingerprint/FingerprintPassword$onKeyBackListener;->onKeyBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    const-string v1, "FingerPrintPassword"

    const-string v2, "onKeyBack() is TRUE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintPassword;->setResult(I)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword;->finish()V

    .line 145
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method setOnKeyBackListener(Lcom/android/settings/fingerprint/FingerprintPassword$onKeyBackListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/fingerprint/FingerprintPassword$onKeyBackListener;

    .prologue
    .line 149
    if-eqz p1, :cond_0

    .line 150
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintPassword;->mOnKeyBackListener:Lcom/android/settings/fingerprint/FingerprintPassword$onKeyBackListener;

    .line 152
    :cond_0
    return-void
.end method
