.class public Lcom/android/server/enterprise/email/SettingsUtils;
.super Ljava/lang/Object;
.source "SettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/SettingsUtils$PasswordIntentFieldName;
    }
.end annotation


# static fields
.field private static final ACCOUNTCB_CONTENT_URI:Landroid/net/Uri;

.field private static ACCOUNTS_DB:Ljava/lang/String; = null

.field private static final ACCOUNTS_DBNAME:Ljava/lang/String; = "accounts.db"

.field private static final ACCOUNT_CONTENT_URI:Landroid/net/Uri;

.field static final ACTION_EAS_INTENT:Ljava/lang/String; = "com.android.email.EXCHANGE_INTENT"

.field static final ACTION_EAS_INTENT_NEWEMAIL:Ljava/lang/String; = "com.samsung.android.emailsync.EXCHANGE_INTENT"

.field static final ACTION_EMAIL_CREATE_ACCOUNT_FROM_MDM:Ljava/lang/String; = "edm.intent.action.internal.CREATE_EMAILACCOUNT"

.field static final ACTION_EMAIL_DELETE_ACCOUNT_FROM_MDM:Ljava/lang/String; = "edm.intent.action.internal.DELETE_EMAILACCOUNT"

.field static final ACTION_EMAIL_DELETE_NOT_VALIDATED_ACCOUNT_FROM_MDM:Ljava/lang/String; = "edm.intent.action.internal.DELETE_NOT_VALIDATED_EMAILACCOUNT"

.field static final ACTION_EMAIL_DEVICEID_RESULT:Ljava/lang/String; = "android.intent.action.enterprise.GET_DEVICEID"

.field static final ACTION_EMAIL_DEVICEID_RESULT_NEWEMAIL:Ljava/lang/String; = "edm.intent.action.internal.GET_DEVICEID_RESULT"

.field static final ACTION_EMAIL_ENABLE_MSG_COMPOSE:Ljava/lang/String; = "com.android.email.ENABLE_MESSAGECOMPOSE"

.field static final ACTION_EMAIL_ENABLE_MSG_COMPOSE_NEWEMAIL:Ljava/lang/String; = "com.samsung.android.email.ENABLE_MESSAGECOMPOSE"

.field static final ACTION_EMAIL_GET_DEVICEID:Ljava/lang/String; = "com.android.email.GET_DEVICEID"

.field static final ACTION_EMAIL_GET_DEVICEID_NEWEMAIL:Ljava/lang/String; = "com.samsung.android.email.GET_DEVICEID"

.field static final ACTION_EMAIL_INSTALL_CERT:Ljava/lang/String; = "com.android.email.INSTALL_CERTIFICATE"

.field static final ACTION_EMAIL_INSTALL_CERT_NEWEMAIL:Ljava/lang/String; = "com.samsung.android.email.INSTALL_CERTIFICATE"

.field static final ACTION_EMAIL_RENAME_CERTIFICATE:Ljava/lang/String; = "com.android.email.RENAME_CERTIFICATE"

.field static final ACTION_EMAIL_RENAME_CERTIFICATE_NEWEMAIL:Ljava/lang/String; = "com.samsung.android.email.RENAME_CERTIFICATE"

.field static final ACTION_REQUEST_EMAILACCOUNT_PASSWORD:Ljava/lang/String; = "edm.intent.action.internal.REQUEST_EMAILACCOUNT_PASSWORD"

.field static final ACTION_RESULT_EMAILACCOUNT_PASSWORD:Ljava/lang/String; = "edm.intent.action.internal.RESULT_EMAILACCOUNT_PASSWORD"

.field static final ACTION_SET_EMAILACCOUNT_PASSWORD:Ljava/lang/String; = "edm.intent.action.internal.SET_EMAILACCOUNT_PASSWORD"

.field public static final EAS_PKG_NAME:Ljava/lang/String; = "com.android.exchange"

.field public static final EMAIL_PKG_NAME:Ljava/lang/String; = "com.android.email"

.field static final EMAIL_PROVIDER_PERMISSION:Ljava/lang/String; = "com.android.email.permission.ACCESS_PROVIDER"

.field private static final HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

.field static final MDM_EMAIL_PERMISSION:Ljava/lang/String; = "android.permission.sec.MDM_EMAIL"

.field public static final NEW_EMAIL_PKG_NAME:Ljava/lang/String; = "com.samsung.android.email.provider"

.field private static final POLICIES_CONTENT_URI:Landroid/net/Uri;

.field private static final SYSTEM_DIR:Ljava/lang/String; = "/data/system/users/"

.field private static final TAG:Ljava/lang/String; = "SettingsUtils"

.field private static adminPkg:Ljava/lang/String;

.field private static currentUserID:I

.field private static emails:Landroid/content/Context;

.field private static mServerPassword:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static preCallingUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 125
    const-string v0, "content://com.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    .line 127
    const-string v0, "content://com.android.email.provider/hostauth"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    .line 129
    const-string v0, "content://com.android.email.provider/policies"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, POLICIES_CONTENT_URI:Landroid/net/Uri;

    .line 133
    const-string v0, "content://com.android.email.provider/accountcb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, ACCOUNTCB_CONTENT_URI:Landroid/net/Uri;

    .line 138
    sput-object v1, ACCOUNTS_DB:Ljava/lang/String;

    .line 139
    sput-object v1, emails:Landroid/content/Context;

    .line 140
    sput v2, currentUserID:I

    .line 141
    sput-object v1, adminPkg:Ljava/lang/String;

    .line 142
    sput v2, preCallingUid:I

    .line 1597
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, mServerPassword:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1518
    return-void
.end method

.method static declared-synchronized addorUpdateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)J
    .registers 29
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "accInfo"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p2, "isInsertOP"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 312
    const-class v23, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v23

    const-wide/16 v14, -0x1

    .line 313
    .local v14, "accountId":J
    :try_start_5
    const-string v10, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addorUpdateAccount : Processing account "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p2, :cond_190

    const-string/jumbo v5, "creation"

    :goto_17
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " request for EmailId: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " (AccountType is : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v5, :cond_195

    const-string v5, "Eas"

    :goto_37
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " )"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-wide/16 v18, -0x1

    .line 318
    .local v18, "accountsRowId":J
    const-wide/16 v6, -0x1

    .line 319
    .local v6, "inComingRowId":J
    const-wide/16 v8, -0x1

    .line 320
    .local v8, "outGoingRowId":J
    move-object/from16 v0, p0

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    .line 321
    .local v22, "userID":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 322
    .local v4, "containerId":I
    sput v22, currentUserID:I

    .line 323
    const-string v10, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ">>>>>>>>>>>>>>>>>\t\tupdateAccount for  "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v5, :cond_199

    const-string v5, "Eas"

    :goto_71
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "     : user id : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_88
    .catchall {:try_start_5 .. :try_end_88} :catchall_1e2

    .line 325
    if-eqz v22, :cond_1de

    .line 326
    :try_start_8a
    move/from16 v0, v22

    move-object/from16 v1, p3

    invoke-static {v0, v1}, isPersona(ILandroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_19d

    .line 327
    invoke-static {v4}, getEmailPackageName(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    new-instance v11, Landroid/os/UserHandle;

    move/from16 v0, v22

    invoke-direct {v11, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v10, v11}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    sput-object v5, emails:Landroid/content/Context;

    .line 328
    const-string v5, "SettingsUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addorUpdateAccount : USER space   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4}, getEmailPackageName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_c4} :catch_1d7
    .catchall {:try_start_8a .. :try_end_c4} :catchall_1e2

    .line 342
    :goto_c4
    :try_start_c4
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    invoke-static {v10, v4}, getAccountType(ZI)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    sget-object v24, emails:Landroid/content/Context;

    move/from16 v0, p2

    move-object/from16 v1, v24

    invoke-static {v5, v10, v11, v0, v1}, insertAccountsTableRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v18

    .line 345
    const-wide/16 v10, -0x1

    cmp-long v5, v10, v18

    if-nez v5, :cond_eb

    .line 346
    const-string v5, "SettingsUtils"

    const-string v10, "accountsRowId : -1 .. "

    invoke-static {v5, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_eb
    invoke-static {v4}, getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v20

    .line 350
    .local v20, "hostUri":Landroid/net/Uri;
    const-wide/16 v10, -0x1

    cmp-long v5, v10, v18

    if-eqz v5, :cond_12b

    .line 352
    const/4 v5, 0x1

    sget-object v10, emails:Landroid/content/Context;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2, v5, v10}, insertHostAuthTableRow(Landroid/net/Uri;Lcom/android/server/enterprise/email/AccountMetaData;ZZLandroid/content/Context;)J

    move-result-wide v6

    .line 354
    const-wide/16 v10, -0x1

    cmp-long v5, v10, v6

    if-eqz v5, :cond_115

    .line 355
    const/4 v5, 0x0

    sget-object v10, emails:Landroid/content/Context;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2, v5, v10}, insertHostAuthTableRow(Landroid/net/Uri;Lcom/android/server/enterprise/email/AccountMetaData;ZZLandroid/content/Context;)J

    move-result-wide v8

    .line 358
    :cond_115
    const-wide/16 v10, -0x1

    cmp-long v5, v10, v6

    if-eqz v5, :cond_12b

    const-wide/16 v10, -0x1

    cmp-long v5, v10, v8

    if-eqz v5, :cond_12b

    .line 359
    sget-object v11, emails:Landroid/content/Context;

    move-object/from16 v5, p1

    move/from16 v10, p2

    invoke-static/range {v4 .. v11}, insertAccountTableRow(ILcom/android/server/enterprise/email/AccountMetaData;JJZLandroid/content/Context;)J

    move-result-wide v14

    .line 363
    :cond_12b
    const-wide/16 v10, -0x1

    cmp-long v5, v10, v14

    if-nez v5, :cond_1ea

    .line 364
    const-string v10, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addorUpdateAccount : Account "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p2, :cond_1e5

    const-string/jumbo v5, "creation"

    :goto_143
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " was unsuccessful for EmailId: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    if-eqz p2, :cond_18c

    .line 370
    const-string v5, "SettingsUtils"

    const-string v10, "addorUpdateAccount : Starting redundant data cleanup... if any...!!!"

    invoke-static {v5, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-wide/16 v10, -0x1

    cmp-long v5, v10, v18

    if-eqz v5, :cond_172

    .line 372
    sget-object v5, emails:Landroid/content/Context;

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v5}, deleteAccountsTableRow(JLandroid/content/Context;)Z

    .line 375
    :cond_172
    const-wide/16 v10, -0x1

    cmp-long v5, v10, v6

    if-eqz v5, :cond_17f

    .line 376
    sget-object v5, emails:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v0, v6, v7, v5}, deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z

    .line 379
    :cond_17f
    const-wide/16 v10, -0x1

    cmp-long v5, v10, v8

    if-eqz v5, :cond_18c

    .line 380
    sget-object v5, emails:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v0, v8, v9, v5}, deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z
    :try_end_18c
    .catchall {:try_start_c4 .. :try_end_18c} :catchall_1e2

    :cond_18c
    :goto_18c
    move-wide/from16 v16, v14

    .line 415
    .end local v14    # "accountId":J
    .end local v20    # "hostUri":Landroid/net/Uri;
    .local v16, "accountId":J
    :goto_18e
    monitor-exit v23

    return-wide v16

    .line 313
    .end local v4    # "containerId":I
    .end local v6    # "inComingRowId":J
    .end local v8    # "outGoingRowId":J
    .end local v16    # "accountId":J
    .end local v18    # "accountsRowId":J
    .end local v22    # "userID":I
    .restart local v14    # "accountId":J
    :cond_190
    :try_start_190
    const-string/jumbo v5, "updation"

    goto/16 :goto_17

    :cond_195
    const-string v5, "Non-Eas"

    goto/16 :goto_37

    .line 323
    .restart local v4    # "containerId":I
    .restart local v6    # "inComingRowId":J
    .restart local v8    # "outGoingRowId":J
    .restart local v18    # "accountsRowId":J
    .restart local v22    # "userID":I
    :cond_199
    const-string v5, "Non-Eas"
    :try_end_19b
    .catchall {:try_start_190 .. :try_end_19b} :catchall_1e2

    goto/16 :goto_71

    .line 330
    :cond_19d
    :try_start_19d
    move-object/from16 v0, p0

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    new-instance v11, Landroid/os/UserHandle;

    move/from16 v0, v22

    invoke-direct {v11, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v10, v11}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    sput-object v5, emails:Landroid/content/Context;

    .line 331
    const-string v5, "SettingsUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addorUpdateAccount : USER space   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v11}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d5
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1d5} :catch_1d7
    .catchall {:try_start_19d .. :try_end_1d5} :catchall_1e2

    goto/16 :goto_c4

    .line 337
    :catch_1d7
    move-exception v13

    .line 338
    .local v13, "e":Ljava/lang/Exception;
    :try_start_1d8
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1db
    .catchall {:try_start_1d8 .. :try_end_1db} :catchall_1e2

    move-wide/from16 v16, v14

    .line 339
    .end local v14    # "accountId":J
    .restart local v16    # "accountId":J
    goto :goto_18e

    .line 335
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v16    # "accountId":J
    .restart local v14    # "accountId":J
    :cond_1de
    :try_start_1de
    sput-object p3, emails:Landroid/content/Context;
    :try_end_1e0
    .catch Ljava/lang/Exception; {:try_start_1de .. :try_end_1e0} :catch_1d7
    .catchall {:try_start_1de .. :try_end_1e0} :catchall_1e2

    goto/16 :goto_c4

    .line 312
    .end local v4    # "containerId":I
    .end local v6    # "inComingRowId":J
    .end local v8    # "outGoingRowId":J
    .end local v18    # "accountsRowId":J
    .end local v22    # "userID":I
    :catchall_1e2
    move-exception v5

    monitor-exit v23

    throw v5

    .line 364
    .restart local v4    # "containerId":I
    .restart local v6    # "inComingRowId":J
    .restart local v8    # "outGoingRowId":J
    .restart local v18    # "accountsRowId":J
    .restart local v20    # "hostUri":Landroid/net/Uri;
    .restart local v22    # "userID":I
    :cond_1e5
    :try_start_1e5
    const-string/jumbo v5, "updation"

    goto/16 :goto_143

    .line 384
    :cond_1ea
    if-eqz p2, :cond_24c

    .line 385
    const/16 v21, 0x0

    .line 386
    .local v21, "intent":Landroid/content/Intent;
    invoke-static {}, isSupportNewEmail()Z

    move-result v5

    if-eqz v5, :cond_297

    .line 387
    new-instance v21, Landroid/content/Intent;

    .end local v21    # "intent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.email.ENABLE_MESSAGECOMPOSE"

    invoke-static {v4, v5}, getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .restart local v21    # "intent":Landroid/content/Intent;
    :goto_201
    new-instance v5, Landroid/os/UserHandle;

    move/from16 v0, v22

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v10, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 396
    new-instance v12, Landroid/accounts/Account;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    invoke-static {v10, v4}, getAccountType(ZI)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v12, v5, v10}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .local v12, "account":Landroid/accounts/Account;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, getEmailPackageName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ".provider"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x1

    move/from16 v0, v22

    invoke-static {v12, v5, v10, v0}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 405
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    if-eqz v5, :cond_24c

    .line 406
    sget-object v5, emails:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15, v5}, setAsDefaultAccount(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Z

    .line 409
    .end local v12    # "account":Landroid/accounts/Account;
    .end local v21    # "intent":Landroid/content/Intent;
    :cond_24c
    const-string v10, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addorUpdateAccount : Account "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p2, :cond_2a6

    const-string/jumbo v5, "created"

    :goto_25e
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " successfully for EmailId: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " ( "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p2, :cond_2aa

    const-string v5, "Generated"

    :goto_27a
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "  AccountId : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " )"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18c

    .line 391
    .restart local v21    # "intent":Landroid/content/Intent;
    :cond_297
    new-instance v21, Landroid/content/Intent;

    .end local v21    # "intent":Landroid/content/Intent;
    const-string v5, "com.android.email.ENABLE_MESSAGECOMPOSE"

    invoke-static {v4, v5}, getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v21    # "intent":Landroid/content/Intent;
    goto/16 :goto_201

    .line 409
    .end local v21    # "intent":Landroid/content/Intent;
    :cond_2a6
    const-string/jumbo v5, "updated"

    goto :goto_25e

    :cond_2aa
    const-string v5, "Updated"
    :try_end_2ac
    .catchall {:try_start_1e5 .. :try_end_2ac} :catchall_1e2

    goto :goto_27a
.end method

.method public static createIDforAccount()J
    .registers 6

    .prologue
    .line 1627
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1628
    .local v0, "accId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_12

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x1

    sub-long v4, v0, v4

    mul-long v0, v2, v4

    .line 1629
    :cond_12
    const-string v2, "SettingsUtils"

    const-string v3, ">>>>  createIDforAccount   <<<<"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>  createIDforAccount   <<<<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    return-wide v0
.end method

.method static declared-synchronized deleteAccount(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Z
    .registers 25
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 796
    const-class v20, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v20

    const/16 v18, 0x0

    .line 797
    .local v18, "rowCount":I
    const-wide/16 v6, 0x1

    cmp-long v6, v6, p1

    if-lez v6, :cond_16

    .line 798
    :try_start_b
    const-string v6, "SettingsUtils"

    const-string/jumbo v7, "deleteAccount : accountId is invalid"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_113

    .line 799
    const/4 v6, 0x0

    .line 871
    :goto_14
    monitor-exit v20

    return v6

    .line 801
    :cond_16
    :try_start_16
    move-object/from16 v0, p0

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    .line 802
    .local v19, "userID":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 803
    .local v15, "containerId":I
    sput v19, currentUserID:I

    .line 804
    const/4 v2, 0x0

    .line 805
    .local v2, "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    const/16 v17, 0x0

    .line 806
    .local v17, "found":Z
    invoke-static {v15}, getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 807
    .local v3, "hostUri":Landroid/net/Uri;
    invoke-static {v15}, getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 808
    .local v4, "acctUri":Landroid/net/Uri;
    invoke-static {v15}, getPoliciesContentUri(I)Landroid/net/Uri;
    :try_end_32
    .catchall {:try_start_16 .. :try_end_32} :catchall_113

    move-result-object v5

    .line 810
    .local v5, "policiesUri":Landroid/net/Uri;
    if-eqz v19, :cond_10f

    .line 811
    :try_start_35
    move/from16 v0, v19

    move-object/from16 v1, p3

    invoke-static {v0, v1}, isPersona(ILandroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_cd

    .line 812
    invoke-static {v15}, getEmailPackageName(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    move/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v6

    sput-object v6, emails:Landroid/content/Context;

    .line 813
    const-string v6, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deleteAccount : USER space   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v15}, getEmailPackageName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_70} :catch_108
    .catchall {:try_start_35 .. :try_end_70} :catchall_113

    .line 827
    :goto_70
    :try_start_70
    sget-object v8, emails:Landroid/content/Context;

    const/4 v9, 0x0

    move-wide/from16 v6, p1

    move-object/from16 v10, p0

    invoke-static/range {v3 .. v10}, getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLandroid/app/enterprise/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_7a} :catch_11b
    .catchall {:try_start_70 .. :try_end_7a} :catchall_113

    move-result-object v2

    .line 828
    if-eqz v2, :cond_c8

    .line 833
    :cond_7d
    :try_start_7d
    iget-object v6, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iget-boolean v7, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    invoke-static {v7, v15}, getAccountType(ZI)Ljava/lang/String;

    move-result-object v7

    sget-object v8, emails:Landroid/content/Context;

    invoke-static {v6, v7, v8}, getAccountsDBRowId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v6

    sget-object v8, emails:Landroid/content/Context;

    invoke-static {v6, v7, v8}, deleteAccountsTableRow(JLandroid/content/Context;)Z

    .line 837
    iget-wide v6, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    sget-object v8, emails:Landroid/content/Context;

    invoke-static {v3, v6, v7, v8}, deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z

    .line 839
    iget-wide v6, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    sget-object v8, emails:Landroid/content/Context;

    invoke-static {v3, v6, v7, v8}, deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z

    .line 842
    iget v6, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    int-to-long v6, v6

    sget-object v8, emails:Landroid/content/Context;

    invoke-static {v15, v6, v7, v8}, deleteAccountTableRow(IJLandroid/content/Context;)Z
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_a6} :catch_116
    .catchall {:try_start_7d .. :try_end_a6} :catchall_113

    move-result v17

    .line 847
    :goto_a7
    add-int/lit8 v18, v18, 0x1

    .line 849
    if-eqz v17, :cond_140

    .line 850
    :try_start_ab
    iget-boolean v6, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v6, :cond_120

    .line 851
    iget-object v8, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    iget-object v9, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iget-object v11, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const/4 v12, 0x1

    sget-object v13, emails:Landroid/content/Context;

    move-object v6, v3

    move-object v7, v4

    move-object/from16 v14, p0

    invoke-static/range {v6 .. v14}, getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Landroid/app/enterprise/ContextInfo;)J
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_c1} :catch_11b
    .catchall {:try_start_ab .. :try_end_c1} :catchall_113

    move-result-wide p1

    .line 859
    :goto_c2
    const-wide/16 v6, -0x1

    cmp-long v6, v6, p1

    if-nez v6, :cond_133

    .line 871
    :cond_c8
    :goto_c8
    if-lez v18, :cond_143

    const/4 v6, 0x1

    goto/16 :goto_14

    .line 815
    :cond_cd
    :try_start_cd
    move-object/from16 v0, p0

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    move/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v6

    sput-object v6, emails:Landroid/content/Context;

    .line 816
    const-string v6, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deleteAccount : USER space   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_106} :catch_108
    .catchall {:try_start_cd .. :try_end_106} :catchall_113

    goto/16 :goto_70

    .line 822
    :catch_108
    move-exception v16

    .line 823
    .local v16, "e":Ljava/lang/Exception;
    :try_start_109
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10c
    .catchall {:try_start_109 .. :try_end_10c} :catchall_113

    .line 824
    const/4 v6, 0x0

    goto/16 :goto_14

    .line 820
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_10f
    :try_start_10f
    sput-object p3, emails:Landroid/content/Context;
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_111} :catch_108
    .catchall {:try_start_10f .. :try_end_111} :catchall_113

    goto/16 :goto_70

    .line 796
    .end local v2    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .end local v3    # "hostUri":Landroid/net/Uri;
    .end local v4    # "acctUri":Landroid/net/Uri;
    .end local v5    # "policiesUri":Landroid/net/Uri;
    .end local v15    # "containerId":I
    .end local v17    # "found":Z
    .end local v19    # "userID":I
    :catchall_113
    move-exception v6

    monitor-exit v20

    throw v6

    .line 844
    .restart local v2    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v3    # "hostUri":Landroid/net/Uri;
    .restart local v4    # "acctUri":Landroid/net/Uri;
    .restart local v5    # "policiesUri":Landroid/net/Uri;
    .restart local v15    # "containerId":I
    .restart local v17    # "found":Z
    .restart local v19    # "userID":I
    :catch_116
    move-exception v16

    .line 845
    .restart local v16    # "e":Ljava/lang/Exception;
    :try_start_117
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_11a} :catch_11b
    .catchall {:try_start_117 .. :try_end_11a} :catchall_113

    goto :goto_a7

    .line 868
    .end local v16    # "e":Ljava/lang/Exception;
    :catch_11b
    move-exception v16

    .line 869
    .restart local v16    # "e":Ljava/lang/Exception;
    :try_start_11c
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11f
    .catchall {:try_start_11c .. :try_end_11f} :catchall_113

    goto :goto_c8

    .line 855
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_120
    const/4 v8, 0x0

    :try_start_121
    iget-object v9, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iget-object v11, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const/4 v12, 0x0

    sget-object v13, emails:Landroid/content/Context;

    move-object v6, v3

    move-object v7, v4

    move-object/from16 v14, p0

    invoke-static/range {v6 .. v14}, getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Landroid/app/enterprise/ContextInfo;)J

    move-result-wide p1

    goto :goto_c2

    .line 861
    :cond_133
    sget-object v8, emails:Landroid/content/Context;

    const/4 v9, 0x0

    move-wide/from16 v6, p1

    move-object/from16 v10, p0

    invoke-static/range {v3 .. v10}, getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLandroid/app/enterprise/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_13d} :catch_11b
    .catchall {:try_start_121 .. :try_end_13d} :catchall_113

    move-result-object v2

    .line 862
    if-eqz v2, :cond_c8

    .line 866
    :cond_140
    if-nez v17, :cond_7d

    goto :goto_c8

    .line 871
    :cond_143
    const/4 v6, 0x0

    goto/16 :goto_14
