.class Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;
.super Ljava/lang/Object;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugDbHelper"
.end annotation


# static fields
.field private static ACTION_ACCOUNT_ADD:Ljava/lang/String;

.field private static ACTION_ACCOUNT_REMOVE:Ljava/lang/String;

.field private static ACTION_ACCOUNT_RENAME:Ljava/lang/String;

.field private static ACTION_AUTHENTICATOR_REMOVE:Ljava/lang/String;

.field private static ACTION_CALLED_ACCOUNT_ADD:Ljava/lang/String;

.field private static ACTION_CALLED_ACCOUNT_REMOVE:Ljava/lang/String;

.field private static ACTION_CLEAR_PASSWORD:Ljava/lang/String;

.field private static ACTION_SET_PASSWORD:Ljava/lang/String;

.field private static ACTION_TYPE:Ljava/lang/String;

.field private static CALLER_UID:Ljava/lang/String;

.field private static KEY:Ljava/lang/String;

.field private static TABLE_DEBUG:Ljava/lang/String;

.field private static TABLE_NAME:Ljava/lang/String;

.field private static TIMESTAMP:Ljava/lang/String;

.field private static dateFromat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3468
    const-string/jumbo v0, "debug_table"

    sput-object v0, TABLE_DEBUG:Ljava/lang/String;

    .line 3471
    const-string v0, "action_type"

    sput-object v0, ACTION_TYPE:Ljava/lang/String;

    .line 3472
    const-string/jumbo v0, "time"

    sput-object v0, TIMESTAMP:Ljava/lang/String;

    .line 3473
    const-string v0, "caller_uid"

    sput-object v0, CALLER_UID:Ljava/lang/String;

    .line 3474
    const-string/jumbo v0, "table_name"

    sput-object v0, TABLE_NAME:Ljava/lang/String;

    .line 3475
    const-string/jumbo v0, "primary_key"

    sput-object v0, KEY:Ljava/lang/String;

    .line 3480
    const-string v0, "action_set_password"

    sput-object v0, ACTION_SET_PASSWORD:Ljava/lang/String;

    .line 3481
    const-string v0, "action_clear_password"

    sput-object v0, ACTION_CLEAR_PASSWORD:Ljava/lang/String;

    .line 3482
    const-string v0, "action_account_add"

    sput-object v0, ACTION_ACCOUNT_ADD:Ljava/lang/String;

    .line 3483
    const-string v0, "action_account_remove"

    sput-object v0, ACTION_ACCOUNT_REMOVE:Ljava/lang/String;

    .line 3484
    const-string v0, "action_authenticator_remove"

    sput-object v0, ACTION_AUTHENTICATOR_REMOVE:Ljava/lang/String;

    .line 3485
    const-string v0, "action_account_rename"

    sput-object v0, ACTION_ACCOUNT_RENAME:Ljava/lang/String;

    .line 3492
    const-string v0, "action_called_account_add"

    sput-object v0, ACTION_CALLED_ACCOUNT_ADD:Ljava/lang/String;

    .line 3493
    const-string v0, "action_called_account_remove"

    sput-object v0, ACTION_CALLED_ACCOUNT_REMOVE:Ljava/lang/String;

    .line 3495
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, dateFromat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 3465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3466
    return-void
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 3464
    sget-object v0, ACTION_ACCOUNT_ADD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .registers 1

    .prologue
    .line 3464
    sget-object v0, ACTION_ACCOUNT_RENAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 3464
    sget-object v0, ACTION_CALLED_ACCOUNT_REMOVE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 3464
    sget-object v0, ACTION_ACCOUNT_REMOVE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 3464
    sget-object v0, ACTION_CLEAR_PASSWORD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 3464
    sget-object v0, ACTION_SET_PASSWORD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 3464
    sget-object v0, ACTION_CALLED_ACCOUNT_ADD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600()Ljava/text/SimpleDateFormat;
    .registers 1

    .prologue
    .line 3464
    sget-object v0, dateFromat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$3800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 3464
    sget-object v0, TABLE_DEBUG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900()Ljava/lang/String;
    .registers 1

    .prologue
    .line 3464
    sget-object v0, KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 3464
    sget-object v0, TIMESTAMP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 1
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3464
    invoke-static {p0}, createDebugTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 3464
    sget-object v0, ACTION_AUTHENTICATOR_REMOVE:Ljava/lang/String;

    return-object v0
.end method

.method private static createDebugTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, TABLE_DEBUG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, ACTION_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, TIMESTAMP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DATETIME,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, CALLER_UID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT NOT NULL,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER PRIMARY KEY)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE INDEX timestamp_index ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, TABLE_DEBUG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, TIMESTAMP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3506
    return-void
.end method
