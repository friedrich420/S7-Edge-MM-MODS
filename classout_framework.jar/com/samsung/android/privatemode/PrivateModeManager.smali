.class public Lcom/samsung/android/privatemode/PrivateModeManager;
.super Ljava/lang/Object;
.source "PrivateModeManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final ACTION_PRIVATE_MODE_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

.field public static final ACTION_PRIVATE_MODE_ON:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_ON"

.field public static final CANCELLED:I = 0x3

.field private static final DEBUG:Z

.field public static final ERROR_INTERNAL:I = 0x15

.field private static final ERROR_MSG_SERVICE_NOT_FOUND:Ljava/lang/String; = "PrivateMode Service is not running!"

.field public static final MOUNTED:I = 0x1

.field public static final PREPARED:I = 0x0

.field private static final PRIVATE_PATH:Ljava/lang/String; = "/storage/Private"

.field public static final PROPERTY_KEY_PRIVATE_MODE:Ljava/lang/String; = "sys.samsung.personalpage.mode"

.field private static final TAG:Ljava/lang/String; = "PPS_PrivateModeManager"

.field public static final UNMOUNTED:I = 0x2

.field private static levelPrivatemode:I

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static mIsServiceBind:Z

.field private static mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

.field private static mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

.field private static sInstance:Lcom/samsung/android/privatemode/PrivateModeManager;


# instance fields
.field private mServiceConn:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 48
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, DEBUG:Z

    .line 97
    sput-object v2, mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    .line 99
    sput-object v2, sInstance:Lcom/samsung/android/privatemode/PrivateModeManager;

    .line 101
    sput-object v2, mContext:Landroid/content/Context;

    .line 103
    sput-boolean v1, mIsServiceBind:Z

    .line 107
    sput-object v2, mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    .line 111
    const/4 v0, -0x1

    sput v0, levelPrivatemode:I

    return-void

    :cond_19
    move v0, v1

    .line 48
    goto :goto_9
.end method

.method private constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, mServiceConn:Landroid/content/ServiceConnection;

    .line 185
    sput-object p1, mHandler:Landroid/os/Handler;

    .line 186
    invoke-direct {p0}, bindPrivateModeManager()V

    .line 188
    return-void
.end method

.method static synthetic access$000()Lcom/samsung/android/privatemode/IPrivateModeClient;
    .registers 1

    .prologue
    .line 45
    sget-object v0, mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 45
    sput-boolean p0, mIsServiceBind:Z

    return p0
.end method

