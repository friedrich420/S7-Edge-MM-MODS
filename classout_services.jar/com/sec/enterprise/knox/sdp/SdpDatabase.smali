.class public Lcom/sec/enterprise/knox/sdp/SdpDatabase;
.super Ljava/lang/Object;
.source "SdpDatabase.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SdpDatabase"

.field private static final runAllConvert:Z


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mEngineId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v1, -0x1

    iput v1, p0, mEngineId:I

    .line 44
    invoke-direct {p0}, enforcePermission()V

    .line 45
    iput-object p1, p0, mAlias:Ljava/lang/String;

    .line 46
    iget-object v1, p0, mAlias:Ljava/lang/String;

    invoke-direct {p0, v1}, getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 47
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_19

    .line 51
    new-instance v1, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v1

    .line 53
    :cond_19
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v1

    iput v1, p0, mEngineId:I

    .line 55
    return-void
.end method

.method private enforcePermission()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;
        }
    .end annotation

    .prologue
    .line 263
    const/16 v1, -0x63

    .line 264
    .local v1, "res":I
    const-string/jumbo v3, "sdp"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v2

    .line 266
    .local v2, "service":Lcom/sec/sdp/ISdpManagerService;
    if-eqz v2, :cond_24

    .line 268
    const/4 v3, 0x0

    :try_start_10
    invoke-interface {v2, v3}, Lcom/sec/sdp/ISdpManagerService;->isLicensed(Ljava/lang/String;)I

    move-result v1

    .line 269
    if-eqz v1, :cond_24

    .line 270
    new-instance v3, Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;

    invoke-direct {v3}, Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;-><init>()V

    throw v3
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_1c

    .line 271
    :catch_1c
    move-exception v0

    .line 272
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "SdpDatabase"

    const-string v4, "Failed to talk with sdp service..."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_24
    return-void
.end method

.method private formSensitiveColumnStmt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "engineId"    # I
    .param p2, "tblName"    # Ljava/lang/String;
    .param p3, "columns"    # Ljava/lang/String;

    .prologue
    .line 174
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_10

    if-eqz p3, :cond_10

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    .line 176
    :cond_10
    const/4 v1, 0x0

    .line 185
    :goto_11
    return-object v1

    .line 178
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "table="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";columns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string/jumbo v1, "engine_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_11
.end method

