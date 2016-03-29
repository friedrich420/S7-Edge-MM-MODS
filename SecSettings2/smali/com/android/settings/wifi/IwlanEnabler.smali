.class public Lcom/android/settings/wifi/IwlanEnabler;
.super Ljava/lang/Object;
.source "IwlanEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final IWLAN_FREE_SPACE:Ljava/lang/Long;

.field private static mIsIwlanEnable:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultPdgDomainName:Ljava/lang/String;

.field private mIsVpnConnected:Z

.field private mIsWifiConnected:Z

.field private mIwlanNetworks:Landroid/preference/PreferenceCategory;

.field private mIwlanSwitchPref:Landroid/preference/SwitchPreference;

.field private mIwlandState:I

.field private mPdgDomainName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    const-wide/16 v0, 0x2800

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/IwlanEnabler;->IWLAN_FREE_SPACE:Ljava/lang/Long;

    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/IwlanEnabler;->mIsIwlanEnable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/IwlanEnabler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/IwlanEnabler;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/wifi/IwlanEnabler;->isWifiConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/IwlanEnabler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/IwlanEnabler;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/IwlanEnabler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/IwlanEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/IwlanEnabler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/IwlanEnabler;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/wifi/IwlanEnabler;->isAvailableDataStorage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/IwlanEnabler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanSwitchPref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/IwlanEnabler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/IwlanEnabler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/IwlanEnabler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/wifi/IwlanEnabler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/IwlanEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIsVpnConnected:Z

    return p1
.end method

