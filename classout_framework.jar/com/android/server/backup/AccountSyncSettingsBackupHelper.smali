.class public Lcom/android/server/backup/AccountSyncSettingsBackupHelper;
.super Ljava/lang/Object;
.source "AccountSyncSettingsBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final DEBUG:Z = false

.field private static final JSON_FORMAT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final JSON_FORMAT_HEADER_KEY:Ljava/lang/String; = "account_data"

.field private static final JSON_FORMAT_VERSION:I = 0x1

.field private static final KEY_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final KEY_ACCOUNT_AUTHORITIES:Ljava/lang/String; = "authorities"

.field private static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "name"

.field private static final KEY_ACCOUNT_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_AUTHORITY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_AUTHORITY_SYNC_ENABLED:Ljava/lang/String; = "syncEnabled"

.field private static final KEY_AUTHORITY_SYNC_STATE:Ljava/lang/String; = "syncState"

.field private static final KEY_MASTER_SYNC_ENABLED:Ljava/lang/String; = "masterSyncEnabled"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final MD5_BYTE_SIZE:I = 0x10

.field private static final STATE_VERSION:I = 0x1

.field private static final SYNC_REQUEST_LATCH_TIMEOUT_SECONDS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AccountSyncSettingsBackupHelper"


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 82
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, mAccountManager:Landroid/accounts/AccountManager;

    .line 83
    return-void
.end method

