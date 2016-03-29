.class public Lcom/android/settings/fingerprint/FingerprintEnrollOnboard;
.super Lcom/android/settings/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollOnboard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;-><init>()V

    return-void
.end method

.method private launchChooseLock()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollOnboard;->getChooseLockIntent()Landroid/content/Intent;

    move-result-object v2

    .line 62
    .local v2, "intent":Landroid/content/Intent;
    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollOnboard;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v0

    .line 63
    .local v0, "challenge":J
    const-string v3, "minimum_quality"

    const/high16 v4, 0x10000

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    const-string v3, "hide_disabled_prefs"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    const-string v3, "has_challenge"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    const-string v3, "challenge"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 68
    const-string v3, "for_fingerprint"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v2, v5}, Lcom/android/settings/fingerprint/FingerprintEnrollOnboard;->startActivityForResult(Landroid/content/Intent;I)V

    .line 70
    return-void
.end method

.method private launchFindSensor([B)V
    .locals 2
    .param p1, "token"    # [B

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollOnboard;->getFindSensorIntent()Landroid/content/Intent;

    move-result-object v0

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollOnboard;->startActivity(Landroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollOnboard;->finish()V

    .line 81
    return-void
.end method


# virtual methods
.method protected getChooseLockIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getFindSensorIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 50
    if-ne p1, v2, :cond_0

    if-ne p2, v2, :cond_0

    .line 51
    const-string v1, "hw_auth_token"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 53
    .local v0, "token":[B
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollOnboard;->setResult(I)V

    .line 54
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollOnboard;->launchFindSensor([B)V

    .line 58
    .end local v0    # "token":[B
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f0400e0

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollOnboard;->setContentView(I)V

    .line 40
    const v0, 0x7f0e0208

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollOnboard;->setHeaderText(I)V

    .line 41
    return-void
.end method

.method protected onNextButtonClick()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollOnboard;->launchChooseLock()V

    .line 46
    return-void
.end method