.method private formSensitivePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "dbAlias"    # Ljava/lang/String;
    .param p2, "tblName"    # Ljava/lang/String;
    .param p3, "cols"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 164
    iget v3, p0, mEngineId:I

    invoke-direct {p0, v3, p2, p3}, formSensitiveColumnStmt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "tmpstmt":Ljava/lang/String;
    if-nez v2, :cond_a

    .line 166
    const/4 v1, 0x0

    .line 169
    :goto_9
    return-object v1

    .line 167
    :cond_a
    if-nez p1, :cond_34

    const-string v0, ""

    .line 168
    .local v0, "dbaliasprefix":Ljava/lang/String;
    :goto_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pragma "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "set_sensitive_columns(\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\");"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "stmt":Ljava/lang/String;
    goto :goto_9

    .line 167
    .end local v0    # "dbaliasprefix":Ljava/lang/String;
    .end local v1    # "stmt":Ljava/lang/String;
    :cond_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method private getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :try_start_1
    const-string/jumbo v3, "sdp"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v2

    .line 282
    .local v2, "service":Lcom/sec/sdp/ISdpManagerService;
    if-eqz v2, :cond_12

    .line 283
    invoke-interface {v2, p1}, Lcom/sec/sdp/ISdpManagerService;->getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v0

    .line 287
    .end local v2    # "service":Lcom/sec/sdp/ISdpManagerService;
    :cond_12
    :goto_12
    return-object v0

    .line 284
    :catch_13
    move-exception v1

    .line 285
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "SdpDatabase"

    const-string v4, "Failed to talk with sdp service..."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method


# virtual methods
.method public isSensitive(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "dbAlias"    # Ljava/lang/String;
    .param p3, "tblName"    # Ljava/lang/String;
    .param p4, "column"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 124
    const/4 v2, 0x0

    .line 125
    .local v2, "result":Z
    const/4 v0, 0x0

    .line 127
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez p1, :cond_e

    const-string v5, "SdpDatabase"

    const-string/jumbo v6, "isSensitive :: invalid DB"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_d
    return v4

    .line 128
    :cond_e
    iget v5, p0, mEngineId:I

    if-gez v5, :cond_2e

    const-string v5, "SdpDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSensitive :: invalid engine "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mAlias:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 138
    :cond_2e
    if-nez p2, :cond_75

    :try_start_30
    const-string v1, ""

    .line 139
    .local v1, "dbaliasprefix":Ljava/lang/String;
    :goto_32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pragma "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "get_sensitive_columns("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 144
    :cond_62
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_30 .. :try_end_6a} :catch_90
    .catchall {:try_start_30 .. :try_end_6a} :catchall_9b

    move-result v4

    if-eqz v4, :cond_89

    .line 145
    const/4 v2, 0x1

    .line 154
    :cond_6e
    :goto_6e
    if-eqz v0, :cond_73

    .line 155
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local v1    # "dbaliasprefix":Ljava/lang/String;
    :cond_73
    :goto_73
    move v4, v2

    .line 158
    goto :goto_d

    .line 138
    :cond_75
    :try_start_75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_32

    .line 148
    .restart local v1    # "dbaliasprefix":Ljava/lang/String;
    :cond_89
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_75 .. :try_end_8c} :catch_90
    .catchall {:try_start_75 .. :try_end_8c} :catchall_9b

    move-result v4

    if-nez v4, :cond_62

    goto :goto_6e

    .line 150
    .end local v1    # "dbaliasprefix":Ljava/lang/String;
    :catch_90
    move-exception v3

    .line 151
    .local v3, "x":Landroid/database/sqlite/SQLiteException;
    :try_start_91
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_9b

    .line 152
    const/4 v2, 0x0

    .line 154
    if-eqz v0, :cond_73

    .line 155
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_73

    .line 154
    .end local v3    # "x":Landroid/database/sqlite/SQLiteException;
    :catchall_9b
    move-exception v4

    if-eqz v0, :cond_a1

    .line 155
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a1
    throw v4
.end method

.method public setSensitive(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .registers 16
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "dbAlias"    # Ljava/lang/String;
    .param p3, "tblName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineLockedException;
        }
    .end annotation

    .prologue
    .local p4, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v1, "cols":Ljava/lang/StringBuilder;
    if-nez p1, :cond_12

    const-string v8, "SdpDatabase"

    const-string/jumbo v9, "setSensitive :: invalid DB"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_11
    :goto_11
    return v7

    .line 73
    :cond_12
    iget v9, p0, mEngineId:I

    if-gez v9, :cond_32

    const-string v8, "SdpDatabase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setSensitive :: invalid engine "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mAlias:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 75
    :cond_32
    iget-object v9, p0, mAlias:Ljava/lang/String;

    invoke-direct {p0, v9}, getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v5

    .line 76
    .local v5, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-eqz v5, :cond_42

    if-eqz v5, :cond_63

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getState()I

    move-result v9

    if-ne v9, v8, :cond_63

    .line 77
    :cond_42
    const-string v7, "SdpDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSensitive failed, engine is locked!!! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, mAlias:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v7, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineLockedException;

    invoke-direct {v7}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineLockedException;-><init>()V

    throw v7

    .line 81
    :cond_63
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_64
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_83

    .line 82
    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    .local v0, "col":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v4, v9, :cond_80

    .line 85
    const-string v9, ","

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_80
    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 87
    .end local v0    # "col":Ljava/lang/String;
    :cond_83
    const/4 v2, 0x0

    .line 91
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_84
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v9

    if-eqz v9, :cond_9d

    .line 92
    const-string v8, "SdpDatabase"

    const-string v9, "Error : DB is readonly. setSensitiveDBPolicy require write permission for DB"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_91} :catch_92

    goto :goto_11

    .line 109
    :catch_92
    move-exception v3

    .line 110
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    if-eqz v2, :cond_11

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_11

    .line 96
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_9d
    :try_start_9d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p2, p3, v9}, formSensitivePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "stmt":Ljava/lang/String;
    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 100
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "select count(*) from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 101
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_d3

    .line 102
    const/4 v9, 0x0

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-lez v9, :cond_d3

    .line 103
    const-string v9, "VACUUM"

    invoke-virtual {p1, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    :cond_d3
    if-eqz v2, :cond_d8

    .line 107
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_d8} :catch_92

    :cond_d8
    move v7, v8

    .line 108
    goto/16 :goto_11
