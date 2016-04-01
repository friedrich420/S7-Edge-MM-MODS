.class public Landroid/service/trust/TrustAgentService;
.super Landroid/app/Service;
.source "TrustAgentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;,
        Landroid/service/trust/TrustAgentService$ConfigurationData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final FLAG_GRANT_TRUST_DISMISS_KEYGUARD:I = 0x2

.field public static final FLAG_GRANT_TRUST_INITIATED_BY_USER:I = 0x1

.field private static final MSG_CONFIGURE:I = 0x2

.field private static final MSG_DEVICE_LOCKED:I = 0x4

.field private static final MSG_DEVICE_UNLOCKED:I = 0x5

.field private static final MSG_TRUST_TIMEOUT:I = 0x3

.field private static final MSG_UNLOCK_ATTEMPT:I = 0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.trust.TrustAgentService"

.field public static final TRUST_AGENT_META_DATA:Ljava/lang/String; = "android.service.trust.trustagent"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mManagingTrust:Z

.field private mPendingGrantTrustTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/service/trust/TrustAgentService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, TAG:Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 148
    new-instance v0, Landroid/service/trust/TrustAgentService$1;

    invoke-direct {v0, p0}, Landroid/service/trust/TrustAgentService$1;-><init>(Landroid/service/trust/TrustAgentService;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 363
    return-void
.end method

.method static synthetic access$000(Landroid/service/trust/TrustAgentService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/service/trust/TrustAgentService;

    .prologue
    .line 74
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/service/trust/TrustAgentService;)Landroid/service/trust/ITrustAgentServiceCallback;
    .registers 2
    .param p0, "x0"    # Landroid/service/trust/TrustAgentService;

    .prologue
    .line 74
    iget-object v0, p0, mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    return-object v0
.end method

.method static synthetic access$102(Landroid/service/trust/TrustAgentService;Landroid/service/trust/ITrustAgentServiceCallback;)Landroid/service/trust/ITrustAgentServiceCallback;
    .registers 2
    .param p0, "x0"    # Landroid/service/trust/TrustAgentService;
    .param p1, "x1"    # Landroid/service/trust/ITrustAgentServiceCallback;

    .prologue
    .line 74
    iput-object p1, p0, mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    return-object p1
.end method

.method static synthetic access$200(Landroid/service/trust/TrustAgentService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/service/trust/TrustAgentService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1}, onError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/service/trust/TrustAgentService;

    .prologue
    .line 74
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/service/trust/TrustAgentService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/service/trust/TrustAgentService;

    .prologue
    .line 74
    iget-boolean v0, p0, mManagingTrust:Z

    return v0
.end method

.method static synthetic access$600(Landroid/service/trust/TrustAgentService;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Landroid/service/trust/TrustAgentService;

    .prologue
    .line 74
    iget-object v0, p0, mPendingGrantTrustTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$602(Landroid/service/trust/TrustAgentService;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Landroid/service/trust/TrustAgentService;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 74
    iput-object p1, p0, mPendingGrantTrustTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method private onError(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v0, p0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method


# virtual methods
.method public final grantTrust(Ljava/lang/CharSequence;JI)V
    .registers 13
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "durationMs"    # J
    .param p4, "flags"    # I

    .prologue
    .line 292
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 293
    :try_start_3
    iget-boolean v1, p0, mManagingTrust:Z

    if-nez v1, :cond_12

    .line 294
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot grant trust if agent is not managing trust. Call setManagingTrust(true) first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    :catchall_f
    move-exception v1

    monitor-exit v7
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1

    .line 297
    :cond_12
    :try_start_12
    iget-object v1, p0, mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_f

    if-eqz v1, :cond_28

    .line 299
    :try_start_16
    iget-object v1, p0, mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3, p4}, Landroid/service/trust/ITrustAgentServiceCallback;->grantTrust(Ljava/lang/CharSequence;JI)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_21
    .catchall {:try_start_16 .. :try_end_1f} :catchall_f

    .line 313
    :goto_1f
    :try_start_1f
    monitor-exit v7

    .line 314
    return-void

    .line 300
    :catch_21
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "calling enableTrust()"

    invoke-direct {p0, v1}, onError(Ljava/lang/String;)V

    goto :goto_1f

    .line 306
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_28
    new-instance v1, Landroid/service/trust/TrustAgentService$2;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/service/trust/TrustAgentService$2;-><init>(Landroid/service/trust/TrustAgentService;Ljava/lang/CharSequence;JI)V

    iput-object v1, p0, mPendingGrantTrustTask:Ljava/lang/Runnable;
    :try_end_33
    .catchall {:try_start_1f .. :try_end_33} :catchall_f

    goto :goto_1f
.end method

.method public final grantTrust(Ljava/lang/CharSequence;JZ)V
    .registers 7
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "durationMs"    # J
    .param p4, "initiatedByUser"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 272
    if-eqz p4, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, p1, p2, p3, v0}, grantTrust(Ljava/lang/CharSequence;JI)V

    .line 273
    return-void

    .line 272
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 360
    new-instance v0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;-><init>(Landroid/service/trust/TrustAgentService;Landroid/service/trust/TrustAgentService$1;)V

    return-object v0
.end method

.method public onConfigure(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/PersistableBundle;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, "options":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .registers 7

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 183
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_c
    invoke-virtual {p0}, getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 186
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    const-string v3, "android.permission.BIND_TRUST_AGENT"

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 187
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not declared with the permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.BIND_TRUST_AGENT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_4e} :catch_4e

    .line 191
    .end local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catch_4e
    move-exception v1

    .line 192
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t get ServiceInfo for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6b
    return-void
.end method

.method public onDeviceLocked()V
    .registers 1

    .prologue
    .line 220
    return-void
.end method

.method public onDeviceUnlocked()V
    .registers 1

    .prologue
    .line 227
    return-void
.end method

.method public onTrustTimeout()V
    .registers 1

    .prologue
    .line 213
    return-void
.end method

.method public onUnlockAttempt(Z)V
    .registers 2
    .param p1, "successful"    # Z

    .prologue
    .line 203
    return-void
.end method

.method public final revokeTrust()V
    .registers 4

    .prologue
    .line 320
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 321
    :try_start_3
    iget-object v1, p0, mPendingGrantTrustTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_a

    .line 322
    const/4 v1, 0x0

    iput-object v1, p0, mPendingGrantTrustTask:Ljava/lang/Runnable;

    .line 324
    :cond_a
    iget-object v1, p0, mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1c

    if-eqz v1, :cond_13

    .line 326
    :try_start_e
    iget-object v1, p0, mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-interface {v1}, Landroid/service/trust/ITrustAgentServiceCallback;->revokeTrust()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15
    .catchall {:try_start_e .. :try_end_13} :catchall_1c

    .line 331
    :cond_13
    :goto_13
    :try_start_13
    monitor-exit v2

    .line 332
    return-void

    .line 327
    :catch_15
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "calling revokeTrust()"

    invoke-direct {p0, v1}, onError(Ljava/lang/String;)V

    goto :goto_13

    .line 331
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public final setManagingTrust(Z)V
    .registers 5
    .param p1, "managingTrust"    # Z

    .prologue
    .line 343
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 344
    :try_start_3
    iget-boolean v1, p0, mManagingTrust:Z

    if-eq v1, p1, :cond_12

    .line 345
    iput-boolean p1, p0, mManagingTrust:Z

    .line 346
    iget-object v1, p0, mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1b

    if-eqz v1, :cond_12

    .line 348
    :try_start_d
    iget-object v1, p0, mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-interface {v1, p1}, Landroid/service/trust/ITrustAgentServiceCallback;->setManagingTrust(Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_14
    .catchall {:try_start_d .. :try_end_12} :catchall_1b

    .line 354
    :cond_12
    :goto_12
    :try_start_12
    monitor-exit v2

    .line 355
    return-void

    .line 349
    :catch_14
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "calling setManagingTrust()"

    invoke-direct {p0, v1}, onError(Ljava/lang/String;)V

    goto :goto_12

    .line 354
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1b

    throw v1
.end method