.method private isAvailableDataStorage()Z
    .locals 10

    .prologue
    .line 427
    new-instance v6, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 429
    .local v6, "stat":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 430
    .local v2, "blockSize":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 431
    .local v0, "availableBlocks":J
    mul-long v4, v2, v0

    .line 433
    .local v4, "space":J
    sget-object v7, Lcom/android/settings/wifi/IwlanEnabler;->IWLAN_FREE_SPACE:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v7, v4, v8

    if-gez v7, :cond_0

    .line 434
    const/4 v7, 0x0

    .line 436
    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private isDeamonRunning(Ljava/lang/String;)Z
    .locals 11
    .param p1, "deamon"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 361
    const/4 v6, 0x0

    .line 364
    .local v6, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ps "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 367
    .local v2, "process":Ljava/lang/Process;
    const/16 v8, 0x200

    new-array v4, v8, [B

    .line 368
    .local v4, "readBuffer":[B
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 370
    invoke-virtual {v6, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "readLength":I
    if-lez v5, :cond_2

    .line 371
    new-instance v3, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v3, v4, v8, v5}, Ljava/lang/String;-><init>([BII)V

    .line 372
    .local v3, "ps":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v8, v5, -0x6

    if-ge v1, v8, :cond_2

    .line 373
    add-int/lit8 v8, v1, 0x6

    invoke-virtual {v3, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 374
    const/4 v7, 0x1

    .line 381
    if-eqz v6, :cond_0

    .line 384
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 393
    .end local v1    # "i":I
    .end local v2    # "process":Ljava/lang/Process;
    .end local v3    # "ps":Ljava/lang/String;
    .end local v4    # "readBuffer":[B
    .end local v5    # "readLength":I
    :cond_0
    :goto_1
    return v7

    .line 385
    .restart local v1    # "i":I
    .restart local v2    # "process":Ljava/lang/Process;
    .restart local v3    # "ps":Ljava/lang/String;
    .restart local v4    # "readBuffer":[B
    .restart local v5    # "readLength":I
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 387
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 372
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    .end local v1    # "i":I
    .end local v3    # "ps":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_0

    .line 384
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 385
    :catch_2
    move-exception v0

    .line 386
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 387
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 378
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v2    # "process":Ljava/lang/Process;
    .end local v4    # "readBuffer":[B
    .end local v5    # "readLength":I
    :catch_4
    move-exception v0

    .line 379
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 381
    if-eqz v6, :cond_0

    .line 384
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_1

    .line 385
    :catch_5
    move-exception v0

    .line 386
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 387
    :catch_6
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 381
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v7

    if-eqz v6, :cond_3

    .line 384
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_8

    .line 389
    :cond_3
    :goto_2
    throw v7

    .line 385
    :catch_7
    move-exception v0

    .line 386
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 387
    .end local v0    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2
.end method

.method public static isIwlanEnable()Z
    .locals 1

    .prologue
    .line 440
    sget-boolean v0, Lcom/android/settings/wifi/IwlanEnabler;->mIsIwlanEnable:Z

    return v0
.end method

.method private isWifiConnected()Z
    .locals 4

    .prologue
    .line 405
    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 406
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 407
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    if-nez v2, :cond_0

    .line 408
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIsWifiConnected:Z

    .line 413
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIsWifiConnected:Z

    return v2

    .line 410
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIsWifiConnected:Z

    goto :goto_0
.end method

.method private loggingIwlan()V
    .locals 5

    .prologue
    .line 444
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 445
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x4d

    iput v3, v1, Landroid/os/Message;->what:I

    .line 446
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 447
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "feature"

    const-string v4, "LIWL"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 449
    iget-object v3, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 450
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 451
    return-void
.end method

.method private setIwlanEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 174
    const/4 v1, 0x0

    .line 176
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 178
    if-eqz p1, :cond_0

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string v2, "actoin.IWLAN_ACTIVITY_REQUEST_CONNECT_IWLAN_NETWORK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 181
    invoke-direct {p0}, Lcom/android/settings/wifi/IwlanEnabler;->loggingIwlan()V

    .line 187
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    :goto_1
    return-void

    .line 183
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "actoin.IWLAN_ACTIVITY_REQUEST_DISCONNECT_IWLAN_NETWORK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0363

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 195
    :goto_2
    iget v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 196
    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0e0369

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    :goto_3
    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    goto :goto_2

    .line 199
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanSwitchPref:Landroid/preference/SwitchPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0e0368

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 417
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0379

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/IwlanEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/IwlanEnabler$2;-><init>(Lcom/android/settings/wifi/IwlanEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 424
    return-void
.end method


# virtual methods
.method public getPdgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pdgName"    # Ljava/lang/String;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/settings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0363

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 357
    :cond_0
    return-object p1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 166
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/IwlanEnabler;->setIwlanEnabled(Z)V

    .line 167
    const-string v0, "racoon"

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/IwlanEnabler;->isDeamonRunning(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIsVpnConnected:Z

    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public updataIwlanNetworks(Landroid/content/Intent;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 235
    const/4 v11, 0x0

    .line 237
    .local v11, "summary":Ljava/lang/String;
    const-string v12, "extra.IWLAN_NETWORKS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 238
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanNetworks:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 240
    const/4 v7, 0x0

    .line 241
    .local v7, "jsonObject":Lorg/json/JSONObject;
    const-string v12, "extra.IWLAN_NETWORKS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 244
    .local v9, "jsonString":Ljava/lang/String;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .local v8, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string v12, "SELECTED"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 247
    .local v10, "pdgDomainName":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 248
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    .line 251
    :cond_0
    const-string v12, "DEFAULT"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "defaultPdgDomainName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 253
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;

    .line 256
    :cond_1
    const-string v12, "LIST"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 257
    .local v6, "jsonArray":Lorg/json/JSONArray;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_3

    .line 258
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v4, v12, :cond_3

    .line 259
    const-string v12, "SELECTED"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "connectedNetworkName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 261
    .local v5, "iwlanNetwork":Lcom/android/settings/wifi/IwlanNetwork;
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 262
    new-instance v5, Lcom/android/settings/wifi/IwlanNetwork;

    .end local v5    # "iwlanNetwork":Lcom/android/settings/wifi/IwlanNetwork;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const/4 v14, 0x1

    const-string v15, "DEFAULT"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v12, v13, v14, v15}, Lcom/android/settings/wifi/IwlanNetwork;-><init>(Landroid/content/Context;Lorg/json/JSONObject;ZLjava/lang/String;)V

    .line 269
    .restart local v5    # "iwlanNetwork":Lcom/android/settings/wifi/IwlanNetwork;
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanNetworks:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 270
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v12}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/android/settings/wifi/IwlanNetwork;->setDependency(Ljava/lang/String;)V

    .line 258
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 265
    :cond_2
    new-instance v5, Lcom/android/settings/wifi/IwlanNetwork;

    .end local v5    # "iwlanNetwork":Lcom/android/settings/wifi/IwlanNetwork;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const/4 v14, 0x0

    const-string v15, "DEFAULT"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v12, v13, v14, v15}, Lcom/android/settings/wifi/IwlanNetwork;-><init>(Landroid/content/Context;Lorg/json/JSONObject;ZLjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v5    # "iwlanNetwork":Lcom/android/settings/wifi/IwlanNetwork;
    goto :goto_1

    .line 273
    .end local v1    # "connectedNetworkName":Ljava/lang/String;
    .end local v2    # "defaultPdgDomainName":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "iwlanNetwork":Lcom/android/settings/wifi/IwlanNetwork;
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v10    # "pdgDomainName":Ljava/lang/String;
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 274
    .local v3, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 278
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "jsonString":Ljava/lang/String;
    :cond_3
    const-string v12, "extra.iwlan.state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 279
    const-string v12, "extra.iwlan.state"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I

    .line 282
    :cond_4
    const-string v12, "extra.IWLAN_PDG_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 283
    const-string v12, "extra.IWLAN_PDG_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    .line 286
    :cond_5
    const-string v12, "extra.IWLAN_CHECKBOX_SUMMARY_PDG_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 287
    const-string v12, "extra.IWLAN_CHECKBOX_SUMMARY_PDG_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/wifi/IwlanEnabler;->getPdgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 292
    :goto_3
    const-string v12, "extra.IWLAN_CHECKBOX_SUMMARY_STATE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 293
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "extra.IWLAN_CHECKBOX_SUMMARY_STATE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 298
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v12, v11}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 302
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I

    if-gtz v12, :cond_e

    .line 303
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIsWifiConnected:Z

    if-eqz v12, :cond_d

    .line 305
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/IwlanEnabler;->isAvailableDataStorage()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 306
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanSwitchPref:Landroid/preference/SwitchPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 313
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanSwitchPref:Landroid/preference/SwitchPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 330
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_12

    .line 331
    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/settings/wifi/IwlanEnabler;->mIsIwlanEnable:Z

    .line 336
    :goto_7
    const-string v12, "extra.IWLAN_CHECKBOX_ENABLED"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 337
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanSwitchPref:Landroid/preference/SwitchPreference;

    const-string v13, "extra.IWLAN_CHECKBOX_ENABLED"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 340
    :cond_7
    const-string v12, "extra.IWLAN_CHECKBOX_CHECKED"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 341
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v12}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 342
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanSwitchPref:Landroid/preference/SwitchPreference;

    const-string v13, "extra.IWLAN_CHECKBOX_CHECKED"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 346
    :cond_8
    const-string v12, "extra.IWLAN_ALERTDIALOG_MESSAGE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 347
    const-string v12, "extra.IWLAN_ALERTDIALOG_MESSAGE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/wifi/IwlanEnabler;->showAlertDialog(Ljava/lang/String;)V

    .line 350
    :cond_9
    return-void

    .line 289
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/wifi/IwlanEnabler;->getPdgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 295
    :cond_b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const v14, 0x7f0e036a

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    .line 308
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanSwitchPref:Landroid/preference/SwitchPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 311
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanSwitchPref:Landroid/preference/SwitchPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 314
    :cond_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_f

    .line 315
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanSwitchPref:Landroid/preference/SwitchPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 316
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanSwitchPref:Landroid/preference/SwitchPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_6

    .line 317
    :cond_f
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_10

    .line 318
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanSwitchPref:Landroid/preference/SwitchPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 319
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanSwitchPref:Landroid/preference/SwitchPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_6

    .line 320
    :cond_10
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6

    .line 322
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/IwlanEnabler;->isAvailableDataStorage()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 323
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanSwitchPref:Landroid/preference/SwitchPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 327
    :goto_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanSwitchPref:Landroid/preference/SwitchPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_6

    .line 325
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanSwitchPref:Landroid/preference/SwitchPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_8

    .line 333
    :cond_12
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/settings/wifi/IwlanEnabler;->mIsIwlanEnable:Z

    goto/16 :goto_7

    .line 273
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    .restart local v9    # "jsonString":Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v7, v8

    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    goto/16 :goto_2
.end method