.method static synthetic access$202(Lcom/samsung/android/privatemode/IPrivateModeManager;)Lcom/samsung/android/privatemode/IPrivateModeManager;
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/privatemode/IPrivateModeManager;

    .prologue
    .line 45
    sput-object p0, mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    return-object p0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 45
    sget-object v0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/privatemode/PrivateModeManager;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/privatemode/PrivateModeManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Exception;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized bindPrivateModeManager()V
    .registers 5

    .prologue
    .line 191
    monitor-enter p0

    :try_start_1
    sget-object v1, mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    if-nez v1, :cond_38

    .line 192
    const-string v1, "PPS_PrivateModeManager"

    const-string v2, "bindPrivateModeManager called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v1, Lcom/samsung/android/privatemode/PrivateModeManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/privatemode/PrivateModeManager$2;-><init>(Lcom/samsung/android/privatemode/PrivateModeManager;)V

    iput-object v1, p0, mServiceConn:Landroid/content/ServiceConnection;

    .line 230
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.personalpage.service.PersonalPageService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.personalpage.service"

    const-string v3, "com.samsung.android.personalpage.service.PersonalPageService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 232
    sget-object v1, mContext:Landroid/content/Context;

    iget-object v2, p0, mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 233
    const-string v1, "PPS_PrivateModeManager"

    const-string v2, "bindService: OK"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    .line 236
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_38
    monitor-exit p0

    return-void

    .line 191
    :catchall_3a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/samsung/android/privatemode/IPrivateModeClient;)Lcom/samsung/android/privatemode/PrivateModeManager;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "client"    # Lcom/samsung/android/privatemode/IPrivateModeClient;

    .prologue
    const/4 v0, 0x0

    .line 138
    const-class v1, Lcom/samsung/android/privatemode/PrivateModeManager;

    monitor-enter v1

    if-eqz p0, :cond_8

    if-nez p1, :cond_11

    .line 139
    :cond_8
    :try_start_8
    const-string v2, "PPS_PrivateModeManager"

    const-string v3, "getInstance: context or client is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_25

    .line 177
    :goto_f
    monitor-exit v1

    return-object v0

    .line 142
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.secretmode_service"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 143
    const-string v2, "PPS_PrivateModeManager"

    const-string v3, "getInstance: Not support Private Mode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_25

    goto :goto_f

    .line 138
    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0

    .line 147
    :cond_28
    :try_start_28
    sput-object p0, mContext:Landroid/content/Context;

    .line 148
    sput-object p1, mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    .line 150
    sget-object v0, sInstance:Lcom/samsung/android/privatemode/PrivateModeManager;

    if-nez v0, :cond_5d

    .line 151
    new-instance v0, Lcom/samsung/android/privatemode/PrivateModeManager;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v2}, <init>(Landroid/os/Handler;)V

    sput-object v0, sInstance:Lcom/samsung/android/privatemode/PrivateModeManager;

    .line 176
    :cond_40
    :goto_40
    const-string v0, "PPS_PrivateModeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, sInstance:Lcom/samsung/android/privatemode/PrivateModeManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    sget-object v0, sInstance:Lcom/samsung/android/privatemode/PrivateModeManager;

    goto :goto_f

    .line 154
    :cond_5d
    sget-boolean v0, mIsServiceBind:Z

    if-eqz v0, :cond_74

    sget-object v0, mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    if-eqz v0, :cond_74

    .line 155
    sget-object v0, mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_40

    .line 156
    sget-object v0, mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/privatemode/PrivateModeManager$1;

    invoke-direct {v2}, Lcom/samsung/android/privatemode/PrivateModeManager$1;-><init>()V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_40

    .line 173
    :cond_74
    new-instance v0, Lcom/samsung/android/privatemode/PrivateModeManager;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v2}, <init>(Landroid/os/Handler;)V

    sput-object v0, sInstance:Lcom/samsung/android/privatemode/PrivateModeManager;
    :try_end_84
    .catchall {:try_start_28 .. :try_end_84} :catchall_25

    goto :goto_40
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/samsung/android/privatemode/PrivateModeListener;)Lcom/samsung/android/privatemode/PrivateModeManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/samsung/android/privatemode/PrivateModeListener;

    .prologue
    .line 128
    const-class v1, Lcom/samsung/android/privatemode/PrivateModeManager;

    monitor-enter v1

    if-eqz p0, :cond_7

    if-nez p1, :cond_11

    .line 129
    :cond_7
    :try_start_7
    const-string v0, "PPS_PrivateModeManager"

    const-string v2, "getInstance: context or listener is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_1a

    .line 130
    const/4 v0, 0x0

    .line 132
    :goto_f
    monitor-exit v1

    return-object v0

    :cond_11
    :try_start_11
    invoke-virtual {p1}, Lcom/samsung/android/privatemode/PrivateModeListener;->getClient()Lcom/samsung/android/privatemode/IPrivateModeClient;

    move-result-object v0

    invoke-static {p0, v0}, getInstance(Landroid/content/Context;Lcom/samsung/android/privatemode/IPrivateModeClient;)Lcom/samsung/android/privatemode/PrivateModeManager;
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1a

    move-result-object v0

    goto :goto_f

    .line 128
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 414
    const-string v0, "/storage/Private"

    return-object v0
.end method

