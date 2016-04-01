.class Lcom/android/server/LpnetManagerService$DBManager;
.super Ljava/lang/Object;
.source "LpnetManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LpnetManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DBManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LpnetManagerService$DBManager$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final COMMA_SEP:Ljava/lang/String; = ","

.field private static final DB_CREATE_LIST:Ljava/lang/String; = " CREATE TABLE AppFreezer (id INTEGER PRIMARY KEY AUTOINCREMENT,  package_name TEXT NOT NULL,  isDefaultFreezed INTEGER,  isSMFreezed INTEGER,  isUserForceStopped INTEGER,  lastUsedTime INTEGER,  versionMgmt TEXT,  extras TEXT);"

.field private static final DB_NAME:Ljava/lang/String; = "sm.db"

.field private static final DB_PATH:Ljava/lang/String; = "/data/data/com.samsung.android.sm.provider/databases/"

.field private static final DB_TABLE:Ljava/lang/String; = "AppFreezer"

.field private static final DB_VERSION:I = 0x1

.field private static final INT_TYPE:Ljava/lang/String; = " INTEGER"

.field private static final NOT_NULL:Ljava/lang/String; = " NOT NULL"

.field private static final TEXT_TYPE:Ljava/lang/String; = " TEXT"


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/android/server/LpnetManagerService$DBManager$DatabaseHelper;

.field final synthetic this$0:Lcom/android/server/LpnetManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LpnetManagerService;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2280
    iput-object p1, p0, this$0:Lcom/android/server/LpnetManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2281
    iput-object p2, p0, mCtx:Landroid/content/Context;

    .line 2282
    return-void
.end method


