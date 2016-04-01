.class public Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;
.super Ljava/lang/Object;
.source "PersonalPageStorageManager.java"


# static fields
.field private static final MAX_UNMOUNT_TRY_COUNT:I = 0x3

.field private static final PERSONAL_PAGE_DST_PATH:Ljava/lang/String; = "/storage/Private"

.field private static final PERSONAL_PAGE_SRC_PATH:Ljava/lang/String; = "/mnt/shell/privatemode"

.field private static final PRIVATE_FS_KEY:Ljava/lang/String; = "private_fs_key"

.field private static final PRIVATE_FS_KEY_BACKUP:Ljava/lang/String; = "private_fs_key_backup"

.field private static final PRIVATE_FS_PASSWORD_MAX_LENGTH:I = 0x18

.field private static final PRIVATE_MODE_EPM_ID:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "PersonalPageStorageManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPpManager:Lcom/sec/knox/container/util/PrivatePartitionManager;

.field private mSecureProperties:Lcom/samsung/android/personalpage/service/util/SecureProperties;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mContext:Landroid/content/Context;

    .line 56
    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mPpManager:Lcom/sec/knox/container/util/PrivatePartitionManager;

    .line 59
    iput-object p1, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mContext:Landroid/content/Context;

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/PrivatePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/PrivatePartitionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mPpManager:Lcom/sec/knox/container/util/PrivatePartitionManager;

    .line 62
    new-instance v1, Lcom/samsung/android/personalpage/service/util/SecureProperties;

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/personalpage/service/util/SecureProperties;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mSecureProperties:Lcom/samsung/android/personalpage/service/util/SecureProperties;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private generatePrivateFsKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/16 v3, 0x18

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->generateSha1Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 248
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 251
    :cond_0
    return-object v0
.end method