.end method

.method static deleteAccountTableRow(IJLandroid/content/Context;)Z
    .registers 11
    .param p0, "containerId"    # I
    .param p1, "rowId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 903
    const/4 v1, -0x1

    .line 904
    .local v1, "rowCount":I
    const-wide/16 v4, 0x1

    cmp-long v4, v4, p1

    if-lez v4, :cond_11

    .line 905
    const-string v4, "SettingsUtils"

    const-string/jumbo v5, "deleteAccountTableRow : rowId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :cond_10
    :goto_10
    return v3

    .line 909
    :cond_11
    :try_start_11
    invoke-static {p0}, getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 910
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 911
    const-string v4, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteAccountTableRow : deleted rowCount from Account : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3c} :catch_40

    .line 915
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_3c
    if-lez v1, :cond_10

    const/4 v3, 0x1

    goto :goto_10

    .line 912
    :catch_40
    move-exception v0

    .line 913
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c
.end method

.method private static deleteAccountsTableRow(JLandroid/content/Context;)Z
    .registers 13
    .param p0, "rowId"    # J
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    .line 515
    const/4 v0, 0x0

    .line 516
    .local v0, "accountsDB":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v6, 0x1

    cmp-long v6, v6, p0

    if-lez v6, :cond_13

    .line 517
    const-string v4, "SettingsUtils"

    const-string/jumbo v5, "deleteAccountsTableRow : rowId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_12
    :goto_12
    return v3

    .line 522
    :cond_13
    :try_start_13
    invoke-static {}, makeDBpath()V

    .line 523
    sget-object v6, ACCOUNTS_DB:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 526
    const-string v6, "accounts"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 527
    .local v2, "rowCount":I
    if-lez v2, :cond_67

    .line 528
    :goto_3a
    const-string v6, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deleteAccountsTableRow - deleted row Id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_53} :catch_69
    .catchall {:try_start_13 .. :try_end_53} :catchall_83

    .line 534
    if-eqz v0, :cond_58

    .line 535
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 537
    :cond_58
    cmp-long v6, p0, v4

    if-eqz v6, :cond_61

    .line 539
    sget v6, currentUserID:I

    invoke-static {v6}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache(I)V

    .line 542
    .end local v2    # "rowCount":I
    :cond_61
    :goto_61
    cmp-long v4, v4, p0

    if-eqz v4, :cond_12

    const/4 v3, 0x1

    goto :goto_12

    .restart local v2    # "rowCount":I
    :cond_67
    move-wide p0, v4

    .line 527
    goto :goto_3a

    .line 530
    .end local v2    # "rowCount":I
    :catch_69
    move-exception v1

    .line 531
    .local v1, "e":Ljava/lang/Exception;
    const-wide/16 p0, -0x1

    .line 532
    :try_start_6c
    const-string v6, "SettingsUtils"

    const-string/jumbo v7, "deleteAccountsTableRow() : failed. "

    invoke-static {v6, v7, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_74
    .catchall {:try_start_6c .. :try_end_74} :catchall_83

    .line 534
    if-eqz v0, :cond_79

    .line 535
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 537
    :cond_79
    cmp-long v6, p0, v4

    if-eqz v6, :cond_61

    .line 539
    sget v6, currentUserID:I

    invoke-static {v6}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache(I)V

    goto :goto_61

    .line 534
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_83
    move-exception v3

    if-eqz v0, :cond_89

    .line 535
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 537
    :cond_89
    cmp-long v4, p0, v4

    if-eqz v4, :cond_92

    .line 539
    sget v4, currentUserID:I

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache(I)V

    :cond_92
    throw v3
.end method

.method private static deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z
    .registers 11
    .param p0, "hostUri"    # Landroid/net/Uri;
    .param p1, "rowId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 881
    const/4 v1, -0x1

    .line 882
    .local v1, "rowCount":I
    const-wide/16 v4, 0x1

    cmp-long v4, v4, p1

    if-lez v4, :cond_11

    .line 883
    const-string v4, "SettingsUtils"

    const-string/jumbo v5, "deleteHostAuthTableRow : rowId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    :cond_10
    :goto_10
    return v3

    .line 887
    :cond_11
    :try_start_11
    invoke-static {p0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 888
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 889
    const-string v4, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteHostAuthTableRow : deleted rowCount from HostAuth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_38} :catch_3c

    .line 893
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_38
    if-lez v1, :cond_10

    const/4 v3, 0x1

    goto :goto_10

    .line 890
    :catch_3c
    move-exception v0

    .line 891
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38
.end method

.method private static getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLandroid/app/enterprise/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    .registers 41
    .param p0, "hostUri"    # Landroid/net/Uri;
    .param p1, "acctUri"    # Landroid/net/Uri;
    .param p2, "policiesUri"    # Landroid/net/Uri;
    .param p3, "accountId"    # J
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "passwordRequired"    # Z
    .param p7, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1059
    const/16 v19, 0x0

    .line 1060
    .local v19, "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    const/16 v20, 0x0

    .line 1061
    .local v20, "c":Landroid/database/Cursor;
    const/16 v21, 0x0

    .line 1063
    .local v21, "c2":Landroid/database/Cursor;
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-gtz v6, :cond_2a

    .line 1064
    const-string v6, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getEASAccounts fail : invalid account Id"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v12, v19

    .line 1202
    .end local v19    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :goto_29
    return-object v19

    .line 1068
    .restart local v19    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :cond_2a
    invoke-static/range {p7 .. p7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v32

    .line 1069
    .local v32, "userID":I
    move-object/from16 v0, p7

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v22, v0

    .line 1070
    .local v22, "containerId":I
    const-string v6, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getEASAccounts() :    "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    const/16 v6, 0x17

    new-array v8, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v8, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "displayName"

    aput-object v7, v8, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "emailAddress"

    aput-object v7, v8, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "syncLookback"

    aput-object v7, v8, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "syncInterval"

    aput-object v7, v8, v6

    const/4 v6, 0x5

    const-string/jumbo v7, "peakDays"

    aput-object v7, v8, v6

    const/4 v6, 0x6

    const-string/jumbo v7, "peakStartMinute"

    aput-object v7, v8, v6

    const/4 v6, 0x7

    const-string/jumbo v7, "peakEndMinute"

    aput-object v7, v8, v6

    const/16 v6, 0x8

    const-string/jumbo v7, "peakSchedule"

    aput-object v7, v8, v6

    const/16 v6, 0x9

    const-string/jumbo v7, "offPeakSchedule"

    aput-object v7, v8, v6

    const/16 v6, 0xa

    const-string/jumbo v7, "roamingSchedule"

    aput-object v7, v8, v6

    const/16 v6, 0xb

    const-string/jumbo v7, "hostAuthKeyRecv"

    aput-object v7, v8, v6

    const/16 v6, 0xc

    const-string/jumbo v7, "hostAuthKeySend"

    aput-object v7, v8, v6

    const/16 v6, 0xd

    const-string/jumbo v7, "flags"

    aput-object v7, v8, v6

    const/16 v6, 0xe

    const-string/jumbo v7, "isDefault"

    aput-object v7, v8, v6

    const/16 v6, 0xf

    const-string v7, "compatibilityUuid"

    aput-object v7, v8, v6

    const/16 v6, 0x10

    const-string/jumbo v7, "senderName"

    aput-object v7, v8, v6

    const/16 v6, 0x11

    const-string/jumbo v7, "ringtoneUri"

    aput-object v7, v8, v6

    const/16 v6, 0x12

    const-string/jumbo v7, "protocolVersion"

    aput-object v7, v8, v6

    const/16 v6, 0x13

    const-string/jumbo v7, "signature"

    aput-object v7, v8, v6

    const/16 v6, 0x14

    const-string v7, "calendarSyncLookback"

    aput-object v7, v8, v6

    const/16 v6, 0x15

    const-string/jumbo v7, "emailsize"

    aput-object v7, v8, v6

    const/16 v6, 0x16

    const-string/jumbo v7, "roamingemailsize"

    aput-object v7, v8, v6

    .line 1084
    .local v8, "ID_PROJECTION":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v30

    .line 1086
    .local v30, "token":J
    if-eqz v32, :cond_38d

    .line 1087
    :try_start_ef
    move/from16 v0, v32

    move-object/from16 v1, p5

    invoke-static {v0, v1}, isPersona(ILandroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_34a

    .line 1088
    invoke-static/range {v22 .. v22}, getEmailPackageName(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v9, Landroid/os/UserHandle;

    move/from16 v0, v32

    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v7, v9}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v6

    sput-object v6, emails:Landroid/content/Context;

    .line 1089
    const-string v6, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAccountDetails for Persona : USER space   "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v22 .. v22}, getEmailPackageName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_12a} :catch_385

    .line 1105
    :goto_12a
    :try_start_12a
    sget-object v6, emails:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1107
    if-eqz v20, :cond_391

    .line 1108
    const-string v6, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAccount row count : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    :goto_16c
    if-eqz v20, :cond_4ae

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_4ae

    .line 1113
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1114
    new-instance v12, Lcom/android/server/enterprise/email/AccountMetaData;

    invoke-direct {v12}, Lcom/android/server/enterprise/email/AccountMetaData;-><init>()V
    :try_end_17c
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_17c} :catch_39b
    .catchall {:try_start_12a .. :try_end_17c} :catchall_49b

    .line 1115
    .end local v19    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .local v12, "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :try_start_17c
    const-string v6, "_id"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    .line 1116
    const-string/jumbo v6, "displayName"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 1117
    const-string/jumbo v6, "emailAddress"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 1118
    const-string/jumbo v6, "syncLookback"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    .line 1119
    const-string/jumbo v6, "syncInterval"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    .line 1120
    const-string/jumbo v6, "peakDays"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    .line 1121
    const-string/jumbo v6, "peakStartMinute"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    .line 1122
    const-string/jumbo v6, "peakEndMinute"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    .line 1123
    const-string/jumbo v6, "peakSchedule"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    .line 1124
    const-string/jumbo v6, "offPeakSchedule"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 1126
    const-string/jumbo v6, "roamingSchedule"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    .line 1128
    const-string/jumbo v6, "hostAuthKeyRecv"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    .line 1130
    const-string/jumbo v6, "hostAuthKeySend"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    .line 1132
    const-string/jumbo v6, "flags"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    .line 1133
    const/4 v6, 0x2

    iget v7, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    and-int/lit8 v7, v7, 0x2

    if-ne v6, v7, :cond_3b2

    const/4 v6, 0x1

    :goto_271
    iput-boolean v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 1134
    const/16 v6, 0x40

    iget v7, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    and-int/lit8 v7, v7, 0x40

    if-ne v6, v7, :cond_3b5

    const/4 v6, 0x1

    :goto_27c
    iput-boolean v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 1135
    const-string/jumbo v6, "isDefault"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3b8

    const/4 v6, 0x1

    :goto_291
    iput-boolean v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    .line 1136
    const-string v6, "compatibilityUuid"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    .line 1138
    const-string/jumbo v6, "senderName"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    .line 1139
    const-string/jumbo v6, "ringtoneUri"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 1140
    const-string/jumbo v6, "protocolVersion"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    .line 1142
    const-string/jumbo v6, "signature"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 1143
    const-string v6, "calendarSyncLookback"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    .line 1144
    const-string/jumbo v6, "emailsize"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    .line 1145
    const-string/jumbo v6, "roamingemailsize"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    .line 1148
    iget-wide v10, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    const/4 v13, 0x1

    sget-object v14, emails:Landroid/content/Context;

    move-object/from16 v9, p0

    invoke-static/range {v9 .. v14}, loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z

    move-result v28

    .line 1149
    .local v28, "ret1":Z
    iget-wide v10, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    const/4 v13, 0x0

    sget-object v14, emails:Landroid/content/Context;

    move-object/from16 v9, p0

    invoke-static/range {v9 .. v14}, loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z

    move-result v29

    .line 1151
    .local v29, "ret2":Z
    if-eqz v28, :cond_333

    if-nez v29, :cond_3bb

    .line 1152
    :cond_333
    const/4 v12, 0x0

    .line 1153
    const-string v6, "SettingsUtils"

    const-string/jumbo v7, "getAccountIds : null "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33c
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_33c} :catch_4ab
    .catchall {:try_start_17c .. :try_end_33c} :catchall_4a9

    .line 1195
    if-eqz v20, :cond_341

    .line 1196
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1197
    :cond_341
    if-eqz v21, :cond_346

    .line 1198
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_346
    move-object/from16 v19, v12

    .end local v12    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v19    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    goto/16 :goto_29

    .line 1091
    .end local v28    # "ret1":Z
    .end local v29    # "ret2":Z
    :cond_34a
    :try_start_34a
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v9, Landroid/os/UserHandle;

    move/from16 v0, v32

    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v7, v9}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v6

    sput-object v6, emails:Landroid/content/Context;

    .line 1092
    const-string v6, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAccountDetails : USER space   "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    iget v9, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v9}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_383
    .catch Ljava/lang/Exception; {:try_start_34a .. :try_end_383} :catch_385

    goto/16 :goto_12a

    .line 1099
    :catch_385
    move-exception v23

    .line 1100
    .local v23, "e":Ljava/lang/Exception;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v12, v19

    .line 1101
    .end local v19    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v12    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    goto/16 :goto_29

    .line 1096
    .end local v12    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .end local v23    # "e":Ljava/lang/Exception;
    .restart local v19    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :cond_38d
    :try_start_38d
    sput-object p5, emails:Landroid/content/Context;
    :try_end_38f
    .catch Ljava/lang/Exception; {:try_start_38d .. :try_end_38f} :catch_385

    goto/16 :goto_12a

    .line 1110
    :cond_391
    :try_start_391
    const-string v6, "SettingsUtils"

    const-string/jumbo v7, "getAccount row count : Email cursor is invalid"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_399
    .catch Ljava/lang/Exception; {:try_start_391 .. :try_end_399} :catch_39b
    .catchall {:try_start_391 .. :try_end_399} :catchall_49b

    goto/16 :goto_16c

    .line 1192
    :catch_39b
    move-exception v23

    move-object/from16 v12, v19

    .line 1193
    .end local v19    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v12    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v23    # "e":Ljava/lang/Exception;
    :goto_39e
    :try_start_39e
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3a1
    .catchall {:try_start_39e .. :try_end_3a1} :catchall_4a9

    .line 1195
    if-eqz v20, :cond_3a6

    .line 1196
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1197
    :cond_3a6
    if-eqz v21, :cond_3ab

    .line 1198
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1201
    .end local v23    # "e":Ljava/lang/Exception;
    :cond_3ab
    :goto_3ab
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v19, v12

    .line 1202
    .end local v12    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v19    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    goto/16 :goto_29

    .line 1133
    .end local v19    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v12    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :cond_3b2
    const/4 v6, 0x0

    goto/16 :goto_271

    .line 1134
    :cond_3b5
    const/4 v6, 0x0

    goto/16 :goto_27c

    .line 1135
    :cond_3b8
    const/4 v6, 0x0

    goto/16 :goto_291

    .line 1157
    .restart local v28    # "ret1":Z
    .restart local v29    # "ret2":Z
    :cond_3bb
    if-eqz p6, :cond_3d3

    .line 1158
    :try_start_3bd
    move/from16 v0, v22

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    move/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, getPassword(IJLandroid/content/Context;I)[Ljava/lang/String;

    move-result-object v26

    .line 1159
    .local v26, "pwds":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v26, v6

    iput-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 1160
    const/4 v6, 0x1

    aget-object v6, v26, v6

    iput-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 1163
    .end local v26    # "pwds":[Ljava/lang/String;
    :cond_3d3
    const/4 v6, 0x0

    iput-boolean v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 1164
    iget-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const-string/jumbo v7, "eas"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3fd

    .line 1165
    iget-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-static {v6}, getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 1166
    .local v27, "ret":[Ljava/lang/String;
    const/4 v6, 0x1

    iput-boolean v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 1167
    const/4 v6, 0x0

    aget-object v6, v27, v6

    iput-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    .line 1168
    const/4 v6, 0x1

    aget-object v6, v27, v6

    iput-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 1169
    const/4 v6, 0x1

    aget-object v6, v27, v6

    iput-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 1170
    iget v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    .line 1174
    .end local v27    # "ret":[Ljava/lang/String;
    :cond_3fd
    const/4 v6, 0x1

    iput-boolean v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mAllowHTMLEmail:Z

    .line 1175
    const/4 v6, 0x5

    new-array v15, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v15, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "name"

    aput-object v7, v15, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "type"

    aput-object v7, v15, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "value"

    aput-object v7, v15, v6

    const/4 v6, 0x4

    const-string v7, "account_id"

    aput-object v7, v15, v6

    .line 1177
    .local v15, "POLICIES_PROJECTION":[Ljava/lang/String;
    sget-object v6, emails:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v14, p2

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 1178
    if-eqz v21, :cond_48f

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_48f

    .line 1179
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_48f

    .line 1181
    :cond_452
    const-string/jumbo v6, "value"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1182
    .local v25, "policyvalue":Ljava/lang/String;
    const-string/jumbo v6, "name"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1183
    .local v24, "policyname":Ljava/lang/String;
    if-eqz v24, :cond_489

    if-eqz v25, :cond_489

    .line 1184
    const-string v6, "AllowHTMLEmail"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_489

    .line 1185
    const-string/jumbo v6, "true"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mAllowHTMLEmail:Z

    .line 1188
    :cond_489
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_48c
    .catch Ljava/lang/Exception; {:try_start_3bd .. :try_end_48c} :catch_4ab
    .catchall {:try_start_3bd .. :try_end_48c} :catchall_4a9

    move-result v6

    if-nez v6, :cond_452

    .line 1195
    .end local v15    # "POLICIES_PROJECTION":[Ljava/lang/String;
    .end local v24    # "policyname":Ljava/lang/String;
    .end local v25    # "policyvalue":Ljava/lang/String;
    .end local v28    # "ret1":Z
    .end local v29    # "ret2":Z
    :cond_48f
    :goto_48f
    if-eqz v20, :cond_494

    .line 1196
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1197
    :cond_494
    if-eqz v21, :cond_3ab

    .line 1198
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3ab

    .line 1195
    .end local v12    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v19    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :catchall_49b
    move-exception v6

    move-object/from16 v12, v19

    .end local v19    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v12    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :goto_49e
    if-eqz v20, :cond_4a3

    .line 1196
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1197
    :cond_4a3
    if-eqz v21, :cond_4a8

    .line 1198
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_4a8
    throw v6

    .line 1195
    :catchall_4a9
    move-exception v6

    goto :goto_49e

    .line 1192
    :catch_4ab
    move-exception v23

    goto/16 :goto_39e

    .end local v12    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v19    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :cond_4ae
    move-object/from16 v12, v19

    .end local v19    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v12    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    goto :goto_48f
.end method

.method private static getAccountCBContentUri(I)Landroid/net/Uri;
    .registers 3
    .param p0, "containerId"    # I

    .prologue
    .line 1505
    invoke-static {}, isSupportNewEmail()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/accountcb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1513
    :goto_28
    return-object v0

    .line 1510
    :cond_29
    if-nez p0, :cond_2e

    .line 1511
    sget-object v0, ACCOUNTCB_CONTENT_URI:Landroid/net/Uri;

    goto :goto_28

    .line 1513
    :cond_2e
    const-string v0, "content://com.android.email.provider/accountcb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_28
.end method

.method public static getAccountContentUri(I)Landroid/net/Uri;
    .registers 3
    .param p0, "containerId"    # I

    .prologue
    .line 1470
    invoke-static {}, isSupportNewEmail()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1478
    :goto_28
    return-object v0

    .line 1474
    :cond_29
    if-gtz p0, :cond_36

    .line 1475
    const-string v0, "SettingsUtils"

    const-string/jumbo v1, "getAccountContentUri"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    sget-object v0, ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    goto :goto_28

    .line 1478
    :cond_36
    const-string v0, "content://com.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_28
.end method

.method static declared-synchronized getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;
    .registers 15
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1040
    const-class v9, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v9

    :try_start_3
    iget v0, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1041
    .local v0, "containerId":I
    invoke-static {v0}, getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 1042
    .local v1, "hostUri":Landroid/net/Uri;
    invoke-static {v0}, getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 1043
    .local v2, "acctUri":Landroid/net/Uri;
    invoke-static {v0}, getPoliciesContentUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 1044
    .local v3, "policiesUri":Landroid/net/Uri;
    const/4 v7, 0x0

    move-wide v4, p1

    move-object v6, p3

    move-object v8, p0

    invoke-static/range {v1 .. v8}, getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLandroid/app/enterprise/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1b

    move-result-object v4

    monitor-exit v9

    return-object v4

    .line 1040
    .end local v0    # "containerId":I
    .end local v1    # "hostUri":Landroid/net/Uri;
    .end local v2    # "acctUri":Landroid/net/Uri;
    .end local v3    # "policiesUri":Landroid/net/Uri;
    :catchall_1b
    move-exception v4

    monitor-exit v9

    throw v4
.end method

.method static declared-synchronized getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;
    .registers 16
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "passwordRequired"    # Z

    .prologue
    .line 1049
    const-class v9, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v9

    :try_start_3
    iget v0, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1050
    .local v0, "containerId":I
    const-string v4, "SettingsUtils"

    const-string/jumbo v5, "getAccountDetails() :  with P"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    invoke-static {v0}, getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 1052
    .local v1, "hostUri":Landroid/net/Uri;
    invoke-static {v0}, getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 1053
    .local v2, "acctUri":Landroid/net/Uri;
    invoke-static {v0}, getPoliciesContentUri(I)Landroid/net/Uri;

    move-result-object v3

    .local v3, "policiesUri":Landroid/net/Uri;
    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p0

    .line 1054
    invoke-static/range {v1 .. v8}, getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLandroid/app/enterprise/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_23

    move-result-object v4

    monitor-exit v9

    return-object v4

    .line 1049
    .end local v0    # "containerId":I
    .end local v1    # "hostUri":Landroid/net/Uri;
    .end local v2    # "acctUri":Landroid/net/Uri;
    .end local v3    # "policiesUri":Landroid/net/Uri;
    :catchall_23
    move-exception v4

    monitor-exit v9

    throw v4
.end method

.method public static getAccountFromEnterpriseEmailAccount(Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Landroid/app/enterprise/Account;
    .registers 11
    .param p0, "info"    # Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 1782
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAccountFromEnterpriseEmailAccount() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    const/4 v0, 0x0

    .line 1784
    .local v0, "acc":Landroid/app/enterprise/Account;
    if-nez p0, :cond_22

    move-object v1, v0

    .line 1835
    .end local v0    # "acc":Landroid/app/enterprise/Account;
    .local v1, "acc":Landroid/app/enterprise/Account;
    :goto_21
    return-object v1

    .line 1787
    .end local v1    # "acc":Landroid/app/enterprise/Account;
    .restart local v0    # "acc":Landroid/app/enterprise/Account;
    :cond_22
    new-instance v0, Landroid/app/enterprise/Account;

    .end local v0    # "acc":Landroid/app/enterprise/Account;
    invoke-direct {v0}, Landroid/app/enterprise/Account;-><init>()V

    .line 1788
    .restart local v0    # "acc":Landroid/app/enterprise/Account;
    iget-wide v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mId:J

    long-to-int v2, v2

    iput v2, v0, Landroid/app/enterprise/Account;->mId:I

    .line 1789
    iget-object v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mDisplayName:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mDisplayName:Ljava/lang/String;

    .line 1790
    iget-object v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailAddress:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    .line 1791
    const-string v2, "0"

    iput-object v2, v0, Landroid/app/enterprise/Account;->mSyncKey:Ljava/lang/String;

    .line 1792
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSyncLookback:I

    iput v2, v0, Landroid/app/enterprise/Account;->mSyncLookback:I

    .line 1793
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSyncInterval:I

    iput v2, v0, Landroid/app/enterprise/Account;->mSyncInterval:I

    .line 1794
    iput-wide v8, v0, Landroid/app/enterprise/Account;->mHostAuthKeyRecv:J

    .line 1795
    iput-wide v8, v0, Landroid/app/enterprise/Account;->mHostAuthKeySend:J

    .line 1796
    iput v6, v0, Landroid/app/enterprise/Account;->mFlags:I

    .line 1797
    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mIsDefault:Z

    iput-boolean v2, v0, Landroid/app/enterprise/Account;->mIsDefault:Z

    .line 1798
    iput-object v5, v0, Landroid/app/enterprise/Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 1799
    iget-object v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSenderName:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mSenderName:Ljava/lang/String;

    .line 1800
    iput-object v5, v0, Landroid/app/enterprise/Account;->mRingtoneUri:Ljava/lang/String;

    .line 1801
    iput-object v5, v0, Landroid/app/enterprise/Account;->mProtocolVersion:Ljava/lang/String;

    .line 1802
    iput-object v5, v0, Landroid/app/enterprise/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 1803
    iget-object v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSignature:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mSignature:Ljava/lang/String;

    .line 1804
    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateAlways:Z

    iput-boolean v2, v0, Landroid/app/enterprise/Account;->mEmailNotificationVibrateAlways:Z

    .line 1805
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/app/enterprise/Account;->mEmailNotificationVibrateWhenSilent:Z

    .line 1807
    new-instance v2, Landroid/app/enterprise/HostAuth;

    invoke-direct {v2}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    .line 1808
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput v6, v2, Landroid/app/enterprise/HostAuth;->mId:I

    .line 1809
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingProtocol:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    .line 1810
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerAddress:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    .line 1811
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerPort:I

    iput v3, v2, Landroid/app/enterprise/HostAuth;->mPort:I

    .line 1812
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput v6, v2, Landroid/app/enterprise/HostAuth;->mFlags:I

    .line 1813
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUserName:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    .line 1814
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingPassword:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    .line 1815
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput-object v5, v2, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    .line 1816
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput-wide v8, v2, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    .line 1817
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-boolean v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUseSSL:Z

    iput-boolean v3, v2, Landroid/app/enterprise/HostAuth;->mUseSSL:Z

    .line 1818
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-boolean v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUseTLS:Z

    iput-boolean v3, v2, Landroid/app/enterprise/HostAuth;->mUseTLS:Z

    .line 1819
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-boolean v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingAcceptAllCertificates:Z

    iput-boolean v3, v2, Landroid/app/enterprise/HostAuth;->mAcceptAllCertificates:Z

    .line 1821
    new-instance v2, Landroid/app/enterprise/HostAuth;

    invoke-direct {v2}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    .line 1822
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput v6, v2, Landroid/app/enterprise/HostAuth;->mId:I

    .line 1823
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingProtocol:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    .line 1824
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerAddress:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    .line 1825
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerPort:I

    iput v3, v2, Landroid/app/enterprise/HostAuth;->mPort:I

    .line 1826
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput v6, v2, Landroid/app/enterprise/HostAuth;->mFlags:I

    .line 1827
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUserName:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    .line 1828
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingPassword:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    .line 1829
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput-object v5, v2, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    .line 1830
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput-wide v8, v2, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    .line 1831
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-boolean v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUseSSL:Z

    iput-boolean v3, v2, Landroid/app/enterprise/HostAuth;->mUseSSL:Z

    .line 1832
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-boolean v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUseTLS:Z

    iput-boolean v3, v2, Landroid/app/enterprise/HostAuth;->mUseTLS:Z

    .line 1833
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-boolean v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingAcceptAllCertificates:Z

    iput-boolean v3, v2, Landroid/app/enterprise/HostAuth;->mAcceptAllCertificates:Z

    move-object v1, v0

    .line 1835
    .end local v0    # "acc":Landroid/app/enterprise/Account;
    .restart local v1    # "acc":Landroid/app/enterprise/Account;
    goto/16 :goto_21
.end method

.method public static getAccountFromEnterpriseExchangeAccount(Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Landroid/app/enterprise/Account;
    .registers 11
    .param p0, "info"    # Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .prologue
    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1840
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAccountFromEnterpriseExchangeAccount() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    const/4 v0, 0x0

    .line 1842
    .local v0, "acc":Landroid/app/enterprise/Account;
    if-nez p0, :cond_23

    move-object v1, v0

    .line 1906
    .end local v0    # "acc":Landroid/app/enterprise/Account;
    .local v1, "acc":Landroid/app/enterprise/Account;
    :goto_22
    return-object v1

    .line 1845
    .end local v1    # "acc":Landroid/app/enterprise/Account;
    .restart local v0    # "acc":Landroid/app/enterprise/Account;
    :cond_23
    new-instance v0, Landroid/app/enterprise/Account;

    .end local v0    # "acc":Landroid/app/enterprise/Account;
    invoke-direct {v0}, Landroid/app/enterprise/Account;-><init>()V

    .line 1846
    .restart local v0    # "acc":Landroid/app/enterprise/Account;
    iget-wide v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mId:J

    long-to-int v2, v2

    iput v2, v0, Landroid/app/enterprise/Account;->mId:I

    .line 1847
    iget-object v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mDisplayName:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mDisplayName:Ljava/lang/String;

    .line 1848
    iget-object v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    .line 1849
    const-string v2, "0"

    iput-object v2, v0, Landroid/app/enterprise/Account;->mSyncKey:Ljava/lang/String;

    .line 1850
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncLookback:I

    iput v2, v0, Landroid/app/enterprise/Account;->mSyncLookback:I

    .line 1851
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncInterval:I

    iput v2, v0, Landroid/app/enterprise/Account;->mSyncInterval:I

    .line 1852
    iput-wide v8, v0, Landroid/app/enterprise/Account;->mHostAuthKeyRecv:J

    .line 1853
    iput-wide v8, v0, Landroid/app/enterprise/Account;->mHostAuthKeySend:J

    .line 1854
    iput v5, v0, Landroid/app/enterprise/Account;->mFlags:I

    .line 1855
    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mIsDefault:Z

    iput-boolean v2, v0, Landroid/app/enterprise/Account;->mIsDefault:Z

    .line 1856
    iput-object v6, v0, Landroid/app/enterprise/Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 1857
    iget-object v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSenderName:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mSenderName:Ljava/lang/String;

    .line 1858
    iput-object v6, v0, Landroid/app/enterprise/Account;->mRingtoneUri:Ljava/lang/String;

    .line 1859
    iget-object v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocolVersion:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mProtocolVersion:Ljava/lang/String;

    .line 1860
    iput-object v6, v0, Landroid/app/enterprise/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 1861
    iget-object v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSignature:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mSignature:Ljava/lang/String;

    .line 1862
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakDays:I

    iput v2, v0, Landroid/app/enterprise/Account;->mPeakDays:I

    .line 1863
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakStartMinute:I

    iput v2, v0, Landroid/app/enterprise/Account;->mPeakStartMinute:I

    .line 1864
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakEndMinute:I

    iput v2, v0, Landroid/app/enterprise/Account;->mPeakEndMinute:I

    .line 1865
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakSyncSchedule:I

    iput v2, v0, Landroid/app/enterprise/Account;->mPeakSyncSchedule:I

    .line 1866
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mOffPeakSyncSchedule:I

    iput v2, v0, Landroid/app/enterprise/Account;->mOffPeakSyncSchedule:I

    .line 1867
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mRoamingSyncSchedule:I

    iput v2, v0, Landroid/app/enterprise/Account;->mRoamingSyncSchedule:I

    .line 1868
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    iput v2, v0, Landroid/app/enterprise/Account;->mSyncCalendarAge:I

    .line 1869
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailBodyTruncationSize:I

    iput v2, v0, Landroid/app/enterprise/Account;->mEmailBodyTruncationSize:I

    .line 1870
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailRoamingBodyTruncationSize:I

    iput v2, v0, Landroid/app/enterprise/Account;->mEmailRoamingBodyTruncationSize:I

    .line 1871
    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncContacts:Z

    iput-boolean v2, v0, Landroid/app/enterprise/Account;->mSyncContacts:Z

    .line 1872
    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendar:Z

    iput-boolean v2, v0, Landroid/app/enterprise/Account;->mSyncCalendar:Z

    .line 1873
    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncTasks:Z

    iput-boolean v2, v0, Landroid/app/enterprise/Account;->mSyncTasks:Z

    .line 1874
    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncNotes:Z

    iput-boolean v2, v0, Landroid/app/enterprise/Account;->mSyncNotes:Z

    .line 1875
    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailNotificationVibrateAlways:Z

    iput-boolean v2, v0, Landroid/app/enterprise/Account;->mEmailNotificationVibrateAlways:Z

    .line 1876
    iput-boolean v7, v0, Landroid/app/enterprise/Account;->mEmailNotificationVibrateWhenSilent:Z

    .line 1878
    new-instance v2, Landroid/app/enterprise/HostAuth;

    invoke-direct {v2}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    .line 1879
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput v5, v2, Landroid/app/enterprise/HostAuth;->mId:I

    .line 1880
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    const-string/jumbo v3, "eas"

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    .line 1881
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerAddress:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    .line 1882
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput v7, v2, Landroid/app/enterprise/HostAuth;->mPort:I

    .line 1883
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput v5, v2, Landroid/app/enterprise/HostAuth;->mFlags:I

    .line 1884
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEasUser:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    .line 1885
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPassword:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    .line 1886
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput-object v6, v2, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    .line 1887
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput-wide v8, v2, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    .line 1888
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-boolean v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    iput-boolean v3, v2, Landroid/app/enterprise/HostAuth;->mUseSSL:Z

    .line 1889
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-boolean v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseTLS:Z

    iput-boolean v3, v2, Landroid/app/enterprise/HostAuth;->mUseTLS:Z

    .line 1890
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-boolean v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    iput-boolean v3, v2, Landroid/app/enterprise/HostAuth;->mAcceptAllCertificates:Z

    .line 1892
    new-instance v2, Landroid/app/enterprise/HostAuth;

    invoke-direct {v2}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    .line 1893
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput v5, v2, Landroid/app/enterprise/HostAuth;->mId:I

    .line 1894
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    const-string/jumbo v3, "eas"

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    .line 1895
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerAddress:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    .line 1896
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput v7, v2, Landroid/app/enterprise/HostAuth;->mPort:I

    .line 1897
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput v5, v2, Landroid/app/enterprise/HostAuth;->mFlags:I

    .line 1898
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEasUser:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    .line 1899
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPassword:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    .line 1900
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput-object v6, v2, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    .line 1901
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput-wide v8, v2, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    .line 1902
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-boolean v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    iput-boolean v3, v2, Landroid/app/enterprise/HostAuth;->mUseSSL:Z

    .line 1903
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-boolean v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseTLS:Z

    iput-boolean v3, v2, Landroid/app/enterprise/HostAuth;->mUseTLS:Z

    .line 1904
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-boolean v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    iput-boolean v3, v2, Landroid/app/enterprise/HostAuth;->mAcceptAllCertificates:Z

    move-object v1, v0

    .line 1906
    .end local v0    # "acc":Landroid/app/enterprise/Account;
    .restart local v1    # "acc":Landroid/app/enterprise/Account;
    goto/16 :goto_22
.end method

.method static declared-synchronized getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    .registers 18
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "easDomain"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "serverAddress"    # Ljava/lang/String;
    .param p4, "protocol"    # Ljava/lang/String;
    .param p5, "isEas"    # Z
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 928
    const-class v10, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v10

    :try_start_3
    iget v9, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 929
    .local v9, "containerId":I
    invoke-static {v9}, getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 930
    .local v0, "hostUri":Landroid/net/Uri;
    invoke-static {v9}, getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 932
    .local v1, "acctUri":Landroid/net/Uri;
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAccountId : USER space    UserHandle.myUserId() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, p0

    .line 933
    invoke-static/range {v0 .. v8}, getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Landroid/app/enterprise/ContextInfo;)J
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_39

    move-result-wide v2

    monitor-exit v10

    return-wide v2

    .line 928
    .end local v0    # "hostUri":Landroid/net/Uri;
    .end local v1    # "acctUri":Landroid/net/Uri;
    .end local v9    # "containerId":I
    :catchall_39
    move-exception v2

    monitor-exit v10

    throw v2
.end method

.method private static getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Landroid/app/enterprise/ContextInfo;)J
    .registers 29
    .param p0, "hostUri"    # Landroid/net/Uri;
    .param p1, "acctUri"    # Landroid/net/Uri;
    .param p2, "easDomain"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "serverAddress"    # Ljava/lang/String;
    .param p5, "protocol"    # Ljava/lang/String;
    .param p6, "isEas"    # Z
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 939
    const-wide/16 v8, -0x1

    .line 940
    .local v8, "accountId":J
    const/4 v12, 0x0

    .line 942
    .local v12, "c":Landroid/database/Cursor;
    invoke-static/range {p2 .. p2}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 943
    invoke-static/range {p3 .. p3}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 944
    invoke-static/range {p4 .. p4}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 945
    invoke-static/range {p5 .. p5}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 947
    if-eqz p3, :cond_19

    if-eqz p4, :cond_19

    if-nez p5, :cond_23

    .line 948
    :cond_19
    const-string v2, "SettingsUtils"

    const-string/jumbo v3, "getAccountId : Error :: Invalid input parameters."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v10, v8

    .line 1029
    .end local v8    # "accountId":J
    .local v10, "accountId":J
    :goto_22
    return-wide v10

    .line 951
    .end local v10    # "accountId":J
    .restart local v8    # "accountId":J
    :cond_23
    if-eqz p6, :cond_42

    if-eqz p2, :cond_42

    .line 952
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 954
    :cond_42
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    .line 958
    .local v4, "ID_PROJECTION":[Ljava/lang/String;
    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p5, v6, v2

    const/4 v2, 0x1

    aput-object p4, v6, v2

    const/4 v2, 0x2

    aput-object p3, v6, v2

    .line 962
    .local v6, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p8

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 963
    .local v13, "callingUID":I
    invoke-static/range {p8 .. p8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v15

    .line 964
    .local v15, "userID":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 965
    .local v18, "token":J
    const-wide/16 v16, -0x1

    .line 967
    .local v16, "hostAuthId":J
    if-eqz v15, :cond_1c5

    .line 968
    :try_start_66
    move-object/from16 v0, p7

    invoke-static {v15, v0}, isPersona(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_185

    .line 969
    move-object/from16 v0, p8

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v2}, getEmailPackageName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v15}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    sput-object v2, emails:Landroid/content/Context;

    .line 970
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccountIdInternal : USER space   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p8

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v5}, getEmailPackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_a5} :catch_1be

    .line 985
    :goto_a5
    :try_start_a5
    sget-object v2, emails:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "protocol=? AND address=? AND login=? "

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 990
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccountId for HOST_AUTH row count : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_ff

    .line 992
    const-string v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .line 993
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getAccountIdInternal : hostAuthId "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_ff} :catch_1c9
    .catchall {:try_start_a5 .. :try_end_ff} :catchall_1d4

    .line 998
    :cond_ff
    if-eqz v12, :cond_104

    .line 999
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1001
    :cond_104
    :goto_104
    const/4 v12, 0x0

    .line 1003
    const-wide/16 v2, -0x1

    cmp-long v2, v2, v16

    if-eqz v2, :cond_17f

    .line 1004
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    .end local v4    # "ID_PROJECTION":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    .line 1007
    .restart local v4    # "ID_PROJECTION":[Ljava/lang/String;
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    .end local v6    # "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1011
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    :try_start_124
    sget-object v2, emails:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "hostAuthKeyRecv=? OR hostAuthKeySend=? "

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1016
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccountId for ACCOUNT row count : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_17a

    .line 1018
    const-string v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v8, v2

    .line 1019
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getAccountIdInternal : ACCOUNT "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_17a} :catch_1db
    .catchall {:try_start_124 .. :try_end_17a} :catchall_1e5

    .line 1024
    :cond_17a
    if-eqz v12, :cond_17f

    .line 1025
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1028
    :cond_17f
    :goto_17f
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-wide v10, v8

    .line 1029
    .end local v8    # "accountId":J
    .restart local v10    # "accountId":J
    goto/16 :goto_22

    .line 972
    .end local v10    # "accountId":J
    .restart local v8    # "accountId":J
    :cond_185
    :try_start_185
    move-object/from16 v0, p8

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v15}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    sput-object v2, emails:Landroid/content/Context;

    .line 973
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccountIdInternal : USER space   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p8

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1bc
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_1bc} :catch_1be

    goto/16 :goto_a5

    .line 980
    :catch_1be
    move-exception v14

    .line 981
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v10, v8

    .line 982
    .end local v8    # "accountId":J
    .restart local v10    # "accountId":J
    goto/16 :goto_22

    .line 978
    .end local v10    # "accountId":J
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v8    # "accountId":J
    :cond_1c5
    :try_start_1c5
    sput-object p7, emails:Landroid/content/Context;
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_1c5 .. :try_end_1c7} :catch_1be

    goto/16 :goto_a5

    .line 995
    :catch_1c9
    move-exception v14

    .line 996
    .restart local v14    # "e":Ljava/lang/Exception;
    :try_start_1ca
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1cd
    .catchall {:try_start_1ca .. :try_end_1cd} :catchall_1d4

    .line 998
    if-eqz v12, :cond_104

    .line 999
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_104

    .line 998
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_1d4
    move-exception v2

    if-eqz v12, :cond_1da

    .line 999
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_1da
    throw v2

    .line 1021
    :catch_1db
    move-exception v14

    .line 1022
    .restart local v14    # "e":Ljava/lang/Exception;
    :try_start_1dc
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1df
    .catchall {:try_start_1dc .. :try_end_1df} :catchall_1e5

    .line 1024
    if-eqz v12, :cond_17f

    .line 1025
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_17f

    .line 1024
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_1e5
    move-exception v2

    if-eqz v12, :cond_1eb

    .line 1025
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_1eb
    throw v2