# virtual methods
.method public dbAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 15
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isDefaultFreezed"    # Ljava/lang/String;
    .param p3, "isSmFreezed"    # Ljava/lang/String;
    .param p4, "isUserForceStopped"    # Ljava/lang/String;
    .param p5, "lastUsedTime"    # Ljava/lang/String;
    .param p6, "versionMgmt"    # Ljava/lang/String;
    .param p7, "extras"    # Ljava/lang/String;

    .prologue
    .line 2346
    const-wide/16 v2, -0x1

    .line 2348
    .local v2, "ret":J
    invoke-virtual {p0, p1}, dbRead(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2349
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_17

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_17

    .line 2350
    invoke-virtual/range {p0 .. p7}, dbUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    int-to-long v2, v4

    .line 2383
    :goto_13
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2384
    return-wide v2

    .line 2354
    :cond_17
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2355
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "package_name"

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2356
    iget-object v4, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/LpnetManagerService;->access$1100(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 2357
    const-string/jumbo v4, "isDefaultFreezed"

    const-string v5, "1"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    :goto_36
    iget-object v4, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mPkgLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/LpnetManagerService;->access$700(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2362
    :try_start_3d
    iget-object v4, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/LpnetManagerService;->access$800(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 2363
    const-string/jumbo v4, "isSMFreezed"

    const-string v6, "1"

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2367
    :goto_51
    monitor-exit v5
    :try_end_52
    .catchall {:try_start_3d .. :try_end_52} :catchall_9e

    .line 2369
    const-string/jumbo v4, "isUserForceStopped"

    invoke-virtual {v1, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2370
    const-string/jumbo v4, "lastUsedTime"

    invoke-virtual {v1, v4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2371
    const-string/jumbo v4, "versionMgmt"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2372
    iget-object v4, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mPkgLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/LpnetManagerService;->access$700(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2373
    :try_start_6d
    iget-object v4, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mSPCMPackages:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/LpnetManagerService;->access$900(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 2374
    const-string/jumbo v4, "extras"

    const-string v6, "1"

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2378
    :goto_81
    monitor-exit v5
    :try_end_82
    .catchall {:try_start_6d .. :try_end_82} :catchall_aa

    .line 2381
    iget-object v4, p0, mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "AppFreezer"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_13

    .line 2359
    :cond_8c
    const-string/jumbo v4, "isDefaultFreezed"

    const-string v5, "0"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    .line 2365
    :cond_95
    :try_start_95
    const-string/jumbo v4, "isSMFreezed"

    const-string v6, "0"

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    .line 2367
    :catchall_9e
    move-exception v4

    monitor-exit v5
    :try_end_a0
    .catchall {:try_start_95 .. :try_end_a0} :catchall_9e

    throw v4

    .line 2376
    :cond_a1
    :try_start_a1
    const-string/jumbo v4, "extras"

    const-string v6, ""

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81

    .line 2378
    :catchall_aa
    move-exception v4

    monitor-exit v5
    :try_end_ac
    .catchall {:try_start_a1 .. :try_end_ac} :catchall_aa

    throw v4
.end method

.method public dbClose()V
    .registers 2

    .prologue
    .line 2333
    iget-object v0, p0, mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2334
    iget-object v0, p0, mDbHelper:Lcom/android/server/LpnetManagerService$DBManager$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/LpnetManagerService$DBManager$DatabaseHelper;->close()V

    .line 2335
    return-void
.end method

.method public dbDelete(Ljava/lang/String;)J
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2339
    const-wide/16 v0, -0x1

    .line 2340
    .local v0, "ret":J
    iget-object v2, p0, mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "AppFreezer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package_name=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v0, v2

    .line 2341
    return-wide v0
.end method

.method public dbOpen()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2324
    const-string v0, "/data/data/com.samsung.android.sm.provider/databases/sm.db"

    .line 2325
    .local v0, "myPath":Ljava/lang/String;
    new-instance v1, Lcom/android/server/LpnetManagerService$DBManager$DatabaseHelper;

    iget-object v2, p0, mCtx:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/LpnetManagerService$DBManager$DatabaseHelper;-><init>(Lcom/android/server/LpnetManagerService$DBManager;Landroid/content/Context;)V

    iput-object v1, p0, mDbHelper:Lcom/android/server/LpnetManagerService$DBManager$DatabaseHelper;

    .line 2326
    iget-object v1, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/LpnetManagerService;->access$4700(Lcom/android/server/LpnetManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.permission.READ_SM_DATA"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    iget-object v1, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/LpnetManagerService;->access$4700(Lcom/android/server/LpnetManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.permission.WRITE_SM_DATA"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2328
    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 2330
    return-void
.end method

.method public dbRead(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2416
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "package_name"

    aput-object v0, v2, v6

    const-string/jumbo v0, "isDefaultFreezed"

    aput-object v0, v2, v7

    const/4 v0, 0x2

    const-string/jumbo v1, "isSMFreezed"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "isUserForceStopped"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "lastUsedTime"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string/jumbo v1, "versionMgmt"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string/jumbo v1, "extras"

    aput-object v1, v2, v0

    .line 2427
    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v3, "package_name=?"

    .line 2429
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v6

    .line 2432
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "AppFreezer"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2433
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_44

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2434
    :cond_44
    return-object v8
.end method

.method public dbReadAll()Landroid/database/Cursor;
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 2444
    iget-object v0, p0, mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "AppFreezer"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public dbUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isDefaultFreezed"    # Ljava/lang/String;
    .param p3, "isSmFreezed"    # Ljava/lang/String;
    .param p4, "isUserForceStopped"    # Ljava/lang/String;
    .param p5, "lastUsedTime"    # Ljava/lang/String;
    .param p6, "versionMgmt"    # Ljava/lang/String;
    .param p7, "extras"    # Ljava/lang/String;

    .prologue
    .line 2390
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2391
    .local v2, "values":Landroid/content/ContentValues;
    if-eqz p1, :cond_d

    const-string/jumbo v3, "package_name"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2392
    :cond_d
    if-eqz p2, :cond_15

    const-string/jumbo v3, "isDefaultFreezed"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2393
    :cond_15
    if-eqz p3, :cond_1d

    const-string/jumbo v3, "isSMFreezed"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2394
    :cond_1d
    if-eqz p4, :cond_25

    const-string/jumbo v3, "isUserForceStopped"

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    :cond_25
    if-eqz p5, :cond_2d

    const-string/jumbo v3, "lastUsedTime"

    invoke-virtual {v2, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2396
    :cond_2d
    if-eqz p6, :cond_35

    const-string/jumbo v3, "versionMgmt"

    invoke-virtual {v2, v3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2397
    :cond_35
    if-eqz p7, :cond_3d

    const-string/jumbo v3, "extras"

    invoke-virtual {v2, v3, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2400
    :cond_3d
    const-string/jumbo v0, "package_name=?"

    .line 2402
    .local v0, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 2405
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "AppFreezer"

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public dbUpgrade(II)V
    .registers 5
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .prologue
    .line 2448
    iget-object v0, p0, mDbHelper:Lcom/android/server/LpnetManagerService$DBManager$DatabaseHelper;

    iget-object v1, p0, mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/LpnetManagerService$DBManager$DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 2449
    return-void
.end method
