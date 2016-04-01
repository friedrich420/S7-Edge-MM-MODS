.class public Lcom/android/server/accounts/AccountManagerService;
.super Landroid/accounts/IAccountManager$Stub;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;,
        Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;,
        Lcom/android/server/accounts/AccountManagerService$MessageHandler;,
        Lcom/android/server/accounts/AccountManagerService$Session;,
        Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;,
        Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;,
        Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;,
        Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/accounts/IAccountManager$Stub;",
        "Landroid/content/pm/RegisteredServicesCacheListener",
        "<",
        "Landroid/accounts/AuthenticatorDescription;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

.field private static final ACCOUNTS_ID:Ljava/lang/String; = "_id"

.field private static final ACCOUNTS_LAST_AUTHENTICATE_TIME_EPOCH_MILLIS:Ljava/lang/String; = "last_password_entry_time_millis_epoch"

.field private static final ACCOUNTS_NAME:Ljava/lang/String; = "name"

.field private static final ACCOUNTS_PASSWORD:Ljava/lang/String; = "password"

.field private static final ACCOUNTS_PREVIOUS_NAME:Ljava/lang/String; = "previous_name"

.field private static final ACCOUNTS_TYPE:Ljava/lang/String; = "type"

.field private static final ACCOUNTS_TYPE_COUNT:Ljava/lang/String; = "count(type)"

.field private static final ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

.field private static final AUTHTOKENS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final AUTHTOKENS_AUTHTOKEN:Ljava/lang/String; = "authtoken"

.field private static final AUTHTOKENS_ID:Ljava/lang/String; = "_id"

.field private static final AUTHTOKENS_TYPE:Ljava/lang/String; = "type"

.field private static final COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

.field private static final COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

.field private static final COUNT_OF_MATCHING_GRANTS:Ljava/lang/String; = "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

.field private static final DATABASE_NAME:Ljava/lang/String; = "accounts.db"

.field private static final DATABASE_VERSION:I = 0x8

.field private static final EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

.field private static final EXTRAS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final EXTRAS_ID:Ljava/lang/String; = "_id"

.field private static final EXTRAS_KEY:Ljava/lang/String; = "key"

.field private static final EXTRAS_VALUE:Ljava/lang/String; = "value"

.field private static final GRANTS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final GRANTS_AUTH_TOKEN_TYPE:Ljava/lang/String; = "auth_token_type"

.field private static final GRANTS_GRANTEE_UID:Ljava/lang/String; = "uid"

.field private static final MAX_DEBUG_DB_SIZE:I = 0x40

.field private static final MESSAGE_COPY_SHARED_ACCOUNT:I = 0x4

.field private static final MESSAGE_TIMED_OUT:I = 0x3

.field private static final META_KEY:Ljava/lang/String; = "key"

.field private static final META_VALUE:Ljava/lang/String; = "value"

.field private static final SELECTION_AUTHTOKENS_BY_ACCOUNT:Ljava/lang/String; = "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

.field private static final SELECTION_USERDATA_BY_ACCOUNT:Ljava/lang/String; = "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

.field private static final TABLE_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final TABLE_AUTHTOKENS:Ljava/lang/String; = "authtokens"

.field private static final TABLE_EXTRAS:Ljava/lang/String; = "extras"

.field private static final TABLE_GRANTS:Ljava/lang/String; = "grants"

.field private static final TABLE_META:Ljava/lang/String; = "meta"

.field private static final TABLE_SHARED_ACCOUNTS:Ljava/lang/String; = "shared_accounts"

.field private static final TAG:Ljava/lang/String; = "AccountManagerService"

.field private static sThis:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/server/accounts/AccountManagerService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

.field private final mContext:Landroid/content/Context;

.field private final mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

