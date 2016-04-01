.class public Lcom/android/server/media/MediaSessionService;
.super Lcom/android/server/SystemService;
.source "MediaSessionService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionService$1;,
        Lcom/android/server/media/MediaSessionService$MessageHandler;,
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl;,
        Lcom/android/server/media/MediaSessionService$SettingsObserver;,
        Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;,
        Lcom/android/server/media/MediaSessionService$UserRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MediaSessionService"

.field private static final WAKELOCK_TIMEOUT:I = 0x1388


# instance fields
.field private final mAllSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field private mAudioService:Landroid/media/IAudioService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentUserId:I

.field private final mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

.field final mICallback:Landroid/os/IBinder;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mLock:Ljava/lang/Object;

.field private final mLongPressLock:Ljava/lang/Object;

.field private final mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mPriorityStack:Lcom/android/server/media/MediaSessionStack;

.field private mRvc:Landroid/media/IRemoteVolumeController;

.field private final mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

.field private final mSessionsListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Lcom/android/server/media/MediaSessionService$SettingsObserver;

.field private final mUserRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/media/MediaSessionService$UserRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 84
    const-string v0, "MediaSessionService"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/SamsungAudioManager$AudioLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, mICallback:Landroid/os/IBinder;

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mAllSessions:Ljava/util/ArrayList;

    .line 94
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, mUserRecords:Landroid/util/SparseArray;

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mSessionsListeners:Ljava/util/ArrayList;

    .line 97
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, mLock:Ljava/lang/Object;

    .line 98
    new-instance v1, Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionService$MessageHandler;-><init>(Lcom/android/server/media/MediaSessionService;)V

    iput-object v1, p0, mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 107
    const/4 v1, -0x1

    iput v1, p0, mCurrentUserId:I

    .line 110
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, mLongPressLock:Ljava/lang/Object;

    .line 119
    new-instance v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;-><init>(Lcom/android/server/media/MediaSessionService;)V

    iput-object v1, p0, mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 120
    new-instance v1, Lcom/android/server/media/MediaSessionStack;

    invoke-direct {v1}, Lcom/android/server/media/MediaSessionStack;-><init>()V

    iput-object v1, p0, mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 121
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 122
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string/jumbo v2, "handleMediaEvent"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 123
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/media/MediaSessionService;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 82
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 82
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 82
    iget-object v0, p0, mSessionsListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/media/MediaSessionService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 82
    invoke-direct {p0}, updateActiveSessionListeners()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, enforcePackageName(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/media/MediaSessionService;IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;
    .registers 8
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Landroid/media/session/ISessionCallback;
    .param p6, "x6"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct/range {p0 .. p6}, createSessionInternal(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 82
    iget-object v0, p0, mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # Landroid/media/session/IActiveSessionsListener;

    .prologue
    .line 82
    invoke-direct {p0, p1}, findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800()Z
    .registers 1

    .prologue
    .line 82
    sget-boolean v0, DEBUG:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 82
    iget-object v0, p0, mUserRecords:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/media/MediaSessionService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 82
    iget v0, p0, mCurrentUserId:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 82
    iget-object v0, p0, mLongPressLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, enforceSystemUiPermission(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/server/media/MediaSessionService;Landroid/media/IRemoteVolumeController;)Landroid/media/IRemoteVolumeController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # Landroid/media/IRemoteVolumeController;

    .prologue
    .line 82
    iput-object p1, p0, mRvc:Landroid/media/IRemoteVolumeController;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 82
    iget-object v0, p0, mAllSessions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/media/MediaSessionService;Landroid/content/ComponentName;III)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, enforceMediaPermissions(Landroid/content/ComponentName;III)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/media/MediaSessionService;)Landroid/media/IAudioService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 82
    iget-object v0, p0, mAudioService:Landroid/media/IAudioService;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 82
    iget-object v0, p0, mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 82
    iget-object v0, p0, mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 82
    iget-object v0, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/media/MediaSessionService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1}, pushSessionsChanged(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 82
    invoke-direct {p0, p1}, destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    return-void
.end method

.method private createSessionInternal(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;
    .registers 9
    .param p1, "callerPid"    # I
    .param p2, "callerUid"    # I
    .param p3, "userId"    # I
    .param p4, "callerPackageName"    # Ljava/lang/String;
    .param p5, "cb"    # Landroid/media/session/ISessionCallback;
    .param p6, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 447
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 448
    :try_start_3
    invoke-direct/range {p0 .. p6}, createSessionLocked(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 449
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method private createSessionLocked(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;
    .registers 19
    .param p1, "callerPid"    # I
    .param p2, "callerUid"    # I
    .param p3, "userId"    # I
    .param p4, "callerPackageName"    # Ljava/lang/String;
    .param p5, "cb"    # Landroid/media/session/ISessionCallback;
    .param p6, "tag"    # Ljava/lang/String;

    .prologue
    .line 462
    new-instance v1, Lcom/android/server/media/MediaSessionRecord;

    iget-object v9, p0, mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionRecord;-><init>(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Lcom/android/server/media/MediaSessionService;Landroid/os/Handler;)V

    .line 465
    .local v1, "session":Lcom/android/server/media/MediaSessionRecord;
    :try_start_11
    invoke-interface/range {p5 .. p5}, Landroid/media/session/ISessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_19} :catch_5c

    .line 470
    iget-object v2, p0, mAllSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v2, p0, mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v2, v1}, Lcom/android/server/media/MediaSessionStack;->addSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 473
    invoke-direct {p0, p3}, getOrCreateUser(I)Lcom/android/server/media/MediaSessionService$UserRecord;

    move-result-object v11

    .line 474
    .local v11, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    invoke-virtual {v11, v1}, Lcom/android/server/media/MediaSessionService$UserRecord;->addSessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 476
    iget-object v2, p0, mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Lcom/android/server/media/MediaSessionService$MessageHandler;->post(III)V

    .line 478
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_5b

    .line 479
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created session for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_5b
    return-object v1

    .line 466
    .end local v11    # "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    :catch_5c
    move-exception v10

    .line 467
    .local v10, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Media Session owner died prematurely."

    invoke-direct {v2, v3, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 8
    .param p1, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    const/4 v5, 0x0

    .line 325
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    .line 326
    .local v1, "userId":I
    iget-object v2, p0, mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 327
    .local v0, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-eqz v0, :cond_12

    .line 328
    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionService$UserRecord;->removeSessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 331
    :cond_12
    iget-object v2, p0, mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->removeSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 332
    iget-object v2, p0, mAllSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 335
    :try_start_1c
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getCallback()Landroid/media/session/ISessionCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/session/ISessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_28} :catch_36

    .line 339
    :goto_28
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->onDestroy()V

    .line 341
    iget-object v2, p0, mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/media/MediaSessionService$MessageHandler;->post(III)V

    .line 342
    return-void

    .line 336
    :catch_36
    move-exception v2

    goto :goto_28
.end method

.method private destroyUserLocked(Lcom/android/server/media/MediaSessionService$UserRecord;)V
    .registers 4
    .param p1, "user"    # Lcom/android/server/media/MediaSessionService$UserRecord;

    .prologue
    .line 310
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionService$UserRecord;->stopLocked()V

    .line 311
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionService$UserRecord;->destroyLocked()V

    .line 312
    iget-object v0, p0, mUserRecords:Landroid/util/SparseArray;

    # getter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mUserId:I
    invoke-static {p1}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$700(Lcom/android/server/media/MediaSessionService$UserRecord;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 313
    return-void
.end method

.method private enforceMediaPermissions(Landroid/content/ComponentName;III)V
    .registers 7
    .param p1, "compName"    # Landroid/content/ComponentName;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "resolvedUserId"    # I

    .prologue
    .line 370
    invoke-direct {p0, p3}, isCurrentVolumeController(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 378
    :cond_6
    return-void

    .line 371
    :cond_7
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p4}, isEnabledNotificationListener(Landroid/content/ComponentName;II)Z

    move-result v0

    if-nez v0, :cond_6

    .line 376
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Missing permission to control media."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforcePackageName(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 345
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 346
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "packageName may not be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 348
    :cond_f
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "packages":[Ljava/lang/String;
    array-length v1, v2

    .line 350
    .local v1, "packageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    if-ge v0, v1, :cond_2b

    .line 351
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 352
    return-void

    .line 350
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 355
    :cond_2b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "packageName is not owned by the calling process"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private enforceSystemUiPermission(Ljava/lang/String;II)V
    .registers 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    .line 391
    invoke-direct {p0, p3}, isCurrentVolumeController(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 396
    :cond_6
    return-void

    .line 392
    :cond_7
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_6

    .line 394
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only system ui may "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I
    .registers 5
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;

    .prologue
    .line 494
    iget-object v1, p0, mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_24

    .line 495
    iget-object v1, p0, mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    # getter for: Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mListener:Landroid/media/session/IActiveSessionsListener;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$600(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_21

    .line 499
    .end local v0    # "i":I
    :goto_20
    return v0

    .line 494
    .restart local v0    # "i":I
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 499
    :cond_24
    const/4 v0, -0x1

    goto :goto_20
.end method

.method private getAudioService()Landroid/media/IAudioService;
    .registers 3

    .prologue
    .line 141
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 142
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    return-object v1
.end method

.method private getOrCreateUser(I)Lcom/android/server/media/MediaSessionService$UserRecord;
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 485
    iget-object v1, p0, mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 486
    .local v0, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-nez v0, :cond_18

    .line 487
    new-instance v0, Lcom/android/server/media/MediaSessionService$UserRecord;

    .end local v0    # "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/media/MediaSessionService$UserRecord;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/content/Context;I)V

    .line 488
    .restart local v0    # "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    iget-object v1, p0, mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 490
    :cond_18
    return-object v0
.end method

.method private isCurrentVolumeController(I)Z
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 381
    iget-object v1, p0, mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-eqz v1, :cond_10

    .line 382
    iget-object v1, p0, mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    invoke-virtual {v1}, Landroid/media/AudioManagerInternal;->getVolumeControllerUid()I

    move-result v0

    .line 383
    .local v0, "vcuid":I
    if-lez v0, :cond_10

    if-ne p1, v0, :cond_10

    .line 384
    const/4 v1, 0x1

    .line 387
    .end local v0    # "vcuid":I
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private isEnabledNotificationListener(Landroid/content/ComponentName;II)Z
    .registers 12
    .param p1, "compName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "forUserId"    # I

    .prologue
    const/4 v4, 0x0

    .line 410
    if-eq p2, p3, :cond_4

    .line 442
    :cond_3
    :goto_3
    return v4

    .line 414
    :cond_4
    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_20

    .line 415
    const-string v5, "MediaSessionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking if enabled notification listener "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_20
    if-eqz p1, :cond_3

    .line 418
    iget-object v5, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "enabled_notification_listeners"

    invoke-static {v5, v6, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "enabledNotifListeners":Ljava/lang/String;
    if-eqz v2, :cond_6d

    .line 422
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, "components":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_34
    array-length v5, v1

    if-ge v3, v5, :cond_6d

    .line 424
    aget-object v5, v1, v3

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 426
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_6a

    .line 427
    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 428
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_68

    .line 429
    const-string v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ok to get sessions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is authorized notification listener"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_68
    const/4 v4, 0x1

    goto :goto_3

    .line 423
    :cond_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 437
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "components":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_6d
    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_3

    .line 438
    const-string v5, "MediaSessionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not ok to get sessions, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not in list of ENABLED_NOTIFICATION_LISTENERS for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private pushRemoteVolumeUpdateLocked(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 530
    iget-object v2, p0, mRvc:Landroid/media/IRemoteVolumeController;

    if-eqz v2, :cond_12

    .line 532
    :try_start_4
    iget-object v2, p0, mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->getDefaultRemoteSession(I)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    .line 533
    .local v1, "record":Lcom/android/server/media/MediaSessionRecord;
    iget-object v3, p0, mRvc:Landroid/media/IRemoteVolumeController;

    if-nez v1, :cond_13

    const/4 v2, 0x0

    :goto_f
    invoke-interface {v3, v2}, Landroid/media/IRemoteVolumeController;->updateRemoteController(Landroid/media/session/ISessionController;)V

    .line 538
    .end local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_12
    :goto_12
    return-void

    .line 533
    .restart local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_13
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_18

    move-result-object v2

    goto :goto_f

    .line 534
    .end local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :catch_18
    move-exception v0

    .line 535
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaSessionService"

    const-string v3, "Error sending default remote volume to sys ui."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method private pushSessionsChanged(I)V
    .registers 11
    .param p1, "userId"    # I

    .prologue
    .line 503
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 504
    :try_start_3
    iget-object v6, p0, mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v6, p1}, Lcom/android/server/media/MediaSessionStack;->getActiveSessions(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 505
    .local v3, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 506
    .local v4, "size":I
    if-lez v4, :cond_27

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaSessionRecord;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive(Z)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 507
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0, v6}, rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 509
    :cond_27
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .local v5, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$Token;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2d
    if-ge v1, v4, :cond_44

    .line 511
    new-instance v8, Landroid/media/session/MediaSession$Token;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object v6

    invoke-direct {v8, v6}, Landroid/media/session/MediaSession$Token;-><init>(Landroid/media/session/ISessionController;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 513
    :cond_44
    invoke-direct {p0, p1}, pushRemoteVolumeUpdateLocked(I)V

    .line 514
    iget-object v6, p0, mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_4f
    if-ltz v1, :cond_81

    .line 515
    iget-object v6, p0, mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    .line 516
    .local v2, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    # getter for: Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mUserId:I
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$500(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_66

    # getter for: Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mUserId:I
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$500(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_7e

    move-result v6

    if-ne v6, p1, :cond_6d

    .line 518
    :cond_66
    :try_start_66
    # getter for: Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mListener:Landroid/media/session/IActiveSessionsListener;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$600(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/media/session/IActiveSessionsListener;->onActiveSessionsChanged(Ljava/util/List;)V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_6d} :catch_70
    .catchall {:try_start_66 .. :try_end_6d} :catchall_7e

    .line 514
    :cond_6d
    :goto_6d
    add-int/lit8 v1, v1, -0x1

    goto :goto_4f

    .line 519
    :catch_70
    move-exception v0

    .line 520
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_71
    const-string v6, "MediaSessionService"

    const-string v8, "Dead ActiveSessionsListener in pushSessionsChanged, removing"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 522
    iget-object v6, p0, mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6d

    .line 526
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .end local v3    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    .end local v4    # "size":I
    .end local v5    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$Token;>;"
    :catchall_7e
    move-exception v6

    monitor-exit v7
    :try_end_80
    .catchall {:try_start_71 .. :try_end_80} :catchall_7e

    throw v6

    .restart local v1    # "i":I
    .restart local v3    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    .restart local v4    # "size":I
    .restart local v5    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$Token;>;"
    :cond_81
    :try_start_81
    monitor-exit v7
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_7e

    .line 527
    return-void
.end method

.method private rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 9
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 541
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getMediaButtonReceiver()Landroid/app/PendingIntent;

    move-result-object v1

    .line 542
    .local v1, "receiver":Landroid/app/PendingIntent;
    iget-object v3, p0, mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 543
    .local v2, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-eqz v1, :cond_3f

    if-eqz v2, :cond_3f

    .line 544
    # setter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;
    invoke-static {v2, v1}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$802(Lcom/android/server/media/MediaSessionService$UserRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 545
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 546
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_3f

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 547
    iget-object v3, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "media_button_receiver"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 552
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_3f
    return-void
.end method

.method private sendRccChangedIntent(Ljava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 172
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "org.codeaurora.bluetooth.RCC_CHANGED_ACTION"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "org.codeaurora.bluetooth.EXTRA_CALLING_PACKAGE_NAME"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string/jumbo v4, "org.codeaurora.bluetooth.EXTRA_FOCUS_CHANGED_VALUE"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    const-string/jumbo v4, "org.codeaurora.bluetooth.EXTRA_AVAILABLITY_CHANGED_VALUE"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 178
    .local v2, "identity":J
    :try_start_1f
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_47
    .catchall {:try_start_1f .. :try_end_26} :catchall_53

    .line 182
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    :goto_29
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_46

    .line 185
    const-string v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updating focussed RCC change to RCD: CallingPackageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_46
    return-void

    .line 179
    :catch_47
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    :try_start_48
    const-string v4, "MediaSessionService"

    const-string v5, "Error while updating focussed RCC change"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_53

    .line 182
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_29

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_53
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private updateActiveSessionListeners()V
    .registers 9

    .prologue
    .line 283
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 284
    :try_start_3
    iget-object v3, p0, mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_62

    .line 285
    iget-object v3, p0, mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_64

    .line 287
    .local v2, "listener":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_15
    # getter for: Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$200(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/content/ComponentName;

    move-result-object v3

    # getter for: Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mPid:I
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$300(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I

    move-result v5

    # getter for: Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mUid:I
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$400(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I

    move-result v6

    # getter for: Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mUserId:I
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$500(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I

    move-result v7

    invoke-direct {p0, v3, v5, v6, v7}, enforceMediaPermissions(Landroid/content/ComponentName;III)V
    :try_end_28
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_28} :catch_2b
    .catchall {:try_start_15 .. :try_end_28} :catchall_64

    .line 284
    :goto_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 289
    :catch_2b
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_2c
    const-string v3, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActiveSessionsListener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$200(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is no longer authorized. Disconnecting."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v3, p0, mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_2c .. :try_end_53} :catchall_64

    .line 294
    :try_start_53
    # getter for: Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mListener:Landroid/media/session/IActiveSessionsListener;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$600(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v5}, Landroid/media/session/IActiveSessionsListener;->onActiveSessionsChanged(Ljava/util/List;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5f} :catch_60
    .catchall {:try_start_53 .. :try_end_5f} :catchall_64

    goto :goto_28

    .line 296
    :catch_60
    move-exception v3

    goto :goto_28

    .line 301
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v2    # "listener":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :cond_62
    :try_start_62
    monitor-exit v4

    .line 302
    return-void

    .line 301
    .end local v1    # "i":I
    :catchall_64
    move-exception v3

    monitor-exit v4
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_64

    throw v3
.end method

.method private updateUser()V
    .registers 7

    .prologue
    .line 264
    iget-object v5, p0, mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 265
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 266
    .local v3, "userId":I
    iget v4, p0, mCurrentUserId:I

    if-eq v4, v3, :cond_28

    .line 267
    iget v2, p0, mCurrentUserId:I

    .line 268
    .local v2, "oldUserId":I
    iput v3, p0, mCurrentUserId:I

    .line 270
    iget-object v4, p0, mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 271
    .local v1, "oldUser":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-eqz v1, :cond_21

    .line 272
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService$UserRecord;->stopLocked()V

    .line 273
    iget-object v4, p0, mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionStack;->clearPreviousUserCache()V

    .line 276
    :cond_21
    invoke-direct {p0, v3}, getOrCreateUser(I)Lcom/android/server/media/MediaSessionService$UserRecord;

    move-result-object v0

    .line 277
    .local v0, "newUser":Lcom/android/server/media/MediaSessionService$UserRecord;
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionService$UserRecord;->startLocked()V

    .line 279
    .end local v0    # "newUser":Lcom/android/server/media/MediaSessionService$UserRecord;
    .end local v1    # "oldUser":Lcom/android/server/media/MediaSessionService$UserRecord;
    .end local v2    # "oldUserId":I
    :cond_28
    monitor-exit v5

    .line 280
    return-void

    .line 279
    .end local v3    # "userId":I
    :catchall_2a
    move-exception v4

    monitor-exit v5
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v4
.end method


# virtual methods
.method destroySession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 4
    .param p1, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 258
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_3
    invoke-direct {p0, p1}, destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 260
    monitor-exit v1

    .line 261
    return-void

    .line 260
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method protected enforcePhoneStatePermission(II)V
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 245
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_14

    .line 247
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold the MODIFY_PHONE_STATE permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_14
    return-void
.end method

.method public monitor()V
    .registers 3

    .prologue
    .line 239
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_3
    monitor-exit v1

    .line 242
    return-void

    .line 241
    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V
    .registers 6
    .param p1, "flags"    # I
    .param p2, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 160
    iget-object v1, p0, mRvc:Landroid/media/IRemoteVolumeController;

    if-nez v1, :cond_5

    .line 168
    :goto_4
    return-void

    .line 164
    :cond_5
    :try_start_5
    iget-object v1, p0, mRvc:Landroid/media/IRemoteVolumeController;

    invoke-virtual {p2}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/media/IRemoteVolumeController;->remoteVolumeChanged(Landroid/media/session/ISessionController;I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_4

    .line 165
    :catch_f
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MediaSessionService"

    const-string v2, "Error sending volume change to system UI."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 5
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 208
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_3
    iget-object v0, p0, mAllSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 210
    const-string v0, "MediaSessionService"

    const-string v2, "Unknown session changed playback type. Ignoring."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    monitor-exit v1

    .line 215
    :goto_13
    return-void

    .line 213
    :cond_14
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, pushRemoteVolumeUpdateLocked(I)V

    .line 214
    monitor-exit v1

    goto :goto_13

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public onSessionPlaystateChange(Lcom/android/server/media/MediaSessionRecord;II)V
    .registers 9
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "updateSessions":Z
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 192
    :try_start_4
    iget-object v1, p0, mAllSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 193
    const-string v1, "MediaSessionService"

    const-string v3, "Unknown session changed playback state. Ignoring."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    monitor-exit v2

    .line 205
    :cond_14
    :goto_14
    return-void

    .line 197
    :cond_15
    invoke-static {p3}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    move-result v1

    if-eqz v1, :cond_24

    if-eq p2, p3, :cond_24

    .line 198
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, sendRccChangedIntent(Ljava/lang/String;)V

    .line 200
    :cond_24
    iget-object v1, p0, mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/media/MediaSessionStack;->onPlaystateChange(Lcom/android/server/media/MediaSessionRecord;II)Z

    move-result v0

    .line 201
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_39

    .line 202
    if-eqz v0, :cond_14

    .line 203
    iget-object v1, p0, mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/media/MediaSessionService$MessageHandler;->post(III)V

    goto :goto_14

    .line 201
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 127
    const-string/jumbo v0, "media_session"

    iget-object v1, p0, mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-virtual {p0, v0, v1}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 128
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 129
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    .line 131
    invoke-direct {p0}, getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, mAudioService:Landroid/media/IAudioService;

    .line 132
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 133
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    .line 134
    new-instance v0, Lcom/android/server/media/MediaSessionService$SettingsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionService$SettingsObserver;-><init>(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionService$1;)V

    iput-object v0, p0, mSettingsObserver:Lcom/android/server/media/MediaSessionService$SettingsObserver;

    .line 135
    iget-object v0, p0, mSettingsObserver:Lcom/android/server/media/MediaSessionService$SettingsObserver;

    # invokes: Lcom/android/server/media/MediaSessionService$SettingsObserver;->observe()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$SettingsObserver;->access$100(Lcom/android/server/media/MediaSessionService$SettingsObserver;)V

    .line 137
    invoke-direct {p0}, updateUser()V

    .line 138
    return-void
.end method

.method public onStartUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .prologue
    .line 219
    invoke-direct {p0}, updateUser()V

    .line 220
    return-void
.end method

.method public onStopUser(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 229
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 230
    :try_start_3
    iget-object v1, p0, mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 231
    .local v0, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-eqz v0, :cond_10

    .line 232
    invoke-direct {p0, v0}, destroyUserLocked(Lcom/android/server/media/MediaSessionService$UserRecord;)V

    .line 234
    :cond_10
    monitor-exit v2

    .line 235
    return-void

    .line 234
    .end local v0    # "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public onSwitchUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .prologue
    .line 224
    invoke-direct {p0}, updateUser()V

    .line 225
    return-void
.end method

.method sessionDied(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 4
    .param p1, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 252
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 253
    :try_start_3
    invoke-direct {p0, p1}, destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 254
    monitor-exit v1

    .line 255
    return-void

    .line 254
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public updateSession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 6
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 146
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :try_start_3
    iget-object v0, p0, mAllSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 148
    const-string v0, "MediaSessionService"

    const-string v2, "Unknown session updated. Ignoring."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    monitor-exit v1

    .line 154
    :goto_13
    return-void

    .line 151
    :cond_14
    iget-object v0, p0, mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionStack;->onSessionStateChange(Lcom/android/server/media/MediaSessionRecord;)V

    .line 152
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_26

    .line 153
    iget-object v0, p0, mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/media/MediaSessionService$MessageHandler;->post(III)V

    goto :goto_13

    .line 152
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method
