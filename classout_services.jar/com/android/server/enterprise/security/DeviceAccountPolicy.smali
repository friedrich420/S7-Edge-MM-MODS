.class public Lcom/android/server/enterprise/security/DeviceAccountPolicy;
.super Landroid/app/enterprise/IDeviceAccountPolicy$Stub;
.source "DeviceAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final ACCOUNT_TYPE_EMAIL:Ljava/lang/String; = "com.samsung.android.email"

.field public static final ACCOUNT_TYPE_EMAIL_OLD:Ljava/lang/String; = "com.android.email"

.field public static final ACCOUNT_TYPE_EXCHANGE:Ljava/lang/String; = "com.samsung.android.exchange"

.field public static final ACCOUNT_TYPE_EXCHANGE_OLD:Ljava/lang/String; = "com.android.exchange"

.field public static final ACCOUNT_TYPE_GOOGLE:Ljava/lang/String; = "com.google"

.field public static final ACCOUNT_TYPE_LDAP:Ljava/lang/String; = "com.samsung.android.ldap"

.field public static final ACCOUNT_TYPE_LDAP_OLD:Ljava/lang/String; = "com.android.ldap"

.field public static final ACCOUNT_TYPE_SIGNIN:Ljava/lang/String; = "com.osp.app.signin"

.field public static final ADDITION_BLACKLIST:Ljava/lang/String; = "ADDITION_BLACKLIST"

.field public static final ADDITION_WHITELIST:Ljava/lang/String; = "ADDITION_WHITELIST"

.field public static final ALL_ACCOUNTS:Ljava/lang/String; = ".*"

.field public static final REMOVAL_BLACKLIST:Ljava/lang/String; = "REMOVAL_BLACKLIST"

.field public static final REMOVAL_WHITELIST:Ljava/lang/String; = "REMOVAL_WHITELIST"

.field private static final TAG:Ljava/lang/String; = "DeviceAccountPolicy"

