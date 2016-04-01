.class Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DatabaseHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 3593
    # invokes: Lcom/android/server/accounts/AccountManagerService;->getDatabaseName(I)Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService;->access$4100(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 3594
    return-void
.end method

.method private addDebugTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3657
    # invokes: Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->createDebugTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->access$4200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3658
    return-void
.end method

.method private addLastSuccessfullAuthenticatedTimeColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3648
    const-string v0, "ALTER TABLE accounts ADD COLUMN last_password_entry_time_millis_epoch DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3650
    return-void
.end method

.method private addOldAccountNameColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3653
    const-string v0, "ALTER TABLE accounts ADD COLUMN previous_name"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3654
    return-void
.end method

.method private createAccountsDeletionTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3661
    const-string v0, " CREATE TRIGGER accountsDelete DELETE ON accounts BEGIN   DELETE FROM authtokens     WHERE accounts_id=OLD._id ;   DELETE FROM extras     WHERE accounts_id=OLD._id ;   DELETE FROM grants     WHERE accounts_id=OLD._id ; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3671
    return-void
.end method

.method private createGrantsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3674
    const-string v0, "CREATE TABLE grants (  accounts_id INTEGER NOT NULL, auth_token_type STRING NOT NULL,  uid INTEGER NOT NULL,  UNIQUE (accounts_id,auth_token_type,uid))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3680
    return-void
.end method

.method private createSharedAccountsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3640
    const-string v0, "CREATE TABLE shared_accounts ( _id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, type TEXT NOT NULL, UNIQUE(name,type))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3645
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3603
    const-string v0, "CREATE TABLE accounts ( _id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, type TEXT NOT NULL, password TEXT, previous_name TEXT, last_password_entry_time_millis_epoch INTEGER DEFAULT 0, UNIQUE(name,type))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3612
    const-string v0, "CREATE TABLE authtokens (  _id INTEGER PRIMARY KEY AUTOINCREMENT,  accounts_id INTEGER NOT NULL, type TEXT NOT NULL,  authtoken TEXT,  UNIQUE (accounts_id,type))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3619
    invoke-direct {p0, p1}, createGrantsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3621
    const-string v0, "CREATE TABLE extras ( _id INTEGER PRIMARY KEY AUTOINCREMENT, accounts_id INTEGER, key TEXT NOT NULL, value TEXT, UNIQUE(accounts_id,key))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3628
    const-string v0, "CREATE TABLE meta ( key TEXT PRIMARY KEY NOT NULL, value TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3632
    invoke-direct {p0, p1}, createSharedAccountsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3634
    invoke-direct {p0, p1}, createAccountsDeletionTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3636
    # invokes: Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->createDebugTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->access$4200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3637
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3732
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "AccountManagerService"

    const-string/jumbo v1, "opened database accounts.db"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3733
    :cond_11
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 3684
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "upgrade from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3686
    const/4 v0, 0x1

    if-ne p2, v0, :cond_28

    .line 3689
    add-int/lit8 p2, p2, 0x1

    .line 3692
    :cond_28
    const/4 v0, 0x2

    if-ne p2, v0, :cond_38

    .line 3693
    invoke-direct {p0, p1}, createGrantsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3694
    const-string v0, "DROP TRIGGER accountsDelete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3695
    invoke-direct {p0, p1}, createAccountsDeletionTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3696
    add-int/lit8 p2, p2, 0x1

    .line 3699
    :cond_38
    const/4 v0, 0x3

    if-ne p2, v0, :cond_42

    .line 3700
    const-string v0, "UPDATE accounts SET type = \'com.google\' WHERE type == \'com.google.GAIA\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3702
    add-int/lit8 p2, p2, 0x1

    .line 3705
    :cond_42
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4a

    .line 3706
    invoke-direct {p0, p1}, createSharedAccountsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3707
    add-int/lit8 p2, p2, 0x1

    .line 3710
    :cond_4a
    const/4 v0, 0x5

    if-ne p2, v0, :cond_52

    .line 3711
    invoke-direct {p0, p1}, addOldAccountNameColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3712
    add-int/lit8 p2, p2, 0x1

    .line 3715
    :cond_52
    const/4 v0, 0x6

    if-ne p2, v0, :cond_5a

    .line 3716
    invoke-direct {p0, p1}, addLastSuccessfullAuthenticatedTimeColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3717
    add-int/lit8 p2, p2, 0x1

    .line 3720
    :cond_5a
    const/4 v0, 0x7

    if-ne p2, v0, :cond_62

    .line 3721
    invoke-direct {p0, p1}, addDebugTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3722
    add-int/lit8 p2, p2, 0x1

    .line 3725
    :cond_62
    if-eq p2, p3, :cond_87

    .line 3726
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "failed to upgrade version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3728
    :cond_87
    return-void
.end method