.method private static isKnoxMode(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 496
    const/4 v2, -0x1

    .line 499
    .local v2, "knoxVersion":I
    :try_start_1
    const-string v3, "isKnoxMode"

    invoke-static {p0, v3}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 501
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "2.0"

    const-string/jumbo v4, "version"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const-string/jumbo v3, "true"

    const-string v4, "isKnoxMode"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_22} :catch_38
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_22} :catch_53

    move-result v3

    if-eqz v3, :cond_26

    .line 502
    const/4 v2, 0x2

    .line 510
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_26
    :goto_26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "sec_container_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 511
    const/4 v2, 0x1

    .line 514
    :cond_34
    if-lez v2, :cond_6e

    const/4 v3, 0x1

    :goto_37
    return v3

    .line 504
    :catch_38
    move-exception v1

    .line 505
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    const-string v3, "PPS_PrivateModeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not call android.os.PersonaManager."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 506
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_53
    move-exception v1

    .line 507
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    const-string v3, "PPS_PrivateModeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not call getKnoxInfoForApp."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 514
    .end local v1    # "e":Ljava/lang/NoSuchMethodError;
    :cond_6e
    const/4 v3, 0x0

    goto :goto_37
.end method

.method public static isM2PActivating()Z
    .registers 3

    .prologue
    .line 481
    const-string/jumbo v1, "sys.samsung.personalpage.mode"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "result":Ljava/lang/String;
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isPrivateMode()Z
    .registers 3

    .prologue
    .line 467
    const-string/jumbo v1, "sys.samsung.personalpage.mode"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "result":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isPrivateStorageMounted(Landroid/content/Context;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 423
    const/4 v1, 0x0

    .line 425
    .local v1, "isMouted":Z
    if-nez p0, :cond_c

    .line 426
    const-string v5, "PPS_PrivateModeManager"

    const-string v6, "isPrivateStorageMounted: context is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_b
    :goto_b
    return v4

    .line 430
    :cond_c
    const-string/jumbo v5, "storage"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 432
    .local v2, "mStorageMgr":Landroid/os/storage/StorageManager;
    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_35

    .line 433
    const-string v5, "PPS_PrivateModeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPrivateStorageMounted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_35
    invoke-static {p0}, isKnoxMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 440
    const-string v5, "0"

    const-string/jumbo v6, "sys.samsung.personalpage.mode"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 444
    if-eqz v2, :cond_5e

    .line 446
    :try_start_4e
    const-string v4, "/storage/Private"

    invoke-virtual {v2, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 447
    .local v3, "status":Ljava/lang/String;
    const-string/jumbo v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5a} :catch_60

    move-result v4

    if-eqz v4, :cond_5e

    .line 448
    const/4 v1, 0x1

    .end local v3    # "status":Ljava/lang/String;
    :cond_5e
    :goto_5e
    move v4, v1

    .line 454
    goto :goto_b

    .line 450
    :catch_60
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_5e
.end method

.method public static isReady(Landroid/content/Context;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 363
    sget v4, levelPrivatemode:I

    if-gez v4, :cond_2c

    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.feature.secretmode_service"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v4

    sput v4, levelPrivatemode:I

    .line 365
    const-string v4, "PPS_PrivateModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isReady: getSystemFeatureLevel : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, levelPrivatemode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_2c
    const-string v4, "PPS_PrivateModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isReady: levelPrivatemode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, levelPrivatemode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v4, "device_policy"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 372
    .local v1, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5c

    .line 373
    const-string v3, "PPS_PrivateModeManager"

    const-string v4, "isReady: AFW_CL"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_5b
    :goto_5b
    return v2

    .line 376
    :cond_5c
    sget v4, levelPrivatemode:I

    if-le v4, v3, :cond_5b

    .line 377
    invoke-static {p0}, isKnoxMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 378
    const-string v3, "PPS_PrivateModeManager"

    const-string v4, "isReady: private mode does not support in KNOX mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 381
    :cond_6e
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 382
    const-string v3, "PPS_PrivateModeManager"

    const-string v4, "isReady: private mode does not support in Emergency(UltraPowerSaving, Emergency) mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 386
    :cond_7c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "personal_mode_lock_type"

    invoke-static {v4, v5, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 387
    .local v0, "lockType":I
    if-eqz v0, :cond_5b

    .line 390
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-eqz v4, :cond_97

    .line 392
    const-string v3, "PPS_PrivateModeManager"

    const-string v4, "Current User is not Owner User(guest mode)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 395
    :cond_97
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 396
    const-string v3, "PPS_PrivateModeManager"

    const-string v4, "isReady: AFW_BYOD"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    :cond_a9
    move v2, v3

    .line 399
    goto :goto_5b
.end method

.method private logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 8
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "extraInfo"    # Ljava/lang/String;

    .prologue
    .line 260
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_39

    .line 261
    const-string v1, "PPS_PrivateModeManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_25

    const-string v0, ""

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    :goto_24
    return-void

    .line 261
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 263
    :cond_39
    const-string v1, "PPS_PrivateModeManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_5a

    const-string v0, ""

    :goto_4e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :cond_5a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4e
.end method

.method private unBindPrivateModeManager()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 239
    const-string v1, "PPS_PrivateModeManager"

    const-string/jumbo v2, "unBindPrivateModeManager called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :try_start_9
    sget-object v1, mContext:Landroid/content/Context;

    if-eqz v1, :cond_2a

    sget-object v1, mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    if-eqz v1, :cond_2a

    iget-object v1, p0, mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_2a

    .line 242
    const-string v1, "PPS_PrivateModeManager"

    const-string/jumbo v2, "unbindService called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sget-object v1, mContext:Landroid/content/Context;

    iget-object v2, p0, mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 244
    const/4 v1, 0x0

    sput-boolean v1, mIsServiceBind:Z

    .line 245
    const/4 v1, 0x0

    sput-object v1, mService:Lcom/samsung/android/privatemode/IPrivateModeManager;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2a} :catch_2b

    .line 250
    :cond_2a
    :goto_2a
    return-void

    .line 247
    :catch_2b
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "unBindPrivateModeManager"

    invoke-direct {p0, v1, v0, v3}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_2a
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 116
    const-string v1, "PPS_PrivateModeManager"

    const-string v2, "====== binderDied ====="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object v1, mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    if-eqz v1, :cond_1a

    .line 119
    :try_start_b
    const-string v1, "PPS_PrivateModeManager"

    const-string v2, "binderDied, onStateChange : ERROR_INTERNAL "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-object v1, mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/privatemode/IPrivateModeClient;->onStateChange(II)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1a} :catch_1b

    .line 125
    :cond_1a
    :goto_1a
    return-void

    .line 121
    :catch_1b
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method public registerClient(Lcom/samsung/android/privatemode/IPrivateModeClient;)Landroid/os/IBinder;
    .registers 7
    .param p1, "client"    # Lcom/samsung/android/privatemode/IPrivateModeClient;

    .prologue
    const/4 v2, 0x0

    .line 277
    sget-object v3, mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    if-nez v3, :cond_e

    .line 278
    const-string/jumbo v3, "registerClient"

    const-string v4, "PrivateMode Service is not running!"

    invoke-direct {p0, v3, v2, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 293
    :goto_d
    return-object v2

    .line 282
    :cond_e
    invoke-static {}, isPrivateMode()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 283
    const-string/jumbo v3, "registerClient"

    const-string v4, "Private Mode ON!!"

    invoke-direct {p0, v3, v2, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_d

    .line 287
    :cond_1d
    :try_start_1d
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 288
    .local v1, "info":Landroid/os/Bundle;
    const-string/jumbo v3, "package_name"

    sget-object v4, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    sget-object v3, mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    invoke-interface {v3, p1, v1}, Lcom/samsung/android/privatemode/IPrivateModeManager;->registerClient(Lcom/samsung/android/privatemode/IPrivateModeClient;Landroid/os/Bundle;)Landroid/os/IBinder;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_33} :catch_35

    move-result-object v2

    goto :goto_d

    .line 290
    .end local v1    # "info":Landroid/os/Bundle;
    :catch_35
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "registerClient"

    invoke-direct {p0, v3, v0, v2}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public registerClient(Lcom/samsung/android/privatemode/PrivateModeListener;)Landroid/os/IBinder;
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/privatemode/PrivateModeListener;

    .prologue
    const/4 v0, 0x0

    .line 268
    if-nez p1, :cond_c

    .line 269
    const-string/jumbo v1, "registerClient"

    const-string v2, "listener is null"

    invoke-direct {p0, v1, v0, v2}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 272
    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p1}, Lcom/samsung/android/privatemode/PrivateModeListener;->getClient()Lcom/samsung/android/privatemode/IPrivateModeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, registerClient(Lcom/samsung/android/privatemode/IPrivateModeClient;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_b
.end method

.method public unregisterClient(Landroid/os/IBinder;)Z
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 330
    sget-object v3, mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    if-nez v3, :cond_10

    .line 331
    const-string/jumbo v3, "unregisterClient"

    const-string v4, "PrivateMode Service is not running!"

    invoke-direct {p0, v3, v5, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move v1, v2

    .line 351
    :goto_f
    return v1

    .line 335
    :cond_10
    const/4 v1, 0x0

    .line 336
    .local v1, "retVal":Z
    :try_start_11
    sget-object v3, mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    invoke-interface {v3, p1}, Lcom/samsung/android/privatemode/IPrivateModeManager;->unregisterClient(Landroid/os/IBinder;)Z

    move-result v1

    .line 337
    sget-object v3, mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    invoke-interface {v3}, Lcom/samsung/android/privatemode/IPrivateModeManager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-eqz v3, :cond_35

    if-eqz v1, :cond_35

    .line 338
    const/4 v3, 0x0

    sput-boolean v3, mIsServiceBind:Z

    .line 339
    invoke-direct {p0}, unBindPrivateModeManager()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2b} :catch_2c

    goto :goto_f

    .line 348
    :catch_2c
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "unregisterClient"

    invoke-direct {p0, v3, v0, v5}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move v1, v2

    .line 351
    goto :goto_f

    .line 343
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_35
    const/4 v3, 0x0

    :try_start_36
    sput-boolean v3, mIsServiceBind:Z

    .line 344
    const/4 v3, 0x0

    sput-object v3, mService:Lcom/samsung/android/privatemode/IPrivateModeManager;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3b} :catch_2c

    goto :goto_f
.end method

.method public unregisterClient(Landroid/os/IBinder;Z)Z
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isSuccess"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 301
    sget-object v3, mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    if-nez v3, :cond_10

    .line 302
    const-string/jumbo v3, "unregisterClient"

    const-string v4, "PrivateMode Service is not running!"

    invoke-direct {p0, v3, v5, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move v1, v2

    .line 322
    :goto_f
    return v1

    .line 306
    :cond_10
    const/4 v1, 0x0

    .line 307
    .local v1, "retVal":Z
    :try_start_11
    sget-object v3, mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/privatemode/IPrivateModeManager;->unRegisterClient(Landroid/os/IBinder;Z)Z

    move-result v1

    .line 308
    sget-object v3, mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    invoke-interface {v3}, Lcom/samsung/android/privatemode/IPrivateModeManager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-eqz v3, :cond_35

    if-eqz v1, :cond_35

    .line 309
    const/4 v3, 0x0

    sput-boolean v3, mIsServiceBind:Z

    .line 310
    invoke-direct {p0}, unBindPrivateModeManager()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2b} :catch_2c

    goto :goto_f

    .line 319
    :catch_2c
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "unregisterClient"

    invoke-direct {p0, v3, v0, v5}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move v1, v2

    .line 322
    goto :goto_f

    .line 314
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_35
    const/4 v3, 0x0

    :try_start_36
    sput-boolean v3, mIsServiceBind:Z

    .line 315
    const/4 v3, 0x0

    sput-object v3, mService:Lcom/samsung/android/privatemode/IPrivateModeManager;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3b} :catch_2c

    goto :goto_f
.end method
