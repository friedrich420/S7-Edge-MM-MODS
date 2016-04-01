.class public Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
.super Ljava/lang/Object;
.source "PolicyData.java"

# interfaces
.implements Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;


# static fields
.field public static final COLOUMN_KEY_CURRENT_TRANSACTIONS:Ljava/lang/String; = "current_number_of_transactions"

.field public static final COLOUMN_KEY_EXPIRY_DATE:Ljava/lang/String; = "expiry_date"

.field public static final COLOUMN_KEY_START_DATE:Ljava/lang/String; = "start_date"

.field public static final COLOUMN_KEY_TRANSACTIONS:Ljava/lang/String; = "number_of_transactions"

.field public static final COLOUMN_PIN_ENCODING:Ljava/lang/String; = "encoding"

.field public static final COLOUMN_PIN_MAX_FAILED_ATTEMPTS:Ljava/lang/String; = "max_failed_attempts"

.field public static final COLOUMN_PIN_MAX_LENGTH:Ljava/lang/String; = "max_length"

.field public static final COLOUMN_PIN_MIN_LENGTH:Ljava/lang/String; = "min_length"

.field public static final COLOUMN_PIN_USAGE_MODE:Ljava/lang/String; = "pin_usage_mode"

.field public static final COLUMN_TOKEN_ID:Ljava/lang/String; = "token_id"

.field public static final CREATE_TABLE:Ljava/lang/String; = "create table PolicyTable(token_id varchar primary key, pin_usage_mode varchar, max_failed_attempts integer,min_length integer default 0, max_length integer, encoding varchar, start_date varchar, expiry_date varchar, number_of_transactions integer, current_number_of_transactions integer default 0);"

.field public static final TABLE_NAME:Ljava/lang/String; = "PolicyTable"


# instance fields
.field public mCurrentNoOfTransactions:I

.field public mExpiryDate:Ljava/lang/String;

.field public mMaxFailedAttempts:I

.field public mMaxLength:I

.field public mMinLength:I

.field public mNumberOfTransactions:I

.field public mPinEncoding:Ljava/lang/String;

.field public mPinUsageMode:Ljava/lang/String;

.field public mStartDate:Ljava/lang/String;

