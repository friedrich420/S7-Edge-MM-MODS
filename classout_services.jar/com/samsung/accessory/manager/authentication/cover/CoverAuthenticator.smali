.class public final Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
.super Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
.source "CoverAuthenticator.java"

# interfaces
.implements Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;
.implements Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;
.implements Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;,
        Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;
    }
.end annotation


# static fields
.field private static final ACCESSORY_MANAGER_PERMISSION:Ljava/lang/String; = "com.samsung.accessory.manager.permission.AUTHENTICATION_CONTROL"

.field private static final ACTION_AUTHENTICATION_RESULT:Ljava/lang/String; = "com.samsung.accessory.manager.action.AUTHENTICATION_RESULT"

.field private static final ACTION_AUTHENTICATION_START:Ljava/lang/String; = "com.samsung.accessory.manager.action.START_AUTHENTICATION"

.field private static final ACTION_AUTHENTICATION_STATE_REPLY:Ljava/lang/String; = "com.samsung.accessory.manager.action.AUTHENTICATION_STATE_REPLY"

.field private static final ACTION_AUTHENTICATION_STATE_REQUEST:Ljava/lang/String; = "com.samsung.accessory.manager.action.AUTHENTICATION_STATE_REQUEST"

.field private static final ACTION_NFC_SERVICE_STARTED:Ljava/lang/String; = "com.sec.android.nfc.AUTH_READY"

.field private static final AUTH_PREPARE_TIMEOUT:J = 0x6978L

.field private static final AUTH_SCHEDULE_INTERVAL:J = 0x44aa200L

.field private static final AUTH_TIMEOUT:J = 0x2710L

.field private static final CHARGING_AUTH_INTERVAL:J = 0x5265c00L

.field static final COVER_ATTACH:I = 0x1

.field static final COVER_DETACH:I = 0x0

.field static final COVER_NOT_SUPPORT:I = -0x1

.field private static final DBG:Z

.field private static final ERROR_RESTART_TIME_MS:I = 0xc8

.field private static final ERROR_RESTART_TIME_MS_TIMEOUT:I = 0x12c

.field private static final FUZZ_TIMES:I = 0xdbba00

.field private static final MAX_RETRIES_ON_AUTHENTICATION_FAILURE:I = 0x1

.field private static final MAX_RETRIES_WHEN_CONNECTIVITY_BUSY:I = 0x2

.field private static final MSG_AUTH_FORCE_UNVERIFY:I = 0x6

.field private static final MSG_AUTH_RESPONSE:I = 0x3

.field private static final MSG_AUTH_START:I = 0x2

.field private static final MSG_AUTH_STOP:I = 0x4

.field private static final MSG_AUTH_TIMEOUT:I = 0x5

.field private static final MSG_INITIALIZE:I = 0x1

.field private static final PowerConnected:I = 0x1

.field private static final PowerDisconnected:I = 0x0

.field private static final RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_COVER_ATTACHED:I = 0x1

.field private static final TYPE_ON_FIRST_BOOT:I = 0x2

.field private static final TYPE_RESTRICTION_CHANGED:I = 0x4

.field private static final TYPE_SCHEDULED_WHEN_CHARGING:I = 0x3

.field private static USE_SCHEDULED_AUTHENTICATION:Z = false

.field private static USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z = false

.field private static final VDBG:Z = true


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAuthAlarmSet:Z

.field private mAuthType:I

.field final mAuthenticationHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

.field mBatteryStateReceiver:Landroid/content/BroadcastReceiver;

.field mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

.field mBootCompleted:Z

.field private mContext:Landroid/content/Context;

.field mCoverAttachedWhenNanos:J

.field private mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

.field mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

.field private mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

.field mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field private mCurrentPowerSouce:I

.field mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

.field mFactoryIntent:Landroid/content/Intent;

.field mFactoryReceiver:Landroid/content/BroadcastReceiver;

.field mFactoryTestRequested:Z

.field private mFailuresCount:I

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field mIsFactoryBinary:Z

.field volatile mIsShutingdown:Z

.field private mLastAttachTime:J

.field private volatile mLastAuthenticationTime:J

.field mLastCoverState:Lcom/samsung/android/cover/CoverState;

.field private mLastDetachTime:J

.field mNfcServiceReady:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field volatile mPreparing:Z

.field mRestrictionPolicyOberver:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

.field final mResult:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/samsung/accessory/manager/authentication/AuthenticationResult;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCounterWhenBusy:I

.field mRunAuthIntent:Landroid/app/PendingIntent;

.field private mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

.field mScheduledAuthReceiver:Landroid/content/BroadcastReceiver;

