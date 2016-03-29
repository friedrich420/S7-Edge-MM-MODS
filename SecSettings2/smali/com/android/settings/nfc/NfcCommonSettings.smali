.class public Lcom/android/settings/nfc/NfcCommonSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NfcCommonSettings.java"


# static fields
.field static final DBG:Z

.field public static final isGlobal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 31
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/nfc/NfcCommonSettings;->DBG:Z

    .line 33
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    sput-boolean v2, Lcom/android/settings/nfc/NfcCommonSettings;->isGlobal:Z

    return-void

    :cond_0
    move v0, v2

    .line 31
    goto :goto_0

    :cond_1
    move v2, v1

    .line 33
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x45

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v2, 0x7f0d02f1

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget-boolean v0, Lcom/android/settings/nfc/NfcCommonSettings;->isGlobal:Z

    if-eqz v0, :cond_1

    .line 45
    sget-boolean v0, Lcom/android/settings/nfc/NfcCommonSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcSettings"

    const-string v1, "## Global NFC Settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcCommonSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/android/settings/nfc/NfcSettings;

    invoke-direct {v1}, Lcom/android/settings/nfc/NfcSettings;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_1
    sget-boolean v0, Lcom/android/settings/nfc/NfcCommonSettings;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "NfcSettings"

    const-string v1, "## JPN NFC Settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcCommonSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;

    invoke-direct {v1}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
