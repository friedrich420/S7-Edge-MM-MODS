.class public Lcom/android/settings/cloud/CloudSettings;
.super Ljava/lang/Object;
.source "CloudSettings.java"


# static fields
.field private static AUTHORITY:Ljava/lang/String;

.field private static CONTENT_PATH:Landroid/net/Uri;

.field private static mInstance:Lcom/android/settings/cloud/CloudSettings;


# instance fields
.field private accountName:Ljava/lang/String;

.field private documentSync:Z

.field private documentSyncFolderName:Ljava/lang/String;

.field private mIsWifiOnlyDoc:Z

.field private mIsWifiOnlyMusic:Z

.field private mIsWifiOnlyPhoto:Z

.field private mIsWifiOnlyVideo:Z

.field private mSupportDocumentSync:Z

.field private mSupportMusicSync:Z

.field private mSupportPhotoSync:Z

.field private mSupportVideoSync:Z

.field private musicSync:Z

.field private numberOfDisplayingPhotos:I

.field private photoSync:Z

.field private storageUsage:Ljava/lang/String;

.field private venderId:I

.field private videoSync:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 98
    const-string v0, "cloud"

    sput-object v0, Lcom/android/settings/cloud/CloudSettings;->AUTHORITY:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/cloud/CloudSettings;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cloud/CloudSettings;->CONTENT_PATH:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    invoke-direct {p0, p1}, Lcom/android/settings/cloud/CloudSettings;->parceCloudSettings(Landroid/os/Bundle;)V

    .line 342
    return-void
.end method

