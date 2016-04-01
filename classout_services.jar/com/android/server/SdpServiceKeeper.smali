.class public Lcom/android/server/SdpServiceKeeper;
.super Ljava/lang/Object;
.source "SdpServiceKeeper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpServiceKeeper$1;,
        Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;
    }
.end annotation


# static fields
.field private static final SDP_LICENSE_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.permission.KNOX_SDP"

.field private static final TAG:Ljava/lang/String; = "SdpServiceKeeper"

.field private static _instance:Lcom/android/server/SdpServiceKeeper;

.field private static mWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAM:Landroid/app/ActivityManager;

.field mContext:Landroid/content/Context;

.field private final mPM:Lcom/android/server/pm/PackageManagerService;

.field private mSdpPolicyDb:Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;

.field private final mSdpPolicyDbLock:Ljava/lang/Object;

.field private mSdpPolicyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/sdp/engine/SdpPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private final mSdpPolicyMapLock:Ljava/lang/Object;

.field private mUM:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, _instance:Lcom/android/server/SdpServiceKeeper;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, mWhitelist:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v2, p0, mContext:Landroid/content/Context;

    .line 69
    iput-object v2, p0, mUM:Landroid/os/UserManager;

    .line 70
    iput-object v2, p0, mAM:Landroid/app/ActivityManager;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mSdpPolicyDbLock:Ljava/lang/Object;

    .line 81
    iput-object v2, p0, mSdpPolicyDb:Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mSdpPolicyMapLock:Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mSdpPolicyMap:Ljava/util/Map;

    .line 109
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 110
    new-instance v0, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;-><init>(Lcom/android/server/SdpServiceKeeper;Landroid/content/Context;Lcom/android/server/SdpServiceKeeper$1;)V

    iput-object v0, p0, mSdpPolicyDb:Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;

    .line 111
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, mUM:Landroid/os/UserManager;

    .line 112
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, mAM:Landroid/app/ActivityManager;

    .line 113
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, mPM:Lcom/android/server/pm/PackageManagerService;

    .line 114
    invoke-direct {p0}, initWhitelist()V

    .line 115
    return-void
.end method