.field mTokenId:Ljava/lang/String;


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
    .registers 15
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v12, 0x0

    .line 148
    const-string v0, "PolicyData::addEntry Enter"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 149
    const/4 v9, 0x0

    .line 150
    .local v9, "ret":I
    const/4 v8, 0x0

    .line 151
    .local v8, "c":Landroid/database/Cursor;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 152
    .local v10, "row":Landroid/content/ContentValues;
    const-string/jumbo v3, "token_id = ?"

    .line 153
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, mTokenId:Ljava/lang/String;

    aput-object v0, v4, v12

    .line 157
    .local v4, "whereArgs":[Ljava/lang/String;
    iget-object v0, p0, mTokenId:Ljava/lang/String;

    if-eqz v0, :cond_23

    iget-object v0, p0, mTokenId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3e

    .line 158
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PolicyData::addEntry wrong token ID generated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mTokenId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 159
    sget v0, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_TOKENID_INVALID:I

    .line 190
    :goto_3d
    return v0

    .line 163
    :cond_3e
    :try_start_3e
    const-string v1, "PolicyTable"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 165
    if-eqz v8, :cond_51

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_da

    .line 166
    :cond_51
    const-string/jumbo v0, "token_id"

    iget-object v1, p0, mTokenId:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string/jumbo v0, "pin_usage_mode"

    iget-object v1, p0, mPinUsageMode:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string/jumbo v0, "max_failed_attempts"

    iget v1, p0, mMaxFailedAttempts:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    const-string/jumbo v0, "min_length"

    iget v1, p0, mMinLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const-string/jumbo v0, "max_length"

    iget v1, p0, mMaxLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    const-string/jumbo v0, "encoding"

    iget-object v1, p0, mPinEncoding:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v0, "start_date"

    iget-object v1, p0, mStartDate:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v0, "expiry_date"

    iget-object v1, p0, mExpiryDate:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string/jumbo v0, "number_of_transactions"

    iget v1, p0, mNumberOfTransactions:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    const-string v0, "PolicyTable"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    long-to-int v11, v0

    .line 177
    .local v11, "val":I
    const/4 v0, -0x1

    if-ne v11, v0, :cond_b6

    .line 178
    sget v9, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_TOKENID_INVALID:I
    :try_end_b6
    .catchall {:try_start_3e .. :try_end_b6} :catchall_f5

    .line 185
    .end local v11    # "val":I
    :cond_b6
    :goto_b6
    if-eqz v8, :cond_bb

    .line 186
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_bb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PolicyData::addEntry Exit [ret = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    move v0, v12

    .line 190
    goto/16 :goto_3d

    .line 180
    :cond_da
    :try_start_da
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PolicyData::addEntry Token already exist TokenID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mTokenId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 181
    sget v9, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_TOKENID_ALREADY_EXISTS:I
    :try_end_f4
    .catchall {:try_start_da .. :try_end_f4} :catchall_f5

    goto :goto_b6

    .line 185
    :catchall_f5
    move-exception v0

    if-eqz v8, :cond_fb

    .line 186
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_fb
    throw v0
.end method

.method public deleteEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .registers 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tokenId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 82
    const-string v4, "PolicyData::deleteEntry Enter"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "val":I
    const-string/jumbo v2, "token_id = ?"

    .line 85
    .local v2, "whereClause":Ljava/lang/String;
    new-array v1, v5, [Ljava/lang/String;

    aput-object p2, v1, v3

    .line 89
    .local v1, "whereArgs":[Ljava/lang/String;
    const-string v4, "PolicyTable"

    invoke-virtual {p1, v4, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 91
    if-ne v0, v5, :cond_18

    .line 95
    :goto_17
    return v3

    .line 94
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PolicyData::deleteEntry no row deleted for TokenId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 95
    sget v3, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_NO_ROW_DELETED:I

    goto :goto_17
.end method

.method public getEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;
    .registers 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tokenId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 100
    const-string v1, "PolicyData::getEntry Enter"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 102
    const-string/jumbo v3, "token_id = ?"

    .line 103
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v4, v1

    .line 106
    .local v4, "whereArgs":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 107
    .local v8, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 109
    .local v9, "data":Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
    if-eqz p2, :cond_19

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_30

    .line 110
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PolicyData::getEntry wrong tokenId provided TokenID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 143
    :goto_2f
    return-object v0

    .line 115
    :cond_30
    :try_start_30
    const-string v1, "PolicyTable"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 117
    if-eqz v8, :cond_43

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_40
    .catchall {:try_start_30 .. :try_end_40} :catchall_d4

    move-result v0

    if-nez v0, :cond_4a

    .line 138
    :cond_43
    :goto_43
    if-eqz v8, :cond_48

    .line 139
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_48
    move-object v0, v9

    .line 143
    goto :goto_2f

    .line 122
    :cond_4a
    :try_start_4a
    new-instance v10, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;

    invoke-direct {v10}, <init>()V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_d4

    .line 123
    .end local v9    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
    .local v10, "data":Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
    :try_start_4f
    const-string/jumbo v0, "token_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, mTokenId:Ljava/lang/String;

    .line 124
    const-string/jumbo v0, "pin_usage_mode"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, mPinUsageMode:Ljava/lang/String;

    .line 125
    const-string/jumbo v0, "max_failed_attempts"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, mMaxFailedAttempts:I

    .line 127
    const-string/jumbo v0, "min_length"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, mMinLength:I

    .line 128
    const-string/jumbo v0, "max_length"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, mMaxLength:I

    .line 129
    const-string/jumbo v0, "encoding"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, mPinEncoding:Ljava/lang/String;

    .line 130
    const-string/jumbo v0, "start_date"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, mStartDate:Ljava/lang/String;

    .line 131
    const-string/jumbo v0, "expiry_date"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, mExpiryDate:Ljava/lang/String;

    .line 132
    const-string/jumbo v0, "number_of_transactions"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, mNumberOfTransactions:I

    .line 133
    const-string/jumbo v0, "current_number_of_transactions"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, mCurrentNoOfTransactions:I
    :try_end_d1
    .catchall {:try_start_4f .. :try_end_d1} :catchall_db

    move-object v9, v10

    .end local v10    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
    .restart local v9    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
    goto/16 :goto_43

    .line 138
    :catchall_d4
    move-exception v0

    :goto_d5
    if-eqz v8, :cond_da

    .line 139
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_da
    throw v0

    .line 138
    .end local v9    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
    .restart local v10    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
    :catchall_db
    move-exception v0

    move-object v9, v10

    .end local v10    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
    .restart local v9    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
    goto :goto_d5
.end method

.method public updateEntry(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x0

    .line 47
    const-string v5, "PolicyData::updateEntry Enter"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 49
    iget-object v5, p0, mTokenId:Ljava/lang/String;

    if-eqz v5, :cond_12

    iget-object v5, p0, mTokenId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1a

    .line 50
    :cond_12
    const-string v4, "PolicyData::updateEntry tokenId is null"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 51
    sget v4, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_TOKENID_INVALID:I

    .line 77
    :cond_19
    :goto_19
    return v4

    .line 54
    :cond_1a
    const-string/jumbo v3, "token_id = ?"

    .line 55
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    iget-object v5, p0, mTokenId:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 59
    .local v2, "whereArgs":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 60
    .local v1, "row":Landroid/content/ContentValues;
    const-string/jumbo v5, "token_id"

    iget-object v6, p0, mTokenId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string/jumbo v5, "pin_usage_mode"

    iget-object v6, p0, mPinUsageMode:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string/jumbo v5, "max_failed_attempts"

    iget v6, p0, mMaxFailedAttempts:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    const-string/jumbo v5, "min_length"

    iget v6, p0, mMinLength:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    const-string/jumbo v5, "max_length"

    iget v6, p0, mMaxLength:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    const-string/jumbo v5, "encoding"

    iget-object v6, p0, mPinEncoding:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string/jumbo v5, "start_date"

    iget-object v6, p0, mStartDate:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string/jumbo v5, "expiry_date"

    iget-object v6, p0, mExpiryDate:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string/jumbo v5, "number_of_transactions"

    iget v6, p0, mNumberOfTransactions:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    const-string/jumbo v5, "current_number_of_transactions"

    iget v6, p0, mCurrentNoOfTransactions:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    const-string v5, "PolicyTable"

    const-string/jumbo v6, "token_id = ?"

    invoke-virtual {p1, v5, v1, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 73
    .local v0, "retval":I
    if-nez v0, :cond_19

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PolicyData::updateEntry no row updated for tokenId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mTokenId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 75
    sget v4, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_NO_ROW_FOUND:I

    goto/16 :goto_19
.end method