.method public static getCountryCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 431
    const-string v0, ""

    .line 432
    .local v0, "country_code":Ljava/lang/String;
    new-instance v1, Lcom/android/settings/csc/CscParser;

    invoke-static {}, Lcom/android/settings/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/csc/CscParser;-><init>(Ljava/lang/String;)V

    .line 433
    .local v1, "cscParser":Lcom/android/settings/csc/CscParser;
    if-eqz v1, :cond_5

    .line 435
    const-string v2, "GeneralInfo.Country"

    invoke-virtual {v1, v2}, Lcom/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 437
    :cond_0
    const-string v2, "persist.omc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    :cond_1
    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 439
    :cond_2
    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    :cond_3
    :goto_0
    if-nez v0, :cond_4

    .line 444
    const-string v0, ""

    .line 446
    .end local v0    # "country_code":Ljava/lang/String;
    :cond_4
    return-object v0

    .line 441
    .restart local v0    # "country_code":Ljava/lang/String;
    :cond_5
    const-string v2, "CloudSettings"

    const-string v3, "CscParser is null or no customer.xml"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/settings/cloud/CloudSettings;
    .locals 3

    .prologue
    .line 308
    const-class v1, Lcom/android/settings/cloud/CloudSettings;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settings/cloud/CloudSettings;->mInstance:Lcom/android/settings/cloud/CloudSettings;

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Lcom/android/settings/cloud/CloudSettings;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/settings/cloud/CloudSettings;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/settings/cloud/CloudSettings;->mInstance:Lcom/android/settings/cloud/CloudSettings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/os/Bundle;)Lcom/android/settings/cloud/CloudSettings;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 321
    const-class v1, Lcom/android/settings/cloud/CloudSettings;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settings/cloud/CloudSettings;->mInstance:Lcom/android/settings/cloud/CloudSettings;

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Lcom/android/settings/cloud/CloudSettings;

    invoke-direct {v0, p0}, Lcom/android/settings/cloud/CloudSettings;-><init>(Landroid/os/Bundle;)V

    sput-object v0, Lcom/android/settings/cloud/CloudSettings;->mInstance:Lcom/android/settings/cloud/CloudSettings;

    .line 326
    :goto_0
    sget-object v0, Lcom/android/settings/cloud/CloudSettings;->mInstance:Lcom/android/settings/cloud/CloudSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 324
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/settings/cloud/CloudSettings;->mInstance:Lcom/android/settings/cloud/CloudSettings;

    invoke-direct {v0, p0}, Lcom/android/settings/cloud/CloudSettings;->parceCloudSettings(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSalesCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 405
    const-string v0, ""

    .line 406
    .local v0, "sales_code":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/csc/CscParser;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 408
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    :cond_0
    const-string v1, "persist.omc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    :cond_1
    if-nez v0, :cond_2

    .line 412
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    :cond_2
    return-object v0
.end method

.method public static isChinaModel()Z
    .locals 3

    .prologue
    .line 419
    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "CHZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->isLDUModel()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CHINA"

    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isLDUModel()Z
    .locals 2

    .prologue
    .line 426
    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "PAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parceCloudSettings(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 266
    if-eqz p1, :cond_0

    .line 268
    const-string v1, "storageVender"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/cloud/CloudSettings;->venderId:I

    .line 269
    const-string v1, "accountName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettings;->accountName:Ljava/lang/String;

    .line 270
    const-string v1, "documentSyncFolderName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettings;->documentSyncFolderName:Ljava/lang/String;

    .line 271
    const-string v1, "numberOfDisplayingPhotos"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/cloud/CloudSettings;->numberOfDisplayingPhotos:I

    .line 274
    const-string v1, "caToSettingsValues"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 276
    .local v0, "settingsValue":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/cloud/CloudSettings;->mSupportPhotoSync:Z

    .line 277
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/cloud/CloudSettings;->mSupportVideoSync:Z

    .line 278
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/cloud/CloudSettings;->mSupportMusicSync:Z

    .line 279
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/settings/cloud/CloudSettings;->mSupportDocumentSync:Z

    .line 281
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_5

    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/android/settings/cloud/CloudSettings;->photoSync:Z

    .line 282
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_6

    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lcom/android/settings/cloud/CloudSettings;->videoSync:Z

    .line 283
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_7

    move v1, v2

    :goto_6
    iput-boolean v1, p0, Lcom/android/settings/cloud/CloudSettings;->musicSync:Z

    .line 284
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_8

    move v1, v2

    :goto_7
    iput-boolean v1, p0, Lcom/android/settings/cloud/CloudSettings;->documentSync:Z

    .line 286
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_9

    move v1, v2

    :goto_8
    iput-boolean v1, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyPhoto:Z

    .line 287
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_a

    move v1, v2

    :goto_9
    iput-boolean v1, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyVideo:Z

    .line 288
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_b

    move v1, v2

    :goto_a
    iput-boolean v1, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyMusic:Z

    .line 289
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_c

    :goto_b
    iput-boolean v2, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyDoc:Z

    .line 293
    .end local v0    # "settingsValue":I
    :cond_0
    return-void

    .restart local v0    # "settingsValue":I
    :cond_1
    move v1, v3

    .line 276
    goto :goto_0

    :cond_2
    move v1, v3

    .line 277
    goto :goto_1

    :cond_3
    move v1, v3

    .line 278
    goto :goto_2

    :cond_4
    move v1, v3

    .line 279
    goto :goto_3

    :cond_5
    move v1, v3

    .line 281
    goto :goto_4

    :cond_6
    move v1, v3

    .line 282
    goto :goto_5

    :cond_7
    move v1, v3

    .line 283
    goto :goto_6

    :cond_8
    move v1, v3

    .line 284
    goto :goto_7

    :cond_9
    move v1, v3

    .line 286
    goto :goto_8

    :cond_a
    move v1, v3

    .line 287
    goto :goto_9

    :cond_b
    move v1, v3

    .line 288
    goto :goto_a

    :cond_c
    move v2, v3

    .line 289
    goto :goto_b
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettings;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    const-string v0, "get_setting_value"

    return-object v0
.end method

.method public getContentPath()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 397
    sget-object v0, Lcom/android/settings/cloud/CloudSettings;->CONTENT_PATH:Landroid/net/Uri;

    return-object v0
.end method

.method public getDocumentSyncFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettings;->documentSyncFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageUsage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettings;->storageUsage:Ljava/lang/String;

    return-object v0
.end method

.method public getVenderId()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/android/settings/cloud/CloudSettings;->venderId:I

    return v0
.end method

.method public isAccountSet()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettings;->accountName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDocumentSync()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettings;->documentSync:Z

    return v0
.end method

.method public isMusicSync()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettings;->musicSync:Z

    return v0
.end method

.method public isPhoneModel(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 383
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 384
    .local v1, "telephony":Landroid/telephony/TelephonyManager;
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 385
    .local v0, "cManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 393
    :cond_0
    :goto_0
    return v3

    .line 389
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    .line 390
    .local v2, "type":I
    if-nez v2, :cond_2

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 393
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isPhotoSync()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettings;->photoSync:Z

    return v0
.end method

.method public isSupportSync(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 143
    packed-switch p1, :pswitch_data_0

    .line 153
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 145
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettings;->mSupportPhotoSync:Z

    goto :goto_0

    .line 147
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettings;->mSupportVideoSync:Z

    goto :goto_0

    .line 149
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettings;->mSupportMusicSync:Z

    goto :goto_0

    .line 151
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettings;->mSupportDocumentSync:Z

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isVideoSync()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettings;->videoSync:Z

    return v0
.end method

.method public isWifiOnly(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_0

    .line 117
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 109
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyPhoto:Z

    goto :goto_0

    .line 111
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyVideo:Z

    goto :goto_0

    .line 113
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyMusic:Z

    goto :goto_0

    .line 115
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyDoc:Z

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDocumentSync(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/android/settings/cloud/CloudSettings;->documentSync:Z

    .line 229
    return-void
.end method

.method public setMusicSync(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/android/settings/cloud/CloudSettings;->musicSync:Z

    .line 225
    return-void
.end method

.method public setPhotoSync(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/settings/cloud/CloudSettings;->photoSync:Z

    .line 217
    return-void
.end method

.method public setStorageUsage(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 296
    if-eqz p1, :cond_0

    .line 297
    const-string v0, "storageVender"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/cloud/CloudSettings;->venderId:I

    .line 298
    const-string v0, "storageUsage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettings;->storageUsage:Ljava/lang/String;

    .line 300
    :cond_0
    return-void
.end method

.method public setVideoSync(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/android/settings/cloud/CloudSettings;->videoSync:Z

    .line 221
    return-void
.end method

.method public setWifiOnly(IZ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "value"    # Z

    .prologue
    .line 126
    packed-switch p1, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iput-boolean p2, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyPhoto:Z

    goto :goto_0

    .line 131
    :pswitch_1
    iput-boolean p2, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyVideo:Z

    goto :goto_0

    .line 134
    :pswitch_2
    iput-boolean p2, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyMusic:Z

    goto :goto_0

    .line 137
    :pswitch_3
    iput-boolean p2, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyDoc:Z

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storageVender--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/cloud/CloudSettings;->venderId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accountName--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettings;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "documentSyncFolderName--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettings;->documentSyncFolderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "photoSync--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/cloud/CloudSettings;->photoSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoSync--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/cloud/CloudSettings;->videoSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "musicSync--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/cloud/CloudSettings;->musicSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "docSync--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/cloud/CloudSettings;->documentSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numberOfDisplayingPhotos--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/cloud/CloudSettings;->numberOfDisplayingPhotos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storageUsage--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettings;->storageUsage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "photo  --"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyPhoto:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video  --"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyVideo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "music  --"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyMusic:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doc  --"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyDoc:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
