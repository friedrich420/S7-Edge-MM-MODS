.class public Lcom/android/server/telecom/TelecomLoaderService;
.super Lcom/android/server/SystemService;
.source "TelecomLoaderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    }
.end annotation


# static fields
.field private static final SERVICE_ACTION:Ljava/lang/String; = "com.android.ITelecomService"

.field private static final SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "TelecomLoaderService"


# instance fields
.field flags:I

.field private final mContext:Landroid/content/Context;

.field private mDefaultDialerAppRequests:Landroid/util/IntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDefaultSimCallManagerRequests:Landroid/util/IntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDefaultSmsAppRequests:Landroid/util/IntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 135
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.server.telecom"

    const-string v2, "com.android.server.telecom.components.TelecomService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 197
    const v0, 0x4000041

    iput v0, p0, flags:I

    .line 159
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 160
    invoke-direct {p0}, registerDefaultAppProviders()V

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/TelecomLoaderService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .prologue
    .line 54
    invoke-direct {p0}, connectToTelecom()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .prologue
    .line 54
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/TelecomLoaderService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .prologue
    .line 54
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .prologue
    .line 54
    iget-object v0, p0, mDefaultSmsAppRequests:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/telecom/TelecomLoaderService;Landroid/util/IntArray;)Landroid/util/IntArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;
    .param p1, "x1"    # Landroid/util/IntArray;

    .prologue
    .line 54
    iput-object p1, p0, mDefaultSmsAppRequests:Landroid/util/IntArray;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .prologue
    .line 54
    iget-object v0, p0, mDefaultDialerAppRequests:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/telecom/TelecomLoaderService;Landroid/util/IntArray;)Landroid/util/IntArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;
    .param p1, "x1"    # Landroid/util/IntArray;

    .prologue
    .line 54
    iput-object p1, p0, mDefaultDialerAppRequests:Landroid/util/IntArray;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .prologue
    .line 54
    iget-object v0, p0, mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/telecom/TelecomLoaderService;Landroid/util/IntArray;)Landroid/util/IntArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;
    .param p1, "x1"    # Landroid/util/IntArray;

    .prologue
    .line 54
    iput-object p1, p0, mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/telecom/TelecomLoaderService;)Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .prologue
    .line 54
    iget-object v0, p0, mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/telecom/TelecomLoaderService;Landroid/content/pm/PackageManagerInternal;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;
    .param p1, "x1"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "x2"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, updateSimCallManagerPermissions(Landroid/content/pm/PackageManagerInternal;I)V

    return-void
.end method

.method private connectToTelecom()V
    .registers 7

    .prologue
    .line 177
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 178
    :try_start_3
    iget-object v3, p0, mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    if-eqz v3, :cond_11

    .line 180
    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v5, p0, mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 181
    const/4 v3, 0x0

    iput-object v3, p0, mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    .line 184
    :cond_11
    new-instance v2, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;-><init>(Lcom/android/server/telecom/TelecomLoaderService;Lcom/android/server/telecom/TelecomLoaderService$1;)V

    .line 185
    .local v2, "serviceConnection":Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.ITelecomService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v1, "intent":Landroid/content/Intent;
    sget-object v3, SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 187
    const v0, 0x4000041

    .line 191
    .local v0, "flags":I
    iget-object v3, p0, mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v2, v0, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 192
    iput-object v2, p0, mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    .line 194
    :cond_32
    monitor-exit v4

    .line 195
    return-void

    .line 194
    .end local v0    # "flags":I
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "serviceConnection":Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    :catchall_34
    move-exception v3

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v3
.end method

.method private registerCarrierConfigChangedReceiver()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 315
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageManagerInternal;

    .line 317
    .local v6, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$5;

    invoke-direct {v1, p0, v6}, Lcom/android/server/telecom/TelecomLoaderService$5;-><init>(Lcom/android/server/telecom/TelecomLoaderService;Landroid/content/pm/PackageManagerInternal;)V

    .line 328
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v0, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 330
    return-void
.end method

.method private registerDefaultAppNotifier()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 275
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 279
    .local v4, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    const-string/jumbo v1, "sms_default_application"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 281
    .local v3, "defaultSmsAppUri":Landroid/net/Uri;
    const-string/jumbo v1, "dialer_default_application"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 284
    .local v5, "defaultDialerAppUri":Landroid/net/Uri;
    new-instance v0, Lcom/android/server/telecom/TelecomLoaderService$4;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/telecom/TelecomLoaderService$4;-><init>(Lcom/android/server/telecom/TelecomLoaderService;Landroid/os/Handler;Landroid/net/Uri;Landroid/content/pm/PackageManagerInternal;Landroid/net/Uri;)V

    .line 307
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v3, v7, v0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 309
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v5, v7, v0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 311
    return-void
.end method

.method private registerDefaultAppProviders()V
    .registers 3

    .prologue
    .line 201
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 205
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$1;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/TelecomLoaderService$1;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setSmsAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 228
    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$2;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/TelecomLoaderService$2;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setDialerAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 250
    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$3;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/TelecomLoaderService$3;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setSimCallManagerPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 272
    return-void
.end method

.method private updateSimCallManagerPermissions(Landroid/content/pm/PackageManagerInternal;I)V
    .registers 9
    .param p1, "packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "userId"    # I

    .prologue
    .line 334
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "telecom"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    .line 336
    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v2, p2}, Landroid/telecom/TelecomManager;->getSimCallManager(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 337
    .local v1, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    if-eqz v1, :cond_35

    .line 338
    const-string v3, "TelecomLoaderService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updating sim call manager permissions for userId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManagerInternal;->grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V

    .line 343
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_35
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .prologue
    .line 169
    const/16 v0, 0x226

    if-ne p1, v0, :cond_d

    .line 170
    invoke-direct {p0}, registerDefaultAppNotifier()V

    .line 171
    invoke-direct {p0}, registerCarrierConfigChangedReceiver()V

    .line 172
    invoke-direct {p0}, connectToTelecom()V

    .line 174
    :cond_d
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 165
    return-void
.end method
