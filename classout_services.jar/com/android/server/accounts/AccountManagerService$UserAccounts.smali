.class Lcom/android/server/accounts/AccountManagerService$UserAccounts;
.super Ljava/lang/Object;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UserAccounts"
.end annotation


# instance fields
.field private final accountCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final accountTokenCaches:Lcom/android/server/accounts/TokenCache;

.field private final authTokenCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cacheLock:Ljava/lang/Object;

.field private final credentialsPermissionNotificationIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private debugDbInsertionPoint:I

.field private final openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

.field private final previousNameCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final signinRequiredNotificationIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private statementForLogging:Landroid/database/sqlite/SQLiteStatement;

.field private final userDataCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final userId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, credentialsPermissionNotificationIds:Ljava/util/HashMap;

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, signinRequiredNotificationIds:Ljava/util/HashMap;

    .line 226
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, cacheLock:Ljava/lang/Object;

    .line 228
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, accountCache:Ljava/util/HashMap;

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, userDataCache:Ljava/util/HashMap;

    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, authTokenCache:Ljava/util/HashMap;

    .line 238
    new-instance v0, Lcom/android/server/accounts/TokenCache;

    invoke-direct {v0}, Lcom/android/server/accounts/TokenCache;-><init>()V

    iput-object v0, p0, accountTokenCaches:Lcom/android/server/accounts/TokenCache;

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, previousNameCache:Ljava/util/HashMap;

    .line 255
    const/4 v0, -0x1

    iput v0, p0, debugDbInsertionPoint:I

    .line 259
    iput p2, p0, userId:I

    .line 260
    iget-object v1, p0, cacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 261
    :try_start_43
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    invoke-direct {v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    .line 262
    monitor-exit v1

    .line 263
    return-void

    .line 262
    :catchall_4c
    move-exception v0

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method static synthetic access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 218
    iget-object v0, p0, authTokenCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 218
    iget-object v0, p0, accountTokenCaches:Lcom/android/server/accounts/TokenCache;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 218
    iget-object v0, p0, previousNameCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 218
    iget-object v0, p0, credentialsPermissionNotificationIds:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 218
    iget-object v0, p0, signinRequiredNotificationIds:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Landroid/database/sqlite/SQLiteStatement;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 218
    iget-object v0, p0, statementForLogging:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteStatement;)Landroid/database/sqlite/SQLiteStatement;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    .line 218
    iput-object p1, p0, statementForLogging:Landroid/database/sqlite/SQLiteStatement;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 218
    iget v0, p0, debugDbInsertionPoint:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p1, "x1"    # I

    .prologue
    .line 218
    iput p1, p0, debugDbInsertionPoint:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 218
    iget v0, p0, userId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 218
    iget-object v0, p0, cacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 218
    iget-object v0, p0, openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 218
    iget-object v0, p0, accountCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 218
    iget-object v0, p0, userDataCache:Ljava/util/HashMap;

    return-object v0
.end method
