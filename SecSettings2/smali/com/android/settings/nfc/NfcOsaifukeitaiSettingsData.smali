.class public Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;
.super Ljava/lang/Object;
.source "NfcOsaifukeitaiSettingsData.java"


# instance fields
.field private final CSC_SALES_CODE:Ljava/lang/String;

.field private final OMC_SALES_CODE:Ljava/lang/String;

.field private final carrier:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mRceciverContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "contxt"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->mContext:Landroid/content/Context;

    .line 41
    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->mRceciverContext:Landroid/content/Context;

    .line 42
    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 56
    const-string v1, "persist.omc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->OMC_SALES_CODE:Ljava/lang/String;

    .line 57
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->CSC_SALES_CODE:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->OMC_SALES_CODE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->OMC_SALES_CODE:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->CSC_SALES_CODE:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->carrier:Ljava/lang/String;

    .line 153
    const-string v1, "[NfcOsaifukeitaiSettingsData]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[S]NfcOsaifukeitaiSettingsData ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iput-object p1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->mContext:Landroid/content/Context;

    .line 156
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 158
    const-string v1, "KDI"

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->carrier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    :try_start_0
    const-string v1, "com.samsung.nfcfelicasettings"

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->mRceciverContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_1
    :goto_1
    const-string v1, "[NfcOsaifukeitaiSettingsData]"

    const-string v2, "[E]NfcOsaifukeitaiSettingsData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void

    .line 58
    :cond_2
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->OMC_SALES_CODE:Ljava/lang/String;

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "[NfcOsaifukeitaiSettingsData]"

    const-string v2, "[Ex]NameNotFoundException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public get3lmRemoteLockStatus()Z
    .locals 5

    .prologue
    .line 454
    const-string v2, "[NfcOsaifukeitaiSettingsData]"

    const-string v3, "[S] get3lmRemoteLockStatus"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v0, 0x0

    .line 457
    .local v0, "ret":Z
    const-string v2, "KDI"

    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->carrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 466
    .end local v0    # "ret":Z
    .local v1, "ret":I
    :goto_0
    return v1

    .line 461
    .end local v1    # "ret":I
    .restart local v0    # "ret":Z
    :cond_0
    const-string v2, "persist.security.nfc.lockout"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 462
    const/4 v0, 0x1

    .line 465
    :cond_1
    const-string v2, "[NfcOsaifukeitaiSettingsData]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[E] get3lmRemoteLockStatus ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 466
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public getABeamStatus()Z
    .locals 4

    .prologue
    .line 290
    const-string v1, "[NfcOsaifukeitaiSettingsData]"

    const-string v2, "[S] getABeamStatus "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_0

    .line 292
    const-string v1, "[NfcOsaifukeitaiSettingsData]"

    const-string v2, "mNfcAdapter is Null\n"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v0, 0x0

    .line 299
    :goto_0
    return v0

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    .line 297
    .local v0, "ret":Z
    const-string v1, "[NfcOsaifukeitaiSettingsData]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[E] getABeamStatus ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCLFLockStatus()I
    .locals 7

    .prologue
    .line 171
    const-string v4, "[NfcOsaifukeitaiSettingsData]"

    const-string v5, "[S] getCLFLockStatus"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/16 v3, 0x100

    .line 174
    .local v3, "ret":I
    const/4 v1, 0x0

    .line 177
    .local v1, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v4, "/efs/sec_efs/FeliCaLock/01"

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v3

    .line 180
    const-string v4, "[NfcOsaifukeitaiSettingsData]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[*]getCLFLockState  status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 182
    if-ltz v3, :cond_0

    const/16 v4, 0xf

    if-ge v4, v3, :cond_1

    .line 183
    :cond_0
    const/16 v3, 0x100

    .line 193
    :cond_1
    if-eqz v2, :cond_2

    .line 194
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v1, v2

    .line 201
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_3
    :goto_0
    const-string v4, "[NfcOsaifukeitaiSettingsData]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[E] getCLFLockStatus ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return v3

    .line 196
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 199
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 185
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v4, "[NfcOsaifukeitaiSettingsData]"

    const-string v5, "[Ex]FileNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    const/16 v3, 0x100

    .line 193
    if-eqz v1, :cond_3

    .line 194
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 196
    :catch_2
    move-exception v0

    .line 197
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 188
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 189
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v4, "[NfcOsaifukeitaiSettingsData]"

    const-string v5, "[Ex]IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 190
    const/16 v3, 0x100

    .line 193
    if-eqz v1, :cond_3

    .line 194
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 196
    :catch_4
    move-exception v0

    .line 197
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 192
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 193
    :goto_3
    if-eqz v1, :cond_4

    .line 194
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 198
    :cond_4
    :goto_4
    throw v4

    .line 196
    :catch_5
    move-exception v0

    .line 197
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 192
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 188
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 185
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public getMobileCashbee_DisplayJudging()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 428
    const-string v2, "[NfcOsaifukeitaiSettingsData]"

    const-string v3, "[S] getMobileCashbee_DisplayJudging"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v0, 0x0

    .line 431
    .local v0, "ret":Z
    const-string v2, "KDI"

    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->carrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 450
    .end local v0    # "ret":Z
    .local v1, "ret":I
    :goto_0
    return v1

    .line 436
    .end local v1    # "ret":I
    .restart local v0    # "ret":Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getSharedPre_KoreaNetwork()Z

    move-result v2

    if-eq v2, v4, :cond_1

    .line 437
    const-string v2, "[NfcOsaifukeitaiSettingsData]"

    const-string v3, "[*] getMobileCashbee_DisplayJudging  :  Not Korea Networks."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 438
    .restart local v1    # "ret":I
    goto :goto_0

    .line 442
    .end local v1    # "ret":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getSharedPre_CashbeeApkInstall()Z

    move-result v2

    if-eq v2, v4, :cond_2

    .line 443
    const-string v2, "[NfcOsaifukeitaiSettingsData]"

    const-string v3, "[*] getMobileCashbee_DisplayJudging  :  Not Apk Install."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 444
    .restart local v1    # "ret":I
    goto :goto_0

    .line 447
    .end local v1    # "ret":I
    :cond_2
    const/4 v0, 0x1

    .line 449
    const-string v2, "[NfcOsaifukeitaiSettingsData]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[E] getMobileCashbee_DisplayJudging ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 450
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public getNfcTypeSettings()I
    .locals 5

    .prologue
    .line 360
    const-string v2, "[NfcOsaifukeitaiSettingsData]"

    const-string v3, "[S] getNfcTypeSettings"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v1, 0x0

    .line 364
    .local v1, "ret":I
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v2, :cond_0

    .line 365
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getListenMode()I

    move-result v0

    .line 366
    .local v0, "result":I
    and-int/lit8 v2, v0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 367
    const/4 v1, 0x0

    .line 375
    .end local v0    # "result":I
    :cond_0
    :goto_0
    const-string v2, "[NfcOsaifukeitaiSettingsData]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[E] getNfcTypeSettings ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return v1

    .line 368
    .restart local v0    # "result":I
    :cond_1
    and-int/lit8 v2, v0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 369
    const/4 v1, 0x1

    goto :goto_0

    .line 370
    :cond_2
    and-int/lit8 v2, v0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 371
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getRWP2pStatus()I
    .locals 4

    .prologue
    .line 266
    const-string v1, "[NfcOsaifukeitaiSettingsData]"

    const-string v2, "[S] getRWP2pStatus "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_0

    .line 268
    const-string v1, "[NfcOsaifukeitaiSettingsData]"

    const-string v2, "mNfcAdapter is Null\n"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/16 v0, 0xb

    .line 274
    :goto_0
    return v0

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterRwP2pState()I

    move-result v0

    .line 273
    .local v0, "ret":I
    const-string v1, "[NfcOsaifukeitaiSettingsData]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[E] getRWP2pStatus ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSharedPre_CashbeeApkInstall()Z
    .locals 6

    .prologue
    .line 406
    const-string v3, "[NfcOsaifukeitaiSettingsData]"

    const-string v4, "[S] getSharedPre_CashbeeApkInstall"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v0, 0x0

    .line 410
    .local v0, "ret":Z
    const-string v3, "KDI"

    iget-object v4, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->carrier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v0

    .line 424
    .end local v0    # "ret":Z
    .local v1, "ret":I
    :goto_0
    return v1

    .line 414
    .end local v1    # "ret":I
    .restart local v0    # "ret":Z
    :cond_0
    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->mRceciverContext:Landroid/content/Context;

    if-nez v3, :cond_1

    move v1, v0

    .line 415
    .restart local v1    # "ret":I
    goto :goto_0

    .line 418
    .end local v1    # "ret":I
    :cond_1
    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->mRceciverContext:Landroid/content/Context;

    const-string v4, "NfcOsaifukeitaiSettings_prefs"

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 419
    .local v2, "shared_preferences":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_2

    .line 420
    const-string v3, "MobileCashbee_Apk_Install"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 423
    :cond_2
    const-string v3, "[NfcOsaifukeitaiSettingsData]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[E] getSharedPre_CashbeeApkInstall ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 424
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public getSharedPre_KoreaNetwork()Z
    .locals 6

    .prologue
    .line 384
    const-string v3, "[NfcOsaifukeitaiSettingsData]"

    const-string v4, "[S] getSharedPre_KoreaNetwork"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v0, 0x0

    .line 388
    .local v0, "ret":Z
    const-string v3, "KDI"

    iget-object v4, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->carrier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v0

    .line 402
    .end local v0    # "ret":Z
    .local v1, "ret":I
    :goto_0
    return v1

    .line 392
    .end local v1    # "ret":I
    .restart local v0    # "ret":Z
    :cond_0
    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->mRceciverContext:Landroid/content/Context;

    if-nez v3, :cond_1

    move v1, v0

    .line 393
    .restart local v1    # "ret":I
    goto :goto_0

    .line 396
    .end local v1    # "ret":I
    :cond_1
    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->mRceciverContext:Landroid/content/Context;

    const-string v4, "NfcOsaifukeitaiSettings_prefs"

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 397
    .local v2, "shared_preferences":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_2

    .line 398
    const-string v3, "MobileCashbee_Network_Korea"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 401
    :cond_2
    const-string v3, "[NfcOsaifukeitaiSettingsData]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[E] getSharedPre_KoreaNetwork ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 402
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public getUIMLockStatus()I
    .locals 7

    .prologue
    .line 206
    const-string v4, "[NfcOsaifukeitaiSettingsData]"

    const-string v5, "[S] getUIMLockStatus"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/16 v3, 0x100

    .line 209
    .local v3, "ret":I
    const/4 v1, 0x0

    .line 211
    .local v1, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v4, "/efs/sec_efs/FeliCaLock/03"

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v3

    .line 214
    const-string v4, "[NfcOsaifukeitaiSettingsData]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[*]getUIMLockStatus  status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v4, "SBM"

    iget-object v5, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->carrier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-nez v4, :cond_3

    .line 217
    const/16 v4, 0x81

    if-ne v3, v4, :cond_0

    .line 218
    const/4 v3, 0x0

    .line 221
    :cond_0
    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    .line 222
    const/4 v3, 0x0

    .line 225
    :cond_1
    if-ltz v3, :cond_2

    const/4 v4, 0x3

    if-ge v4, v3, :cond_3

    .line 226
    :cond_2
    const/16 v3, 0x100

    .line 238
    :cond_3
    if-eqz v2, :cond_4

    .line 239
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    move-object v1, v2

    .line 246
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_5
    :goto_0
    const-string v4, "[NfcOsaifukeitaiSettingsData]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[E] getUIMLockStatus ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return v3

    .line 241
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 244
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 230
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 231
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v4, "[NfcOsaifukeitaiSettingsData]"

    const-string v5, "[Ex]FileNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 232
    const/16 v3, 0x100

    .line 238
    if-eqz v1, :cond_5

    .line 239
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 241
    :catch_2
    move-exception v0

    .line 242
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 233
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 234
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v4, "[NfcOsaifukeitaiSettingsData]"

    const-string v5, "[Ex]IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 235
    const/16 v3, 0x100

    .line 238
    if-eqz v1, :cond_5

    .line 239
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 241
    :catch_4
    move-exception v0

    .line 242
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 237
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 238
    :goto_3
    if-eqz v1, :cond_6

    .line 239
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 243
    :cond_6
    :goto_4
    throw v4

    .line 241
    :catch_5
    move-exception v0

    .line 242
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 237
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 233
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 230
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public setABeamStatus(Z)Z
    .locals 4
    .param p1, "onoff"    # Z

    .prologue
    .line 303
    const-string v1, "[NfcOsaifukeitaiSettingsData]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[S] setABeamStatus ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_0

    .line 305
    const-string v1, "[NfcOsaifukeitaiSettingsData]"

    const-string v2, "mNfcAdapter is Null\n"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v0, 0x0

    .line 319
    :goto_0
    return v0

    .line 309
    :cond_0
    const/4 v0, 0x0

    .line 311
    .local v0, "ret":Z
    if-eqz p1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v0

    .line 317
    :goto_1
    const-string v1, "[NfcOsaifukeitaiSettingsData]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[E] setABeamStatus ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v0

    goto :goto_1