.field private static mSupportedAccountTypes:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    const/4 v0, 0x0

    sput-object v0, mSupportedAccountTypes:[Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v0

    if-nez v0, :cond_28

    .line 88
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.email"

    aput-object v1, v0, v2

    const-string v1, "com.android.exchange"

    aput-object v1, v0, v3

    const-string v1, "com.android.ldap"

    aput-object v1, v0, v4

    const-string v1, "com.osp.app.signin"

    aput-object v1, v0, v5

    const-string v1, "com.google"

    aput-object v1, v0, v6

    sput-object v0, mSupportedAccountTypes:[Ljava/lang/String;

    .line 93
    :goto_27
    return-void

    .line 91
    :cond_28
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.samsung.android.email"

    aput-object v1, v0, v2

    const-string v1, "com.samsung.android.exchange"

    aput-object v1, v0, v3

    const-string v1, "com.samsung.android.ldap"

    aput-object v1, v0, v4

    const-string v1, "com.osp.app.signin"

    aput-object v1, v0, v5

    const-string v1, "com.google"

    aput-object v1, v0, v6

    sput-object v0, mSupportedAccountTypes:[Ljava/lang/String;

    goto :goto_27
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/app/enterprise/IDeviceAccountPolicy$Stub;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 109
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 110
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 111
    return-void
.end method

.method private addAccountsToBWLInternal(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .registers 13
    .param p1, "callingUid"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p4, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 144
    invoke-virtual {p0}, getSupportedAccountTypes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    if-nez p3, :cond_16

    .line 145
    :cond_d
    const-string v6, "DeviceAccountPolicy"

    const-string v7, "addAccountsToBWLInternal() : invalid parameter."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 166
    :cond_15
    :goto_15
    return v4

    .line 149
    :cond_16
    const/4 v4, 0x1

    .line 151
    .local v4, "result":Z
    :try_start_17
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    .local v0, "account":Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 153
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v6, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    const-string/jumbo v6, "type"

    invoke-virtual {v1, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string/jumbo v6, "name"

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string/jumbo v6, "listType"

    invoke-virtual {v1, v6, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    if-eqz v4, :cond_55

    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "AccountBlackWhiteList"

    invoke-virtual {v6, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_50} :catch_57

    move-result v6

    if-eqz v6, :cond_55

    const/4 v4, 0x1

    .line 160
    :goto_54
    goto :goto_1b

    :cond_55
    move v4, v5

    .line 157
    goto :goto_54

    .line 161
    .end local v0    # "account":Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_57
    move-exception v2

    .line 162
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "DeviceAccountPolicy"

    const-string v6, "Handled Exception in addAccountsToBWLInternal()"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    const/4 v4, 0x0

    goto :goto_15
.end method

.method private addAccountsToBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p4, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 138
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 139
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2, p3, p4}, addAccountsToBWLInternal(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z
    .registers 8
    .param p2, "match"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 121
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 123
    .local v1, "target":Ljava/lang/String;
    :try_start_c
    invoke-virtual {p2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    const-string v2, "DeviceAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAccountMatch() : matched. match = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,target ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_34} :catch_36

    .line 125
    const/4 v2, 0x1

    .line 133
    .end local v1    # "target":Ljava/lang/String;
    :goto_35
    return v2

    .line 127
    .restart local v1    # "target":Ljava/lang/String;
    :catch_36
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DeviceAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAccountMatch() : invalid matched. match = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,target ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "target":Ljava/lang/String;
    :cond_5a
    const/4 v2, 0x0

    goto :goto_35
.end method

.method private clearAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "listType"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 234
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 235
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 236
    .local v0, "callingUid":I
    const/4 v4, 0x0

    .line 238
    .local v4, "result":Z
    new-array v1, v11, [Ljava/lang/String;

    const-string v8, "adminUid"

    aput-object v8, v1, v9

    const-string/jumbo v8, "type"

    aput-object v8, v1, v7

    const-string/jumbo v8, "listType"

    aput-object v8, v1, v10

    .line 243
    .local v1, "columns":[Ljava/lang/String;
    new-array v5, v11, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v9

    aput-object p2, v5, v7

    aput-object p3, v5, v10

    .line 249
    .local v5, "values":[Ljava/lang/String;
    :try_start_27
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 250
    .local v6, "where":Landroid/content/ContentValues;
    const-string v8, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    const-string/jumbo v8, "type"

    invoke-virtual {v6, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string/jumbo v8, "listType"

    invoke-virtual {v6, v8, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "AccountBlackWhiteList"

    invoke-virtual {v8, v9, v1, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 257
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_51

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_59

    .line 258
    :cond_51
    const-string v8, "DeviceAccountPolicy"

    const-string v9, "clearAccountsFromBWLInternal() : no accounts."

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v6    # "where":Landroid/content/ContentValues;
    :goto_58
    return v7

    .line 262
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v6    # "where":Landroid/content/ContentValues;
    :cond_59
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "AccountBlackWhiteList"

    invoke-virtual {v7, v8, v1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_60} :catch_63

    move-result v4

    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v6    # "where":Landroid/content/ContentValues;
    :goto_61
    move v7, v4

    .line 269
    goto :goto_58

    .line 264
    :catch_63
    move-exception v2

    .line 265
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "DeviceAccountPolicy"

    const-string v8, "Handled Exception in clearAccountsFromBWLInternal()"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    const/4 v4, 0x0

    goto :goto_61
.end method

.method private enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 114
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AccountControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 203
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 205
    invoke-virtual {p0}, getSupportedAccountTypes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 206
    const-string v7, "DeviceAccountPolicy"

    const-string/jumbo v8, "getAccountsFromBWLInternal() : no support type."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_17
    :goto_17
    return-object v3

    .line 211
    :cond_18
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 212
    .local v6, "userId":I
    invoke-direct {p0, v6, p2, p3}, loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 214
    .local v0, "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v0, :cond_42

    .line 215
    const-string v7, "DeviceAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAccountsFromBWLInternal() : Account list for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is null."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 219
    :cond_42
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 220
    .local v5, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AccountControlInfo;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 223
    .local v4, "uid":Ljava/lang/Integer;
    new-instance v1, Landroid/app/enterprise/AccountControlInfo;

    invoke-direct {v1}, Landroid/app/enterprise/AccountControlInfo;-><init>()V

    .line 224
    .local v1, "aci":Landroid/app/enterprise/AccountControlInfo;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/app/enterprise/AccountControlInfo;->adminPackageName:Ljava/lang/String;

    .line 225
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, v1, Landroid/app/enterprise/AccountControlInfo;->entries:Ljava/util/List;

    .line 226
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_53
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 102
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 105
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 480
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 21
    .param p1, "userId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 276
    monitor-enter p0

    :try_start_1
    const-string v14, "DeviceAccountPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "loadAccounts() : userId  = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    move-object/from16 v0, p0

    iget-object v14, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "AccountBlackWhiteList"

    const-string v16, "adminUid"

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v14, v15, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v11

    .line 279
    .local v11, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-nez v14, :cond_3d

    .line 280
    const-string v14, "DeviceAccountPolicy"

    const-string/jumbo v15, "loadAccounts() : admin is null "

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_70

    .line 281
    const/4 v2, 0x0

    .line 327
    :cond_3b
    :goto_3b
    monitor-exit p0

    return-object v2

    .line 284
    :cond_3d
    :try_start_3d
    new-instance v12, Ljava/util/TreeSet;

    invoke-direct {v12, v11}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 287
    .local v12, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v14

    invoke-direct {v2, v14}, Ljava/util/HashMap;-><init>(I)V

    .line 289
    .local v2, "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_4f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_73

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 290
    .local v10, "uid":Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v3

    .line 291
    .local v3, "adminUid":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v15, Ljava/util/TreeSet;

    invoke-direct {v15}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v2, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6f
    .catchall {:try_start_3d .. :try_end_6f} :catchall_70

    goto :goto_4f

    .line 276
    .end local v2    # "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v3    # "adminUid":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "uid":Ljava/lang/Long;
    .end local v11    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v12    # "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_70
    move-exception v14

    monitor-exit p0

    throw v14

    .line 294
    .restart local v2    # "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v11    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v12    # "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_73
    const/4 v14, 0x2

    :try_start_74
    new-array v4, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "adminUid"

    aput-object v15, v4, v14

    const/4 v14, 0x1

    const-string/jumbo v15, "name"

    aput-object v15, v4, v14
    :try_end_81
    .catchall {:try_start_74 .. :try_end_81} :catchall_70

    .line 301
    .local v4, "columns":[Ljava/lang/String;
    :try_start_81
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 302
    .local v13, "where":Landroid/content/ContentValues;
    const-string v14, "containerID"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    const-string/jumbo v14, "userID"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    const-string/jumbo v14, "type"

    move-object/from16 v0, p2

    invoke-virtual {v13, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string/jumbo v14, "listType"

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v14, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "AccountBlackWhiteList"

    invoke-virtual {v14, v15, v4, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .line 309
    .local v6, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_c2

    .line 310
    const-string v14, "DeviceAccountPolicy"

    const-string/jumbo v15, "loadAccounts() : list empty "

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_c2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_c6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 314
    .local v5, "cv":Landroid/content/ContentValues;
    const-string v14, "adminUid"

    invoke-virtual {v5, v14}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 315
    .local v9, "typeLong":Ljava/lang/Long;
    if-eqz v9, :cond_101

    .line 316
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v3

    .line 317
    .restart local v3    # "adminUid":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Set;

    const-string/jumbo v15, "name"

    invoke-virtual {v5, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_f6} :catch_f7
    .catchall {:try_start_81 .. :try_end_f6} :catchall_70

    goto :goto_c6

    .line 323
    .end local v3    # "adminUid":I
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v6    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v9    # "typeLong":Ljava/lang/Long;
    .end local v13    # "where":Landroid/content/ContentValues;
    :catch_f7
    move-exception v7

    .line 324
    .local v7, "e":Ljava/lang/Exception;
    :try_start_f8
    const-string v14, "DeviceAccountPolicy"

    const-string v15, "Handled Exception in loadAccounts()"

    invoke-static {v14, v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ff
    .catchall {:try_start_f8 .. :try_end_ff} :catchall_70

    goto/16 :goto_3b

    .line 319
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v5    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v9    # "typeLong":Ljava/lang/Long;
    .restart local v13    # "where":Landroid/content/ContentValues;
    :cond_101
    :try_start_101
    const-string v14, "DeviceAccountPolicy"

    const-string/jumbo v15, "loadAccounts() : can not get admin. "

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_109} :catch_f7
    .catchall {:try_start_101 .. :try_end_109} :catchall_70

    goto :goto_c6
.end method

.method private removeAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p4, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 171
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 172
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 174
    .local v1, "callingUid":I
    invoke-virtual {p0}, getSupportedAccountTypes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    if-nez p3, :cond_1e

    .line 175
    :cond_14
    const-string v7, "DeviceAccountPolicy"

    const-string/jumbo v9, "removeAccountsFromBWLInternal() : invalid parameter."

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 198
    :cond_1d
    :goto_1d
    return v5

    .line 179
    :cond_1e
    const/4 v5, 0x1

    .line 181
    .local v5, "result":Z
    :try_start_1f
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    .local v0, "account":Ljava/lang/String;
    const/4 v9, 0x4

    new-array v2, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v2, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "type"

    aput-object v10, v2, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "name"

    aput-object v10, v2, v9

    const/4 v9, 0x3

    const-string/jumbo v10, "listType"

    aput-object v10, v2, v9

    .line 186
    .local v2, "columns":[Ljava/lang/String;
    const/4 v9, 0x4

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    const/4 v9, 0x1

    aput-object p2, v6, v9

    const/4 v9, 0x2

    aput-object v0, v6, v9

    const/4 v9, 0x3

    aput-object p4, v6, v9

    .line 189
    .local v6, "values":[Ljava/lang/String;
    if-eqz v5, :cond_6a

    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "AccountBlackWhiteList"

    invoke-virtual {v9, v10, v2, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_65} :catch_6c

    move-result v9

    if-eqz v9, :cond_6a

    move v5, v7

    .line 192
    :goto_69
    goto :goto_23

    :cond_6a
    move v5, v8

    .line 189
    goto :goto_69

    .line 193
    .end local v0    # "account":Ljava/lang/String;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "values":[Ljava/lang/String;
    :catch_6c
    move-exception v3

    .line 194
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "DeviceAccountPolicy"

    const-string v8, "Handled Exception in removeAccountsFromBWLInternal()"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    const/4 v5, 0x0

    goto :goto_1d
.end method


# virtual methods
.method public addAccountsToAdditionBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 410
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "ADDITION_BLACKLIST"

    invoke-direct {p0, p1, p2, p3, v0}, addAccountsToBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addAccountsToAdditionWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 428
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "ADDITION_WHITELIST"

    invoke-direct {p0, p1, p2, p3, v0}, addAccountsToBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addAccountsToRemovalBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 335
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "REMOVAL_BLACKLIST"

    invoke-direct {p0, p1, p2, p3, v0}, addAccountsToBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addAccountsToRemovalWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 352
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "REMOVAL_WHITELIST"

    invoke-direct {p0, p1, p2, p3, v0}, addAccountsToBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearAccountsFromAdditionBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 423
    const-string v0, "ADDITION_BLACKLIST"

    invoke-direct {p0, p1, p2, v0}, clearAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearAccountsFromAdditionWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 441
    const-string v0, "ADDITION_WHITELIST"

    invoke-direct {p0, p1, p2, v0}, clearAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearAccountsFromRemovalBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 348
    const-string v0, "REMOVAL_BLACKLIST"

    invoke-direct {p0, p1, p2, v0}, clearAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearAccountsFromRemovalWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 365
    const-string v0, "REMOVAL_WHITELIST"

    invoke-direct {p0, p1, p2, v0}, clearAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAccountsFromAdditionBlackLists(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AccountControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    const-string v0, "ADDITION_BLACKLIST"

    invoke-direct {p0, p1, p2, v0}, getAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsFromAdditionWhiteLists(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AccountControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 437
    const-string v0, "ADDITION_WHITELIST"

    invoke-direct {p0, p1, p2, v0}, getAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsFromRemovalBlackLists(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AccountControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    const-string v0, "REMOVAL_BLACKLIST"

    invoke-direct {p0, p1, p2, v0}, getAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsFromRemovalWhiteLists(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AccountControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    const-string v0, "REMOVAL_WHITELIST"

    invoke-direct {p0, p1, p2, v0}, getAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedAccountTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    sget-object v0, mSupportedAccountTypes:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 14
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    const/4 v8, 0x1

    .line 445
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v2, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 446
    .local v2, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 447
    .local v6, "userId":I
    const-string v7, "ADDITION_BLACKLIST"

    invoke-direct {p0, v6, p1, v7}, loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 449
    .local v0, "accountBlackMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v7, "ADDITION_WHITELIST"

    invoke-direct {p0, v6, p1, v7}, loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 452
    .local v1, "accountWhiteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v0, :cond_26

    .line 453
    const-string v7, "DeviceAccountPolicy"

    const-string/jumbo v9, "isAccountAdditionAllowed() : no BlackList."

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 476
    :goto_25
    return v7

    .line 457
    :cond_26
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 458
    .local v5, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 460
    .local v4, "uid":Ljava/lang/Integer;
    if-eqz v1, :cond_4c

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-direct {p0, v7, p2}, checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2e

    .line 466
    :cond_4c
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-direct {p0, v7, p2}, checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 467
    if-eqz p3, :cond_64

    .line 468
    const v7, 0x1040b47

    invoke-static {v7}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 471
    :cond_64
    const-string v7, "DeviceAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isAccountAdditionAllowed() : account has blocked. userId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v7, 0x0

    goto :goto_25

    .end local v4    # "uid":Ljava/lang/Integer;
    :cond_7f
    move v7, v8

    .line 476
    goto :goto_25
.end method

.method public isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    .line 369
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 370
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 371
    .local v1, "userId":I
    invoke-virtual {p0, p1, p2, p3, v1}, isAccountRemovalAllowedAsUser(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v2

    return v2
.end method

.method public isAccountRemovalAllowedAsUser(Ljava/lang/String;Ljava/lang/String;ZI)Z
    .registers 13
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z
    .param p4, "userId"    # I

    .prologue
    const/4 v6, 0x1

    .line 375
    const-string v5, "REMOVAL_BLACKLIST"

    invoke-direct {p0, p4, p1, v5}, loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 377
    .local v0, "accountBlackMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v5, "REMOVAL_WHITELIST"

    invoke-direct {p0, p4, p1, v5}, loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 380
    .local v1, "accountWhiteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v0, :cond_19

    .line 381
    const-string v5, "DeviceAccountPolicy"

    const-string/jumbo v7, "isAccountRemovalAllowedAsUser() : no BlackList."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 405
    :goto_18
    return v5

    .line 385
    :cond_19
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 386
    .local v4, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 388
    .local v3, "uid":Ljava/lang/Integer;
    if-eqz v1, :cond_48

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-direct {p0, v5, p2}, checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 390
    const-string v5, "DeviceAccountPolicy"

    const-string/jumbo v7, "isAccountRemovalAllowedAsUser() : no WhiteList."

    invoke-static {v5, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 395
    :cond_48
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-direct {p0, v5, p2}, checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 396
    if-eqz p3, :cond_60

    .line 397
    const v5, 0x1040b46

    invoke-static {v5}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 400
    :cond_60
    const-string v5, "DeviceAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAccountAdditionAllowed() : account has blocked. userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v5, 0x0

    goto :goto_18

    .end local v3    # "uid":Ljava/lang/Integer;
    :cond_7b
    move v5, v6

    .line 405
    goto :goto_18
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 486
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 492
    return-void
.end method

.method public onContainerCreation(II)V
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 506
    const-string v0, "DeviceAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceAccountPolicy.onContainerCreation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 517
    const-string v0, "DeviceAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceAccountPolicy.onContainerRemoved("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 502
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 511
    const-string v0, "DeviceAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceAccountPolicy.onPreContainerRemoval("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return-void
.end method

.method public removeAccountsFromAdditionBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 415
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "ADDITION_BLACKLIST"

    invoke-direct {p0, p1, p2, p3, v0}, removeAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAccountsFromAdditionWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 433
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "ADDITION_WHITELIST"

    invoke-direct {p0, p1, p2, p3, v0}, removeAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAccountsFromRemovalBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 340
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "REMOVAL_BLACKLIST"

    invoke-direct {p0, p1, p2, p3, v0}, removeAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAccountsFromRemovalWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtIfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 357
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "REMOVAL_WHITELIST"

    invoke-direct {p0, p1, p2, p3, v0}, removeAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 497
    return-void
.end method