.field mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 58
    const-class v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    .line 59
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_37

    move v0, v1

    :goto_11
    sput-boolean v0, DBG:Z

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".action.AUTHENTICATION_INTERVAL_ELAPSED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

    .line 103
    sput-boolean v1, USE_SCHEDULED_AUTHENTICATION:Z

    .line 104
    sput-boolean v2, USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z

    return-void

    :cond_37
    move v0, v2

    .line 59
    goto :goto_11
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Landroid/os/Looper;Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "callback"    # Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 481
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;-><init>()V

    .line 118
    iput-boolean v1, p0, mSystemReady:Z

    .line 119
    iput-boolean v1, p0, mNfcServiceReady:Z

    .line 120
    iput-boolean v1, p0, mBootCompleted:Z

    .line 121
    iput-boolean v1, p0, mIsShutingdown:Z

    .line 122
    iput-boolean v1, p0, mPreparing:Z

    .line 124
    iput-boolean v1, p0, mIsFactoryBinary:Z

    .line 125
    iput-boolean v1, p0, mFactoryTestRequested:Z

    .line 127
    const/4 v0, -0x1

    iput v0, p0, mAuthType:I

    .line 134
    iput v1, p0, mCurrentPowerSouce:I

    .line 138
    iput-wide v2, p0, mLastAuthenticationTime:J

    .line 139
    iput-wide v2, p0, mLastAttachTime:J

    .line 140
    iput-wide v2, p0, mLastDetachTime:J

    .line 141
    iput-wide v2, p0, mCoverAttachedWhenNanos:J

    .line 145
    iput v1, p0, mRetryCounterWhenBusy:I

    .line 146
    iput v1, p0, mFailuresCount:I

    .line 149
    iput-object v4, p0, mFactoryIntent:Landroid/content/Intent;

    .line 151
    iput-boolean v1, p0, mAuthAlarmSet:Z

    .line 152
    iput-object v4, p0, mLastCoverState:Lcom/samsung/android/cover/CoverState;

    .line 158
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, mResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 163
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, mAuthenticationHistory:Ljava/util/LinkedList;

    .line 165
    iput-object v4, p0, mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 615
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$7;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$7;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    iput-object v0, p0, mScheduledAuthReceiver:Landroid/content/BroadcastReceiver;

    .line 631
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    iput-object v0, p0, mBatteryStateReceiver:Landroid/content/BroadcastReceiver;

    .line 952
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    iput-object v0, p0, mFactoryReceiver:Landroid/content/BroadcastReceiver;

    .line 482
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 483
    iput-object p2, p0, mInputManager:Lcom/android/server/input/InputManagerService;

    .line 484
    iput-object p4, p0, mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    .line 486
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-direct {v0, p0, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Landroid/os/Looper;)V

    iput-object v0, p0, mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 487
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 56
    sget-boolean v0, DBG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 56
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    invoke-direct {p0}, initialize()V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 56
    invoke-direct {p0, p1}, handleAuthResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    invoke-direct {p0}, isAuthenticationBlocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    .param p1, "x1"    # J

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, stopAuthentication(J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    invoke-direct {p0}, handleAuthStart()V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    iget v0, p0, mFailuresCount:I

    return v0
.end method

.method static synthetic access$1508(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I
    .registers 3
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    iget v0, p0, mFailuresCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, mFailuresCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    invoke-direct {p0}, stopAuthAlarm()V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 5
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;
    .param p4, "x4"    # Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, setCoverVerified(ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    invoke-direct {p0}, getCoverSwitchState()I

    move-result v0

    return v0
.end method

.method static synthetic access$2002(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)J
    .registers 4
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    .param p1, "x1"    # J

    .prologue
    .line 56
    iput-wide p1, p0, mLastAttachTime:J

    return-wide p1
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 56
    sget-object v0, RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)J
    .registers 3
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    iget-wide v0, p0, mLastAuthenticationTime:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)J
    .registers 4
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    .param p1, "x1"    # J

    .prologue
    .line 56
    iput-wide p1, p0, mLastAuthenticationTime:J

    return-wide p1
.end method

.method static synthetic access$2300()Z
    .registers 1

    .prologue
    .line 56
    sget-boolean v0, USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    invoke-direct {p0}, isLedCover()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    iget v0, p0, mCurrentPowerSouce:I

    return v0
.end method

