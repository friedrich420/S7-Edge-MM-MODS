.class public Lcom/android/server/enterprise/email/EmailPolicy;
.super Landroid/app/enterprise/IEmailPolicy$Stub;
.source "EmailPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "EmailPolicyService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/app/enterprise/IEmailPolicy$Stub;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 79
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 80
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 81
    return-void
.end method

.method private enforceEmailPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 74
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultValueState(Ljava/lang/String;)Z
    .registers 6
    .param p1, "policy"    # Ljava/lang/String;

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "ret":Z
    if-eqz p1, :cond_2f

    .line 333
    const-string v1, "EmailAllowForward"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 334
    const/4 v0, 0x1

    .line 342
    :cond_c
    :goto_c
    const-string v1, "EmailPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDefaultValueState() : ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", policy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_2f
    return v0

    .line 335
    :cond_30
    const-string v1, "EmailAllowHTML"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 336
    const/4 v0, 0x1

    goto :goto_c

    .line 337
    :cond_3a
    const-string v1, "EmailAllowNotificationChange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 338
    const/4 v0, 0x1

    goto :goto_c

    .line 339
    :cond_44
    const-string v1, "EmailAllowSettingChange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 340
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 62
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 65
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPolicyState(ILjava/lang/String;Ljava/lang/String;I)Z
    .registers 16
    .param p1, "containerId"    # I
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "policy"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 283
    invoke-direct {p0, p3}, getDefaultValueState(Ljava/lang/String;)Z

    move-result v7

    .line 284
    .local v7, "ret":Z
    if-nez v7, :cond_20

    const/4 v5, 0x1

    .line 286
    .local v5, "restricterState":Z
    :goto_7
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_17

    if-eqz p3, :cond_17

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_22

    .line 287
    :cond_17
    const-string v8, "EmailPolicyService"

    const-string/jumbo v9, "getPolicyState() : Invalid entry"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .end local v7    # "ret":Z
    :cond_1f
    :goto_1f
    return v7

    .line 284
    .end local v5    # "restricterState":Z
    .restart local v7    # "ret":Z
    :cond_20
    const/4 v5, 0x0

    goto :goto_7

    .line 291
    .restart local v5    # "restricterState":Z
    :cond_22
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_31

    .line 292
    const-string v8, "EmailPolicyService"

    const-string/jumbo v9, "getPolicyState() : Invalid entry"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 296
    :cond_31
    const/4 v8, 0x1

    new-array v0, v8, [Ljava/lang/String;

    .line 297
    .local v0, "columns":[Ljava/lang/String;
    const/4 v8, 0x0

    aput-object p3, v0, v8

    .line 299
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 300
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string v8, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    const-string v8, "EmailAddress"

    invoke-virtual {v2, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string/jumbo v8, "userID"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    const/4 v6, 0x0

    .line 305
    .local v6, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :try_start_55
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "EmailSettingsTable"

    invoke-virtual {v8, v9, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5c} :catch_cf

    move-result-object v6

    .line 312
    if-eqz v6, :cond_1f

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1f

    .line 315
    const-string v8, "EmailPolicyService"

    const-string/jumbo v9, "getPolicyState() : keep going check result. "

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 319
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_71
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_dd

    .line 320
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 321
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-virtual {v1, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v5, :cond_da

    const-string v8, "1"

    :goto_85
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_71

    .line 322
    const-string v8, "EmailPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getPolicyState() ret = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , containerId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , emailAddress = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , policy = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , userId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v5

    .line 323
    goto/16 :goto_1f

    .line 307
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :catch_cf
    move-exception v3

    .line 308
    .local v3, "ex":Ljava/lang/Exception;
    const-string v8, "EmailPolicyService"

    const-string/jumbo v9, "getPolicyState() : Exception while getValuesList from EDMStorageProvider"

    invoke-static {v8, v9, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 321
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_da
    const-string v8, "0"

    goto :goto_85

    .line 326
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_dd
    const-string v9, "EmailPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getPolicyState() : ret = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v5, :cond_ff

    const/4 v8, 0x1

    :goto_ee
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    if-nez v5, :cond_101

    const/4 v8, 0x1

    :goto_fc
    move v7, v8

    goto/16 :goto_1f

    .line 326
    :cond_ff
    const/4 v8, 0x0

    goto :goto_ee

    .line 327
    :cond_101
    const/4 v8, 0x0

    goto :goto_fc
.end method

.method private putPolicyState(IILjava/lang/String;ZLjava/lang/String;)Z
    .registers 13
    .param p1, "admin"    # I
    .param p2, "containerId"    # I
    .param p3, "emailAddress"    # Ljava/lang/String;
    .param p4, "state"    # Z
    .param p5, "policy"    # Ljava/lang/String;

    .prologue
    .line 253
    const/4 v2, 0x0

    .line 254
    .local v2, "ret":Z
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 255
    :cond_9
    const-string v4, "EmailPolicyService"

    const-string/jumbo v5, "putPolicyState: Invalid entry"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 278
    .end local v2    # "ret":Z
    .local v3, "ret":I
    :goto_12
    return v3

    .line 259
    .end local v3    # "ret":I
    .restart local v2    # "ret":Z
    :cond_13
    invoke-static {p3}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 260
    const-string v4, "EmailPolicyService"

    const-string/jumbo v5, "putPolicyState: Invalid entry"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 261
    .restart local v3    # "ret":I
    goto :goto_12

    .line 264
    .end local v3    # "ret":I
    :cond_23
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 265
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 266
    const-string v4, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    const-string v4, "EmailAddress"

    invoke-virtual {v0, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    if-eqz p4, :cond_d1

    const-string v4, "1"

    :goto_43
    invoke-virtual {v0, p5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 271
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    const-string v4, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 273
    const-string v4, "EmailAddress"

    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "EmailSettingsTable"

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 276
    const-string v4, "EmailPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "putPolicyState() : ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v4, "EmailPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "putPolicyState() ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , admin = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , containerId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , emailAddress = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , policy = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 278
    .restart local v3    # "ret":I
    goto/16 :goto_12

    .line 268
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "ret":I
    :cond_d1
    const-string v4, "0"

    goto/16 :goto_43
.end method


# virtual methods
.method public allowAccountAddition(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allowed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 85
    invoke-direct {p0, p1}, enforceEmailPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 86
    const/4 v5, 0x0

    .line 88
    .local v5, "result":Z
    const/4 v9, 0x1

    :try_start_8
    new-array v4, v9, [B

    .line 89
    .local v4, "refObj":[B
    const/4 v9, 0x0

    if-eqz p2, :cond_6c

    :goto_d
    int-to-byte v7, v7

    aput-byte v7, v4, v9

    .line 90
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 91
    .local v0, "cvValues":Landroid/content/ContentValues;
    const-string/jumbo v7, "policyName"

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v7, "accountObject"

    invoke-virtual {v0, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 93
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v10, "ADMIN_REF"

    invoke-virtual {v7, v8, v9, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v5

    .line 94
    const-string v7, "EmailPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "allowAccountAddition: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4a} :catch_6e

    .line 98
    .end local v0    # "cvValues":Landroid/content/ContentValues;
    .end local v4    # "refObj":[B
    :goto_4a
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 99
    .local v6, "userId":I
    if-eqz v5, :cond_6b

    if-nez v6, :cond_6b

    .line 100
    new-instance v3, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 102
    .local v3, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_59
    const-string v7, "Email"

    const-string v8, "allowAccountAddition"

    invoke-virtual {p0, p1}, isAccountAdditionAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v9

    invoke-virtual {v3, v7, v8, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 103
    const-string v7, "EmailPolicyService"

    const-string v8, "allowAccountAddition calling gearPolicyManager  "

    invoke-static {v7, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_6b} :catch_77

    .line 108
    .end local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_6b
    :goto_6b
    return v5

    .end local v6    # "userId":I
    .restart local v4    # "refObj":[B
    :cond_6c
    move v7, v8

    .line 89
    goto :goto_d

    .line 95
    .end local v4    # "refObj":[B
    :catch_6e
    move-exception v2

    .line 96
    .local v2, "ex":Ljava/lang/Exception;
    const-string v7, "EmailPolicyService"

    const-string v8, "Exception in allowAccountAddition"

    invoke-static {v7, v8, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4a

    .line 104
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v6    # "userId":I
    :catch_77
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6b
.end method

.method public allowEmailSettingsChange(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v0, 0x0

    .line 425
    invoke-direct {p0, p1}, enforceEmailPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 426
    const/4 v9, 0x0

    .line 427
    .local v9, "ret":Z
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 428
    .local v2, "containerId":I
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v3, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v6

    .line 429
    .local v6, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v6, :cond_2b

    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 431
    iget-boolean v3, v6, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v3, :cond_7c

    .line 434
    :try_start_1a
    const-string/jumbo v3, "eas_account_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IExchangeAccountPolicy;

    move-result-object v8

    .line 435
    .local v8, "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    if-eqz v8, :cond_70

    invoke-interface {v8, p1, p3, p4, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->allowEmailSettingsChange(Landroid/app/enterprise/ContextInfo;JZ)Z
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2a} :catch_72

    move-result v9

    .line 447
    .end local v8    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :cond_2b
    :goto_2b
    const-string v0, "EmailPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowEmailSettingsChange() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v0, "EmailPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowEmailSettingsChange() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , allow = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , accId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return v9

    .restart local v8    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :cond_70
    move v9, v0

    .line 435
    goto :goto_2b

    .line 436
    .end local v8    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :catch_72
    move-exception v7

    .line 437
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "EmailPolicyService"

    const-string v3, "Failed talking with exchange account policy"

    invoke-static {v0, v3, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 438
    const/4 v9, 0x0

    .line 439
    goto :goto_2b

    .line 443
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_7c
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 444
    .local v1, "adminUid":I
    iget-object v3, v6, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string v5, "EmailAllowSettingChange"

    move-object v0, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, putPolicyState(IILjava/lang/String;ZLjava/lang/String;)Z

    move-result v9

    goto :goto_2b
.end method

.method public allowPopImapEmail(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allowed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 147
    invoke-direct {p0, p1}, enforceEmailPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 148
    const/4 v3, 0x0

    .line 150
    .local v3, "result":Z
    const/4 v6, 0x1

    :try_start_8
    new-array v2, v6, [B

    .line 151
    .local v2, "refObj":[B
    const/4 v6, 0x0

    if-eqz p2, :cond_69

    :goto_d
    int-to-byte v4, v4

    aput-byte v4, v2, v6

    .line 152
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 153
    .local v0, "cvValues":Landroid/content/ContentValues;
    const-string/jumbo v4, "policyName"

    const-string v5, "allowPopImapEmail"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v4, "accountObject"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 155
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v7, "ADMIN_REF"

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2d} :catch_6b

    move-result v3

    .line 160
    .end local v0    # "cvValues":Landroid/content/ContentValues;
    .end local v2    # "refObj":[B
    :goto_2e
    const-string v4, "EmailPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allowPopImapEmail() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v4, "EmailPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allowPopImapEmail() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , allowed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v3

    .restart local v2    # "refObj":[B
    :cond_69
    move v4, v5

    .line 151
    goto :goto_d

    .line 157
    .end local v2    # "refObj":[B
    :catch_6b
    move-exception v1

    .line 158
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "EmailPolicyService"

    const-string v5, "allowPopImapEmail() : failed."

    invoke-static {v4, v5, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e
.end method

.method public getAllowEmailForwarding(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 218
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v2, "EmailAllowForward"

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    invoke-direct {p0, v1, p2, v2, v3}, getPolicyState(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 219
    .local v0, "ret":Z
    const-string v1, "EmailPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAllowEmailForwarding() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v1, "EmailPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAllowEmailForwarding() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , emailAddress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return v0
.end method

.method public getAllowHTMLEmail(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 245
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v2, "EmailAllowHTML"

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    invoke-direct {p0, v1, p2, v2, v3}, getPolicyState(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 246
    .local v0, "ret":Z
    const-string v1, "EmailPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAllowHTMLEmail() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v1, "EmailPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAllowHTMLEmail() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , emailAddress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return v0
.end method

.method public isAccountAdditionAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 113
    const/4 v5, 0x1

    .line 114
    .local v5, "result":Z
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 115
    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 118
    .local v7, "userID":I
    :try_start_7
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 119
    .local v2, "cvValues":Landroid/content/ContentValues;
    invoke-static {v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "#SelectClause#"

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string/jumbo v8, "policyName"

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "ADMIN_REF"

    const-string v10, "accountObject"

    invoke-virtual {v8, v9, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlobList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .line 124
    .local v6, "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz v6, :cond_33

    .line 125
    const-string v8, "EmailPolicyService"

    const-string/jumbo v9, "isAccountAdditionAllowed:  resultList not null"

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_33
    if-eqz v6, :cond_4e

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4e

    .line 128
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3c
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_4e

    .line 129
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 130
    .local v0, "b":[B
    const/4 v8, 0x0

    aget-byte v8, v0, v8
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4b} :catch_8e

    if-nez v8, :cond_8b

    .line 131
    const/4 v5, 0x0

    .line 140
    .end local v0    # "b":[B
    .end local v2    # "cvValues":Landroid/content/ContentValues;
    .end local v4    # "i":I
    .end local v6    # "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_4e
    :goto_4e
    const-string v8, "EmailPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isAccountAdditionAllowed() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v8, "EmailPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isAccountAdditionAllowed() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , userId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return v5

    .line 128
    .restart local v0    # "b":[B
    .restart local v2    # "cvValues":Landroid/content/ContentValues;
    .restart local v4    # "i":I
    .restart local v6    # "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_8b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 137
    .end local v0    # "b":[B
    .end local v2    # "cvValues":Landroid/content/ContentValues;
    .end local v4    # "i":I
    .end local v6    # "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :catch_8e
    move-exception v3

    .line 138
    .local v3, "ex":Ljava/lang/Exception;
    const-string v8, "EmailPolicyService"

    const-string/jumbo v9, "isAccountAdditionAllowed() : Exception in isAccountAdditionAllowed"

    invoke-static {v8, v9, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4e
.end method

.method public isEmailNotificationsEnabled(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 399
    const/4 v4, 0x1

    .line 400
    .local v4, "ret":Z
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 401
    .local v1, "containerId":I
    iget-object v6, p0, mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {p1, p2, p3, v6, v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 402
    .local v0, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v0, :cond_27

    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    if-eqz v6, :cond_27

    .line 404
    iget-boolean v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v6, :cond_70

    .line 407
    :try_start_16
    const-string/jumbo v6, "eas_account_policy"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IExchangeAccountPolicy;

    move-result-object v3

    .line 408
    .local v3, "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    if-eqz v3, :cond_64

    invoke-interface {v3, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->isEmailNotificationsEnabled(Landroid/app/enterprise/ContextInfo;J)Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_26} :catch_66

    move-result v4

    .line 419
    .end local v3    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :cond_27
    :goto_27
    const-string v6, "EmailPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isEmailNotificationsEnabled() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v6, "EmailPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isEmailNotificationsEnabled() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , accId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return v4

    .line 408
    .restart local v3    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :cond_64
    const/4 v4, 0x1

    goto :goto_27

    .line 409
    .end local v3    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :catch_66
    move-exception v2

    .line 410
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v6, "EmailPolicyService"

    const-string v7, "Failed talking with exchange account policy"

    invoke-static {v6, v7, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    const/4 v4, 0x1

    .line 412
    goto :goto_27

    .line 415
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_70
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 416
    .local v5, "userID":I
    iget-object v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string v7, "EmailAllowNotificationChange"

    invoke-direct {p0, v1, v6, v7, v5}, getPolicyState(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    goto :goto_27
.end method

.method public isEmailSettingsChangeAllowed(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 453
    const/4 v4, 0x1

    .line 454
    .local v4, "ret":Z
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 455
    .local v1, "containerId":I
    iget-object v6, p0, mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {p1, p2, p3, v6, v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 456
    .local v0, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v0, :cond_27

    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    if-eqz v6, :cond_27

    .line 458
    iget-boolean v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v6, :cond_70

    .line 461
    :try_start_16
    const-string/jumbo v6, "eas_account_policy"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IExchangeAccountPolicy;

    move-result-object v3

    .line 462
    .local v3, "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    if-eqz v3, :cond_64

    invoke-interface {v3, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->isEmailSettingsChangeAllowed(Landroid/app/enterprise/ContextInfo;J)Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_26} :catch_66

    move-result v4

    .line 474
    .end local v3    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :cond_27
    :goto_27
    const-string v6, "EmailPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isEmailSettingsChangeAllowed() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v6, "EmailPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isEmailSettingsChangeAllowed() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , accId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return v4

    .line 462
    .restart local v3    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :cond_64
    const/4 v4, 0x1

    goto :goto_27

    .line 463
    .end local v3    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :catch_66
    move-exception v2

    .line 464
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "EmailPolicyService"

    const-string v7, "Failed talking with exchange account policy"

    invoke-static {v6, v7, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 465
    const/4 v4, 0x1

    .line 466
    goto :goto_27

    .line 470
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_70
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 471
    .local v5, "userID":I
    iget-object v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string v7, "EmailAllowSettingChange"

    invoke-direct {p0, v1, v6, v7, v5}, getPolicyState(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    goto :goto_27
.end method

.method public isPopImapEmailAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 168
    const/4 v5, 0x1

    .line 169
    .local v5, "result":Z
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 170
    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 173
    .local v7, "userID":I
    :try_start_7
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 174
    .local v2, "cvValues":Landroid/content/ContentValues;
    invoke-static {v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "#SelectClause#"

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string/jumbo v8, "policyName"

    const-string v9, "allowPopImapEmail"

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "ADMIN_REF"

    const-string v10, "accountObject"

    invoke-virtual {v8, v9, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlobList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .line 179
    .local v6, "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz v6, :cond_42

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_42

    .line 180
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_30
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_42

    .line 181
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 182
    .local v0, "b":[B
    const/4 v8, 0x0

    aget-byte v8, v0, v8
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3f} :catch_5f

    if-nez v8, :cond_5c

    .line 183
    const/4 v5, 0x0

    .line 192
    .end local v0    # "b":[B
    .end local v2    # "cvValues":Landroid/content/ContentValues;
    .end local v4    # "i":I
    .end local v6    # "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_42
    :goto_42
    const-string v8, "EmailPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isPopImapEmailAllowed() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return v5

    .line 180
    .restart local v0    # "b":[B
    .restart local v2    # "cvValues":Landroid/content/ContentValues;
    .restart local v4    # "i":I
    .restart local v6    # "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_5c
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 188
    .end local v0    # "b":[B
    .end local v2    # "cvValues":Landroid/content/ContentValues;
    .end local v4    # "i":I
    .end local v6    # "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :catch_5f
    move-exception v3

    .line 189
    .local v3, "ex":Ljava/lang/Exception;
    const-string v8, "EmailPolicyService"

    const-string v9, "Exception in isPopImapEmailAllowed"

    invoke-static {v8, v9, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_42
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 357
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 369
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 363
    return-void
.end method

.method public setAllowEmailForwarding(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "allow"    # Z

    .prologue
    .line 198
    invoke-direct {p0, p1}, enforceEmailPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 199
    const/4 v8, 0x0

    .line 200
    .local v8, "ret":Z
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v5, "EmailAllowForward"

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, putPolicyState(IILjava/lang/String;ZLjava/lang/String;)Z

    move-result v8

    .line 202
    const-string v0, "EmailPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAllowEmailForwarding() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v0, "EmailPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAllowEmailForwarding() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , emailAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , allow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 205
    .local v9, "userId":I
    if-eqz v8, :cond_7b

    if-nez v9, :cond_7b

    .line 206
    new-instance v7, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 208
    .local v7, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_67
    const-string v0, "Email"

    const-string/jumbo v1, "setAllowEmailForwarding"

    invoke-virtual {p0, p1, p2}, getAllowEmailForwarding(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v7, v0, v1, p2, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringAndBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 209
    const-string v0, "EmailPolicyService"

    const-string/jumbo v1, "setAllowEmailForwarding calling gearPolicyManager  "

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_7b} :catch_7c

    .line 214
    .end local v7    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_7b
    :goto_7b
    return v8

    .line 210
    .restart local v7    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_7c
    move-exception v6

    .line 211
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7b
.end method

.method public setAllowHTMLEmail(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "allow"    # Z

    .prologue
    .line 225
    invoke-direct {p0, p1}, enforceEmailPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 226
    const/4 v8, 0x0

    .line 227
    .local v8, "ret":Z
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v5, "EmailAllowHTML"

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, putPolicyState(IILjava/lang/String;ZLjava/lang/String;)Z

    move-result v8

    .line 229
    const-string v0, "EmailPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAllowHTMLEmail() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v0, "EmailPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAllowHTMLEmail() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , emailAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , allow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 232
    .local v9, "userId":I
    if-eqz v8, :cond_7b

    if-nez v9, :cond_7b

    .line 233
    new-instance v7, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 235
    .local v7, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_67
    const-string v0, "Email"

    const-string/jumbo v1, "setAllowHTMLEmail"

    invoke-virtual {p0, p1, p2}, getAllowHTMLEmail(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v7, v0, v1, p2, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringAndBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 236
    const-string v0, "EmailPolicyService"

    const-string/jumbo v1, "setAllowHTMLEmail calling gearPolicyManager  "

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_7b} :catch_7c

    .line 241
    .end local v7    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_7b
    :goto_7b
    return v8

    .line 237
    .restart local v7    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_7c
    move-exception v6

    .line 238
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7b
.end method

.method public setEmailNotificationsState(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v0, 0x0

    .line 371
    invoke-direct {p0, p1}, enforceEmailPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 372
    const/4 v9, 0x0

    .line 373
    .local v9, "ret":Z
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 374
    .local v2, "containerId":I
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v3, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v6

    .line 375
    .local v6, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v6, :cond_2b

    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 377
    iget-boolean v3, v6, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v3, :cond_7e

    .line 380
    :try_start_1a
    const-string/jumbo v3, "eas_account_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IExchangeAccountPolicy;

    move-result-object v8

    .line 381
    .local v8, "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    if-eqz v8, :cond_72

    invoke-interface {v8, p1, p3, p4, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->setEmailNotificationsState(Landroid/app/enterprise/ContextInfo;JZ)Z
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2a} :catch_74

    move-result v9

    .line 393
    .end local v8    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :cond_2b
    :goto_2b
    const-string v0, "EmailPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEmailNotificationsState() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v0, "EmailPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEmailNotificationsState() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , accId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return v9

    .restart local v8    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :cond_72
    move v9, v0

    .line 381
    goto :goto_2b

    .line 382
    .end local v8    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :catch_74
    move-exception v7

    .line 383
    .local v7, "ex":Landroid/os/RemoteException;
    const-string v0, "EmailPolicyService"

    const-string v3, "Failed talking with exchange account policy"

    invoke-static {v0, v3, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    const/4 v9, 0x0

    .line 385
    goto :goto_2b

    .line 389
    .end local v7    # "ex":Landroid/os/RemoteException;
    :cond_7e
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 390
    .local v1, "adminUid":I
    iget-object v3, v6, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string v5, "EmailAllowNotificationChange"

    move-object v0, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, putPolicyState(IILjava/lang/String;ZLjava/lang/String;)Z

    move-result v9

    goto :goto_2b
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 351
    return-void
.end method
