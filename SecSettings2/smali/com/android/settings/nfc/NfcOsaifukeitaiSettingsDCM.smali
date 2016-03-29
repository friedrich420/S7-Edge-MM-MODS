.class public Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;
.super Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;
.source "NfcOsaifukeitaiSettingsDCM.java"


# static fields
.field private static isNfcTypeBF:Z


# instance fields
.field private mABeam:Landroid/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

.field private mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

.field private mNfcTypeSettings:Landroid/preference/PreferenceScreen;

.field private mNfclock:Landroid/preference/PreferenceScreen;

.field private mRWp2p:Landroid/preference/PreferenceScreen;

.field private mRetry_counter:I

.field private mfilter:Landroid/content/IntentFilter;

.field nfcBroadcast:Landroid/content/BroadcastReceiver;

.field private uimDetectAction:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->isNfcTypeBF:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfclock:Landroid/preference/PreferenceScreen;

    .line 70
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mRWp2p:Landroid/preference/PreferenceScreen;

    .line 71
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mABeam:Landroid/preference/PreferenceScreen;

    .line 72
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcTypeSettings:Landroid/preference/PreferenceScreen;

    .line 73
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mHandler:Landroid/os/Handler;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mRetry_counter:I

    .line 96
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM$1;-><init>(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    .line 429
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM$2;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM$2;-><init>(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->uimDetectAction:Ljava/lang/Runnable;

    .line 86
    return-void
.end method

.method constructor <init>(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "mNfclock"    # Landroid/preference/PreferenceScreen;
    .param p2, "mRWp2p"    # Landroid/preference/PreferenceScreen;
    .param p3, "mABeam"    # Landroid/preference/PreferenceScreen;
    .param p4, "mNfcTypeSettings"    # Landroid/preference/PreferenceScreen;
    .param p5, "mNfcPaymentSettings"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfclock:Landroid/preference/PreferenceScreen;

    .line 70
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mRWp2p:Landroid/preference/PreferenceScreen;

    .line 71
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mABeam:Landroid/preference/PreferenceScreen;

    .line 72
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcTypeSettings:Landroid/preference/PreferenceScreen;

    .line 73
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mHandler:Landroid/os/Handler;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mRetry_counter:I

    .line 96
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM$1;-><init>(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    .line 429
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM$2;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM$2;-><init>(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->uimDetectAction:Ljava/lang/Runnable;

    .line 90
    iput-object p1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfclock:Landroid/preference/PreferenceScreen;

    .line 91
    iput-object p2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mRWp2p:Landroid/preference/PreferenceScreen;

    .line 92
    iput-object p3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mABeam:Landroid/preference/PreferenceScreen;

    .line 93
    iput-object p4, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcTypeSettings:Landroid/preference/PreferenceScreen;

    .line 94
    iput-object p5, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 95
    return-void
.end method

.method private List_items_update_of_ABeam(II)V
    .locals 6
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 324
    const-string v2, "[NfcOsaifukeitaiSettingsDCM]"

    const-string v3, "[S] List_items_update_of_ABeam"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v1, 0x0

    .line 327
    .local v1, "summary_resId":I
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mABeam:Landroid/preference/PreferenceScreen;

    if-nez v2, :cond_0

    .line 362
    :goto_0
    return-void

    .line 330
    :cond_0
    if-gt v4, p1, :cond_3

    const/16 v2, 0xf

    if-gt p1, v2, :cond_3

    .line 331
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 332
    const v1, 0x7f0e1733

    .line 357
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 358
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 361
    :cond_2
    const-string v2, "[NfcOsaifukeitaiSettingsDCM]"

    const-string v3, "[E] List_items_update_of_ABeam"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 334
    :cond_3
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 336
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getABeamStatus()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 337
    const v1, 0x7f0e1732

    .line 343
    :goto_2
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getRWP2pStatus()I

    move-result v0

    .line 345
    .local v0, "result_rwp2p":I
    const/16 v2, 0xd

    if-ne v0, v2, :cond_6

    .line 346
    sget-boolean v2, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->isNfcTypeBF:Z

    if-ne v2, v4, :cond_5

    .line 347
    const-string v2, "[NfcOsaifukeitaiSettingsDCM]"

    const-string v3, "[*] List_items_update_of_ABeam : ABeam Grayed out"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    .line 339
    .end local v0    # "result_rwp2p":I
    :cond_4
    const v1, 0x7f0e1733

    goto :goto_2

    .line 350
    .restart local v0    # "result_rwp2p":I
    :cond_5
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    .line 352
    :cond_6
    const/16 v2, 0xb

    if-ne v0, v2, :cond_1

    .line 353
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method

.method private List_items_update_of_NfcTypeSettings(II)V
    .locals 10
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 365
    const-string v6, "[NfcOsaifukeitaiSettingsDCM]"

    const-string v7, "[S] List_items_update_of_NfcTypeSettings "

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v6, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcTypeSettings:Landroid/preference/PreferenceScreen;

    if-nez v6, :cond_0

    .line 401
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v6, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcTypeSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 373
    iget-object v6, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v6}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getNfcTypeSettings()I

    move-result v0

    .line 374
    .local v0, "Value":I
    iget-object v6, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 375
    .local v1, "res":Landroid/content/res/Resources;
    const v6, 0x7f0e1721

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 376
    .local v2, "stringexp1":Ljava/lang/String;
    const v6, 0x7f0e1722

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, "stringexp2":Ljava/lang/String;
    const-string v4, ""

    .line 378
    .local v4, "stringsummary":Ljava/lang/String;
    const-string v5, ""

    .line 380
    .local v5, "summary":Ljava/lang/String;
    if-nez v0, :cond_4

    .line 381
    const v6, 0x7f0e1723

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 382
    sput-boolean v9, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->isNfcTypeBF:Z

    .line 393
    :cond_1
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 394
    iget-object v6, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcTypeSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 396
    if-le v8, p1, :cond_2

    if-gt v8, p2, :cond_3

    .line 397
    :cond_2
    iget-object v6, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcTypeSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 400
    :cond_3
    const-string v6, "[NfcOsaifukeitaiSettingsDCM]"

    const-string v7, "[E] List_items_update_of_NfcTypeSettings"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 383
    :cond_4
    if-ne v0, v8, :cond_5

    .line 384
    const v6, 0x7f0e1724

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 385
    sput-boolean v9, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->isNfcTypeBF:Z

    goto :goto_1

    .line 386
    :cond_5
    const/4 v6, 0x2

    if-ne v0, v6, :cond_1

    .line 387
    const v6, 0x7f0e1725

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 389
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->setDisabledBeamSettings()V

    .line 390
    sput-boolean v8, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->isNfcTypeBF:Z

    goto :goto_1
.end method

.method private List_items_update_of_TapAndPay(II)V
    .locals 3
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    const/4 v2, 0x1

    .line 404
    const-string v0, "[NfcOsaifukeitaiSettingsDCM]"

    const-string v1, "[S] List_items_update_of_TapAndPay"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 417
    :goto_0
    return-void

    .line 410
    :cond_0
    if-gt v2, p1, :cond_1

    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 416
    :goto_1
    const-string v0, "[NfcOsaifukeitaiSettingsDCM]"

    const-string v1, "[E] List_items_update_of_TapAndPay"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method

.method private List_items_update_of_nfclock(II)V
    .locals 7
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    const/16 v6, 0x100

    const/16 v5, 0xf

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 203
    const-string v1, "[NfcOsaifukeitaiSettingsDCM]"

    const-string v2, "[S] List_items_update_of_nfclock "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfclock:Landroid/preference/PreferenceScreen;

    if-nez v1, :cond_0

    .line 263
    :goto_0
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x0

    .line 211
    .local v0, "summary_resId":I
    if-ne p1, v6, :cond_2

    if-ne p2, v6, :cond_2

    .line 212
    const-string v1, "[NfcOsaifukeitaiSettingsDCM]"

    const-string v2, "[*] List_items_update_of_nfclock   :   Get CLF Status and UIM Status  is Error"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const v0, 0x7f0e171f

    .line 258
    :goto_1
    if-eqz v0, :cond_1

    .line 259
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 262
    :cond_1
    const-string v1, "[NfcOsaifukeitaiSettingsDCM]"

    const-string v2, "[E] List_items_update_of_nfclock"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    :cond_2
    if-gt v4, p2, :cond_4

    const/4 v1, 0x3

    if-gt p2, v1, :cond_4

    .line 218
    if-gt v4, p1, :cond_3

    if-gt p1, v5, :cond_3

    .line 220
    const v0, 0x7f0e172f

    goto :goto_1

    .line 223
    :cond_3
    const v0, 0x7f0e1731

    goto :goto_1

    .line 228
    :cond_4
    if-gt v4, p1, :cond_5

    if-gt p1, v5, :cond_5

    .line 230
    const v0, 0x7f0e1730

    goto :goto_1

    .line 234
    :cond_5
    if-ne p1, v3, :cond_7

    .line 237
    if-ne p2, v3, :cond_6

    .line 239
    const v0, 0x7f0e171c

    goto :goto_1

    .line 242
    :cond_6
    const v0, 0x7f0e171d

    goto :goto_1

    .line 246
    :cond_7
    if-ne p2, v3, :cond_8

    .line 248
    const v0, 0x7f0e171e

    goto :goto_1

    .line 251
    :cond_8
    const v0, 0x7f0e171f

    goto :goto_1
.end method

.method private List_items_update_of_nfrwp2p(II)V
    .locals 13
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 266
    const-string v0, "[NfcOsaifukeitaiSettingsDCM]"

    const-string v3, "[S] List_items_update_of_nfrwp2p"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v10, 0x0

    .line 270
    .local v10, "summary_resId":I
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mRWp2p:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 276
    :cond_0
    const/4 v7, 0x1

    .line 279
    .local v7, "mMdmNfcPolicy":Z
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 280
    .local v1, "mUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isNFCEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 282
    .local v8, "mRestrictionCr":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 283
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 285
    :try_start_0
    const-string v0, "isNFCEnabled"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    const/4 v7, 0x0

    .line 291
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 296
    :cond_2
    :goto_1
    if-gt v12, p1, :cond_4

    const/16 v0, 0xf

    if-gt p1, v0, :cond_4

    .line 297
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mRWp2p:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 298
    const v10, 0x7f0e1733

    .line 316
    :goto_2
    if-eqz v10, :cond_3

    .line 317
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mRWp2p:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 320
    :cond_3
    const-string v0, "[NfcOsaifukeitaiSettingsDCM]"

    const-string v2, "[E] List_items_update_of_nfrwp2p"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 288
    :catch_0
    move-exception v6

    .line 289
    .local v6, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_1
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 299
    :cond_4
    if-nez v7, :cond_5

    .line 300
    const-string v0, "[NfcOsaifukeitaiSettingsDCM]"

    const-string v2, "EDM : NFC policy disabled. R/W, P2P function can\'t be enabled"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mRWp2p:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 302
    const v10, 0x7f0e1733

    goto :goto_2

    .line 304
    :cond_5
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mRWp2p:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 306
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getRWP2pStatus()I

    move-result v9

    .line 307
    .local v9, "result":I
    const/16 v0, 0xd

    if-ne v9, v0, :cond_6

    .line 308
    const v10, 0x7f0e1732

    goto :goto_2

    .line 309
    :cond_6
    const/16 v0, 0xb

    if-ne v9, v0, :cond_7

    .line 310
    const v10, 0x7f0e1733

    goto :goto_2

    .line 312
    :cond_7
    const-string v0, "[NfcOsaifukeitaiSettingsDCM]"

    const-string v2, "[*] List_items_update_of_nfrwp2p not changed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;)Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->list_items_update(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mRetry_counter:I

    return v0
.end method

.method static synthetic access$208(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mRetry_counter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mRetry_counter:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfclock:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->uimDetectAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method private list_items_update(II)V
    .locals 3
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    .line 190
    const-string v0, "[NfcOsaifukeitaiSettingsDCM]"

    const-string v1, "[S] list_items_update"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v0, "[NfcOsaifukeitaiSettingsDCM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[*] list_items_update  :  clfLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , uimLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->List_items_update_of_nfclock(II)V

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->List_items_update_of_nfrwp2p(II)V

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->List_items_update_of_NfcTypeSettings(II)V

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->List_items_update_of_ABeam(II)V

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->List_items_update_of_TapAndPay(II)V

    .line 199
    const-string v0, "[NfcOsaifukeitaiSettingsDCM]"

    const-string v1, "[E] list_items_update"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method

.method private setDisabledBeamSettings()V
    .locals 3

    .prologue
    .line 420
    const-string v1, "[NfcOsaifukeitaiSettingsDCM]"

    const-string v2, "[S] setDisabledBeamSettings"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->setABeamStatus(Z)Z

    .line 423
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.felica.action.NFCTYPE_STATUS_BF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 426
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v1, "[NfcOsaifukeitaiSettingsDCM]"

    const-string v2, "[E] setDisabledBeamSettings"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 139
    const-string v0, "[NfcOsaifukeitaiSettingsDCM]"

    const-string v1, "[S] onCreateDCM"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iput-object p1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mContext:Landroid/content/Context;

    .line 142
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    .line 143
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 145
    const-string v0, "[NfcOsaifukeitaiSettingsDCM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNfclock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v0, "[NfcOsaifukeitaiSettingsDCM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRWp2p = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mRWp2p:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v0, "[NfcOsaifukeitaiSettingsDCM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mABeam = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v0, "[NfcOsaifukeitaiSettingsDCM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNfcTypeSettings = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcTypeSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v0, "[NfcOsaifukeitaiSettingsDCM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNfcPaymentSettings = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfclock:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 153
    iput v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mRetry_counter:I

    .line 154
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->uimDetectAction:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    const-string v0, "[NfcOsaifukeitaiSettingsDCM]"

    const-string v1, "get UIMLock status T.O. timer start "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mfilter:Landroid/content/IntentFilter;

    .line 161
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mfilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mfilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.felica.action.LOCKSTATUS_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mfilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_EF_LOCK_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mfilter:Landroid/content/IntentFilter;

    const-string v1, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mfilter:Landroid/content/IntentFilter;

    const-string v1, "android.action.nfc.policychanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mfilter:Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    :cond_1
    const-string v0, "[NfcOsaifukeitaiSettingsDCM]"

    const-string v1, "[E] onCreateDCM"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 184
    const-string v0, "[NfcOsaifukeitaiSettingsDCM]"

    const-string v1, "[S] onPauseDCM"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 186
    const-string v0, "[NfcOsaifukeitaiSettingsDCM]"

    const-string v1, "[E] onPauseDCM"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 173
    const-string v2, "[NfcOsaifukeitaiSettingsDCM]"

    const-string v3, "[S] resumeDCM"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mfilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v0

    .line 177
    .local v0, "clfLock":I
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v1

    .line 179
    .local v1, "uimLock":I
    invoke-direct {p0, v0, v1}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->list_items_update(II)V

    .line 180
    const-string v2, "[NfcOsaifukeitaiSettingsDCM]"

    const-string v3, "[E] resumeDCM"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method