.end method

.method static declared-synchronized getAccountIds(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)[J
    .registers 22
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1206
    const-class v19, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v19

    const/4 v14, 0x0

    .line 1207
    .local v14, "ret":[J
    const/4 v8, 0x0

    .line 1208
    .local v8, "c":Landroid/database/Cursor;
    const/4 v2, 0x1

    :try_start_6
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    .line 1212
    .local v4, "ID_PROJECTION":[Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v18

    .line 1213
    .local v18, "userID":I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1214
    .local v9, "containerId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_e6

    move-result-wide v16

    .line 1217
    .local v16, "token":J
    if-eqz v18, :cond_e2

    .line 1218
    :try_start_1b
    move/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, isPersona(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 1219
    invoke-static {v9}, getEmailPackageName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v5, Landroid/os/UserHandle;

    move/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    sput-object v2, emails:Landroid/content/Context;

    .line 1220
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccountIds : USER space   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v9}, getEmailPackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_56} :catch_db
    .catchall {:try_start_1b .. :try_end_56} :catchall_e6

    .line 1235
    :goto_56
    :try_start_56
    sget-object v2, emails:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v9}, getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1237
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1238
    .local v10, "count":I
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Accounts row count : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    if-lez v10, :cond_e9

    .line 1240
    const/4 v12, 0x0

    .line 1241
    .local v12, "i":I
    new-array v14, v10, [J

    move v13, v12

    .line 1242
    .end local v12    # "i":I
    .local v13, "i":I
    :goto_89
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 1243
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "i":I
    .restart local v12    # "i":I
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    aput-wide v2, v14, v13
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_9e} :catch_f3
    .catchall {:try_start_56 .. :try_end_9e} :catchall_fd

    move v13, v12

    .end local v12    # "i":I
    .restart local v13    # "i":I
    goto :goto_89

    .line 1222
    .end local v10    # "count":I
    .end local v13    # "i":I
    :cond_a0
    :try_start_a0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v5, Landroid/os/UserHandle;

    move/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    sput-object v2, emails:Landroid/content/Context;

    .line 1223
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccountIds : USER space   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_d9} :catch_db
    .catchall {:try_start_a0 .. :try_end_d9} :catchall_e6

    goto/16 :goto_56

    .line 1230
    :catch_db
    move-exception v11

    .line 1231
    .local v11, "e":Ljava/lang/Exception;
    :try_start_dc
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_df
    .catchall {:try_start_dc .. :try_end_df} :catchall_e6

    move-object v15, v14

    .line 1254
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v14    # "ret":[J
    .local v15, "ret":[J
    :goto_e0
    monitor-exit v19

    return-object v15

    .line 1227
    .end local v15    # "ret":[J
    .restart local v14    # "ret":[J
    :cond_e2
    :try_start_e2
    sput-object p1, emails:Landroid/content/Context;
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e4} :catch_db
    .catchall {:try_start_e2 .. :try_end_e4} :catchall_e6

    goto/16 :goto_56

    .line 1206
    .end local v4    # "ID_PROJECTION":[Ljava/lang/String;
    .end local v9    # "containerId":I
    .end local v16    # "token":J
    .end local v18    # "userID":I
    :catchall_e6
    move-exception v2

    monitor-exit v19

    throw v2

    .line 1249
    .restart local v4    # "ID_PROJECTION":[Ljava/lang/String;
    .restart local v9    # "containerId":I
    .restart local v10    # "count":I
    .restart local v16    # "token":J
    .restart local v18    # "userID":I
    :cond_e9
    if-eqz v8, :cond_ee

    .line 1250
    :try_start_eb
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1253
    .end local v10    # "count":I
    :cond_ee
    :goto_ee
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_f1
    .catchall {:try_start_eb .. :try_end_f1} :catchall_e6

    move-object v15, v14

    .line 1254
    .end local v14    # "ret":[J
    .restart local v15    # "ret":[J
    goto :goto_e0

    .line 1246
    .end local v15    # "ret":[J
    .restart local v14    # "ret":[J
    :catch_f3
    move-exception v11

    .line 1247
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_f4
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f7
    .catchall {:try_start_f4 .. :try_end_f7} :catchall_fd

    .line 1249
    if-eqz v8, :cond_ee

    .line 1250
    :try_start_f9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_ee

    .line 1249
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_fd
    move-exception v2

    if-eqz v8, :cond_103

    .line 1250
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_103
    throw v2
    :try_end_104
    .catchall {:try_start_f9 .. :try_end_104} :catchall_e6
