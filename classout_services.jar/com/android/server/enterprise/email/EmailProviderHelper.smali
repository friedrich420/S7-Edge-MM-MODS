.class public Lcom/android/server/enterprise/email/EmailProviderHelper;
.super Ljava/lang/Object;
.source "EmailProviderHelper.java"


# static fields
.field private static final EMAIL_CONTENT_URI:Ljava/lang/String; = "content://com.samsung.android.email.mdm.provider"

.field public static final FAIL_SET_ACCOUNT_OBJECT:J = -0x1L

.field private static final LDAP_CONTENT_URI:Ljava/lang/String; = "content://com.samsung.android.email.ldap.provider"

.field private static final TAG:Ljava/lang/String; = "EmailProviderHelperService"

.field private static final TAG_MAP_ACCOUNT:Ljava/lang/String; = "A"

.field private static mAccountObjectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, mAccountObjectMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createEmailContentProviderCursor(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 19
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "protection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 69
    if-nez p0, :cond_4

    .line 70
    const/4 v0, 0x0

    .line 88
    :goto_3
    return-object v0

    .line 71
    :cond_4
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 72
    .local v9, "userID":I
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 73
    .local v6, "containerId":I
    const/4 v7, 0x0

    .line 74
    .local v7, "emails":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 76
    .local v10, "psToken":J
    if-eqz v9, :cond_35

    .line 77
    :try_start_13
    invoke-static {v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v7

    .line 82
    :goto_21
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_30} :catch_37
    .catchall {:try_start_13 .. :try_end_30} :catchall_45

    move-result-object v0

    .line 86
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 80
    :cond_35
    move-object v7, p0

    goto :goto_21

    .line 83
    :catch_37
    move-exception v8

    .line 84
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_38
    const-string v0, "EmailProviderHelperService"

    const-string/jumbo v1, "createEmailContentProviderCursor() : Failed, Exception occurs. "

    invoke-static {v0, v1, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_45

    .line 86
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    const/4 v0, 0x0

    goto :goto_3

    .line 86
    .end local v8    # "ex":Ljava/lang/Exception;
    :catchall_45
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private static createID()J
    .registers 4

    .prologue
    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 163
    .local v0, "accId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_d

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    .line 164
    :cond_d
    return-wide v0
.end method

.method public static deleteLDAPAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Z
    .registers 14
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 455
    const/4 v9, 0x0

    .line 456
    .local v9, "ret":Z
    const/4 v7, 0x0

    .line 458
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_2
    invoke-static {}, getLDAPContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "deleteLDAPAccount"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, createEmailContentProviderCursor(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 459
    if-eqz v7, :cond_57

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 460
    const-string/jumbo v0, "deleteLDAPAccount"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 461
    const-string v0, "EmailProviderHelperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleteLDAPAccount() : ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4b} :catch_61
    .catchall {:try_start_2 .. :try_end_4b} :catchall_77

    .line 471
    :goto_4b
    if-eqz v7, :cond_56

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_56

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 473
    :cond_56
    :goto_56
    return v9

    .line 464
    :cond_57
    :try_start_57
    const-string v0, "EmailProviderHelperService"

    const-string/jumbo v1, "deleteLDAPAccount() : cannot get cursor from EmailProvider."

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5f} :catch_61
    .catchall {:try_start_57 .. :try_end_5f} :catchall_77

    .line 465
    const/4 v9, 0x0

    goto :goto_4b

    .line 467
    :catch_61
    move-exception v8

    .line 468
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_62
    const-string v0, "EmailProviderHelperService"

    const-string/jumbo v1, "deleteLDAPAccount() : Failed, Exception occurs. "

    invoke-static {v0, v1, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6a
    .catchall {:try_start_62 .. :try_end_6a} :catchall_77

    .line 469
    const/4 v9, 0x0

    .line 471
    if-eqz v7, :cond_56

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_56

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_56

    .end local v8    # "ex":Ljava/lang/Exception;
    :catchall_77
    move-exception v0

    if-eqz v7, :cond_83

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_83

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_83
    throw v0
.end method

.method public static getAccountId(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J
    .registers 27
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;
    .param p5, "isEAS"    # Z

    .prologue
    .line 177
    const-wide/16 v14, -0x1

    .line 178
    .local v14, "ret":J
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 179
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 180
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 181
    if-eqz p3, :cond_12

    if-nez p4, :cond_4e

    .line 182
    :cond_12
    const-string v18, "EmailProviderHelperService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getAccountId() : faild with Invalid input parameters. arg1 = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , arg2 = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , arg3 = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v16, v14

    .line 224
    .end local v14    # "ret":J
    .local v16, "ret":J
    :goto_4d
    return-wide v16

    .line 186
    .end local v16    # "ret":J
    .restart local v14    # "ret":J
    :cond_4e
    if-eqz p5, :cond_ac

    .line 187
    move-object/from16 v6, p2

    .line 188
    .local v6, "easDomain":Ljava/lang/String;
    move-object/from16 v7, p3

    .line 189
    .local v7, "easUser":Ljava/lang/String;
    if-nez v6, :cond_8d

    move-object v2, v7

    .line 190
    .local v2, "User":Ljava/lang/String;
    :goto_57
    move-object/from16 v4, p4

    .line 191
    .local v4, "activeSyncHost":Ljava/lang/String;
    invoke-static/range {p0 .. p1}, getAllEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v3

    .line 192
    .local v3, "acctList":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-eqz v3, :cond_8a

    .line 193
    move-object v5, v3

    .local v5, "arr$":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    array-length v9, v5

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_62
    if-ge v8, v9, :cond_8a

    aget-object v11, v5, v8

    .line 195
    .local v11, "mAccount":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-eqz v11, :cond_a9

    iget-object v0, v11, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a9

    iget-object v0, v11, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEasUser:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a9

    iget-object v0, v11, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a9

    .line 196
    iget-wide v14, v11, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mId:J

    .end local v2    # "User":Ljava/lang/String;
    .end local v3    # "acctList":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v4    # "activeSyncHost":Ljava/lang/String;
    .end local v5    # "arr$":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v6    # "easDomain":Ljava/lang/String;
    .end local v7    # "easUser":Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "mAccount":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_8a
    :goto_8a
    move-wide/from16 v16, v14

    .line 224
    .end local v14    # "ret":J
    .restart local v16    # "ret":J
    goto :goto_4d

    .line 189
    .end local v16    # "ret":J
    .restart local v6    # "easDomain":Ljava/lang/String;
    .restart local v7    # "easUser":Ljava/lang/String;
    .restart local v14    # "ret":J
    :cond_8d
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\\"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_57

    .line 193
    .restart local v2    # "User":Ljava/lang/String;
    .restart local v3    # "acctList":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .restart local v4    # "activeSyncHost":Ljava/lang/String;
    .restart local v5    # "arr$":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    .restart local v11    # "mAccount":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_a9
    add-int/lit8 v8, v8, 0x1

    goto :goto_62

    .line 203
    .end local v2    # "User":Ljava/lang/String;
    .end local v3    # "acctList":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v4    # "activeSyncHost":Ljava/lang/String;
    .end local v5    # "arr$":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v6    # "easDomain":Ljava/lang/String;
    .end local v7    # "easUser":Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "mAccount":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_ac
    if-eqz p2, :cond_11e

    .line 204
    move-object/from16 v10, p2

    .line 205
    .local v10, "login":Ljava/lang/String;
    move-object/from16 v13, p3

    .line 206
    .local v13, "serverAddress":Ljava/lang/String;
    move-object/from16 v12, p4

    .line 207
    .local v12, "protocol":Ljava/lang/String;
    invoke-static/range {p0 .. p1}, getAllEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v3

    .line 208
    .local v3, "acctList":[Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-eqz v3, :cond_8a

    .line 209
    move-object v5, v3

    .local v5, "arr$":[Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    array-length v9, v5

    .restart local v9    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_bd
    if-ge v8, v9, :cond_8a

    aget-object v11, v5, v8

    .line 211
    .local v11, "mAccount":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-eqz v11, :cond_11b

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUserName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_ed

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_ed

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingProtocol:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_117

    :cond_ed
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUserName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11b

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11b

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingProtocol:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11b

    .line 214
    :cond_117
    iget-wide v14, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mId:J

    .line 215
    goto/16 :goto_8a

    .line 209
    :cond_11b
    add-int/lit8 v8, v8, 0x1

    goto :goto_bd

    .line 221
    .end local v3    # "acctList":[Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .end local v5    # "arr$":[Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "login":Ljava/lang/String;
    .end local v11    # "mAccount":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .end local v12    # "protocol":Ljava/lang/String;
    .end local v13    # "serverAddress":Ljava/lang/String;
    :cond_11e
    const-string v18, "EmailProviderHelperService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getAccountId() : [EMAIL] faild with Invalid input parameters. arg1 = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , arg2 = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , arg3 = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8a
.end method

.method private static getAllAccountIDS(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)[J
    .registers 15
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 93
    const/4 v12, 0x0

    .line 94
    .local v12, "ret":[J
    const/4 v8, 0x0

    .line 96
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    :try_start_3
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, createEmailContentProviderCursor(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 97
    if-eqz v8, :cond_3f

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3f

    .line 98
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 99
    .local v7, "count":I
    const/4 v10, 0x0

    .line 100
    .local v10, "idx":I
    new-array v12, v7, [J

    move v11, v10

    .line 101
    .end local v10    # "idx":I
    .local v11, "idx":I
    :goto_28
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 102
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "idx":I
    .restart local v10    # "idx":I
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    aput-wide v0, v12, v11
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3d} :catch_4b
    .catchall {:try_start_3 .. :try_end_3d} :catchall_61

    move v11, v10

    .end local v10    # "idx":I
    .restart local v11    # "idx":I
    goto :goto_28

    .line 109
    .end local v7    # "count":I
    .end local v11    # "idx":I
    :cond_3f
    if-eqz v8, :cond_4a

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_4a
    :goto_4a
    return-object v12

    .line 105
    :catch_4b
    move-exception v9

    .line 106
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_4c
    const-string v0, "EmailProviderHelperService"

    const-string/jumbo v1, "getAllAccountIDS() : Failed, Exception occurs. "

    invoke-static {v0, v1, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_61

    .line 107
    const/4 v12, 0x0

    .line 109
    if-eqz v8, :cond_4a

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_4a

    .end local v9    # "ex":Ljava/lang/Exception;
    :catchall_61
    move-exception v0

    if-eqz v8, :cond_6d

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6d

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6d
    throw v0
.end method

.method public static getAllEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .registers 15
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 290
    const/4 v10, 0x0

    .line 291
    .local v10, "ret":[Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v11, "templist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/enterprise/email/EnterpriseEmailAccount;>;"
    invoke-static {p0, p1}, getAllAccountIDS(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)[J

    move-result-object v2

    .line 293
    .local v2, "accIds":[J
    if-eqz v2, :cond_1f

    .line 294
    move-object v4, v2

    .local v4, "arr$":[J
    array-length v8, v4

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_f
    if-ge v5, v8, :cond_1f

    aget-wide v0, v4, v5

    .line 295
    .local v0, "Id":J
    invoke-static {p0, p1, v0, v1}, getEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v9

    .line 296
    .local v9, "mAccount":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-eqz v9, :cond_1c

    .line 297
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 301
    .end local v0    # "Id":J
    .end local v4    # "arr$":[J
    .end local v5    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "mAccount":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_1f
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_42

    .line 302
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v10, v12, [Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 303
    const/4 v6, 0x0

    .line 304
    .local v6, "idx":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 305
    .local v3, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .local v7, "idx":I
    aput-object v3, v10, v6

    move v6, v7

    .line 306
    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    goto :goto_30

    .line 308
    .end local v3    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "idx":I
    :cond_42
    return-object v10
.end method

.method public static getAllEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .registers 15
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 375
    const/4 v10, 0x0

    .line 376
    .local v10, "ret":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v11, "templist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/enterprise/email/EnterpriseExchangeAccount;>;"
    invoke-static {p0, p1}, getAllAccountIDS(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)[J

    move-result-object v2

    .line 378
    .local v2, "accIds":[J
    if-eqz v2, :cond_1f

    .line 379
    move-object v4, v2

    .local v4, "arr$":[J
    array-length v8, v4

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_f
    if-ge v5, v8, :cond_1f

    aget-wide v0, v4, v5

    .line 380
    .local v0, "Id":J
    invoke-static {p0, p1, v0, v1}, getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v9

    .line 381
    .local v9, "mAccount":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-eqz v9, :cond_1c

    .line 382
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 386
    .end local v0    # "Id":J
    .end local v4    # "arr$":[J
    .end local v5    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "mAccount":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_1f
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_42

    .line 387
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v10, v12, [Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 388
    const/4 v6, 0x0

    .line 389
    .local v6, "idx":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 390
    .local v3, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .local v7, "idx":I
    aput-object v3, v10, v6

    move v6, v7

    .line 391
    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    goto :goto_30

    .line 393
    .end local v3    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "idx":I
    :cond_42
    return-object v10
.end method

.method public static getAllLDAPAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 14
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/sec/enterprise/email/EnterpriseLDAPAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    const/4 v10, 0x0

    .line 427
    .local v10, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/sec/enterprise/email/EnterpriseLDAPAccount;>;"
    const/4 v7, 0x0

    .line 428
    .local v7, "bundle_ldap":Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 430
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_3
    invoke-static {}, getLDAPContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "getAllLDAPAccounts"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, createEmailContentProviderCursor(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 431
    if-eqz v8, :cond_55

    .line 432
    invoke-interface {v8}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 433
    if-eqz v7, :cond_36

    .line 434
    const-string/jumbo v0, "email.ldap.all.account"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 435
    if-nez v10, :cond_2a

    .line 436
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_3f
    .catchall {:try_start_3 .. :try_end_29} :catchall_5e

    .end local v10    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/sec/enterprise/email/EnterpriseLDAPAccount;>;"
    .local v11, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/sec/enterprise/email/EnterpriseLDAPAccount;>;"
    move-object v10, v11

    .line 448
    .end local v11    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/sec/enterprise/email/EnterpriseLDAPAccount;>;"
    .restart local v10    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/sec/enterprise/email/EnterpriseLDAPAccount;>;"
    :cond_2a
    :goto_2a
    if-eqz v8, :cond_35

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 450
    :cond_35
    :goto_35
    return-object v10

    .line 439
    :cond_36
    :try_start_36
    const-string v0, "EmailProviderHelperService"

    const-string/jumbo v1, "getAllLDAPAccount() : Fail to get Data from Email. "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3e} :catch_3f
    .catchall {:try_start_36 .. :try_end_3e} :catchall_5e

    goto :goto_2a

    .line 444
    :catch_3f
    move-exception v9

    .line 445
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_40
    const-string v0, "EmailProviderHelperService"

    const-string/jumbo v1, "getAllLDAPAccount() : Failed, Exception occurs. "

    invoke-static {v0, v1, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_5e

    .line 446
    const/4 v10, 0x0

    .line 448
    if-eqz v8, :cond_35

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_35

    .line 442
    .end local v9    # "ex":Ljava/lang/Exception;
    :cond_55
    :try_start_55
    const-string v0, "EmailProviderHelperService"

    const-string/jumbo v1, "getAllLDAPAccount() : cannot get cursor from EmailProvider."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5d} :catch_3f
    .catchall {:try_start_55 .. :try_end_5d} :catchall_5e

    goto :goto_2a

    .line 448
    :catchall_5e
    move-exception v0

    if-eqz v8, :cond_6a

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6a
    throw v0
.end method

.method public static getEmailAccountObject(Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .registers 8
    .param p0, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "Id"    # J

    .prologue
    .line 131
    sget-object v1, mAccountObjectMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_3a

    instance-of v1, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    if-eqz v1, :cond_3a

    .line 133
    sget-object v1, mAccountObjectMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    check-cast v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 137
    .end local v0    # "result":Ljava/lang/Object;
    :goto_39
    return-object v0

    .line 136
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_3a
    const-string v1, "EmailProviderHelperService"

    const-string/jumbo v2, "getEmailAccountObject() : failed. "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x0

    goto :goto_39
.end method

.method private static getEmailContentUri()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 168
    const-string v0, "content://com.samsung.android.email.mdm.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .registers 20
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 231
    const/4 v13, 0x0

    .line 232
    .local v13, "ret":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    const/4 v10, 0x0

    .line 233
    .local v10, "cursor":Landroid/database/Cursor;
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_25

    .line 234
    const-string v2, "EmailProviderHelperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEnterpriseEmailAccount() : Failed, invalid account Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v13

    .line 263
    .end local v13    # "ret":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .local v14, "ret":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :goto_24
    return-object v14

    .line 238
    .end local v14    # "ret":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .restart local v13    # "ret":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_25
    :try_start_25
    invoke-static {}, getEmailContentUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const-string/jumbo v6, "getAccountInfo"

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v8}, createEmailContentProviderCursor(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 239
    if-eqz v10, :cond_a2

    .line 240
    invoke-interface {v10}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 241
    .local v9, "bundle_email":Landroid/os/Bundle;
    if-eqz v9, :cond_83

    .line 242
    const-string/jumbo v2, "email.account"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    .line 243
    .local v12, "parcel":Landroid/os/Parcelable;
    if-eqz v12, :cond_59

    instance-of v2, v12, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    if-eqz v2, :cond_59

    .line 244
    move-object v0, v12

    check-cast v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-object v13, v0
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_59} :catch_8c
    .catchall {:try_start_25 .. :try_end_59} :catchall_ab

    .line 256
    .end local v9    # "bundle_email":Landroid/os/Bundle;
    .end local v12    # "parcel":Landroid/os/Parcelable;
    :cond_59
    :goto_59
    if-eqz v10, :cond_64

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_64

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 258
    :cond_64
    :goto_64
    if-nez v13, :cond_b8

    .line 259
    const-string v2, "EmailProviderHelperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEnterpriseEmailAccount() : Failed, accId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_81
    move-object v14, v13

    .line 263
    .end local v13    # "ret":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .restart local v14    # "ret":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    goto :goto_24

    .line 247
    .end local v14    # "ret":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .restart local v9    # "bundle_email":Landroid/os/Bundle;
    .restart local v13    # "ret":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_83
    :try_start_83
    const-string v2, "EmailProviderHelperService"

    const-string/jumbo v3, "getEnterpriseEmailAccount() : Fail to get Data from Email. "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_8b} :catch_8c
    .catchall {:try_start_83 .. :try_end_8b} :catchall_ab

    goto :goto_59

    .line 252
    .end local v9    # "bundle_email":Landroid/os/Bundle;
    :catch_8c
    move-exception v11

    .line 253
    .local v11, "ex":Ljava/lang/Exception;
    :try_start_8d
    const-string v2, "EmailProviderHelperService"

    const-string/jumbo v3, "getEnterpriseEmailAccount() : Failed, Exception occurs. "

    invoke-static {v2, v3, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_95
    .catchall {:try_start_8d .. :try_end_95} :catchall_ab

    .line 254
    const/4 v13, 0x0

    .line 256
    if-eqz v10, :cond_64

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_64

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_64

    .line 250
    .end local v11    # "ex":Ljava/lang/Exception;
    :cond_a2
    :try_start_a2
    const-string v2, "EmailProviderHelperService"

    const-string/jumbo v3, "getEnterpriseEmailAccount() : cannot get cursor from EmailProvider."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_aa} :catch_8c
    .catchall {:try_start_a2 .. :try_end_aa} :catchall_ab

    goto :goto_59

    .line 256
    :catchall_ab
    move-exception v2

    if-eqz v10, :cond_b7

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_b7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_b7
    throw v2

    .line 261
    :cond_b8
    const-string v2, "EmailProviderHelperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEnterpriseEmailAccount() : successfully get Data from Email, accId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81
.end method

.method public static getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .registers 20
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 316
    const/4 v13, 0x0

    .line 317
    .local v13, "ret":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    const/4 v10, 0x0

    .line 318
    .local v10, "cursor":Landroid/database/Cursor;
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_25

    .line 319
    const-string v2, "EmailProviderHelperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEnterpriseExchangeAccount() : Failed, invalid account Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v13

    .line 348
    .end local v13    # "ret":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .local v14, "ret":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :goto_24
    return-object v14

    .line 323
    .end local v14    # "ret":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .restart local v13    # "ret":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_25
    :try_start_25
    invoke-static {}, getEmailContentUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const-string/jumbo v6, "getAccountInfo"

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v8}, createEmailContentProviderCursor(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 324
    if-eqz v10, :cond_a2

    .line 325
    invoke-interface {v10}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 326
    .local v9, "bundle_email":Landroid/os/Bundle;
    if-eqz v9, :cond_83

    .line 327
    const-string/jumbo v2, "eas.account"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    .line 328
    .local v12, "parcel":Landroid/os/Parcelable;
    if-eqz v12, :cond_59

    instance-of v2, v12, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    if-eqz v2, :cond_59

    .line 329
    move-object v0, v12

    check-cast v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-object v13, v0
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_59} :catch_8c
    .catchall {:try_start_25 .. :try_end_59} :catchall_ab

    .line 341
    .end local v9    # "bundle_email":Landroid/os/Bundle;
    .end local v12    # "parcel":Landroid/os/Parcelable;
    :cond_59
    :goto_59
    if-eqz v10, :cond_64

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_64

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 343
    :cond_64
    :goto_64
    if-nez v13, :cond_b8

    .line 344
    const-string v2, "EmailProviderHelperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEnterpriseExchangeAccount() : Failed, accId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_81
    move-object v14, v13

    .line 348
    .end local v13    # "ret":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .restart local v14    # "ret":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    goto :goto_24

    .line 332
    .end local v14    # "ret":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .restart local v9    # "bundle_email":Landroid/os/Bundle;
    .restart local v13    # "ret":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_83
    :try_start_83
    const-string v2, "EmailProviderHelperService"

    const-string/jumbo v3, "getEnterpriseExchangeAccount() : Fail to get Data from Email. "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_8b} :catch_8c
    .catchall {:try_start_83 .. :try_end_8b} :catchall_ab

    goto :goto_59

    .line 337
    .end local v9    # "bundle_email":Landroid/os/Bundle;
    :catch_8c
    move-exception v11

    .line 338
    .local v11, "ex":Ljava/lang/Exception;
    :try_start_8d
    const-string v2, "EmailProviderHelperService"

    const-string/jumbo v3, "getEnterpriseExchangeAccount() : Failed, Exception occurs. "

    invoke-static {v2, v3, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_95
    .catchall {:try_start_8d .. :try_end_95} :catchall_ab

    .line 339
    const/4 v13, 0x0

    .line 341
    if-eqz v10, :cond_64

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_64

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_64

    .line 335
    .end local v11    # "ex":Ljava/lang/Exception;
    :cond_a2
    :try_start_a2
    const-string v2, "EmailProviderHelperService"

    const-string/jumbo v3, "getEnterpriseExchangeAccount() : cannot get cursor from EmailProvider."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_aa} :catch_8c
    .catchall {:try_start_a2 .. :try_end_aa} :catchall_ab

    goto :goto_59

    .line 341
    :catchall_ab
    move-exception v2

    if-eqz v10, :cond_b7

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_b7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_b7
    throw v2

    .line 346
    :cond_b8
    const-string v2, "EmailProviderHelperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEnterpriseExchangeAccount() : successfully get Data from Email. accId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81
.end method

.method public static getEnterpriseLDAPAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
    .registers 18
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 398
    const/4 v12, 0x0

    .line 399
    .local v12, "ret":Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
    const/4 v9, 0x0

    .line 401
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_2
    invoke-static {}, getLDAPContentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "getLDAPAccount"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, createEmailContentProviderCursor(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 402
    if-eqz v9, :cond_67

    .line 403
    invoke-interface {v9}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 404
    .local v8, "bundle_ldap":Landroid/os/Bundle;
    if-eqz v8, :cond_48

    .line 405
    const-string/jumbo v1, "email.ldap.account"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    .line 406
    .local v11, "parcel":Landroid/os/Parcelable;
    if-eqz v11, :cond_3c

    instance-of v1, v11, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    if-eqz v1, :cond_3c

    .line 407
    move-object v0, v11

    check-cast v0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    move-object v12, v0

    .line 408
    const-string v1, "EmailProviderHelperService"

    const-string/jumbo v2, "getEnterpriseLDAPAccount() : successfully get Data from Email. "

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3c} :catch_51
    .catchall {:try_start_2 .. :try_end_3c} :catchall_70

    .line 420
    .end local v8    # "bundle_ldap":Landroid/os/Bundle;
    .end local v11    # "parcel":Landroid/os/Parcelable;
    :cond_3c
    :goto_3c
    if-eqz v9, :cond_47

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_47

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 422
    :cond_47
    :goto_47
    return-object v12

    .line 411
    .restart local v8    # "bundle_ldap":Landroid/os/Bundle;
    :cond_48
    :try_start_48
    const-string v1, "EmailProviderHelperService"

    const-string/jumbo v2, "getEnterpriseLDAPAccount() : Fail to get Data from Email. "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_50} :catch_51
    .catchall {:try_start_48 .. :try_end_50} :catchall_70

    goto :goto_3c

    .line 416
    .end local v8    # "bundle_ldap":Landroid/os/Bundle;
    :catch_51
    move-exception v10

    .line 417
    .local v10, "ex":Ljava/lang/Exception;
    :try_start_52
    const-string v1, "EmailProviderHelperService"

    const-string/jumbo v2, "getEnterpriseExchangeAccount() : Failed, Exception occurs. "

    invoke-static {v1, v2, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_70

    .line 418
    const/4 v12, 0x0

    .line 420
    if-eqz v9, :cond_47

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_47

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_47

    .line 414
    .end local v10    # "ex":Ljava/lang/Exception;
    :cond_67
    :try_start_67
    const-string v1, "EmailProviderHelperService"

    const-string/jumbo v2, "getEnterpriseLDAPAccount() : cannot get cursor from EmailProvider."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6f} :catch_51
    .catchall {:try_start_67 .. :try_end_6f} :catchall_70

    goto :goto_3c

    .line 420
    :catchall_70
    move-exception v1

    if-eqz v9, :cond_7c

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7c

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7c
    throw v1
.end method

.method public static getExchangeAccountObject(Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .registers 8
    .param p0, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "Id"    # J

    .prologue
    .line 122
    sget-object v1, mAccountObjectMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_3a

    instance-of v1, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    if-eqz v1, :cond_3a

    .line 124
    sget-object v1, mAccountObjectMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    check-cast v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 128
    .end local v0    # "result":Ljava/lang/Object;
    :goto_39
    return-object v0

    .line 127
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_3a
    const-string v1, "EmailProviderHelperService"

    const-string/jumbo v2, "getExchangeAccountObject() : failed. "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x0

    goto :goto_39
.end method

.method private static getLDAPContentUri()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 172
    const-string v0, "content://com.samsung.android.email.ldap.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static setEnterpriseEmailAccountObject(Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)J
    .registers 7
    .param p0, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "obj"    # Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .prologue
    .line 151
    if-nez p1, :cond_d

    .line 152
    const-string v2, "EmailProviderHelperService"

    const-string/jumbo v3, "setEnterpriseEmailAccountObject() : failed with invalid object. "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-wide/16 v0, -0x1

    .line 157
    :goto_c
    return-wide v0

    .line 155
    :cond_d
    invoke-static {}, createID()J

    move-result-wide v0

    .line 156
    .local v0, "Id":J
    sget-object v2, mAccountObjectMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c
.end method

.method public static setEnterpriseExchangeAccountObject(Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)J
    .registers 7
    .param p0, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "obj"    # Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .prologue
    .line 141
    if-nez p1, :cond_d

    .line 142
    const-string v2, "EmailProviderHelperService"

    const-string/jumbo v3, "setEnterpriseExchangeAccountObject() : failed with invalid object. "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-wide/16 v0, -0x1

    .line 147
    :goto_c
    return-wide v0

    .line 145
    :cond_d
    invoke-static {}, createID()J

    move-result-wide v0

    .line 146
    .local v0, "Id":J
    sget-object v2, mAccountObjectMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c
.end method

.method public static updateEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z
    .registers 15
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "account"    # Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .prologue
    .line 268
    const/4 v9, 0x0

    .line 269
    .local v9, "ret":Z
    invoke-static {p1, p2}, setEnterpriseEmailAccountObject(Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)J

    move-result-wide v10

    .line 270
    .local v10, "keyId":J
    const/4 v7, 0x0

    .line 272
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_6
    invoke-static {}, getEmailContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "updateEmailAccount"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    iget-object v1, p2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingProtocol:Ljava/lang/String;

    aput-object v1, v5, v0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, createEmailContentProviderCursor(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 273
    if-eqz v7, :cond_60

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 274
    const-string/jumbo v0, "updateEmailAccount"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3a} :catch_69
    .catchall {:try_start_6 .. :try_end_3a} :catchall_7f

    move-result v9

    .line 282
    :goto_3b
    if-eqz v7, :cond_46

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_46

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 284
    :cond_46
    :goto_46
    const-string v0, "EmailProviderHelperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEnterpriseEmailAccount() : ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return v9

    .line 276
    :cond_60
    :try_start_60
    const-string v0, "EmailProviderHelperService"

    const-string/jumbo v1, "updateEnterpriseEmailAccount() : cannot get cursor from EmailProvider."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_68} :catch_69
    .catchall {:try_start_60 .. :try_end_68} :catchall_7f

    goto :goto_3b

    .line 278
    :catch_69
    move-exception v8

    .line 279
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_6a
    const-string v0, "EmailProviderHelperService"

    const-string/jumbo v1, "updateEnterpriseEmailAccount() : Failed, Exception occurs. "

    invoke-static {v0, v1, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_72
    .catchall {:try_start_6a .. :try_end_72} :catchall_7f

    .line 280
    const/4 v9, 0x0

    .line 282
    if-eqz v7, :cond_46

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_46

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_46

    .end local v8    # "ex":Ljava/lang/Exception;
    :catchall_7f
    move-exception v0

    if-eqz v7, :cond_8b

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8b

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8b
    throw v0
.end method

.method public static updateEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z
    .registers 15
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "account"    # Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .prologue
    .line 353
    const/4 v9, 0x0

    .line 354
    .local v9, "ret":Z
    invoke-static {p1, p2}, setEnterpriseExchangeAccountObject(Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)J

    move-result-wide v10

    .line 355
    .local v10, "keyId":J
    const/4 v7, 0x0

    .line 357
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_6
    invoke-static {}, getEmailContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "updateEmailAccount"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "eas"

    aput-object v1, v5, v0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, createEmailContentProviderCursor(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 358
    if-eqz v7, :cond_61

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 359
    const-string/jumbo v0, "updateEmailAccount"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3b} :catch_6a
    .catchall {:try_start_6 .. :try_end_3b} :catchall_80

    move-result v9

    .line 367
    :goto_3c
    if-eqz v7, :cond_47

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_47

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 369
    :cond_47
    :goto_47
    const-string v0, "EmailProviderHelperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEnterpriseExchangeAccount() : ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return v9

    .line 361
    :cond_61
    :try_start_61
    const-string v0, "EmailProviderHelperService"

    const-string/jumbo v1, "updateEnterpriseExchangeAccount() : cannot get cursor from EmailProvider."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_69} :catch_6a
    .catchall {:try_start_61 .. :try_end_69} :catchall_80

    goto :goto_3c

    .line 363
    :catch_6a
    move-exception v8

    .line 364
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_6b
    const-string v0, "EmailProviderHelperService"

    const-string/jumbo v1, "updateEnterpriseExchangeAccount() : Failed, Exception occurs. "

    invoke-static {v0, v1, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_73
    .catchall {:try_start_6b .. :try_end_73} :catchall_80

    .line 365
    const/4 v9, 0x0

    .line 367
    if-eqz v7, :cond_47

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_47

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_47

    .end local v8    # "ex":Ljava/lang/Exception;
    :catchall_80
    move-exception v0

    if-eqz v7, :cond_8c

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8c

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8c
    throw v0
.end method