.end method

.method public setNfcTypeSettings(I)Z
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 323
    const-string v2, "[NfcOsaifukeitaiSettingsData]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[S] setNfcTypeSettings ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "listen_type":I
    const/4 v1, 0x0

    .line 328
    .local v1, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 342
    const/4 v0, 0x7

    .line 343
    const-string v2, "[NfcOsaifukeitaiSettingsData]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[*] setNfcTypeSettings Param NG ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :goto_0
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v2, :cond_0

    .line 348
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2, v0}, Landroid/nfc/NfcAdapter;->setListenMode(I)I

    move-result v1

    .line 351
    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 352
    const/4 v2, 0x0

    .line 356
    :goto_1
    return v2

    .line 330
    :pswitch_0
    const/4 v0, 0x7

    .line 331
    goto :goto_0

    .line 334
    :pswitch_1
    const/4 v0, 0x5

    .line 335
    goto :goto_0

    .line 338
    :pswitch_2
    const/4 v0, 0x6

    .line 339
    goto :goto_0

    .line 355
    :cond_1
    const-string v2, "[NfcOsaifukeitaiSettingsData]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[E] setNfcTypeSettings ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v2, 0x1

    goto :goto_1

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setRWP2pStatus(Z)Z
    .locals 4
    .param p1, "onoff"    # Z

    .prologue
    .line 278
    const-string v1, "[NfcOsaifukeitaiSettingsData]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[S] setRWP2pStatus ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_0

    .line 280
    const-string v1, "[NfcOsaifukeitaiSettingsData]"

    const-string v2, "mNfcAdapter is Null\n"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v0, 0x0

    .line 286
    :goto_0
    return v0

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, p1}, Landroid/nfc/NfcAdapter;->setRwP2pMode(Z)Z

    move-result v0

    .line 285
    .local v0, "ret":Z
    const-string v1, "[NfcOsaifukeitaiSettingsData]"

    const-string v2, "[E] setRWP2pStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
