.class public Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;
.super Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;
.source "NfcOsaifukeitaiSettingsSBM.java"


# static fields
.field private static isNfcTypeBF:Z


# instance fields
.field private mABeam:Landroid/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

.field private mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

.field private mNfcRemotelock:Landroid/preference/PreferenceScreen;

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

    sput-boolean v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->isNfcTypeBF:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfclock:Landroid/preference/PreferenceScreen;

    .line 70
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRWp2p:Landroid/preference/PreferenceScreen;

    .line 71
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mABeam:Landroid/preference/PreferenceScreen;

    .line 72
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 73
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcRemotelock:Landroid/preference/PreferenceScreen;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mHandler:Landroid/os/Handler;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRetry_counter:I

    .line 95
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$1;-><init>(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    .line 396
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$2;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$2;-><init>(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->uimDetectAction:Ljava/lang/Runnable;

    .line 86
    return-void
.end method

.method constructor <init>(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "mNfclock"    # Landroid/preference/PreferenceScreen;
    .param p2, "mRWp2p"    # Landroid/preference/PreferenceScreen;
    .param p3, "mABeam"    # Landroid/preference/PreferenceScreen;
    .param p4, "mNfcRemotelock"    # Landroid/preference/PreferenceScreen;
    .param p5, "mNfcPaymentSettings"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfclock:Landroid/preference/PreferenceScreen;

    .line 70
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRWp2p:Landroid/preference/PreferenceScreen;

    .line 71
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mABeam:Landroid/preference/PreferenceScreen;

    .line 72
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 73
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcRemotelock:Landroid/preference/PreferenceScreen;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mHandler:Landroid/os/Handler;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRetry_counter:I

    .line 95
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$1;-><init>(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    .line 396
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$2;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$2;-><init>(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->uimDetectAction:Ljava/lang/Runnable;

    .line 89
    iput-object p1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfclock:Landroid/preference/PreferenceScreen;

    .line 90
    iput-object p2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRWp2p:Landroid/preference/PreferenceScreen;

    .line 91
    iput-object p3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mABeam:Landroid/preference/PreferenceScreen;

    .line 92
    iput-object p4, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcRemotelock:Landroid/preference/PreferenceScreen;

    .line 93
    iput-object p5, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 94
    return-void
.end method

.method private List_items_update_of_ABeam(II)V
    .locals 6
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 330
    const-string v2, "[NfcOsaifukeitaiSettingsSBM]"

    const-string v3, "[S] List_items_update_of_ABeam"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v1, 0x0

    .line 333
    .local v1, "summary_resId":I
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mABeam:Landroid/preference/PreferenceScreen;

    if-nez v2, :cond_0

    .line 368
    :goto_0
    return-void

    .line 336
    :cond_0
    if-gt v4, p1, :cond_3

    const/16 v2, 0xf

    if-gt p1, v2, :cond_3

    .line 337
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 338
    const v1, 0x7f0e1733

    .line 363
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 364
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 367
    :cond_2
    const-string v2, "[NfcOsaifukeitaiSettingsSBM]"

    const-string v3, "[E] List_items_update_of_ABeam"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 340
    :cond_3
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 342
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getABeamStatus()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 343
    const v1, 0x7f0e1732

    .line 349
    :goto_2
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getRWP2pStatus()I

    move-result v0

    .line 351
    .local v0, "result_rwp2p":I
    const/16 v2, 0xd

    if-ne v0, v2, :cond_6

    .line 352
    sget-boolean v2, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->isNfcTypeBF:Z

    if-ne v2, v4, :cond_5

    .line 353
    const-string v2, "[NfcOsaifukeitaiSettingsSBM]"

    const-string v3, "[*] List_items_update_of_ABeam : ABeam Grayed out"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    .line 345
    .end local v0    # "result_rwp2p":I
    :cond_4
    const v1, 0x7f0e1733

    goto :goto_2

    .line 356
    .restart local v0    # "result_rwp2p":I
    :cond_5
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    .line 358
    :cond_6
    const/16 v2, 0xb

    if-ne v0, v2, :cond_1

    .line 359
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method

.method private List_items_update_of_TapAndPay(II)V
    .locals 3
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    const/4 v2, 0x1

    .line 371
    const-string v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string v1, "[S] List_items_update_of_TapAndPay"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 377
    :cond_0
    if-gt v2, p1, :cond_1

    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 383
    :goto_1
    const-string v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string v1, "[E] List_items_update_of_TapAndPay"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method

.method private List_items_update_of_nfclock(II)V
    .locals 8
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    const/16 v7, 0x81

    const/16 v6, 0x10

    const/16 v5, 0xf

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 191
    const-string v1, "[NfcOsaifukeitaiSettingsSBM]"

    const-string v2, "[S] List_items_update_of_nfclock "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfclock:Landroid/preference/PreferenceScreen;

    if-nez v1, :cond_0

    .line 269
    :goto_0
    return-void

    .line 197
    :cond_0
    const/4 v0, 0x0

    .line 199
    .local v0, "summary_resId":I
    const/16 v1, 0x100

    if-ne p1, v1, :cond_2

    const/16 v1, 0x100

    if-ne p2, v1, :cond_2

    .line 200
    const-string v1, "[NfcOsaifukeitaiSettingsSBM]"

    const-string v2, "[*] List_items_update_of_nfclock   :   Get CLF Status and UIM Status  is Error"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const v0, 0x7f0e171f

    .line 264
    :goto_1
    if-eqz v0, :cond_1

    .line 265
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 268
    :cond_1
    const-string v1, "[NfcOsaifukeitaiSettingsSBM]"

    const-string v2, "[E] List_items_update_of_nfclock"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :cond_2
    if-gt v4, p2, :cond_4

    const/4 v1, 0x3

    if-gt p2, v1, :cond_4

    .line 206
    if-gt v4, p1, :cond_3

    if-gt p1, v5, :cond_3

    .line 208
    const v0, 0x7f0e172f

    goto :goto_1

    .line 211
    :cond_3
    const v0, 0x7f0e1731

    goto :goto_1

    .line 216
    :cond_4
    if-gt v4, p1, :cond_5

    if-gt p1, v5, :cond_5

    .line 218
    const v0, 0x7f0e1730

    goto :goto_1

    .line 222
    :cond_5
    if-ne p1, v3, :cond_9

    .line 225
    if-ne p2, v3, :cond_6

    .line 227
    const v0, 0x7f0e171c

    goto :goto_1

    .line 229
    :cond_6
    if-ne p2, v7, :cond_7

    .line 231
    const v0, 0x7f0e1744

    goto :goto_1

    .line 233
    :cond_7
    if-ne p2, v6, :cond_8

    .line 235
    const v0, 0x7f0e1745

    goto :goto_1

    .line 239
    :cond_8
    const v0, 0x7f0e171d

    goto :goto_1

    .line 243
    :cond_9
    if-ne p2, v3, :cond_a

    .line 245
    const v0, 0x7f0e171e

    goto :goto_1

    .line 247
    :cond_a
    if-ne p2, v7, :cond_b

    .line 249
    const v0, 0x7f0e1746

    goto :goto_1

    .line 251
    :cond_b
    if-ne p2, v6, :cond_c

    .line 253
    const v0, 0x7f0e1747

    goto :goto_1

    .line 257
    :cond_c
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

    .line 272
    const-string v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string v3, "[S] List_items_update_of_nfrwp2p"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v10, 0x0

    .line 276
    .local v10, "summary_resId":I
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRWp2p:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 327
    :goto_0
    return-void

    .line 282
    :cond_0
    const/4 v7, 0x1

    .line 285
    .local v7, "mMdmNfcPolicy":Z
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 286
    .local v1, "mUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isNFCEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 288
    .local v8, "mRestrictionCr":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 289
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 291
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

    .line 292
    const/4 v7, 0x0

    .line 297
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 302
    :cond_2
    :goto_1
    if-gt v12, p1, :cond_4

    const/16 v0, 0xf

    if-gt p1, v0, :cond_4

    .line 303
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRWp2p:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 304
    const v10, 0x7f0e1733

    .line 322
    :goto_2
    if-eqz v10, :cond_3

    .line 323
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRWp2p:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 326
    :cond_3
    const-string v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string v2, "[E] List_items_update_of_nfrwp2p"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    :catch_0
    move-exception v6

    .line 295
    .local v6, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_1
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 305
    :cond_4
    if-nez v7, :cond_5

    .line 306
    const-string v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string v2, "EDM : NFC policy disabled. R/W, P2P function can\'t be enabled"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRWp2p:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 308
    const v10, 0x7f0e1733

    goto :goto_2

    .line 310
    :cond_5
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRWp2p:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 312
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getRWP2pStatus()I

    move-result v9

    .line 313
    .local v9, "result":I
    const/16 v0, 0xd

    if-ne v9, v0, :cond_6

    .line 314
    const v10, 0x7f0e1732

    goto :goto_2

    .line 315
    :cond_6
    const/16 v0, 0xb

    if-ne v9, v0, :cond_7

    .line 316
    const v10, 0x7f0e1733

    goto :goto_2

    .line 318
    :cond_7
    const-string v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string v2, "[*] List_items_update_of_nfrwp2p not changed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->list_items_update(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRetry_counter:I

    return v0
.end method

.method static synthetic access$208(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRetry_counter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRetry_counter:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfclock:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->uimDetectAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method private list_items_update(II)V
    .locals 3
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    .line 179
    const-string v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string v1, "[S] list_items_update"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v0, "[NfcOsaifukeitaiSettingsSBM]"

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

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->List_items_update_of_nfclock(II)V

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->List_items_update_of_nfrwp2p(II)V

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->List_items_update_of_ABeam(II)V

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->List_items_update_of_TapAndPay(II)V

    .line 187
    const-string v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string v1, "[E] list_items_update"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 130
    const-string v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string v1, "[S] onCreateSBM"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput-object p1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mContext:Landroid/content/Context;

    .line 133
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    .line 134
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 136
    const-string v0, "[NfcOsaifukeitaiSettingsSBM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNfclock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v0, "[NfcOsaifukeitaiSettingsSBM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRWp2p = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRWp2p:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v0, "[NfcOsaifukeitaiSettingsSBM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mABeam = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v0, "[NfcOsaifukeitaiSettingsSBM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNfcPaymentSettings = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v0, "[NfcOsaifukeitaiSettingsSBM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNfcRemotelock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcRemotelock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfclock:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 144
    iput v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRetry_counter:I

    .line 145
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->uimDetectAction:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    const-string v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string v1, "get UIMLock status T.O. timer start "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mfilter:Landroid/content/IntentFilter;

    .line 152
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mfilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mfilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.felica.action.LOCKSTATUS_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mfilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_EF_LOCK_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mfilter:Landroid/content/IntentFilter;

    const-string v1, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mfilter:Landroid/content/IntentFilter;

    const-string v1, "android.action.nfc.policychanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mfilter:Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    :cond_1
    const-string v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string v1, "[E] onCreateSBM"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 173
    const-string v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string v1, "[S] onPauseSBM"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 175
    const-string v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string v1, "[E] onPauseSBM"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 163
    const-string v2, "[NfcOsaifukeitaiSettingsSBM]"

    const-string v3, "[S] resumeSBM"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mfilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v0

    .line 166
    .local v0, "clfLock":I
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v1

    .line 168
    .local v1, "uimLock":I
    invoke-direct {p0, v0, v1}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->list_items_update(II)V

    .line 169
    const-string v2, "[NfcOsaifukeitaiSettingsSBM]"

    const-string v3, "[E] resumeSBM"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method
