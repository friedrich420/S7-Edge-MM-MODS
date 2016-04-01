.class Lcom/android/server/LockSettingsStorage$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "locksettings.db"

.field private static final DATABASE_VERSION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LockSettingsDB"


# instance fields
.field private final mCallback:Lcom/android/server/LockSettingsStorage$Callback;

.field final synthetic this$0:Lcom/android/server/LockSettingsStorage;


# direct methods
.method public constructor <init>(Lcom/android/server/LockSettingsStorage;Landroid/content/Context;Lcom/android/server/LockSettingsStorage$Callback;)V
    .registers 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/android/server/LockSettingsStorage$Callback;

    .prologue
    .line 643
    iput-object p1, p0, this$0:Lcom/android/server/LockSettingsStorage;

    .line 644
    const-string/jumbo v0, "locksettings.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 645
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setWriteAheadLoggingEnabled(Z)V

    .line 646
    iput-object p3, p0, mCallback:Lcom/android/server/LockSettingsStorage$Callback;

    .line 647
    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 650
    const-string v0, "CREATE TABLE locksettings (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,user INTEGER,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 656
    return-void
.end method

.method private updateFingerPrintSetting(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 685
    const/4 v0, 0x0

    .line 687
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    const-string v1, "UPDATE locksettings SET value=? WHERE name=? AND value=?;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 688
    const/4 v1, 0x1

    const-wide/32 v2, 0x61000

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 689
    const/4 v1, 0x2

    const-string/jumbo v2, "lockscreen.password_type"

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 690
    const/4 v1, 0x3

    const-wide/32 v2, 0x11000

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 691
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 692
    const-string v1, "LockSettingsDB"

    const-string/jumbo v2, "updateFingerPrintSetting to 0x61000"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2d

    .line 694
    if-eqz v0, :cond_2c

    .line 695
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 697
    :cond_2c
    return-void

    .line 694
    :catchall_2d
    move-exception v1

    if-eqz v0, :cond_33

    .line 695
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_33
    throw v1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 660
    invoke-direct {p0, p1}, createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 661
    iget-object v0, p0, mCallback:Lcom/android/server/LockSettingsStorage$Callback;

    invoke-interface {v0, p1}, Lcom/android/server/LockSettingsStorage$Callback;->initialize(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 662
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "currentVersion"    # I

    .prologue
    .line 666
    move v0, p2

    .line 667
    .local v0, "upgradeVersion":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 669
    const/4 v0, 0x2

    .line 673
    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 674
    invoke-direct {p0, p1}, updateFingerPrintSetting(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 675
    const/4 v0, 0x3

    .line 678
    :cond_c
    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    .line 679
    const-string v1, "LockSettingsDB"

    const-string v2, "Failed to upgrade database!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_16
    return-void
.end method