.field private final mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSessions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/accounts/AccountManagerService$Session;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 189
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "type"

    aput-object v1, v0, v2

    const-string v1, "count(type)"

    aput-object v1, v0, v3

    sput-object v0, ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 194
    sget-object v0, ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 208
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "type"

    aput-object v1, v0, v2

    const-string v1, "authtoken"

    aput-object v1, v0, v3

    sput-object v0, COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    .line 213
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "key"

    aput-object v1, v0, v2

    const-string/jumbo v1, "value"

    aput-object v1, v0, v3

    sput-object v0, COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    .line 268
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, sThis:Ljava/util/concurrent/atomic/AtomicReference;

    .line 270
    new-array v0, v2, [Landroid/accounts/Account;

    sput-object v0, EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/accounts/AccountAuthenticatorCache;

    invoke-direct {v1, p1}, Lcom/android/server/accounts/AccountAuthenticatorCache;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/accounts/IAccountAuthenticatorCache;)V

    .line 284
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/accounts/IAccountAuthenticatorCache;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "authenticatorCache"    # Lcom/android/server/accounts/IAccountAuthenticatorCache;

    .prologue
    const/4 v4, 0x0

    .line 287
    invoke-direct {p0}, Landroid/accounts/IAccountManager$Stub;-><init>()V

    .line 215
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, mSessions:Ljava/util/LinkedHashMap;

    .line 216
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 266
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mUsers:Landroid/util/SparseArray;

    .line 288
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 289
    iput-object p2, p0, mPackageManager:Landroid/content/pm/PackageManager;

    .line 290
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    .line 292
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 294
    iput-object p3, p0, mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    .line 295
    iget-object v0, p0, mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v0, p0, v4}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 297
    sget-object v0, sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 299
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 300
    .local v6, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string/jumbo v0, "package"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/accounts/AccountManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/accounts/AccountManagerService$1;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 328
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 329
    .local v3, "userFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/accounts/AccountManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/accounts/AccountManagerService$2;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 348
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accounts/AccountManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;

    .prologue
    .line 132
    invoke-direct {p0}, purgeOldGrantsAll()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/accounts/AccountManagerService;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 132
    invoke-direct {p0, p1}, onUserRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Landroid/accounts/Account;
    .param p4, "x4"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 132
    invoke-direct {p0, p1, p2, p3, p4}, completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;

    .prologue
    .line 132
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "x2"    # Landroid/accounts/Account;

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/accounts/AccountManagerService;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 132
    invoke-direct {p0, p1}, onUserStarted(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Landroid/accounts/Account;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-direct {p0, p1, p2, p3, p4}, newGrantCredentialsPermissionIntent(Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "x2"    # Landroid/accounts/Account;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-direct {p0, p1, p2, p3, p4}, saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "x2"    # Landroid/accounts/Account;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # [B
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # J

    .prologue
    .line 132
    invoke-direct/range {p0 .. p8}, saveCachedToken(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;I)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "x2"    # Landroid/accounts/Account;
    .param p3, "x3"    # Ljava/lang/CharSequence;
    .param p4, "x4"    # Landroid/content/Intent;
    .param p5, "x5"    # I

    .prologue
    .line 132
    invoke-direct/range {p0 .. p5}, doNotification(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;

    .prologue
    .line 132
    iget-object v0, p0, mSessions:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accounts/AccountManagerService;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 132
    invoke-direct {p0, p1}, onUserAdded(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/AccountManagerService$MessageHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;

    .prologue
    .line 132
    iget-object v0, p0, mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Landroid/accounts/Account;

    .prologue
    .line 132
    invoke-direct {p0, p1}, updateLastAuthenticatedTime(Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "x2"    # Landroid/accounts/Account;

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/IAccountAuthenticatorCache;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;

    .prologue
    .line 132
    iget-object v0, p0, mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    return-object v0
.end method

.method static synthetic access$4100(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 132
    invoke-static {p0}, getDatabaseName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZI)Z
    .registers 28
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "restricted"    # Z
    .param p6, "callingUid"    # I

    .prologue
    .line 1031
    if-nez p2, :cond_4

    .line 1032
    const/4 v2, 0x0

    .line 1082
    :goto_3
    return v2

    .line 1034
    :cond_4
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v20

    monitor-enter v20

    .line 1035
    :try_start_9
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1036
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_59

    .line 1038
    :try_start_14
    const-string/jumbo v2, "select count(*) from accounts WHERE name=? AND type=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v3, v2, v8}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v18

    .line 1042
    .local v18, "numMatches":J
    const-wide/16 v8, 0x0

    cmp-long v2, v18, v8

    if-lez v2, :cond_5c

    .line 1043
    const-string v2, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "insertAccountIntoDatabase: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", skipping since the account already exists"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_14 .. :try_end_53} :catchall_154

    .line 1045
    const/4 v2, 0x0

    .line 1075
    :try_start_54
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v20

    goto :goto_3

    .line 1078
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v18    # "numMatches":J
    :catchall_59
    move-exception v2

    monitor-exit v20
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_59

    throw v2

    .line 1047
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v18    # "numMatches":J
    :cond_5c
    :try_start_5c
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1048
    .local v17, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "name"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    const-string/jumbo v2, "type"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const-string/jumbo v2, "password"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const-string/jumbo v2, "last_password_entry_time_millis_epoch"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1052
    const-string v2, "accounts"

    const-string/jumbo v8, "name"

    move-object/from16 v0, v17

    invoke-virtual {v3, v2, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 1053
    .local v4, "accountId":J
    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-gez v2, :cond_cc

    .line 1054
    const-string v2, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "insertAccountIntoDatabase: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", skipping the DB insert failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_5c .. :try_end_c5} :catchall_154

    .line 1056
    const/4 v2, 0x0

    .line 1075
    :try_start_c6
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v20
    :try_end_ca
    .catchall {:try_start_c6 .. :try_end_ca} :catchall_59

    goto/16 :goto_3

    .line 1058
    :cond_cc
    if-eqz p4, :cond_120

    .line 1059
    :try_start_ce
    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_d6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_120

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1060
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "value":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 1061
    invoke-direct/range {v2 .. v7}, insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-gez v2, :cond_d6

    .line 1062
    const-string v2, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "insertAccountIntoDatabase: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", skipping since insertExtra failed for key "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_119
    .catchall {:try_start_ce .. :try_end_119} :catchall_154

    .line 1064
    const/4 v2, 0x0

    .line 1075
    :try_start_11a
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v20
    :try_end_11e
    .catchall {:try_start_11a .. :try_end_11e} :catchall_59

    goto/16 :goto_3

    .line 1068
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_120
    :try_start_120
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1070
    # getter for: Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_ACCOUNT_ADD:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->access$1500()Ljava/lang/String;

    move-result-object v10

    const-string v11, "accounts"

    move-object/from16 v8, p0

    move-object v9, v3

    move-wide v12, v4

    move-object/from16 v14, p1

    move/from16 v15, p6

    invoke-direct/range {v8 .. v15}, logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 1073
    invoke-direct/range {p0 .. p2}, insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    :try_end_137
    .catchall {:try_start_120 .. :try_end_137} :catchall_154

    .line 1075
    :try_start_137
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1077
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, sendAccountsChangedBroadcast(I)V

    .line 1078
    monitor-exit v20
    :try_end_144
    .catchall {:try_start_137 .. :try_end_144} :catchall_59

    .line 1079
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    if-nez v2, :cond_151

    .line 1080
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, addAccountToLimitedUsers(Landroid/accounts/Account;)V

    .line 1082
    :cond_151
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1075
    .end local v4    # "accountId":J
    .end local v17    # "values":Landroid/content/ContentValues;
    .end local v18    # "numMatches":J
    :catchall_154
    move-exception v2

    :try_start_155
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_159
    .catchall {:try_start_155 .. :try_end_159} :catchall_59
.end method

.method private addAccountToLimitedUsers(Landroid/accounts/Account;)V
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 1091
    invoke-direct {p0}, getUserManager()Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 1092
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1093
    .local v1, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1094
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v3}, addSharedAccountAsUser(Landroid/accounts/Account;I)Z

    .line 1096
    :try_start_23
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->isUserRunning(IZ)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1097
    iget-object v3, p0, mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    iget-object v4, p0, mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    const/4 v5, 0x4

    const/4 v6, 0x0

    iget v7, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5, v6, v7, p1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_3f} :catch_40

    goto :goto_c

    .line 1101
    :catch_40
    move-exception v3

    goto :goto_c

    .line 1106
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_42
    return-void
.end method

.method private calculatePackageSignatureDigest(Ljava/lang/String;)[B
    .registers 13
    .param p1, "callerPkg"    # Ljava/lang/String;

    .prologue
    .line 2202
    :try_start_0
    const-string v8, "SHA-256"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 2203
    .local v1, "digester":Ljava/security/MessageDigest;
    iget-object v8, p0, mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v9, 0x40

    invoke-virtual {v8, p1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 2205
    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_12
    if-ge v3, v4, :cond_29

    aget-object v6, v0, v3

    .line 2206
    .local v6, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/security/MessageDigest;->update([B)V
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1d} :catch_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1d} :catch_2d

    .line 2205
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 2208
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v1    # "digester":Ljava/security/MessageDigest;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "sig":Landroid/content/pm/Signature;
    :catch_20
    move-exception v7

    .line 2209
    .local v7, "x":Ljava/security/NoSuchAlgorithmException;
    const-string v8, "AccountManagerService"

    const-string v9, "SHA-256 should be available"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2210
    const/4 v1, 0x0

    .line 2215
    .end local v7    # "x":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "digester":Ljava/security/MessageDigest;
    :cond_29
    :goto_29
    if-nez v1, :cond_48

    const/4 v8, 0x0

    :goto_2c
    return-object v8

    .line 2211
    .end local v1    # "digester":Ljava/security/MessageDigest;
    :catch_2d
    move-exception v2

    .line 2212
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "AccountManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not find packageinfo for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    const/4 v1, 0x0

    .restart local v1    # "digester":Ljava/security/MessageDigest;
    goto :goto_29

    .line 2215
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_48
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    goto :goto_2c
.end method

.method private canUserModifyAccounts(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 4089
    invoke-direct {p0}, getUserManager()Landroid/os/UserManager;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "no_modify_accounts"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4091
    const/4 v0, 0x0

    .line 4093
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x1

    goto :goto_17
.end method

.method private canUserModifyAccountsForType(ILjava/lang/String;)Z
    .registers 12
    .param p1, "userId"    # I
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 4097
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string/jumbo v8, "device_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 4099
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object v5

    .line 4100
    .local v5, "typesArray":[Ljava/lang/String;
    if-nez v5, :cond_13

    .line 4108
    :cond_12
    :goto_12
    return v6

    .line 4103
    :cond_13
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_16
    if-ge v3, v4, :cond_12

    aget-object v2, v0, v3

    .line 4104
    .local v2, "forbiddenType":Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 4105
    const/4 v6, 0x0

    goto :goto_12

    .line 4103
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_16
.end method

.method private checkReadAccountsPermitted(ILjava/lang/String;ILjava/lang/String;)V
    .registers 10
    .param p1, "callingUid"    # I
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 4078
    invoke-direct {p0, p2, p1, p3, p4}, isAccountVisibleToCaller(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 4079
    const-string v1, "caller uid %s cannot access %s accounts"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4083
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4084
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4086
    .end local v0    # "msg":Ljava/lang/String;
    :cond_37
    return-void
.end method

.method private compileSqlStatementForLogging(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "userAccount"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 3563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT OR REPLACE INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TABLE_DEBUG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->access$3800()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " VALUES (?,?,?,?,?,?)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3565
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    # setter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->statementForLogging:Landroid/database/sqlite/SQLiteStatement;
    invoke-static {p2, v1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$3502(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteStatement;)Landroid/database/sqlite/SQLiteStatement;

    .line 3566
    return-void
.end method

.method private completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 21
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountCredentials"    # Landroid/os/Bundle;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "targetUser"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 981
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v14

    .line 983
    .local v14, "id":J
    :try_start_4
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$4;

    move-object/from16 v0, p3

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p3

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p2

    invoke-direct/range {v2 .. v12}, Lcom/android/server/accounts/AccountManagerService$4;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$4;->bind()V
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_25

    .line 1025
    invoke-static {v14, v15}, restoreCallingIdentity(J)V

    .line 1027
    return-void

    .line 1025
    :catchall_25
    move-exception v2

    invoke-static {v14, v15}, restoreCallingIdentity(J)V

    throw v2
.end method

.method private createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;I)V
    .registers 21
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .prologue
    .line 2220
    const-string/jumbo v2, "uid"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 2222
    .local v15, "uid":I
    const-string v2, "authTokenType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2224
    .local v8, "authTokenType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const v3, 0x104043c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2227
    .local v14, "titleAndSubtitle":Ljava/lang/String;
    const/16 v2, 0xa

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 2228
    .local v10, "index":I
    move-object v13, v14

    .line 2229
    .local v13, "title":Ljava/lang/String;
    const-string v12, ""

    .line 2230
    .local v12, "subtitle":Ljava/lang/String;
    if-lez v10, :cond_3d

    .line 2231
    const/4 v2, 0x0

    invoke-virtual {v14, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 2232
    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 2234
    :cond_3d
    new-instance v7, Landroid/os/UserHandle;

    move/from16 v0, p3

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 2235
    .local v7, "user":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v9

    .line 2236
    .local v9, "contextForUser":Landroid/content/Context;
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x108008a

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x1060059

    invoke-virtual {v9, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x10000000

    const/4 v6, 0x0

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    .line 2246
    .local v11, "n":Landroid/app/Notification;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v15}, getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11, v7}, installNotification(ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2248
    return-void
.end method

.method private doNotification(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;I)V
    .registers 23
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "userId"    # I

    .prologue
    .line 3840
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v12

    .line 3842
    .local v12, "identityToken":J
    :try_start_4
    const-string v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 3843
    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "doNotification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " intent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3846
    :cond_34
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_5d

    const-class v4, Landroid/accounts/GrantCredentialsPermissionActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 3849
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;I)V
    :try_end_59
    .catchall {:try_start_4 .. :try_end_59} :catchall_d9

    .line 3871
    :goto_59
    invoke-static {v12, v13}, restoreCallingIdentity(J)V

    .line 3873
    return-void

    .line 3851
    :cond_5d
    :try_start_5d
    invoke-direct/range {p0 .. p2}, getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v14

    .line 3852
    .local v14, "notificationId":Ljava/lang/Integer;
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3853
    new-instance v9, Landroid/os/UserHandle;

    move/from16 v0, p5

    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 3854
    .local v9, "user":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v10

    .line 3855
    .local v10, "contextForUser":Landroid/content/Context;
    const v4, 0x10400f3

    invoke-virtual {v10, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 3857
    .local v15, "notificationTitleFormat":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x108008a

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x1060059

    invoke-virtual {v10, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v15, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v7, 0x10000000

    const/4 v8, 0x0

    move-object/from16 v6, p4

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    .line 3868
    .local v11, "n":Landroid/app/Notification;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11, v9}, installNotification(ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_d8
    .catchall {:try_start_5d .. :try_end_d8} :catchall_d9

    goto :goto_59

    .line 3871
    .end local v9    # "user":Landroid/os/UserHandle;
    .end local v10    # "contextForUser":Landroid/content/Context;
    .end local v11    # "n":Landroid/app/Notification;
    .end local v14    # "notificationId":Ljava/lang/Integer;
    .end local v15    # "notificationTitleFormat":Ljava/lang/String;
    :catchall_d9
    move-exception v4

    invoke-static {v12, v13}, restoreCallingIdentity(J)V

    throw v4
.end method

.method private dumpUser(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 28
    .param p1, "userAccounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "fout"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "isCheckinRequest"    # Z

    .prologue
    .line 3781
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v21

    monitor-enter v21

    .line 3782
    :try_start_5
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 3784
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p5, :cond_5c

    .line 3786
    const-string v5, "accounts"

    sget-object v6, ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "type"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_52

    move-result-object v15

    .line 3789
    .local v15, "cursor":Landroid/database/Cursor;
    :goto_1e
    :try_start_1e
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_55

    .line 3791
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_1e .. :try_end_4a} :catchall_4b

    goto :goto_1e

    .line 3794
    :catchall_4b
    move-exception v5

    if-eqz v15, :cond_51

    .line 3795
    :try_start_4e
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_51
    throw v5

    .line 3835
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v15    # "cursor":Landroid/database/Cursor;
    :catchall_52
    move-exception v5

    monitor-exit v21
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_52

    throw v5

    .line 3794
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v15    # "cursor":Landroid/database/Cursor;
    :cond_55
    if-eqz v15, :cond_5a

    .line 3795
    :try_start_57
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 3835
    :cond_5a
    :goto_5a
    monitor-exit v21

    .line 3836
    return-void

    .line 3799
    .end local v15    # "cursor":Landroid/database/Cursor;
    :cond_5c
    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5, v6, v7}, getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v13

    .line 3801
    .local v13, "accounts":[Landroid/accounts/Account;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Accounts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v13

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3802
    move-object v14, v13

    .local v14, "arr$":[Landroid/accounts/Account;
    array-length v0, v14

    move/from16 v17, v0

    .local v17, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_89
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_ac

    aget-object v12, v14, v16

    .line 3803
    .local v12, "account":Landroid/accounts/Account;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3802
    add-int/lit8 v16, v16, 0x1

    goto :goto_89

    .line 3807
    .end local v12    # "account":Landroid/accounts/Account;
    :cond_ac
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 3808
    # getter for: Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TABLE_DEBUG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->access$3800()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    # getter for: Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TIMESTAMP:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->access$4000()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 3810
    .restart local v15    # "cursor":Landroid/database/Cursor;
    const-string v5, "AccountId, Action_Type, timestamp, UID, TableName, Key"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3811
    const-string v5, "Accounts History"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_ce
    .catchall {:try_start_57 .. :try_end_ce} :catchall_52

    .line 3813
    :goto_ce
    :try_start_ce
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_13c

    .line 3815
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x5

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_136
    .catchall {:try_start_ce .. :try_end_136} :catchall_137

    goto :goto_ce

    .line 3820
    :catchall_137
    move-exception v5

    :try_start_138
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_13c
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 3823
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 3824
    move-object/from16 v0, p0

    iget-object v6, v0, mSessions:Ljava/util/LinkedHashMap;

    monitor-enter v6
    :try_end_147
    .catchall {:try_start_138 .. :try_end_147} :catchall_52

    .line 3825
    :try_start_147
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 3826
    .local v18, "now":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Active Sessions: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3827
    move-object/from16 v0, p0

    iget-object v5, v0, mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_177
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/accounts/AccountManagerService$Session;

    .line 3828
    .local v20, "session":Lcom/android/server/accounts/AccountManagerService$Session;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_177

    .line 3830
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "now":J
    .end local v20    # "session":Lcom/android/server/accounts/AccountManagerService$Session;
    :catchall_1a4
    move-exception v5

    monitor-exit v6
    :try_end_1a6
    .catchall {:try_start_147 .. :try_end_1a6} :catchall_1a4

    :try_start_1a6
    throw v5
    :try_end_1a7
    .catchall {:try_start_1a6 .. :try_end_1a7} :catchall_52

    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v18    # "now":J
    :cond_1a7
    :try_start_1a7
    monitor-exit v6
    :try_end_1a8
    .catchall {:try_start_1a7 .. :try_end_1a8} :catchall_1a4

    .line 3832
    :try_start_1a8
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 3833
    move-object/from16 v0, p0

    iget-object v5, v0, mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v5, v0, v1, v2, v6}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    :try_end_1bc
    .catchall {:try_start_1a8 .. :try_end_1bc} :catchall_52

    goto/16 :goto_5a
.end method

.method private filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;)[Landroid/accounts/Account;
    .registers 28
    .param p1, "userAccounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "unfiltered"    # [Landroid/accounts/Account;
    .param p3, "callingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 4238
    invoke-direct/range {p0 .. p0}, getUserManager()Landroid/os/UserManager;

    move-result-object v21

    if-eqz v21, :cond_18

    if-eqz p1, :cond_18

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v21

    if-ltz v21, :cond_18

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v21

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    .line 4299
    .end local p2    # "unfiltered":[Landroid/accounts/Account;
    :cond_18
    :goto_18
    return-object p2

    .line 4242
    .restart local p2    # "unfiltered":[Landroid/accounts/Account;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, mUserManager:Landroid/os/UserManager;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v19

    .line 4243
    .local v19, "user":Landroid/content/pm/UserInfo;
    if-eqz v19, :cond_18

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v21

    if-eqz v21, :cond_18

    .line 4244
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    .line 4248
    .local v14, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x104004b

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 4250
    .local v20, "whiteList":Ljava/lang/String;
    move-object v5, v14

    .local v5, "arr$":[Ljava/lang/String;
    array-length v11, v5

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_51
    if-ge v9, v11, :cond_79

    aget-object v13, v5, v9

    .line 4251
    .local v13, "packageName":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_18

    .line 4250
    add-int/lit8 v9, v9, 0x1

    goto :goto_51

    .line 4255
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_79
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4256
    .local v4, "allowed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v18

    .line 4257
    .local v18, "sharedAccounts":[Landroid/accounts/Account;
    if-eqz v18, :cond_18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    if-eqz v21, :cond_18

    .line 4258
    const-string v16, ""

    .line 4262
    .local v16, "requiredAccountType":Ljava/lang/String;
    if-eqz p4, :cond_d3

    .line 4263
    :try_start_97
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 4264
    .local v15, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v15, :cond_b5

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b5

    .line 4265
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    move-object/from16 v16, v0
    :try_end_b5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_97 .. :try_end_b5} :catch_124

    .line 4279
    .end local v15    # "pi":Landroid/content/pm/PackageInfo;
    :cond_b5
    :goto_b5
    move-object/from16 v5, p2

    .local v5, "arr$":[Landroid/accounts/Account;
    array-length v11, v5

    const/4 v9, 0x0

    move v10, v9

    .end local v5    # "arr$":[Landroid/accounts/Account;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .local v10, "i$":I
    :goto_ba
    if-ge v10, v11, :cond_115

    aget-object v3, v5, v10

    .line 4280
    .local v3, "account":Landroid/accounts/Account;
    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_fa

    .line 4281
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4279
    .end local v10    # "i$":I
    :cond_cf
    :goto_cf
    add-int/lit8 v9, v10, 0x1

    .restart local v9    # "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto :goto_ba

    .line 4269
    .end local v3    # "account":Landroid/accounts/Account;
    .end local v10    # "i$":I
    .local v5, "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v11    # "len$":I
    :cond_d3
    move-object v5, v14

    :try_start_d4
    array-length v11, v5

    const/4 v9, 0x0

    :goto_d6
    if-ge v9, v11, :cond_b5

    aget-object v13, v5, v9

    .line 4270
    .restart local v13    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 4271
    .restart local v15    # "pi":Landroid/content/pm/PackageInfo;
    if-eqz v15, :cond_f7

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_f7

    .line 4272
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    move-object/from16 v16, v0
    :try_end_f6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d4 .. :try_end_f6} :catch_124

    .line 4273
    goto :goto_b5

    .line 4269
    :cond_f7
    add-int/lit8 v9, v9, 0x1

    goto :goto_d6

    .line 4283
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v15    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v3    # "account":Landroid/accounts/Account;
    .restart local v10    # "i$":I
    :cond_fa
    const/4 v8, 0x0

    .line 4284
    .local v8, "found":Z
    move-object/from16 v6, v18

    .local v6, "arr$":[Landroid/accounts/Account;
    array-length v12, v6

    .local v12, "len$":I
    const/4 v9, 0x0

    .end local v10    # "i$":I
    .restart local v9    # "i$":I
    :goto_ff
    if-ge v9, v12, :cond_10c

    aget-object v17, v6, v9

    .line 4285
    .local v17, "shared":Landroid/accounts/Account;
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_112

    .line 4286
    const/4 v8, 0x1

    .line 4290
    .end local v17    # "shared":Landroid/accounts/Account;
    :cond_10c
    if-nez v8, :cond_cf

    .line 4291
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cf

    .line 4284
    .restart local v17    # "shared":Landroid/accounts/Account;
    :cond_112
    add-int/lit8 v9, v9, 0x1

    goto :goto_ff

    .line 4295
    .end local v3    # "account":Landroid/accounts/Account;
    .end local v6    # "arr$":[Landroid/accounts/Account;
    .end local v8    # "found":Z
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v17    # "shared":Landroid/accounts/Account;
    .restart local v10    # "i$":I
    :cond_115
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v7, v0, [Landroid/accounts/Account;

    .line 4296
    .local v7, "filtered":[Landroid/accounts/Account;
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 p2, v7

    .line 4297
    goto/16 :goto_18

    .line 4277
    .end local v7    # "filtered":[Landroid/accounts/Account;
    .end local v10    # "i$":I
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v11    # "len$":I
    :catch_124
    move-exception v21

    goto :goto_b5
.end method

.method private getAccountIdFromSharedTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    .registers 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3022
    const-string/jumbo v1, "shared_accounts"

    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string/jumbo v3, "name=? AND type=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3025
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_21
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3026
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_36

    move-result-wide v0

    .line 3030
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_2f
    return-wide v0

    .line 3028
    :cond_30
    const-wide/16 v0, -0x1

    .line 3030
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2f

    :catchall_36
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    .registers 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3035
    const-string v1, "accounts"

    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string/jumbo v3, "name=? AND type=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3038
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_20
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 3039
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_35

    move-result-wide v0

    .line 3043
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_2e
    return-wide v0

    .line 3041
    :cond_2f
    const-wide/16 v0, -0x1

    .line 3043
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2e

    :catchall_35
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getAccounts([I)[Landroid/accounts/AccountAndUser;
    .registers 15
    .param p1, "userIds"    # [I

    .prologue
    .line 2745
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 2746
    .local v6, "runningAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/AccountAndUser;>;"
    move-object v3, p1

    .local v3, "arr$":[I
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_7
    if-ge v4, v5, :cond_39

    aget v8, v3, v4

    .line 2747
    .local v8, "userId":I
    invoke-virtual {p0, v8}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v7

    .line 2748
    .local v7, "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    if-nez v7, :cond_14

    .line 2746
    :goto_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 2749
    :cond_14
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 2750
    const/4 v9, 0x0

    :try_start_1a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {p0, v7, v9, v11, v12}, getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 2752
    .local v1, "accounts":[Landroid/accounts/Account;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_24
    array-length v9, v1

    if-ge v0, v9, :cond_34

    .line 2753
    new-instance v9, Landroid/accounts/AccountAndUser;

    aget-object v11, v1, v0

    invoke-direct {v9, v11, v8}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2752
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 2755
    :cond_34
    monitor-exit v10

    goto :goto_11

    .end local v0    # "a":I
    .end local v1    # "accounts":[Landroid/accounts/Account;
    :catchall_36
    move-exception v9

    monitor-exit v10
    :try_end_38
    .catchall {:try_start_1a .. :try_end_38} :catchall_36

    throw v9

    .line 2758
    .end local v7    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v8    # "userId":I
    :cond_39
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v2, v9, [Landroid/accounts/AccountAndUser;

    .line 2759
    .local v2, "accountsArray":[Landroid/accounts/AccountAndUser;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/accounts/AccountAndUser;

    return-object v9
.end method

.method private getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .registers 14
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "packageUid"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 2773
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2775
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    if-eq p2, v5, :cond_41

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    if-eq v1, v5, :cond_41

    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_41

    .line 2780
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "User "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " trying to get account for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2784
    :cond_41
    const-string v5, "AccountManagerService"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 2785
    const-string v5, "AccountManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAccounts: accountType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", caller\'s uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    :cond_7f
    const/4 v5, -0x1

    if-eq p4, v5, :cond_8e

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-static {v1, v5}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 2792
    move v1, p4

    .line 2793
    move-object p5, p3

    .line 2796
    :cond_8e
    invoke-direct {p0, v1, p2, p5}, getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 2798
    .local v4, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a0

    if-eqz p1, :cond_a4

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a4

    .line 2800
    :cond_a0
    const/4 v5, 0x0

    new-array v5, v5, [Landroid/accounts/Account;

    .line 2817
    :goto_a3
    return-object v5

    .line 2801
    :cond_a4
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 2803
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2804
    .restart local v4    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2808
    :cond_b2
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v2

    .line 2810
    .local v2, "identityToken":J
    :try_start_b6
    invoke-virtual {p0, p2}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 2811
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, v1, p3, v4}, getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;)[Landroid/accounts/Account;
    :try_end_bd
    .catchall {:try_start_b6 .. :try_end_bd} :catchall_c2

    move-result-object v5

    .line 2817
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    goto :goto_a3

    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_c2
    move-exception v5

    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    throw v5
.end method

.method private getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;)[Landroid/accounts/Account;
    .registers 13
    .param p1, "userAccounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Landroid/accounts/Account;"
        }
    .end annotation

    .prologue
    .line 2826
    .local p4, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 2827
    :try_start_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2828
    .local v4, "visibleAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2829
    .local v5, "visibleType":Ljava/lang/String;
    invoke-virtual {p0, p1, v5, p2, p3}, getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 2831
    .local v0, "accountsForType":[Landroid/accounts/Account;
    if-eqz v0, :cond_e

    .line 2832
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_e

    .line 2840
    .end local v0    # "accountsForType":[Landroid/accounts/Account;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "visibleAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    .end local v5    # "visibleType":Ljava/lang/String;
    :catchall_28
    move-exception v6

    monitor-exit v7
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_28

    throw v6

    .line 2835
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "visibleAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    :cond_2b
    :try_start_2b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v3, v6, [Landroid/accounts/Account;

    .line 2836
    .local v3, "result":[Landroid/accounts/Account;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_32
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_43

    .line 2837
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    aput-object v6, v3, v1

    .line 2836
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 2839
    :cond_43
    monitor-exit v7
    :try_end_44
    .catchall {:try_start_2b .. :try_end_44} :catchall_28

    return-object v3
.end method

.method private getAuthenticatorTypesInternal(I)[Landroid/accounts/AuthenticatorDescription;
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 786
    iget-object v5, p0, mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v5, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v1

    .line 787
    .local v1, "authenticatorCollection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v4, v5, [Landroid/accounts/AuthenticatorDescription;

    .line 789
    .local v4, "types":[Landroid/accounts/AuthenticatorDescription;
    const/4 v2, 0x0

    .line 791
    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 792
    .local v0, "authenticator":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v5, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v5, Landroid/accounts/AuthenticatorDescription;

    aput-object v5, v4, v2

    .line 793
    add-int/lit8 v2, v2, 0x1

    .line 794
    goto :goto_11

    .line 795
    .end local v0    # "authenticator":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_26
    return-object v4
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 6
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 4445
    :try_start_0
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v1

    .line 4448
    :goto_d
    return-object v1

    .line 4446
    :catch_e
    move-exception v0

    .line 4448
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, mContext:Landroid/content/Context;

    goto :goto_d
.end method

.method private getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 2272
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {p0, v3}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 2273
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 2274
    :try_start_d
    new-instance v2, Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2277
    .local v2, "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2278
    .local v1, "id":Ljava/lang/Integer;
    if-nez v1, :cond_38

    .line 2279
    iget-object v3, p0, mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2280
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2282
    :cond_38
    monitor-exit v4

    .line 2283
    return-object v1

    .line 2282
    .end local v1    # "id":Ljava/lang/Integer;
    .end local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    :catchall_3a
    move-exception v3

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_3a

    throw v3
.end method

.method private static getDatabaseName(I)Ljava/lang/String;
    .registers 8
    .param p0, "userId"    # I

    .prologue
    .line 3440
    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v2

    .line 3441
    .local v2, "systemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "accounts.db"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3442
    .local v0, "databaseFile":Ljava/io/File;
    if-nez p0, :cond_6c

    .line 3447
    new-instance v1, Ljava/io/File;

    const-string v4, "accounts.db"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3448
    .local v1, "oldFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6c

    .line 3450
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    .line 3451
    .local v3, "userDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4d

    .line 3452
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_4d

    .line 3453
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User dir cannot be created: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3456
    :cond_4d
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_6c

    .line 3457
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User dir cannot be migrated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3461
    .end local v1    # "oldFile":Ljava/io/File;
    .end local v3    # "userDir":Ljava/io/File;
    :cond_6c
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getDebugTableInsertionPoint(Landroid/database/sqlite/SQLiteDatabase;)J
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->KEY:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->access$3900()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TABLE_DEBUG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->access$3800()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ORDER BY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TIMESTAMP:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->access$4000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->KEY:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->access$3900()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIMIT 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3587
    .local v0, "queryCountDebugDbRows":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method private getDebugTableRowCount(Landroid/database/sqlite/SQLiteDatabase;)J
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT COUNT(*) FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TABLE_DEBUG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->access$3800()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3570
    .local v0, "queryCountDebugDbRows":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method private getExtrasIdLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)J
    .registers 15
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "accountId"    # J
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3048
    const-string/jumbo v1, "extras"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accounts_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "key"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p4, v4, v6

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3052
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_3d
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 3053
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_52

    move-result-wide v0

    .line 3057
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_4b
    return-wide v0

    .line 3055
    :cond_4c
    const-wide/16 v0, -0x1

    .line 3057
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_4b

    :catchall_52
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;
    .registers 6
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 2288
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$2700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 2289
    :try_start_5
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$2700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2290
    .local v0, "id":Ljava/lang/Integer;
    if-nez v0, :cond_22

    .line 2291
    iget-object v1, p0, mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2292
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$2700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2294
    :cond_22
    monitor-exit v2

    .line 2295
    return-object v0

    .line 2294
    .end local v0    # "id":Ljava/lang/Integer;
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public static getSingleton()Lcom/android/server/accounts/AccountManagerService;
    .registers 1

    .prologue
    .line 279
    sget-object v0, sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/AccountManagerService;

    return-object v0
.end method

.method private getTypesForCaller(IIZ)Ljava/util/List;
    .registers 13
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "isOtherwisePermitted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3992
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3993
    .local v1, "managedAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3996
    .local v2, "identityToken":J
    :try_start_9
    iget-object v7, p0, mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v7, p2}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_38

    move-result-object v5

    .line 3998
    .local v5, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4001
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 4002
    .local v4, "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v7, p0, mPackageManager:Landroid/content/pm/PackageManager;

    iget v8, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v7, v8, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v6

    .line 4003
    .local v6, "sigChk":I
    if-nez p3, :cond_2e

    if-nez v6, :cond_16

    .line 4004
    :cond_2e
    iget-object v7, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v7, Landroid/accounts/AuthenticatorDescription;

    iget-object v7, v7, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 3998
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .end local v5    # "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    .end local v6    # "sigChk":I
    :catchall_38
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 4007
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v5    # "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    :cond_3d
    return-object v1
.end method

.method private getTypesManagedByCaller(II)Ljava/util/List;
    .registers 4
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3987
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, getTypesForCaller(IIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3980
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.GET_ACCOUNTS"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    aput-object v3, v1, v2

    invoke-direct {p0, p3, p1, v1}, isPermitted(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    .line 3983
    .local v0, "isPermitted":Z
    invoke-direct {p0, p1, p2, v0}, getTypesForCaller(IIZ)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .registers 2

    .prologue
    .line 473
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    return-object v0
.end method

.method private getUserManager()Landroid/os/UserManager;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_c

    .line 370
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, mUserManager:Landroid/os/UserManager;

    .line 372
    :cond_c
    iget-object v0, p0, mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 14
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 4135
    if-eqz p1, :cond_4

    if-nez p2, :cond_12

    .line 4136
    :cond_4
    const-string v5, "AccountManagerService"

    const-string/jumbo v6, "grantAppPermission: called with invalid arguments"

    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4159
    :goto_11
    return-void

    .line 4139
    :cond_12
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {p0, v5}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 4140
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 4141
    :try_start_1f
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 4142
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_75

    .line 4144
    :try_start_2a
    invoke-direct {p0, v3, p1}, getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v0

    .line 4145
    .local v0, "accountId":J
    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-ltz v5, :cond_5c

    .line 4146
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 4147
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "accounts_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4148
    const-string v5, "auth_token_type"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4149
    const-string/jumbo v5, "uid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4150
    const-string/jumbo v5, "grants"

    const-string v7, "accounts_id"

    invoke-virtual {v3, v5, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 4151
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5c
    .catchall {:try_start_2a .. :try_end_5c} :catchall_78

    .line 4154
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_5c
    :try_start_5c
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4156
    invoke-direct {p0, p1, p2, p3}, getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v7, Landroid/os/UserHandle;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v5, v7}, cancelNotification(ILandroid/os/UserHandle;)V

    .line 4158
    monitor-exit v6

    goto :goto_11

    .end local v0    # "accountId":J
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_75
    move-exception v5

    monitor-exit v6
    :try_end_77
    .catchall {:try_start_5c .. :try_end_77} :catchall_75

    throw v5

    .line 4154
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_78
    move-exception v5

    :try_start_79
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_75
.end method

.method private handleIncomingUser(I)I
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 3909
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, ""

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_17

    move-result p1

    .line 3914
    .end local p1    # "userId":I
    :goto_16
    return p1

    .line 3911
    .restart local p1    # "userId":I
    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method private hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 14
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "callerUid"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 4023
    const/16 v5, 0x3e8

    if-ne p3, v5, :cond_8

    move v3, v4

    .line 4041
    :goto_7
    return v3

    .line 4026
    :cond_8
    invoke-direct {p0}, getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 4027
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 4028
    :try_start_11
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 4029
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x4

    new-array v1, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x1

    aput-object p2, v1, v6

    const/4 v6, 0x2

    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v1, v6

    const/4 v6, 0x3

    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v7, v1, v6

    .line 4031
    .local v1, "args":[Ljava/lang/String;
    const-string v6, "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

    invoke-static {v2, v6, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3d

    move v3, v4

    .line 4033
    .local v3, "permissionGranted":Z
    :cond_3d
    if-nez v3, :cond_7b

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 4036
    const-string v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "no credentials permission for usage of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " by uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but ignoring since device is in test harness."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4039
    monitor-exit v5

    move v3, v4

    goto :goto_7

    .line 4041
    :cond_7b
    monitor-exit v5

    goto :goto_7

    .line 4042
    .end local v1    # "args":[Ljava/lang/String;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "permissionGranted":Z
    :catchall_7d
    move-exception v4

    monitor-exit v5
    :try_end_7f
    .catchall {:try_start_11 .. :try_end_7f} :catchall_7d

    throw v4
.end method

.method private initializeDebugDbSizeAndCompileSqlStatementForLogging(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "userAccount"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 3552
    invoke-direct {p0, p1}, getDebugTableRowCount(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 3553
    .local v0, "size":I
    const/16 v1, 0x40

    if-lt v0, v1, :cond_15

    .line 3555
    invoke-direct {p0, p1}, getDebugTableInsertionPoint(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    long-to-int v1, v2

    # setter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->debugDbInsertionPoint:I
    invoke-static {p2, v1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$3702(Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)I

    .line 3559
    :goto_11
    invoke-direct {p0, p1, p2}, compileSqlStatementForLogging(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 3560
    return-void

    .line 3557
    :cond_15
    # setter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->debugDbInsertionPoint:I
    invoke-static {p2, v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$3702(Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)I

    goto :goto_11
.end method

.method private insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    .registers 9
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v3, 0x0

    .line 4226
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 4227
    .local v0, "accountsForType":[Landroid/accounts/Account;
    if-eqz v0, :cond_25

    array-length v2, v0

    .line 4228
    .local v2, "oldLength":I
    :goto_10
    add-int/lit8 v4, v2, 0x1

    new-array v1, v4, [Landroid/accounts/Account;

    .line 4229
    .local v1, "newAccountsForType":[Landroid/accounts/Account;
    if-eqz v0, :cond_19

    .line 4230
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4232
    :cond_19
    aput-object p2, v1, v2

    .line 4233
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4234
    return-void

    .end local v1    # "newAccountsForType":[Landroid/accounts/Account;
    .end local v2    # "oldLength":I
    :cond_25
    move v2, v3

    .line 4227
    goto :goto_10
.end method

.method private insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J
    .registers 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "accountId"    # J
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 1109
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1110
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    const-string v1, "accounts_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1112
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    const-string/jumbo v1, "extras"

    const-string/jumbo v2, "key"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method private invalidateAuthTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "authToken"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1600
    if-eqz p4, :cond_7

    if-nez p3, :cond_8

    .line 1630
    :cond_7
    :goto_7
    return-void

    .line 1603
    :cond_8
    const-string v0, "SELECT authtokens._id, accounts.name, authtokens.type FROM accounts JOIN authtokens ON accounts._id = accounts_id WHERE authtoken = ? AND accounts.type = ?"

    new-array v1, v1, [Ljava/lang/String;

    aput-object p4, v1, v2

    aput-object p3, v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1615
    .local v7, "cursor":Landroid/database/Cursor;
    :goto_14
    :try_start_14
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1616
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1617
    .local v8, "authTokenId":J
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1618
    .local v6, "accountName":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1619
    .local v4, "authTokenType":Ljava/lang/String;
    const-string v0, "authtokens"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1620
    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v6, p3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_14 .. :try_end_4e} :catchall_4f

    goto :goto_14

    .line 1628
    .end local v4    # "authTokenType":Ljava/lang/String;
    .end local v6    # "accountName":Ljava/lang/String;
    .end local v8    # "authTokenId":J
    :catchall_4f
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_54
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_7
.end method

.method private invalidateCustomTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;

    .prologue
    .line 1591
    if-eqz p3, :cond_4

    if-nez p2, :cond_5

    .line 1596
    :cond_4
    :goto_4
    return-void

    .line 1595
    :cond_5
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/accounts/TokenCache;->remove(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private isAccountManagedByCaller(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .prologue
    .line 3971
    if-nez p1, :cond_4

    .line 3972
    const/4 v0, 0x0

    .line 3974
    :goto_3
    return v0

    :cond_4
    invoke-direct {p0, p2, p3}, getTypesManagedByCaller(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method private isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 4011
    invoke-direct {p0}, getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 4012
    invoke-direct {p0}, getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    .local v1, "arr$":[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1e
    if-ge v2, v3, :cond_2f

    aget-object v0, v1, v2

    .line 4013
    .local v0, "account":Landroid/accounts/Account;
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 4014
    const/4 v4, 0x1

    .line 4018
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "arr$":[Landroid/accounts/Account;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_2b
    return v4

    .line 4012
    .restart local v0    # "account":Landroid/accounts/Account;
    .restart local v1    # "arr$":[Landroid/accounts/Account;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 4018
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "arr$":[Landroid/accounts/Account;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2f
    const/4 v4, 0x0

    goto :goto_2b
.end method

.method private isAccountVisibleToCaller(Ljava/lang/String;IILjava/lang/String;)Z
    .registers 6
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3962
    if-nez p1, :cond_4

    .line 3963
    const/4 v0, 0x0

    .line 3965
    :goto_3
    return v0

    :cond_4
    invoke-direct {p0, p2, p3, p4}, getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method private isCrossUser(II)Z
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I

    .prologue
    .line 801
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_18

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private varargs isPermitted(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 12
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 3892
    move-object v0, p3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_4e

    aget-object v4, v0, v1

    .line 3893
    .local v4, "perm":Ljava/lang/String;
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4b

    .line 3894
    const-string v5, "AccountManagerService"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 3895
    const-string v5, "AccountManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  caller uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3897
    :cond_3a
    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v3

    .line 3898
    .local v3, "opCode":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_49

    iget-object v5, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v5, v3, p2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4b

    .line 3900
    :cond_49
    const/4 v5, 0x1

    .line 3904
    .end local v3    # "opCode":I
    .end local v4    # "perm":Ljava/lang/String;
    :goto_4a
    return v5

    .line 3892
    .restart local v4    # "perm":Ljava/lang/String;
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3904
    .end local v4    # "perm":Ljava/lang/String;
    :cond_4e
    const/4 v5, 0x0

    goto :goto_4a
.end method

.method private isPrivileged(I)Z
    .registers 16
    .param p1, "callingUid"    # I

    .prologue
    const/4 v9, 0x0

    .line 3918
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3922
    .local v1, "callingUserId":I
    :try_start_5
    iget-object v10, p0, mContext:Landroid/content/Context;

    const-string v11, "android"

    const/4 v12, 0x0

    new-instance v13, Landroid/os/UserHandle;

    invoke-direct {v13, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_16} :catch_33

    move-result-object v8

    .line 3928
    .local v8, "userPackageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v8, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 3929
    .local v7, "packages":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1e
    if-ge v3, v4, :cond_32

    aget-object v5, v0, v3

    .line 3931
    .local v5, "name":Ljava/lang/String;
    const/4 v10, 0x0

    :try_start_23
    invoke-virtual {v8, v5, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 3932
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_37

    iget-object v10, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_2d} :catch_35

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_37

    .line 3935
    const/4 v9, 0x1

    .line 3941
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "packages":[Ljava/lang/String;
    .end local v8    # "userPackageManager":Landroid/content/pm/PackageManager;
    :cond_32
    :goto_32
    return v9

    .line 3924
    :catch_33
    move-exception v2

    .line 3925
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_32

    .line 3937
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v7    # "packages":[Ljava/lang/String;
    .restart local v8    # "userPackageManager":Landroid/content/pm/PackageManager;
    :catch_35
    move-exception v2

    .line 3938
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_32

    .line 3929
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e
.end method

.method private isSystemUid(I)Z
    .registers 16
    .param p1, "callingUid"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 4046
    const/4 v8, 0x0

    .line 4047
    .local v8, "packages":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4049
    .local v4, "ident":J
    :try_start_7
    iget-object v11, p0, mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_2b

    move-result-object v8

    .line 4051
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4053
    if-eqz v8, :cond_43

    .line 4054
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_15
    if-ge v2, v3, :cond_5b

    aget-object v6, v0, v2

    .line 4056
    .local v6, "name":Ljava/lang/String;
    :try_start_19
    iget-object v11, p0, mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v6, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 4057
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_40

    iget-object v11, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_26} :catch_30

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_40

    .line 4069
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_2a
    return v9

    .line 4051
    :catchall_2b
    move-exception v9

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 4062
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v6    # "name":Ljava/lang/String;
    :catch_30
    move-exception v1

    .line 4063
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "AccountManagerService"

    const-string v12, "Could not find package [%s]"

    new-array v13, v9, [Ljava/lang/Object;

    aput-object v6, v13, v10

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4054
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 4067
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "name":Ljava/lang/String;
    :cond_43
    const-string v9, "AccountManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No known packages with uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    move v9, v10

    .line 4069
    goto :goto_2a
.end method

.method private logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 15
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "accountId"    # J
    .param p6, "userAccount"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 3524
    invoke-static {}, getCallingUid()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 3525
    return-void
.end method

.method private logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .registers 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "accountId"    # J
    .param p6, "userAccount"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p7, "callingUid"    # I

    .prologue
    .line 3532
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->statementForLogging:Landroid/database/sqlite/SQLiteStatement;
    invoke-static {p6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$3500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 3533
    .local v0, "logStatement":Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p4, p5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3534
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 3535
    const/4 v1, 0x3

    # getter for: Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->dateFromat:Ljava/text/SimpleDateFormat;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->access$3600()Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 3536
    const/4 v1, 0x4

    int-to-long v2, p7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3537
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 3538
    const/4 v1, 0x6

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->debugDbInsertionPoint:I
    invoke-static {p6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$3700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3539
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 3540
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 3541
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->debugDbInsertionPoint:I
    invoke-static {p6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$3700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x40

    # setter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->debugDbInsertionPoint:I
    invoke-static {p6, v1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$3702(Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)I

    .line 3543
    return-void
.end method

.method private logRecord(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;

    .prologue
    .line 3510
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3511
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 3512
    return-void
.end method

.method private logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    .line 3515
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3516
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v6, p1

    move v7, p4

    invoke-direct/range {v0 .. v7}, logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 3517
    return-void
.end method

.method private newGrantCredentialsPermissionIntent(Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/content/Intent;
    .registers 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I
    .param p3, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p4, "authTokenType"    # Ljava/lang/String;

    .prologue
    .line 2253
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const-class v2, Landroid/accounts/GrantCredentialsPermissionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2257
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2258
    invoke-direct {p0, p1, p4, p2}, getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2261
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2262
    const-string v1, "authTokenType"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2263
    const-string/jumbo v1, "response"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2264
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2266
    return-object v0
.end method

.method private onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "result"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x2

    .line 1925
    if-nez p2, :cond_10

    .line 1926
    const-string v1, "AccountManagerService"

    const-string/jumbo v2, "the result is unexpectedly null"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1928
    :cond_10
    const-string v1, "AccountManagerService"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1929
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " calling onResult() on response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    :cond_3c
    :try_start_3c
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_40

    .line 1941
    :cond_3f
    :goto_3f
    return-void

    .line 1934
    :catch_40
    move-exception v0

    .line 1937
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccountManagerService"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1938
    const-string v1, "AccountManagerService"

    const-string/jumbo v2, "failure while notifying response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f
.end method

.method private onUserAdded(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 530
    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 531
    .local v0, "userId":I
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " added"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v1, 0x1

    if-ge v0, v1, :cond_31

    .line 534
    const-string v1, "AccountManagerService"

    const-string v2, " invalid user added"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :goto_30
    return-void

    .line 538
    :cond_31
    iget-object v2, p0, mUsers:Landroid/util/SparseArray;

    monitor-enter v2

    .line 539
    const/16 v1, 0x64

    if-lt v0, v1, :cond_61

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_61

    :try_start_3c
    iget-object v1, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 541
    const-string v1, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clean up stale account entries for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v1, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 544
    :cond_61
    monitor-exit v2

    goto :goto_30

    :catchall_63
    move-exception v1

    monitor-exit v2
    :try_end_65
    .catchall {:try_start_3c .. :try_end_65} :catchall_63

    throw v1
.end method

.method private onUserRemoved(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 581
    const-string v3, "android.intent.extra.user_handle"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 582
    .local v2, "userId":I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_b

    .line 600
    :goto_a
    return-void

    .line 585
    :cond_b
    iget-object v4, p0, mUsers:Landroid/util/SparseArray;

    monitor-enter v4

    .line 586
    :try_start_e
    iget-object v3, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 587
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v3, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 588
    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_2b

    .line 589
    if-nez v0, :cond_2e

    .line 590
    new-instance v1, Ljava/io/File;

    invoke-static {v2}, getDatabaseName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 591
    .local v1, "dbFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_a

    .line 588
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v1    # "dbFile":Ljava/io/File;
    :catchall_2b
    move-exception v3

    :try_start_2c
    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v3

    .line 595
    .restart local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :cond_2e
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 596
    :try_start_33
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->close()V

    .line 597
    new-instance v1, Ljava/io/File;

    invoke-static {v2}, getDatabaseName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 598
    .restart local v1    # "dbFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 599
    monitor-exit v4

    goto :goto_a

    .end local v1    # "dbFile":Ljava/io/File;
    :catchall_48
    move-exception v3

    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_33 .. :try_end_4a} :catchall_48

    throw v3
.end method

.method private onUserStarted(Landroid/content/Intent;)V
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 603
    const-string v7, "android.intent.extra.user_handle"

    const/4 v8, -0x1

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 604
    .local v6, "userId":I
    const/4 v7, 0x1

    if-ge v6, v7, :cond_c

    .line 615
    :cond_b
    return-void

    .line 607
    :cond_c
    invoke-virtual {p0, v6}, getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v5

    .line 608
    .local v5, "sharedAccounts":[Landroid/accounts/Account;
    if-eqz v5, :cond_b

    array-length v7, v5

    if-eqz v7, :cond_b

    .line 609
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v9, v6, v7}, getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 610
    .local v0, "accounts":[Landroid/accounts/Account;
    move-object v1, v5

    .local v1, "arr$":[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_22
    if-ge v2, v3, :cond_b

    aget-object v4, v1, v2

    .line 611
    .local v4, "sa":Landroid/accounts/Account;
    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 610
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 613
    :cond_2f
    const/4 v7, 0x0

    invoke-virtual {p0, v9, v4, v7, v6}, copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V

    goto :goto_2c
.end method

.method private permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z
    .registers 13
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "callerUid"    # I
    .param p4, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3946
    invoke-direct {p0, p3}, isPrivileged(I)Z

    move-result v2

    .line 3947
    .local v2, "isPrivileged":Z
    if-eqz p1, :cond_61

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v5, p3, p4}, isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_61

    move v0, v3

    .line 3949
    .local v0, "fromAuthenticator":Z
    :goto_11
    if-eqz p1, :cond_63

    invoke-direct {p0, p1, p2, p3}, hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_63

    move v1, v3

    .line 3951
    .local v1, "hasExplicitGrants":Z
    :goto_1a
    const-string v5, "AccountManagerService"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 3952
    const-string v5, "AccountManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkGrantsOrCallingUidAgainstAuthenticator: caller uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": is authenticator? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", has explicit permission? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3957
    :cond_59
    if-nez v0, :cond_5f

    if-nez v1, :cond_5f

    if-eqz v2, :cond_60

    :cond_5f
    move v4, v3

    :cond_60
    return v4

    .end local v0    # "fromAuthenticator":Z
    .end local v1    # "hasExplicitGrants":Z
    :cond_61
    move v0, v4

    .line 3947
    goto :goto_11

    .restart local v0    # "fromAuthenticator":Z
    :cond_63
    move v1, v4

    .line 3949
    goto :goto_1a
.end method

.method private purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 16
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 557
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 558
    :try_start_7
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 559
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "grants"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "uid"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "uid"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_74

    move-result-object v8

    .line 563
    .local v8, "cursor":Landroid/database/Cursor;
    :cond_26
    :goto_26
    :try_start_26
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 564
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 565
    .local v10, "uid":I
    iget-object v1, p0, mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_77

    move v9, v11

    .line 566
    .local v9, "packageExists":Z
    :goto_3a
    if-nez v9, :cond_26

    .line 569
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deleting grants for UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because its package is no longer installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-string/jumbo v1, "grants"

    const-string/jumbo v2, "uid=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_26 .. :try_end_6e} :catchall_6f

    goto :goto_26

    .line 575
    .end local v9    # "packageExists":Z
    .end local v10    # "uid":I
    :catchall_6f
    move-exception v1

    :try_start_70
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 577
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_74
    move-exception v1

    monitor-exit v13
    :try_end_76
    .catchall {:try_start_70 .. :try_end_76} :catchall_74

    throw v1

    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "uid":I
    :cond_77
    move v9, v12

    .line 565
    goto :goto_3a

    .line 575
    .end local v10    # "uid":I
    :cond_79
    :try_start_79
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 577
    monitor-exit v13
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_74

    .line 578
    return-void
.end method

.method private purgeOldGrantsAll()V
    .registers 4

    .prologue
    .line 549
    iget-object v2, p0, mUsers:Landroid/util/SparseArray;

    monitor-enter v2

    .line 550
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    :try_start_4
    iget-object v1, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 551
    iget-object v1, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-direct {p0, v1}, purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 553
    :cond_1a
    monitor-exit v2

    .line 554
    return-void

    .line 553
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private readPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .registers 14
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v9, 0x0

    .line 649
    if-nez p2, :cond_5

    move-object v1, v9

    .line 664
    :goto_4
    return-object v1

    .line 653
    :cond_5
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 654
    :try_start_a
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 655
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "accounts"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "password"

    aput-object v4, v2, v3

    const-string/jumbo v3, "name=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_33
    .catchall {:try_start_a .. :try_end_33} :catchall_44

    move-result-object v8

    .line 659
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_34
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 660
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_4d

    move-result-object v1

    .line 664
    :try_start_3f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    monitor-exit v10

    goto :goto_4

    .line 666
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_44
    move-exception v1

    monitor-exit v10
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_44

    throw v1

    .line 664
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_47
    :try_start_47
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    monitor-exit v10

    move-object v1, v9

    goto :goto_4

    :catchall_4d
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_44
.end method

.method private readPreviousNameInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .registers 16
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v9, 0x0

    .line 688
    if-nez p2, :cond_4

    .line 716
    :goto_3
    return-object v9

    .line 691
    :cond_4
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 692
    :try_start_9
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/concurrent/atomic/AtomicReference;

    .line 693
    .local v10, "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    if-nez v10, :cond_68

    .line 694
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 695
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "accounts"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "previous_name"

    aput-object v4, v2, v3

    const-string/jumbo v3, "name=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_5b

    move-result-object v8

    .line 704
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_3f
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 705
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 706
    .local v9, "previousName":Ljava/lang/String;
    new-instance v11, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v11, v9}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_3f .. :try_end_4f} :catchall_63

    .line 707
    .end local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    .local v11, "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :try_start_4f
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_71

    .line 713
    :try_start_56
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    monitor-exit v12

    goto :goto_3

    .line 718
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "previousName":Ljava/lang/String;
    .end local v11    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :catchall_5b
    move-exception v1

    monitor-exit v12
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_5b

    throw v1

    .line 713
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :cond_5e
    :try_start_5e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    monitor-exit v12

    goto :goto_3

    :catchall_63
    move-exception v1

    :goto_64
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 716
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_68
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v12
    :try_end_6f
    .catchall {:try_start_5e .. :try_end_6f} :catchall_5b

    move-object v9, v1

    goto :goto_3

    .line 713
    .end local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "previousName":Ljava/lang/String;
    .restart local v11    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :catchall_71
    move-exception v1

    move-object v10, v11

    .end local v11    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    .restart local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    goto :goto_64
.end method

.method private removeAccountDB(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 507
    const/4 v2, 0x1

    if-ge p1, v2, :cond_4

    .line 523
    :goto_3
    return-void

    .line 509
    :cond_4
    iget-object v3, p0, mUsers:Landroid/util/SparseArray;

    monitor-enter v3

    .line 510
    :try_start_7
    iget-object v2, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 511
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v2, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 512
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_24

    .line 513
    if-nez v0, :cond_27

    .line 514
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, getDatabaseName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 515
    .local v1, "dbFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 512
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v1    # "dbFile":Ljava/io/File;
    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2

    .line 518
    .restart local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :cond_27
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 519
    :try_start_2c
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->close()V

    .line 520
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, getDatabaseName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 521
    .restart local v1    # "dbFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 522
    monitor-exit v3

    goto :goto_3

    .end local v1    # "dbFile":Ljava/io/File;
    :catchall_41
    move-exception v2

    monitor-exit v3
    :try_end_43
    .catchall {:try_start_2c .. :try_end_43} :catchall_41

    throw v2
.end method

.method private removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    .registers 12
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 4201
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/accounts/Account;

    .line 4202
    .local v6, "oldAccountsForType":[Landroid/accounts/Account;
    if-eqz v6, :cond_35

    .line 4203
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4204
    .local v5, "newAccountsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    move-object v0, v6

    .local v0, "arr$":[Landroid/accounts/Account;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_16
    if-ge v2, v3, :cond_26

    aget-object v1, v0, v2

    .line 4205
    .local v1, "curAccount":Landroid/accounts/Account;
    invoke-virtual {v1, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_23

    .line 4206
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4204
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 4209
    .end local v1    # "curAccount":Landroid/accounts/Account;
    :cond_26
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 4210
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4217
    .end local v0    # "arr$":[Landroid/accounts/Account;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "newAccountsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    :cond_35
    :goto_35
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4218
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4219
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4220
    return-void

    .line 4212
    .restart local v0    # "arr$":[Landroid/accounts/Account;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "newAccountsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    :cond_4b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v4, v7, [Landroid/accounts/Account;

    .line 4213
    .local v4, "newAccountsForType":[Landroid/accounts/Account;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "newAccountsForType":[Landroid/accounts/Account;
    check-cast v4, [Landroid/accounts/Account;

    .line 4214
    .restart local v4    # "newAccountsForType":[Landroid/accounts/Account;
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35
.end method

.method private removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z
    .registers 26
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 1509
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 1510
    :try_start_5
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1511
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v6

    .line 1512
    .local v6, "accountId":J
    const-string v2, "accounts"

    const-string/jumbo v4, "name=? AND type=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v10, v5, v8

    const/4 v8, 0x1

    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v10, v5, v8

    invoke-virtual {v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 1515
    .local v16, "deleted":I
    invoke-direct/range {p0 .. p2}, removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    .line 1516
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, sendAccountsChangedBroadcast(I)V

    .line 1518
    # getter for: Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_ACCOUNT_REMOVE:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->access$2000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "accounts"

    move-object/from16 v2, p0

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 1519
    monitor-exit v9
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_f5

    .line 1520
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    if-nez v2, :cond_a6

    .line 1523
    invoke-static {}, getCallingUid()I

    move-result v15

    .line 1524
    .local v15, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 1526
    .local v20, "id":J
    :try_start_57
    move-object/from16 v0, p0

    iget-object v2, v0, mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v22

    .line 1527
    .local v22, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_64
    :goto_64
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/UserInfo;

    .line 1528
    .local v19, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v2

    if-nez v2, :cond_64

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 1529
    move-object/from16 v0, v19

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v15}, removeSharedAccountAsUser(Landroid/accounts/Account;II)Z
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_87} :catch_88
    .catchall {:try_start_57 .. :try_end_87} :catchall_fc

    goto :goto_64

    .line 1532
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v19    # "user":Landroid/content/pm/UserInfo;
    .end local v22    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_88
    move-exception v17

    .line 1533
    .local v17, "e":Ljava/lang/Exception;
    :try_start_89
    const-string v2, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove user."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catchall {:try_start_89 .. :try_end_a3} :catchall_fc

    .line 1536
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1540
    .end local v15    # "callingUid":I
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v20    # "id":J
    :cond_a6
    :goto_a6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 1541
    .restart local v20    # "id":J
    if-lez v16, :cond_101

    .line 1542
    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing {name="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " succeeded"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v14

    invoke-static/range {v8 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1552
    :goto_ee
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1554
    if-lez v16, :cond_144

    const/4 v2, 0x1

    :goto_f4
    return v2

    .line 1519
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "accountId":J
    .end local v16    # "deleted":I
    .end local v20    # "id":J
    :catchall_f5
    move-exception v2

    :try_start_f6
    monitor-exit v9
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f5

    throw v2

    .line 1536
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v6    # "accountId":J
    .restart local v15    # "callingUid":I
    .restart local v16    # "deleted":I
    .restart local v18    # "i$":Ljava/util/Iterator;
    .restart local v20    # "id":J
    .restart local v22    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_f8
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a6

    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v22    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_fc
    move-exception v2

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1547
    .end local v15    # "callingUid":I
    :cond_101
    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing {name="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " failed"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v14

    invoke-static/range {v8 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_ee

    .line 1554
    :cond_144
    const/4 v2, 0x0

    goto :goto_f4
.end method

.method private removeSharedAccountAsUser(Landroid/accounts/Account;II)Z
    .registers 15
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2893
    invoke-direct {p0, p2}, handleIncomingUser(I)I

    move-result p2

    .line 2894
    invoke-virtual {p0, p2}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    .line 2895
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2896
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1, p1}, getAccountIdFromSharedTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v4

    .line 2897
    .local v4, "sharedTableAccountId":J
    const-string/jumbo v0, "shared_accounts"

    const-string/jumbo v2, "name=? AND type=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v3, v10

    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v7, v3, v9

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 2899
    .local v8, "r":I
    if-lez v8, :cond_3c

    .line 2900
    # getter for: Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_ACCOUNT_REMOVE:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->access$2000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "shared_accounts"

    move-object v0, p0

    move v7, p3

    invoke-direct/range {v0 .. v7}, logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 2902
    invoke-direct {p0, v6, p1}, removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z

    .line 2904
    :cond_3c
    if-lez v8, :cond_40

    move v0, v9

    :goto_3f
    return v0

    :cond_40
    move v0, v10

    goto :goto_3f
.end method

.method private renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;
    .registers 28
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "accountToRename"    # Landroid/accounts/Account;
    .param p3, "newName"    # Ljava/lang/String;

    .prologue
    .line 1236
    const/16 v17, 0x0

    .line 1246
    .local v17, "resultAccount":Landroid/accounts/Account;
    invoke-direct/range {p0 .. p2}, getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v6, Landroid/os/UserHandle;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, cancelNotification(ILandroid/os/UserHandle;)V

    .line 1249
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v6

    monitor-enter v6

    .line 1251
    :try_start_1d
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_29
    :goto_29
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    .line 1252
    .local v15, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v4, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1253
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1254
    .local v13, "id":I
    new-instance v4, Landroid/os/UserHandle;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v7

    invoke-direct {v4, v7}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v4}, cancelNotification(ILandroid/os/UserHandle;)V

    goto :goto_29

    .line 1257
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "id":I
    .end local v15    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    :catchall_60
    move-exception v4

    monitor-exit v6
    :try_end_62
    .catchall {:try_start_1d .. :try_end_62} :catchall_60

    throw v4

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_63
    :try_start_63
    monitor-exit v6
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_60

    .line 1258
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v23

    monitor-enter v23

    .line 1259
    :try_start_69
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1260
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1261
    const/4 v14, 0x0

    .line 1262
    .local v14, "isSuccessful":Z
    new-instance v16, Landroid/accounts/Account;

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_69 .. :try_end_82} :catchall_15b

    .line 1264
    .local v16, "renamedAccount":Landroid/accounts/Account;
    :try_start_82
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 1265
    .local v22, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "name"

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    const-string/jumbo v4, "previous_name"

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v8

    .line 1268
    .local v8, "accountId":J
    const-wide/16 v6, 0x0

    cmp-long v4, v8, v6

    if-ltz v4, :cond_cf

    .line 1269
    const/4 v4, 0x1

    new-array v11, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v11, v4

    .line 1270
    .local v11, "argsAccountId":[Ljava/lang/String;
    const-string v4, "accounts"

    const-string v6, "_id=?"

    move-object/from16 v0, v22

    invoke-virtual {v5, v4, v0, v6, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1271
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1272
    const/4 v14, 0x1

    .line 1273
    # getter for: Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_ACCOUNT_RENAME:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->access$1700()Ljava/lang/String;

    move-result-object v6

    const-string v7, "accounts"

    move-object/from16 v4, p0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_cf
    .catchall {:try_start_82 .. :try_end_cf} :catchall_169

    .line 1277
    .end local v11    # "argsAccountId":[Ljava/lang/String;
    :cond_cf
    :try_start_cf
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1278
    if-eqz v14, :cond_167

    .line 1283
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    .line 1289
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    .line 1290
    .local v18, "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/HashMap;

    .line 1291
    .local v19, "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p2}, removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    .line 1296
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    move-object/from16 v17, v16

    .line 1303
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    if-nez v4, :cond_15e

    .line 1308
    move-object/from16 v0, p0

    iget-object v4, v0, mUserManager:Landroid/os/UserManager;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v21

    .line 1309
    .local v21, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_135
    :goto_135
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/UserInfo;

    .line 1310
    .local v20, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v4

    if-nez v4, :cond_135

    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v4

    if-eqz v4, :cond_135

    .line 1311
    move-object/from16 v0, v20

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v4}, renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    goto :goto_135

    .line 1318
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "accountId":J
    .end local v14    # "isSuccessful":Z
    .end local v16    # "renamedAccount":Landroid/accounts/Account;
    .end local v18    # "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "user":Landroid/content/pm/UserInfo;
    .end local v21    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v22    # "values":Landroid/content/ContentValues;
    :catchall_15b
    move-exception v4

    monitor-exit v23
    :try_end_15d
    .catchall {:try_start_cf .. :try_end_15d} :catchall_15b

    throw v4

    .line 1315
    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "accountId":J
    .restart local v14    # "isSuccessful":Z
    .restart local v16    # "renamedAccount":Landroid/accounts/Account;
    .restart local v18    # "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "values":Landroid/content/ContentValues;
    :cond_15e
    :try_start_15e
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, sendAccountsChangedBroadcast(I)V

    .line 1318
    .end local v18    # "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_167
    monitor-exit v23

    .line 1319
    return-object v17

    .line 1277
    .end local v8    # "accountId":J
    .end local v22    # "values":Landroid/content/ContentValues;
    :catchall_169
    move-exception v4

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1278
    if-eqz v14, :cond_1ff

    .line 1283
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    .line 1289
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    .line 1290
    .restart local v18    # "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/HashMap;

    .line 1291
    .restart local v19    # "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p2}, removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    .line 1296
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v6

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v6

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v6

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v7, v10}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    move-object/from16 v17, v16

    .line 1303
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    if-nez v6, :cond_1f6

    .line 1308
    move-object/from16 v0, p0

    iget-object v6, v0, mUserManager:Landroid/os/UserManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v21

    .line 1309
    .restart local v21    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1d0
    :goto_1d0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/UserInfo;

    .line 1310
    .restart local v20    # "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v6

    if-nez v6, :cond_1d0

    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v6

    if-eqz v6, :cond_1d0

    .line 1311
    move-object/from16 v0, v20

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v6}, renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    goto :goto_1d0

    .line 1315
    .end local v20    # "user":Landroid/content/pm/UserInfo;
    .end local v21    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1f6
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, sendAccountsChangedBroadcast(I)V

    .line 1316
    .end local v18    # "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1ff
    throw v4
    :try_end_200
    .catchall {:try_start_15e .. :try_end_200} :catchall_15b
.end method

.method private revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 14
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 4170
    if-eqz p1, :cond_4

    if-nez p2, :cond_12

    .line 4171
    :cond_4
    const-string v4, "AccountManagerService"

    const-string/jumbo v5, "revokeAppPermission: called with invalid arguments"

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4194
    :goto_11
    return-void

    .line 4174
    :cond_12
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {p0, v4}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 4175
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 4176
    :try_start_1f
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 4177
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_6c

    .line 4179
    :try_start_2a
    invoke-direct {p0, v3, p1}, getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v0

    .line 4180
    .local v0, "accountId":J
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-ltz v4, :cond_53

    .line 4181
    const-string/jumbo v4, "grants"

    const-string v6, "accounts_id=? AND auth_token_type=? AND uid=?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4186
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_53
    .catchall {:try_start_2a .. :try_end_53} :catchall_6f

    .line 4189
    :cond_53
    :try_start_53
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4191
    invoke-direct {p0, p1, p2, p3}, getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v6, Landroid/os/UserHandle;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v4, v6}, cancelNotification(ILandroid/os/UserHandle;)V

    .line 4193
    monitor-exit v5

    goto :goto_11

    .end local v0    # "accountId":J
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_6c
    move-exception v4

    monitor-exit v5
    :try_end_6e
    .catchall {:try_start_53 .. :try_end_6e} :catchall_6c

    throw v4

    .line 4189
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_6f
    move-exception v4

    :try_start_70
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_6c
.end method

.method private saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "authToken"    # Ljava/lang/String;

    .prologue
    .line 1654
    if-eqz p2, :cond_4

    if-nez p3, :cond_6

    .line 1655
    :cond_4
    const/4 v0, 0x0

    .line 1681
    :goto_5
    return v0

    .line 1657
    :cond_6
    invoke-direct {p0, p1, p2}, getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Landroid/os/UserHandle;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, cancelNotification(ILandroid/os/UserHandle;)V

    .line 1659
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 1660
    :try_start_1f
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1661
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_3a

    .line 1663
    :try_start_2a
    invoke-direct {p0, v2, p2}, getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_ae

    move-result-wide v6

    .line 1664
    .local v6, "accountId":J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-gez v0, :cond_3d

    .line 1665
    const/4 v0, 0x0

    .line 1681
    :try_start_35
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v9

    goto :goto_5

    .line 1683
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "accountId":J
    :catchall_3a
    move-exception v0

    monitor-exit v9
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3a

    throw v0

    .line 1667
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v6    # "accountId":J
    :cond_3d
    :try_start_3d
    const-string v0, "authtokens"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accounts_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1670
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1671
    .local v8, "values":Landroid/content/ContentValues;
    const-string v0, "accounts_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1672
    const-string/jumbo v0, "type"

    invoke-virtual {v8, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    const-string v0, "authtoken"

    invoke-virtual {v8, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    const-string v0, "authtokens"

    const-string v1, "authtoken"

    invoke-virtual {v2, v0, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_a7

    .line 1675
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1676
    invoke-virtual/range {v0 .. v5}, writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a0
    .catchall {:try_start_3d .. :try_end_a0} :catchall_ae

    .line 1677
    const/4 v0, 0x1

    .line 1681
    :try_start_a1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v9

    goto/16 :goto_5

    .line 1679
    :cond_a7
    const/4 v0, 0x0

    .line 1681
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v9

    goto/16 :goto_5

    .end local v6    # "accountId":J
    .end local v8    # "values":Landroid/content/ContentValues;
    :catchall_ae
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_b3
    .catchall {:try_start_a1 .. :try_end_b3} :catchall_3a
.end method

.method private saveCachedToken(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
    .registers 18
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "callerPkg"    # Ljava/lang/String;
    .param p4, "callerSigDigest"    # [B
    .param p5, "tokenType"    # Ljava/lang/String;
    .param p6, "token"    # Ljava/lang/String;
    .param p7, "expiryMillis"    # J

    .prologue
    .line 1641
    if-eqz p2, :cond_8

    if-eqz p5, :cond_8

    if-eqz p3, :cond_8

    if-nez p4, :cond_9

    .line 1650
    :cond_8
    :goto_8
    return-void

    .line 1644
    :cond_9
    invoke-direct {p0, p1, p2}, getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Landroid/os/UserHandle;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, cancelNotification(ILandroid/os/UserHandle;)V

    .line 1646
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 1647
    :try_start_22
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v0

    move-object v1, p2

    move-object v2, p6

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accounts/TokenCache;->put(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJ)V

    .line 1649
    monitor-exit v8

    goto :goto_8

    :catchall_32
    move-exception v0

    monitor-exit v8
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_32

    throw v0
.end method

.method private static scanArgs([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3747
    if-eqz p0, :cond_14

    .line 3748
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_5
    if-ge v2, v3, :cond_14

    aget-object v0, v1, v2

    .line 3749
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 3750
    const/4 v4, 0x1

    .line 3754
    .end local v0    # "arg":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_10
    return v4

    .line 3748
    .restart local v0    # "arg":Ljava/lang/String;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3754
    .end local v0    # "arg":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_14
    const/4 v4, 0x0

    goto :goto_10
.end method

.method private sendAccountsChangedBroadcast(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 1806
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the accounts changed, sending broadcast of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    iget-object v0, p0, mContext:Landroid/content/Context;

    sget-object v1, ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1809
    return-void
.end method

.method private setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 23
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .prologue
    .line 1770
    if-nez p2, :cond_3

    .line 1803
    :goto_2
    return-void

    .line 1773
    :cond_3
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17

    .line 1774
    :try_start_8
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1775
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_b2

    .line 1777
    :try_start_13
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 1778
    .local v16, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "password"

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v6

    .line 1780
    .local v6, "accountId":J
    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-ltz v2, :cond_76

    .line 1781
    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v15, v2

    .line 1782
    .local v15, "argsAccountId":[Ljava/lang/String;
    const-string v2, "accounts"

    const-string v5, "_id=?"

    move-object/from16 v0, v16

    invoke-virtual {v3, v2, v0, v5, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1783
    const-string v2, "authtokens"

    const-string v5, "accounts_id=?"

    invoke-virtual {v3, v2, v5, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1784
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/server/accounts/TokenCache;->remove(Landroid/accounts/Account;)V

    .line 1786
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1788
    if-eqz p3, :cond_67

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b5

    :cond_67
    # getter for: Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_CLEAR_PASSWORD:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->access$2100()Ljava/lang/String;

    move-result-object v4

    .line 1791
    .local v4, "action":Ljava/lang/String;
    :goto_6b
    const-string v5, "accounts"

    move-object/from16 v2, p0

    move-object/from16 v8, p1

    move/from16 v9, p4

    invoke-direct/range {v2 .. v9}, logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 1794
    .end local v4    # "action":Ljava/lang/String;
    .end local v15    # "argsAccountId":[Ljava/lang/String;
    :cond_76
    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " succeeded"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v14

    invoke-static/range {v8 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_a3
    .catchall {:try_start_13 .. :try_end_a3} :catchall_ba

    .line 1799
    :try_start_a3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1801
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, sendAccountsChangedBroadcast(I)V

    .line 1802
    monitor-exit v17

    goto/16 :goto_2

    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "accountId":J
    .end local v16    # "values":Landroid/content/ContentValues;
    :catchall_b2
    move-exception v2

    monitor-exit v17
    :try_end_b4
    .catchall {:try_start_a3 .. :try_end_b4} :catchall_b2

    throw v2

    .line 1788
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v6    # "accountId":J
    .restart local v15    # "argsAccountId":[Ljava/lang/String;
    .restart local v16    # "values":Landroid/content/ContentValues;
    :cond_b5
    :try_start_b5
    # getter for: Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_SET_PASSWORD:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->access$2200()Ljava/lang/String;
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_ba

    move-result-object v4

    goto :goto_6b

    .line 1799
    .end local v6    # "accountId":J
    .end local v15    # "argsAccountId":[Ljava/lang/String;
    .end local v16    # "values":Landroid/content/ContentValues;
    :catchall_ba
    move-exception v2

    :try_start_bb
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_bf
    .catchall {:try_start_bb .. :try_end_bf} :catchall_b2
.end method

.method private setUserdataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 23
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 1867
    if-eqz p2, :cond_4

    if-nez p3, :cond_5

    .line 1922
    :cond_4
    :goto_4
    return-void

    .line 1870
    :cond_5
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17

    .line 1871
    :try_start_a
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 1872
    .local v13, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_55

    .line 1874
    :try_start_15
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v1}, getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v4

    .line 1875
    .local v4, "accountId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-gez v2, :cond_58

    .line 1877
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    .end local v4    # "accountId":J
    move-result v5

    const-string v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_50
    .catchall {:try_start_15 .. :try_end_50} :catchall_150

    .line 1919
    :try_start_50
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v17

    goto :goto_4

    .line 1921
    .end local v13    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_55
    move-exception v2

    monitor-exit v17
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_55

    throw v2

    .line 1884
    .restart local v4    # "accountId":J
    .restart local v13    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_58
    :try_start_58
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v13, v4, v5, v1}, getExtrasIdLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)J

    move-result-wide v14

    .line 1885
    .local v14, "extrasId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-gez v2, :cond_aa

    move-object/from16 v2, p0

    move-object v3, v13

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 1886
    invoke-direct/range {v2 .. v7}, insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v14

    .line 1887
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-gez v2, :cond_10c

    .line 1889
    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v12

    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_a4
    .catchall {:try_start_58 .. :try_end_a4} :catchall_150

    .line 1919
    :try_start_a4
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v17
    :try_end_a8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_55

    goto/16 :goto_4

    .line 1897
    :cond_aa
    :try_start_aa
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 1898
    .local v16, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "value"

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    const/4 v2, 0x1

    const-string/jumbo v3, "extras"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v3, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_10c

    .line 1901
    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v12

    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_106
    .catchall {:try_start_aa .. :try_end_106} :catchall_150

    .line 1919
    :try_start_106
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v17
    :try_end_10a
    .catchall {:try_start_106 .. :try_end_10a} :catchall_55

    goto/16 :goto_4

    .line 1911
    .end local v16    # "values":Landroid/content/ContentValues;
    :cond_10c
    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x1

    :try_start_10f
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v12

    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object v8, v13

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    .line 1916
    invoke-virtual/range {v6 .. v11}, writeUserDataIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_14a
    .catchall {:try_start_10f .. :try_end_14a} :catchall_150

    .line 1919
    :try_start_14a
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1921
    monitor-exit v17

    goto/16 :goto_4

    .line 1919
    .end local v4    # "accountId":J
    .end local v14    # "extrasId":J
    :catchall_150
    move-exception v2

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_155
    .catchall {:try_start_14a .. :try_end_155} :catchall_55
.end method

.method private showCantAddAccount(II)V
    .registers 8
    .param p1, "errorCode"    # I
    .param p2, "userId"    # I

    .prologue
    .line 2455
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const-class v4, Landroid/accounts/CantAddAccountActivity;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2456
    .local v0, "cantAddAccount":Landroid/content/Intent;
    const-string v1, "android.accounts.extra.ERROR_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2457
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2458
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v2

    .line 2460
    .local v2, "identityToken":J
    :try_start_17
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_25

    .line 2462
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    .line 2464
    return-void

    .line 2462
    :catchall_25
    move-exception v1

    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    throw v1
.end method

.method private static final stringArrayToString([Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # [Ljava/lang/String;

    .prologue
    .line 4197
    if-eqz p0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_21
    return-object v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private updateLastAuthenticatedTime(Landroid/accounts/Account;)Z
    .registers 14
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 960
    invoke-direct {p0}, getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 961
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 962
    :try_start_b
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 963
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "last_password_entry_time_millis_epoch"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 964
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 965
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "accounts"

    const-string/jumbo v8, "name=? AND type=?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v1, v7, v3, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 972
    .local v2, "i":I
    if-lez v2, :cond_40

    .line 973
    monitor-exit v6

    .line 976
    :goto_3f
    return v4

    .line 975
    :cond_40
    monitor-exit v6

    move v4, v5

    .line 976
    goto :goto_3f

    .line 975
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "i":I
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_43
    move-exception v4

    monitor-exit v6
    :try_end_45
    .catchall {:try_start_b .. :try_end_45} :catchall_43

    throw v4
.end method

.method private validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V
    .registers 31
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "invalidateAuthenticatorCache"    # Z

    .prologue
    .line 393
    if-eqz p2, :cond_d

    .line 394
    move-object/from16 v0, p0

    iget-object v3, v0, mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->invalidateCache(I)V

    .line 397
    :cond_d
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v24

    .line 399
    .local v24, "knownAuth":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/accounts/AuthenticatorDescription;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_21
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 400
    .local v25, "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 403
    .end local v25    # "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_37
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v27

    monitor-enter v27

    .line 404
    :try_start_3c
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 405
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v12, 0x0

    .line 406
    .local v12, "accountDeleted":Z
    const-string v3, "accounts"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "type"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "name"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_64
    .catchall {:try_start_3c .. :try_end_64} :catchall_164

    move-result-object v19

    .line 410
    .local v19, "cursor":Landroid/database/Cursor;
    :try_start_65
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 411
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 413
    .local v15, "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :goto_71
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_17e

    .line 414
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 415
    .local v8, "accountId":J
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 416
    .local v16, "accountType":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 418
    .local v13, "accountName":Ljava/lang/String;
    const/16 v26, 0x0

    .line 419
    .local v26, "skipDelete":Z
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 421
    :cond_b2
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v20

    .line 422
    .local v20, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    if-eqz v20, :cond_d5

    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_cc

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/emergencymode/EmergencyManager;->isModifying()Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 423
    :cond_cc
    const-string v3, "AccountManagerService"

    const-string v4, "Modifying, skip delete account."

    invoke-static {v3, v4}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const/16 v26, 0x1

    .line 429
    .end local v20    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_d5
    invoke-static/range {v16 .. v16}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_167

    if-nez v26, :cond_167

    .line 430
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deleting account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " because type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " no longer has a registered authenticator"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v3, "accounts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 433
    const/4 v12, 0x1

    .line 435
    # getter for: Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_AUTHENTICATOR_REMOVE:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string v7, "accounts"

    move-object/from16 v4, p0

    move-object v5, v2

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 438
    new-instance v11, Landroid/accounts/Account;

    move-object/from16 v0, v16

    invoke-direct {v11, v13, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    .local v11, "account":Landroid/accounts/Account;
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/android/server/accounts/TokenCache;->remove(Landroid/accounts/Account;)V
    :try_end_152
    .catchall {:try_start_65 .. :try_end_152} :catchall_154

    goto/16 :goto_71

    .line 464
    .end local v8    # "accountId":J
    .end local v11    # "account":Landroid/accounts/Account;
    .end local v13    # "accountName":Ljava/lang/String;
    .end local v15    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v16    # "accountType":Ljava/lang/String;
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v26    # "skipDelete":Z
    :catchall_154
    move-exception v3

    :try_start_155
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 465
    if-eqz v12, :cond_163

    .line 466
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, sendAccountsChangedBroadcast(I)V

    :cond_163
    throw v3

    .line 469
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "accountDeleted":Z
    .end local v19    # "cursor":Landroid/database/Cursor;
    :catchall_164
    move-exception v3

    monitor-exit v27
    :try_end_166
    .catchall {:try_start_155 .. :try_end_166} :catchall_164

    throw v3

    .line 443
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "accountId":J
    .restart local v12    # "accountDeleted":Z
    .restart local v13    # "accountName":Ljava/lang/String;
    .restart local v15    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v16    # "accountType":Ljava/lang/String;
    .restart local v19    # "cursor":Landroid/database/Cursor;
    .restart local v22    # "i$":Ljava/util/Iterator;
    .restart local v26    # "skipDelete":Z
    :cond_167
    :try_start_167
    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 444
    .local v14, "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v14, :cond_179

    .line 445
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .restart local v14    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    :cond_179
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_71

    .line 452
    .end local v8    # "accountId":J
    .end local v13    # "accountName":Ljava/lang/String;
    .end local v14    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "accountType":Ljava/lang/String;
    .end local v26    # "skipDelete":Z
    :cond_17e
    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .end local v22    # "i$":Ljava/util/Iterator;
    :goto_186
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d0

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 453
    .local v18, "cur":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 454
    .restart local v16    # "accountType":Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 455
    .restart local v14    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Landroid/accounts/Account;

    move-object/from16 v17, v0

    .line 456
    .local v17, "accountsForType":[Landroid/accounts/Account;
    const/16 v21, 0x0

    .line 457
    .local v21, "i":I
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :goto_1ac
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c4

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 458
    .restart local v13    # "accountName":Ljava/lang/String;
    new-instance v3, Landroid/accounts/Account;

    move-object/from16 v0, v16

    invoke-direct {v3, v13, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v17, v21

    .line 459
    add-int/lit8 v21, v21, 0x1

    .line 460
    goto :goto_1ac

    .line 461
    .end local v13    # "accountName":Ljava/lang/String;
    :cond_1c4
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1cf
    .catchall {:try_start_167 .. :try_end_1cf} :catchall_154

    goto :goto_186

    .line 464
    .end local v14    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "accountType":Ljava/lang/String;
    .end local v17    # "accountsForType":[Landroid/accounts/Account;
    .end local v18    # "cur":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v21    # "i":I
    .end local v23    # "i$":Ljava/util/Iterator;
    :cond_1d0
    :try_start_1d0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 465
    if-eqz v12, :cond_1de

    .line 466
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, sendAccountsChangedBroadcast(I)V

    .line 469
    :cond_1de
    monitor-exit v27
    :try_end_1df
    .catchall {:try_start_1d0 .. :try_end_1df} :catchall_164

    .line 470
    return-void
.end method


# virtual methods
.method public accountAuthenticated(Landroid/accounts/Account;)Z
    .registers 14
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v6, 0x0

    .line 926
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 927
    .local v1, "callingUid":I
    const-string v7, "AccountManagerService"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 928
    const-string v7, "accountAuthenticated( account: %s, callerUid: %s)"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p1, v8, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 932
    .local v4, "msg":Ljava/lang/String;
    const-string v7, "AccountManagerService"

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    .end local v4    # "msg":Ljava/lang/String;
    :cond_24
    if-nez p1, :cond_2e

    .line 935
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "account is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 937
    :cond_2e
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 938
    .local v5, "userId":I
    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v7, v1, v5}, isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_53

    .line 939
    const-string/jumbo v7, "uid %s cannot notify authentication for accounts of type: %s"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 943
    .restart local v4    # "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 946
    .end local v4    # "msg":Ljava/lang/String;
    :cond_53
    invoke-direct {p0, v5}, canUserModifyAccounts(I)Z

    move-result v7

    if-eqz v7, :cond_61

    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v5, v7}, canUserModifyAccountsForType(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_62

    .line 955
    :cond_61
    :goto_61
    return v6

    .line 950
    :cond_62
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v2

    .line 952
    .local v2, "identityToken":J
    :try_start_66
    invoke-virtual {p0, v5}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 953
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, p1}, updateLastAuthenticatedTime(Landroid/accounts/Account;)Z
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_72

    move-result v6

    .line 955
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    goto :goto_61

    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_72
    move-exception v6

    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    throw v6
.end method

.method public addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .registers 31
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "requiredFeatures"    # [Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "optionsIn"    # Landroid/os/Bundle;

    .prologue
    .line 2302
    const-string v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 2303
    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAccount: accountType "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", response "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", authTokenType "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", requiredFeatures "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p4 .. p4}, stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", expectActivityLaunch "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", caller\'s uid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", pid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    :cond_71
    if-nez p1, :cond_7c

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "response is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2312
    :cond_7c
    if-nez p2, :cond_86

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "accountType is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2315
    :cond_86
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v22

    .line 2316
    .local v22, "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, canUserModifyAccounts(I)Z

    move-result v4

    if-nez v4, :cond_ab

    .line 2318
    const/16 v4, 0x64

    :try_start_9a
    const-string v5, "User is not allowed to add an account!"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_a1
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_a1} :catch_130

    .line 2322
    :goto_a1
    const/16 v4, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v4, v1}, showCantAddAccount(II)V

    .line 2370
    :goto_aa
    return-void

    .line 2325
    :cond_ab
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, canUserModifyAccountsForType(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ca

    .line 2327
    const/16 v4, 0x65

    :try_start_b9
    const-string v5, "User cannot modify accounts of this type (policy)."

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_c0} :catch_12e

    .line 2331
    :goto_c0
    const/16 v4, 0x65

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v4, v1}, showCantAddAccount(II)V

    goto :goto_aa

    .line 2336
    :cond_ca
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    .line 2337
    .local v20, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    .line 2338
    .local v21, "uid":I
    if-nez p6, :cond_126

    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 2339
    .local v16, "options":Landroid/os/Bundle;
    :goto_d9
    const-string v4, "callerUid"

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2340
    const-string v4, "callerPid"

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2342
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v23

    .line 2343
    .local v23, "usrId":I
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v18

    .line 2345
    .local v18, "identityToken":J
    :try_start_f3
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    .line 2346
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    # getter for: Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_CALLED_ACCOUNT_ADD:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->access$2800()Ljava/lang/String;

    move-result-object v4

    const-string v5, "accounts"

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v6, v4, v5, v1}, logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2348
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$7;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p5

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v17, p2

    invoke-direct/range {v4 .. v17}, Lcom/android/server/accounts/AccountManagerService$7;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$7;->bind()V
    :try_end_122
    .catchall {:try_start_f3 .. :try_end_122} :catchall_129

    .line 2368
    invoke-static/range {v18 .. v19}, restoreCallingIdentity(J)V

    goto :goto_aa

    .end local v6    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v18    # "identityToken":J
    .end local v23    # "usrId":I
    :cond_126
    move-object/from16 v16, p6

    .line 2338
    goto :goto_d9

    .line 2368
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v18    # "identityToken":J
    .restart local v23    # "usrId":I
    :catchall_129
    move-exception v4

    invoke-static/range {v18 .. v19}, restoreCallingIdentity(J)V

    throw v4

    .line 2329
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v18    # "identityToken":J
    .end local v20    # "pid":I
    .end local v21    # "uid":I
    .end local v23    # "usrId":I
    :catch_12e
    move-exception v4

    goto :goto_c0

    .line 2320
    :catch_130
    move-exception v4

    goto/16 :goto_a1
.end method

.method public addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .registers 31
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "requiredFeatures"    # [Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "optionsIn"    # Landroid/os/Bundle;
    .param p7, "userId"    # I

    .prologue
    .line 2376
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    .line 2377
    .local v18, "callingUid":I
    const-string v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 2378
    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAccount: accountType "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", response "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", authTokenType "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", requiredFeatures "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p4 .. p4}, stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", expectActivityLaunch "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", caller\'s uid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", pid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", for user id "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    :cond_81
    if-nez p1, :cond_8c

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "response is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2388
    :cond_8c
    if-nez p2, :cond_96

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "accountType is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2390
    :cond_96
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p7

    invoke-direct {v0, v1, v2}, isCrossUser(II)Z

    move-result v4

    if-eqz v4, :cond_c3

    .line 2391
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "User %s trying to add account for %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2399
    :cond_c3
    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v1}, canUserModifyAccounts(I)Z

    move-result v4

    if-nez v4, :cond_e0

    .line 2401
    const/16 v4, 0x64

    :try_start_cf
    const-string v5, "User is not allowed to add an account!"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_d6
    .catch Landroid/os/RemoteException; {:try_start_cf .. :try_end_d6} :catch_161

    .line 2405
    :goto_d6
    const/16 v4, 0x64

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v4, v1}, showCantAddAccount(II)V

    .line 2452
    :goto_df
    return-void

    .line 2408
    :cond_e0
    move-object/from16 v0, p0

    move/from16 v1, p7

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, canUserModifyAccountsForType(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ff

    .line 2410
    const/16 v4, 0x65

    :try_start_ee
    const-string v5, "User cannot modify accounts of this type (policy)."

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_f5
    .catch Landroid/os/RemoteException; {:try_start_ee .. :try_end_f5} :catch_15f

    .line 2414
    :goto_f5
    const/16 v4, 0x65

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v4, v1}, showCantAddAccount(II)V

    goto :goto_df

    .line 2419
    :cond_ff
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    .line 2420
    .local v19, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    .line 2421
    .local v22, "uid":I
    if-nez p6, :cond_157

    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 2422
    .local v16, "options":Landroid/os/Bundle;
    :goto_10e
    const-string v4, "callerUid"

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2423
    const-string v4, "callerPid"

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2425
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v20

    .line 2427
    .local v20, "identityToken":J
    :try_start_124
    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-virtual {v0, v1}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    .line 2428
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    # getter for: Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_CALLED_ACCOUNT_ADD:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->access$2800()Ljava/lang/String;

    move-result-object v4

    const-string v5, "accounts"

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v6, v4, v5, v1}, logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2430
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$8;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p5

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v17, p2

    invoke-direct/range {v4 .. v17}, Lcom/android/server/accounts/AccountManagerService$8;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$8;->bind()V
    :try_end_153
    .catchall {:try_start_124 .. :try_end_153} :catchall_15a

    .line 2450
    invoke-static/range {v20 .. v21}, restoreCallingIdentity(J)V

    goto :goto_df

    .end local v6    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v20    # "identityToken":J
    :cond_157
    move-object/from16 v16, p6

    .line 2421
    goto :goto_10e

    .line 2450
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v20    # "identityToken":J
    :catchall_15a
    move-exception v4

    invoke-static/range {v20 .. v21}, restoreCallingIdentity(J)V

    throw v4

    .line 2412
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v19    # "pid":I
    .end local v20    # "identityToken":J
    .end local v22    # "uid":I
    :catch_15f
    move-exception v4

    goto :goto_f5

    .line 2403
    :catch_161
    move-exception v4

    goto/16 :goto_d6
.end method

.method public addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 25
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 810
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 811
    .local v8, "callingUid":I
    const-string v2, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 812
    const-string v2, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAccountExplicitly: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_3f
    if-nez p1, :cond_49

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 817
    :cond_49
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v20

    .line 818
    .local v20, "userId":I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v8, v1}, isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_7b

    .line 819
    const-string/jumbo v2, "uid %s cannot explicitly add accounts of type: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 823
    .local v17, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/SecurityException;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 829
    .end local v17    # "msg":Ljava/lang/String;
    :cond_7b
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "enterprise_policy"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 831
    .local v16, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v16, :cond_a5

    invoke-virtual/range {v16 .. v16}, Landroid/app/enterprise/EnterpriseDeviceManager;->getDeviceAccountPolicy()Landroid/app/enterprise/DeviceAccountPolicy;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v5, v6}, Landroid/app/enterprise/DeviceAccountPolicy;->isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_a5

    .line 833
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "Security policy blocks this account addition"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 847
    :cond_a5
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v18

    .line 849
    .local v18, "identityToken":J
    :try_start_a9
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 851
    .local v3, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v8}, addAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZI)Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 852
    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    const-string v13, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " succeeded"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v15

    invoke-static/range {v9 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_ed
    .catchall {:try_start_a9 .. :try_end_ed} :catchall_124

    .line 854
    const/4 v2, 0x1

    .line 863
    invoke-static/range {v18 .. v19}, restoreCallingIdentity(J)V

    :goto_f1
    return v2

    .line 856
    :cond_f2
    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x0

    :try_start_f5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    const-string v13, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " failed"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v15

    invoke-static/range {v9 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_11f
    .catchall {:try_start_f5 .. :try_end_11f} :catchall_124

    .line 858
    const/4 v2, 0x0

    .line 863
    invoke-static/range {v18 .. v19}, restoreCallingIdentity(J)V

    goto :goto_f1

    .end local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_124
    move-exception v2

    invoke-static/range {v18 .. v19}, restoreCallingIdentity(J)V

    throw v2
.end method

.method public addSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .registers 14
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 2845
    invoke-direct {p0, p2}, handleIncomingUser(I)I

    move-result p2

    .line 2846
    invoke-virtual {p0, p2}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    .line 2847
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2848
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2849
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "name"

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2850
    const-string/jumbo v2, "type"

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2851
    const-string/jumbo v2, "shared_accounts"

    const-string/jumbo v3, "name=? AND type=?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    iget-object v10, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v10, v9, v0

    iget-object v10, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v10, v9, v8

    invoke-virtual {v1, v2, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2853
    const-string/jumbo v2, "shared_accounts"

    const-string/jumbo v3, "name"

    invoke-virtual {v1, v2, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 2854
    .local v4, "accountId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-gez v2, :cond_6b

    .line 2855
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "insertAccountIntoDatabase: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", skipping the DB insert failed"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    :goto_6a
    return v0

    .line 2859
    :cond_6b
    # getter for: Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_ACCOUNT_ADD:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->access$1500()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "shared_accounts"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    move v0, v8

    .line 2860
    goto :goto_6a
.end method

.method protected cancelNotification(ILandroid/os/UserHandle;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 3882
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v0

    .line 3884
    .local v0, "identityToken":J
    :try_start_4
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1, p2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 3887
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    .line 3889
    return-void

    .line 3887
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    throw v2
.end method

.method public clearPassword(Landroid/accounts/Account;)V
    .registers 12
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v9, 0x2

    .line 1813
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1814
    .local v1, "callingUid":I
    const-string v6, "AccountManagerService"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 1815
    const-string v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clearPassword: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", caller\'s uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    :cond_3d
    if-nez p1, :cond_47

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "account is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1820
    :cond_47
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 1821
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v1, v5}, isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_6e

    .line 1822
    const-string/jumbo v6, "uid %s cannot clear passwords for accounts of type: %s"

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1826
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1828
    .end local v4    # "msg":Ljava/lang/String;
    :cond_6e
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v2

    .line 1830
    .local v2, "identityToken":J
    :try_start_72
    invoke-virtual {p0, v5}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1831
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v6, 0x0

    invoke-direct {p0, v0, p1, v6, v1}, setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_7a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_7e

    .line 1833
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    .line 1835
    return-void

    .line 1833
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_7e
    move-exception v6

    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    throw v6
.end method

.method public confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V
    .registers 24
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "expectActivityLaunch"    # Z
    .param p5, "userId"    # I

    .prologue
    .line 2473
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 2474
    .local v14, "callingUid":I
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 2475
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "confirmCredentials: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", response "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", expectActivityLaunch "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", caller\'s uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", pid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    :cond_57
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v14, v1}, isCrossUser(II)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 2483
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "User %s trying to confirm account credentials for %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2489
    :cond_82
    if-nez p1, :cond_8d

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "response is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2490
    :cond_8d
    if-nez p2, :cond_97

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2491
    :cond_97
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v16

    .line 2493
    .local v16, "identityToken":J
    :try_start_9b
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 2494
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$9;

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v8, 0x1

    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move/from16 v7, p4

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-direct/range {v2 .. v13}, Lcom/android/server/accounts/AccountManagerService$9;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$9;->bind()V
    :try_end_c0
    .catchall {:try_start_9b .. :try_end_c0} :catchall_c4

    .line 2508
    invoke-static/range {v16 .. v17}, restoreCallingIdentity(J)V

    .line 2510
    return-void

    .line 2508
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_c4
    move-exception v2

    invoke-static/range {v16 .. v17}, restoreCallingIdentity(J)V

    throw v2
.end method

.method public copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V
    .registers 24
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "userFrom"    # I
    .param p4, "userTo"    # I

    .prologue
    .line 870
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 871
    .local v14, "callingUid":I
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, isCrossUser(II)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 872
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Calling copyAccountToUser requires android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 875
    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 876
    .local v4, "fromAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v13

    .line 877
    .local v13, "toAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    if-eqz v4, :cond_29

    if-nez v13, :cond_5a

    .line 878
    :cond_29
    if-eqz p1, :cond_3f

    .line 879
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 880
    .local v18, "result":Landroid/os/Bundle;
    const-string v2, "booleanResult"

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 882
    :try_start_38
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3f} :catch_40

    .line 922
    .end local v18    # "result":Landroid/os/Bundle;
    :cond_3f
    :goto_3f
    return-void

    .line 883
    .restart local v18    # "result":Landroid/os/Bundle;
    :catch_40
    move-exception v15

    .line 884
    .local v15, "e":Landroid/os/RemoteException;
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to report error back to the client."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 890
    .end local v15    # "e":Landroid/os/RemoteException;
    .end local v18    # "result":Landroid/os/Bundle;
    :cond_5a
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Copying account "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " from user "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to user "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v16

    .line 894
    .local v16, "identityToken":J
    :try_start_92
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$3;

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p1

    invoke-direct/range {v2 .. v13}, Lcom/android/server/accounts/AccountManagerService$3;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Landroid/accounts/IAccountManagerResponse;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$3;->bind()V
    :try_end_ad
    .catchall {:try_start_92 .. :try_end_ad} :catchall_b1

    .line 920
    invoke-static/range {v16 .. v17}, restoreCallingIdentity(J)V

    goto :goto_3f

    :catchall_b1
    move-exception v2

    invoke-static/range {v16 .. v17}, restoreCallingIdentity(J)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3759
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3f

    .line 3761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump AccountsManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3777
    :cond_3e
    return-void

    .line 3766
    :cond_3f
    const-string v0, "--checkin"

    invoke-static {p3, v0}, scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "-c"

    invoke-static {p3, v0}, scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a1

    :cond_4f
    const/4 v5, 0x1

    .line 3767
    .local v5, "isCheckinRequest":Z
    :goto_50
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {v3, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3769
    .local v3, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-direct {p0}, getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 3770
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_63
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 3771
    .local v7, "user":Landroid/content/pm/UserInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3772
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3773
    iget v0, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, dumpUser(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 3774
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3775
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_63

    .line 3766
    .end local v3    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v5    # "isCheckinRequest":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_a1
    const/4 v5, 0x0

    goto :goto_50
.end method

.method public editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
    .registers 23
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "expectActivityLaunch"    # Z

    .prologue
    .line 2555
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 2556
    .local v14, "callingUid":I
    const-string v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 2557
    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "editProperties: accountType "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", response "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", expectActivityLaunch "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", caller\'s uid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", pid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    :cond_58
    if-nez p1, :cond_63

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "response is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2564
    :cond_63
    if-nez p2, :cond_6d

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "accountType is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2565
    :cond_6d
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v18

    .line 2566
    .local v18, "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v14, v2}, isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_9f

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, isSystemUid(I)Z

    move-result v4

    if-nez v4, :cond_9f

    .line 2567
    const-string/jumbo v4, "uid %s cannot edit authenticator properites for account type: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    aput-object p2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 2571
    .local v15, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2573
    .end local v15    # "msg":Ljava/lang/String;
    :cond_9f
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v16

    .line 2575
    .local v16, "identityToken":J
    :try_start_a3
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    .line 2576
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$11;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v13, p2

    invoke-direct/range {v4 .. v13}, Lcom/android/server/accounts/AccountManagerService$11;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$11;->bind()V
    :try_end_c0
    .catchall {:try_start_a3 .. :try_end_c0} :catchall_c4

    .line 2590
    invoke-static/range {v16 .. v17}, restoreCallingIdentity(J)V

    .line 2592
    return-void

    .line 2590
    .end local v6    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_c4
    move-exception v4

    invoke-static/range {v16 .. v17}, restoreCallingIdentity(J)V

    throw v4
.end method

.method public getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;
    .registers 9
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 2699
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2700
    .local v1, "callingUid":I
    invoke-direct {p0, v1, p1, p2}, getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 2702
    .local v4, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2703
    const/4 v5, 0x0

    new-array v5, v5, [Landroid/accounts/Account;

    .line 2714
    :goto_11
    return-object v5

    .line 2705
    :cond_12
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v2

    .line 2707
    .local v2, "identityToken":J
    :try_start_16
    invoke-virtual {p0, p1}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 2708
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v5, 0x0

    invoke-direct {p0, v0, v1, v5, v4}, getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;)[Landroid/accounts/Account;
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_23

    move-result-object v5

    .line 2714
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    goto :goto_11

    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_23
    move-exception v5

    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    throw v5
.end method

.method public getAccounts(Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 2937
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .registers 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 2764
    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 21
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "features"    # [Ljava/lang/String;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 2972
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2973
    .local v8, "callingUid":I
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 2974
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccounts: accountType "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", response "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", features "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p3 .. p3}, stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", caller\'s uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", pid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    :cond_5a
    if-nez p1, :cond_65

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "response is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2981
    :cond_65
    if-nez p2, :cond_6f

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "accountType is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2982
    :cond_6f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v14

    .line 2984
    .local v14, "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v8, v14, v1}, getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 2986
    .local v15, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9f

    .line 2987
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 2989
    .local v11, "result":Landroid/os/Bundle;
    const-string v2, "accounts"

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/accounts/Account;

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2991
    :try_start_90
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_95} :catch_96

    .line 3019
    .end local v11    # "result":Landroid/os/Bundle;
    :goto_95
    return-void

    .line 2992
    .restart local v11    # "result":Landroid/os/Bundle;
    :catch_96
    move-exception v10

    .line 2993
    .local v10, "e":Landroid/os/RemoteException;
    const-string v2, "AccountManagerService"

    const-string v3, "Cannot respond to caller do to exception."

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_95

    .line 2997
    .end local v10    # "e":Landroid/os/RemoteException;
    .end local v11    # "result":Landroid/os/Bundle;
    :cond_9f
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v12

    .line 2999
    .local v12, "identityToken":J
    :try_start_a3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 3000
    .local v4, "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    if-eqz p3, :cond_b0

    move-object/from16 v0, p3

    array-length v2, v0

    if-nez v2, :cond_dc

    .line 3002
    :cond_b0
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_b5
    .catchall {:try_start_a3 .. :try_end_b5} :catchall_d7

    .line 3003
    const/4 v2, 0x0

    :try_start_b6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1, v8, v2}, getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 3004
    .local v9, "accounts":[Landroid/accounts/Account;
    monitor-exit v3
    :try_end_bf
    .catchall {:try_start_b6 .. :try_end_bf} :catchall_d4

    .line 3005
    :try_start_bf
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 3006
    .restart local v11    # "result":Landroid/os/Bundle;
    const-string v2, "accounts"

    invoke-virtual {v11, v2, v9}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 3007
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_d0
    .catchall {:try_start_bf .. :try_end_d0} :catchall_d7

    .line 3017
    invoke-static {v12, v13}, restoreCallingIdentity(J)V

    goto :goto_95

    .line 3004
    .end local v9    # "accounts":[Landroid/accounts/Account;
    .end local v11    # "result":Landroid/os/Bundle;
    :catchall_d4
    move-exception v2

    :try_start_d5
    monitor-exit v3
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d4

    :try_start_d6
    throw v2
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d7

    .line 3017
    .end local v4    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_d7
    move-exception v2

    invoke-static {v12, v13}, restoreCallingIdentity(J)V

    throw v2

    .line 3010
    .restart local v4    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :cond_dc
    :try_start_dc
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->bind()V
    :try_end_ec
    .catchall {:try_start_dc .. :try_end_ec} :catchall_d7

    .line 3017
    invoke-static {v12, v13}, restoreCallingIdentity(J)V

    goto :goto_95
.end method

.method public getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .registers 11
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 2954
    const/4 v4, -0x1

    .line 2956
    .local v4, "packageUid":I
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-interface {v0, p2, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_1a

    move-result v4

    .line 2962
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    :goto_19
    return-object v0

    .line 2958
    :catch_1a
    move-exception v6

    .line 2959
    .local v6, "re":Landroid/os/RemoteException;
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t determine the packageUid for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/Account;

    goto :goto_19
.end method

.method public getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 2942
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2943
    .local v6, "callingUid":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v6, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_32

    .line 2944
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAccountsForPackage() called from unauthorized uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2947
    :cond_32
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method protected getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .registers 11
    .param p1, "userAccounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 4309
    if-eqz p2, :cond_1d

    .line 4310
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 4311
    .local v0, "accounts":[Landroid/accounts/Account;
    if-nez v0, :cond_11

    .line 4312
    sget-object v4, EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 4332
    .end local v0    # "accounts":[Landroid/accounts/Account;
    :goto_10
    return-object v4

    .line 4314
    .restart local v0    # "accounts":[Landroid/accounts/Account;
    :cond_11
    array-length v4, v0

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/accounts/Account;

    invoke-direct {p0, p1, v4, p3, p4}, filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    goto :goto_10

    .line 4318
    .end local v0    # "accounts":[Landroid/accounts/Account;
    :cond_1d
    const/4 v3, 0x0

    .line 4319
    .local v3, "totalLength":I
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 4320
    .restart local v0    # "accounts":[Landroid/accounts/Account;
    array-length v4, v0

    add-int/2addr v3, v4

    .line 4321
    goto :goto_2a

    .line 4322
    .end local v0    # "accounts":[Landroid/accounts/Account;
    :cond_39
    if-nez v3, :cond_3e

    .line 4323
    sget-object v4, EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    goto :goto_10

    .line 4325
    :cond_3e
    new-array v0, v3, [Landroid/accounts/Account;

    .line 4326
    .restart local v0    # "accounts":[Landroid/accounts/Account;
    const/4 v3, 0x0

    .line 4327
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    .line 4328
    .local v1, "accountsOfType":[Landroid/accounts/Account;
    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4330
    array-length v4, v1

    add-int/2addr v3, v4

    .line 4331
    goto :goto_4d

    .line 4332
    .end local v1    # "accountsOfType":[Landroid/accounts/Account;
    :cond_61
    invoke-direct {p0, p1, v0, p3, p4}, filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    goto :goto_10
.end method

.method public getAllAccounts()[Landroid/accounts/AccountAndUser;
    .registers 5

    .prologue
    .line 2736
    invoke-direct {p0}, getUserManager()Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 2737
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [I

    .line 2738
    .local v1, "userIds":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v3, v1

    if-ge v0, v3, :cond_1f

    .line 2739
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    aput v3, v1, v0

    .line 2738
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 2741
    :cond_1f
    invoke-direct {p0, v1}, getAccounts([I)[Landroid/accounts/AccountAndUser;

    move-result-object v3

    return-object v3
.end method

.method public getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .registers 50
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "notifyOnAuthFailure"    # Z
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "loginOptions"    # Landroid/os/Bundle;

    .prologue
    .line 2000
    const-string v6, "AccountManagerService"

    const/4 v8, 0x2

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 2001
    const-string v6, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAuthToken: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", response "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", authTokenType "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", notifyOnAuthFailure "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", expectActivityLaunch "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", caller\'s uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", pid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    :cond_70
    if-nez p1, :cond_7b

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "response is null"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2011
    :cond_7b
    if-nez p2, :cond_8e

    .line 2012
    :try_start_7d
    const-string v6, "AccountManagerService"

    const-string/jumbo v8, "getAuthToken called with null account"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    const/4 v6, 0x7

    const-string v8, "account is null"

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v8}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    .line 2197
    :goto_8d
    return-void

    .line 2016
    :cond_8e
    if-nez p3, :cond_bd

    .line 2017
    const-string v6, "AccountManagerService"

    const-string/jumbo v8, "getAuthToken called with null authTokenType"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    const/4 v6, 0x7

    const-string v8, "authTokenType is null"

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v8}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_a0} :catch_a1

    goto :goto_8d

    .line 2021
    :catch_a1
    move-exception v34

    .line 2022
    .local v34, "e":Landroid/os/RemoteException;
    const-string v6, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to report error back to the client."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v34

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    .line 2025
    .end local v34    # "e":Landroid/os/RemoteException;
    :cond_bd
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v42

    .line 2026
    .local v42, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v36

    .line 2030
    .local v36, "ident":J
    :try_start_c5
    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v7

    .line 2031
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v0, p0

    iget-object v6, v0, mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v8}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v8

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v7}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v9

    invoke-interface {v6, v8, v9}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    :try_end_e0
    .catchall {:try_start_c5 .. :try_end_e0} :catchall_14c

    move-result-object v32

    .line 2034
    .local v32, "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2037
    if-eqz v32, :cond_151

    move-object/from16 v0, v32

    iget-object v6, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v6, Landroid/accounts/AuthenticatorDescription;

    iget-boolean v6, v6, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    if-eqz v6, :cond_151

    const/16 v27, 0x1

    .line 2041
    .local v27, "customTokens":Z
    :goto_f2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v26

    .line 2042
    .local v26, "callerUid":I
    if-nez v27, :cond_108

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v26

    move/from16 v4, v42

    invoke-direct {v0, v1, v2, v3, v4}, permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_154

    :cond_108
    const/16 v25, 0x1

    .line 2046
    .local v25, "permissionGranted":Z
    :goto_10a
    const-string v6, "androidPackageName"

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2048
    .local v10, "callerPkg":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v36

    .line 2050
    :try_start_116
    move-object/from16 v0, p0

    iget-object v6, v0, mPackageManager:Landroid/content/pm/PackageManager;

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_123
    .catchall {:try_start_116 .. :try_end_123} :catchall_157

    move-result-object v33

    .line 2052
    .local v33, "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2054
    if-eqz v10, :cond_131

    move-object/from16 v0, v33

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15c

    .line 2055
    :cond_131
    const-string v6, "Uid %s is attempting to illegally masquerade as package %s!"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v9

    const/4 v9, 0x1

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    .line 2059
    .local v35, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    move-object/from16 v0, v35

    invoke-direct {v6, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2034
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v10    # "callerPkg":Ljava/lang/String;
    .end local v25    # "permissionGranted":Z
    .end local v26    # "callerUid":I
    .end local v27    # "customTokens":Z
    .end local v32    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .end local v33    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v35    # "msg":Ljava/lang/String;
    :catchall_14c
    move-exception v6

    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 2037
    .restart local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v32    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_151
    const/16 v27, 0x0

    goto :goto_f2

    .line 2042
    .restart local v26    # "callerUid":I
    .restart local v27    # "customTokens":Z
    :cond_154
    const/16 v25, 0x0

    goto :goto_10a

    .line 2052
    .restart local v10    # "callerPkg":Ljava/lang/String;
    .restart local v25    # "permissionGranted":Z
    :catchall_157
    move-exception v6

    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 2063
    .restart local v33    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_15c
    const-string v6, "callerUid"

    move-object/from16 v0, p6

    move/from16 v1, v26

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2064
    const-string v6, "callerPid"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    move-object/from16 v0, p6

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2066
    if-eqz p4, :cond_17b

    .line 2067
    const-string/jumbo v6, "notifyOnAuthFailure"

    const/4 v8, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2070
    :cond_17b
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v38

    .line 2073
    .local v38, "identityToken":J
    :try_start_17f
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, calculatePackageSignatureDigest(Ljava/lang/String;)[B

    move-result-object v11

    .line 2077
    .local v11, "callerPkgSigDigest":[B
    if-nez v27, :cond_1c7

    if-eqz v25, :cond_1c7

    .line 2078
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v7, v1, v2}, readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 2079
    .local v31, "authToken":Ljava/lang/String;
    if-eqz v31, :cond_1c7

    .line 2080
    new-instance v40, Landroid/os/Bundle;

    invoke-direct/range {v40 .. v40}, Landroid/os/Bundle;-><init>()V

    .line 2081
    .local v40, "result":Landroid/os/Bundle;
    const-string v6, "authtoken"

    move-object/from16 v0, v40

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    const-string v6, "authAccount"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    const-string v6, "accountType"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_1c2
    .catchall {:try_start_17f .. :try_end_1c2} :catchall_24a

    .line 2195
    invoke-static/range {v38 .. v39}, restoreCallingIdentity(J)V

    goto/16 :goto_8d

    .line 2089
    .end local v31    # "authToken":Ljava/lang/String;
    .end local v40    # "result":Landroid/os/Bundle;
    :cond_1c7
    if-eqz v27, :cond_218

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 2095
    :try_start_1cf
    invoke-virtual/range {v6 .. v11}, readCachedTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v41

    .line 2101
    .local v41, "token":Ljava/lang/String;
    if-eqz v41, :cond_218

    .line 2102
    const-string v6, "AccountManagerService"

    const/4 v8, 0x2

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1e6

    .line 2103
    const-string v6, "AccountManagerService"

    const-string/jumbo v8, "getAuthToken: cache hit ofr custom token authenticator."

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    :cond_1e6
    new-instance v40, Landroid/os/Bundle;

    invoke-direct/range {v40 .. v40}, Landroid/os/Bundle;-><init>()V

    .line 2106
    .restart local v40    # "result":Landroid/os/Bundle;
    const-string v6, "authtoken"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    const-string v6, "authAccount"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    const-string v6, "accountType"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2109
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_213
    .catchall {:try_start_1cf .. :try_end_213} :catchall_24a

    .line 2195
    invoke-static/range {v38 .. v39}, restoreCallingIdentity(J)V

    goto/16 :goto_8d

    .line 2114
    .end local v40    # "result":Landroid/os/Bundle;
    .end local v41    # "token":Ljava/lang/String;
    :cond_218
    :try_start_218
    new-instance v12, Lcom/android/server/accounts/AccountManagerService$6;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-object v14, v7

    move-object/from16 v15, p1

    move/from16 v17, p5

    move-object/from16 v21, p6

    move-object/from16 v22, p2

    move-object/from16 v23, p3

    move/from16 v24, p4

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move-object/from16 v30, v7

    invoke-direct/range {v12 .. v30}, Lcom/android/server/accounts/AccountManagerService$6;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZIZLjava/lang/String;[BLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    invoke-virtual {v12}, Lcom/android/server/accounts/AccountManagerService$6;->bind()V
    :try_end_245
    .catchall {:try_start_218 .. :try_end_245} :catchall_24a

    .line 2195
    invoke-static/range {v38 .. v39}, restoreCallingIdentity(J)V

    goto/16 :goto_8d

    .end local v11    # "callerPkgSigDigest":[B
    :catchall_24a
    move-exception v6

    invoke-static/range {v38 .. v39}, restoreCallingIdentity(J)V

    throw v6
.end method

.method public getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1947
    if-nez p2, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1948
    :cond_a
    if-nez p3, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authTokenType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1950
    :cond_14
    invoke-static {}, getCallingUid()I

    move-result v11

    .line 1951
    .local v11, "callingUid":I
    invoke-static {}, clearCallingIdentity()J

    .line 1952
    const/16 v0, 0x3e8

    if-eq v11, v0, :cond_27

    .line 1953
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "can only call from system"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1955
    :cond_27
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 1956
    .local v14, "userId":I
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v12

    .line 1958
    .local v12, "identityToken":J
    :try_start_2f
    invoke-virtual {p0, v14}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 1959
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$5;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-direct/range {v0 .. v10}, Lcom/android/server/accounts/AccountManagerService$5;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$5;->bind()V
    :try_end_48
    .catchall {:try_start_2f .. :try_end_48} :catchall_4c

    .line 1988
    invoke-static {v12, v13}, restoreCallingIdentity(J)V

    .line 1990
    return-void

    .line 1988
    .end local v2    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_4c
    move-exception v0

    invoke-static {v12, v13}, restoreCallingIdentity(J)V

    throw v0
.end method

.method public getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;
    .registers 10
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x2

    .line 750
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 751
    .local v0, "callingUid":I
    const-string v1, "AccountManagerService"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 752
    const-string v1, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAuthenticatorTypes: for user id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_3e
    invoke-direct {p0, v0, p1}, isCrossUser(II)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 760
    if-nez p1, :cond_56

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/16 v4, 0x64

    if-lt v1, v4, :cond_56

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/16 v4, 0xc8

    if-le v1, v4, :cond_7e

    :cond_56
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v4, 0x3e8

    if-eq v1, v4, :cond_7e

    .line 764
    new-instance v1, Ljava/lang/SecurityException;

    const-string v4, "User %s tying to get authenticator types for %s"

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 772
    :cond_7e
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v2

    .line 774
    .local v2, "identityToken":J
    :try_start_82
    invoke-direct {p0, p1}, getAuthenticatorTypesInternal(I)[Landroid/accounts/AuthenticatorDescription;
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_8a

    move-result-object v1

    .line 777
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    return-object v1

    :catchall_8a
    move-exception v1

    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    throw v1
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .registers 12
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v9, 0x2

    .line 624
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 625
    .local v1, "callingUid":I
    const-string v6, "AccountManagerService"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 626
    const-string v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPassword: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", caller\'s uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_42
    if-nez p1, :cond_4c

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "account is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 631
    :cond_4c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 632
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v1, v5}, isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_73

    .line 633
    const-string/jumbo v6, "uid %s cannot get secrets for accounts of type: %s"

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 637
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 639
    .end local v4    # "msg":Ljava/lang/String;
    :cond_73
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v2

    .line 641
    .local v2, "identityToken":J
    :try_start_77
    invoke-virtual {p0, v5}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 642
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p1}, readPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_7e
    .catchall {:try_start_77 .. :try_end_7e} :catchall_83

    move-result-object v6

    .line 644
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    return-object v6

    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_83
    move-exception v6

    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    throw v6
.end method

.method public getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;
    .registers 9
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 671
    const-string v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 672
    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPreviousName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", caller\'s uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_3e
    if-nez p1, :cond_48

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "account is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 677
    :cond_48
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 678
    .local v1, "userId":I
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v2

    .line 680
    .local v2, "identityToken":J
    :try_start_50
    invoke-virtual {p0, v1}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 681
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p1}, readPreviousNameInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_5c

    move-result-object v4

    .line 683
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    return-object v4

    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_5c
    move-exception v4

    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    throw v4
.end method

.method public getRunningAccounts()[Landroid/accounts/AccountAndUser;
    .registers 4

    .prologue
    .line 2726
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningUserIds()[I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_d

    move-result-object v1

    .line 2731
    .local v1, "runningUserIds":[I
    invoke-direct {p0, v1}, getAccounts([I)[Landroid/accounts/AccountAndUser;

    move-result-object v2

    return-object v2

    .line 2727
    .end local v1    # "runningUserIds":[I
    :catch_d
    move-exception v0

    .line 2729
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getSharedAccountsAsUser(I)[Landroid/accounts/Account;
    .registers 16
    .param p1, "userId"    # I

    .prologue
    .line 2909
    invoke-direct {p0, p1}, handleIncomingUser(I)I

    move-result p1

    .line 2910
    invoke-virtual {p0, p1}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v10

    .line 2911
    .local v10, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2912
    .local v9, "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    const/4 v11, 0x0

    .line 2914
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_e
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v10}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "shared_accounts"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2917
    if-eqz v11, :cond_5d

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 2918
    const-string/jumbo v0, "name"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 2919
    .local v12, "nameIndex":I
    const-string/jumbo v0, "type"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 2921
    .local v13, "typeIndex":I
    :cond_47
    new-instance v0, Landroid/accounts/Account;

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2923
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5a
    .catchall {:try_start_e .. :try_end_5a} :catchall_6c

    move-result v0

    if-nez v0, :cond_47

    .line 2926
    .end local v12    # "nameIndex":I
    .end local v13    # "typeIndex":I
    :cond_5d
    if-eqz v11, :cond_62

    .line 2927
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2930
    :cond_62
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v8, v0, [Landroid/accounts/Account;

    .line 2931
    .local v8, "accountArray":[Landroid/accounts/Account;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2932
    return-object v8

    .line 2926
    .end local v8    # "accountArray":[Landroid/accounts/Account;
    :catchall_6c
    move-exception v0

    if-eqz v11, :cond_72

    .line 2927
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_72
    throw v0
.end method

.method protected getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 477
    iget-object v2, p0, mUsers:Landroid/util/SparseArray;

    monitor-enter v2

    .line 478
    :try_start_3
    iget-object v1, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 479
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    if-nez v0, :cond_2b

    .line 480
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;-><init>(Landroid/content/Context;I)V

    .line 481
    .restart local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {p0, v1, v0}, initializeDebugDbSizeAndCompileSqlStatementForLogging(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 483
    iget-object v1, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 484
    invoke-direct {p0, v0}, purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 485
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    .line 487
    :cond_2b
    monitor-exit v2

    return-object v0

    .line 488
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_2d
    move-exception v1

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 723
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 724
    .local v1, "callingUid":I
    const-string v6, "AccountManagerService"

    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 725
    const-string/jumbo v6, "getUserData( account: %s, key: %s, callerUid: %s, pid: %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v11

    aput-object p2, v7, v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 727
    .local v4, "msg":Ljava/lang/String;
    const-string v6, "AccountManagerService"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    .end local v4    # "msg":Ljava/lang/String;
    :cond_33
    if-nez p1, :cond_3d

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "account is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 730
    :cond_3d
    if-nez p2, :cond_48

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "key is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 731
    :cond_48
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 732
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v1, v5}, isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_6d

    .line 733
    const-string/jumbo v6, "uid %s cannot get user data for accounts of type: %s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 737
    .restart local v4    # "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 739
    .end local v4    # "msg":Ljava/lang/String;
    :cond_6d
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v2

    .line 741
    .local v2, "identityToken":J
    :try_start_71
    invoke-virtual {p0, v5}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 742
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-virtual {p0, v0, p1, p2}, readUserDataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_7d

    move-result-object v6

    .line 744
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    return-object v6

    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_7d
    move-exception v6

    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    throw v6
.end method

.method public hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "features"    # [Ljava/lang/String;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 1119
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1120
    .local v6, "callingUid":I
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1121
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasFeatures: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", response "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", features "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", caller\'s uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_56
    if-nez p1, :cond_61

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1128
    :cond_61
    if-nez p2, :cond_6b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1129
    :cond_6b
    if-nez p3, :cond_76

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "features is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1130
    :cond_76
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 1131
    .local v7, "userId":I
    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v0, v7, p4}, checkReadAccountsPermitted(ILjava/lang/String;ILjava/lang/String;)V

    .line 1134
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v8

    .line 1136
    .local v8, "identityToken":J
    :try_start_83
    invoke-virtual {p0, v7}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 1137
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->bind()V
    :try_end_93
    .catchall {:try_start_83 .. :try_end_93} :catchall_97

    .line 1139
    invoke-static {v8, v9}, restoreCallingIdentity(J)V

    .line 1141
    return-void

    .line 1139
    .end local v2    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_97
    move-exception v0

    invoke-static {v8, v9}, restoreCallingIdentity(J)V

    throw v0
.end method

.method protected installNotification(ILandroid/app/Notification;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "notificationId"    # I
    .param p2, "n"    # Landroid/app/Notification;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 3877
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 3879
    return-void
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;

    .prologue
    .line 1559
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1560
    .local v1, "callerUid":I
    const-string v6, "AccountManagerService"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 1561
    const-string v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalidateAuthToken: accountType "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", caller\'s uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_3e
    if-nez p1, :cond_48

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "accountType is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1566
    :cond_48
    if-nez p2, :cond_52

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "authToken is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1567
    :cond_52
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1568
    .local v3, "userId":I
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v4

    .line 1570
    .local v4, "identityToken":J
    :try_start_5a
    invoke-virtual {p0, v3}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1571
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_63
    .catchall {:try_start_5a .. :try_end_63} :catchall_87

    .line 1572
    :try_start_63
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1573
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_6e
    .catchall {:try_start_63 .. :try_end_6e} :catchall_84

    .line 1575
    :try_start_6e
    invoke-direct {p0, v0, v2, p1, p2}, invalidateAuthTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    invoke-direct {p0, v0, p1, p2}, invalidateCustomTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_77
    .catchall {:try_start_6e .. :try_end_77} :catchall_7f

    .line 1579
    :try_start_77
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1581
    monitor-exit v7
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_84

    .line 1583
    invoke-static {v4, v5}, restoreCallingIdentity(J)V

    .line 1585
    return-void

    .line 1579
    :catchall_7f
    move-exception v6

    :try_start_80
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6

    .line 1581
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_84
    move-exception v6

    monitor-exit v7
    :try_end_86
    .catchall {:try_start_80 .. :try_end_86} :catchall_84

    :try_start_86
    throw v6
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_87

    .line 1583
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_87
    move-exception v6

    invoke-static {v4, v5}, restoreCallingIdentity(J)V

    throw v6
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3737
    invoke-virtual {p0}, asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onServiceChanged(Landroid/accounts/AuthenticatorDescription;IZ)V
    .registers 6
    .param p1, "desc"    # Landroid/accounts/AuthenticatorDescription;
    .param p2, "userId"    # I
    .param p3, "removed"    # Z

    .prologue
    .line 619
    invoke-virtual {p0, p2}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    .line 620
    return-void
.end method

.method public bridge synthetic onServiceChanged(Ljava/lang/Object;IZ)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # Z

    .prologue
    .line 132
    check-cast p1, Landroid/accounts/AuthenticatorDescription;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, onServiceChanged(Landroid/accounts/AuthenticatorDescription;IZ)V

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 354
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/accounts/IAccountManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 355
    :catch_5
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 359
    const-string v1, "AccountManagerService"

    const-string v2, "Account Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    :cond_11
    throw v0
.end method

.method public onUserReset(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 494
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUserReset is called for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 496
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_25

    .line 500
    invoke-direct {p0, p1}, removeAccountDB(I)V

    .line 504
    :goto_24
    return-void

    .line 502
    :cond_25
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove accounts db for user -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    .line 1688
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1689
    .local v1, "callingUid":I
    const-string v6, "AccountManagerService"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 1690
    const-string v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "peekAuthToken: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", authTokenType "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", caller\'s uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    :cond_48
    if-nez p1, :cond_52

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "account is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1696
    :cond_52
    if-nez p2, :cond_5c

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "authTokenType is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1697
    :cond_5c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 1698
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v1, v5}, isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_83

    .line 1699
    const-string/jumbo v6, "uid %s cannot peek the authtokens associated with accounts of type: %s"

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1703
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1705
    .end local v4    # "msg":Ljava/lang/String;
    :cond_83
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v2

    .line 1707
    .local v2, "identityToken":J
    :try_start_87
    invoke-virtual {p0, v5}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1708
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-virtual {p0, v0, p1, p2}, readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8e
    .catchall {:try_start_87 .. :try_end_8e} :catchall_93

    move-result-object v6

    .line 1710
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    return-object v6

    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_93
    move-exception v6

    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    throw v6
.end method

.method protected readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;

    .prologue
    .line 4378
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 4379
    :try_start_5
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 4380
    .local v0, "authTokensForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_24

    .line 4382
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4383
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v1, p2}, readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v0

    .line 4384
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4386
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_24
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit v3

    return-object v2

    .line 4387
    .end local v0    # "authTokensForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_2c
    move-exception v2

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw v2
.end method

.method protected readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;
    .registers 15
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 4425
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 4426
    .local v9, "authTokensForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "authtokens"

    sget-object v2, COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    const-string v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 4432
    .local v10, "cursor":Landroid/database/Cursor;
    :goto_20
    :try_start_20
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 4433
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4434
    .local v11, "type":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4435
    .local v8, "authToken":Ljava/lang/String;
    invoke-virtual {v9, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_34

    goto :goto_20

    .line 4438
    .end local v8    # "authToken":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    :catchall_34
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_39
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4440
    return-object v9
.end method

.method protected readCachedTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .registers 8
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "tokenType"    # Ljava/lang/String;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "pkgSigDigest"    # [B

    .prologue
    .line 4356
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4357
    :try_start_5
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/accounts/TokenCache;->get(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 4359
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v0
.end method

.method protected readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;
    .registers 15
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 4405
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 4406
    .local v10, "userDataForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "extras"

    sget-object v2, COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    const-string v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4412
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_21
    :try_start_21
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 4413
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4414
    .local v9, "tmpkey":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4415
    .local v11, "value":Ljava/lang/String;
    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_21 .. :try_end_34} :catchall_35

    goto :goto_21

    .line 4418
    .end local v9    # "tmpkey":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :catchall_35
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4420
    return-object v10
.end method

.method protected readUserDataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 4391
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 4392
    :try_start_5
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 4393
    .local v1, "userDataForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_24

    .line 4395
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4396
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v0, p2}, readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v1

    .line 4397
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4399
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_24
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit v3

    return-object v2

    .line 4400
    .end local v1    # "userDataForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_2c
    move-exception v2

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw v2
.end method

.method public removeAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V
    .registers 5
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "expectActivityLaunch"    # Z

    .prologue
    .line 1325
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V

    .line 1330
    return-void
.end method

.method public removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V
    .registers 22
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "expectActivityLaunch"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 1335
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1336
    .local v8, "callingUid":I
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1337
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeAccount: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", response "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", caller\'s uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", pid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", for user id "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :cond_58
    if-nez p1, :cond_63

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "response is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1344
    :cond_63
    if-nez p2, :cond_6d

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1346
    :cond_6d
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v8, v1}, isCrossUser(II)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 1347
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "User %s tying remove account for %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1358
    :cond_98
    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    move/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1359
    .local v16, "user":Landroid/os/UserHandle;
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8, v3}, isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_d7

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, isSystemUid(I)Z

    move-result v2

    if-nez v2, :cond_d7

    .line 1361
    const-string/jumbo v2, "uid %s cannot remove accounts of type: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1365
    .local v14, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1370
    .end local v14    # "msg":Ljava/lang/String;
    :cond_d7
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1373
    .local v9, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v9, :cond_103

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getDeviceAccountPolicy()Landroid/app/enterprise/DeviceAccountPolicy;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move/from16 v0, p4

    invoke-virtual {v2, v3, v5, v6, v0}, Landroid/app/enterprise/DeviceAccountPolicy;->isAccountRemovalAllowedAsUser(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v2

    if-nez v2, :cond_103

    .line 1375
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Security policy blocks this account removal"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1380
    :cond_103
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, canUserModifyAccounts(I)Z

    move-result v2

    if-nez v2, :cond_117

    .line 1382
    const/16 v2, 0x64

    :try_start_10f
    const-string v3, "User cannot modify accounts"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_116
    .catch Landroid/os/RemoteException; {:try_start_10f .. :try_end_116} :catch_1ba

    .line 1416
    :goto_116
    return-void

    .line 1388
    :cond_117
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v2}, canUserModifyAccountsForType(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_131

    .line 1390
    const/16 v2, 0x65

    :try_start_127
    const-string v3, "User cannot modify accounts of this type (policy)."

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_12e
    .catch Landroid/os/RemoteException; {:try_start_127 .. :try_end_12e} :catch_12f

    goto :goto_116

    .line 1392
    :catch_12f
    move-exception v2

    goto :goto_116

    .line 1396
    :cond_131
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v12

    .line 1397
    .local v12, "identityToken":J
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 1398
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, cancelNotification(ILandroid/os/UserHandle;)V

    .line 1399
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 1401
    :try_start_155
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_161
    :goto_161
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_194

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    .line 1402
    .local v15, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v2, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_161

    .line 1403
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1404
    .local v11, "id":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v11, v1}, cancelNotification(ILandroid/os/UserHandle;)V

    goto :goto_161

    .line 1407
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "id":I
    .end local v15    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    :catchall_191
    move-exception v2

    monitor-exit v3
    :try_end_193
    .catchall {:try_start_155 .. :try_end_193} :catchall_191

    throw v2

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_194
    :try_start_194
    monitor-exit v3
    :try_end_195
    .catchall {:try_start_194 .. :try_end_195} :catchall_191

    .line 1409
    # getter for: Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_CALLED_ACCOUNT_REMOVE:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->access$1800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "accounts"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v3}, logRecord(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    :try_start_1a0
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->bind()V
    :try_end_1b0
    .catchall {:try_start_1a0 .. :try_end_1b0} :catchall_1b5

    .line 1414
    invoke-static {v12, v13}, restoreCallingIdentity(J)V

    goto/16 :goto_116

    :catchall_1b5
    move-exception v2

    invoke-static {v12, v13}, restoreCallingIdentity(J)V

    throw v2

    .line 1384
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "identityToken":J
    :catch_1ba
    move-exception v2

    goto/16 :goto_116
.end method

.method public removeAccountExplicitly(Landroid/accounts/Account;)Z
    .registers 13
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x0

    .line 1420
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1421
    .local v1, "callingUid":I
    const-string v7, "AccountManagerService"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 1422
    const-string v7, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeAccountExplicitly: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", caller\'s uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", pid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :cond_3f
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 1427
    .local v5, "userId":I
    if-nez p1, :cond_51

    .line 1432
    const-string v7, "AccountManagerService"

    const-string v8, "account is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :cond_50
    :goto_50
    return v6

    .line 1434
    :cond_51
    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v7, v1, v5}, isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_73

    .line 1435
    const-string/jumbo v7, "uid %s cannot explicitly add accounts of type: %s"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x1

    iget-object v9, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1439
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1441
    .end local v4    # "msg":Ljava/lang/String;
    :cond_73
    invoke-direct {p0}, getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1442
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v5}, canUserModifyAccounts(I)Z

    move-result v7

    if-eqz v7, :cond_50

    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v5, v7}, canUserModifyAccountsForType(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 1445
    # getter for: Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_CALLED_ACCOUNT_REMOVE:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->access$1800()Ljava/lang/String;

    move-result-object v6

    const-string v7, "accounts"

    invoke-direct {p0, v0, v6, v7}, logRecord(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v2

    .line 1448
    .local v2, "identityToken":J
    :try_start_92
    invoke-direct {p0, v0, p1}, removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_9a

    move-result v6

    .line 1450
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    goto :goto_50

    :catchall_9a
    move-exception v6

    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    throw v6
.end method

.method protected removeAccountInternal(Landroid/accounts/Account;)V
    .registers 3
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 1504
    invoke-direct {p0}, getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    invoke-direct {p0, v0, p1}, removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z

    .line 1505
    return-void
.end method

.method public removeSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I

    .prologue
    .line 2889
    invoke-static {}, getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, removeSharedAccountAsUser(Landroid/accounts/Account;II)Z

    move-result v0

    return v0
.end method

.method public renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 19
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountToRename"    # Landroid/accounts/Account;
    .param p3, "newName"    # Ljava/lang/String;

    .prologue
    .line 1202
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1203
    .local v3, "callingUid":I
    const-string v11, "AccountManagerService"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_4c

    .line 1204
    const-string v11, "AccountManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "renameAccount: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " -> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", caller\'s uid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", pid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_4c
    if-nez p2, :cond_56

    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "account is null"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1209
    :cond_56
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 1210
    .local v10, "userId":I
    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v11, v3, v10}, isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v11

    if-nez v11, :cond_82

    .line 1211
    const-string/jumbo v11, "uid %s cannot rename accounts of type: %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1215
    .local v5, "msg":Ljava/lang/String;
    new-instance v11, Ljava/lang/SecurityException;

    invoke-direct {v11, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1217
    .end local v5    # "msg":Ljava/lang/String;
    :cond_82
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v6

    .line 1219
    .local v6, "identityToken":J
    :try_start_86
    invoke-virtual {p0, v10}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 1220
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, v2, v0, v1}, renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v9

    .line 1221
    .local v9, "resultingAccount":Landroid/accounts/Account;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1222
    .local v8, "result":Landroid/os/Bundle;
    const-string v11, "authAccount"

    iget-object v12, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    const-string v11, "accountType"

    iget-object v12, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a5
    .catchall {:try_start_86 .. :try_end_a5} :catchall_b9

    .line 1225
    :try_start_a5
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_a5 .. :try_end_aa} :catch_ae
    .catchall {:try_start_a5 .. :try_end_aa} :catchall_b9

    .line 1230
    :goto_aa
    invoke-static {v6, v7}, restoreCallingIdentity(J)V

    .line 1232
    return-void

    .line 1226
    :catch_ae
    move-exception v4

    .line 1227
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_af
    const-string v11, "AccountManagerService"

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catchall {:try_start_af .. :try_end_b8} :catchall_b9

    goto :goto_aa

    .line 1230
    .end local v2    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v8    # "result":Landroid/os/Bundle;
    .end local v9    # "resultingAccount":Landroid/accounts/Account;
    :catchall_b9
    move-exception v11

    invoke-static {v6, v7}, restoreCallingIdentity(J)V

    throw v11
.end method

.method public renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 16
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 2865
    invoke-direct {p0, p3}, handleIncomingUser(I)I

    move-result p3

    .line 2866
    invoke-virtual {p0, p3}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    .line 2867
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2868
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1, p1}, getAccountIdFromSharedTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v4

    .line 2869
    .local v4, "sharedTableAccountId":J
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2870
    .local v9, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "name"

    invoke-virtual {v9, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2871
    const-string/jumbo v0, "previous_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2872
    const-string/jumbo v0, "shared_accounts"

    const-string/jumbo v2, "name=? AND type=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v11, v3, v10

    const/4 v10, 0x1

    iget-object v11, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v11, v3, v10

    invoke-virtual {v1, v0, v9, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 2877
    .local v8, "r":I
    if-lez v8, :cond_52

    .line 2878
    invoke-static {}, getCallingUid()I

    move-result v7

    .line 2879
    .local v7, "callingUid":I
    # getter for: Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_ACCOUNT_RENAME:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->access$1700()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "shared_accounts"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 2882
    invoke-direct {p0, v6, p1, p2}, renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;

    .line 2884
    .end local v7    # "callingUid":I
    :cond_52
    if-lez v8, :cond_56

    const/4 v0, 0x1

    :goto_55
    return v0

    :cond_56
    const/4 v0, 0x0

    goto :goto_55
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    .line 1716
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1717
    .local v1, "callingUid":I
    const-string v6, "AccountManagerService"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 1718
    const-string v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAuthToken: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", authTokenType "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", caller\'s uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    :cond_48
    if-nez p1, :cond_52

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "account is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1724
    :cond_52
    if-nez p2, :cond_5c

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "authTokenType is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1725
    :cond_5c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 1726
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v1, v5}, isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_83

    .line 1727
    const-string/jumbo v6, "uid %s cannot set auth tokens associated with accounts of type: %s"

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1731
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1733
    .end local v4    # "msg":Ljava/lang/String;
    :cond_83
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v2

    .line 1735
    .local v2, "identityToken":J
    :try_start_87
    invoke-virtual {p0, v5}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1736
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p1, p2, p3}, saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_8e
    .catchall {:try_start_87 .. :try_end_8e} :catchall_92

    .line 1738
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    .line 1740
    return-void

    .line 1738
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_92
    move-exception v6

    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    throw v6
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 13
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    .line 1744
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1745
    .local v1, "callingUid":I
    const-string v6, "AccountManagerService"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 1746
    const-string v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAuthToken: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", caller\'s uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    :cond_3e
    if-nez p1, :cond_48

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "account is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1751
    :cond_48
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 1752
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v1, v5}, isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_6f

    .line 1753
    const-string/jumbo v6, "uid %s cannot set secrets for accounts of type: %s"

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1757
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1759
    .end local v4    # "msg":Ljava/lang/String;
    :cond_6f
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v2

    .line 1761
    .local v2, "identityToken":J
    :try_start_73
    invoke-virtual {p0, v5}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1762
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p1, p2, v1}, setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_7a
    .catchall {:try_start_73 .. :try_end_7a} :catchall_7e

    .line 1764
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    .line 1766
    return-void

    .line 1764
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_7e
    move-exception v6

    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    throw v6
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    .line 1839
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1840
    .local v1, "callingUid":I
    const-string v6, "AccountManagerService"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 1841
    const-string v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setUserData: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", caller\'s uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    :cond_48
    if-nez p2, :cond_53

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "key is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1847
    :cond_53
    if-nez p1, :cond_5d

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "account is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1848
    :cond_5d
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 1849
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v1, v5}, isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_84

    .line 1850
    const-string/jumbo v6, "uid %s cannot set user data for accounts of type: %s"

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1854
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1856
    .end local v4    # "msg":Ljava/lang/String;
    :cond_84
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v2

    .line 1858
    .local v2, "identityToken":J
    :try_start_88
    invoke-virtual {p0, v5}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1859
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p1, p2, p3}, setUserdataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_88 .. :try_end_8f} :catchall_93

    .line 1861
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    .line 1863
    return-void

    .line 1861
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_93
    move-exception v6

    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    throw v6
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 366
    return-void
.end method

.method public updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4114
    invoke-static {}, getCallingUid()I

    move-result v0

    .line 4116
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_e

    .line 4117
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1

    .line 4120
    :cond_e
    if-eqz p4, :cond_14

    .line 4121
    invoke-direct {p0, p1, p2, p3}, grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 4125
    :goto_13
    return-void

    .line 4123
    :cond_14
    invoke-direct {p0, p1, p2, p3}, revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_13
.end method

.method public updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .registers 24
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "expectActivityLaunch"    # Z
    .param p5, "loginOptions"    # Landroid/os/Bundle;

    .prologue
    .line 2516
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 2517
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCredentials: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", response "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", authTokenType "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", expectActivityLaunch "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", caller\'s uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", pid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    :cond_64
    if-nez p1, :cond_6f

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "response is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2525
    :cond_6f
    if-nez p2, :cond_79

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2526
    :cond_79
    if-nez p3, :cond_83

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "authTokenType is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2527
    :cond_83
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v15

    .line 2528
    .local v15, "userId":I
    invoke-static {}, clearCallingIdentity()J

    move-result-wide v16

    .line 2530
    .local v16, "identityToken":J
    :try_start_8b
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 2531
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$10;

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v8, 0x1

    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move/from16 v7, p4

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p5

    invoke-direct/range {v2 .. v14}, Lcom/android/server/accounts/AccountManagerService$10;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$10;->bind()V
    :try_end_b0
    .catchall {:try_start_8b .. :try_end_b0} :catchall_b4

    .line 2548
    invoke-static/range {v16 .. v17}, restoreCallingIdentity(J)V

    .line 2550
    return-void

    .line 2548
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_b4
    move-exception v2

    invoke-static/range {v16 .. v17}, restoreCallingIdentity(J)V

    throw v2
.end method

.method public validateAccounts(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 380
    invoke-virtual {p0, p1}, getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 384
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    .line 385
    return-void
.end method

.method protected writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 4364
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 4365
    .local v0, "authTokensForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_17

    .line 4366
    invoke-virtual {p0, p2, p3}, readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v0

    .line 4367
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4369
    :cond_17
    if-nez p5, :cond_1d

    .line 4370
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4374
    :goto_1c
    return-void

    .line 4372
    :cond_1d
    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c
.end method

.method protected writeUserDataIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 4338
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 4339
    .local v0, "userDataForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_17

    .line 4340
    invoke-virtual {p0, p2, p3}, readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v0

    .line 4341
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4343
    :cond_17
    if-nez p5, :cond_1d

    .line 4344
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4348
    :goto_1c
    return-void

    .line 4346
    :cond_1d
    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c
.end method