.method static synthetic access$2502(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, mCurrentPowerSouce:I

    return p1
.end method

.method static synthetic access$2900(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    invoke-direct {p0}, sendFactoryResult()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    iget-object v0, p0, mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    iget-object v0, p0, mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    .param p1, "x1"    # J

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, scheduleAuthenticationTimeOuts(J)V

    return-void
.end method

.method static synthetic access$602(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, mRetryCounterWhenBusy:I

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZJ)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, startAuthentication(ZJ)V

    return-void
.end method

.method static synthetic access$802(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, mAuthType:I

    return p1
.end method

.method private declared-synchronized getCoverManager()Lcom/samsung/android/cover/ICoverManager;
    .registers 3

    .prologue
    .line 707
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_1d

    .line 708
    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    .line 709
    iget-object v0, p0, mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_1d

    .line 710
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_1d
    iget-object v0, p0, mCoverManager:Lcom/samsung/android/cover/ICoverManager;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-object v0

    .line 707
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCoverSwitchState()I
    .registers 5

    .prologue
    .line 717
    iget-object v0, p0, mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v1, -0x1

    const/16 v2, -0x100

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    return v0
.end method

.method private handleAuthResponse(Landroid/os/Message;)V
    .registers 23
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 228
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "handleAuthResponse"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/16 v18, 0x0

    .line 231
    .local v18, "needToStopSession":Z
    const/16 v20, 0x0

    .line 232
    .local v20, "verified":Z
    const/4 v13, 0x0

    .line 234
    .local v13, "isFake":Z
    move-object/from16 v0, p0

    iget-object v4, v0, mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 237
    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsFactoryBinary:Z

    if-nez v4, :cond_34

    invoke-direct/range {p0 .. p0}, getCoverSwitchState()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_34

    .line 238
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_2c

    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "This is unlikely indicates that cover is detached while authenticating"

    invoke-static {v4, v5}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 322
    :goto_33
    return-void

    .line 244
    :cond_34
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 245
    .local v19, "result":Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    move-object/from16 v0, p0

    iget-object v4, v0, mResult:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 247
    invoke-virtual/range {v19 .. v19}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getResultBundle()Landroid/os/Bundle;

    move-result-object v11

    .line 248
    .local v11, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "reason"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 249
    .local v10, "authReason":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, addRecord(I)V

    .line 250
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "auth reason = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsFactoryBinary:Z

    if-eqz v4, :cond_94

    move-object/from16 v0, p0

    iget-boolean v4, v0, mFactoryTestRequested:Z

    if-eqz v4, :cond_94

    .line 253
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mFactoryTestRequested:Z

    .line 254
    invoke-direct/range {p0 .. p0}, sendFactoryResult()V

    .line 255
    move-object/from16 v0, p0

    iget-object v4, v0, mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    move-object/from16 v0, p0

    iget-object v5, v0, mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v4, v5}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->stop(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v4, v0, mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_33

    .line 260
    :cond_94
    new-instance v12, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getExtraId()[B

    move-result-object v4

    invoke-direct {v12, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;-><init>([B)V

    .line 261
    .local v12, "coverInfo":Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;
    if-nez v10, :cond_115

    .line 262
    move-object/from16 v0, p0

    iget-object v4, v0, mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getPublicKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->isThisKeyBlacklisted(Ljava/lang/String;)Z

    move-result v16

    .line 263
    .local v16, "isKeyBlocked":Z
    move-object/from16 v0, p0

    iget-object v4, v0, mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getStringManagerURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->isThisKeyBlacklisted(Ljava/lang/String;)Z

    move-result v17

    .line 264
    .local v17, "isPackageBlocked":Z
    invoke-virtual {v12}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->isValid()Z

    move-result v4

    if-eqz v4, :cond_e0

    if-nez v16, :cond_e0

    if-nez v17, :cond_e0

    .line 265
    const/16 v20, 0x1

    .line 271
    :goto_c3
    const/16 v18, 0x1

    .line 316
    .end local v16    # "isKeyBlocked":Z
    .end local v17    # "isPackageBlocked":Z
    :cond_c5
    :goto_c5
    if-eqz v18, :cond_d7

    .line 317
    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v13, v12, v2}, setCoverVerified(ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 318
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, stopAuthentication(J)V

    .line 321
    :cond_d7
    move-object/from16 v0, p0

    iget-object v4, v0, mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_33

    .line 267
    .restart local v16    # "isKeyBlocked":Z
    .restart local v17    # "isPackageBlocked":Z
    :cond_e0
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is ID valid ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->isValid()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isKeyBlocked ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isPackageBlocked? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c3

    .line 273
    .end local v16    # "isKeyBlocked":Z
    .end local v17    # "isPackageBlocked":Z
    :cond_115
    const/4 v4, 0x1

    if-ne v10, v4, :cond_11b

    .line 275
    const/16 v18, 0x1

    goto :goto_c5

    .line 276
    :cond_11b
    const/16 v4, 0xb

    if-eq v10, v4, :cond_123

    const/16 v4, 0x1e

    if-ne v10, v4, :cond_12c

    .line 278
    :cond_123
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "do nothing.."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5

    .line 279
    :cond_12c
    const/16 v4, 0x1f

    if-ne v10, v4, :cond_13c

    .line 281
    invoke-virtual/range {p0 .. p0}, removeAuthenticationTimeOuts()V

    .line 282
    move-object/from16 v0, p0

    iget-object v4, v0, mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    goto :goto_c5

    .line 284
    :cond_13c
    const/16 v4, 0xc

    if-ne v10, v4, :cond_14f

    .line 285
    invoke-virtual/range {p0 .. p0}, removeAuthenticationTimeOuts()V

    .line 286
    move-object/from16 v0, p0

    iget-object v4, v0, mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    .line 287
    const/16 v18, 0x1

    goto/16 :goto_c5

    .line 288
    :cond_14f
    const/16 v4, 0xd

    if-ne v10, v4, :cond_18f

    .line 289
    move-object/from16 v0, p0

    iget v4, v0, mRetryCounterWhenBusy:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_17b

    move-object/from16 v0, p0

    iget-object v4, v0, mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_17b

    .line 291
    move-object/from16 v0, p0

    iget v4, v0, mRetryCounterWhenBusy:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, mRetryCounterWhenBusy:I

    .line 293
    const/4 v5, 0x1

    const-wide/16 v6, 0x2710

    const-wide/16 v8, 0x1388

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, startAuthentication(ZJJ)V

    goto/16 :goto_c5

    .line 295
    :cond_17b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, mRetryCounterWhenBusy:I

    .line 296
    invoke-virtual/range {p0 .. p0}, removeAuthenticationTimeOuts()V

    .line 297
    move-object/from16 v0, p0

    iget-object v4, v0, mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    .line 298
    const/16 v18, 0x1

    goto/16 :goto_c5

    .line 300
    :cond_18f
    const/16 v4, 0x14

    if-eq v10, v4, :cond_1af

    const/16 v4, 0x15

    if-eq v10, v4, :cond_1af

    const/16 v4, 0x16

    if-eq v10, v4, :cond_1af

    const/16 v4, 0x17

    if-eq v10, v4, :cond_1af

    const/16 v4, 0x18

    if-eq v10, v4, :cond_1af

    const/16 v4, 0x20

    if-eq v10, v4, :cond_1af

    const/16 v4, 0xa

    if-eq v10, v4, :cond_1af

    const/16 v4, 0x5a

    if-ne v10, v4, :cond_c5

    .line 308
    :cond_1af
    const/16 v4, 0x16

    if-eq v10, v4, :cond_1b7

    const/16 v4, 0xa

    if-ne v10, v4, :cond_1cc

    :cond_1b7
    const-wide/16 v14, 0x12c

    .line 311
    .local v14, "delay":J
    :goto_1b9
    move-object/from16 v0, p0

    iget-object v4, v0, mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_c5

    .line 312
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v15}, startAuthentication(ZJ)V

    goto/16 :goto_c5

    .line 308
    .end local v14    # "delay":J
    :cond_1cc
    const-wide/16 v14, 0xc8

    goto :goto_1b9
.end method

.method private handleAuthStart()V
    .registers 8

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x1

    .line 490
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "handleAuthStart"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v3, p0, mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 494
    iget-boolean v3, p0, mIsFactoryBinary:Z

    if-nez v3, :cond_2a

    invoke-direct {p0}, getCoverSwitchState()I

    move-result v3

    if-ge v3, v5, :cond_2a

    .line 495
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_24

    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "This is unlikely indicates that cover is detached while starting auth"

    invoke-static {v3, v4}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_24
    iget-object v3, p0, mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 523
    :goto_29
    return-void

    .line 500
    :cond_2a
    iget-object v3, p0, mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    iget-object v4, p0, mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v3, v4}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I

    move-result v2

    .line 501
    .local v2, "sessionState":I
    if-eq v2, v6, :cond_44

    if-eq v2, v5, :cond_44

    .line 503
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "session is busy"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v3, p0, mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_29

    .line 508
    :cond_44
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 510
    .local v1, "message":Landroid/os/Message;
    iget-object v3, p0, mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    iget-object v4, p0, mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v3, v4}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I

    move-result v3

    if-ne v3, v6, :cond_6d

    .line 511
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 512
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "connectivity_type"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 513
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 514
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 515
    iget-object v3, p0, mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-interface {v3, v1, v5}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->start(Landroid/os/Message;Z)V

    .line 522
    .end local v0    # "data":Landroid/os/Bundle;
    :goto_67
    iget-object v3, p0, mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_29

    .line 518
    :cond_6d
    iget-object v3, p0, mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 519
    iget-object v3, p0, mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-interface {v3, v1, v5}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->start(Landroid/os/Message;Z)V

    goto :goto_67
.end method

.method private initialize()V
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 533
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "Initialize cover authenticator"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    iput-boolean v0, p0, mIsFactoryBinary:Z

    .line 537
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-direct {v0, p0, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;)V

    iput-object v0, p0, mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 538
    iget-object v0, p0, mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->readFile()V

    .line 540
    new-instance v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    .line 541
    iget-object v0, p0, mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    invoke-virtual {v0, p0}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->setCertBlacklistListener(Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;)V

    .line 542
    iget-object v0, p0, mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->readFile()V

    .line 543
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mRestrictionPolicyOberver:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    .line 544
    iget-object v0, p0, mRestrictionPolicyOberver:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    invoke-virtual {v0, p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->setNfcRestrictionPolicyListener(Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;)V

    .line 545
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_5e

    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nfc restriction policy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->isAuthenticatonAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_5e
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    .line 548
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    sget-object v1, TAG:Ljava/lang/String;

    invoke-virtual {v0, v7, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 549
    iget-object v0, p0, mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 550
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DetachTimeoutWakeLock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 552
    iget-object v0, p0, mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 554
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    .line 556
    sget-boolean v0, USE_SCHEDULED_AUTHENTICATION:Z

    if-eqz v0, :cond_db

    .line 557
    new-instance v6, Landroid/content/Intent;

    sget-object v0, RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 558
    .local v6, "authIntent":Landroid/content/Intent;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 560
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0, v4, v6, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, mRunAuthIntent:Landroid/app/PendingIntent;

    .line 562
    new-instance v3, Landroid/content/IntentFilter;

    sget-object v0, RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 563
    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mScheduledAuthReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "com.samsung.accessory.manager.permission.AUTHENTICATION_CONTROL"

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 566
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "authIntent":Landroid/content/Intent;
    :cond_db
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.accessory.manager.action.AUTHENTICATION_STATE_REQUEST"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 567
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "com.samsung.accessory.manager.action.START_AUTHENTICATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mFactoryReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "com.samsung.accessory.manager.permission.AUTHENTICATION_CONTROL"

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 570
    iget-object v0, p0, mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "com.sec.android.nfc.AUTH_READY"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 593
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 594
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$6;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$6;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 610
    invoke-direct {p0}, registerBatteryReceiver()V

    .line 612
    iput-boolean v7, p0, mSystemReady:Z

    .line 613
    return-void
.end method

.method private isAuthenticationBlocked()Z
    .registers 7

    .prologue
    .line 400
    const/4 v1, 0x0

    .line 402
    .local v1, "isBlocked":Z
    iget v2, p0, mCurrentPowerSouce:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    .line 403
    const/4 v1, 0x1

    .line 404
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, addRecord(I)V

    .line 427
    :cond_b
    :goto_b
    return v1

    .line 405
    :cond_c
    iget-object v2, p0, mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->isAuthenticationBlocked()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 406
    const/4 v1, 0x1

    .line 407
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_b

    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "Authentication is blocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 408
    :cond_21
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->isAuthenticatonAllowed()Z

    move-result v2

    if-nez v2, :cond_b

    .line 409
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getBlockedType()I

    move-result v0

    .line 410
    .local v0, "blockedType":I
    const/4 v1, 0x1

    .line 411
    const/4 v2, 0x2

    if-eq v0, v2, :cond_32

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5b

    .line 413
    :cond_32
    iget-object v2, p0, mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$4;

    invoke-direct {v3, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$4;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 424
    :cond_3e
    :goto_3e
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_b

    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authentication is blocked.. type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 421
    :cond_5b
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3e

    .line 422
    invoke-direct {p0}, setCoverVerifiedAlt()V

    goto :goto_3e
.end method

.method private isLedCover()Z
    .registers 3

    .prologue
    .line 628
    iget-object v0, p0, mLastCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_f

    iget-object v0, p0, mLastCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private registerBatteryReceiver()V
    .registers 4

    .prologue
    .line 526
    iget-boolean v1, p0, mIsFactoryBinary:Z

    if-nez v1, :cond_12

    .line 527
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 528
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mBatteryStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 530
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_12
    return-void
.end method

.method private scheduleAuthenticationTimeOuts(J)V
    .registers 6
    .param p1, "interval"    # J

    .prologue
    .line 770
    invoke-virtual {p0}, removeAuthenticationTimeOuts()V

    .line 771
    iget-object v0, p0, mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 772
    return-void
.end method

.method private sendFactoryResult()V
    .registers 6

    .prologue
    .line 984
    iget-object v2, p0, mFactoryIntent:Landroid/content/Intent;

    if-nez v2, :cond_d

    .line 985
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "factory intent is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :goto_c
    return-void

    .line 989
    :cond_d
    iget-object v2, p0, mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 991
    .local v1, "result":Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    if-eqz v1, :cond_74

    .line 992
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getExtraId()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;-><init>([B)V

    .line 993
    .local v0, "info":Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;
    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v2

    if-nez v2, :cond_43

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->isValid()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 995
    const-string v2, "OK"

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getSn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getCoverId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    .end local v0    # "info":Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;
    :goto_39
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mFactoryIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_c

    .line 996
    .restart local v0    # "info":Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;
    :cond_43
    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v2

    if-nez v2, :cond_59

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_59

    .line 997
    const-string v2, "NG_ID"

    const-string v3, ""

    const-string v4, ""

    invoke-direct {p0, v2, v3, v4}, setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    .line 998
    :cond_59
    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6a

    .line 999
    const-string v2, "NG_KEY"

    const-string v3, ""

    const-string v4, ""

    invoke-direct {p0, v2, v3, v4}, setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    .line 1001
    :cond_6a
    const-string v2, "NG_NFC"

    const-string v3, ""

    const-string v4, ""

    invoke-direct {p0, v2, v3, v4}, setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    .line 1003
    .end local v0    # "info":Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;
    :cond_74
    const-string v2, "NG_NFC"

    const-string v3, ""

    const-string v4, ""

    invoke-direct {p0, v2, v3, v4}, setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39
.end method

.method private setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "serial"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 1009
    iget-object v1, p0, mFactoryIntent:Landroid/content/Intent;

    const-string/jumbo v2, "result_factory"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1010
    iget-object v1, p0, mFactoryIntent:Landroid/content/Intent;

    const-string/jumbo v2, "serial_factory"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1011
    iget-object v1, p0, mFactoryIntent:Landroid/content/Intent;

    const-string/jumbo v2, "id_factory"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1013
    invoke-direct {p0}, getCoverSwitchState()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_54

    const-string v0, "OK"

    .line 1014
    .local v0, "isCoverAttached":Ljava/lang/String;
    :goto_21
    iget-object v1, p0, mFactoryIntent:Landroid/content/Intent;

    const-string v2, "attachInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, mLastAttachTime:J

    invoke-virtual {p0, v4, v5}, getDateFromUTC(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1015
    iget-object v1, p0, mFactoryIntent:Landroid/content/Intent;

    const-string/jumbo v2, "detachInfo"

    iget-wide v4, p0, mLastDetachTime:J

    invoke-virtual {p0, v4, v5}, getDateFromUTC(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1016
    return-void

    .line 1013
    .end local v0    # "isCoverAttached":Ljava/lang/String;
    :cond_54
    const-string v0, "NG"

    goto :goto_21
.end method

.method private setCoverVerified(ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 13
    .param p1, "isVerified"    # Z
    .param p2, "isFake"    # Z
    .param p3, "coverInfo"    # Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;
    .param p4, "result"    # Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .prologue
    const/4 v7, 0x0

    const/4 v3, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 325
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    .line 326
    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    invoke-virtual {v0, p2}, Lcom/samsung/android/cover/CoverState;->setFakeCover(Z)V

    .line 327
    if-eqz p1, :cond_e3

    .line 328
    invoke-virtual {v0, v5}, Lcom/samsung/android/cover/CoverState;->setAttachState(Z)V

    .line 329
    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/cover/CoverState;->setColor(I)V

    .line 330
    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getModel()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/cover/CoverState;->setModel(I)V

    .line 331
    invoke-virtual {p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getStringManagerURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/cover/CoverState;->setSmartCoverAppUri(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayExtraData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/cover/CoverState;->setSmartCoverCookie([B)V

    .line 333
    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getSmapp()I

    move-result v2

    if-nez v2, :cond_c6

    .line 334
    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    .line 335
    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/cover/CoverState;->setSerialNumber(Ljava/lang/String;)V

    .line 342
    :goto_41
    iput-object v0, p0, mLastCoverState:Lcom/samsung/android/cover/CoverState;

    .line 343
    iget-object v2, p0, mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService;->setCoverVerify(I)V

    .line 344
    iget-object v2, p0, mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->setCoverType(I)V

    .line 345
    invoke-virtual {p0, p1, v0}, applyCoverVerifiedState(ZLcom/samsung/android/cover/CoverState;)Z

    .line 346
    iget v2, p0, mAuthType:I

    if-eq v2, v5, :cond_60

    iget v2, p0, mAuthType:I

    if-ne v2, v6, :cond_a9

    .line 347
    :cond_60
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_80

    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "coverInfo.getUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getUrl()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_80
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.applinker.REQUEST_LINK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    .local v1, "linkIntent":Landroid/content/Intent;
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 351
    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getUrl()I

    move-result v2

    if-ne v2, v5, :cond_d8

    .line 352
    const-string v2, "DEVICE_TYPE"

    const-string v3, "cover"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v2, "URI"

    invoke-virtual {p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayManagerURI()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 357
    :goto_a2
    iget-object v2, p0, mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 360
    .end local v1    # "linkIntent":Landroid/content/Intent;
    :cond_a9
    iget-object v2, p0, mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getId()[B

    move-result-object v3

    invoke-virtual {p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayManagerURI()[B

    move-result-object v4

    invoke-virtual {p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayExtraData()[B

    move-result-object v5

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->writeFile([B[B[B)V
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->access$900(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;[B[B[B)V

    .line 364
    invoke-direct {p0}, startAuthAlarm()V

    .line 367
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, mLastAuthenticationTime:J

    .line 368
    iput v7, p0, mFailuresCount:I

    .line 377
    :goto_c5
    return-void

    .line 336
    :cond_c6
    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getSmapp()I

    move-result v2

    if-ne v2, v5, :cond_d3

    .line 337
    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    goto/16 :goto_41

    .line 339
    :cond_d3
    invoke-virtual {v0, v6}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    goto/16 :goto_41

    .line 355
    .restart local v1    # "linkIntent":Landroid/content/Intent;
    :cond_d8
    const-string v2, "URI"

    new-array v3, v6, [B

    fill-array-data v3, :array_100

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_a2

    .line 370
    .end local v1    # "linkIntent":Landroid/content/Intent;
    :cond_e3
    iget-object v2, p0, mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService;->setCoverVerify(I)V

    .line 371
    iget-object v2, p0, mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->setCoverType(I)V

    .line 372
    iget-object v2, p0, mLastCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_f6

    .line 373
    iget-object v2, p0, mLastCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2, v7}, Lcom/samsung/android/cover/CoverState;->setAttachState(Z)V

    .line 374
    :cond_f6
    iget-object v2, p0, mLastCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0, p1, v2}, applyCoverVerifiedState(ZLcom/samsung/android/cover/CoverState;)Z

    .line 375
    const/4 v2, 0x0

    iput-object v2, p0, mLastCoverState:Lcom/samsung/android/cover/CoverState;

    goto :goto_c5

    .line 355
    nop

    :array_100
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method

.method private setCoverVerifiedAlt()V
    .registers 5

    .prologue
    .line 380
    iget-object v2, p0, mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 382
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_11

    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "setCoverVerifiedAlt"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_11
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;

    iget-object v2, p0, mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mId:[B

    invoke-direct {v0, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;-><init>([B)V

    .line 385
    .local v0, "coverInfo":Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->isValid()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 386
    new-instance v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-direct {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;-><init>()V

    .line 387
    .local v1, "result":Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    iget-object v2, p0, mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    if-eqz v2, :cond_32

    .line 388
    iget-object v2, p0, mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setManagerURI([B)V

    .line 389
    :cond_32
    iget-object v2, p0, mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mExtraData:[B

    if-eqz v2, :cond_3f

    .line 390
    iget-object v2, p0, mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mExtraData:[B

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setExtraData([B)V

    .line 392
    :cond_3f
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, setCoverVerified(ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 396
    .end local v1    # "result":Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    :goto_44
    iget-object v2, p0, mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 397
    return-void

    .line 394
    :cond_4a
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "Id is not valid.."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method

.method private startAuthAlarm()V
    .registers 9

    .prologue
    .line 679
    iget-boolean v1, p0, mAuthAlarmSet:Z

    if-nez v1, :cond_35

    sget-boolean v1, USE_SCHEDULED_AUTHENTICATION:Z

    if-eqz v1, :cond_35

    .line 680
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_13

    sget-object v1, TAG:Ljava/lang/String;

    const-string v4, "Schedule an authentication alarm"

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_13
    const/4 v1, 0x1

    iput-boolean v1, p0, mAuthAlarmSet:Z

    .line 682
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 683
    .local v0, "random":Ljava/security/SecureRandom;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x44aa200

    add-long/2addr v4, v6

    const v1, 0xdbba00

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v1

    int-to-long v6, v1

    add-long v2, v4, v6

    .line 684
    .local v2, "when":J
    iget-object v1, p0, mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x3

    iget-object v5, p0, mRunAuthIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 686
    .end local v0    # "random":Ljava/security/SecureRandom;
    .end local v2    # "when":J
    :cond_35
    return-void
.end method

.method private startAuthentication(ZJ)V
    .registers 6
    .param p1, "resetTimeout"    # Z
    .param p2, "delayed"    # J

    .prologue
    .line 742
    iget-boolean v0, p0, mSystemReady:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, mNfcServiceReady:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, mIsShutingdown:Z

    if-eqz v0, :cond_d

    .line 751
    :cond_c
    :goto_c
    return-void

    .line 744
    :cond_d
    iget-object v0, p0, mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    .line 745
    if-eqz p1, :cond_1d

    .line 746
    const-wide/16 v0, 0x6978

    invoke-direct {p0, v0, v1}, scheduleAuthenticationTimeOuts(J)V

    .line 747
    const/4 v0, 0x1

    iput-boolean v0, p0, mPreparing:Z

    .line 750
    :cond_1d
    iget-object v0, p0, mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_c
.end method

.method private startAuthentication(ZJJ)V
    .registers 8
    .param p1, "resetTimeout"    # Z
    .param p2, "interval"    # J
    .param p4, "delayed"    # J

    .prologue
    .line 754
    iget-boolean v0, p0, mSystemReady:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, mNfcServiceReady:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, mIsShutingdown:Z

    if-eqz v0, :cond_d

    .line 762
    :cond_c
    :goto_c
    return-void

    .line 756
    :cond_d
    iget-object v0, p0, mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    .line 757
    if-eqz p1, :cond_18

    .line 758
    invoke-direct {p0, p2, p3}, scheduleAuthenticationTimeOuts(J)V

    .line 761
    :cond_18
    iget-object v0, p0, mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p4, p5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_c
.end method

.method private stopAuthAlarm()V
    .registers 3

    .prologue
    .line 689
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_c

    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopAuthAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, mAuthAlarmSet:Z

    .line 691
    iget-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, mRunAuthIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 692
    return-void
.end method

.method private stopAuthentication(J)V
    .registers 6
    .param p1, "delayed"    # J

    .prologue
    .line 775
    invoke-virtual {p0}, removeAuthenticationTimeOuts()V

    .line 776
    iget-object v0, p0, mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    .line 779
    iget-object v0, p0, mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 780
    return-void
.end method


# virtual methods
.method addRecord(I)V
    .registers 6
    .param p1, "reason"    # I

    .prologue
    .line 220
    iget-object v0, p0, mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x3c

    if-le v0, v1, :cond_f

    iget-object v0, p0, mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 221
    :cond_f
    iget-object v0, p0, mAuthenticationHistory:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mAuthType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mCurrentPowerSouce:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 225
    return-void
.end method

.method public applyCoverVerifiedState(ZLcom/samsung/android/cover/CoverState;)Z
    .registers 7
    .param p1, "verified"    # Z
    .param p2, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 696
    :try_start_0
    invoke-direct {p0}, getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    .line 697
    .local v0, "cm":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v0, :cond_d

    .line 698
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1, p2}, Lcom/samsung/android/cover/ICoverManager;->notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    .line 703
    .end local v0    # "cm":Lcom/samsung/android/cover/ICoverManager;
    :cond_d
    :goto_d
    const/4 v2, 0x1

    return v2

    .line 700
    :catch_f
    move-exception v1

    .line 701
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "RemoteException in notifySmartCoverAttachStateChanged: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1030
    const-string v2, " Current CoverAuthenticator state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1032
    iget-object v2, p0, mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 1033
    .local v1, "reault":Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    if-eqz v1, :cond_5d

    .line 1034
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  auth reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1035
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  auth uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getStringManagerURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  auth extra data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getStringExtraData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1039
    :cond_5d
    const-string v2, "  Historical authentication: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1040
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_63
    iget-object v2, p0, mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_8c

    .line 1041
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1040
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 1043
    :cond_8c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mFactoryTestRequested = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mFactoryTestRequested:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1044
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mLastAuthenticationTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, mLastAuthenticationTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1045
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  isAuthenticatonAllowed? = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->isAuthenticatonAllowed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1046
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  getBlockedType? = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getBlockedType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1047
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  isAuthenticationBlocked? = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->isAuthenticationBlocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1048
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mLastAttachTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, mLastAttachTime:J

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mLastDetachTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, mLastDetachTime:J

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mFailuresCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mFailuresCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    return-void
.end method

.method public getDateFromUTC(J)Ljava/lang/String;
    .registers 8
    .param p1, "millis"    # J

    .prologue
    .line 1019
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1020
    .local v0, "c":Ljava/util/Calendar;
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_2c

    .line 1021
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1022
    const-string v1, "%ty-%tm-%td %tH:%tM:%tS.%tL"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    const/4 v3, 0x5

    aput-object v0, v2, v3

    const/4 v3, 0x6

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1024
    :goto_2b
    return-object v1

    :cond_2c
    const-string v1, ""

    goto :goto_2b
.end method

.method public onAuthenticationBlocked(Z)V
    .registers 6
    .param p1, "isBlocked"    # Z

    .prologue
    .line 828
    if-eqz p1, :cond_9

    .line 829
    iget-object v0, p0, mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendEmptyMessage(I)Z

    .line 832
    :goto_8
    return-void

    .line 831
    :cond_9
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, startAuthentication(ZJ)V

    goto :goto_8
.end method

.method public onAuthenticationComplted(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 5
    .param p1, "result"    # Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .prologue
    .line 214
    iget-object v1, p0, mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 215
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 216
    iget-object v1, p0, mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendMessage(Landroid/os/Message;)Z

    .line 217
    return-void
.end method

.method public onAuthenticationStarted()V
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->post(Ljava/lang/Runnable;)Z

    .line 194
    return-void
.end method

.method public onAuthenticationStarting(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 4
    .param p1, "session"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .prologue
    .line 169
    iget-object v0, p0, mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->post(Ljava/lang/Runnable;)Z

    .line 179
    return-void
.end method

.method public onAuthenticationStopped(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 4
    .param p1, "session"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .prologue
    .line 198
    iget-object v0, p0, mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$3;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$3;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->post(Ljava/lang/Runnable;)Z

    .line 210
    return-void
.end method

.method public onCertBlacklistChanged()V
    .registers 3

    .prologue
    .line 810
    iget-object v0, p0, mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->post(Ljava/lang/Runnable;)Z

    .line 824
    return-void
.end method

.method public onCoverAttached(JZ)V
    .registers 13
    .param p1, "whenNanos"    # J
    .param p3, "attached"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    .line 721
    iget-boolean v2, p0, mIsFactoryBinary:Z

    if-nez v2, :cond_f

    iget-boolean v2, p0, mSystemReady:Z

    if-eqz v2, :cond_f

    iget-boolean v2, p0, mNfcServiceReady:Z

    if-nez v2, :cond_10

    .line 739
    :cond_f
    :goto_f
    return-void

    .line 723
    :cond_10
    if-eqz p3, :cond_20

    .line 724
    iput v4, p0, mAuthType:I

    .line 725
    iput-wide p1, p0, mCoverAttachedWhenNanos:J

    .line 726
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, mLastAttachTime:J

    .line 727
    invoke-direct {p0, v4, v6, v7}, startAuthentication(ZJ)V

    goto :goto_f

    .line 729
    :cond_20
    const-wide/16 v0, 0x0

    .line 730
    .local v0, "delayedMs":J
    iget-wide v2, p0, mCoverAttachedWhenNanos:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_35

    iget-wide v2, p0, mCoverAttachedWhenNanos:J

    sub-long v2, p1, v2

    const-wide/32 v4, 0x1dcd6500

    cmp-long v2, v2, v4

    if-gez v2, :cond_35

    .line 732
    const-wide/16 v0, 0x1f4

    .line 734
    :cond_35
    iget-object v2, p0, mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 735
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, mLastDetachTime:J

    .line 736
    const/4 v2, 0x0

    iput v2, p0, mFailuresCount:I

    .line 737
    invoke-direct {p0, v0, v1}, stopAuthentication(J)V

    goto :goto_f
.end method

.method public onNfcRestrictionPolicyChanged(Z)V
    .registers 5
    .param p1, "allowed"    # Z

    .prologue
    .line 789
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_1d

    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNfcRestrictionPolicyChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_1d
    iget-object v0, p0, mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;

    invoke-direct {v1, p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->post(Ljava/lang/Runnable;)Z

    .line 806
    return-void
.end method

.method removeAuthenticationTimeOuts()V
    .registers 3

    .prologue
    .line 765
    const/4 v0, 0x0

    iput-boolean v0, p0, mPreparing:Z

    .line 766
    iget-object v0, p0, mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    .line 767
    return-void
.end method

.method public systemReady()V
    .registers 3

    .prologue
    .line 784
    iget-object v0, p0, mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendEmptyMessage(I)Z

    .line 785
    return-void
.end method