.end method

.method public static getAccountType(ZI)Ljava/lang/String;
    .registers 3
    .param p0, "isEAS"    # Z
    .param p1, "containerId"    # I

    .prologue
    .line 1463
    invoke-static {}, isSupportNewEmail()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1464
    if-eqz p0, :cond_b

    const-string v0, "com.samsung.android.exchange"

    .line 1466
    :goto_a
    return-object v0

    .line 1464
    :cond_b
    const-string v0, "com.samsung.android.email"

    goto :goto_a

    .line 1466
    :cond_e
    if-eqz p0, :cond_13

    const-string v0, "com.android.exchange"

    goto :goto_a

    :cond_13
    const-string v0, "com.android.email"

    goto :goto_a
.end method

.method private static getAccountsDBRowId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J
    .registers 14
    .param p0, "emailId"    # Ljava/lang/String;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 546
    const/4 v0, 0x0

    .line 547
    .local v0, "accountsDB":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 548
    .local v1, "cr":Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 549
    .local v6, "rowId":J
    invoke-static {p0}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 550
    invoke-static {p1}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 552
    if-eqz p0, :cond_12b

    .line 555
    :try_start_e
    invoke-static {}, makeDBpath()V

    .line 556
    sget-object v5, ACCOUNTS_DB:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 558
    const-wide/16 v2, -0x1

    .line 560
    .local v2, "accountsDBRowId":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT rowid FROM accounts WHERE name = \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_d1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\' AND type = \'"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3f
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 564
    const-string v8, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAccountsDBRowId - got row count : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " for emailAddress : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p1, :cond_d5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND account type : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_87
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_a6

    .line 568
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 569
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 570
    if-eqz v1, :cond_a5

    .line 571
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 572
    :cond_a5
    const/4 v1, 0x0

    .line 574
    :cond_a6
    const-wide/16 v8, -0x1

    cmp-long v5, v8, v2

    if-eqz v5, :cond_d8

    .line 575
    move-wide v6, v2

    .line 576
    const-string v5, "SettingsUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAccountsDBRowId - Found row Id : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_c6} :catch_10b
    .catchall {:try_start_e .. :try_end_c6} :catchall_11f

    .line 587
    :goto_c6
    if-eqz v1, :cond_cb

    .line 588
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 589
    :cond_cb
    if-eqz v0, :cond_d0

    .line 590
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 596
    .end local v2    # "accountsDBRowId":J
    :cond_d0
    :goto_d0
    return-wide v6

    .line 560
    .restart local v2    # "accountsDBRowId":J
    :cond_d1
    :try_start_d1
    const-string v5, ""

    goto/16 :goto_3f

    .line 564
    :cond_d5
    const-string v5, ""

    goto :goto_87

    .line 578
    :cond_d8
    const-string v8, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAccountsDBRowId - entry doesn\'t exist for name: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p1, :cond_11c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND account type : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_ff
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_10a} :catch_10b
    .catchall {:try_start_d1 .. :try_end_10a} :catchall_11f

    goto :goto_c6

    .line 583
    .end local v2    # "accountsDBRowId":J
    :catch_10b
    move-exception v4

    .line 584
    .local v4, "e":Ljava/lang/Exception;
    const-wide/16 v6, -0x1

    .line 585
    :try_start_10e
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_111
    .catchall {:try_start_10e .. :try_end_111} :catchall_11f

    .line 587
    if-eqz v1, :cond_116

    .line 588
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 589
    :cond_116
    if-eqz v0, :cond_d0

    .line 590
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_d0

    .line 578
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "accountsDBRowId":J
    :cond_11c
    :try_start_11c
    const-string v5, ""
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_11e} :catch_10b
    .catchall {:try_start_11c .. :try_end_11e} :catchall_11f

    goto :goto_ff

    .line 587
    .end local v2    # "accountsDBRowId":J
    :catchall_11f
    move-exception v5

    if-eqz v1, :cond_125

    .line 588
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 589
    :cond_125
    if-eqz v0, :cond_12a

    .line 590
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_12a
    throw v5

    .line 594
    :cond_12b
    const-string v5, "SettingsUtils"

    const-string/jumbo v8, "getAccountsDBRowId : Error :: Invalid input parameters."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d0
