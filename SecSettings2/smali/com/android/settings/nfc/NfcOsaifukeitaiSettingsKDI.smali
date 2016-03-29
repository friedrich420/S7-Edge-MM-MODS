.class public Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;
.super Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;
.source "NfcOsaifukeitaiSettingsKDI.java"


# instance fields
.field private mABeam:Landroid/preference/PreferenceScreen;

.field private mCashbee:Landroid/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLockNumInit:Landroid/preference/PreferenceScreen;

.field private mLockNumchg:Landroid/preference/PreferenceScreen;

.field private mMenu_Korea:Z

.field private mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

.field private mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

.field private mNfclock:Landroid/preference/PreferenceScreen;

.field private mRWp2p:Landroid/preference/PreferenceScreen;

.field private mRetry_counter:I

.field private mRoot:Landroid/preference/PreferenceScreen;

.field private mSetLayout:Z

.field private mfilter:Landroid/content/IntentFilter;

.field private mfilter_apk:Landroid/content/IntentFilter;

.field nfcBroadcast:Landroid/content/BroadcastReceiver;

.field private uimDetectAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    .line 70
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    .line 71
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    .line 72
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    .line 73
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumchg:Landroid/preference/PreferenceScreen;

    .line 74
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumInit:Landroid/preference/PreferenceScreen;

    .line 75
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 76
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRoot:Landroid/preference/PreferenceScreen;

    .line 78
    iput-boolean v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mMenu_Korea:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mSetLayout:Z

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mHandler:Landroid/os/Handler;

    .line 85
    iput v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRetry_counter:I

    .line 104
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$1;-><init>(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    .line 465
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;-><init>(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->uimDetectAction:Ljava/lang/Runnable;

    .line 90
    return-void
.end method

.method constructor <init>(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "mNfclock"    # Landroid/preference/PreferenceScreen;
    .param p2, "mRWp2p"    # Landroid/preference/PreferenceScreen;
    .param p3, "mABeam"    # Landroid/preference/PreferenceScreen;
    .param p4, "mCashbee"    # Landroid/preference/PreferenceScreen;
    .param p5, "mLockNumchg"    # Landroid/preference/PreferenceScreen;
    .param p6, "mLockNumInit"    # Landroid/preference/PreferenceScreen;
    .param p7, "mNfcPaymentSettings"    # Landroid/preference/PreferenceScreen;
    .param p8, "mRoot"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    .line 70
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    .line 71
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    .line 72
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    .line 73
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumchg:Landroid/preference/PreferenceScreen;

    .line 74
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumInit:Landroid/preference/PreferenceScreen;

    .line 75
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 76
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRoot:Landroid/preference/PreferenceScreen;

    .line 78
    iput-boolean v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mMenu_Korea:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mSetLayout:Z

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mHandler:Landroid/os/Handler;

    .line 85
    iput v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRetry_counter:I

    .line 104
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$1;-><init>(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    .line 465
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;-><init>(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->uimDetectAction:Ljava/lang/Runnable;

    .line 94
    iput-object p1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    .line 95
    iput-object p2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    .line 96
    iput-object p3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    .line 97
    iput-object p4, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    .line 98
    iput-object p5, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumchg:Landroid/preference/PreferenceScreen;

    .line 99
    iput-object p6, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumInit:Landroid/preference/PreferenceScreen;

    .line 100
    iput-object p7, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 101
    iput-object p8, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRoot:Landroid/preference/PreferenceScreen;

    .line 102
    return-void
.end method

.method private List_items_settings_of_cashbee(Z)V
    .locals 4
    .param p1, "set"    # Z

    .prologue
    const/4 v3, 0x1

    .line 416
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[S] List_items_settings_of_cashbee set = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    if-ne p1, v3, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mMenu_Korea:Z

    if-nez v0, :cond_1

    .line 420
    iput-boolean v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mMenu_Korea:Z

    .line 426
    :cond_0
    :goto_0
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v1, "[E] List_items_settings_of_cashbee "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return-void

    .line 421
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mMenu_Korea:Z

    if-ne v0, v3, :cond_0

    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mMenu_Korea:Z

    goto :goto_0
.end method

.method private List_items_update_of_ABeam(II)V
    .locals 6
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 316
    const-string v2, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v3, "[S] List_items_update_of_ABeam"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v1, 0x0

    .line 319
    .local v1, "summary_resId":I
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    if-nez v2, :cond_0

    .line 358
    :goto_0
    return-void

    .line 322
    :cond_0
    if-gt v5, p1, :cond_5

    const/16 v2, 0xf

    if-gt p1, v2, :cond_5

    .line 323
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 324
    const v1, 0x7f0e1733

    .line 347
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 348
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 351
    :cond_2
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->get3lmRemoteLockStatus()Z

    move-result v2

    if-eq v2, v5, :cond_3

    const/4 v2, 0x2

    if-gt v2, p2, :cond_4

    const/4 v2, 0x3

    if-gt p2, v2, :cond_4

    .line 354
    :cond_3
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 357
    :cond_4
    const-string v2, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v3, "[E] List_items_update_of_ABeam"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 326
    :cond_5
    if-nez p1, :cond_8

    if-nez p2, :cond_8

    .line 327
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 329
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getRWP2pStatus()I

    move-result v0

    .line 330
    .local v0, "result_rwp2p":I
    const/16 v2, 0xd

    if-ne v0, v2, :cond_7

    .line 331
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 332
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getABeamStatus()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 333
    const v1, 0x7f0e1732

    goto :goto_1

    .line 335
    :cond_6
    const v1, 0x7f0e1733

    goto :goto_1

    .line 337
    :cond_7
    const/16 v2, 0xb

    if-ne v0, v2, :cond_1

    .line 338
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 339
    const v1, 0x7f0e1733

    goto :goto_1

    .line 342
    .end local v0    # "result_rwp2p":I
    :cond_8
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 343
    const v1, 0x7f0e1733

    goto :goto_1
.end method

.method private List_items_update_of_LockNumInit(II)V
    .locals 3
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    const/4 v2, 0x1

    .line 448
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v1, "[S] List_items_update_of_LockNumInit "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumInit:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 463
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->get3lmRemoteLockStatus()Z

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v0, 0x2

    if-gt v0, p2, :cond_2

    const/4 v0, 0x3

    if-gt p2, v0, :cond_2

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumInit:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 462
    :goto_1
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v1, "[E] List_items_update_of_LockNumInit "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumInit:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method

.method private List_items_update_of_LockNumchg(II)V
    .locals 3
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    const/4 v2, 0x1

    .line 430
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v1, "[S] List_items_update_of_LockNumchg "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumchg:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 445
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->get3lmRemoteLockStatus()Z

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v0, 0x2

    if-gt v0, p2, :cond_2

    const/4 v0, 0x3

    if-gt p2, v0, :cond_2

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumchg:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 444
    :goto_1
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v1, "[E] List_items_update_of_LockNumchg "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 441
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumchg:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method

.method private List_items_update_of_TapAndPay(II)V
    .locals 2
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    .line 396
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v1, "[S] List_items_update_of_TapAndPay"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 409
    :goto_0
    return-void

    .line 402
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 403
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 408
    :goto_1
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v1, "[E] List_items_update_of_TapAndPay"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method

.method private List_items_update_of_cashbee(II)V
    .locals 6
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 361
    const-string v2, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v3, "[S] List_items_update_of_cashbee "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    if-nez v2, :cond_0

    .line 393
    :goto_0
    return-void

    .line 367
    :cond_0
    const/4 v0, 0x0

    .line 368
    .local v0, "summary_resId":I
    if-nez p1, :cond_4

    if-nez p2, :cond_4

    .line 369
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 374
    :goto_1
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getNfcTypeSettings()I

    move-result v1

    .line 376
    .local v1, "type_settings":I
    if-ne v1, v4, :cond_5

    .line 377
    const v0, 0x7f0e173c

    .line 382
    :goto_2
    if-eqz v0, :cond_1

    .line 383
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 386
    :cond_1
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->get3lmRemoteLockStatus()Z

    move-result v2

    if-eq v2, v4, :cond_2

    const/4 v2, 0x2

    if-gt v2, p2, :cond_3

    const/4 v2, 0x3

    if-gt p2, v2, :cond_3

    .line 389
    :cond_2
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 392
    :cond_3
    const-string v2, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v3, "[E] List_items_update_of_cashbee"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 371
    .end local v1    # "type_settings":I
    :cond_4
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    .line 379
    .restart local v1    # "type_settings":I
    :cond_5
    const v0, 0x7f0e173d

    goto :goto_2
.end method

.method private List_items_update_of_nfclock(II)V
    .locals 7
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    const/16 v6, 0x100

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 209
    const-string v1, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v2, "[S] List_items_update_of_nfclock "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    if-nez v1, :cond_0

    .line 245
    :goto_0
    return-void

    .line 215
    :cond_0
    const/4 v0, 0x0

    .line 217
    .local v0, "summary_resId":I
    if-ne p1, v6, :cond_3

    if-ne p2, v6, :cond_3

    .line 218
    const-string v1, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v2, "[*] List_items_update_of_nfclock   :   Get CLF Status and UIM Status  is Error"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const v0, 0x7f0e1733

    .line 228
    :goto_1
    if-eqz v0, :cond_1

    .line 229
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v1}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->get3lmRemoteLockStatus()Z

    move-result v1

    if-eq v1, v4, :cond_2

    if-gt v5, p2, :cond_5

    const/4 v1, 0x3

    if-gt p2, v1, :cond_5

    .line 235
    :cond_2
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 244
    :goto_2
    const-string v1, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v2, "[E] List_items_update_of_nfclock"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    :cond_3
    if-nez p1, :cond_4

    if-nez p2, :cond_4

    .line 222
    const v0, 0x7f0e1733

    goto :goto_1

    .line 224
    :cond_4
    const v0, 0x7f0e1732

    goto :goto_1

    .line 237
    :cond_5
    if-gt v5, p1, :cond_6

    const/16 v1, 0xf

    if-gt p1, v1, :cond_6

    .line 238
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_2

    .line 240
    :cond_6
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_2
.end method

.method private List_items_update_of_nfrwp2p(II)V
    .locals 13
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 248
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v3, "[S] List_items_update_of_nfrwp2p"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v10, 0x0

    .line 251
    .local v10, "summary_resId":I
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 257
    :cond_0
    const/4 v7, 0x1

    .line 260
    .local v7, "mMdmNfcPolicy":Z
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 261
    .local v1, "mUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isNFCEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 263
    .local v8, "mRestrictionCr":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 264
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 266
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

    .line 267
    const/4 v7, 0x0

    .line 272
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 277
    :cond_2
    :goto_1
    if-gt v12, p1, :cond_6

    const/16 v0, 0xf

    if-gt p1, v0, :cond_6

    .line 278
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 279
    const v10, 0x7f0e1733

    .line 302
    :goto_2
    if-eqz v10, :cond_3

    .line 303
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 306
    :cond_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->get3lmRemoteLockStatus()Z

    move-result v0

    if-eq v0, v12, :cond_4

    const/4 v0, 0x2

    if-gt v0, p2, :cond_5

    const/4 v0, 0x3

    if-gt p2, v0, :cond_5

    .line 309
    :cond_4
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 312
    :cond_5
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v2, "[E] List_items_update_of_nfrwp2p"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 269
    :catch_0
    move-exception v6

    .line 270
    .local v6, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_1
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 280
    :cond_6
    if-nez v7, :cond_7

    .line 281
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v2, "EDM : NFC policy disabled. R/W, P2P function can\'t be enabled"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 283
    const v10, 0x7f0e1733

    goto :goto_2

    .line 285
    :cond_7
    if-nez p1, :cond_a

    if-nez p2, :cond_a

    .line 286
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 288
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getRWP2pStatus()I

    move-result v9

    .line 289
    .local v9, "result":I
    const/16 v0, 0xd

    if-ne v9, v0, :cond_8

    .line 290
    const v10, 0x7f0e1732

    goto :goto_2

    .line 291
    :cond_8
    const/16 v0, 0xb

    if-ne v9, v0, :cond_9

    .line 292
    const v10, 0x7f0e1733

    goto :goto_2

    .line 294
    :cond_9
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v2, "[*] List_items_update_of_nfrwp2p not changed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 297
    .end local v9    # "result":I
    :cond_a
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 298
    const v10, 0x7f0e1733

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->list_items_update(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRetry_counter:I

    return v0
.end method

.method static synthetic access$208(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRetry_counter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRetry_counter:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->uimDetectAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method private list_items_update(II)V
    .locals 3
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    .line 188
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v1, "[S] list_items_update"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

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

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->List_items_update_of_nfclock(II)V

    .line 192
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->List_items_update_of_nfrwp2p(II)V

    .line 193
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->List_items_update_of_ABeam(II)V

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->List_items_update_of_LockNumchg(II)V

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->List_items_update_of_LockNumInit(II)V

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->List_items_update_of_TapAndPay(II)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getMobileCashbee_DisplayJudging()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->List_items_settings_of_cashbee(Z)V

    .line 200
    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mMenu_Korea:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 201
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->List_items_update_of_cashbee(II)V

    .line 205
    :cond_0
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v1, "[E] list_items_update"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void
.end method


# virtual methods
.method public getKoreaMenu()Z
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mMenu_Korea:Z

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 121
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v1, "[S] onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iput-object p1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mContext:Landroid/content/Context;

    .line 124
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-direct {v0, p1}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    .line 127
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNfclock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRWp2p = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mABeam = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCashbee = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLockNumchg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumchg:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLockNumInit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumInit:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNfcPaymentSettings = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 138
    iput v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRetry_counter:I

    .line 139
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->uimDetectAction:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v1, "get UIMLock status T.O. timer start "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter:Landroid/content/IntentFilter;

    .line 145
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter:Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter:Landroid/content/IntentFilter;

    const-string v1, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter:Landroid/content/IntentFilter;

    const-string v1, "android.action.nfc.policychanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.nfc.ACTION_OSAIFUKEITAI_NETWORK_CHG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter_apk:Landroid/content/IntentFilter;

    .line 154
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter_apk:Landroid/content/IntentFilter;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter_apk:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter_apk:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter_apk:Landroid/content/IntentFilter;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter_apk:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->setHasOptionsMenu(Z)V

    .line 161
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v1, "[E] onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 182
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v1, "[S] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    const-string v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v1, "[E] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 165
    const-string v2, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v3, "[S] resume"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter_apk:Landroid/content/IntentFilter;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v0

    .line 170
    .local v0, "clfLock":I
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v1

    .line 172
    .local v1, "uimLock":I
    invoke-direct {p0, v0, v1}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->list_items_update(II)V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->getKoreaMenu()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRoot:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRoot:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 178
    :cond_0
    const-string v2, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v3, "[E] resume"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method
