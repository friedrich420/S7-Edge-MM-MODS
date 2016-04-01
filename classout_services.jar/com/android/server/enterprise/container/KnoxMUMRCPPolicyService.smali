.class public Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
.super Lcom/sec/enterprise/knox/container/IRCPPolicy$Stub;
.source "KnoxMUMRCPPolicyService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "KnoxMUMRCPPolicyService"

.field private static final isEngMode:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 74
    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, isEngMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Lcom/sec/enterprise/knox/container/IRCPPolicy$Stub;-><init>()V

    .line 72
    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 73
    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 77
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 78
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 79
    return-void
.end method

.method private enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSystemUid()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 99
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not a system service. This API only allowed by SYSTEM_UID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_10
    return-void
.end method

.method private final getDefaultRCPPolicy(ILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "userId"    # I
    .param p2, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 175
    .local v1, "personaManager":Landroid/os/PersonaManager;
    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v0

    .line 176
    .local v0, "isPersona":Z
    const-string/jumbo v2, "knox-import-data"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 177
    const-string/jumbo v2, "true"

    .line 199
    :goto_1b
    return-object v2

    .line 178
    :cond_1c
    const-string/jumbo v2, "knox-export-data"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 179
    if-eqz v0, :cond_2b

    .line 180
    const-string/jumbo v2, "false"

    goto :goto_1b

    .line 182
    :cond_2b
    const-string/jumbo v2, "true"

    goto :goto_1b

    .line 184
    :cond_2f
    const-string/jumbo v2, "knox-sanitize-data"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 185
    if-eqz v0, :cond_3e

    .line 186
    const-string/jumbo v2, "false"

    goto :goto_1b

    .line 188
    :cond_3e
    const-string/jumbo v2, "true"

    goto :goto_1b

    .line 191
    :cond_42
    const-string/jumbo v2, "knox-sanitize-data-lockscreen"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 192
    if-eqz v0, :cond_51

    .line 193
    const-string/jumbo v2, "false"

    goto :goto_1b

    .line 195
    :cond_51
    const-string/jumbo v2, "true"

    goto :goto_1b

    .line 199
    :cond_55
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 83
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 86
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getListFromSyncPolicy(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 233
    const-string v6, "com.sec.enterprise.knox.permission.KNOX_RCP_SYNC_MGMT"

    invoke-direct {p0, p1, v6}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 234
    sget-boolean v6, isEngMode:Z

    if-eqz v6, :cond_25

    .line 235
    const-string v6, "KnoxMUMRCPPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "admin uid from context info: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_25
    if-eqz p3, :cond_35

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_35

    if-eqz p4, :cond_35

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 256
    :cond_35
    return-object v4

    .line 241
    :cond_36
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "name"

    aput-object v7, v0, v6

    .line 243
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 244
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v6, "adminUid"

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    const-string/jumbo v6, "propertyName"

    invoke-virtual {v1, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string/jumbo v6, "propertyValue"

    invoke-virtual {v1, v6, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, p2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 249
    .local v3, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_35

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_35

    .line 250
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v4, "providerStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_72
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 252
    .local v5, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "name"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_72
.end method

.method private getPropertyValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "property"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 204
    invoke-direct {p0}, enforceSystemUid()V

    .line 206
    if-eqz p3, :cond_17

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_17

    if-eqz p4, :cond_17

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_17

    if-nez p2, :cond_18

    .line 229
    :cond_17
    :goto_17
    return-object v6

    .line 210
    :cond_18
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 211
    .local v0, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_17

    .line 215
    const/4 v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v6, "propertyValue"

    aput-object v6, v1, v8

    .line 218
    .local v1, "columns":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 219
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "name"

    invoke-virtual {v2, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string/jumbo v6, "propertyName"

    invoke-virtual {v2, v6, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_70

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 222
    .local v5, "uid":Ljava/lang/Long;
    const-string v6, "adminUid"

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 223
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 225
    .local v4, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_43

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_43

    .line 226
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string/jumbo v7, "propertyValue"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_17

    .line 229
    .end local v4    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v5    # "uid":Ljava/lang/Long;
    :cond_70
    invoke-direct {p0, p2, p4}, getDefaultRCPPolicy(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_17
.end method

.method private setRCPSyncPolicy(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 27
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "table"    # Ljava/lang/String;
    .param p4, "property"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 104
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v18, "KnoxMUMRCPPolicyService"

    const-string/jumbo v19, "setRCPSyncPolicy"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v18, "com.sec.enterprise.knox.permission.KNOX_RCP_SYNC_MGMT"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v11

    .line 107
    .local v11, "lCtxInfo":Landroid/app/enterprise/ContextInfo;
    if-eqz p3, :cond_2c

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_2c

    if-eqz p4, :cond_2c

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_2c

    if-eqz p5, :cond_2c

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_36

    .line 109
    :cond_2c
    const-string v18, "KnoxMUMRCPPolicyService"

    const-string/jumbo v19, "setRCPSyncPolicy: bad arguments"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v13, 0x0

    .line 170
    :cond_35
    :goto_35
    return v13

    .line 112
    :cond_36
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, ""

    aput-object v20, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 113
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_65

    .line 114
    const-string v18, "KnoxMUMRCPPolicyService"

    const-string/jumbo v19, "setRCPSyncPolicy: bad arguments after filtering.."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v13, 0x0

    goto :goto_35

    .line 117
    :cond_65
    const/4 v13, 0x0

    .line 118
    .local v13, "result":Z
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 119
    .local v15, "where":Landroid/content/ContentValues;
    const-string v18, "adminUid"

    iget v0, v11, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    const-string/jumbo v18, "propertyName"

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v4, "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/TreeSet;

    move-object/from16 v0, p3

    invoke-direct {v14, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 124
    .local v14, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_96
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_e0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 125
    .local v10, "item":Ljava/lang/String;
    const-string/jumbo v18, "name"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v5

    .line 128
    .local v5, "count":I
    if-lez v5, :cond_1bf

    .line 130
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 131
    .local v7, "cv":Landroid/content/ContentValues;
    const-string/jumbo v18, "propertyValue"

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v7, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v13

    .line 139
    .end local v7    # "cv":Landroid/content/ContentValues;
    :goto_d7
    if-nez v13, :cond_1d9

    .line 140
    const-string v18, "KnoxMUMRCPPolicyService"

    const-string v19, "Setting RCP data sync policy failed."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v5    # "count":I
    .end local v10    # "item":Ljava/lang/String;
    :cond_e0
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_35

    .line 150
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v8, "i":Landroid/content/Intent;
    const-string/jumbo v18, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v12, "policyChangedBundle":Landroid/os/Bundle;
    const-string/jumbo v18, "personaId"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    const-string/jumbo v18, "syncerList"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 155
    const-string/jumbo v18, "policyName"

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string/jumbo v18, "policyValue"

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string/jumbo v18, "policyChangedBundle"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 158
    sget-boolean v18, isEngMode:Z

    if-eqz v18, :cond_1a0

    .line 159
    const-string v18, "KnoxMUMRCPPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Intent data personaId: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v18, "KnoxMUMRCPPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Intent data syncerList: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v18, "KnoxMUMRCPPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Intent data policyName: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v18, "KnoxMUMRCPPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Intent data policyValue: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_1a0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 166
    .local v16, "token":J
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 167
    .local v6, "currentUser":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 168
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_35

    .line 135
    .end local v6    # "currentUser":Landroid/os/UserHandle;
    .end local v8    # "i":Landroid/content/Intent;
    .end local v12    # "policyChangedBundle":Landroid/os/Bundle;
    .end local v16    # "token":J
    .restart local v5    # "count":I
    .restart local v10    # "item":Ljava/lang/String;
    :cond_1bf
    const-string/jumbo v18, "propertyValue"

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v13

    goto/16 :goto_d7

    .line 144
    :cond_1d9
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    const-string v18, "KnoxMUMRCPPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Array list populated with: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_96
.end method


# virtual methods
.method public allowMoveAppsToContainer(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "value"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 514
    const-string v8, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v8}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 515
    if-eqz p1, :cond_b6

    .line 516
    const/4 v4, 0x0

    .line 517
    .local v4, "result":Z
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 518
    .local v5, "where":Landroid/content/ContentValues;
    const-string v8, "cid"

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 519
    const-string v8, "adminUid"

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 520
    const-string/jumbo v8, "propertyName"

    const-string v11, "EnforceMoveAppsToContainer"

    invoke-virtual {v5, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    sget-boolean v8, isEngMode:Z

    if-eqz v8, :cond_5e

    .line 522
    const-string v8, "KnoxMUMRCPPolicyService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setEnforceAuthForContainer: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " EnforceMoveAppsToContainer"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_5e
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "CONTAINER_POLICY"

    invoke-virtual {v8, v11, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 526
    .local v1, "count":I
    const-string v11, "KnoxMUMRCPPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setEnforceAuthForContainer: already row present ? "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-lez v1, :cond_b7

    move v8, v9

    :goto_77
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    if-lez v1, :cond_b9

    .line 529
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 530
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v8, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v2, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 531
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "CONTAINER_POLICY"

    invoke-virtual {v8, v11, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v4

    .line 538
    .end local v2    # "cv":Landroid/content/ContentValues;
    :goto_9b
    if-nez v4, :cond_cc

    .line 539
    const-string v8, "KnoxMUMRCPPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setEnforceAuthForContainer failed : result = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    .end local v1    # "count":I
    .end local v4    # "result":Z
    .end local v5    # "where":Landroid/content/ContentValues;
    :cond_b6
    :goto_b6
    return v10

    .restart local v1    # "count":I
    .restart local v4    # "result":Z
    .restart local v5    # "where":Landroid/content/ContentValues;
    :cond_b7
    move v8, v10

    .line 526
    goto :goto_77

    .line 534
    :cond_b9
    const-string/jumbo v8, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v5, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 535
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "CONTAINER_POLICY"

    invoke-virtual {v8, v11, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    goto :goto_9b

    .line 543
    :cond_cc
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 544
    .local v3, "i":Landroid/content/Intent;
    const-string/jumbo v8, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 546
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "personaId"

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 547
    const-string/jumbo v8, "policyName"

    const-string v10, "EnforceMoveAppsToContainer"

    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string/jumbo v8, "policyValue"

    invoke-virtual {v0, v8, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 549
    const-string v8, "MoveAppsToContainerBundle"

    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 550
    sget-boolean v8, isEngMode:Z

    if-eqz v8, :cond_134

    .line 551
    const-string v8, "KnoxMUMRCPPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Intent data personaId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string v8, "KnoxMUMRCPPolicyService"

    const-string v10, "Intent data policyName: EnforceMoveAppsToContainer"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const-string v8, "KnoxMUMRCPPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Intent data policyValue: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_134
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 557
    .local v6, "token":J
    iget-object v8, p0, mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v3, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 558
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v10, v9

    .line 559
    goto/16 :goto_b6
.end method

.method public allowMoveFilesToContainer(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "value"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 360
    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v4}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 361
    if-eqz p1, :cond_b3

    .line 362
    const/4 v2, 0x0

    .line 363
    .local v2, "result":Z
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 364
    .local v3, "where":Landroid/content/ContentValues;
    const-string v4, "cid"

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 365
    const-string v4, "adminUid"

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    const-string/jumbo v4, "propertyName"

    const-string v7, "EnforceMoveFilesToContainer"

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    sget-boolean v4, isEngMode:Z

    if-eqz v4, :cond_5d

    .line 368
    const-string v4, "KnoxMUMRCPPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allowMoveFilesToContainer: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " EnforceMoveFilesToContainer"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_5d
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CONTAINER_POLICY"

    invoke-virtual {v4, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 372
    .local v0, "count":I
    const-string v7, "KnoxMUMRCPPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allowMoveFilesToContainer: already row present ? "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-lez v0, :cond_b4

    move v4, v5

    :goto_75
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    if-lez v0, :cond_b6

    .line 375
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 376
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 377
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CONTAINER_POLICY"

    invoke-virtual {v4, v7, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 384
    .end local v1    # "cv":Landroid/content/ContentValues;
    :goto_99
    if-nez v2, :cond_c9

    .line 385
    const-string v4, "KnoxMUMRCPPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allowMoveFilesToContainer failed : result = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v0    # "count":I
    .end local v2    # "result":Z
    .end local v3    # "where":Landroid/content/ContentValues;
    :cond_b3
    :goto_b3
    return v6

    .restart local v0    # "count":I
    .restart local v2    # "result":Z
    .restart local v3    # "where":Landroid/content/ContentValues;
    :cond_b4
    move v4, v6

    .line 372
    goto :goto_75

    .line 380
    :cond_b6
    const-string/jumbo v4, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 381
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CONTAINER_POLICY"

    invoke-virtual {v4, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    goto :goto_99

    :cond_c9
    move v6, v5

    .line 388
    goto :goto_b3
.end method

.method public allowMoveFilesToOwner(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "value"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 437
    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v4}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 438
    if-eqz p1, :cond_b3

    .line 439
    const/4 v2, 0x0

    .line 440
    .local v2, "result":Z
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 441
    .local v3, "where":Landroid/content/ContentValues;
    const-string v4, "cid"

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 442
    const-string v4, "adminUid"

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 443
    const-string/jumbo v4, "propertyName"

    const-string v7, "EnforceMoveFilesToOwner"

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    sget-boolean v4, isEngMode:Z

    if-eqz v4, :cond_5d

    .line 445
    const-string v4, "KnoxMUMRCPPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allowMoveFilesToOwner: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " EnforceMoveFilesToOwner"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_5d
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CONTAINER_POLICY"

    invoke-virtual {v4, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 449
    .local v0, "count":I
    const-string v7, "KnoxMUMRCPPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allowMoveFilesToOwner: already row present ? "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-lez v0, :cond_b4

    move v4, v5

    :goto_75
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    if-lez v0, :cond_b6

    .line 452
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 453
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 454
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CONTAINER_POLICY"

    invoke-virtual {v4, v7, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 461
    .end local v1    # "cv":Landroid/content/ContentValues;
    :goto_99
    if-nez v2, :cond_c9

    .line 462
    const-string v4, "KnoxMUMRCPPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allowMoveFilesToOwner failed : result = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    .end local v0    # "count":I
    .end local v2    # "result":Z
    .end local v3    # "where":Landroid/content/ContentValues;
    :cond_b3
    :goto_b3
    return v6

    .restart local v0    # "count":I
    .restart local v2    # "result":Z
    .restart local v3    # "where":Landroid/content/ContentValues;
    :cond_b4
    move v4, v6

    .line 449
    goto :goto_75

    .line 457
    :cond_b6
    const-string/jumbo v4, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 458
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CONTAINER_POLICY"

    invoke-virtual {v4, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    goto :goto_99

    :cond_c9
    move v6, v5

    .line 465
    goto :goto_b3
.end method

.method public allowShareClipboardDataToOwner(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "value"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 623
    const-string v4, "com.sec.enterprise.knox.permission.KNOX_RCP_SYNC_MGMT"

    invoke-direct {p0, p1, v4}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 624
    if-eqz p1, :cond_d4

    .line 625
    const/4 v2, 0x0

    .line 626
    .local v2, "result":Z
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 627
    .local v3, "where":Landroid/content/ContentValues;
    const-string v4, "cid"

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 628
    const-string v4, "adminUid"

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 629
    const-string/jumbo v4, "name"

    const-string v7, "Clipboard"

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string/jumbo v4, "propertyName"

    const-string/jumbo v7, "knox-export-data"

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    sget-boolean v4, isEngMode:Z

    if-eqz v4, :cond_66

    .line 632
    const-string v4, "KnoxMUMRCPPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allowShareClipboardDataToOwner:RCP_ID  ADMIN_UID - RCP_PROPERTY_NAME:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Clipboard"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_66
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "RCP_DATA"

    invoke-virtual {v4, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 636
    .local v0, "count":I
    const-string v7, "KnoxMUMRCPPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allowShareClipboardDataToOwner: already row present ? "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-lez v0, :cond_bd

    move v4, v5

    :goto_7e
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    if-lez v0, :cond_bf

    .line 639
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 640
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "RCP_DATA"

    invoke-virtual {v4, v7, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 648
    .end local v1    # "cv":Landroid/content/ContentValues;
    :goto_a2
    if-nez v2, :cond_d2

    .line 649
    const-string v4, "KnoxMUMRCPPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allowShareClipboardDataToOwner failed : result = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    .end local v0    # "count":I
    .end local v2    # "result":Z
    .end local v3    # "where":Landroid/content/ContentValues;
    :goto_bc
    return v6

    .restart local v0    # "count":I
    .restart local v2    # "result":Z
    .restart local v3    # "where":Landroid/content/ContentValues;
    :cond_bd
    move v4, v6

    .line 636
    goto :goto_7e

    .line 644
    :cond_bf
    const-string/jumbo v4, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "RCP_DATA"

    invoke-virtual {v4, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    goto :goto_a2

    :cond_d2
    move v6, v5

    .line 652
    goto :goto_bc

    .line 654
    .end local v0    # "count":I
    .end local v2    # "result":Z
    .end local v3    # "where":Landroid/content/ContentValues;
    :cond_d4
    const-string v4, "KnoxMUMRCPPolicyService"

    const-string v5, "allowShareClipboardDataToOwner failed returning false"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bc
.end method

.method public getAllowChangeDataSyncPolicy(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 268
    const-string v5, "KnoxMUMRCPPolicyService"

    const-string/jumbo v6, "getAllowChangeDataSyncPolicy"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v4, 0x0

    .line 270
    .local v4, "userId":I
    if-eqz p1, :cond_1e

    .line 271
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 276
    :goto_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 277
    .local v2, "token":J
    const-string v5, "RCP_DATA"

    invoke-direct {p0, v5, v4, p2, p3}, getPropertyValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "retval":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 279
    if-nez v1, :cond_27

    .line 280
    const/4 v5, 0x0

    .line 282
    :goto_1d
    return v5

    .line 273
    .end local v1    # "retval":Ljava/lang/String;
    .end local v2    # "token":J
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 274
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    goto :goto_d

    .line 282
    .end local v0    # "callingUid":I
    .restart local v1    # "retval":Ljava/lang/String;
    .restart local v2    # "token":J
    :cond_27
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    goto :goto_1d
.end method

.method public getDataSyncPolicyByUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 286
    const-string v0, "RCP_DATA"

    invoke-direct {p0, v0, p1, p2, p3}, getPropertyValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListFromAllowChangeDataSyncPolicy(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Ljava/util/List;
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    const-string v0, "KnoxMUMRCPPolicyService"

    const-string/jumbo v1, "getListFromAllowChangeDataSyncPolicy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v0, "RCP_DATA"

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, getListFromSyncPolicy(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationSyncPolicy(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 303
    const-string v5, "KnoxMUMRCPPolicyService"

    const-string/jumbo v6, "getNotificationSyncPolicy"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 305
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 306
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 307
    .local v2, "token":J
    const-string v5, "RCP_NOTIFICATION"

    invoke-direct {p0, v5, v4, p2, p3}, getPropertyValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "retval":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 309
    return-object v1
.end method

.method public getNotificationSyncPolicyByUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 313
    const-string v0, "RCP_NOTIFICATION"

    invoke-direct {p0, v0, p1, p2, p3}, getPropertyValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromNotificationSyncPolicy(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    const-string v0, "RCP_NOTIFICATION"

    invoke-direct {p0, p1, v0, p2, p3}, getListFromSyncPolicy(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isMoveAppsToContainerAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 475
    if-eqz p1, :cond_c0

    .line 476
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v5, "propertyValue"

    aput-object v5, v0, v7

    .line 479
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 480
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "propertyName"

    const-string v8, "EnforceMoveAppsToContainer"

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .line 482
    .local v2, "ownerUid":I
    const-string v5, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 483
    const-string v5, "cid"

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 484
    sget-boolean v5, isEngMode:Z

    if-eqz v5, :cond_63

    .line 485
    const-string v5, "KnoxMUMRCPPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getEnforceAuthForContainer: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " EnforceMoveAppsToContainer"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_63
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CONTAINER_POLICY"

    invoke-virtual {v5, v8, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 490
    .local v3, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_b6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_b6

    .line 491
    sget-boolean v5, isEngMode:Z

    if-eqz v5, :cond_9d

    .line 492
    const-string v8, "KnoxMUMRCPPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getEnforceAuthForContainer: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string/jumbo v10, "propertyValue"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_9d
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string/jumbo v8, "propertyValue"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 495
    .local v4, "ret":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b4

    move v5, v6

    .line 507
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "ret":Ljava/lang/String;
    :goto_b3
    return v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "ownerUid":I
    .restart local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v4    # "ret":Ljava/lang/String;
    :cond_b4
    move v5, v7

    .line 498
    goto :goto_b3

    .line 502
    .end local v4    # "ret":Ljava/lang/String;
    :cond_b6
    const-string v5, "KnoxMUMRCPPolicyService"

    const-string/jumbo v6, "getEnforceAuthForContainer failed to get value from DB > returning true"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 503
    goto :goto_b3

    .line 506
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_c0
    const-string v5, "KnoxMUMRCPPolicyService"

    const-string/jumbo v6, "getEnforceAuthForContainer failed > returning true"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 507
    goto :goto_b3
.end method

.method public isMoveFilesToContainerAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 323
    if-eqz p1, :cond_bc

    .line 324
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v5, "propertyValue"

    aput-object v5, v0, v7

    .line 327
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 328
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "cid"

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    const-string/jumbo v5, "propertyName"

    const-string v8, "EnforceMoveFilesToContainer"

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .line 331
    .local v2, "ownerUid":I
    const-string v5, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    sget-boolean v5, isEngMode:Z

    if-eqz v5, :cond_63

    .line 333
    const-string v5, "KnoxMUMRCPPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isMoveFilesToContainerAllowed: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " EnforceMoveFilesToContainer"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_63
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CONTAINER_POLICY"

    invoke-virtual {v5, v8, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 338
    .local v3, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_b2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_b2

    .line 339
    const-string v8, "KnoxMUMRCPPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isMoveFilesToContainerAllowed: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string/jumbo v10, "propertyValue"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string/jumbo v8, "propertyValue"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, "ret":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b0

    move v5, v6

    .line 353
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "ret":Ljava/lang/String;
    :goto_af
    return v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "ownerUid":I
    .restart local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v4    # "ret":Ljava/lang/String;
    :cond_b0
    move v5, v7

    .line 344
    goto :goto_af

    .line 348
    .end local v4    # "ret":Ljava/lang/String;
    :cond_b2
    const-string v5, "KnoxMUMRCPPolicyService"

    const-string/jumbo v7, "isMoveFilesToContainerAllowed failed to get value from DB > returning true"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 349
    goto :goto_af

    .line 352
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_bc
    const-string v5, "KnoxMUMRCPPolicyService"

    const-string/jumbo v7, "isMoveFilesToContainerAllowed failed > returning true"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 353
    goto :goto_af
.end method

.method public isMoveFilesToOwnerAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 398
    if-eqz p1, :cond_c0

    .line 399
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v5, "propertyValue"

    aput-object v5, v0, v7

    .line 402
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 403
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "cid"

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 404
    const-string/jumbo v5, "propertyName"

    const-string v8, "EnforceMoveFilesToOwner"

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .line 406
    .local v2, "ownerUid":I
    const-string v5, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 407
    sget-boolean v5, isEngMode:Z

    if-eqz v5, :cond_63

    .line 408
    const-string v5, "KnoxMUMRCPPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isMoveFilesToOwnerAllowed: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " EnforceMoveFilesToOwner"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_63
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CONTAINER_POLICY"

    invoke-virtual {v5, v8, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 413
    .local v3, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_b6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_b6

    .line 414
    sget-boolean v5, isEngMode:Z

    if-eqz v5, :cond_9d

    .line 415
    const-string v8, "KnoxMUMRCPPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isMoveFilesToOwnerAllowed: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string/jumbo v10, "propertyValue"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_9d
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string/jumbo v8, "propertyValue"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 418
    .local v4, "ret":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b4

    move v5, v6

    .line 430
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "ret":Ljava/lang/String;
    :goto_b3
    return v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "ownerUid":I
    .restart local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v4    # "ret":Ljava/lang/String;
    :cond_b4
    move v5, v7

    .line 421
    goto :goto_b3

    .line 425
    .end local v4    # "ret":Ljava/lang/String;
    :cond_b6
    const-string v5, "KnoxMUMRCPPolicyService"

    const-string/jumbo v6, "isMoveFilesToOwnerAllowed failed to get value from DB > returning true"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 426
    goto :goto_b3

    .line 429
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_c0
    const-string v5, "KnoxMUMRCPPolicyService"

    const-string/jumbo v6, "isMoveFilesToOwnerAllowed failed > returning true"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 430
    goto :goto_b3
.end method

.method public isShareClipboardDataToOwnerAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v6, 0x0

    .line 590
    if-eqz p1, :cond_bc

    .line 591
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v5, "propertyValue"

    aput-object v5, v0, v6

    .line 594
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 595
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "cid"

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 596
    const-string/jumbo v5, "name"

    const-string v7, "Clipboard"

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string/jumbo v5, "propertyName"

    const-string/jumbo v7, "knox-export-data"

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .line 599
    .local v2, "ownerUid":I
    const-string v5, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 600
    sget-boolean v5, isEngMode:Z

    if-eqz v5, :cond_6c

    .line 601
    const-string v5, "KnoxMUMRCPPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isShareClipboardDataToOwnerAllowed: RCP_ID - ADMIN_UID - RCP_PROPERTY_NAME:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Clipboard "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_6c
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "RCP_DATA"

    invoke-virtual {v5, v7, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 606
    .local v3, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_bc

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_bc

    .line 607
    sget-boolean v5, isEngMode:Z

    if-eqz v5, :cond_a6

    .line 608
    const-string v7, "KnoxMUMRCPPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isShareClipboardDataToOwnerAllowed: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string/jumbo v9, "propertyValue"

    invoke-virtual {v5, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_a6
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string/jumbo v7, "propertyValue"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 611
    .local v4, "result":Ljava/lang/String;
    if-nez v4, :cond_b7

    move v5, v6

    .line 618
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "result":Ljava/lang/String;
    :goto_b6
    return v5

    .line 614
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "ownerUid":I
    .restart local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v4    # "result":Ljava/lang/String;
    :cond_b7
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    goto :goto_b6

    .line 617
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "result":Ljava/lang/String;
    :cond_bc
    const-string v5, "KnoxMUMRCPPolicyService"

    const-string/jumbo v7, "isShareClipboardDataToOwnerAllowed failed returning true"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 618
    goto :goto_b6
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 570
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 575
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 585
    return-void
.end method

.method public setAllowChangeDataSyncPolicy(Landroid/app/enterprise/ContextInfo;Ljava/util/List;Ljava/lang/String;Z)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "property"    # Ljava/lang/String;
    .param p4, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 262
    .local p2, "providerNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "KnoxMUMRCPPolicyService"

    const-string/jumbo v1, "setAllowChangeDataSyncPolicy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v2, "RCP_DATA"

    invoke-static {p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, setRCPSyncPolicy(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNotificationSyncPolicy(Landroid/app/enterprise/ContextInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "property"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 297
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "KnoxMUMRCPPolicyService"

    const-string/jumbo v1, "setNotificationSyncPolicy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v2, "RCP_NOTIFICATION"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, setRCPSyncPolicy(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 580
    return-void
.end method