.end method

.method public updateStateToDB(Landroid/database/sqlite/SQLiteDatabase;I)Z
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "state"    # I

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, updateStateToDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public updateStateToDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Z
    .registers 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "dbAlias"    # Ljava/lang/String;
    .param p3, "state"    # I

    .prologue
    const/4 v5, 0x0

    .line 199
    const/4 v0, 0x0

    .line 201
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez p1, :cond_d

    const-string v6, "SdpDatabase"

    const-string/jumbo v7, "updateStateToDB :: invalid DB"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_c
    :goto_c
    return v5

    .line 203
    :cond_d
    iget-object v6, p0, mAlias:Ljava/lang/String;

    invoke-direct {p0, v6}, getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v3

    .line 204
    .local v3, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v3, :cond_31

    .line 205
    const-string v6, "SdpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateStateToDB :: can\'t find engine "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mAlias:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 209
    :cond_31
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getState()I

    move-result v6

    if-eq v6, p3, :cond_65

    .line 210
    const-string v6, "SdpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateStateToDB :: invalid state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (current stat : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 216
    :cond_65
    :try_start_65
    const-string v6, "SdpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateSDPStateToDB called with dbalias = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sdpState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-nez p2, :cond_92

    const-string v1, ""

    .line 218
    .local v1, "dbaliasprefix":Ljava/lang/String;
    :goto_8c
    packed-switch p3, :pswitch_data_158

    .line 241
    :goto_8f
    const/4 v5, 0x1

    goto/16 :goto_c

    .line 217
    .end local v1    # "dbaliasprefix":Ljava/lang/String;
    :cond_92
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8c

    .line 220
    .restart local v1    # "dbaliasprefix":Ljava/lang/String;
    :pswitch_a6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pragma "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "sdp_locked;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_c4} :catch_c5

    goto :goto_8f

    .line 242
    .end local v1    # "dbaliasprefix":Ljava/lang/String;
    :catch_c5
    move-exception v2

    .line 243
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    if-eqz v0, :cond_c

    .line 245
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_c

    .line 223
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "dbaliasprefix":Ljava/lang/String;
    :pswitch_d0
    :try_start_d0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pragma "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "sdp_unlocked;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 227
    const/4 v4, 0x1

    .line 228
    .local v4, "rows":I
    :goto_ef
    if-lez v4, :cond_13d

    .line 229
    const-string v6, "SdpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calling next : pragma runoneconvert  in sdpState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pragma "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "sdp_run_one_convert"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 231
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_134

    .line 232
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 234
    :cond_134
    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 235
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_ef

    .line 237
    :cond_13d
    const-string v6, "SdpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DONE calling all pragma runoneconvert  in sdpState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_155} :catch_c5

    goto/16 :goto_8f

    .line 218
    nop

    :pswitch_data_158
    .packed-switch 0x1
        :pswitch_a6
        :pswitch_d0
    .end packed-switch
.end method
