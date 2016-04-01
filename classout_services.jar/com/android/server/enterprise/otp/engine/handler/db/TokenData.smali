.class public Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
.super Ljava/lang/Object;
.source "TokenData.java"

# interfaces
.implements Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;


# static fields
.field public static final COLUMN_ALGO_PARAMS:Ljava/lang/String; = "algo_params"

.field public static final COLUMN_ALGO_TYPE:Ljava/lang/String; = "algo_type"

.field public static final COLUMN_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final COLUMN_TOKEN_ID:Ljava/lang/String; = "token_id"

.field public static final CREATE_TABLE:Ljava/lang/String; = "create table TokenTable(token_id varchar primary key, display_name varchar, algo_type integer, algo_params varchar);"

.field public static final TABLE_NAME:Ljava/lang/String; = "TokenTable"


# instance fields
.field mAlgoParams:Ljava/lang/String;

.field mAlgoType:I

.field mDisplayName:Ljava/lang/String;

.field mTokenId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addEntry(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 122
    const-string v3, "TokenData::addEntry Enter"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 123
    const/4 v1, 0x0

    .line 124
    .local v1, "ret":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 126
    .local v2, "row":Landroid/content/ContentValues;
    iget-object v3, p0, mTokenId:Ljava/lang/String;

    if-eqz v3, :cond_17

    iget-object v3, p0, mTokenId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_32

    .line 127
    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TokenData::addEntry wrong token ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mTokenId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 128
    sget v3, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_TOKENID_INVALID:I

    .line 145
    :goto_31
    return v3

    .line 131
    :cond_32
    const-string/jumbo v3, "token_id"

    iget-object v4, p0, mTokenId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v3, "display_name"

    iget-object v4, p0, mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v3, "algo_type"

    iget v4, p0, mAlgoType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const-string v3, "algo_params"

    iget-object v4, p0, mAlgoParams:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :try_start_54
    const-string v3, "TokenTable"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_5a
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_54 .. :try_end_5a} :catch_62

    move-result-wide v4

    long-to-int v1, v4

    .line 142
    :goto_5c
    const/4 v3, -0x1

    if-ne v1, v3, :cond_7e

    .line 143
    sget v3, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_NO_ROW_INSERTED:I

    goto :goto_31

    .line 138
    :catch_62
    move-exception v0

    .line 139
    .local v0, "e":Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TokenData::addEntry Db constraint "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_5c

    .line 145
    .end local v0    # "e":Landroid/database/sqlite/SQLiteConstraintException;
    :cond_7e
    const/4 v3, 0x0

    goto :goto_31
.end method