.end method

.method static declared-synchronized getCBAAlias(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Ljava/lang/String;
    .registers 19
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1342
    const-class v13, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v13

    const/4 v8, 0x0

    .line 1343
    .local v8, "alias":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1345
    .local v9, "c":Landroid/database/Cursor;
    :try_start_5
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v12

    .line 1346
    .local v12, "userID":I
    iget v10, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1347
    .local v10, "containerId":I
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "cbaCertificateAlias"

    aput-object v3, v4, v2
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_f3

    .line 1352
    .local v4, "ID_PROJECTION":[Ljava/lang/String;
    if-eqz v12, :cond_f6

    .line 1353
    :try_start_1a
    move-object/from16 v0, p3

    invoke-static {v12, v0}, isPersona(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 1354
    invoke-static {v10}, getEmailPackageName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v12}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    sput-object v2, emails:Landroid/content/Context;

    .line 1355
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCBAAlias : USER space   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, getEmailPackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    :goto_51
    sget-object v2, emails:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v10}, getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1366
    if-eqz v9, :cond_a8

    .line 1367
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccount row count : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_a8

    .line 1369
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1370
    const-string v2, "cbaCertificateAlias"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_a7} :catch_e4
    .catchall {:try_start_1a .. :try_end_a7} :catchall_fa

    move-result-object v8

    .line 1376
    :cond_a8
    if-eqz v9, :cond_ad

    .line 1377
    :try_start_aa
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_f3

    .line 1380
    :cond_ad
    :goto_ad
    monitor-exit v13

    return-object v8

    .line 1357
    :cond_af
    :try_start_af
    iget v2, p0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v12}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    sput-object v2, emails:Landroid/content/Context;

    .line 1358
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCBAAlias : USER space   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_e2} :catch_e4
    .catchall {:try_start_af .. :try_end_e2} :catchall_fa

    goto/16 :goto_51

    .line 1373
    :catch_e4
    move-exception v11

    .line 1374
    .local v11, "e":Ljava/lang/Exception;
    :try_start_e5
    const-string v2, "SettingsUtils"

    const-string/jumbo v3, "getCBAAlias() : failed. "

    invoke-static {v2, v3, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ed
    .catchall {:try_start_e5 .. :try_end_ed} :catchall_fa

    .line 1376
    if-eqz v9, :cond_ad

    .line 1377
    :try_start_ef
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_f2
    .catchall {:try_start_ef .. :try_end_f2} :catchall_f3

    goto :goto_ad

    .line 1342
    .end local v4    # "ID_PROJECTION":[Ljava/lang/String;
    .end local v10    # "containerId":I
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "userID":I
    :catchall_f3
    move-exception v2

    monitor-exit v13

    throw v2

    .line 1362
    .restart local v4    # "ID_PROJECTION":[Ljava/lang/String;
    .restart local v10    # "containerId":I
    .restart local v12    # "userID":I
    :cond_f6
    :try_start_f6
    sput-object p3, emails:Landroid/content/Context;
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_f8} :catch_e4
    .catchall {:try_start_f6 .. :try_end_f8} :catchall_fa

    goto/16 :goto_51

    .line 1376
    :catchall_fa
    move-exception v2

    if-eqz v9, :cond_100

    .line 1377
    :try_start_fd
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_100
    throw v2
    :try_end_101
    .catchall {:try_start_fd .. :try_end_101} :catchall_f3
.end method

.method public static getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "containerId"    # I
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1438
    return-object p1
.end method