.method private generateMd5Checksum([B)[B
    .registers 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 226
    if-nez p1, :cond_4

    .line 227
    const/4 v1, 0x0

    .line 231
    :goto_3
    return-object v1

    .line 230
    :cond_4
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 231
    .local v0, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    goto :goto_3
.end method

.method private getAccountsHashSet()Ljava/util/HashSet;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    iget-object v6, p0, mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v6}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 293
    .local v2, "accounts":[Landroid/accounts/Account;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 294
    .local v1, "accountHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/accounts/Account;>;"
    move-object v3, v2

    .local v3, "arr$":[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_e
    if-ge v4, v5, :cond_18

    aget-object v0, v3, v4

    .line 295
    .local v0, "account":Landroid/accounts/Account;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 294
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 297
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_18
    return-object v1
.end method

.method private readOldMd5Checksum(Landroid/os/ParcelFileDescriptor;)[B
    .registers 10
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x1

    .line 187
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 190
    .local v0, "dataInput":Ljava/io/DataInputStream;
    new-array v2, v7, [B

    .line 192
    .local v2, "oldMd5Checksum":[B
    :try_start_13
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 193
    .local v3, "stateVersion":I
    if-gt v3, v6, :cond_25

    .line 197
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    if-ge v1, v7, :cond_4e

    .line 198
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    aput-byte v4, v2, v1

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 201
    .end local v1    # "i":I
    :cond_25
    const-string v4, "AccountSyncSettingsBackupHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Backup state version is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (support only up to version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/io/EOFException; {:try_start_13 .. :try_end_4e} :catch_52
    .catchall {:try_start_13 .. :try_end_4e} :catchall_57

    .line 207
    :cond_4e
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 209
    .end local v3    # "stateVersion":I
    :goto_51
    return-object v2

    .line 204
    :catch_52
    move-exception v4

    .line 207
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    goto :goto_51

    :catchall_57
    move-exception v4

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    throw v4
.end method

.method private restoreExistingAccountSyncSettingsFromJSON(Lorg/json/JSONObject;)V
    .registers 13
    .param p1, "accountJSON"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 332
    const-string v9, "authorities"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 333
    .local v3, "authorities":Lorg/json/JSONArray;
    const-string/jumbo v9, "name"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "accountName":Ljava/lang/String;
    const-string/jumbo v9, "type"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, "accountType":Ljava/lang/String;
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .local v0, "account":Landroid/accounts/Account;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v6, v9, :cond_4c

    .line 338
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 339
    .local v4, "authority":Lorg/json/JSONObject;
    const-string/jumbo v9, "name"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 340
    .local v5, "authorityName":Ljava/lang/String;
    const-string/jumbo v9, "syncEnabled"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 341
    .local v7, "wasSyncEnabled":Z
    const-string/jumbo v9, "syncState"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 343
    .local v8, "wasSyncable":I
    invoke-static {v0, v5, v7, v10}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 346
    if-nez v7, :cond_47

    .line 347
    if-nez v8, :cond_4a

    move v9, v10

    :goto_44
    invoke-static {v0, v5, v9}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 337
    :cond_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 347
    :cond_4a
    const/4 v9, 0x2

    goto :goto_44

    .line 354
    .end local v4    # "authority":Lorg/json/JSONObject;
    .end local v5    # "authorityName":Ljava/lang/String;
    .end local v7    # "wasSyncEnabled":Z
    .end local v8    # "wasSyncable":I
    :cond_4c
    return-void
.end method

.method private serializeAccountSyncSettingsToJSON()Lorg/json/JSONObject;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, mAccountManager:Landroid/accounts/AccountManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v6

    .line 123
    .local v6, "accounts":[Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getUserId()I

    move-result v20

    invoke-static/range {v20 .. v20}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v17

    .line 128
    .local v17, "syncAdapters":[Landroid/content/SyncAdapterType;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 130
    .local v5, "accountTypeToAuthorities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v7, v17

    .local v7, "arr$":[Landroid/content/SyncAdapterType;
    array-length v15, v7

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_21
    if-ge v13, v15, :cond_66

    aget-object v16, v7, v13

    .line 132
    .local v16, "syncAdapter":Landroid/content/SyncAdapterType;
    invoke-virtual/range {v16 .. v16}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v20

    if-nez v20, :cond_2e

    .line 130
    :goto_2b
    add-int/lit8 v13, v13, 0x1

    goto :goto_21

    .line 135
    :cond_2e
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4e

    .line 136
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_4e
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 142
    .end local v16    # "syncAdapter":Landroid/content/SyncAdapterType;
    :cond_66
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 143
    .local v12, "backupJSON":Lorg/json/JSONObject;
    const-string/jumbo v20, "version"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 144
    const-string/jumbo v20, "masterSyncEnabled"

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 146
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 147
    .local v4, "accountJSONArray":Lorg/json/JSONArray;
    move-object v7, v6

    .local v7, "arr$":[Landroid/accounts/Account;
    array-length v15, v7

    const/4 v13, 0x0

    move v14, v13

    .end local v13    # "i$":I
    .local v14, "i$":I
    :goto_8e
    if-ge v14, v15, :cond_118

    aget-object v2, v7, v14

    .line 148
    .local v2, "account":Landroid/accounts/Account;
    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 152
    .local v8, "authorities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_a6

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_aa

    .line 147
    .end local v14    # "i$":I
    :cond_a6
    :goto_a6
    add-int/lit8 v13, v14, 0x1

    .restart local v13    # "i$":I
    move v14, v13

    .end local v13    # "i$":I
    .restart local v14    # "i$":I
    goto :goto_8e

    .line 156
    :cond_aa
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 157
    .local v3, "accountJSON":Lorg/json/JSONObject;
    const-string/jumbo v20, "name"

    iget-object v0, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string/jumbo v20, "type"

    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 162
    .local v9, "authoritiesJSONArray":Lorg/json/JSONArray;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v14    # "i$":I
    .local v13, "i$":Ljava/util/Iterator;
    :goto_d4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_10d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 163
    .local v10, "authority":Ljava/lang/String;
    invoke-static {v2, v10}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v19

    .line 164
    .local v19, "syncState":I
    invoke-static {v2, v10}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v18

    .line 166
    .local v18, "syncEnabled":Z
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 167
    .local v11, "authorityJSON":Lorg/json/JSONObject;
    const-string/jumbo v20, "name"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string/jumbo v20, "syncState"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 169
    const-string/jumbo v20, "syncEnabled"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 170
    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_d4

    .line 172
    .end local v10    # "authority":Ljava/lang/String;
    .end local v11    # "authorityJSON":Lorg/json/JSONObject;
    .end local v18    # "syncEnabled":Z
    .end local v19    # "syncState":I
    :cond_10d
    const-string v20, "authorities"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_a6

    .line 176
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v3    # "accountJSON":Lorg/json/JSONObject;
    .end local v8    # "authorities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "authoritiesJSONArray":Lorg/json/JSONArray;
    .end local v13    # "i$":Ljava/util/Iterator;
    .restart local v14    # "i$":I
    :cond_118
    const-string v20, "accounts"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    return-object v12
.end method

.method private writeNewMd5Checksum(Landroid/os/ParcelFileDescriptor;[B)V
    .registers 7
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "md5Checksum"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 220
    .local v0, "dataOutput":Ljava/io/DataOutputStream;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 221
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 222
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 223
    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 13
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "output"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 92
    :try_start_0
    invoke-direct {p0}, serializeAccountSyncSettingsToJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 99
    .local v1, "dataJSON":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 100
    .local v0, "dataBytes":[B
    invoke-direct {p0, p1}, readOldMd5Checksum(Landroid/os/ParcelFileDescriptor;)[B

    move-result-object v5

    .line 101
    .local v5, "oldMd5Checksum":[B
    invoke-direct {p0, v0}, generateMd5Checksum([B)[B

    move-result-object v4

    .line 102
    .local v4, "newMd5Checksum":[B
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_30

    .line 103
    array-length v2, v0

    .line 104
    .local v2, "dataSize":I
    const-string v6, "account_data"

    invoke-virtual {p2, v6, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 105
    invoke-virtual {p2, v0, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 107
    const-string v6, "AccountSyncSettingsBackupHelper"

    const-string v7, "Backup successful."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v2    # "dataSize":I
    :goto_2c
    invoke-direct {p0, p3, v4}, writeNewMd5Checksum(Landroid/os/ParcelFileDescriptor;[B)V

    .line 116
    .end local v0    # "dataBytes":[B
    .end local v1    # "dataJSON":Lorg/json/JSONObject;
    .end local v4    # "newMd5Checksum":[B
    .end local v5    # "oldMd5Checksum":[B
    :goto_2f
    return-void

    .line 109
    .restart local v0    # "dataBytes":[B
    .restart local v1    # "dataJSON":Lorg/json/JSONObject;
    .restart local v4    # "newMd5Checksum":[B
    .restart local v5    # "oldMd5Checksum":[B
    :cond_30
    const-string v6, "AccountSyncSettingsBackupHelper"

    const-string v7, "Old and new MD5 checksums match. Skipping backup."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_37} :catch_38
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_37} :catch_54
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_37} :catch_52

    goto :goto_2c

    .line 113
    .end local v0    # "dataBytes":[B
    .end local v1    # "dataJSON":Lorg/json/JSONObject;
    .end local v4    # "newMd5Checksum":[B
    .end local v5    # "oldMd5Checksum":[B
    :catch_38
    move-exception v3

    .line 114
    .local v3, "e":Ljava/lang/Exception;
    :goto_39
    const-string v6, "AccountSyncSettingsBackupHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t backup account sync settings\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 113
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_52
    move-exception v3

    goto :goto_39

    :catch_54
    move-exception v3

    goto :goto_39
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .registers 19
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    .prologue
    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v14

    new-array v8, v14, [B

    .line 242
    .local v8, "dataBytes":[B
    :try_start_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/app/backup/BackupDataInputStream;->read([B)I

    .line 243
    new-instance v10, Ljava/lang/String;

    const-string v14, "UTF-8"

    invoke-direct {v10, v8, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 246
    .local v10, "dataString":Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 247
    .local v9, "dataJSON":Lorg/json/JSONObject;
    const-string/jumbo v14, "masterSyncEnabled"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 248
    .local v13, "masterSyncEnabled":Z
    const-string v14, "accounts"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 250
    .local v3, "accountJSONArray":Lorg/json/JSONArray;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v7

    .line 251
    .local v7, "currentMasterSyncEnabled":Z
    if-eqz v7, :cond_2e

    .line 253
    const/4 v14, 0x0

    invoke-static {v14}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_2e} :catch_70
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_2e} :catch_8a

    .line 257
    :cond_2e
    :try_start_2e
    invoke-direct/range {p0 .. p0}, getAccountsHashSet()Ljava/util/HashSet;

    move-result-object v6

    .line 258
    .local v6, "currentAccounts":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/accounts/Account;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_33
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v12, v14, :cond_60

    .line 259
    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 260
    .local v2, "accountJSON":Lorg/json/JSONObject;
    const-string/jumbo v14, "name"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 261
    .local v4, "accountName":Ljava/lang/String;
    const-string/jumbo v14, "type"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, "accountType":Ljava/lang/String;
    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .local v1, "account":Landroid/accounts/Account;
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5d

    .line 268
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, restoreExistingAccountSyncSettingsFromJSON(Lorg/json/JSONObject;)V
    :try_end_5d
    .catchall {:try_start_2e .. :try_end_5d} :catchall_6b

    .line 258
    :cond_5d
    add-int/lit8 v12, v12, 0x1

    goto :goto_33

    .line 277
    .end local v1    # "account":Landroid/accounts/Account;
    .end local v2    # "accountJSON":Lorg/json/JSONObject;
    .end local v4    # "accountName":Ljava/lang/String;
    .end local v5    # "accountType":Ljava/lang/String;
    :cond_60
    :try_start_60
    invoke-static {v13}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 280
    const-string v14, "AccountSyncSettingsBackupHelper"

    const-string v15, "Restore successful."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .end local v3    # "accountJSONArray":Lorg/json/JSONArray;
    .end local v6    # "currentAccounts":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/accounts/Account;>;"
    .end local v7    # "currentMasterSyncEnabled":Z
    .end local v9    # "dataJSON":Lorg/json/JSONObject;
    .end local v10    # "dataString":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "masterSyncEnabled":Z
    :goto_6a
    return-void

    .line 277
    .restart local v3    # "accountJSONArray":Lorg/json/JSONArray;
    .restart local v7    # "currentMasterSyncEnabled":Z
    .restart local v9    # "dataJSON":Lorg/json/JSONObject;
    .restart local v10    # "dataString":Ljava/lang/String;
    .restart local v13    # "masterSyncEnabled":Z
    :catchall_6b
    move-exception v14

    invoke-static {v13}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    throw v14
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_70} :catch_70
    .catch Lorg/json/JSONException; {:try_start_60 .. :try_end_70} :catch_8a

    .line 281
    .end local v3    # "accountJSONArray":Lorg/json/JSONArray;
    .end local v7    # "currentMasterSyncEnabled":Z
    .end local v9    # "dataJSON":Lorg/json/JSONObject;
    .end local v10    # "dataString":Ljava/lang/String;
    .end local v13    # "masterSyncEnabled":Z
    :catch_70
    move-exception v11

    .line 282
    .local v11, "e":Ljava/lang/Exception;
    :goto_71
    const-string v14, "AccountSyncSettingsBackupHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Couldn\'t restore account sync settings\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 281
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_8a
    move-exception v11

    goto :goto_71
.end method

.method public writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .registers 2
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 359
    return-void
.end method
