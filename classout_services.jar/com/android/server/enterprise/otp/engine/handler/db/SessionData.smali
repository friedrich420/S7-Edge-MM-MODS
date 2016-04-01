.class public Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;
.super Ljava/lang/Object;
.source "SessionData.java"

# interfaces
.implements Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;


# static fields
.field public static final COLUMN_CURRENT_STEP:Ljava/lang/String; = "current_step"

.field public static final COLUMN_NEXT_STEP:Ljava/lang/String; = "next_step"

.field public static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final COLUMN_SESSION_ID:Ljava/lang/String; = "session_id"

.field public static final COLUMN_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final CREATE_TABLE:Ljava/lang/String; = "create table SessionTable(session_id varchar, package_name varchar primary key, current_step integer, next_step integer, timestamp integer);"

.field public static final TABLE_NAME:Ljava/lang/String; = "SessionTable"


# instance fields
.field public mCurrStep:I

.field public mNextStep:I

.field public mPkgName:Ljava/lang/String;

.field public mSessionId:Ljava/lang/String;

.field public mTimestamp:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addEntry(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 35
    const-string v3, "SessionData::addEntry Enter"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, "ret":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 39
    .local v2, "row":Landroid/content/ContentValues;
    iget-object v3, p0, mPkgName:Ljava/lang/String;

    if-eqz v3, :cond_17

    iget-object v3, p0, mPkgName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_32

    .line 40
    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SessionData::addEntry invalid package name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 41
    sget v3, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_TOKENID_INVALID:I

    .line 59
    :goto_31
    return v3

    .line 44
    :cond_32
    const-string/jumbo v3, "session_id"

    iget-object v4, p0, mSessionId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string/jumbo v3, "package_name"

    iget-object v4, p0, mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string/jumbo v3, "current_step"

    iget v4, p0, mCurrStep:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    const-string/jumbo v3, "next_step"

    iget v4, p0, mNextStep:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 48
    const-string/jumbo v3, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 51
    :try_start_68
    const-string v3, "SessionTable"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_6e
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_68 .. :try_end_6e} :catch_76

    move-result-wide v4

    long-to-int v1, v4

    .line 56
    :goto_70
    const/4 v3, -0x1

    if-ne v1, v3, :cond_92

    .line 57
    sget v3, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_NO_ROW_INSERTED:I

    goto :goto_31

    .line 52
    :catch_76
    move-exception v0

    .line 53
    .local v0, "e":Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SessionData::addEntry Db constraint "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_70

    .line 59
    .end local v0    # "e":Landroid/database/sqlite/SQLiteConstraintException;
    :cond_92
    const/4 v3, 0x0

    goto :goto_31
.end method

.method public deleteEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .registers 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 93
    const-string v4, "SessionData::deleteEntry Enter"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "val":I
    const-string/jumbo v2, "package_name = ?"

    .line 96
    .local v2, "whereClause":Ljava/lang/String;
    new-array v1, v5, [Ljava/lang/String;

    aput-object p2, v1, v3

    .line 98
    .local v1, "whereArgs":[Ljava/lang/String;
    const-string v4, "SessionTable"

    invoke-virtual {p1, v4, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 100
    if-ne v0, v5, :cond_18

    .line 104
    :goto_17
    return v3

    .line 103
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SessionData::deleteEntry no row deleted for PkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 104
    sget v3, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_NO_ROW_DELETED:I

    goto :goto_17
.end method

.method public getEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;
    .registers 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 109
    const-string v0, "SessionData::getEntry Enter"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 110
    const-string/jumbo v3, "package_name = ?"

    .line 111
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 112
    .local v4, "whereArgs":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 113
    .local v9, "data":Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;
    const/4 v8, 0x0

    .line 115
    .local v8, "c":Landroid/database/Cursor;
    if-eqz p2, :cond_18

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_30

    .line 116
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionData::getEntry wrong Package Name provided = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    move-object v10, v9

    .line 141
    .end local v9    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;
    .local v10, "data":Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;
    :goto_2f
    return-object v10

    .line 121
    .end local v10    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;
    .restart local v9    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;
    :cond_30
    :try_start_30
    const-string v1, "SessionTable"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 123
    if-eqz v8, :cond_43

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_60

    .line 124
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionData::getEntry No row in table for pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_30 .. :try_end_59} :catchall_a9

    .line 136
    :goto_59
    if-eqz v8, :cond_5e

    .line 137
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5e
    move-object v10, v9

    .line 141
    .end local v9    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;
    .restart local v10    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;
    goto :goto_2f

    .line 127
    .end local v10    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;
    .restart local v9    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;
    :cond_60
    :try_start_60
    new-instance v10, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;

    invoke-direct {v10}, <init>()V
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_a9

    .line 128
    .end local v9    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;
    .restart local v10    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;
    :try_start_65
    const-string/jumbo v0, "session_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, mSessionId:Ljava/lang/String;

    .line 129
    const-string/jumbo v0, "package_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, mPkgName:Ljava/lang/String;

    .line 130
    const-string/jumbo v0, "current_step"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, mCurrStep:I

    .line 131
    const-string/jumbo v0, "next_step"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, mNextStep:I

    .line 132
    const-string/jumbo v0, "timestamp"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v10, mTimestamp:J
    :try_end_a7
    .catchall {:try_start_65 .. :try_end_a7} :catchall_b0

    move-object v9, v10

    .end local v10    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;
    .restart local v9    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;
    goto :goto_59

    .line 136
    :catchall_a9
    move-exception v0

    :goto_aa
    if-eqz v8, :cond_af

    .line 137
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_af
    throw v0

    .line 136
    .end local v9    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;
    .restart local v10    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;
    :catchall_b0
    move-exception v0

    move-object v9, v10

    .end local v10    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;
    .restart local v9    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;
    goto :goto_aa
.end method

.method public updateEntry(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x0

    .line 64
    const-string v5, "SessionData::updateEntry Enter"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 66
    iget-object v5, p0, mPkgName:Ljava/lang/String;

    if-eqz v5, :cond_12

    iget-object v5, p0, mPkgName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1a

    .line 67
    :cond_12
    const-string v4, "SessionData::updateEntry mPkgName is null"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 68
    sget v4, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_PACKAGE_NAME_INVALID:I

    .line 88
    :cond_19
    :goto_19
    return v4

    .line 71
    :cond_1a
    const-string/jumbo v3, "package_name = ?"

    .line 72
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    iget-object v5, p0, mPkgName:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 74
    .local v2, "whereArgs":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 75
    .local v1, "row":Landroid/content/ContentValues;
    const-string/jumbo v5, "session_id"

    iget-object v6, p0, mSessionId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v5, "current_step"

    iget v6, p0, mCurrStep:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    const-string/jumbo v5, "next_step"

    iget v6, p0, mNextStep:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    const-string/jumbo v5, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 81
    const-string v5, "SessionTable"

    const-string/jumbo v6, "package_name = ?"

    invoke-virtual {p1, v5, v1, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 83
    .local v0, "retval":I
    if-nez v0, :cond_19

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SessionData::updateEntry no row updated for PkgName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mPkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 85
    sget v4, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_NO_ROW_FOUND:I

    goto :goto_19
.end method