.method private checkPermission(Landroid/content/Context;)Z
    .registers 6
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 341
    const/4 v1, 0x0

    .line 343
    .local v1, "ret":Z
    :try_start_1
    const-string v2, "com.sec.enterprise.permission.KNOX_SDP"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_7} :catch_9

    .line 344
    const/4 v1, 0x1

    .line 348
    :goto_8
    return v1

    .line 345
    :catch_9
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "SdpServiceKeeper"

    const-string v3, "License validation failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method private getDefaultEngineOwner(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    const-string/jumbo v1, "system_server"

    invoke-direct {v0, p1, v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getDeviceOwner()Ljava/lang/String;
    .registers 4

    .prologue
    .line 301
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 302
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPackageName(Landroid/content/Context;II)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    .line 292
    const/4 v0, 0x0

    .line 294
    .local v0, "packageName":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v0

    .line 297
    :goto_9
    return-object v0

    .line 295
    :catch_a
    move-exception v1

    goto :goto_9
.end method

.method private getSdpPolicyLocked(Ljava/lang/String;)Lcom/android/server/sdp/engine/SdpPolicy;
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v0, p0, mSdpPolicyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 286
    iget-object v0, p0, mSdpPolicyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sdp/engine/SdpPolicy;

    .line 288
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 352
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 353
    .local v0, "identity":J
    iget-object v3, p0, mUM:Landroid/os/UserManager;

    if-eqz v3, :cond_12

    iget-object v3, p0, mUM:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 355
    .local v2, "ui":Landroid/content/pm/UserInfo;
    :goto_e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 356
    return-object v2

    .line 353
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    :cond_12
    const/4 v2, 0x0

    goto :goto_e
.end method

.method private initWhitelist()V
    .registers 3

    .prologue
    .line 335
    sget-object v0, mWhitelist:Ljava/util/List;

    const-string v1, "com.samsung.android.email.provider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    sget-object v0, mWhitelist:Ljava/util/List;

    const-string v1, "com.samsung.android.spay"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v0, mWhitelist:Ljava/util/List;

    const-string v1, "com.sec.android.app.sbrowser"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    return-void
.end method

.method private isSystemApp(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 306
    if-nez p1, :cond_4

    .line 321
    :cond_3
    :goto_3
    return v2

    .line 311
    :cond_4
    :try_start_4
    iget-object v3, p0, mPM:Lcom/android/server/pm/PackageManagerService;

    if-eqz v3, :cond_3

    .line 312
    iget-object v3, p0, mPM:Lcom/android/server/pm/PackageManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, p2}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 313
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_3

    .line 314
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_19

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    .line 317
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_19
    move-exception v1

    .line 318
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private isSystemServer(Landroid/content/Context;II)Z
    .registers 9
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    .line 182
    const/4 v3, 0x0

    .line 183
    .local v3, "result":Z
    iget-object v4, p0, mAM:Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 184
    .local v2, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p2, :cond_b

    .line 185
    iget-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 186
    .local v0, "currProcName":Ljava/lang/String;
    if-eqz v0, :cond_29

    const-string/jumbo v4, "system"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 188
    const/4 v3, 0x1

    .line 193
    .end local v0    # "currProcName":Ljava/lang/String;
    .end local v2    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_29
    return v3
.end method

.method private isWhitelisted(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 325
    if-eqz p1, :cond_1c

    .line 326
    sget-object v2, mWhitelist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 327
    .local v1, "whitelisted":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 328
    const/4 v2, 0x1

    .line 331
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "whitelisted":Ljava/lang/String;
    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method private policyExistsLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z
    .registers 4
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 127
    iget-object v0, p0, mSdpPolicyMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 128
    const/4 v0, 0x1

    .line 130
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private updatePolicy(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/android/server/sdp/engine/SdpPolicy;)I
    .registers 7
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "policy"    # Lcom/android/server/sdp/engine/SdpPolicy;

    .prologue
    .line 234
    iget-object v2, p0, mSdpPolicyDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 235
    :try_start_3
    iget-object v1, p0, mSdpPolicyDb:Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;

    # invokes: Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->putPolicyLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/android/server/sdp/engine/SdpPolicy;)I
    invoke-static {v1, p1, p2}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->access$100(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/android/server/sdp/engine/SdpPolicy;)I

    move-result v0

    .line 236
    .local v0, "ret":I
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1a

    .line 238
    if-nez v0, :cond_19

    .line 239
    iget-object v2, p0, mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 240
    :try_start_f
    iget-object v1, p0, mSdpPolicyMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1d

    .line 243
    :cond_19
    return v0

    .line 236
    .end local v0    # "ret":I
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1

    .line 241
    .restart local v0    # "ret":I
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method


# virtual methods
.method public addPolicy(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/util/List;)I
    .registers 13
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 140
    .local p5, "privilegedApps":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;>;"
    const/4 v0, 0x0

    .line 142
    .local v0, "owner":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    iget-object v4, p0, mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v4

    .line 143
    :try_start_4
    invoke-direct {p0, p4}, policyExistsLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 144
    const-string v3, "SdpServiceKeeper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addPolicy :: error, policy["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] already exists!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v2, -0x6

    monitor-exit v4

    .line 178
    :cond_2e
    :goto_2e
    return v2

    .line 148
    :cond_2f
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_3e

    .line 153
    invoke-virtual {p4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 154
    invoke-direct {p0, p1, p2, p3}, isSystemServer(Landroid/content/Context;II)Z

    move-result v3

    if-nez v3, :cond_41

    .line 155
    const/4 v2, -0x8

    goto :goto_2e

    .line 148
    :catchall_3e
    move-exception v3

    :try_start_3f
    monitor-exit v4
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v3

    .line 156
    :cond_41
    invoke-virtual {p4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, getDefaultEngineOwner(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    move-result-object v0

    .line 165
    :goto_49
    new-instance v1, Lcom/android/server/sdp/engine/SdpPolicy;

    invoke-direct {v1, p4, v0, p5}, Lcom/android/server/sdp/engine/SdpPolicy;-><init>(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;Ljava/util/List;)V

    .line 168
    .local v1, "policy":Lcom/android/server/sdp/engine/SdpPolicy;
    iget-object v4, p0, mSdpPolicyDbLock:Ljava/lang/Object;

    monitor-enter v4

    .line 169
    :try_start_51
    iget-object v3, p0, mSdpPolicyDb:Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;

    # invokes: Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->putPolicyLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/android/server/sdp/engine/SdpPolicy;)I
    invoke-static {v3, p4, v1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->access$100(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/android/server/sdp/engine/SdpPolicy;)I

    move-result v2

    .line 170
    .local v2, "ret":I
    monitor-exit v4
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_82

    .line 172
    if-nez v2, :cond_2e

    .line 173
    iget-object v4, p0, mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v4

    .line 174
    :try_start_5d
    iget-object v3, p0, mSdpPolicyMap:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    monitor-exit v4

    goto :goto_2e

    :catchall_68
    move-exception v3

    monitor-exit v4
    :try_end_6a
    .catchall {:try_start_5d .. :try_end_6a} :catchall_68

    throw v3

    .line 157
    .end local v1    # "policy":Lcom/android/server/sdp/engine/SdpPolicy;
    .end local v2    # "ret":I
    :cond_6b
    invoke-virtual {p4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isCustomEngine()Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 160
    new-instance v0, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    .end local v0    # "owner":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    invoke-virtual {p4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "owner":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    goto :goto_49

    .line 162
    :cond_7f
    const/16 v2, -0xa

    goto :goto_2e

    .line 170
    .restart local v1    # "policy":Lcom/android/server/sdp/engine/SdpPolicy;
    :catchall_82
    move-exception v3

    :try_start_83
    monitor-exit v4
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw v3
.end method

.method public addPrivilegedApp(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;)I
    .registers 10
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p5, "privilegedApp"    # Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    .prologue
    .line 247
    const/16 v1, -0x63

    .line 248
    .local v1, "ret":I
    invoke-virtual {p0, p1, p2, p3, p4}, isEngineOwner(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 250
    iget-object v3, p0, mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v3

    .line 251
    :try_start_b
    invoke-virtual {p4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, getSdpPolicyLocked(Ljava/lang/String;)Lcom/android/server/sdp/engine/SdpPolicy;

    move-result-object v0

    .line 252
    .local v0, "policy":Lcom/android/server/sdp/engine/SdpPolicy;
    if-eqz v0, :cond_1c

    invoke-virtual {v0, p5}, Lcom/android/server/sdp/engine/SdpPolicy;->addPrivilegedApp(Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 254
    const/4 v1, 0x0

    .line 255
    :cond_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_24

    .line 256
    if-nez v1, :cond_23

    .line 257
    invoke-direct {p0, p4, v0}, updatePolicy(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/android/server/sdp/engine/SdpPolicy;)I

    move-result v1

    .line 262
    .end local v0    # "policy":Lcom/android/server/sdp/engine/SdpPolicy;
    :cond_23
    :goto_23
    return v1

    .line 255
    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2

    .line 260
    :cond_27
    const/4 v1, -0x8

    goto :goto_23
.end method

.method public declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/SdpServiceKeeper;
    .registers 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 101
    monitor-enter p0

    :try_start_1
    sget-object v0, _instance:Lcom/android/server/SdpServiceKeeper;

    if-nez v0, :cond_c

    .line 102
    new-instance v0, Lcom/android/server/SdpServiceKeeper;

    invoke-direct {v0, p1}, <init>(Landroid/content/Context;)V

    sput-object v0, _instance:Lcom/android/server/SdpServiceKeeper;

    .line 104
    :cond_c
    sget-object v0, _instance:Lcom/android/server/SdpServiceKeeper;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 101
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEngineOwner(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z
    .registers 14
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 433
    invoke-direct {p0, p1, p2, p3}, getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    .line 434
    .local v3, "pkgName":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3}, isSystemServer(Landroid/content/Context;II)Z

    move-result v7

    if-nez v7, :cond_16

    invoke-virtual {p4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v7

    invoke-direct {p0, v3, v7}, isSystemApp(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_18

    :cond_16
    move v5, v6

    .line 462
    :cond_17
    :goto_17
    return v5

    .line 437
    :cond_18
    invoke-virtual {p4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v7

    if-nez v7, :cond_17

    .line 442
    invoke-virtual {p4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isCustomEngine()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 444
    iget-object v7, p0, mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v7

    .line 445
    :try_start_27
    invoke-virtual {p4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, getSdpPolicyLocked(Ljava/lang/String;)Lcom/android/server/sdp/engine/SdpPolicy;

    move-result-object v4

    .line 446
    .local v4, "policy":Lcom/android/server/sdp/engine/SdpPolicy;
    monitor-exit v7
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_4f

    .line 448
    if-nez v4, :cond_52

    .line 449
    const-string v6, "SdpServiceKeeper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t find policy for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 446
    .end local v4    # "policy":Lcom/android/server/sdp/engine/SdpPolicy;
    :catchall_4f
    move-exception v5

    :try_start_50
    monitor-exit v7
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v5

    .line 454
    .restart local v4    # "policy":Lcom/android/server/sdp/engine/SdpPolicy;
    :cond_52
    :try_start_52
    invoke-virtual {v4}, Lcom/android/server/sdp/engine/SdpPolicy;->getOwner()Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, "owner":Ljava/lang/String;
    move-object v0, v3

    .line 456
    .local v0, "accessor":Ljava/lang/String;
    if-eqz v2, :cond_17

    if-eqz v0, :cond_17

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_62} :catch_67

    move-result v7

    if-eqz v7, :cond_17

    move v5, v6

    .line 457
    goto :goto_17

    .line 458
    .end local v0    # "accessor":Ljava/lang/String;
    .end local v2    # "owner":Ljava/lang/String;
    :catch_67
    move-exception v1

    .line 459
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method

.method public isLicensed(Landroid/content/Context;II)Z
    .registers 12
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    const/4 v4, 0x1

    .line 393
    invoke-direct {p0, p1, p2, p3}, getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, "pkgName":Ljava/lang/String;
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 396
    .local v3, "userId":I
    invoke-direct {p0, v3}, getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 397
    .local v2, "ui":Landroid/content/pm/UserInfo;
    invoke-direct {p0}, getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "doPkg":Ljava/lang/String;
    const-string v5, "SdpServiceKeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isLicensed {pid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " userid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " doPkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    if-eqz v0, :cond_59

    .line 402
    const-string v5, "SdpServiceKeeper"

    const-string v6, "Device owner exists. Skip license activation"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_58
    return v4

    .line 406
    :cond_59
    if-eqz v2, :cond_6f

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v5

    if-nez v5, :cond_6f

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 408
    const-string v5, "SdpServiceKeeper"

    const-string v6, "Managed profile user. Skip license activation"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 412
    :cond_6f
    invoke-direct {p0, v1}, isWhitelisted(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 413
    const-string v5, "SdpServiceKeeper"

    const-string v6, "White listed. Skip license activation"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 417
    :cond_7d
    invoke-direct {p0, v1, v3}, isSystemApp(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 418
    const-string v5, "SdpServiceKeeper"

    const-string v6, "System app. Skip license activation"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 422
    :cond_8b
    const-string v4, "SdpServiceKeeper"

    const-string v5, "Checking licesne permission"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-direct {p0, p1}, checkPermission(Landroid/content/Context;)Z

    move-result v4

    goto :goto_58
.end method

.method public isPrivileged(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z
    .registers 15
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    const/4 v7, 0x0

    .line 473
    invoke-direct {p0, p1, p2, p3}, getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    .line 474
    .local v4, "pkgName":Ljava/lang/String;
    const-string v6, ""

    .line 475
    .local v6, "privilegedApp":Ljava/lang/String;
    invoke-virtual {p4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 502
    :cond_d
    :goto_d
    return v7

    .line 480
    :cond_e
    invoke-virtual {p4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isCustomEngine()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 482
    iget-object v8, p0, mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v8

    .line 483
    :try_start_17
    invoke-virtual {p4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, getSdpPolicyLocked(Ljava/lang/String;)Lcom/android/server/sdp/engine/SdpPolicy;

    move-result-object v5

    .line 484
    .local v5, "policy":Lcom/android/server/sdp/engine/SdpPolicy;
    if-nez v5, :cond_26

    .line 485
    monitor-exit v8

    goto :goto_d

    .line 486
    .end local v5    # "policy":Lcom/android/server/sdp/engine/SdpPolicy;
    :catchall_23
    move-exception v7

    monitor-exit v8
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_23

    throw v7

    .restart local v5    # "policy":Lcom/android/server/sdp/engine/SdpPolicy;
    :cond_26
    :try_start_26
    monitor-exit v8
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 488
    :try_start_27
    invoke-virtual {v5}, Lcom/android/server/sdp/engine/SdpPolicy;->getPrivilegedApps()Ljava/util/List;

    move-result-object v1

    .line 490
    .local v1, "domains":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;>;"
    if-eqz v4, :cond_d

    if-eqz v1, :cond_d

    .line 491
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    .line 492
    .local v0, "domain":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 493
    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_46} :catch_4b

    move-result v8

    if-eqz v8, :cond_33

    .line 494
    const/4 v7, 0x1

    goto :goto_d

    .line 498
    .end local v0    # "domain":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    .end local v1    # "domains":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_4b
    move-exception v2

    .line 499
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public isSystemComponent(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z
    .registers 7
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 369
    invoke-direct {p0, p1, p2, p3}, getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "pkgName":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3}, isSystemServer(Landroid/content/Context;II)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v1

    invoke-direct {p0, v0, v1}, isSystemApp(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 373
    :cond_14
    const/4 v1, 0x1

    .line 375
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public loadPolicy(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Lcom/android/server/sdp/engine/SdpPolicy;
    .registers 6
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 204
    iget-object v2, p0, mSdpPolicyDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 205
    :try_start_3
    iget-object v1, p0, mSdpPolicyDb:Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;

    # invokes: Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->getPolicyLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Lcom/android/server/sdp/engine/SdpPolicy;
    invoke-static {v1, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->access$200(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Lcom/android/server/sdp/engine/SdpPolicy;

    move-result-object v0

    .line 206
    .local v0, "policy":Lcom/android/server/sdp/engine/SdpPolicy;
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_37

    .line 208
    if-eqz v0, :cond_3d

    .line 209
    const-string v1, "SdpServiceKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadPolicy :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/sdp/engine/SdpPolicy;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v2, p0, mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 212
    :try_start_2c
    iget-object v1, p0, mSdpPolicyMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_3a

    .line 218
    .end local v0    # "policy":Lcom/android/server/sdp/engine/SdpPolicy;
    :goto_36
    return-object v0

    .line 206
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v1

    .line 213
    .restart local v0    # "policy":Lcom/android/server/sdp/engine/SdpPolicy;
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1

    .line 218
    :cond_3d
    const/4 v0, 0x0

    goto :goto_36
.end method

.method public removePolicy(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    .registers 8
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 222
    iget-object v1, p0, mSdpPolicyDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 223
    :try_start_3
    iget-object v0, p0, mSdpPolicyDb:Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;

    # invokes: Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->removePolicyLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    invoke-static {v0, p4}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->access$300(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 224
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_18

    .line 226
    iget-object v1, p0, mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_c
    iget-object v0, p0, mSdpPolicyMap:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1b

    .line 229
    const/4 v0, 0x0

    return v0

    .line 224
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0

    .line 228
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public removePrivilegedApp(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;)I
    .registers 10
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p5, "privilegedApp"    # Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    .prologue
    .line 266
    const/16 v1, -0x63

    .line 267
    .local v1, "ret":I
    invoke-virtual {p0, p1, p2, p3, p4}, isEngineOwner(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 269
    iget-object v3, p0, mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v3

    .line 270
    :try_start_b
    invoke-virtual {p4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, getSdpPolicyLocked(Ljava/lang/String;)Lcom/android/server/sdp/engine/SdpPolicy;

    move-result-object v0

    .line 271
    .local v0, "policy":Lcom/android/server/sdp/engine/SdpPolicy;
    if-eqz v0, :cond_1c

    invoke-virtual {v0, p5}, Lcom/android/server/sdp/engine/SdpPolicy;->removePrivilegedApp(Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 273
    const/4 v1, 0x0

    .line 274
    :cond_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_24

    .line 275
    if-nez v1, :cond_23

    .line 276
    invoke-direct {p0, p4, v0}, updatePolicy(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/android/server/sdp/engine/SdpPolicy;)I

    move-result v1

    .line 281
    .end local v0    # "policy":Lcom/android/server/sdp/engine/SdpPolicy;
    :cond_23
    :goto_23
    return v1

    .line 274
    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2

    .line 279
    :cond_27
    const/4 v1, -0x8

    goto :goto_23
.end method