.method public deleteEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .registers 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tokenId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 66
    const-string v4, "TokenData::deleteEntry Enter"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "val":I
    const-string/jumbo v2, "token_id = ?"

    .line 69
    .local v2, "whereClause":Ljava/lang/String;
    new-array v1, v5, [Ljava/lang/String;

    aput-object p2, v1, v3

    .line 73
    .local v1, "whereArgs":[Ljava/lang/String;
    const-string v4, "TokenTable"

    invoke-virtual {p1, v4, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 75
    if-ne v0, v5, :cond_18

    .line 79
    :goto_17
    return v3

    .line 78
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TokenData::deleteEntry no row deleted for tokenId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 79
    sget v3, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_NO_ROW_DELETED:I

    goto :goto_17
.end method

.method public getAllEntries(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .registers 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    const-string v0, "TokenData::getAllEntries Enter"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 150
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v8, "accountInfo":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;>;"
    const/4 v9, 0x0

    .line 154
    .local v9, "c":Landroid/database/Cursor;
    :try_start_b
    const-string v1, "TokenTable"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 156
    if-eqz v9, :cond_20

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_48

    .line 157
    :cond_20
    const-string v0, "TokenData::getAllEntries Table is empty"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_8f

    .line 158
    const/4 v8, 0x0

    .line 175
    :cond_26
    if-eqz v9, :cond_2b

    .line 176
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TokenData::getAllEntries Exit [ret = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 180
    return-object v8

    .line 161
    :cond_48
    :try_start_48
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 162
    :goto_4b
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_26

    .line 163
    new-instance v10, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;

    invoke-direct {v10}, <init>()V

    .line 164
    .local v10, "data":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    const-string/jumbo v0, "token_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, mTokenId:Ljava/lang/String;

    .line 165
    const-string v0, "algo_type"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, mAlgoType:I

    .line 166
    const-string v0, "algo_params"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, mAlgoParams:Ljava/lang/String;

    .line 167
    const-string/jumbo v0, "display_name"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, mDisplayName:Ljava/lang/String;

    .line 169
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 170
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8e
    .catchall {:try_start_48 .. :try_end_8e} :catchall_8f

    goto :goto_4b

    .line 175
    .end local v10    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    :catchall_8f
    move-exception v0

    if-eqz v9, :cond_95

    .line 176
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_95
    throw v0
.end method

.method public getEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;
    .registers 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tokenId"    # Ljava/lang/String;

    .prologue
    .line 84
    const-string v0, "TokenData::getEntry Enter"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 85
    const-string/jumbo v3, "token_id = ?"

    .line 86
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 89
    .local v4, "whereArgs":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 90
    .local v9, "data":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    const/4 v8, 0x0

    .line 92
    .local v8, "c":Landroid/database/Cursor;
    if-eqz p2, :cond_18

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_30

    .line 93
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TokenData::getEntry wrong tokenId provided TokenID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    move-object v10, v9

    .line 117
    .end local v9    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    .local v10, "data":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    :goto_2f
    return-object v10

    .line 98
    .end local v10    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    .restart local v9    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    :cond_30
    :try_start_30
    const-string v1, "TokenTable"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 100
    if-eqz v8, :cond_43

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_60

    .line 101
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TokenData::getEntry No row in table for TokenID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_30 .. :try_end_59} :catchall_99

    .line 112
    :goto_59
    if-eqz v8, :cond_5e

    .line 113
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5e
    move-object v10, v9

    .line 117
    .end local v9    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    .restart local v10    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    goto :goto_2f

    .line 104
    .end local v10    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    .restart local v9    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    :cond_60
    :try_start_60
    new-instance v10, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;

    invoke-direct {v10}, <init>()V
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_99

    .line 105
    .end local v9    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    .restart local v10    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    :try_start_65
    const-string/jumbo v0, "token_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, mTokenId:Ljava/lang/String;

    .line 106
    const-string v0, "algo_type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, mAlgoType:I

    .line 107
    const-string v0, "algo_params"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, mAlgoParams:Ljava/lang/String;

    .line 108
    const-string/jumbo v0, "display_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, mDisplayName:Ljava/lang/String;
    :try_end_97
    .catchall {:try_start_65 .. :try_end_97} :catchall_a0

    move-object v9, v10

    .end local v10    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    .restart local v9    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    goto :goto_59

    .line 112
    :catchall_99
    move-exception v0

    :goto_9a
    if-eqz v8, :cond_9f

    .line 113
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9f
    throw v0

    .line 112
    .end local v9    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    .restart local v10    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    :catchall_a0
    move-exception v0

    move-object v9, v10

    .end local v10    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    .restart local v9    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    goto :goto_9a
.end method

.method public updateEntry(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x0

    .line 36
    const-string v5, "TokenData::updateEntry Enter"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 38
    iget-object v5, p0, mTokenId:Ljava/lang/String;

    if-eqz v5, :cond_12

    iget-object v5, p0, mTokenId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1a

    .line 39
    :cond_12
    const-string v4, "TokenData::updateEntry tokenId is null"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 40
    sget v4, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_TOKENID_INVALID:I

    .line 61
    :cond_19
    :goto_19
    return v4

    .line 43
    :cond_1a
    const-string/jumbo v3, "token_id = ?"

    .line 44
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    iget-object v5, p0, mTokenId:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 48
    .local v2, "whereArgs":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 49
    .local v1, "row":Landroid/content/ContentValues;
    const-string/jumbo v5, "token_id"

    iget-object v6, p0, mTokenId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string/jumbo v5, "display_name"

    iget-object v6, p0, mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v5, "algo_params"

    iget-object v6, p0, mAlgoParams:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v5, "algo_type"

    iget v6, p0, mAlgoType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    const-string v5, "TokenTable"

    const-string/jumbo v6, "token_id = ?"

    invoke-virtual {p1, v5, v1, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 56
    .local v0, "retval":I
    if-nez v0, :cond_19

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TokenData::updateEntry no row updated for tokenId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mTokenId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 58
    sget v4, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_NO_ROW_FOUND:I

    goto :goto_19
.end method