.method private generateSha1Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 255
    const/4 v5, 0x0

    .line 258
    .local v5, "hash":Ljava/lang/String;
    :try_start_0
    const-string v9, "SHA-1"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 259
    .local v3, "digest":Ljava/security/MessageDigest;
    const-string v9, "UTF-8"

    invoke-virtual {p1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 260
    .local v2, "bytes":[B
    const/4 v9, 0x0

    array-length v10, v2

    invoke-virtual {v3, v2, v9, v10}, Ljava/security/MessageDigest;->update([BII)V

    .line 261
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 262
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .local v8, "sb":Ljava/lang/StringBuilder;
    move-object v0, v2

    .local v0, "arr$":[B
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-byte v1, v0, v6

    .line 264
    .local v1, "b":B
    const-string v9, "%02X"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 266
    .end local v1    # "b":B
    :cond_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 273
    .end local v0    # "arr$":[B
    .end local v2    # "bytes":[B
    .end local v3    # "digest":Ljava/security/MessageDigest;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v5

    .line 267
    :catch_0
    move-exception v4

    .line 268
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 269
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v4

    .line 270
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method private getPrivateFsKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 211
    .local v0, "fskey":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_pm_first_mount"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mSecureProperties:Lcom/samsung/android/personalpage/service/util/SecureProperties;

    const-string v2, "private_fs_key"

    invoke-virtual {v1, v2}, Lcom/samsung/android/personalpage/service/util/SecureProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    if-nez v0, :cond_0

    .line 214
    const-string v1, "PersonalPageStorageManager"

    const-string v2, "getPrivateFsKey: Failed to get key value from SecureProperties"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_0
    :goto_0
    const-string v1, "PersonalPageStorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPrivateFsKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 232
    :goto_1
    return-object v1

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mSecureProperties:Lcom/samsung/android/personalpage/service/util/SecureProperties;

    const-string v2, "private_fs_key"

    invoke-virtual {v1, v2}, Lcom/samsung/android/personalpage/service/util/SecureProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    if-nez v0, :cond_0

    .line 220
    invoke-direct {p0, p0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->generatePrivateFsKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_2

    .line 222
    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->setPrivateFsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    const-string v1, "PersonalPageStorageManager"

    const-string v2, "getPrivateFsKey: Failed to set PrivateFsKey, so return null"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const/4 v1, 0x0

    goto :goto_1

    .line 227
    :cond_2
    const-string v1, "PersonalPageStorageManager"

    const-string v2, "getPrivateFsKey: Failed to generate password"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPrivateFsKeyBackup()Ljava/lang/String;
    .locals 3

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "fskey":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mSecureProperties:Lcom/samsung/android/personalpage/service/util/SecureProperties;

    const-string v2, "private_fs_key_backup"

    invoke-virtual {v1, v2}, Lcom/samsung/android/personalpage/service/util/SecureProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    if-nez v0, :cond_0

    .line 239
    const-string v1, "PersonalPageStorageManager"

    const-string v2, "getPrivateFsKeyBackup: Failed to get key value from SecureProperties"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_0
    return-object v0
.end method

.method private mount()Z
    .locals 7

    .prologue
    const/16 v6, 0x3e8

    const/4 v2, 0x0

    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, "result":Z
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mPpManager:Lcom/sec/knox/container/util/PrivatePartitionManager;

    if-eqz v3, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->getPrivateFsKey()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "password":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 88
    const-string v3, "PersonalPageStorageManager"

    const-string v4, "Password is null"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .end local v0    # "password":Ljava/lang/String;
    :goto_0
    return v2

    .line 91
    .restart local v0    # "password":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mPpManager:Lcom/sec/knox/container/util/PrivatePartitionManager;

    const-string v4, "/mnt/shell/privatemode"

    const-string v5, "/storage/Private"

    invoke-virtual {v3, v6, v4, v5, v0}, Lcom/sec/knox/container/util/PrivatePartitionManager;->mountPrivateMode(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 92
    if-eqz v1, :cond_2

    .line 93
    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->setPrivateFsKeyBackup(Ljava/lang/String;)Z

    .end local v0    # "password":Ljava/lang/String;
    :cond_1
    :goto_1
    move v2, v1

    .line 107
    goto :goto_0

    .line 96
    .restart local v0    # "password":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->getPrivateFsKeyBackup()Ljava/lang/String;

    move-result-object v0

    .line 97
    if-nez v0, :cond_3

    .line 98
    const-string v3, "PersonalPageStorageManager"

    const-string v4, "Backup Password is null"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mPpManager:Lcom/sec/knox/container/util/PrivatePartitionManager;

    const-string v3, "/mnt/shell/privatemode"

    const-string v4, "/storage/Private"

    invoke-virtual {v2, v6, v3, v4, v0}, Lcom/sec/knox/container/util/PrivatePartitionManager;->mountPrivateMode(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 102
    if-eqz v1, :cond_1

    .line 103
    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->setPrivateFsKey(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private mountNormal(Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;)Z
    .locals 8
    .param p1, "mPmManagerService"    # Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    .prologue
    const/16 v7, 0x3e8

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 141
    const/4 v1, 0x0

    .line 142
    .local v1, "result":Z
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mPpManager:Lcom/sec/knox/container/util/PrivatePartitionManager;

    if-eqz v3, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->getPrivateFsKey()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "password":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 145
    const-string v3, "PersonalPageStorageManager"

    const-string v4, "mountNormal : Password is null"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .end local v0    # "password":Ljava/lang/String;
    .end local p1    # "mPmManagerService":Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;
    :goto_0
    return v2

    .line 148
    .restart local v0    # "password":Ljava/lang/String;
    .restart local p1    # "mPmManagerService":Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mPpManager:Lcom/sec/knox/container/util/PrivatePartitionManager;

    const-string v4, "/mnt/shell/privatemode"

    const-string v5, "/storage/Private"

    invoke-virtual {v3, v7, v4, v5, v0}, Lcom/sec/knox/container/util/PrivatePartitionManager;->mountPrivateMode(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 149
    if-eqz v1, :cond_2

    .line 150
    check-cast p1, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    .end local p1    # "mPmManagerService":Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;
    invoke-virtual {p1, v6}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->notifyEventToClient(I)V

    .line 151
    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->setPrivateFsKeyBackup(Ljava/lang/String;)Z

    .end local v0    # "password":Ljava/lang/String;
    :cond_1
    :goto_1
    move v2, v1

    .line 166
    goto :goto_0

    .line 154
    .restart local v0    # "password":Ljava/lang/String;
    .restart local p1    # "mPmManagerService":Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->getPrivateFsKeyBackup()Ljava/lang/String;

    move-result-object v0

    .line 155
    if-nez v0, :cond_3

    .line 156
    const-string v3, "PersonalPageStorageManager"

    const-string v4, "mountNormal : Backup Password is null"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mPpManager:Lcom/sec/knox/container/util/PrivatePartitionManager;

    const-string v3, "/mnt/shell/privatemode"

    const-string v4, "/storage/Private"

    invoke-virtual {v2, v7, v3, v4, v0}, Lcom/sec/knox/container/util/PrivatePartitionManager;->mountPrivateMode(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 160
    if-eqz v1, :cond_1

    .line 161
    check-cast p1, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    .end local p1    # "mPmManagerService":Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;
    invoke-virtual {p1, v6}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->notifyEventToClient(I)V

    .line 162
    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->setPrivateFsKey(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private setPrivateFsKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mSecureProperties:Lcom/samsung/android/personalpage/service/util/SecureProperties;

    const-string v1, "private_fs_key"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/personalpage/service/util/SecureProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setPrivateFsKeyBackup(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mSecureProperties:Lcom/samsung/android/personalpage/service/util/SecureProperties;

    const-string v1, "private_fs_key_backup"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/personalpage/service/util/SecureProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private unmount()Z
    .locals 5

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 113
    .local v1, "retry":I
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mPpManager:Lcom/sec/knox/container/util/PrivatePartitionManager;

    if-eqz v2, :cond_0

    .line 114
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mPpManager:Lcom/sec/knox/container/util/PrivatePartitionManager;

    const/16 v3, 0x3e8

    const-string v4, "/storage/Private"

    invoke-virtual {v2, v3, v4}, Lcom/sec/knox/container/util/PrivatePartitionManager;->unmountPrivateMode(ILjava/lang/String;)Z

    move-result v0

    .line 116
    if-eqz v0, :cond_1

    .line 123
    :cond_0
    return v0

    .line 119
    :cond_1
    const-string v2, "PersonalPageStorageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to unmount, retry cnt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public changeNormalPrivateModeStorage(ZLcom/samsung/android/privatemode/IPrivateModeManager$Stub;)Z
    .locals 4
    .param p1, "mPersonalPageMode"    # Z
    .param p2, "mPmManagerService"    # Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "result":Z
    const-string v1, "PersonalPageStorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeNormalPrivateModeStorage[BEGIN]: Mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    if-eqz p1, :cond_0

    .line 131
    invoke-direct {p0, p2}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mountNormal(Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;)Z

    move-result v0

    .line 136
    :goto_0
    const-string v1, "PersonalPageStorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeNormalPrivateModeStorage[FINISH]: Result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return v0

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->unmount()Z

    move-result v0

    goto :goto_0
.end method

.method public changePrivateModeStorage(Z)Z
    .locals 4
    .param p1, "mPersonalPageMode"    # Z

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "result":Z
    const-string v1, "PersonalPageStorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changePrivateModeStorage[BEGIN]: Mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    if-eqz p1, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mount()Z

    move-result v0

    .line 79
    :goto_0
    const-string v1, "PersonalPageStorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changePrivateModeStorage[FINISH]: Result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return v0

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->unmount()Z

    move-result v0

    goto :goto_0
.end method

.method public onPersonalPageModeChanged(Z)V
    .locals 6
    .param p1, "mPersonalPageMode"    # Z

    .prologue
    .line 171
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mContext:Landroid/content/Context;

    const-string v5, "storage"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 172
    .local v2, "mStorageManager":Landroid/os/storage/StorageManager;
    if-eqz v2, :cond_4

    .line 173
    if-eqz p1, :cond_1

    .line 174
    const-string v4, "/storage/Private"

    const-string v5, "mounted"

    invoke-virtual {v2, v4, v5}, Landroid/os/storage/StorageManager;->setVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    const-string v4, "/storage/Private"

    invoke-virtual {v2, v4}, Landroid/os/storage/StorageManager;->getVolume(Ljava/lang/String;)Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 180
    .local v3, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v3, :cond_3

    .line 181
    new-instance v0, Landroid/content/Intent;

    if-eqz p1, :cond_2

    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    :goto_1
    const-string v5, "file:///storage/Private"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 182
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "storage_volume"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 183
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 185
    if-nez p1, :cond_0

    .line 186
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_EJECT"

    const-string v5, "file:///storage/Private"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 187
    .local v1, "intentForEject":Landroid/content/Intent;
    const-string v4, "storage_volume"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 188
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 198
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentForEject":Landroid/content/Intent;
    .end local v3    # "volume":Landroid/os/storage/StorageVolume;
    :cond_0
    :goto_2
    return-void

    .line 177
    :cond_1
    const-string v4, "/storage/Private"

    const-string v5, "unmounted"

    invoke-virtual {v2, v4, v5}, Landroid/os/storage/StorageManager;->setVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 181
    .restart local v3    # "volume":Landroid/os/storage/StorageVolume;
    :cond_2
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    goto :goto_1

    .line 192
    :cond_3
    const-string v4, "PersonalPageStorageManager"

    const-string v5, "onPersonalPageModeChanged: StorageVolume is null"

    invoke-static {v4, v5}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 196
    .end local v3    # "volume":Landroid/os/storage/StorageVolume;
    :cond_4
    const-string v4, "PersonalPageStorageManager"

    const-string v5, "onPersonalPageModeChanged: StorageManage is null"

    invoke-static {v4, v5}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