.method public static getContainerizedString(ILjava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "containerId"    # I
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1459
    return-object p1
.end method

.method private static getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p0, "login"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1318
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v4

    aput-object v2, v0, v3

    .line 1321
    .local v0, "easDomainAndUser":[Ljava/lang/String;
    invoke-static {p0}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1322
    if-eqz p0, :cond_3a

    .line 1323
    const-string v2, "\\"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1324
    const-string v2, "\\"

    invoke-static {v2}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1325
    .local v1, "sp":[Ljava/lang/String;
    if-eqz v1, :cond_3a

    array-length v2, v1

    if-lez v2, :cond_3a

    .line 1326
    array-length v2, v1

    if-ne v5, v2, :cond_3b

    .line 1327
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 1328
    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 1337
    .end local v1    # "sp":[Ljava/lang/String;
    :cond_3a
    :goto_3a
    return-object v0

    .line 1329
    .restart local v1    # "sp":[Ljava/lang/String;
    :cond_3b
    array-length v2, v1

    if-ne v3, v2, :cond_3a

    .line 1330
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_3a

    .line 1334
    .end local v1    # "sp":[Ljava/lang/String;
    :cond_47
    aput-object p0, v0, v3

    goto :goto_3a
.end method

.method public static getEasPackageName(I)Ljava/lang/String;
    .registers 2
    .param p0, "containerId"    # I

    .prologue
    .line 1453
    invoke-static {}, isSupportNewEmail()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1454
    const-string v0, "com.samsung.android.email.provider"

    .line 1455
    :goto_8
    return-object v0

    :cond_9
    const-string v0, "com.android.exchange"

    goto :goto_8
.end method

.method public static getEmailPackageName(I)Ljava/lang/String;
    .registers 2
    .param p0, "containerId"    # I

    .prologue
    .line 1442
    invoke-static {}, isSupportNewEmail()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1443
    const-string v0, "com.samsung.android.email.provider"

    .line 1445
    :goto_8
    return-object v0

    :cond_9
    const-string v0, "com.android.email"

    goto :goto_8
.end method

.method public static getHostAuthContentUri(I)Landroid/net/Uri;
    .registers 3
    .param p0, "containerId"    # I

    .prologue
    .line 1482
    invoke-static {}, isSupportNewEmail()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/hostauth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1489
    :goto_28
    return-object v0

    .line 1486
    :cond_29
    if-nez p0, :cond_2e

    .line 1487
    sget-object v0, HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    goto :goto_28

    .line 1489
    :cond_2e
    const-string v0, "content://com.android.email.provider/hostauth"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_28
.end method

.method private static getHostAuthFlags(IZZZLandroid/content/Context;)I
    .registers 9
    .param p0, "existingFlag"    # I
    .param p1, "useSSL"    # Z
    .param p2, "useTLS"    # Z
    .param p3, "acceptAllCertificates"    # Z
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 439
    move v0, p0

    .line 442
    .local v0, "flag":I
    if-ne v3, p1, :cond_f

    .line 443
    or-int/lit8 v0, v0, 0x1

    .line 448
    :cond_6
    :goto_6
    if-ne v3, p2, :cond_16

    .line 449
    or-int/lit8 v0, v0, 0x2

    .line 454
    :cond_a
    :goto_a
    if-ne v3, p3, :cond_1e

    .line 455
    or-int/lit8 v0, v0, 0x8

    .line 459
    :cond_e
    :goto_e
    return v0

    .line 444
    :cond_f
    and-int/lit8 v1, v0, 0x1

    if-ne v3, v1, :cond_6

    .line 445
    xor-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 450
    :cond_16
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x2

    if-ne v1, v2, :cond_a

    .line 451
    xor-int/lit8 v0, v0, 0x2

    goto :goto_a

    .line 456
    :cond_1e
    const/16 v1, 0x8

    and-int/lit8 v2, v0, 0x8

    if-ne v1, v2, :cond_e

    .line 457
    xor-int/lit8 v0, v0, 0x8

    goto :goto_e
.end method

.method public static getLDAPAccountFromEnterpriseLDAPAccount(Landroid/sec/enterprise/email/EnterpriseLDAPAccount;)Landroid/app/enterprise/LDAPAccount;
    .registers 5
    .param p0, "info"    # Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    .prologue
    .line 1910
    const/4 v0, 0x0

    .line 1911
    .local v0, "acc":Landroid/app/enterprise/LDAPAccount;
    if-nez p0, :cond_5

    .line 1912
    const/4 v1, 0x0

    .line 1923
    :goto_4
    return-object v1

    .line 1913
    :cond_5
    new-instance v0, Landroid/app/enterprise/LDAPAccount;

    .end local v0    # "acc":Landroid/app/enterprise/LDAPAccount;
    invoke-direct {v0}, Landroid/app/enterprise/LDAPAccount;-><init>()V

    .line 1914
    .restart local v0    # "acc":Landroid/app/enterprise/LDAPAccount;
    iget-wide v2, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mId:J

    iput-wide v2, v0, Landroid/app/enterprise/LDAPAccount;->id:J

    .line 1915
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mUserName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/enterprise/LDAPAccount;->userName:Ljava/lang/String;

    .line 1916
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mPassword:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/enterprise/LDAPAccount;->password:Ljava/lang/String;

    .line 1917
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mPort:I

    iput v1, v0, Landroid/app/enterprise/LDAPAccount;->port:I

    .line 1918
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mHost:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/enterprise/LDAPAccount;->host:Ljava/lang/String;

    .line 1919
    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mUseSSL:Z

    iput-boolean v1, v0, Landroid/app/enterprise/LDAPAccount;->isSSL:Z

    .line 1920
    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mIsAnonymous:Z

    iput-boolean v1, v0, Landroid/app/enterprise/LDAPAccount;->isAnonymous:Z

    .line 1921
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mBaseDN:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/enterprise/LDAPAccount;->baseDN:Ljava/lang/String;

    .line 1922
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mTrustAll:I

    iput v1, v0, Landroid/app/enterprise/LDAPAccount;->trustAll:I

    move-object v1, v0

    .line 1923
    goto :goto_4
.end method

.method public static getPackageNameForUid(I)Ljava/lang/String;
    .registers 4
    .param p0, "uid"    # I

    .prologue
    .line 267
    sget v0, preCallingUid:I

    if-ne p0, v0, :cond_22

    .line 268
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPackageNameForUid :   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, adminPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    sget-object v0, adminPkg:Ljava/lang/String;

    .line 271
    :goto_21
    return-object v0

    :cond_22
    invoke-static {p0}, getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21
.end method

.method static getPassword(IJLandroid/content/Context;I)[Ljava/lang/String;
    .registers 14
    .param p0, "containerId"    # I
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "userID"    # I

    .prologue
    const/4 v4, 0x0

    .line 1529
    new-instance v6, Landroid/os/ConditionVariable;

    invoke-direct {v6}, Landroid/os/ConditionVariable;-><init>()V

    .line 1530
    .local v6, "condition":Landroid/os/ConditionVariable;
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "edm.intent.action.internal.RESULT_EMAILACCOUNT_PASSWORD"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1531
    .local v3, "filter":Landroid/content/IntentFilter;
    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;

    .line 1533
    .local v8, "ret":[Ljava/lang/String;
    new-instance v1, Lcom/android/server/enterprise/email/SettingsUtils$1;

    invoke-direct {v1, v8, v6}, Lcom/android/server/enterprise/email/SettingsUtils$1;-><init>([Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 1556
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p4}, Landroid/os/UserHandle;-><init>(I)V

    move-object v0, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1557
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "edm.intent.action.internal.REQUEST_EMAILACCOUNT_PASSWORD"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1558
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "account_id"

    invoke-virtual {v7, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1559
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v2, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {p3, v7, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1562
    const-wide/16 v4, 0x2710

    invoke-virtual {v6, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1563
    const-string v0, "SettingsUtils"

    const-string/jumbo v2, "password obtained"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    :goto_47
    invoke-virtual {p3, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1569
    return-object v8

    .line 1565
    :cond_4b
    const-string v0, "SettingsUtils"

    const-string/jumbo v2, "timeout while obtaining password"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47
.end method

.method public static getPoliciesContentUri(I)Landroid/net/Uri;
    .registers 3
    .param p0, "containerId"    # I

    .prologue
    .line 1493
    invoke-static {}, isSupportNewEmail()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/policies"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1501
    :goto_28
    return-object v0

    .line 1497
    :cond_29
    if-gtz p0, :cond_36

    .line 1498
    const-string v0, "SettingsUtils"

    const-string/jumbo v1, "getPoliciesContentUri"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    sget-object v0, POLICIES_CONTENT_URI:Landroid/net/Uri;

    goto :goto_28

    .line 1501
    :cond_36
    const-string v0, "content://com.android.email.provider/policies"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_28
.end method

.method static declared-synchronized getSMIMEAlias(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Ljava/lang/String;
    .registers 22
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "isSigning"    # Z

    .prologue
    .line 1386
    const-class v15, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v15

    const/4 v8, 0x0

    .line 1387
    .local v8, "alias":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1389
    .local v9, "c":Landroid/database/Cursor;
    :try_start_5
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v14

    .line 1390
    .local v14, "userID":I
    move-object/from16 v0, p0

    iget v10, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1391
    .local v10, "containerId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1392
    .local v12, "token":J
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v3, 0x1

    if-eqz p4, :cond_be

    const-string/jumbo v2, "smimeOwnSignCertAlias"

    :goto_1f
    aput-object v2, v4, v3
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_10f

    .line 1398
    .local v4, "ID_PROJECTION":[Ljava/lang/String;
    if-eqz v14, :cond_112

    .line 1399
    :try_start_23
    move-object/from16 v0, p3

    invoke-static {v14, v0}, isPersona(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 1400
    invoke-static {v10}, getEmailPackageName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v14}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    sput-object v2, emails:Landroid/content/Context;

    .line 1402
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSMIMEAlias : USER space   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, getEmailPackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    :goto_5a
    sget-object v2, emails:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v10}, getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1416
    if-eqz v9, :cond_b4

    .line 1417
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccount row count : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_b4

    .line 1419
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1420
    if-eqz p4, :cond_128

    const-string/jumbo v2, "smimeOwnSignCertAlias"

    :goto_ac
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_b3} :catch_fc
    .catchall {:try_start_23 .. :try_end_b3} :catchall_11e

    move-result-object v8

    .line 1428
    :cond_b4
    :try_start_b4
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1429
    if-eqz v9, :cond_bc

    .line 1430
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_bc
    .catchall {:try_start_b4 .. :try_end_bc} :catchall_10f

    .line 1433
    :cond_bc
    :goto_bc
    monitor-exit v15

    return-object v8

    .line 1392
    .end local v4    # "ID_PROJECTION":[Ljava/lang/String;
    :cond_be
    :try_start_be
    const-string/jumbo v2, "smimeOwnCertificateAlias"
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_10f

    goto/16 :goto_1f

    .line 1404
    .restart local v4    # "ID_PROJECTION":[Ljava/lang/String;
    :cond_c3
    :try_start_c3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v14}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    sput-object v2, emails:Landroid/content/Context;

    .line 1406
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSMIMEAlias : USER space   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_fa} :catch_fc
    .catchall {:try_start_c3 .. :try_end_fa} :catchall_11e

    goto/16 :goto_5a

    .line 1424
    :catch_fc
    move-exception v11

    .line 1425
    .local v11, "e":Ljava/lang/Exception;
    :try_start_fd
    const-string v2, "SettingsUtils"

    const-string/jumbo v3, "getSMIMEAlias() : failed. "

    invoke-static {v2, v3, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_105
    .catchall {:try_start_fd .. :try_end_105} :catchall_11e

    .line 1426
    const/4 v8, 0x0

    .line 1428
    :try_start_106
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1429
    if-eqz v9, :cond_bc

    .line 1430
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_10e
    .catchall {:try_start_106 .. :try_end_10e} :catchall_10f

    goto :goto_bc

    .line 1386
    .end local v4    # "ID_PROJECTION":[Ljava/lang/String;
    .end local v10    # "containerId":I
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "token":J
    .end local v14    # "userID":I
    :catchall_10f
    move-exception v2

    monitor-exit v15

    throw v2

    .line 1410
    .restart local v4    # "ID_PROJECTION":[Ljava/lang/String;
    .restart local v10    # "containerId":I
    .restart local v12    # "token":J
    .restart local v14    # "userID":I
    :cond_112
    :try_start_112
    sput-object p3, emails:Landroid/content/Context;

    .line 1411
    const-string v2, "SettingsUtils"

    const-string/jumbo v3, "getSMIMEAlias : get Context with no MUM Enviroment."

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_11c} :catch_fc
    .catchall {:try_start_112 .. :try_end_11c} :catchall_11e

    goto/16 :goto_5a

    .line 1428
    :catchall_11e
    move-exception v2

    :try_start_11f
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1429
    if-eqz v9, :cond_127

    .line 1430
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_127
    throw v2
    :try_end_128
    .catchall {:try_start_11f .. :try_end_128} :catchall_10f

    .line 1420
    :cond_128
    :try_start_128
    const-string/jumbo v2, "smimeOwnCertificateAlias"
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_12b} :catch_fc
    .catchall {:try_start_128 .. :try_end_12b} :catchall_11e

    goto :goto_ac
.end method

.method public static getSMIMEModeFromAction(Ljava/lang/String;)I
    .registers 3
    .param p0, "Action"    # Ljava/lang/String;

    .prologue
    .line 1733
    const/4 v0, -0x1

    .line 1734
    .local v0, "ret":I
    if-eqz p0, :cond_c

    .line 1735
    const-string v1, "com.sec.enterprise.email.FORCE_SMIME_CERTIFICATE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1736
    const/4 v0, 0x1

    .line 1745
    :cond_c
    :goto_c
    return v0

    .line 1738
    :cond_d
    const-string v1, "com.sec.enterprise.email.FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1739
    const/4 v0, 0x2

    goto :goto_c

    .line 1741
    :cond_17
    const-string v1, "com.sec.enterprise.email.FORCE_SMIME_CERTIFICATE_FOR_SIGNING"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1742
    const/4 v0, 0x3

    goto :goto_c
.end method

.method public static getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "caller"    # Ljava/lang/String;

    .prologue
    .line 1615
    const/4 v2, 0x0

    .line 1617
    .local v2, "password":Ljava/lang/String;
    :try_start_1
    sget-object v3, mServerPassword:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1618
    sget-object v3, mServerPassword:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_11

    .line 1623
    :goto_10
    return-object v2

    .line 1619
    :catch_11
    move-exception v1

    .line 1620
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SettingsUtils"

    const-string/jumbo v4, "getSecurityPassword() failed"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public static getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I
    .registers 8
    .param p0, "mProtocolVersion"    # Ljava/lang/String;
    .param p1, "mEmailBodyTruncationSize"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x7

    const/4 v2, 0x4

    const/4 v0, 0x2

    const/4 v3, 0x5

    .line 1635
    if-eqz p0, :cond_31

    const-string v5, "2.5"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    .line 1637
    if-gt p1, v0, :cond_12

    .line 1667
    :cond_11
    :goto_11
    return v0

    .line 1639
    :cond_12
    if-gt p1, v3, :cond_16

    move v0, v1

    .line 1640
    goto :goto_11

    .line 1641
    :cond_16
    const/16 v0, 0xa

    if-gt p1, v0, :cond_1c

    move v0, v2

    .line 1642
    goto :goto_11

    .line 1643
    :cond_1c
    const/16 v0, 0x14

    if-gt p1, v0, :cond_22

    move v0, v3

    .line 1644
    goto :goto_11

    .line 1645
    :cond_22
    const/16 v0, 0x32

    if-gt p1, v0, :cond_28

    .line 1646
    const/4 v0, 0x6

    goto :goto_11

    .line 1647
    :cond_28
    const/16 v0, 0x64

    if-gt p1, v0, :cond_2e

    move v0, v4

    .line 1648
    goto :goto_11

    .line 1650
    :cond_2e
    const/16 v0, 0x8

    goto :goto_11

    .line 1652
    :cond_31
    if-gt p1, v2, :cond_35

    .line 1653
    const/4 v0, 0x0

    goto :goto_11

    .line 1654
    :cond_35
    if-gt p1, v3, :cond_39

    .line 1655
    const/4 v0, 0x1

    goto :goto_11

    .line 1656
    :cond_39
    if-le p1, v4, :cond_11

    .line 1658
    const/16 v0, 0xa

    if-gt p1, v0, :cond_41

    move v0, v1

    .line 1659
    goto :goto_11

    .line 1660
    :cond_41
    const/16 v0, 0x14

    if-gt p1, v0, :cond_47

    move v0, v2

    .line 1661
    goto :goto_11

    .line 1662
    :cond_47
    const/16 v0, 0x32

    if-gt p1, v0, :cond_4d

    move v0, v3

    .line 1663
    goto :goto_11

    .line 1664
    :cond_4d
    const/16 v0, 0x64

    if-gt p1, v0, :cond_53

    .line 1665
    const/4 v0, 0x6

    goto :goto_11

    :cond_53
    move v0, v4

    .line 1667
    goto :goto_11
.end method

.method public static getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I
    .registers 8
    .param p0, "mProtocolVersion"    # Ljava/lang/String;
    .param p1, "index"    # I

    .prologue
    const/16 v4, 0x32

    const/16 v3, 0x14

    const/16 v2, 0xa

    const/4 v1, 0x5

    const/4 v0, 0x1

    .line 1672
    if-eqz p0, :cond_26

    const-string v5, "2.5"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 1674
    packed-switch p1, :pswitch_data_3c

    .line 1693
    const v0, 0x7fffffff

    .line 1716
    :goto_18
    :pswitch_18
    return v0

    .line 1681
    :pswitch_19
    const/4 v0, 0x2

    goto :goto_18

    :pswitch_1b
    move v0, v1

    .line 1683
    goto :goto_18

    :pswitch_1d
    move v0, v2

    .line 1685
    goto :goto_18

    :pswitch_1f
    move v0, v3

    .line 1687
    goto :goto_18

    :pswitch_21
    move v0, v4

    .line 1689
    goto :goto_18

    .line 1691
    :pswitch_23
    const/16 v0, 0x64

    goto :goto_18

    .line 1697
    :cond_26
    packed-switch p1, :pswitch_data_52

    .line 1716
    const v0, 0x7fffffff

    goto :goto_18

    .line 1702
    :pswitch_2d
    const/4 v0, 0x4

    goto :goto_18

    :pswitch_2f
    move v0, v1

    .line 1704
    goto :goto_18

    .line 1706
    :pswitch_31
    const/4 v0, 0x7

    goto :goto_18

    :pswitch_33
    move v0, v2

    .line 1708
    goto :goto_18

    :pswitch_35
    move v0, v3

    .line 1710
    goto :goto_18

    :pswitch_37
    move v0, v4

    .line 1712
    goto :goto_18

    .line 1714
    :pswitch_39
    const/16 v0, 0x64

    goto :goto_18

    .line 1674
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_19
        :pswitch_1b
        :pswitch_1d
        :pswitch_1f
        :pswitch_21
        :pswitch_23
    .end packed-switch

    .line 1697
    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_18
        :pswitch_2d
        :pswitch_2f
        :pswitch_31
        :pswitch_33
        :pswitch_35
        :pswitch_37
        :pswitch_39
    .end packed-switch
.end method

.method static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 259
    if-nez p0, :cond_4

    .line 263
    :cond_3
    :goto_3
    return-object v1

    .line 259
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_10

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p0

    goto :goto_3

    .line 260
    :catch_10
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private static insertAccountTableRow(ILcom/android/server/enterprise/email/AccountMetaData;JJZLandroid/content/Context;)J
    .registers 24
    .param p0, "containerId"    # I
    .param p1, "accInfo"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p2, "hostAuthKeyRecv"    # J
    .param p4, "hostAuthKeySend"    # J
    .param p6, "isInsertOP"    # Z
    .param p7, "context"    # Landroid/content/Context;

    .prologue
    .line 601
    const-wide/16 v8, -0x1

    .line 603
    .local v8, "rowId":J
    const/4 v3, 0x0

    .line 604
    .local v3, "compatibilityUuid":Ljava/lang/String;
    if-eqz p6, :cond_20a

    const/4 v10, 0x0

    .line 605
    .local v10, "settingsFlags":I
    :goto_6
    const/4 v6, 0x0

    .line 607
    .local v6, "ringtoneUri":Ljava/lang/String;
    if-eqz p6, :cond_210

    .line 609
    const-string v6, "content://settings/system/notification_sound"

    .line 610
    const/4 v10, 0x1

    .line 611
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 618
    :goto_14
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    if-ne v13, v14, :cond_21e

    .line 619
    or-int/lit8 v10, v10, 0x2

    .line 623
    :cond_1d
    :goto_1d
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    if-ne v13, v14, :cond_227

    .line 624
    or-int/lit8 v10, v10, 0x40

    .line 629
    :cond_26
    :goto_26
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 631
    .local v11, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    if-eqz v13, :cond_231

    .line 632
    const-string/jumbo v13, "displayName"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :goto_3b
    const-string/jumbo v13, "emailAddress"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string/jumbo v13, "syncLookback"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 643
    const-string/jumbo v13, "syncInterval"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string/jumbo v13, "peakDays"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 645
    const-string/jumbo v13, "peakStartMinute"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 646
    const-string/jumbo v13, "peakEndMinute"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 647
    const-string/jumbo v13, "peakSchedule"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 648
    const-string/jumbo v13, "offPeakSchedule"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 649
    const-string/jumbo v13, "roamingSchedule"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 651
    const-string/jumbo v13, "hostAuthKeyRecv"

    move-wide/from16 v0, p2

    long-to-int v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 652
    const-string/jumbo v13, "hostAuthKeySend"

    move-wide/from16 v0, p4

    long-to-int v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 653
    const-string/jumbo v13, "flags"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 654
    const-string/jumbo v14, "isDefault"

    if-eqz p6, :cond_23b

    const/4 v13, 0x0

    :goto_df
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 655
    const-string v13, "compatibilityUuid"

    invoke-virtual {v11, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    if-eqz v13, :cond_247

    .line 657
    const-string/jumbo v13, "senderName"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    :goto_fb
    const-string/jumbo v13, "ringtoneUri"

    invoke-virtual {v11, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    if-eqz v13, :cond_111

    .line 663
    const-string/jumbo v13, "protocolVersion"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    :cond_111
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    if-eqz v13, :cond_251

    .line 666
    const-string/jumbo v13, "signature"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string/jumbo v13, "isSignatureEdited"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 671
    :goto_12c
    const-string v13, "calendarSyncLookback"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 672
    const-string/jumbo v13, "emailsize"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 673
    const-string/jumbo v13, "roamingemailsize"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 675
    invoke-static/range {p0 .. p0}, getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 677
    .local v2, "acctUri":Landroid/net/Uri;
    if-eqz p6, :cond_267

    .line 678
    :try_start_15b
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual {v13, v2, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 681
    .local v5, "newRowUri":Landroid/net/Uri;
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_166} :catch_260

    move-result-wide v8

    .line 684
    :try_start_167
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_16c} :catch_25b

    .line 685
    .end local v11    # "values":Landroid/content/ContentValues;
    .local v12, "values":Landroid/content/ContentValues;
    :try_start_16c
    const-string v13, "accountKey"

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string/jumbo v13, "sevenAccountKey"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 687
    const-string/jumbo v13, "timeLimit"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 688
    const-string/jumbo v13, "sizeLimit"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 689
    const-string/jumbo v13, "typeMsg"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 690
    const-string/jumbo v13, "peakTime"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 691
    const-string/jumbo v13, "offPeakTime"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 692
    const-string/jumbo v13, "days"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string/jumbo v13, "peakStartTime"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string/jumbo v13, "peakEndTime"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string/jumbo v13, "whileRoaming"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 696
    const-string v13, "attachmentEnabled"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 697
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static/range {p0 .. p0}, getAccountCBContentUri(I)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1ef
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_1ef} :catch_292

    move-object v11, v12

    .line 707
    .end local v5    # "newRowUri":Landroid/net/Uri;
    .end local v12    # "values":Landroid/content/ContentValues;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :goto_1f0
    :try_start_1f0
    const-string v13, "SettingsUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "insertAccountTableRow row Id : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_209
    .catch Ljava/lang/Exception; {:try_start_1f0 .. :try_end_209} :catch_260

    .line 713
    :goto_209
    return-wide v8

    .line 604
    .end local v2    # "acctUri":Landroid/net/Uri;
    .end local v6    # "ringtoneUri":Ljava/lang/String;
    .end local v10    # "settingsFlags":I
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_20a
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    goto/16 :goto_6

    .line 614
    .restart local v6    # "ringtoneUri":Ljava/lang/String;
    .restart local v10    # "settingsFlags":I
    :cond_210
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 615
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    .line 616
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    goto/16 :goto_14

    .line 620
    :cond_21e
    const/4 v13, 0x2

    and-int/lit8 v14, v10, 0x2

    if-ne v13, v14, :cond_1d

    .line 621
    xor-int/lit8 v10, v10, 0x2

    goto/16 :goto_1d

    .line 625
    :cond_227
    const/16 v13, 0x40

    and-int/lit8 v14, v10, 0x40

    if-ne v13, v14, :cond_26

    .line 626
    xor-int/lit8 v10, v10, 0x40

    goto/16 :goto_26

    .line 634
    .restart local v11    # "values":Landroid/content/ContentValues;
    :cond_231
    const-string/jumbo v13, "displayName"

    const-string v14, " "

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 654
    :cond_23b
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    if-eqz v13, :cond_244

    const/4 v13, 0x1

    goto/16 :goto_df

    :cond_244
    const/4 v13, 0x0

    goto/16 :goto_df

    .line 659
    :cond_247
    const-string/jumbo v13, "senderName"

    const-string v14, " "

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_fb

    .line 669
    :cond_251
    const-string/jumbo v13, "signature"

    const-string v14, " "

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12c

    .line 699
    .restart local v2    # "acctUri":Landroid/net/Uri;
    .restart local v5    # "newRowUri":Landroid/net/Uri;
    :catch_25b
    move-exception v4

    .line 700
    .local v4, "e":Ljava/lang/Exception;
    :goto_25c
    :try_start_25c
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_25f
    .catch Ljava/lang/Exception; {:try_start_25c .. :try_end_25f} :catch_260

    goto :goto_1f0

    .line 708
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "newRowUri":Landroid/net/Uri;
    :catch_260
    move-exception v4

    .line 709
    .restart local v4    # "e":Ljava/lang/Exception;
    const-wide/16 v8, -0x1

    .line 710
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_209

    .line 703
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_267
    :try_start_267
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v2, v11, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 705
    .local v7, "rowCount":I
    if-lez v7, :cond_290

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I
    :try_end_28d
    .catch Ljava/lang/Exception; {:try_start_267 .. :try_end_28d} :catch_260

    :goto_28d
    int-to-long v8, v13

    goto/16 :goto_1f0

    :cond_290
    const/4 v13, -0x1

    goto :goto_28d

    .line 699
    .end local v7    # "rowCount":I
    .end local v11    # "values":Landroid/content/ContentValues;
    .restart local v5    # "newRowUri":Landroid/net/Uri;
    .restart local v12    # "values":Landroid/content/ContentValues;
    :catch_292
    move-exception v4

    move-object v11, v12

    .end local v12    # "values":Landroid/content/ContentValues;
    .restart local v11    # "values":Landroid/content/ContentValues;
    goto :goto_25c
.end method

.method private static insertAccountsTableRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    .registers 19
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "isInsertOP"    # Z
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 471
    const/4 v2, 0x0

    .line 472
    .local v2, "accountsDB":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v8, -0x1

    .line 475
    .local v8, "rowId":J
    :try_start_3
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 476
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v10, "name"

    invoke-virtual {v7, v10, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string/jumbo v10, "type"

    invoke-virtual {v7, v10, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    if-eqz p2, :cond_1e

    .line 479
    const-string/jumbo v10, "password"

    move-object/from16 v0, p2

    invoke-virtual {v7, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_1e
    invoke-static {}, makeDBpath()V

    .line 483
    sget-object v10, ACCOUNTS_DB:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 485
    if-eqz p3, :cond_77

    .line 486
    const-string v10, "accounts"

    const-string/jumbo v11, "doesn\'t exist at all"

    invoke-virtual {v2, v10, v11, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    .line 487
    const-string v10, "SettingsUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "insertAccountsTableRow  isInsertOP:   "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :cond_4d
    :goto_4d
    const-string v10, "SettingsUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "insertAccountsTableRow row Id : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_66} :catch_a4
    .catchall {:try_start_3 .. :try_end_66} :catchall_c0

    .line 502
    if-eqz v2, :cond_6b

    .line 503
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 505
    :cond_6b
    const-wide/16 v10, -0x1

    cmp-long v10, v8, v10

    if-eqz v10, :cond_76

    .line 507
    sget v10, currentUserID:I

    invoke-static {v10}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache(I)V

    .line 511
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_76
    :goto_76
    return-wide v8

    .line 490
    .restart local v7    # "values":Landroid/content/ContentValues;
    :cond_77
    :try_start_77
    move-object/from16 v0, p4

    invoke-static {p0, p1, v0}, getAccountsDBRowId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v4

    .line 491
    .local v4, "accountsDBRowId":J
    const-wide/16 v10, -0x1

    cmp-long v10, v10, v4

    if-eqz v10, :cond_4d

    .line 492
    const-string v10, "accounts"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v2, v10, v7, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_9c} :catch_a4
    .catchall {:try_start_77 .. :try_end_9c} :catchall_c0

    move-result v6

    .line 494
    .local v6, "rowCount":I
    if-lez v6, :cond_a1

    move-wide v8, v4

    :goto_a0
    goto :goto_4d

    :cond_a1
    const-wide/16 v8, -0x1

    goto :goto_a0

    .line 498
    .end local v4    # "accountsDBRowId":J
    .end local v6    # "rowCount":I
    .end local v7    # "values":Landroid/content/ContentValues;
    :catch_a4
    move-exception v3

    .line 499
    .local v3, "e":Ljava/lang/Exception;
    const-wide/16 v8, -0x1

    .line 500
    :try_start_a7
    const-string v10, "SettingsUtils"

    const-string/jumbo v11, "insertAccountsTableRow() : failed. "

    invoke-static {v10, v11, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_af
    .catchall {:try_start_a7 .. :try_end_af} :catchall_c0

    .line 502
    if-eqz v2, :cond_b4

    .line 503
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 505
    :cond_b4
    const-wide/16 v10, -0x1

    cmp-long v10, v8, v10

    if-eqz v10, :cond_76

    .line 507
    sget v10, currentUserID:I

    invoke-static {v10}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache(I)V

    goto :goto_76

    .line 502
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_c0
    move-exception v10

    if-eqz v2, :cond_c6

    .line 503
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 505
    :cond_c6
    const-wide/16 v12, -0x1

    cmp-long v11, v8, v12

    if-eqz v11, :cond_d1

    .line 507
    sget v11, currentUserID:I

    invoke-static {v11}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache(I)V

    :cond_d1
    throw v10
.end method

.method private static insertHostAuthTableRow(Landroid/net/Uri;Lcom/android/server/enterprise/email/AccountMetaData;ZZLandroid/content/Context;)J
    .registers 21
    .param p0, "hostUri"    # Landroid/net/Uri;
    .param p1, "accInfo"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p2, "isInsertOP"    # Z
    .param p3, "isHostAuthRecv"    # Z
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 718
    const-wide/16 v10, -0x1

    .line 719
    .local v10, "rowId":J
    const/4 v3, 0x0

    .line 720
    .local v3, "flags":I
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 723
    .local v9, "values":Landroid/content/ContentValues;
    if-eqz p3, :cond_fa

    .line 724
    if-eqz p2, :cond_f4

    const/4 v12, 0x4

    :goto_d
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    move-object/from16 v0, p4

    invoke-static {v12, v13, v14, v15, v0}, getHostAuthFlags(IZZZLandroid/content/Context;)I

    move-result v3

    .line 733
    :goto_1f
    const-string/jumbo v13, "protocol"

    if-eqz p3, :cond_116

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    :goto_28
    invoke-virtual {v9, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v13, "address"

    if-eqz p3, :cond_11c

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    :goto_33
    invoke-virtual {v9, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string/jumbo v13, "port"

    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v12, :cond_122

    const/4 v12, 0x0

    :goto_40
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 739
    const-string/jumbo v12, "flags"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 741
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v12, :cond_136

    .line 742
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz v12, :cond_130

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\\"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 747
    .local v6, "login":Ljava/lang/String;
    :goto_7c
    const-string/jumbo v12, "login"

    invoke-virtual {v9, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    if-eqz p3, :cond_94

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    if-eqz v12, :cond_94

    .line 749
    const-string/jumbo v12, "password"

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    :cond_94
    if-nez p3, :cond_a6

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    if-eqz v12, :cond_a6

    .line 752
    const-string/jumbo v12, "password"

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    :cond_a6
    if-eqz p3, :cond_b8

    .line 755
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    if-eqz v12, :cond_143

    .line 756
    const-string/jumbo v12, "domain"

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :cond_b8
    :goto_b8
    if-nez p3, :cond_ca

    .line 762
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    if-eqz v12, :cond_14d

    .line 763
    const-string/jumbo v12, "domain"

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_ca
    :goto_ca
    if-eqz p2, :cond_157

    .line 771
    :try_start_cc
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 772
    .local v7, "newRowUri":Landroid/net/Uri;
    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 780
    .end local v7    # "newRowUri":Landroid/net/Uri;
    :goto_da
    const-string v12, "SettingsUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "insertHostAuthTableRow row Id : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_f3} :catch_188

    .line 786
    :goto_f3
    return-wide v10

    .line 724
    .end local v6    # "login":Ljava/lang/String;
    :cond_f4
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    goto/16 :goto_d

    .line 728
    :cond_fa
    if-eqz p2, :cond_111

    const/4 v12, 0x4

    :goto_fd
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    move-object/from16 v0, p4

    invoke-static {v12, v13, v14, v15, v0}, getHostAuthFlags(IZZZLandroid/content/Context;)I

    move-result v3

    goto/16 :goto_1f

    :cond_111
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    goto :goto_fd

    .line 733
    :cond_116
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    goto/16 :goto_28

    .line 735
    :cond_11c
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    goto/16 :goto_33

    .line 737
    :cond_122
    if-eqz p3, :cond_12a

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    goto/16 :goto_40

    :cond_12a
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    goto/16 :goto_40

    .line 742
    :cond_130
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    goto/16 :goto_7c

    .line 745
    :cond_136
    if-eqz p3, :cond_13e

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .restart local v6    # "login":Ljava/lang/String;
    :goto_13c
    goto/16 :goto_7c

    .end local v6    # "login":Ljava/lang/String;
    :cond_13e
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    goto :goto_13c

    .line 758
    .restart local v6    # "login":Ljava/lang/String;
    :cond_143
    const-string/jumbo v12, "domain"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b8

    .line 765
    :cond_14d
    const-string/jumbo v12, "domain"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ca

    .line 774
    :cond_157
    if-eqz p3, :cond_180

    :try_start_159
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    .line 776
    .local v4, "existingHostAuthRowId":J
    :goto_15d
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_id = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v9, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 778
    .local v8, "rowCount":I
    if-lez v8, :cond_185

    move-wide v10, v4

    :goto_17e
    goto/16 :goto_da

    .line 774
    .end local v4    # "existingHostAuthRowId":J
    .end local v8    # "rowCount":I
    :cond_180
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_184} :catch_188

    goto :goto_15d

    .line 778
    .restart local v4    # "existingHostAuthRowId":J
    .restart local v8    # "rowCount":I
    :cond_185
    const-wide/16 v10, -0x1

    goto :goto_17e

    .line 781
    .end local v4    # "existingHostAuthRowId":J
    .end local v8    # "rowCount":I
    :catch_188
    move-exception v2

    .line 782
    .local v2, "e":Ljava/lang/Exception;
    const-wide/16 v10, -0x1

    .line 783
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f3
.end method

.method public static isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "emailAddress"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1769
    const/4 v1, 0x1

    .line 1770
    .local v1, "ret":Z
    const-string/jumbo v2, "device_account_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .line 1772
    .local v0, "dap":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    if-eqz v0, :cond_18

    invoke-static {v3, v3}, getAccountType(ZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p0, v3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1775
    const/4 v1, 0x0

    .line 1777
    :cond_18
    return v1
.end method

.method private static isExistingAccount(Landroid/net/Uri;JLandroid/content/Context;)Z
    .registers 15
    .param p0, "acctUri"    # Landroid/net/Uri;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 145
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    .line 149
    .local v2, "ID_PROJECTION":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 151
    .local v6, "c":Landroid/database/Cursor;
    :try_start_9
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 153
    if-eqz v6, :cond_53

    .line 154
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAccount row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_49} :catch_5a
    .catchall {:try_start_9 .. :try_end_49} :catchall_64

    move-result v0

    if-lez v0, :cond_53

    .line 162
    if-eqz v6, :cond_51

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_51
    move v0, v8

    .line 165
    :goto_52
    return v0

    .line 162
    :cond_53
    if-eqz v6, :cond_58

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_58
    :goto_58
    move v0, v9

    .line 165
    goto :goto_52

    .line 159
    :catch_5a
    move-exception v7

    .line 160
    .local v7, "e":Ljava/lang/Exception;
    :try_start_5b
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_64

    .line 162
    if-eqz v6, :cond_58

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_58

    .line 162
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_64
    move-exception v0

    if-eqz v6, :cond_6a

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6a
    throw v0
.end method

.method public static isPackageInstalled(Ljava/lang/String;I)Z
    .registers 10
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1748
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 1749
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1750
    .local v4, "token":J
    if-eqz v2, :cond_16

    .line 1752
    const/4 v6, 0x0

    :try_start_c
    invoke-interface {v2, p0, v6, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_1b
    .catchall {:try_start_c .. :try_end_f} :catchall_27

    move-result-object v1

    .line 1753
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_17

    .line 1754
    const/4 v3, 0x1

    .line 1761
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1764
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_16
    :goto_16
    return v3

    .line 1761
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_17
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_16

    .line 1758
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_1b
    move-exception v0

    .line 1759
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1c
    const-string v6, "SettingsUtils"

    const-string v7, "Exception in isPackageInstalled()"

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_27

    .line 1761
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_16

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_27
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public static isPersona(ILandroid/content/Context;)Z
    .registers 5
    .param p0, "userId"    # I
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 1722
    const/4 v1, 0x0

    .line 1723
    .local v1, "ret":Z
    if-eqz p0, :cond_13

    .line 1724
    const-string/jumbo v2, "persona"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 1725
    .local v0, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v0, p0}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1726
    const/4 v1, 0x1

    .line 1729
    .end local v0    # "pm":Landroid/os/PersonaManager;
    .end local v1    # "ret":Z
    :cond_13
    return v1
.end method

.method public static isSupportNewEmail()Z
    .registers 4

    .prologue
    .line 1448
    const-string v1, "com.samsung.android.email.provider"

    const/4 v2, 0x0

    invoke-static {v1, v2}, isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    .line 1449
    .local v0, "ret":Z
    const-string v1, "SettingsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSupportNewEmail() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    return v0
.end method

.method static isValidEmailAddress(Ljava/lang/String;)Z
    .registers 10
    .param p0, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 419
    const/4 v3, 0x0

    .line 420
    .local v3, "isValid":Z
    invoke-static {p0}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 421
    if-eqz p0, :cond_34

    .line 423
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 424
    .local v6, "len":I
    const/16 v7, 0x40

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 425
    .local v1, "firstAt":I
    const/16 v7, 0x40

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 426
    .local v4, "lastAt":I
    const/16 v7, 0x2e

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 427
    .local v2, "firstDot":I
    const/16 v7, 0x2e

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_24} :catch_37

    move-result v5

    .line 428
    .local v5, "lastDot":I
    if-lez v1, :cond_35

    if-ne v1, v4, :cond_35

    add-int/lit8 v7, v4, 0x1

    if-ge v7, v2, :cond_35

    if-gt v2, v5, :cond_35

    add-int/lit8 v7, v6, -0x1

    if-ge v5, v7, :cond_35

    const/4 v3, 0x1

    .line 434
    .end local v1    # "firstAt":I
    .end local v2    # "firstDot":I
    .end local v4    # "lastAt":I
    .end local v5    # "lastDot":I
    .end local v6    # "len":I
    :cond_34
    :goto_34
    return v3

    .line 428
    .restart local v1    # "firstAt":I
    .restart local v2    # "firstDot":I
    .restart local v4    # "lastAt":I
    .restart local v5    # "lastDot":I
    .restart local v6    # "len":I
    :cond_35
    const/4 v3, 0x0

    goto :goto_34

    .line 430
    .end local v1    # "firstAt":I
    .end local v2    # "firstDot":I
    .end local v4    # "lastAt":I
    .end local v5    # "lastDot":I
    .end local v6    # "len":I
    :catch_37
    move-exception v0

    .line 431
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method private static loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z
    .registers 15
    .param p0, "hostUri"    # Landroid/net/Uri;
    .param p1, "id"    # J
    .param p3, "acc"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p4, "isReceive"    # Z
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 1259
    const/4 v8, 0x0

    .line 1260
    .local v8, "ret":Z
    const/4 v6, 0x0

    .line 1262
    .local v6, "c":Landroid/database/Cursor;
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "protocol"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "address"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "port"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "flags"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string/jumbo v1, "login"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string/jumbo v1, "password"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string/jumbo v1, "domain"

    aput-object v1, v2, v0

    .line 1268
    .local v2, "ID_PROJECTION":[Ljava/lang/String;
    :try_start_34
    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1270
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadHostAuth row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_f4

    .line 1272
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1273
    if-eqz p4, :cond_100

    .line 1274
    const-string/jumbo v0, "protocol"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 1275
    const-string v0, "address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 1277
    const-string/jumbo v0, "port"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    .line 1278
    const-string/jumbo v0, "flags"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    .line 1279
    const/4 v0, 0x1

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_fa

    const/4 v0, 0x1

    :goto_b5
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    .line 1280
    const/4 v0, 0x2

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    and-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_fc

    const/4 v0, 0x1

    :goto_bf
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    .line 1281
    const/16 v0, 0x8

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    and-int/lit8 v1, v1, 0x8

    if-ne v0, v1, :cond_fe

    const/4 v0, 0x1

    :goto_ca
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 1282
    const-string/jumbo v0, "login"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 1284
    const-string/jumbo v0, "password"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 1287
    const-string/jumbo v0, "domain"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_f3} :catch_17b
    .catchall {:try_start_34 .. :try_end_f3} :catchall_18c

    .line 1306
    :goto_f3
    const/4 v8, 0x1

    .line 1311
    :cond_f4
    if-eqz v6, :cond_f9

    .line 1312
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1314
    :cond_f9
    :goto_f9
    return v8

    .line 1279
    :cond_fa
    const/4 v0, 0x0

    goto :goto_b5

    .line 1280
    :cond_fc
    const/4 v0, 0x0

    goto :goto_bf

    .line 1281
    :cond_fe
    const/4 v0, 0x0

    goto :goto_ca

    .line 1290
    :cond_100
    :try_start_100
    const-string/jumbo v0, "protocol"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 1291
    const-string v0, "address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 1293
    const-string/jumbo v0, "port"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    .line 1294
    const-string/jumbo v0, "flags"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    .line 1295
    const/4 v0, 0x1

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_186

    const/4 v0, 0x1

    :goto_13b
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 1296
    const/4 v0, 0x2

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    and-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_188

    const/4 v0, 0x1

    :goto_145
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    .line 1297
    const/16 v0, 0x8

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    and-int/lit8 v1, v1, 0x8

    if-ne v0, v1, :cond_18a

    const/4 v0, 0x1

    :goto_150
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 1298
    const-string/jumbo v0, "login"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 1300
    const-string/jumbo v0, "password"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 1303
    const-string/jumbo v0, "domain"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_179} :catch_17b
    .catchall {:try_start_100 .. :try_end_179} :catchall_18c

    goto/16 :goto_f3

    .line 1308
    :catch_17b
    move-exception v7

    .line 1309
    .local v7, "e":Ljava/lang/Exception;
    :try_start_17c
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_17f
    .catchall {:try_start_17c .. :try_end_17f} :catchall_18c

    .line 1311
    if-eqz v6, :cond_f9

    .line 1312
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_f9

    .line 1295
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_186
    const/4 v0, 0x0

    goto :goto_13b

    .line 1296
    :cond_188
    const/4 v0, 0x0

    goto :goto_145

    .line 1297
    :cond_18a
    const/4 v0, 0x0

    goto :goto_150

    .line 1311
    :catchall_18c
    move-exception v0

    if-eqz v6, :cond_192

    .line 1312
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_192
    throw v0
.end method

.method private static makeDBpath()V
    .registers 3

    .prologue
    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, currentUserID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "accounts.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, ACCOUNTS_DB:Ljava/lang/String;

    .line 465
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDBpath   ACCOUNTS_DB  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, ACCOUNTS_DB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  user id   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, currentUserID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-void
.end method

.method static declared-synchronized sendAccountsChangedBroadcast(ILandroid/content/Context;I)V
    .registers 13
    .param p0, "containerId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callingUid"    # I

    .prologue
    .line 223
    const-class v6, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v6

    :try_start_3
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9b

    move-result v4

    .line 225
    .local v4, "userID":I
    :try_start_7
    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    .line 226
    .local v2, "LOGIN_ACCOUNTS_CHANGED_ACTION":Ljava/lang/String;
    const/high16 v1, 0x10000000

    .line 227
    .local v1, "FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT":I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, "ACCOUNTS_CHANGED_INTENT":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 229
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1b} :catch_96
    .catchall {:try_start_7 .. :try_end_1b} :catchall_9b

    .line 231
    if-eqz v4, :cond_9e

    .line 232
    :try_start_1d
    invoke-static {v4, p1}, isPersona(ILandroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 233
    invoke-static {p0}, getEmailPackageName(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v5, v7, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    sput-object v5, emails:Landroid/content/Context;

    .line 234
    const-string v5, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendAccountsChangedBroadcast : USER space   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, getEmailPackageName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_50} :catch_91
    .catchall {:try_start_1d .. :try_end_50} :catchall_9b

    .line 249
    :goto_50
    :try_start_50
    sget-object v5, emails:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {p0}, getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 250
    sget-object v5, emails:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {p0}, getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_6e} :catch_96
    .catchall {:try_start_50 .. :try_end_6e} :catchall_9b

    .line 254
    .end local v0    # "ACCOUNTS_CHANGED_INTENT":Landroid/content/Intent;
    .end local v1    # "FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT":I
    .end local v2    # "LOGIN_ACCOUNTS_CHANGED_ACTION":Ljava/lang/String;
    :goto_6e
    :try_start_6e
    const-string v5, "SettingsUtils"

    const-string/jumbo v7, "sendAccountsChangedBroadcast()"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_6e .. :try_end_76} :catchall_9b

    .line 255
    :goto_76
    monitor-exit v6

    return-void

    .line 236
    .restart local v0    # "ACCOUNTS_CHANGED_INTENT":Landroid/content/Intent;
    .restart local v1    # "FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT":I
    .restart local v2    # "LOGIN_ACCOUNTS_CHANGED_ACTION":Ljava/lang/String;
    :cond_78
    :try_start_78
    invoke-static {p2}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v5, v7, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    sput-object v5, emails:Landroid/content/Context;

    .line 237
    const-string v5, "SettingsUtils"

    const-string/jumbo v7, "sendAccountsChangedBroadcast : USER space"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_90} :catch_91
    .catchall {:try_start_78 .. :try_end_90} :catchall_9b

    goto :goto_50

    .line 244
    :catch_91
    move-exception v3

    .line 245
    .local v3, "e":Ljava/lang/Exception;
    :try_start_92
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_96
    .catchall {:try_start_92 .. :try_end_95} :catchall_9b

    goto :goto_76

    .line 251
    .end local v0    # "ACCOUNTS_CHANGED_INTENT":Landroid/content/Intent;
    .end local v1    # "FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT":I
    .end local v2    # "LOGIN_ACCOUNTS_CHANGED_ACTION":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_96
    move-exception v3

    .line 252
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_97
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_9b

    goto :goto_6e

    .line 223
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "userID":I
    :catchall_9b
    move-exception v5

    monitor-exit v6

    throw v5

    .line 241
    .restart local v0    # "ACCOUNTS_CHANGED_INTENT":Landroid/content/Intent;
    .restart local v1    # "FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT":I
    .restart local v2    # "LOGIN_ACCOUNTS_CHANGED_ACTION":Ljava/lang/String;
    .restart local v4    # "userID":I
    :cond_9e
    :try_start_9e
    sput-object p1, emails:Landroid/content/Context;
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a0} :catch_91
    .catchall {:try_start_9e .. :try_end_a0} :catchall_9b

    goto :goto_50
.end method

.method static declared-synchronized setAsDefaultAccount(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Z
    .registers 23
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    const-class v14, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v14

    const/4 v6, 0x0

    .line 170
    .local v6, "success":Z
    :try_start_4
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v10

    .line 171
    .local v10, "userID":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 172
    .local v3, "containerId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_8a

    move-result-wide v8

    .line 174
    .local v8, "token":J
    if-eqz v10, :cond_87

    .line 175
    :try_start_12
    move-object/from16 v0, p3

    invoke-static {v10, v0}, isPersona(ILandroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_5e

    .line 176
    invoke-static {v3}, getEmailPackageName(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v15, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v13

    sput-object v13, emails:Landroid/content/Context;

    .line 177
    const-string v13, "SettingsUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setAsDefaultAccount for Persona : USER space   "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v3}, getEmailPackageName(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4d} :catch_81
    .catchall {:try_start_12 .. :try_end_4d} :catchall_8a

    .line 190
    :goto_4d
    const-wide/16 v16, 0x1

    cmp-long v13, v16, p1

    if-lez v13, :cond_8d

    .line 191
    :try_start_53
    const-string v13, "SettingsUtils"

    const-string/jumbo v15, "setAsDefaultAccount : accountId is invalid"

    invoke-static {v13, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_8a

    move v7, v6

    .line 219
    .end local v6    # "success":Z
    .local v7, "success":I
    :goto_5c
    monitor-exit v14

    return v7

    .line 179
    .end local v7    # "success":I
    .restart local v6    # "success":Z
    :cond_5e
    :try_start_5e
    move-object/from16 v0, p0

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v13}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v15, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v13

    sput-object v13, emails:Landroid/content/Context;

    .line 180
    const-string v13, "SettingsUtils"

    const-string/jumbo v15, "setAsDefaultAccount : USER space"

    invoke-static {v13, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_80} :catch_81
    .catchall {:try_start_5e .. :try_end_80} :catchall_8a

    goto :goto_4d

    .line 186
    :catch_81
    move-exception v5

    .line 187
    .local v5, "e":Ljava/lang/Exception;
    :try_start_82
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_8a

    move v7, v6

    .line 188
    .restart local v7    # "success":I
    goto :goto_5c

    .line 184
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "success":I
    :cond_87
    :try_start_87
    sput-object p3, emails:Landroid/content/Context;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_89} :catch_81
    .catchall {:try_start_87 .. :try_end_89} :catchall_8a

    goto :goto_4d

    .line 169
    .end local v3    # "containerId":I
    .end local v8    # "token":J
    .end local v10    # "userID":I
    :catchall_8a
    move-exception v13

    monitor-exit v14

    throw v13

    .line 195
    .restart local v3    # "containerId":I
    .restart local v8    # "token":J
    .restart local v10    # "userID":I
    :cond_8d
    :try_start_8d
    invoke-static {v3}, getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 196
    .local v2, "acctUri":Landroid/net/Uri;
    sget-object v13, emails:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1, v13}, isExistingAccount(Landroid/net/Uri;JLandroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_a5

    .line 197
    const-string v13, "SettingsUtils"

    const-string/jumbo v15, "setAsDefaultAccount : No Such Account"

    invoke-static {v13, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 198
    .restart local v7    # "success":I
    goto :goto_5c

    .line 201
    .end local v7    # "success":I
    :cond_a5
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 202
    .local v11, "values":Landroid/content/ContentValues;
    const-string/jumbo v13, "isDefault"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_b5
    .catchall {:try_start_8d .. :try_end_b5} :catchall_8a

    .line 205
    :try_start_b5
    sget-object v13, emails:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v11, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 206
    .local v4, "count":I
    const-string v13, "SettingsUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setAsDefaultAccount : row count for resetting the default column : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_e2} :catch_135
    .catchall {:try_start_b5 .. :try_end_e2} :catchall_8a

    .line 209
    .end local v11    # "values":Landroid/content/ContentValues;
    .local v12, "values":Landroid/content/ContentValues;
    :try_start_e2
    const-string/jumbo v13, "isDefault"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    sget-object v13, emails:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "_id = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p1

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v12, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 212
    const-string v13, "SettingsUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setAsDefaultAccount : row count for setting the default column : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_129} :catch_13b
    .catchall {:try_start_e2 .. :try_end_129} :catchall_8a

    .line 213
    if-lez v4, :cond_133

    const/4 v6, 0x1

    :goto_12c
    move-object v11, v12

    .line 218
    .end local v4    # "count":I
    .end local v12    # "values":Landroid/content/ContentValues;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :goto_12d
    :try_start_12d
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v6

    .line 219
    .restart local v7    # "success":I
    goto/16 :goto_5c

    .line 213
    .end local v7    # "success":I
    .end local v11    # "values":Landroid/content/ContentValues;
    .restart local v4    # "count":I
    .restart local v12    # "values":Landroid/content/ContentValues;
    :cond_133
    const/4 v6, 0x0

    goto :goto_12c

    .line 214
    .end local v4    # "count":I
    .end local v12    # "values":Landroid/content/ContentValues;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :catch_135
    move-exception v5

    .line 215
    .restart local v5    # "e":Ljava/lang/Exception;
    :goto_136
    const/4 v6, 0x0

    .line 216
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13a
    .catchall {:try_start_12d .. :try_end_13a} :catchall_8a

    goto :goto_12d

    .line 214
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v11    # "values":Landroid/content/ContentValues;
    .restart local v4    # "count":I
    .restart local v12    # "values":Landroid/content/ContentValues;
    :catch_13b
    move-exception v5

    move-object v11, v12

    .end local v12    # "values":Landroid/content/ContentValues;
    .restart local v11    # "values":Landroid/content/ContentValues;
    goto :goto_136
.end method

.method static setPackageNameForUid(ILjava/lang/String;)V
    .registers 5
    .param p0, "uid"    # I
    .param p1, "adminPkgName"    # Ljava/lang/String;

    .prologue
    .line 276
    sput p0, preCallingUid:I

    .line 277
    sput-object p1, adminPkg:Ljava/lang/String;

    .line 278
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPackageNameForUid :   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, adminPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method static setPassword(IJLjava/lang/String;Landroid/content/Context;ZZI)V
    .registers 15
    .param p0, "containerId"    # I
    .param p1, "accountId"    # J
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "isIncomingPassword"    # Z
    .param p6, "isEasAccount"    # Z
    .param p7, "userID"    # I

    .prologue
    .line 1573
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "edm.intent.action.internal.SET_EMAILACCOUNT_PASSWORD"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1574
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "account_id"

    invoke-virtual {v3, v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1575
    const-string v2, ""

    .line 1576
    .local v2, "caller":Ljava/lang/String;
    invoke-static {}, createIDforAccount()J

    move-result-wide v0

    .line 1577
    .local v0, "accID":J
    if-eqz p6, :cond_54

    .line 1579
    if-eqz p5, :cond_40

    .line 1580
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "E#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1590
    :goto_2a
    if-eqz p5, :cond_7e

    .line 1591
    const-string/jumbo v4, "user_passwd_id"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1594
    :goto_32
    invoke-static {v2, p3}, setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1595
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p7}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {p4, v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1596
    return-void

    .line 1582
    :cond_40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    .line 1585
    :cond_54
    if-eqz p5, :cond_6a

    .line 1586
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    .line 1588
    :cond_6a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "O#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    .line 1593
    :cond_7e
    const-string/jumbo v4, "outgoing_user_passwd_id"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_32
.end method

.method public static setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "caller"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1600
    if-eqz p0, :cond_5

    if-nez p1, :cond_e

    .line 1601
    :cond_5
    const-string v2, "SettingsUtils"

    const-string/jumbo v3, "setSecurityPassword() failed : invalid parameter"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    :goto_d
    return v1

    .line 1605
    :cond_e
    :try_start_e
    sget-object v2, mServerPassword:Ljava/util/Map;

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_1d

    .line 1610
    const-string v1, "SettingsUtils"

    const-string/jumbo v2, "setSecurityPassword() success"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    const/4 v1, 0x1

    goto :goto_d

    .line 1606
    :catch_1d
    move-exception v0

    .line 1607
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SettingsUtils"

    const-string/jumbo v3, "setSecurityPassword() failed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method
