.class public Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
.super Ljava/lang/Object;
.source "EdmDLPStorageHelper.java"


# static fields
.field private static final ACTIVE_STATE:I = 0x1

.field private static final MAX_LOG_NUM:I = 0x33

.field private static final TAG:Ljava/lang/String; = "EdmDLPStorageHelper"

.field private static final TYPE_CONFIG:I = 0x2

.field private static final TYPE_CONFIG_LOG:I = 0x5

.field private static mInstance:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, mInstance:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 67
    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 71
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method private getBooleanValues(I)[Z
    .registers 5
    .param p1, "policy"    # I

    .prologue
    const/4 v2, 0x1

    .line 469
    const/4 v1, 0x2

    new-array v0, v1, [Z

    .line 470
    .local v0, "vals":[Z
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_b

    .line 471
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 472
    :cond_b
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_11

    .line 473
    aput-boolean v2, v0, v2

    .line 474
    :cond_11
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const-class v1, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, mInstance:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    if-nez v0, :cond_e

    .line 82
    new-instance v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    sput-object v0, mInstance:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    .line 84
    :cond_e
    sget-object v0, mInstance:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 81
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getIntValue(ZZ)I
    .registers 4
    .param p1, "haveNetWorkAccess"    # Z
    .param p2, "haveClipboardAccess"    # Z

    .prologue
    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, "policy":I
    if-eqz p1, :cond_5

    .line 462
    or-int/lit8 v0, v0, 0x1

    .line 463
    :cond_5
    if-eqz p2, :cond_9

    .line 464
    or-int/lit8 v0, v0, 0x2

    .line 465
    :cond_9
    return v0
.end method

.method private getList(Landroid/content/ContentValues;[Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .param p1, "cvWhere"    # Landroid/content/ContentValues;
    .param p2, "columns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 151
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :try_start_2
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "IRMServiceInformationTable"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p2, p1, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_41

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_41

    .line 154
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_48

    .line 155
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :goto_18
    :try_start_18
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 156
    new-instance v3, Lcom/sec/enterprise/AppIdentity;

    invoke-direct {v3}, Lcom/sec/enterprise/AppIdentity;-><init>()V

    .line 157
    .local v3, "packageNameNSign":Lcom/sec/enterprise/AppIdentity;
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/enterprise/AppIdentity;->setPackageName(Ljava/lang/String;)V

    .line 158
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/enterprise/AppIdentity;->setSignature(Ljava/lang/String;)V

    .line 160
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catchall {:try_start_18 .. :try_end_36} :catchall_37

    goto :goto_18

    .line 165
    .end local v3    # "packageNameNSign":Lcom/sec/enterprise/AppIdentity;
    :catchall_37
    move-exception v4

    move-object v1, v2

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :goto_39
    if-eqz v0, :cond_3f

    .line 166
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 167
    const/4 v0, 0x0

    :cond_3f
    throw v4

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :cond_40
    move-object v1, v2

    .line 165
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :cond_41
    if-eqz v0, :cond_47

    .line 166
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 167
    const/4 v0, 0x0

    .line 171
    :cond_47
    return-object v1

    .line 165
    :catchall_48
    move-exception v4

    goto :goto_39
.end method


# virtual methods
.method public addDumpLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "log"    # Ljava/lang/String;

    .prologue
    .line 565
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 566
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "adminUid"

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 568
    const-string/jumbo v2, "userid"

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 569
    const-string/jumbo v2, "fileUri"

    invoke-virtual {p0}, getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string/jumbo v2, "irmProvider"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string/jumbo v2, "rights"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 572
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "IRMDocumentRightsTable"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 573
    invoke-virtual {p0}, removeDumpLog()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_48

    .line 577
    .end local v0    # "cv":Landroid/content/ContentValues;
    :goto_47
    return-void

    .line 574
    :catch_48
    move-exception v1

    .line 575
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "EdmDLPStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addDumpLog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47
.end method

.method public addWhitelistApps(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 209
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    const/4 v10, 0x0

    .line 211
    .local v10, "ret":Z
    if-eqz p2, :cond_114

    .line 212
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_114

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;

    .line 214
    .local v6, "dpi":Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;
    if-eqz v6, :cond_7

    .line 218
    iget-object v2, v6, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/sec/enterprise/AppIdentity;

    .line 219
    .local v2, "ai":Lcom/sec/enterprise/AppIdentity;
    if-eqz v2, :cond_7

    .line 220
    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 221
    .local v9, "packageName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v11

    .line 222
    .local v11, "signature":Ljava/lang/String;
    const/4 v13, 0x0

    .line 223
    .local v13, "type":I
    iget-object v14, v6, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;->extras:Landroid/os/Bundle;

    if-eqz v14, :cond_32

    iget-object v14, v6, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;->extras:Landroid/os/Bundle;

    const-string v15, "Type"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_32

    .line 224
    const/4 v13, 0x1

    .line 227
    :cond_32
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_7

    .line 228
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addWhitelistApps => "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", isConsumer: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 229
    .local v8, "log":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, addDumpLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v11}, isListAppsContainsDLPPackageInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_bf

    .line 231
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 232
    .local v5, "cvWhere":Landroid/content/ContentValues;
    const-string v14, "adminUid"

    move-object/from16 v0, p1

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 234
    const-string/jumbo v14, "userid"

    move-object/from16 v0, p1

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    const-string/jumbo v14, "data_text1"

    invoke-virtual {v5, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string/jumbo v14, "data_text2"

    invoke-virtual {v5, v14, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 240
    .local v12, "toChange":Landroid/content/ContentValues;
    const-string/jumbo v14, "type"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v14, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "IRMServiceInformationTable"

    invoke-virtual {v14, v15, v12, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v3

    .line 244
    .local v3, "count":I
    if-lez v3, :cond_bd

    const/4 v14, 0x1

    :goto_ba
    or-int/2addr v10, v14

    .line 245
    goto/16 :goto_7

    .line 244
    :cond_bd
    const/4 v14, 0x0

    goto :goto_ba

    .line 246
    .end local v3    # "count":I
    .end local v5    # "cvWhere":Landroid/content/ContentValues;
    .end local v12    # "toChange":Landroid/content/ContentValues;
    :cond_bf
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 247
    .local v4, "cv":Landroid/content/ContentValues;
    const-string v14, "adminUid"

    move-object/from16 v0, p1

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 248
    const-string/jumbo v14, "userid"

    move-object/from16 v0, p1

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    const-string/jumbo v14, "type"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    const-string/jumbo v14, "data_text1"

    invoke-virtual {v4, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    if-eqz v11, :cond_107

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_107

    .line 252
    const-string/jumbo v14, "data_text2"

    invoke-virtual {v4, v14, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_107
    move-object/from16 v0, p0

    iget-object v14, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "IRMServiceInformationTable"

    invoke-virtual {v14, v15, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v14

    or-int/2addr v10, v14

    goto/16 :goto_7

    .line 262
    .end local v2    # "ai":Lcom/sec/enterprise/AppIdentity;
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v6    # "dpi":Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "log":Ljava/lang/String;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v11    # "signature":Ljava/lang/String;
    .end local v13    # "type":I
    :cond_114
    return v10
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 21
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 614
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 615
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 616
    const-string v15, "DUMP OF DLP Information :"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    const/4 v4, 0x0

    .line 618
    .local v4, "configCursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 619
    .local v6, "creatorCursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 620
    .local v5, "consumerCursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 621
    .local v13, "logCursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 622
    .local v12, "isExistCreator":Z
    const/4 v11, 0x0

    .line 624
    .local v11, "isExistConsumer":Z
    :try_start_13
    new-instance v14, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 626
    .local v14, "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const/4 v15, 0x3

    new-array v2, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "data_int1"

    aput-object v16, v2, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "data_int2"

    aput-object v16, v2, v15

    const/4 v15, 0x2

    const-string/jumbo v16, "data_int3"

    aput-object v16, v2, v15

    .line 629
    .local v2, "columnsConfig":[Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 630
    .local v8, "cvConfig":Landroid/content/ContentValues;
    const-string/jumbo v15, "type"

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 631
    const-string v15, "IRMServiceInformationTable"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v2, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 633
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 634
    const-string v15, " isActivated  isLocked  expiry_after"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 635
    if-eqz v4, :cond_c5

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-eqz v15, :cond_c5

    .line 636
    :goto_60
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_cc

    .line 637
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "            "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "         "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_aa
    .catchall {:try_start_13 .. :try_end_aa} :catchall_ab

    goto :goto_60

    .line 703
    .end local v2    # "columnsConfig":[Ljava/lang/String;
    .end local v8    # "cvConfig":Landroid/content/ContentValues;
    .end local v14    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :catchall_ab
    move-exception v15

    if-eqz v4, :cond_b2

    .line 704
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 705
    const/4 v4, 0x0

    .line 707
    :cond_b2
    if-eqz v6, :cond_b8

    .line 708
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 709
    const/4 v6, 0x0

    .line 711
    :cond_b8
    if-eqz v5, :cond_be

    .line 712
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 713
    const/4 v5, 0x0

    .line 715
    :cond_be
    if-eqz v13, :cond_c4

    .line 716
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 717
    const/4 v13, 0x0

    :cond_c4
    throw v15

    .line 641
    .restart local v2    # "columnsConfig":[Ljava/lang/String;
    .restart local v8    # "cvConfig":Landroid/content/ContentValues;
    .restart local v14    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :cond_c5
    :try_start_c5
    const-string v15, "  Cursor is null"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    :cond_cc
    const/4 v15, 0x3

    new-array v1, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "userid"

    aput-object v16, v1, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "type"

    aput-object v16, v1, v15

    const/4 v15, 0x2

    const-string/jumbo v16, "data_text1"

    aput-object v16, v1, v15

    .line 648
    .local v1, "columns":[Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 649
    .local v10, "cvCreator":Landroid/content/ContentValues;
    const-string/jumbo v15, "type"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 650
    const-string v15, "IRMServiceInformationTable"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v1, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 653
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 654
    .local v9, "cvConsumer":Landroid/content/ContentValues;
    const-string/jumbo v15, "type"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 655
    const-string v15, "IRMServiceInformationTable"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v1, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 658
    if-eqz v6, :cond_124

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-eqz v15, :cond_124

    .line 659
    const/4 v12, 0x1

    .line 660
    :cond_124
    if-eqz v5, :cond_12d

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-eqz v15, :cond_12d

    .line 661
    const/4 v11, 0x1

    .line 662
    :cond_12d
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 663
    const-string v15, " userID isConsumer  packageName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    if-nez v12, :cond_1d1

    if-nez v11, :cond_1d1

    .line 665
    const-string v15, "  Cursor is null"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 683
    :cond_142
    const/4 v15, 0x3

    new-array v3, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "userid"

    aput-object v16, v3, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "fileUri"

    aput-object v16, v3, v15

    const/4 v15, 0x2

    const-string/jumbo v16, "irmProvider"

    aput-object v16, v3, v15

    .line 687
    .local v3, "columnsLog":[Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 688
    .local v7, "cv":Landroid/content/ContentValues;
    const-string/jumbo v15, "rights"

    const/16 v16, 0x5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 689
    const-string v15, "IRMDocumentRightsTable"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v3, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 691
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 692
    const-string v15, " userID time                    log"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 693
    if-eqz v13, :cond_28a

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-eqz v15, :cond_28a

    .line 694
    :goto_186
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_26b

    .line 695
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "    "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_186

    .line 667
    .end local v3    # "columnsLog":[Ljava/lang/String;
    .end local v7    # "cv":Landroid/content/ContentValues;
    :cond_1d1
    if-eqz v12, :cond_21e

    .line 668
    :goto_1d3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_21e

    .line 669
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "    "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "           "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1d3

    .line 674
    :cond_21e
    if-eqz v11, :cond_142

    .line 675
    :goto_220
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_142

    .line 676
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "    "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "           "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_220

    .line 698
    .restart local v3    # "columnsLog":[Ljava/lang/String;
    .restart local v7    # "cv":Landroid/content/ContentValues;
    :cond_26b
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_26e
    .catchall {:try_start_c5 .. :try_end_26e} :catchall_ab

    .line 703
    :goto_26e
    if-eqz v4, :cond_274

    .line 704
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 705
    const/4 v4, 0x0

    .line 707
    :cond_274
    if-eqz v6, :cond_27a

    .line 708
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 709
    const/4 v6, 0x0

    .line 711
    :cond_27a
    if-eqz v5, :cond_280

    .line 712
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 713
    const/4 v5, 0x0

    .line 715
    :cond_280
    if-eqz v13, :cond_286

    .line 716
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 717
    const/4 v13, 0x0

    .line 720
    :cond_286
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 721
    return-void

    .line 700
    :cond_28a
    :try_start_28a
    const-string v15, "  Cursor is null"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_291
    .catchall {:try_start_28a .. :try_end_291} :catchall_ab

    goto :goto_26e
.end method

.method public getAppType(ILjava/lang/String;)I
    .registers 14
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 478
    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v8, "type"

    aput-object v8, v0, v9

    const-string/jumbo v8, "data_text2"

    aput-object v8, v0, v10

    .line 481
    .local v0, "columns":[Ljava/lang/String;
    const/4 v7, -0x1

    .line 482
    .local v7, "type":I
    const/4 v6, 0x0

    .line 484
    .local v6, "signature":Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 485
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v8, "userid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 486
    const-string/jumbo v8, "data_text1"

    invoke-virtual {v3, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const/4 v2, 0x0

    .line 491
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_27
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "IRMServiceInformationTable"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v0, v3, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 493
    if-eqz v2, :cond_7f

    .line 494
    :goto_32
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_7f

    .line 495
    const/4 v8, 0x1

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 496
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 497
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_45
    .catchall {:try_start_27 .. :try_end_45} :catchall_72

    move-result v8

    if-eqz v8, :cond_50

    .line 513
    if-eqz v2, :cond_4e

    .line 514
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 515
    const/4 v2, 0x0

    :cond_4e
    move v8, v7

    .line 519
    :goto_4f
    return v8

    .line 500
    :cond_50
    :try_start_50
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string v9, "android"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v1

    .line 501
    .local v1, "ctx":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_5c
    .catchall {:try_start_50 .. :try_end_5c} :catchall_72

    move-result-wide v4

    .line 503
    .local v4, "identity":J
    :try_start_5d
    invoke-static {v1, p2, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_7a

    move-result v8

    if-eqz v8, :cond_6e

    .line 507
    :try_start_63
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_72

    .line 513
    if-eqz v2, :cond_6c

    .line 514
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 515
    const/4 v2, 0x0

    :cond_6c
    move v8, v7

    goto :goto_4f

    .line 507
    :cond_6e
    :try_start_6e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_32

    .line 513
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v4    # "identity":J
    :catchall_72
    move-exception v8

    if-eqz v2, :cond_79

    .line 514
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 515
    const/4 v2, 0x0

    :cond_79
    throw v8

    .line 507
    .restart local v1    # "ctx":Landroid/content/Context;
    .restart local v4    # "identity":J
    :catchall_7a
    move-exception v8

    :try_start_7b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_72

    .line 513
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v4    # "identity":J
    :cond_7f
    if-eqz v2, :cond_85

    .line 514
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 515
    const/4 v2, 0x0

    .line 519
    :cond_85
    const/4 v8, -0x1

    goto :goto_4f
.end method

.method public getDLPConfig(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 403
    const/4 v7, 0x0

    .line 404
    .local v7, "policy":I
    const/4 v5, 0x0

    .line 405
    .local v5, "isActivated":Z
    const/4 v6, 0x0

    .line 407
    .local v6, "isLocked":Z
    const/4 v8, 0x0

    .line 408
    .local v8, "policyVals":[Z
    const/4 v4, 0x0

    .line 411
    .local v4, "expiry_after":I
    const-string v9, "EdmDLPStorageHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getDefaultPolicy() "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v9, 0x4

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "data_int1"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "data_int2"

    aput-object v10, v1, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "data_int3"

    aput-object v10, v1, v9

    const/4 v9, 0x3

    const-string/jumbo v10, "data_int4"

    aput-object v10, v1, v9

    .line 417
    .local v1, "columns":[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 418
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v9, "type"

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 419
    const-string/jumbo v9, "userid"

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    const/4 v2, 0x0

    .line 424
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_58
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "IRMServiceInformationTable"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v1, v3, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 426
    if-eqz v2, :cond_85

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_85

    .line 427
    const/4 v9, 0x0

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f6

    const/4 v5, 0x1

    .line 428
    :goto_72
    const/4 v9, 0x1

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f9

    const/4 v6, 0x1

    .line 429
    :goto_7b
    const/4 v9, 0x2

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 430
    const/4 v9, 0x3

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I
    :try_end_84
    .catchall {:try_start_58 .. :try_end_84} :catchall_fb

    move-result v7

    .line 433
    :cond_85
    if-eqz v2, :cond_8b

    .line 434
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 435
    const/4 v2, 0x0

    .line 439
    :cond_8b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 441
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-direct {p0, v7}, getBooleanValues(I)[Z

    move-result-object v8

    .line 443
    const-string v9, "NETWORK"

    const/4 v10, 0x0

    aget-boolean v10, v8, v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 445
    const-string v9, "CLIPBOARD"

    const/4 v10, 0x1

    aget-boolean v10, v8, v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 447
    const-string v9, "Activate"

    invoke-virtual {v0, v9, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 448
    const-string v9, "Lock"

    invoke-virtual {v0, v9, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 450
    const-string v9, "EdmDLPStorageHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NetworkAccess: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-boolean v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ClipboardAccess: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-boolean v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v9, "EdmDLPStorageHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Policy Integer: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    if-lez v4, :cond_f5

    .line 453
    const-string v9, "ExpiryAfter"

    invoke-virtual {v0, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 456
    :cond_f5
    return-object v0

    .line 427
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_f6
    const/4 v5, 0x0

    goto/16 :goto_72

    .line 428
    :cond_f9
    const/4 v6, 0x0

    goto :goto_7b

    .line 433
    :catchall_fb
    move-exception v9

    if-eqz v2, :cond_102

    .line 434
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 435
    const/4 v2, 0x0

    :cond_102
    throw v9
.end method

.method public getPolicyConfigOwners()Landroid/util/SparseLongArray;
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 363
    const-string v4, "EdmDLPStorageHelper"

    const-string/jumbo v5, "getPolicyConfigOwners called !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v3, Landroid/util/SparseLongArray;

    invoke-direct {v3}, Landroid/util/SparseLongArray;-><init>()V

    .line 365
    .local v3, "policyConfigOwners":Landroid/util/SparseLongArray;
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v4, "userid"

    aput-object v4, v0, v6

    const-string v4, "adminUid"

    aput-object v4, v0, v7

    .line 366
    .local v0, "columns":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 367
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v4, "type"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 368
    const/4 v1, 0x0

    .line 370
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_2b
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "IRMServiceInformationTable"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v2, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 372
    if-eqz v1, :cond_49

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 373
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/util/SparseLongArray;->put(IJ)V
    :try_end_49
    .catchall {:try_start_2b .. :try_end_49} :catchall_50

    .line 376
    :cond_49
    if-eqz v1, :cond_4f

    .line 377
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 378
    const/4 v1, 0x0

    .line 382
    :cond_4f
    return-object v3

    .line 376
    :catchall_50
    move-exception v4

    if-eqz v1, :cond_57

    .line 377
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 378
    const/4 v1, 0x0

    :cond_57
    throw v4
.end method

.method public getTime()Ljava/lang/String;
    .registers 3

    .prologue
    .line 610
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhitelistApps(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 91
    invoke-virtual {p0, p1, v7}, getWhitelistApps(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;

    move-result-object v2

    .line 92
    .local v2, "creatorWhitelist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    invoke-virtual {p0, p1, v8}, getWhitelistApps(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;

    move-result-object v1

    .line 94
    .local v1, "consumerWhitelist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    const/4 v5, 0x0

    .line 96
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    if-eqz v2, :cond_13

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1b

    :cond_13
    if-eqz v1, :cond_6a

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6a

    .line 98
    :cond_1b
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    if-eqz v2, :cond_45

    .line 101
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v3, "extras":Landroid/os/Bundle;
    const-string v6, "Type"

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/AppIdentity;

    .line 105
    .local v0, "ai":Lcom/sec/enterprise/AppIdentity;
    new-instance v6, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;

    invoke-direct {v6, v0, v3}, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;-><init>(Lcom/sec/enterprise/AppIdentity;Landroid/os/Bundle;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 109
    .end local v0    # "ai":Lcom/sec/enterprise/AppIdentity;
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_45
    if-eqz v1, :cond_6a

    .line 110
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 111
    .restart local v3    # "extras":Landroid/os/Bundle;
    const-string v6, "Type"

    invoke-virtual {v3, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_55
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/AppIdentity;

    .line 114
    .restart local v0    # "ai":Lcom/sec/enterprise/AppIdentity;
    new-instance v6, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;

    invoke-direct {v6, v0, v3}, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;-><init>(Lcom/sec/enterprise/AppIdentity;Landroid/os/Bundle;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 119
    .end local v0    # "ai":Lcom/sec/enterprise/AppIdentity;
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_6a
    return-object v5
.end method

.method public getWhitelistApps(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "data_text1"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "data_text2"

    aput-object v3, v0, v2

    .line 126
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 127
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v2, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    const-string/jumbo v2, "userid"

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    invoke-direct {p0, v1, v0}, getList(Landroid/content/ContentValues;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getWhitelistApps(Landroid/app/enterprise/ContextInfo;IJ)Ljava/util/List;
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # I
    .param p3, "adminUid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "IJ)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "data_text1"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "data_text2"

    aput-object v3, v0, v2

    .line 137
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 138
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v2, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    const-string/jumbo v2, "userid"

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    const-string v2, "adminUid"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 142
    invoke-direct {p0, v1, v0}, getList(Landroid/content/ContentValues;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public isActivated(I)I
    .registers 10
    .param p1, "userId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 523
    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v4, "data_int1"

    aput-object v4, v1, v5

    .line 527
    .local v1, "columns":[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 528
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v4, "userid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 529
    const-string/jumbo v4, "type"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 531
    const/4 v2, 0x0

    .line 533
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 536
    .local v0, "activated":I
    :try_start_25
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "IRMServiceInformationTable"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v3, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 538
    if-eqz v2, :cond_3f

    .line 539
    :cond_30
    :goto_30
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 540
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3a
    .catchall {:try_start_25 .. :try_end_3a} :catchall_46

    move-result v4

    if-ne v4, v7, :cond_30

    .line 541
    const/4 v0, 0x1

    goto :goto_30

    .line 546
    :cond_3f
    if-eqz v2, :cond_45

    .line 547
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 548
    const/4 v2, 0x0

    .line 552
    :cond_45
    return v0

    .line 546
    :catchall_46
    move-exception v4

    if-eqz v2, :cond_4d

    .line 547
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 548
    const/4 v2, 0x0

    :cond_4d
    throw v4
.end method

.method public isListAppsContainsDLPPackageInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 175
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v5, "data_text1"

    aput-object v5, v0, v4

    const-string/jumbo v5, "data_text2"

    aput-object v5, v0, v3

    .line 179
    .local v0, "columns":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 181
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v5, "userid"

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    const-string/jumbo v5, "data_text1"

    invoke-virtual {v2, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    if-eqz p3, :cond_34

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_34

    .line 184
    const-string/jumbo v5, "data_text2"

    invoke-virtual {v2, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_34
    const/4 v1, 0x0

    .line 190
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_35
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "IRMServiceInformationTable"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v0, v2, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 192
    if-eqz v1, :cond_4d

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_43
    .catchall {:try_start_35 .. :try_end_43} :catchall_55

    move-result v5

    if-eqz v5, :cond_4d

    .line 196
    if-eqz v1, :cond_4c

    .line 197
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 198
    const/4 v1, 0x0

    .line 202
    :cond_4c
    :goto_4c
    return v3

    .line 196
    :cond_4d
    if-eqz v1, :cond_53

    .line 197
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 198
    const/4 v1, 0x0

    :cond_53
    move v3, v4

    .line 202
    goto :goto_4c

    .line 196
    :catchall_55
    move-exception v3

    if-eqz v1, :cond_5c

    .line 197
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 198
    const/4 v1, 0x0

    :cond_5c
    throw v3
.end method

.method public removeDBEntries(J)I
    .registers 8
    .param p1, "adminUid"    # J

    .prologue
    .line 556
    const-string v2, "EdmDLPStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoveDBEntries called for adminUID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 558
    .local v0, "cvWhere":Landroid/content/ContentValues;
    const-string v2, "adminUid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 559
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "IRMServiceInformationTable"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 560
    .local v1, "row":I
    return v1
.end method

.method public removeDumpLog()V
    .registers 11

    .prologue
    .line 580
    const/4 v1, 0x0

    .line 582
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x2

    :try_start_2
    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "userid"

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "fileUri"

    aput-object v8, v0, v7

    .line 585
    .local v0, "columns":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 586
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v7, "rights"

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 587
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "IRMDocumentRightsTable"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v0, v2, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 589
    if-eqz v1, :cond_60

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    const/16 v8, 0x33

    if-lt v7, v8, :cond_60

    .line 590
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_60

    .line 591
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 592
    .local v5, "row":I
    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 593
    .local v6, "row1":Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 594
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v7, "userid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 595
    const-string/jumbo v7, "fileUri"

    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "IRMDocumentRightsTable"

    invoke-virtual {v7, v8, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_5f
    .catchall {:try_start_2 .. :try_end_5f} :catchall_67

    move-result v4

    .line 602
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    .end local v5    # "row":I
    .end local v6    # "row1":Ljava/lang/String;
    :cond_60
    if-eqz v1, :cond_66

    .line 603
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 604
    const/4 v1, 0x0

    .line 607
    :cond_66
    return-void

    .line 602
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v2    # "cv":Landroid/content/ContentValues;
    :catchall_67
    move-exception v7

    if-eqz v1, :cond_6e

    .line 603
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 604
    const/4 v1, 0x0

    :cond_6e
    throw v7
.end method

.method public removeWhitelistApps(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 269
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 271
    .local v0, "count":I
    if-eqz p2, :cond_5e

    .line 272
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 273
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeWhitelistApps => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, addDumpLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    .line 275
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 276
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 278
    const-string/jumbo v4, "userid"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    const-string/jumbo v4, "data_text1"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "IRMServiceInformationTable"

    invoke-virtual {v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_7

    .line 286
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_5e
    if-lez v0, :cond_62

    const/4 v4, 0x1

    :goto_61
    return v4

    :cond_62
    const/4 v4, 0x0

    goto :goto_61
.end method

.method public setDLPConfig(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)Z
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "defaultPolicy"    # Landroid/os/Bundle;

    .prologue
    .line 293
    const/4 v11, 0x1

    .line 301
    .local v11, "ret":Z
    const/4 v4, 0x0

    .line 303
    .local v4, "expiry_after":I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 304
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v12, "adminUid"

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 305
    const-string/jumbo v12, "type"

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    const-string/jumbo v12, "userid"

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    if-nez p2, :cond_41

    .line 309
    const-string v12, "EdmDLPStorageHelper"

    const-string/jumbo v13, "setDefaultPolicy() defaultPolicy is null"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v11, 0x0

    .line 358
    :goto_40
    return v11

    .line 313
    :cond_41
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 314
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v12, "Activate"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7e

    .line 315
    const-string v12, "Activate"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 316
    .local v7, "isActivated":Z
    const-string/jumbo v13, "data_int1"

    if-eqz v7, :cond_1b8

    const/4 v12, 0x1

    :goto_5e
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 317
    const-string v12, "EdmDLPStorageHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setDLPConfig:isActivated: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .end local v7    # "isActivated":Z
    :cond_7e
    const-string v12, "Lock"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b6

    .line 320
    const-string v12, "Lock"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 321
    .local v8, "isLocked":Z
    const-string/jumbo v13, "data_int2"

    if-eqz v8, :cond_1bb

    const/4 v12, 0x1

    :goto_96
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 322
    const-string v12, "EdmDLPStorageHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setDLPConfig:isLocked: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v8    # "isLocked":Z
    :cond_b6
    const-string v12, "ExpiryAfter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_eb

    .line 325
    const-string v12, "ExpiryAfter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 326
    const-string/jumbo v12, "data_int3"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    const-string v12, "EdmDLPStorageHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setDLPConfig:expiry_after: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_eb
    const-string v12, "NETWORK"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_ff

    const-string v12, "CLIPBOARD"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_170

    .line 330
    :cond_ff
    const/4 v9, 0x0

    .line 331
    .local v9, "oldConfig":Landroid/os/Bundle;
    const-string v12, "NETWORK"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1be

    .line 332
    const-string v12, "NETWORK"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 337
    .local v6, "haveNetWorkAccess":Z
    :goto_112
    const-string v12, "CLIPBOARD"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1ca

    .line 338
    const-string v12, "CLIPBOARD"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 343
    .local v5, "haveClipboardAccess":Z
    :goto_124
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, getIntValue(ZZ)I

    move-result v10

    .line 344
    .local v10, "policy":I
    const-string/jumbo v12, "data_int4"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 345
    const-string v12, "EdmDLPStorageHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setDLPConfig:NetworkAccess: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ClipboardAccess: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v12, "EdmDLPStorageHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setDLPConfig:Policy Integer: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .end local v5    # "haveClipboardAccess":Z
    .end local v6    # "haveNetWorkAccess":Z
    .end local v9    # "oldConfig":Landroid/os/Bundle;
    .end local v10    # "policy":I
    :cond_170
    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v12

    if-lez v12, :cond_1d6

    .line 349
    move-object/from16 v0, p0

    iget-object v12, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "IRMServiceInformationTable"

    invoke-virtual {v12, v13, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v11

    .line 354
    :goto_180
    const-string v12, "EdmDLPStorageHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setDLPConfig() set : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setDLPConfig => "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, addDumpLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    goto/16 :goto_40

    .line 316
    .restart local v7    # "isActivated":Z
    :cond_1b8
    const/4 v12, 0x0

    goto/16 :goto_5e

    .line 321
    .end local v7    # "isActivated":Z
    .restart local v8    # "isLocked":Z
    :cond_1bb
    const/4 v12, 0x0

    goto/16 :goto_96

    .line 334
    .end local v8    # "isLocked":Z
    .restart local v9    # "oldConfig":Landroid/os/Bundle;
    :cond_1be
    invoke-virtual/range {p0 .. p1}, getDLPConfig(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;

    move-result-object v9

    .line 335
    const-string v12, "NETWORK"

    invoke-virtual {v9, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .restart local v6    # "haveNetWorkAccess":Z
    goto/16 :goto_112

    .line 340
    :cond_1ca
    invoke-virtual/range {p0 .. p1}, getDLPConfig(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;

    move-result-object v9

    .line 341
    const-string v12, "CLIPBOARD"

    invoke-virtual {v9, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .restart local v5    # "haveClipboardAccess":Z
    goto/16 :goto_124

    .line 351
    .end local v5    # "haveClipboardAccess":Z
    .end local v6    # "haveNetWorkAccess":Z
    .end local v9    # "oldConfig":Landroid/os/Bundle;
    :cond_1d6
    const/4 v11, 0x0

    goto :goto_180
.end method

.method public updateAdminUid(Landroid/app/enterprise/ContextInfo;J)I
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "oldAdmimUid"    # J

    .prologue
    .line 387
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 388
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 390
    const-string/jumbo v3, "userid"

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 392
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 393
    .local v2, "toChange":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 395
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "IRMServiceInformationTable"

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v0

    .line 396
    .local v0, "count":I
    return v0
.end method
