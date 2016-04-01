.class public Lcom/android/server/TimaService;
.super Landroid/service/tima/ITimaService$Stub;
.source "TimaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TimaService$TuiReceiver;,
        Lcom/android/server/TimaService$TimaServiceHandler;
    }
.end annotation


# static fields
.field private static final ATTESTATION_BLOCK_PACKAGE_DIGESTS:B = 0x41t

.field private static final ATTESTATION_BLOCK_PACKAGE_DIGEST_COUNT:B = 0x40t

.field private static final ATTESTATION_BLOCK_PACKAGE_NAMES:B = 0x42t

.field private static final ATTESTATION_BLOCK_PACKAGE_VERSIONS:B = 0x43t

.field private static final ATTESTATION_BLOCK_SIGNATURE_DIGESTS:B = 0x45t

.field private static final ATTESTATION_BLOCK_SIGNATURE_DIGEST_COUNT:B = 0x44t

.field private static final BUILD_FINGERPRINT:Ljava/lang/String; = "ro.build.date"

.field private static final DEBUG:Z = true

.field private static final DECRYPT_CHECK_PROPERTY:Ljava/lang/String; = "vold.decrypt"

.field private static final EVENT_MSG_KERNEL_METADATA_MODIFIED:I = 0x4

.field private static final EVENT_MSG_KERNEL_MODIFIED:I = 0x3

.field private static final EVENT_MSG_LKM_MODIFIED:I = 0x1

.field private static final EVENT_MSG_SELINUX_OFF:I = 0x2

.field public static final INTENT_KLMS_KAP_NOTIFICATION_ACTION:Ljava/lang/String; = "com.samsung.action.knox.klms.KLMS_RP_NOTIFICATION"

.field public static final KAP_ID_FIRST_LICENSE_ACTIVATION:I = 0x1

.field public static final KAP_ID_LAST_LICENSE_DEACTIVATION:I = 0x2

.field public static final KAP_ID_LICENSE_STATUS_RESPONSE:I = 0x3

.field private static final KAP_KAP_MODE_PERSIST_STATUS:Ljava/lang/String; = "persist.sys.kap.status"

.field public static final KAP_LICENSE_STATUS_REQUEST:Ljava/lang/String; = "KAP_LICENSE_STATUS_REQUEST"

.field public static final KAP_MODE_STATUS:Ljava/lang/String; = "KAP_RP_MODE_STATUS"

.field public static final KAP_NOTIFICATION_ACTION:Ljava/lang/String; = "com.samsung.action.knox.kap.KAP_NOTIFICATION"

.field private static final KAP_SAVED_BUILD_FINGERPRINT:Ljava/lang/String; = "persist.sys.kap.date"

.field private static final PACKAGE_SECURITY_LOGUPLOAD_AGENT:Ljava/lang/String; = "com.samsung.android.securitylogagent"

.field private static final TAG:Ljava/lang/String; = "TimaService"

.field private static final TIMA_ALERT_TITLE:Ljava/lang/String; = "TIMA security measurement"

.field private static final TIMA_CCM_CSR_PROFILES_DIR:Ljava/lang/String; = "/data/misc/tz_ccm/csr_profiles"

.field private static final TIMA_CCM_DB_FILE:Ljava/lang/String; = "/data/misc/tz_ccm/key_db"

.field private static final TIMA_CCM_DIR:Ljava/lang/String; = "/data/misc/tz_ccm"

.field private static final TIMA_DUMP_LOG_EXEC:Ljava/lang/String; = "/system/bin/tima_dump_log -s 20 -d 40 -o "

.field private static final TIMA_ERROR_KEYSTORE_NO_PERMISSON:I = 0x64

.field private static final TIMA_EVENT_ID:I = 0x2

.field private static final TIMA_EVENT_MSG:Ljava/lang/String; = "MSG="

.field private static final TIMA_EVENT_STATUS:Ljava/lang/String; = "TIMA_STATUS="

.field private static final TIMA_INTENT_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

.field private static final TIMA_ISV_APK_DIGEST_MAX:I = 0xa

.field private static final TIMA_ISV_CERT_DIGEST_MAX:I = 0xa

.field private static final TIMA_ISV_PACKAGE_NAME_MAX:I = 0x32

.field private static final TIMA_KEYSTORE_20_MAX_KEY_LENGTH:I = 0x20

.field private static final TIMA_LOG_DIR:Ljava/lang/String; = "/data/misc/tima"

.field private static final TIMA_LOG_STEM:Ljava/lang/String; = "/tima.log."

.field public static TIMA_MAX_EVENTS:I = 0x0

.field private static final TIMA_NOTIFICATION_ID:I = 0x1b58

.field public static final TIMA_OPCODE_HISTORY:I = 0xc351

.field public static final TIMA_OPCODE_MEASUREMENT:I = 0xc350

.field private static final TIMA_SERVICE_NAME:Ljava/lang/String; = "tima"

.field private static final TIMA_START_ID:I = 0x1

.field public static final TIMA_SUBCODE_LKM:I = 0x2711

.field public static final TIMA_SUBCODE_PKM:I = 0x2710

.field private static final TIMA_TIMER_CHECK_INTERVAL:J = 0x493e0L

.field private static final TIMA_TIMER_START_DELAY:J = 0x1388L

.field private static final TIMA_TIMER_START_DELAY_FIRST_TIME:J = 0x493e0L

.field private static final UNCRYPT_CHECK_PROPERTY:Ljava/lang/String; = "ro.crypto.state"

.field public static iBootCompleted:Z

.field private static final mEventList:Ljava/util/LinkedList;

.field private static sContext:Landroid/content/Context;


# instance fields
.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIsBuildUpdate:Z

.field private mIsLicenseActive:Z

.field private mNotifMgr:Landroid/app/NotificationManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field mTimaServiceHandler:Lcom/android/server/TimaService$TimaServiceHandler;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private timaISLClbk:Landroid/service/tima/ITimaISLCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 126
    const/16 v0, 0x64

    sput v0, TIMA_MAX_EVENTS:I

    .line 144
    const/4 v0, 0x0

    sput-boolean v0, iBootCompleted:Z

    .line 168
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, mEventList:Ljava/util/LinkedList;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/32 v2, 0x493e0

    const/4 v0, 0x0

    .line 267
    invoke-direct {p0}, Landroid/service/tima/ITimaService$Stub;-><init>()V

    .line 197
    iput-boolean v0, p0, mIsBuildUpdate:Z

    .line 198
    iput-boolean v0, p0, mIsLicenseActive:Z

    .line 2147
    new-instance v0, Lcom/android/server/TimaService$2;

    invoke-direct {v0, p0}, Lcom/android/server/TimaService$2;-><init>(Lcom/android/server/TimaService;)V

    iput-object v0, p0, mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 268
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 270
    invoke-direct {p0}, registerTuiReceiver()V

    .line 272
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, mNotifMgr:Landroid/app/NotificationManager;

    .line 273
    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "TimaService"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 274
    .local v7, "timaThread":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 275
    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 276
    .local v6, "timaLooper":Landroid/os/Looper;
    if-eqz v6, :cond_c2

    .line 277
    new-instance v0, Lcom/android/server/TimaService$TimaServiceHandler;

    invoke-direct {v0, p0, v6}, Lcom/android/server/TimaService$TimaServiceHandler;-><init>(Lcom/android/server/TimaService;Landroid/os/Looper;)V

    iput-object v0, p0, mTimaServiceHandler:Lcom/android/server/TimaService$TimaServiceHandler;

    .line 283
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, mTimer:Ljava/util/Timer;

    .line 284
    new-instance v0, Lcom/android/server/TimaService$1;

    invoke-direct {v0, p0}, Lcom/android/server/TimaService$1;-><init>(Lcom/android/server/TimaService;)V

    iput-object v0, p0, mTimerTask:Ljava/util/TimerTask;

    .line 292
    iget-object v0, p0, mTimer:Ljava/util/Timer;

    iget-object v1, p0, mTimerTask:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 294
    const-string v0, "CCM"

    invoke-virtual {p0, v0}, loadTlcServer(Ljava/lang/String;)I

    .line 295
    const/4 v0, 0x1

    invoke-direct {p0}, isDCMsupported()Z

    move-result v1

    if-ne v0, v1, :cond_62

    .line 296
    const-string v0, "DCM"

    invoke-virtual {p0, v0}, loadTlcServer(Ljava/lang/String;)I

    .line 297
    :cond_62
    const-string v0, "TUI"

    invoke-virtual {p0, v0}, loadTlcServer(Ljava/lang/String;)I

    .line 299
    const-string v0, "ESECOMM"

    invoke-virtual {p0, v0}, loadTlcServer(Ljava/lang/String;)I

    .line 301
    invoke-direct {p0}, initCCMDatabase()Z

    .line 303
    invoke-direct {p0}, isKapSupported()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 304
    invoke-direct {p0}, registerBroadcastReceiver()V

    .line 306
    invoke-direct {p0}, isLicenseActive()Z

    move-result v0

    iput-boolean v0, p0, mIsLicenseActive:Z

    .line 308
    const-string/jumbo v0, "ro.crypto.state"

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unencrypted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    const-string/jumbo v0, "vold.decrypt"

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "trigger_restart_framework"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    const-string/jumbo v0, "vold.decrypt"

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "trigger_reset_main"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 310
    :cond_b7
    invoke-direct {p0}, handleBuildUpdate()V

    .line 314
    :cond_ba
    const-string v0, "TimaService"

    const-string v1, "TIMA: Start TimaService"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :goto_c1
    return-void

    .line 279
    :cond_c2
    const-string v0, "TimaService"

    const-string v1, "Failed getting looper for TimaServiceHandler"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c1
.end method

.method static synthetic access$000(Lcom/android/server/TimaService;)Landroid/app/NotificationManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .prologue
    .line 121
    iget-object v0, p0, mNotifMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TimaService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .prologue
    .line 121
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/TimaService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .prologue
    .line 121
    invoke-direct {p0}, isKapSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/TimaService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .prologue
    .line 121
    invoke-direct {p0}, isZeroModel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/TimaService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .prologue
    .line 121
    invoke-direct {p0}, notifyKapEnabled()V

    return-void
.end method

.method static native ccm_register_for_default_cert(II)J
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 6
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 497
    const-string v1, "TimaService"

    .line 498
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5a

    .line 499
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 502
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 504
    throw v0

    .line 506
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_5a
    const/4 v2, 0x0

    return v2
.end method

.method private static closeQuietly(Ljava/io/InputStream;)V
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;

    .prologue
    .line 1096
    if-eqz p0, :cond_5

    .line 1097
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 1102
    :cond_5
    :goto_5
    return-void

    .line 1099
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private enforcePermission()Z
    .registers 3

    .prologue
    .line 897
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 899
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    .line 900
    const/4 v1, 0x1

    .line 903
    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method private getCollectorApkDigest(Ljava/lang/String;)[B
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1864
    const-string v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calculate APK Digest for package"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    :try_start_18
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1867
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1870
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1871
    .local v2, "baseApkPath":Ljava/lang/String;
    invoke-direct {p0, v2}, getDigestOfFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 1872
    .local v0, "apkDigest":[B
    if-eqz v0, :cond_63

    .line 1873
    const-string v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "APK file MessageDigest: \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v0, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    const-string v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISV apkDigest size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    .end local v0    # "apkDigest":[B
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "baseApkPath":Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :goto_62
    return-object v0

    .line 1879
    .restart local v0    # "apkDigest":[B
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "baseApkPath":Ljava/lang/String;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_63
    const-string v5, "TimaService"

    const-string v6, "ISV apkDigest is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_6a} :catch_6b

    goto :goto_62

    .line 1883
    .end local v0    # "apkDigest":[B
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "baseApkPath":Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_6b
    move-exception v3

    .line 1884
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1886
    const/4 v0, 0x0

    goto :goto_62
.end method

.method private getCollectorBlob(I)[B
    .registers 20
    .param p1, "callerUid"    # I

    .prologue
    .line 1891
    const/4 v6, 0x0

    .line 1893
    .local v6, "digestCount":I
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    .line 1895
    .local v12, "packageNames":[Ljava/lang/String;
    array-length v15, v12

    const/16 v16, 0xa

    move/from16 v0, v16

    if-le v15, v0, :cond_93

    const/16 v6, 0xa

    .line 1896
    :goto_18
    const/16 v15, 0x3e8

    move/from16 v0, p1

    if-ne v0, v15, :cond_1f

    .line 1897
    const/4 v6, 0x0

    .line 1901
    :cond_1f
    mul-int/lit8 v15, v6, 0x20

    add-int/lit8 v5, v15, 0x8

    .line 1902
    .local v5, "blobSize":I
    new-array v4, v5, [B

    .line 1903
    .local v4, "blob":[B
    const/4 v9, 0x0

    .line 1906
    .local v9, "idx":I
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .local v10, "idx":I
    const/16 v15, 0x40

    aput-byte v15, v4, v9

    .line 1907
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    const/4 v15, 0x0

    aput-byte v15, v4, v10

    .line 1908
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    const/4 v15, 0x2

    aput-byte v15, v4, v9

    .line 1909
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    ushr-int/lit8 v15, v6, 0x8

    int-to-byte v15, v15

    aput-byte v15, v4, v10

    .line 1910
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    int-to-byte v15, v6

    aput-byte v15, v4, v9

    .line 1913
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    const/16 v15, 0x41

    aput-byte v15, v4, v10

    .line 1914
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    mul-int/lit8 v15, v6, 0x20

    ushr-int/lit8 v15, v15, 0x8

    int-to-byte v15, v15

    aput-byte v15, v4, v9

    .line 1915
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    mul-int/lit8 v15, v6, 0x20

    int-to-byte v15, v15

    aput-byte v15, v4, v10

    .line 1918
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_59
    if-ge v7, v6, :cond_9d

    .line 1919
    aget-object v15, v12, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, getCollectorApkDigest(Ljava/lang/String;)[B

    move-result-object v1

    .line 1920
    .local v1, "apkDigest":[B
    if-eqz v1, :cond_95

    .line 1921
    const/4 v15, 0x0

    array-length v0, v1

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v1, v15, v4, v9, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1922
    array-length v15, v1

    add-int/2addr v9, v15

    .line 1923
    const-string v15, "TimaService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ISV blob has been filled with "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " bytes"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    :goto_90
    add-int/lit8 v7, v7, 0x1

    goto :goto_59

    .line 1895
    .end local v1    # "apkDigest":[B
    .end local v4    # "blob":[B
    .end local v5    # "blobSize":I
    .end local v7    # "i":I
    .end local v9    # "idx":I
    :cond_93
    array-length v6, v12

    goto :goto_18

    .line 1926
    .restart local v1    # "apkDigest":[B
    .restart local v4    # "blob":[B
    .restart local v5    # "blobSize":I
    .restart local v7    # "i":I
    .restart local v9    # "idx":I
    :cond_95
    const-string v15, "TimaService"

    const-string v16, "ISV apkDigest is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 1930
    .end local v1    # "apkDigest":[B
    :cond_9d
    const-string v15, "TimaService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ISV blob total size="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    array-length v0, v4

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    move-object v2, v4

    .local v2, "arr$":[B
    array-length v11, v2

    .local v11, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_bb
    if-ge v8, v11, :cond_dc

    aget-byte v14, v2, v8

    .line 1933
    .local v14, "value":B
    const-string v15, "TimaService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "blob"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    add-int/lit8 v8, v8, 0x1

    goto :goto_bb

    .line 1936
    .end local v14    # "value":B
    :cond_dc
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1939
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_e1
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_e4} :catch_122

    .line 1943
    :goto_e4
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12, v6}, writePackageNames(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;I)V

    .line 1945
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12, v6}, writePackageVersions(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;I)V

    .line 1947
    const/4 v15, 0x0

    aget-object v15, v12, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v6}, writeCertificateDigests(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 1951
    :try_start_f6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 1952
    .local v13, "returnBytes":[B
    const-string v15, "TimaService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "TimaService.getCollectorBlob() returnBytes.length "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    array-length v0, v13

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_115
    .catchall {:try_start_f6 .. :try_end_115} :catchall_11b

    .line 1957
    if-eqz v3, :cond_11a

    .line 1959
    :try_start_117
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_11a} :catch_124

    .line 1960
    :cond_11a
    :goto_11a
    return-object v13

    .line 1957
    .end local v13    # "returnBytes":[B
    :catchall_11b
    move-exception v15

    if-eqz v3, :cond_121

    .line 1959
    :try_start_11e
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_121} :catch_126

    .line 1960
    :cond_121
    :goto_121
    throw v15

    .line 1940
    :catch_122
    move-exception v15

    goto :goto_e4

    .line 1960
    .restart local v13    # "returnBytes":[B
    :catch_124
    move-exception v15

    goto :goto_11a

    .end local v13    # "returnBytes":[B
    :catch_126
    move-exception v16

    goto :goto_121
.end method

.method private getDigestOfBytes([B)[B
    .registers 12
    .param p1, "inBytes"    # [B

    .prologue
    .line 2070
    const/4 v5, 0x0

    .line 2071
    .local v5, "dis":Ljava/security/DigestInputStream;
    const/4 v3, 0x0

    .line 2072
    .local v3, "bis":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 2074
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_3
    const-string v9, "SHA256"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 2075
    .local v8, "md":Ljava/security/MessageDigest;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_e} :catch_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_e} :catch_55
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_e} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_87
    .catchall {:try_start_3 .. :try_end_e} :catchall_a0

    .line 2076
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .local v2, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_e
    new-instance v6, Ljava/security/DigestInputStream;

    invoke-direct {v6, v2, v8}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_13} :catch_e9
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_13} :catch_da
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_ce
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_c2
    .catchall {:try_start_e .. :try_end_13} :catchall_b6

    .line 2077
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .local v6, "dis":Ljava/security/DigestInputStream;
    :try_start_13
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_18} :catch_ed
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_18} :catch_de
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_d1
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_c5
    .catchall {:try_start_13 .. :try_end_18} :catchall_b9

    .line 2079
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .local v4, "bis":Ljava/io/BufferedInputStream;
    :cond_18
    :try_start_18
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 2080
    .local v0, "b":I
    const/4 v9, -0x1

    if-ne v0, v9, :cond_18

    .line 2083
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_18 .. :try_end_22} :catch_f2
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_22} :catch_e3
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_22} :catch_d5
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_22} :catch_c9
    .catchall {:try_start_18 .. :try_end_22} :catchall_bd

    move-result-object v9

    .line 2094
    if-eqz v6, :cond_28

    .line 2095
    :try_start_25
    invoke-virtual {v6}, Ljava/security/DigestInputStream;->close()V

    .line 2096
    :cond_28
    if-eqz v4, :cond_2d

    .line 2097
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 2098
    :cond_2d
    if-eqz v2, :cond_32

    .line 2099
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_32} :catch_36

    :cond_32
    :goto_32
    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .line 2104
    .end local v0    # "b":I
    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .end local v8    # "md":Ljava/security/MessageDigest;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    :goto_35
    return-object v9

    .line 2100
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v0    # "b":I
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v8    # "md":Ljava/security/MessageDigest;
    :catch_36
    move-exception v7

    .line 2101
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32

    .line 2084
    .end local v0    # "b":I
    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "md":Ljava/security/MessageDigest;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    :catch_3b
    move-exception v7

    .line 2085
    .local v7, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_3c
    :try_start_3c
    invoke-virtual {v7}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_a0

    .line 2094
    if-eqz v5, :cond_44

    .line 2095
    :try_start_41
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    .line 2096
    :cond_44
    if-eqz v3, :cond_49

    .line 2097
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 2098
    :cond_49
    if-eqz v1, :cond_4e

    .line 2099
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_4e} :catch_50

    .line 2104
    .end local v7    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_4e
    :goto_4e
    const/4 v9, 0x0

    goto :goto_35

    .line 2100
    .restart local v7    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_50
    move-exception v7

    .line 2101
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .line 2086
    .end local v7    # "e":Ljava/io/IOException;
    :catch_55
    move-exception v7

    .line 2087
    .local v7, "e":Ljava/io/FileNotFoundException;
    :goto_56
    :try_start_56
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_a0

    .line 2094
    if-eqz v5, :cond_5e

    .line 2095
    :try_start_5b
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    .line 2096
    :cond_5e
    if-eqz v3, :cond_63

    .line 2097
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 2098
    :cond_63
    if-eqz v1, :cond_4e

    .line 2099
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_68} :catch_69

    goto :goto_4e

    .line 2100
    :catch_69
    move-exception v7

    .line 2101
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .line 2088
    .end local v7    # "e":Ljava/io/IOException;
    :catch_6e
    move-exception v7

    .line 2089
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_6f
    :try_start_6f
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_a0

    .line 2094
    if-eqz v5, :cond_77

    .line 2095
    :try_start_74
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    .line 2096
    :cond_77
    if-eqz v3, :cond_7c

    .line 2097
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 2098
    :cond_7c
    if-eqz v1, :cond_4e

    .line 2099
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_81} :catch_82

    goto :goto_4e

    .line 2100
    :catch_82
    move-exception v7

    .line 2101
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .line 2090
    .end local v7    # "e":Ljava/io/IOException;
    :catch_87
    move-exception v7

    .line 2091
    .local v7, "e":Ljava/lang/Exception;
    :goto_88
    :try_start_88
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_a0

    .line 2094
    if-eqz v5, :cond_90

    .line 2095
    :try_start_8d
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    .line 2096
    :cond_90
    if-eqz v3, :cond_95

    .line 2097
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 2098
    :cond_95
    if-eqz v1, :cond_4e

    .line 2099
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_9a} :catch_9b

    goto :goto_4e

    .line 2100
    :catch_9b
    move-exception v7

    .line 2101
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .line 2093
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_a0
    move-exception v9

    .line 2094
    :goto_a1
    if-eqz v5, :cond_a6

    .line 2095
    :try_start_a3
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    .line 2096
    :cond_a6
    if-eqz v3, :cond_ab

    .line 2097
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 2098
    :cond_ab
    if-eqz v1, :cond_b0

    .line 2099
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_b0} :catch_b1

    .line 2102
    :cond_b0
    :goto_b0
    throw v9

    .line 2100
    :catch_b1
    move-exception v7

    .line 2101
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b0

    .line 2093
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "md":Ljava/security/MessageDigest;
    :catchall_b6
    move-exception v9

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_a1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catchall_b9
    move-exception v9

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto :goto_a1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catchall_bd
    move-exception v9

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto :goto_a1

    .line 2090
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_c2
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_88

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_c5
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto :goto_88

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_c9
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto :goto_88

    .line 2088
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_ce
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_6f

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_d1
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto :goto_6f

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_d5
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto :goto_6f

    .line 2086
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_da
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_56

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_de
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_56

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_e3
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_56

    .line 2084
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_e9
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_3c

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_ed
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_3c

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_f2
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_3c
.end method

.method private getDigestOfFile(Ljava/lang/String;)[B
    .registers 12
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 2110
    const/4 v3, 0x0

    .line 2111
    .local v3, "dis":Ljava/security/DigestInputStream;
    const/4 v1, 0x0

    .line 2112
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    .line 2114
    .local v6, "fileStream":Ljava/io/InputStream;
    :try_start_3
    const-string v9, "SHA256"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 2115
    .local v8, "md":Ljava/security/MessageDigest;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_e} :catch_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_e} :catch_55
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_e} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_87
    .catchall {:try_start_3 .. :try_end_e} :catchall_a0

    .line 2116
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .local v7, "fileStream":Ljava/io/InputStream;
    :try_start_e
    new-instance v4, Ljava/security/DigestInputStream;

    invoke-direct {v4, v7, v8}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_13} :catch_e9
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_13} :catch_da
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_ce
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_c2
    .catchall {:try_start_e .. :try_end_13} :catchall_b6

    .line 2117
    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .local v4, "dis":Ljava/security/DigestInputStream;
    :try_start_13
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_18} :catch_ed
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_18} :catch_de
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_d1
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_c5
    .catchall {:try_start_13 .. :try_end_18} :catchall_b9

    .line 2119
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    :cond_18
    :try_start_18
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 2120
    .local v0, "b":I
    const/4 v9, -0x1

    if-ne v0, v9, :cond_18

    .line 2123
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_18 .. :try_end_22} :catch_f2
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_22} :catch_e3
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_22} :catch_d5
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_22} :catch_c9
    .catchall {:try_start_18 .. :try_end_22} :catchall_bd

    move-result-object v9

    .line 2134
    if-eqz v4, :cond_28

    .line 2135
    :try_start_25
    invoke-virtual {v4}, Ljava/security/DigestInputStream;->close()V

    .line 2136
    :cond_28
    if-eqz v2, :cond_2d

    .line 2137
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 2138
    :cond_2d
    if-eqz v7, :cond_32

    .line 2139
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_32} :catch_36

    :cond_32
    :goto_32
    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .line 2144
    .end local v0    # "b":I
    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .end local v8    # "md":Ljava/security/MessageDigest;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    :goto_35
    return-object v9

    .line 2140
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v0    # "b":I
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v8    # "md":Ljava/security/MessageDigest;
    :catch_36
    move-exception v5

    .line 2141
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32

    .line 2124
    .end local v0    # "b":I
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fileStream":Ljava/io/InputStream;
    .end local v8    # "md":Ljava/security/MessageDigest;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    :catch_3b
    move-exception v5

    .line 2125
    .local v5, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_3c
    :try_start_3c
    invoke-virtual {v5}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_a0

    .line 2134
    if-eqz v3, :cond_44

    .line 2135
    :try_start_41
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V

    .line 2136
    :cond_44
    if-eqz v1, :cond_49

    .line 2137
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 2138
    :cond_49
    if-eqz v6, :cond_4e

    .line 2139
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_4e} :catch_50

    .line 2144
    .end local v5    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_4e
    :goto_4e
    const/4 v9, 0x0

    goto :goto_35

    .line 2140
    .restart local v5    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_50
    move-exception v5

    .line 2141
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .line 2126
    .end local v5    # "e":Ljava/io/IOException;
    :catch_55
    move-exception v5

    .line 2127
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_56
    :try_start_56
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_a0

    .line 2134
    if-eqz v3, :cond_5e

    .line 2135
    :try_start_5b
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V

    .line 2136
    :cond_5e
    if-eqz v1, :cond_63

    .line 2137
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 2138
    :cond_63
    if-eqz v6, :cond_4e

    .line 2139
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_68} :catch_69

    goto :goto_4e

    .line 2140
    :catch_69
    move-exception v5

    .line 2141
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .line 2128
    .end local v5    # "e":Ljava/io/IOException;
    :catch_6e
    move-exception v5

    .line 2129
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_6f
    :try_start_6f
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_a0

    .line 2134
    if-eqz v3, :cond_77

    .line 2135
    :try_start_74
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V

    .line 2136
    :cond_77
    if-eqz v1, :cond_7c

    .line 2137
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 2138
    :cond_7c
    if-eqz v6, :cond_4e

    .line 2139
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_81} :catch_82

    goto :goto_4e

    .line 2140
    :catch_82
    move-exception v5

    .line 2141
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .line 2130
    .end local v5    # "e":Ljava/io/IOException;
    :catch_87
    move-exception v5

    .line 2131
    .local v5, "e":Ljava/lang/Exception;
    :goto_88
    :try_start_88
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_a0

    .line 2134
    if-eqz v3, :cond_90

    .line 2135
    :try_start_8d
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V

    .line 2136
    :cond_90
    if-eqz v1, :cond_95

    .line 2137
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 2138
    :cond_95
    if-eqz v6, :cond_4e

    .line 2139
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_9a} :catch_9b

    goto :goto_4e

    .line 2140
    :catch_9b
    move-exception v5

    .line 2141
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .line 2133
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_a0
    move-exception v9

    .line 2134
    :goto_a1
    if-eqz v3, :cond_a6

    .line 2135
    :try_start_a3
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V

    .line 2136
    :cond_a6
    if-eqz v1, :cond_ab

    .line 2137
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 2138
    :cond_ab
    if-eqz v6, :cond_b0

    .line 2139
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_b0} :catch_b1

    .line 2142
    :cond_b0
    :goto_b0
    throw v9

    .line 2140
    :catch_b1
    move-exception v5

    .line 2141
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b0

    .line 2133
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v8    # "md":Ljava/security/MessageDigest;
    :catchall_b6
    move-exception v9

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    goto :goto_a1

    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catchall_b9
    move-exception v9

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    goto :goto_a1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catchall_bd
    move-exception v9

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    goto :goto_a1

    .line 2130
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_c2
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    goto :goto_88

    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_c5
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    goto :goto_88

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_c9
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    goto :goto_88

    .line 2128
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_ce
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    goto :goto_6f

    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_d1
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    goto :goto_6f

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_d5
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    goto :goto_6f

    .line 2126
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_da
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    goto/16 :goto_56

    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_de
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_56

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_e3
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_56

    .line 2124
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_e9
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    goto/16 :goto_3c

    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_ed
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_3c

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_f2
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_3c
.end method

.method private getKapState()Z
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1603
    const/4 v5, 0x0

    .line 1605
    .local v5, "ret":Z
    const/4 v8, 0x1

    :try_start_4
    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "kapstate"

    aput-object v9, v0, v8

    .line 1609
    .local v0, "columns":[Ljava/lang/String;
    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1610
    .local v3, "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const-string/jumbo v8, "knox_active_protection"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v0, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 1613
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_3a

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3a

    .line 1614
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1615
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_3a

    .line 1616
    const-string/jumbo v8, "kapstate"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_36} :catch_56

    move-result v8

    if-ne v8, v6, :cond_54

    move v5, v6

    .line 1626
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_3a
    :goto_3a
    const-string v6, "TimaService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getKapState ret: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    return v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_54
    move v5, v7

    .line 1616
    goto :goto_3a

    .line 1620
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_56
    move-exception v2

    .line 1622
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "TimaService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getKapState failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method

.method static native get_tima_Version()Ljava/lang/String;
.end method

.method private handleBuildUpdate()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 1764
    :try_start_1
    const-string/jumbo v3, "ro.build.date"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1766
    .local v0, "currentBuild":Ljava/lang/String;
    const-string/jumbo v3, "persist.sys.kap.date"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1770
    .local v2, "oldBuild":Ljava/lang/String;
    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleBuildUpdate - currentBuild: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oldBuild: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", license: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mIsLicenseActive:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v6, :cond_7a

    .line 1775
    const-string v3, "TimaService"

    const-string/jumbo v4, "handleBuildUpdate - updated"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    const/4 v3, 0x1

    iput-boolean v3, p0, mIsBuildUpdate:Z

    .line 1777
    const-string/jumbo v3, "persist.sys.kap.date"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    invoke-direct {p0}, isZeroModel()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 1779
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, setKapMode(ZZ)V

    .line 1780
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, updateKapState(ZZ)V

    .line 1782
    :cond_69
    iget-boolean v3, p0, mIsLicenseActive:Z

    if-eqz v3, :cond_7a

    .line 1784
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, updateKapState(ZZ)V

    .line 1785
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, setKapMode(ZZ)V

    .line 1786
    const/4 v3, 0x0

    iput-boolean v3, p0, mIsBuildUpdate:Z
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7a} :catch_7b

    .line 1792
    .end local v0    # "currentBuild":Ljava/lang/String;
    .end local v2    # "oldBuild":Ljava/lang/String;
    :cond_7a
    :goto_7a
    return-void

    .line 1789
    :catch_7b
    move-exception v1

    .line 1790
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7a
.end method

.method private initCCMDatabase()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 926
    const-string v4, "TimaService"

    const-string v5, "TIMA: in initCCMDatabase"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :try_start_8
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/misc/tz_ccm"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 930
    .local v1, "dbDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_29

    .line 931
    const-string v4, "TimaService"

    const-string v5, "TIMA: in initCCMDatabase - creating CCM directory"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 933
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 934
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 937
    :cond_29
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/misc/tz_ccm/csr_profiles"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 938
    .local v0, "csrProfileDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4a

    .line 939
    const-string v4, "TimaService"

    const-string v5, "TIMA: in initCCMDatabase - creating CCM CSR profile directory"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 941
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 942
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 946
    :cond_4a
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/misc/tz_ccm/key_db"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 947
    .local v2, "dbFile":Ljava/io/File;
    const-string v4, "TimaService"

    const-string v5, "TIMA: in initCCMDatabase - creating CCM DB file"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 950
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_60} :catch_61

    .line 956
    .end local v0    # "csrProfileDir":Ljava/io/File;
    .end local v1    # "dbDir":Ljava/io/File;
    .end local v2    # "dbFile":Ljava/io/File;
    :goto_60
    return v6

    .line 951
    :catch_61
    move-exception v3

    .line 952
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "TimaService"

    const-string v5, "Exception in initCCMDatabase"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_60
.end method

.method private isDCMsupported()Z
    .registers 5

    .prologue
    .line 1841
    const/4 v1, 0x0

    .line 1842
    .local v1, "support":Z
    const-string/jumbo v2, "ro.product.name"

    const-string v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1843
    .local v0, "modelName":Ljava/lang/String;
    const-string/jumbo v2, "noble"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string/jumbo v2, "zen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string/jumbo v2, "zero"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1846
    :cond_25
    const-string v2, "TimaService"

    const-string v3, "DCM is supported"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    const/4 v1, 0x1

    .line 1850
    :cond_2d
    return v1
.end method

.method private isKapSupported()Z
    .registers 5

    .prologue
    .line 1830
    const/4 v1, 0x0

    .line 1831
    .local v1, "mIsKapSupported":Z
    const-string/jumbo v2, "ro.config.kap"

    const-string v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1832
    .local v0, "kapSupported":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1833
    const/4 v1, 0x1

    .line 1837
    :cond_14
    return v1
.end method

.method private isLicenseActive()Z
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1501
    const/4 v5, 0x0

    .line 1503
    .local v5, "ret":Z
    const/4 v8, 0x1

    :try_start_4
    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "licensestate"

    aput-object v9, v0, v8

    .line 1507
    .local v0, "columns":[Ljava/lang/String;
    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1508
    .local v3, "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const-string/jumbo v8, "knox_active_protection"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v0, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 1511
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_3a

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3a

    .line 1512
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1513
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_3a

    .line 1514
    const-string/jumbo v8, "licensestate"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_36} :catch_56

    move-result v8

    if-ne v8, v6, :cond_54

    move v5, v6

    .line 1524
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_3a
    :goto_3a
    const-string v6, "TimaService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isLicenseActive ret: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    return v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_54
    move v5, v7

    .line 1514
    goto :goto_3a

    .line 1518
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_56
    move-exception v2

    .line 1520
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "TimaService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isLicenseActive failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method

.method private isPackageExisted(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetPackage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 880
    const/4 v1, 0x0

    .line 881
    .local v1, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 883
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    :try_start_8
    invoke-virtual {v2, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_b} :catch_10

    move-result-object v1

    .line 884
    if-eqz v1, :cond_f

    .line 885
    const/4 v3, 0x1

    .line 890
    :cond_f
    :goto_f
    return v3

    .line 889
    :catch_10
    move-exception v0

    .line 890
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_f
.end method

.method private isZeroModel()Z
    .registers 5

    .prologue
    .line 1855
    const/4 v1, 0x0

    .line 1856
    .local v1, "isZeroModel":Z
    const-string/jumbo v2, "ro.config.kap_default_on"

    const-string v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1857
    .local v0, "isKapDefaultOn":Ljava/lang/String;
    if-eqz v0, :cond_16

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1858
    const/4 v1, 0x1

    .line 1860
    :cond_16
    return v1
.end method

.method static native is_kap_on()Z
.end method

.method private notifyKapEnabled()V
    .registers 7

    .prologue
    .line 1798
    const-string/jumbo v3, "persist.sys.kap.status"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1799
    .local v2, "kapStatus":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1800
    .local v1, "kapIntent":Landroid/content/Intent;
    const-string v3, "com.samsung.action.knox.kap.KAP_NOTIFICATION"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1801
    const-string v3, "com.samsung.klmsagent"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1804
    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyKapEnabled - kapStatus:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 1807
    invoke-static {}, is_kap_on()Z

    move-result v0

    .line 1809
    .local v0, "isKapOn":Z
    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyKapEnabled - isKapOn:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    if-eqz v0, :cond_68

    .line 1812
    const-string v3, "KAP_RP_MODE_STATUS"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1813
    iget-object v3, p0, mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1815
    :cond_68
    const-string/jumbo v3, "persist.sys.kap.status"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    .end local v0    # "isKapOn":Z
    :cond_70
    :goto_70
    return-void

    .line 1816
    :cond_71
    const-string/jumbo v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 1817
    invoke-static {}, is_kap_on()Z

    move-result v0

    .line 1819
    .restart local v0    # "isKapOn":Z
    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyKapEnabled - isKapOn:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    if-nez v0, :cond_a8

    .line 1822
    const-string v3, "KAP_RP_MODE_STATUS"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1823
    iget-object v3, p0, mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1825
    :cond_a8
    const-string/jumbo v3, "persist.sys.kap.status"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_70
.end method

.method private notifyTLCServiceStart(Ljava/lang/String;)I
    .registers 10
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, "Status":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 438
    .local v2, "startTime":J
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0xbb8

    cmp-long v1, v4, v6

    if-ltz v1, :cond_12

    if-eqz v0, :cond_18

    .line 440
    :cond_12
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_5

    .line 442
    :cond_18
    return v0
.end method

.method private registerBroadcastReceiver()V
    .registers 4

    .prologue
    .line 327
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 328
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    const-string v1, "com.samsung.action.knox.klms.KLMS_RP_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 331
    return-void
.end method

.method private registerTuiReceiver()V
    .registers 4

    .prologue
    .line 319
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 321
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 322
    new-instance v1, Lcom/android/server/TimaService$TuiReceiver;

    invoke-direct {v1}, Lcom/android/server/TimaService$TuiReceiver;-><init>()V

    .line 323
    .local v1, "tuiReceiver":Lcom/android/server/TimaService$TuiReceiver;
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 324
    return-void
.end method

.method private restartTLCService(Ljava/lang/String;)V
    .registers 4
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.security.tlc.restart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.security.tlc.restart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, notifyTLCServiceStart(Ljava/lang/String;)I

    .line 448
    return-void
.end method

.method static native timaAttestation([B[B)[B
.end method

.method static native timaCheckEvent(II)Ljava/lang/String;
.end method

.method static native timaCheckHistory(II)Ljava/lang/String;
.end method

.method static native timaDumpLog()[B
.end method

.method static native timaGetDeviceID()[B
.end method

.method static native timaKeystoreInit()I
.end method

.method static native timaKeystoreInstallKey(I[B)I
.end method

.method static native timaKeystoreRetrieveKey(I)[B
.end method

.method static native timaKeystoreShutdown()I
.end method

.method static native timaLaunchTui(Ljava/lang/String;Ljava/lang/String;[BZI)[B
.end method

.method static native timaLoadTui()I
.end method

.method static native timaSetLicenseStatus(Z)Z
.end method

.method static native timaTuiDecryptPinHash(Ljava/lang/String;[B)[B
.end method

.method static native timaTuiGetCerts()[B
.end method

.method static native timaTuiGetSecretDimension()[I
.end method

.method static native timaTuiInitSecret([BIILjava/lang/String;)I
.end method

.method static native timaTuiRegAppImage(Ljava/lang/String;[B)[I
.end method

.method static native timaUnloadTui()I
.end method

.method static native tima_Fips_KeyStore3_del(Ljava/lang/String;I)Z
.end method

.method static native tima_Fips_KeyStore3_exist(Ljava/lang/String;I)Z
.end method

.method static native tima_Fips_KeyStore3_get(Ljava/lang/String;[C)[B
.end method

.method static native tima_Fips_KeyStore3_getmtime(Ljava/lang/String;)J
.end method

.method static native tima_Fips_KeyStore3_init(Z)I
.end method

.method static native tima_Fips_KeyStore3_put(Ljava/lang/String;[BI[C)I
.end method

.method static native tima_Fips_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;
.end method

.method static native tima_KeyStore3_del(Ljava/lang/String;I)Z
.end method

.method static native tima_KeyStore3_exist(Ljava/lang/String;I)Z
.end method

.method static native tima_KeyStore3_get(Ljava/lang/String;[C)[B
.end method

.method static native tima_KeyStore3_getmtime(Ljava/lang/String;)J
.end method

.method static native tima_KeyStore3_init()I
.end method

.method static native tima_KeyStore3_put(Ljava/lang/String;[BI[C)I
.end method

.method static native tima_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;
.end method

.method private updateKapState(ZZ)V
    .registers 15
    .param p1, "isEnabled"    # Z
    .param p2, "isUserSet"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1533
    const/4 v5, 0x0

    .line 1534
    .local v5, "fileReader":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 1537
    .local v0, "buffReader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-direct {v4, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1546
    .local v4, "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const/4 v7, 0x0

    .line 1547
    .local v7, "isKapOn":Z
    if-eqz p2, :cond_53

    .line 1548
    move v7, p1

    .line 1571
    :goto_d
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1574
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v9, "TimaService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateKapState - isKapOn: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isUserSet: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    if-eqz v7, :cond_7d

    .line 1577
    const-string/jumbo v9, "kapstate"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1581
    :goto_42
    const-string/jumbo v9, "knox_active_protection"

    invoke-virtual {v4, v9, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_48} :catch_89
    .catchall {:try_start_2 .. :try_end_48} :catchall_b2

    .line 1589
    if-eqz v0, :cond_4d

    .line 1590
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1593
    :cond_4d
    if-eqz v5, :cond_52

    .line 1594
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 1597
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v7    # "isKapOn":Z
    :cond_52
    :goto_52
    return-void

    .line 1550
    .restart local v4    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v7    # "isKapOn":Z
    :cond_53
    :try_start_53
    new-instance v6, Ljava/io/FileReader;

    const-string v9, "/dev/knox_kap"

    invoke-direct {v6, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5a} :catch_89
    .catchall {:try_start_53 .. :try_end_5a} :catchall_b2

    .line 1551
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .local v6, "fileReader":Ljava/io/FileReader;
    if-eqz v6, :cond_d0

    .line 1553
    :try_start_5c
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_61} :catch_c5
    .catchall {:try_start_5c .. :try_end_61} :catchall_be

    .line 1555
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .local v1, "buffReader":Ljava/io/BufferedReader;
    if-eqz v1, :cond_cc

    .line 1556
    :try_start_63
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 1557
    .local v8, "outPut":Ljava/lang/String;
    if-eqz v8, :cond_cc

    .line 1558
    const-string v9, "11"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_79

    const-string v9, "01"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_76} :catch_c8
    .catchall {:try_start_63 .. :try_end_76} :catchall_c1

    move-result v9

    if-eqz v9, :cond_cc

    .line 1559
    :cond_79
    const/4 v7, 0x1

    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_d

    .line 1579
    .end local v8    # "outPut":Ljava/lang/String;
    .restart local v2    # "cv":Landroid/content/ContentValues;
    :cond_7d
    :try_start_7d
    const-string/jumbo v9, "kapstate"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_88} :catch_89
    .catchall {:try_start_7d .. :try_end_88} :catchall_b2

    goto :goto_42

    .line 1583
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v7    # "isKapOn":Z
    :catch_89
    move-exception v3

    .line 1585
    .local v3, "e":Ljava/lang/Exception;
    :goto_8a
    :try_start_8a
    const-string v9, "TimaService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateKapState failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_8a .. :try_end_a7} :catchall_b2

    .line 1589
    if-eqz v0, :cond_ac

    .line 1590
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1593
    :cond_ac
    if-eqz v5, :cond_52

    .line 1594
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    goto :goto_52

    .line 1589
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_b2
    move-exception v9

    :goto_b3
    if-eqz v0, :cond_b8

    .line 1590
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1593
    :cond_b8
    if-eqz v5, :cond_bd

    .line 1594
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    :cond_bd
    throw v9

    .line 1589
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "isKapOn":Z
    :catchall_be
    move-exception v9

    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_b3

    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catchall_c1
    move-exception v9

    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_b3

    .line 1583
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catch_c5
    move-exception v3

    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_8a

    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catch_c8
    move-exception v3

    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_8a

    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :cond_cc
    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_d

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :cond_d0
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_d
.end method

.method private updateLicenseState(Z)V
    .registers 8
    .param p1, "isLicenseActive"    # Z

    .prologue
    .line 1473
    :try_start_0
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1480
    .local v2, "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1482
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz p1, :cond_20

    .line 1483
    const-string/jumbo v3, "licensestate"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1487
    :goto_19
    const-string/jumbo v3, "knox_active_protection"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 1495
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :goto_1f
    return-void

    .line 1485
    .restart local v0    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :cond_20
    const-string/jumbo v3, "licensestate"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_19

    .line 1489
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :catch_2c
    move-exception v1

    .line 1491
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateLicenseState failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method private validateRequest(II)Z
    .registers 5
    .param p1, "opCode"    # I
    .param p2, "subCode"    # I

    .prologue
    .line 351
    const/4 v0, 0x1

    .line 352
    .local v0, "ret":Z
    const v1, 0xc350

    if-eq p1, v1, :cond_b

    const v1, 0xc351

    if-ne p1, v1, :cond_13

    :cond_b
    const/16 v1, 0x2710

    if-eq p2, v1, :cond_14

    const/16 v1, 0x2711

    if-eq p2, v1, :cond_14

    .line 356
    :cond_13
    const/4 v0, 0x0

    .line 358
    :cond_14
    return v0
.end method

.method private writeCertificateDigests(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V
    .registers 13
    .param p1, "baos"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "digestCount"    # I

    .prologue
    const/16 v0, 0xa

    .line 2035
    const-string v5, "TimaService"

    const-string v6, "TimaService.writeCertificateDigests()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    const/16 v5, 0x44

    :try_start_b
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2038
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2039
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2040
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 2041
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 2043
    .local v4, "signatures":[Landroid/content/pm/Signature;
    array-length v5, v4

    if-le v5, v0, :cond_7b

    .line 2044
    .local v0, "certificateCount":I
    :goto_27
    if-nez p3, :cond_2a

    .line 2046
    const/4 v0, 0x0

    .line 2049
    :cond_2a
    ushr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2050
    int-to-byte v5, v0

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2052
    mul-int/lit8 v1, v0, 0x20

    .line 2053
    .local v1, "certificateDigestBlockSize":I
    const/16 v5, 0x45

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2054
    ushr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2055
    int-to-byte v5, v1

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2057
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_46
    if-ge v2, v0, :cond_7e

    .line 2058
    const-string v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TimaService.writeCertificateDigests() signature "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    aget-object v8, v4, v2

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-direct {p0, v5}, getDigestOfBytes([B)[B

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 2057
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 2043
    .end local v0    # "certificateCount":I
    .end local v1    # "certificateDigestBlockSize":I
    .end local v2    # "i":I
    :cond_7b
    array-length v0, v4
    :try_end_7c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_7c} :catch_7f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_7c} :catch_7d

    goto :goto_27

    .line 2063
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "signatures":[Landroid/content/pm/Signature;
    :catch_7d
    move-exception v5

    .line 2066
    :cond_7e
    :goto_7e
    return-void

    .line 2061
    :catch_7f
    move-exception v5

    goto :goto_7e
.end method

.method private writePackageNames(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;I)V
    .registers 11
    .param p1, "baos"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "digestCount"    # I

    .prologue
    const/16 v6, 0x32

    .line 1969
    :try_start_2
    const-string v3, "TimaService"

    const-string v4, "TimaService.writePackageNames()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    const/16 v3, 0x42

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1973
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1975
    .local v1, "tempBaos":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, p3, :cond_43

    .line 1976
    aget-object v3, p2, v0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    if-le v3, v6, :cond_37

    .line 1977
    aget-object v3, p2, v0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x32

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1981
    :goto_2b
    add-int/lit8 v3, p3, -0x1

    if-ge v0, v3, :cond_34

    .line 1982
    const/16 v3, 0x7c

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1975
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1979
    :cond_37
    aget-object v3, p2, v0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_2b

    .line 1998
    .end local v0    # "i":I
    .end local v1    # "tempBaos":Ljava/io/ByteArrayOutputStream;
    :catch_41
    move-exception v3

    .line 2001
    :goto_42
    return-void

    .line 1986
    .restart local v0    # "i":I
    .restart local v1    # "tempBaos":Ljava/io/ByteArrayOutputStream;
    :cond_43
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1987
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v2, v3

    .line 1988
    .local v2, "totalLengthOfPackages":I
    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1989
    int-to-byte v3, v2

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1991
    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TimaService.writePackageNames() wrote \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TimaService.writePackageNames() totalLengthOfPackages "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TimaService.writePackageNames() tempBaos.toByteArray().length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1996
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_bc} :catch_41

    goto :goto_42
.end method

.method private writePackageVersions(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;I)V
    .registers 11
    .param p1, "baos"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "digestCount"    # I

    .prologue
    .line 2005
    const-string v4, "TimaService"

    const-string v5, "TimaService.writePackageVersions()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    const/16 v4, 0x43

    :try_start_9
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2013
    mul-int/lit8 v2, p3, 0x4

    .line 2014
    .local v2, "packageVersionsBlockSize":I
    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2015
    int-to-byte v4, v2

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2017
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    if-ge v0, p3, :cond_68

    .line 2018
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    aget-object v5, p2, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2019
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 2020
    .local v3, "versionCode":I
    const-string v4, "TimaService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TimaService.writePackageVersions() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " versionCode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    ushr-int/lit8 v4, v3, 0x18

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2022
    ushr-int/lit8 v4, v3, 0x10

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2023
    ushr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2024
    int-to-byte v4, v3

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_64
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_64} :catch_67

    .line 2017
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 2029
    .end local v0    # "i":I
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageVersionsBlockSize":I
    .end local v3    # "versionCode":I
    :catch_67
    move-exception v4

    .line 2032
    :cond_68
    return-void
.end method


# virtual methods
.method public declared-synchronized DCMSelfCheck()V
    .registers 8

    .prologue
    .line 451
    monitor-enter p0

    :try_start_1
    const-string v0, "Device_Default"
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_43

    .line 453
    .local v0, "dcm_default_alias":Ljava/lang/String;
    :try_start_3
    new-instance v4, Ljava/io/File;

    const-string v5, "/efs/prov_data/dcm/dcm.dat"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    .local v4, "src":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/misc/tz_dcm/dcm.dat"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    .local v1, "dest":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_46

    .line 456
    const-string v5, "DCM"

    invoke-direct {p0, v5}, restartTLCService(Ljava/lang/String;)V

    .line 457
    new-instance v2, Ljava/io/File;

    const-string v5, "/data/misc/tz_dcm/dcm.dat"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 458
    .local v2, "dest2":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 459
    const-string v5, "TimaService"

    const-string v6, "DCM certificate regeneration success!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_30} :catch_3a
    .catchall {:try_start_3 .. :try_end_30} :catchall_43

    .line 469
    .end local v1    # "dest":Ljava/io/File;
    .end local v2    # "dest2":Ljava/io/File;
    .end local v4    # "src":Ljava/io/File;
    :goto_30
    monitor-exit p0

    return-void

    .line 461
    .restart local v1    # "dest":Ljava/io/File;
    .restart local v2    # "dest2":Ljava/io/File;
    .restart local v4    # "src":Ljava/io/File;
    :cond_32
    :try_start_32
    const-string v5, "TimaService"

    const-string v6, "DCM certificate regeneration failed!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_39} :catch_3a
    .catchall {:try_start_32 .. :try_end_39} :catchall_43

    goto :goto_30

    .line 466
    .end local v1    # "dest":Ljava/io/File;
    .end local v2    # "dest2":Ljava/io/File;
    .end local v4    # "src":Ljava/io/File;
    :catch_3a
    move-exception v3

    .line 467
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3b
    const-string v5, "TimaService"

    const-string v6, "Could not get DCM certificate"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_43

    goto :goto_30

    .line 451
    .end local v0    # "dcm_default_alias":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_43
    move-exception v5

    monitor-exit p0

    throw v5

    .line 464
    .restart local v0    # "dcm_default_alias":Ljava/lang/String;
    .restart local v1    # "dest":Ljava/io/File;
    .restart local v4    # "src":Ljava/io/File;
    :cond_46
    :try_start_46
    const-string v5, "TimaService"

    const-string v6, "DCM certificate exists!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4d} :catch_3a
    .catchall {:try_start_46 .. :try_end_4d} :catchall_43

    goto :goto_30
.end method

.method public declared-synchronized FipsKeyStore3_del(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 704
    monitor-enter p0

    :try_start_2
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_del"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    if-nez p1, :cond_14

    .line 707
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_del, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_25

    .line 715
    :cond_12
    :goto_12
    monitor-exit p0

    return v0

    .line 711
    :cond_14
    :try_start_14
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 712
    invoke-static {p1, p2}, tima_Fips_KeyStore3_del(Ljava/lang/String;I)Z
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_25

    move-result v0

    goto :goto_12

    .line 704
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_exist(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 658
    monitor-enter p0

    :try_start_2
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_exist"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    if-nez p1, :cond_14

    .line 662
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_exist, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_25

    .line 670
    :cond_12
    :goto_12
    monitor-exit p0

    return v0

    .line 666
    :cond_14
    :try_start_14
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 667
    invoke-static {p1, p2}, tima_Fips_KeyStore3_exist(Ljava/lang/String;I)Z
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_25

    move-result v0

    goto :goto_12

    .line 658
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_get(Ljava/lang/String;[C)[B
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C

    .prologue
    const/4 v0, 0x0

    .line 674
    monitor-enter p0

    :try_start_2
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_get"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    if-eqz p1, :cond_d

    if-nez p2, :cond_16

    .line 677
    :cond_d
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_get, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_27

    .line 685
    :cond_14
    :goto_14
    monitor-exit p0

    return-object v0

    .line 681
    :cond_16
    :try_start_16
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 682
    invoke-static {p1, p2}, tima_Fips_KeyStore3_get(Ljava/lang/String;[C)[B
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_27

    move-result-object v0

    goto :goto_14

    .line 674
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_getmtime(Ljava/lang/String;)J
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, -0x1

    .line 689
    monitor-enter p0

    :try_start_3
    const-string v2, "TimaService"

    const-string v3, "TIMA3: FipsKeyStore3_getmtime"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    if-nez p1, :cond_15

    .line 692
    const-string v2, "TimaService"

    const-string v3, "TIMA3: FipsKeyStore3_getmtime, illegal arguments"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_26

    .line 700
    :cond_13
    :goto_13
    monitor-exit p0

    return-wide v0

    .line 696
    :cond_15
    :try_start_15
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 697
    invoke-static {p1}, tima_Fips_KeyStore3_getmtime(Ljava/lang/String;)J
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_26

    move-result-wide v0

    goto :goto_13

    .line 689
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_init(Z)I
    .registers 4
    .param p1, "selfTestOnly"    # Z

    .prologue
    .line 634
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: FipsKeyStore3_init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 637
    invoke-static {p1}, tima_Fips_KeyStore3_init(Z)I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1c

    move-result v0

    .line 640
    :goto_18
    monitor-exit p0

    return v0

    :cond_1a
    const/4 v0, -0x1

    goto :goto_18

    .line 634
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_put(Ljava/lang/String;[BI[C)I
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "uid"    # I
    .param p4, "password"    # [C

    .prologue
    const/4 v0, -0x1

    .line 644
    monitor-enter p0

    :try_start_2
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_put"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    if-nez p4, :cond_18

    .line 647
    :cond_f
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_put, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_29

    .line 654
    :cond_16
    :goto_16
    monitor-exit p0

    return v0

    .line 651
    :cond_18
    :try_start_18
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 652
    invoke-static {p1, p2, p3, p4}, tima_Fips_KeyStore3_put(Ljava/lang/String;[BI[C)I
    :try_end_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_29

    move-result v0

    goto :goto_16

    .line 644
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 719
    monitor-enter p0

    :try_start_2
    const-string v2, "TimaService"

    const-string v3, "TIMA3: FipsKeyStore3_saw"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    if-nez p1, :cond_14

    .line 722
    const-string v2, "TimaService"

    const-string v3, "TIMA3: FipsKeyStore3_saw, illegal arguments"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_38

    .line 732
    :cond_12
    :goto_12
    monitor-exit p0

    return-object v1

    .line 726
    :cond_14
    :try_start_14
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 727
    invoke-static {p1, p2}, tima_Fips_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v0

    .line 728
    .local v0, "tmp":[Ljava/lang/Object;
    if-eqz v0, :cond_12

    .line 729
    invoke-static {p1, p2}, tima_Fips_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_38

    goto :goto_12

    .line 719
    .end local v0    # "tmp":[Ljava/lang/Object;
    :catchall_38
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized KeyStore3_del(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 601
    monitor-enter p0

    :try_start_2
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_del"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    if-nez p1, :cond_14

    .line 604
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_del, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_25

    .line 612
    :cond_12
    :goto_12
    monitor-exit p0

    return v0

    .line 608
    :cond_14
    :try_start_14
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 609
    invoke-static {p1, p2}, tima_KeyStore3_del(Ljava/lang/String;I)Z
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_25

    move-result v0

    goto :goto_12

    .line 601
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_exist(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 555
    monitor-enter p0

    :try_start_2
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_exist"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    if-nez p1, :cond_14

    .line 559
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_exist, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_25

    .line 567
    :cond_12
    :goto_12
    monitor-exit p0

    return v0

    .line 563
    :cond_14
    :try_start_14
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 564
    invoke-static {p1, p2}, tima_KeyStore3_exist(Ljava/lang/String;I)Z
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_25

    move-result v0

    goto :goto_12

    .line 555
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_get(Ljava/lang/String;[C)[B
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C

    .prologue
    const/4 v0, 0x0

    .line 571
    monitor-enter p0

    :try_start_2
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_get"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    if-eqz p1, :cond_d

    if-nez p2, :cond_16

    .line 574
    :cond_d
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_get, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_27

    .line 582
    :cond_14
    :goto_14
    monitor-exit p0

    return-object v0

    .line 578
    :cond_16
    :try_start_16
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 579
    invoke-static {p1, p2}, tima_KeyStore3_get(Ljava/lang/String;[C)[B
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_27

    move-result-object v0

    goto :goto_14

    .line 571
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_getmtime(Ljava/lang/String;)J
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, -0x1

    .line 586
    monitor-enter p0

    :try_start_3
    const-string v2, "TimaService"

    const-string v3, "TIMA3: KeyStore3_getmtime"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    if-nez p1, :cond_15

    .line 589
    const-string v2, "TimaService"

    const-string v3, "TIMA3: KeyStore3_getmtime, illegal arguments"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_26

    .line 597
    :cond_13
    :goto_13
    monitor-exit p0

    return-wide v0

    .line 593
    :cond_15
    :try_start_15
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 594
    invoke-static {p1}, tima_KeyStore3_getmtime(Ljava/lang/String;)J
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_26

    move-result-wide v0

    goto :goto_13

    .line 586
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_init()I
    .registers 3

    .prologue
    .line 531
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: KeyStore3_init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 534
    invoke-static {}, tima_KeyStore3_init()I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1c

    move-result v0

    .line 537
    :goto_18
    monitor-exit p0

    return v0

    :cond_1a
    const/4 v0, -0x1

    goto :goto_18

    .line 531
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_put(Ljava/lang/String;[BI[C)I
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "uid"    # I
    .param p4, "password"    # [C

    .prologue
    const/4 v0, -0x1

    .line 541
    monitor-enter p0

    :try_start_2
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_put"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    if-nez p4, :cond_18

    .line 544
    :cond_f
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_put, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_29

    .line 551
    :cond_16
    :goto_16
    monitor-exit p0

    return v0

    .line 548
    :cond_18
    :try_start_18
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 549
    invoke-static {p1, p2, p3, p4}, tima_KeyStore3_put(Ljava/lang/String;[BI[C)I
    :try_end_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_29

    move-result v0

    goto :goto_16

    .line 541
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 616
    monitor-enter p0

    :try_start_2
    const-string v2, "TimaService"

    const-string v3, "TIMA3: KeyStore3_saw"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    if-nez p1, :cond_14

    .line 619
    const-string v2, "TimaService"

    const-string v3, "TIMA3: KeyStore3_del, illegal arguments"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_38

    .line 629
    :cond_12
    :goto_12
    monitor-exit p0

    return-object v1

    .line 623
    :cond_14
    :try_start_14
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 624
    invoke-static {p1, p2}, tima_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v0

    .line 625
    .local v0, "tmp":[Ljava/lang/Object;
    if-eqz v0, :cond_12

    .line 626
    invoke-static {p1, p2}, tima_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_38

    goto :goto_12

    .line 616
    .end local v0    # "tmp":[Ljava/lang/Object;
    :catchall_38
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized attestation([BI)[B
    .registers 9
    .param p1, "nonce"    # [B
    .param p2, "callerUid"    # I

    .prologue
    .line 510
    monitor-enter p0

    :try_start_1
    const-string v1, "attestation"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 511
    const-string v1, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TIMA: attestation for callerUid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-string v1, "TimaService"

    const-string v4, "TimaService.attestation()"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_3b

    move-result-wide v2

    .line 516
    .local v2, "id":J
    :try_start_29
    invoke-direct {p0, p2}, getCollectorBlob(I)[B

    move-result-object v0

    .line 517
    .local v0, "blob":[B
    invoke-static {p1, v0}, timaAttestation([B[B)[B
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_36

    move-result-object v1

    .line 519
    :try_start_31
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3b

    monitor-exit p0

    return-object v1

    .end local v0    # "blob":[B
    :catchall_36
    move-exception v1

    :try_start_37
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_3b

    .line 510
    .end local v2    # "id":J
    :catchall_3b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized ccmRegisterForDefaultCertificate(ILjava/lang/String;Ljava/lang/String;Z)I
    .registers 11
    .param p1, "uid"    # I
    .param p2, "regPassword"    # Ljava/lang/String;
    .param p3, "oldPassword"    # Ljava/lang/String;
    .param p4, "isTrustedBootRequired"    # Z

    .prologue
    .line 964
    monitor-enter p0

    :try_start_1
    const-string v1, "TimaService"

    const-string v2, "TIMA3: in ccmRegisterForDefaultCertificate"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 969
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 970
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    .line 972
    :cond_1d
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string/jumbo v4, "tima"

    const-string v5, "ccmRegisterForDefaultCertificate"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7f

    .line 975
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security Exception Occurred while pid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] with uid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] trying to access methodName ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ccmRegisterForDefaultCertificate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] in ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "tima"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 982
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0
    :try_end_7c
    .catchall {:try_start_1 .. :try_end_7c} :catchall_7c

    .line 964
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catchall_7c
    move-exception v1

    monitor-exit p0

    throw v1

    .line 986
    :cond_7f
    :try_start_7f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 987
    const/4 v1, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v1, v2}, ccm_register_for_default_cert(II)J
    :try_end_8b
    .catchall {:try_start_7f .. :try_end_8b} :catchall_7c

    move-result-wide v2

    long-to-int v1, v2

    .line 991
    :goto_8d
    monitor-exit p0

    return v1

    :cond_8f
    const/4 v1, -0x1

    goto :goto_8d
.end method

.method public declared-synchronized checkEvent(II)Ljava/lang/String;
    .registers 7
    .param p1, "operation"    # I
    .param p2, "subject"    # I

    .prologue
    .line 362
    monitor-enter p0

    :try_start_1
    const-string v1, "TimaService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIMA: checkEvent, operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, mPowerManager:Landroid/os/PowerManager;

    .line 366
    iget-object v1, p0, mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "TimaService"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 368
    invoke-direct {p0, p1, p2}, validateRequest(II)Z
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_56

    move-result v1

    if-nez v1, :cond_44

    const/4 v0, 0x0

    .line 376
    :goto_42
    monitor-exit p0

    return-object v0

    .line 370
    :cond_44
    :try_start_44
    iget-object v1, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 371
    invoke-static {p1, p2}, timaCheckEvent(II)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "timaResult":Ljava/lang/String;
    iget-object v1, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 374
    invoke-virtual {p0, v0}, displayEvent(Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_44 .. :try_end_55} :catchall_56

    goto :goto_42

    .line 362
    .end local v0    # "timaResult":Ljava/lang/String;
    :catchall_56
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized checkHistory(II)Ljava/lang/String;
    .registers 7
    .param p1, "operation"    # I
    .param p2, "subject"    # I

    .prologue
    .line 380
    monitor-enter p0

    :try_start_1
    const-string v1, "TimaService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIMA: checkHistory, operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-direct {p0, p1, p2}, validateRequest(II)Z
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_34

    move-result v1

    if-nez v1, :cond_2c

    .line 384
    const/4 v0, 0x0

    .line 389
    :goto_2a
    monitor-exit p0

    return-object v0

    .line 387
    :cond_2c
    :try_start_2c
    invoke-static {p1, p2}, timaCheckHistory(II)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "timaResult":Ljava/lang/String;
    invoke-virtual {p0, v0}, displayEvent(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_34

    goto :goto_2a

    .line 380
    .end local v0    # "timaResult":Ljava/lang/String;
    :catchall_34
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public displayEvent(Ljava/lang/String;)V
    .registers 25
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 742
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "TIMA MEASUREMENT Result: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    if-nez p1, :cond_1f

    .line 876
    :goto_1e
    return-void

    .line 746
    :cond_1f
    sget-object v20, mEventList:Ljava/util/LinkedList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->size()I

    move-result v20

    sget v21, TIMA_MAX_EVENTS:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_32

    .line 747
    sget-object v20, mEventList:Ljava/util/LinkedList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 751
    :cond_32
    :try_start_32
    move-object/from16 v0, p0

    iget-object v0, v0, timaISLClbk:Landroid/service/tima/ITimaISLCallback;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4e

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, timaISLClbk:Landroid/service/tima/ITimaISLCallback;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/service/tima/ITimaISLCallback;->onTimaViolation(Ljava/lang/String;)V

    .line 753
    const-string v20, "TimaService"

    const-string v21, "Reporting violation to ISL"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_4e} :catch_c2

    .line 760
    :cond_4e
    :goto_4e
    const-string v19, " "

    .line 762
    .local v19, "time":Ljava/lang/String;
    :try_start_50
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_5b} :catch_cb

    move-result-object v19

    .line 766
    :goto_5c
    sget-object v20, mEventList:Ljava/util/LinkedList;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 769
    const-string v20, "TIMA_STATUS="

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 770
    .local v16, "statusIdx":I
    const/16 v20, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    .line 771
    .local v15, "sepIdx":I
    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_a4

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v15, v0, :cond_d5

    .line 772
    :cond_a4
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "TIMA MEASUREMENT invalid status: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 755
    .end local v15    # "sepIdx":I
    .end local v16    # "statusIdx":I
    .end local v19    # "time":Ljava/lang/String;
    :catch_c2
    move-exception v9

    .line 756
    .local v9, "e":Landroid/os/RemoteException;
    const-string v20, "TimaService"

    const-string v21, "Exception"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 763
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v19    # "time":Ljava/lang/String;
    :catch_cb
    move-exception v9

    .line 764
    .local v9, "e":Ljava/lang/Exception;
    const-string v20, "TimaService"

    const-string/jumbo v21, "toLocalString() exception"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 777
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v15    # "sepIdx":I
    .restart local v16    # "statusIdx":I
    :cond_d5
    const-string v20, "0"

    const-string v21, "TIMA_STATUS="

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    add-int v21, v21, v16

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10b

    .line 778
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "TIMA MEASUREMENT success status: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 780
    :cond_10b
    const-string v20, "1"

    const-string v21, "TIMA_STATUS="

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    add-int v21, v21, v16

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_141

    .line 781
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "TIMA Internal Error: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 786
    :cond_141
    const-string v20, "MSG="

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 787
    .local v14, "msgIdx":I
    const/16 v20, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    .line 788
    const-string v13, ""

    .line 789
    .local v13, "msg":Ljava/lang/String;
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v14, v0, :cond_163

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v15, v0, :cond_181

    .line 790
    :cond_163
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "TIMA MEASUREMENT invalid result: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 794
    :cond_181
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v20, "samsung.intent.action.knox.TIMA_NOTIFICATION"

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 796
    .local v3, "TimaEventIntent":Landroid/content/Intent;
    const-string v20, "MSG="

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v20, v20, v14

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 799
    const-string/jumbo v20, "lkm_modified"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1f3

    .line 800
    const-string v20, "TIMA_STATUS="

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 812
    :goto_1b1
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v20, "yyyyMMddHHmmss"

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 813
    .local v7, "dateFormat":Ljava/text/DateFormat;
    new-instance v20, Ljava/util/Date;

    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 816
    .local v6, "date":Ljava/lang/String;
    :try_start_1c6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v20

    const-string/jumbo v21, "mkdir -p /data/misc/tima"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1d0
    .catch Ljava/io/IOException; {:try_start_1c6 .. :try_end_1d0} :catch_242

    .line 822
    :goto_1d0
    :try_start_1d0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v20

    const-string v21, "chmod 701 /data/misc/tima"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1d9
    .catch Ljava/io/IOException; {:try_start_1d0 .. :try_end_1d9} :catch_24b

    .line 828
    :goto_1d9
    :try_start_1d9
    new-instance v8, Ljava/io/File;

    const-string v20, "/data/misc/tima"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 829
    .local v8, "delAllTimaLogFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 831
    .local v10, "files":[Ljava/io/File;
    move-object v5, v10

    .local v5, "arr$":[Ljava/io/File;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1e9
    if-ge v11, v12, :cond_258

    aget-object v18, v5, v11

    .line 832
    .local v18, "timafile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z
    :try_end_1f0
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_1f0} :catch_254

    .line 831
    add-int/lit8 v11, v11, 0x1

    goto :goto_1e9

    .line 801
    .end local v5    # "arr$":[Ljava/io/File;
    .end local v6    # "date":Ljava/lang/String;
    .end local v7    # "dateFormat":Ljava/text/DateFormat;
    .end local v8    # "delAllTimaLogFile":Ljava/io/File;
    .end local v10    # "files":[Ljava/io/File;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v18    # "timafile":Ljava/io/File;
    :cond_1f3
    const-string/jumbo v20, "seandroid_off"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_20a

    .line 802
    const-string v20, "TIMA_STATUS="

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1b1

    .line 803
    :cond_20a
    const-string/jumbo v20, "kern_modified"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_221

    .line 804
    const-string v20, "TIMA_STATUS="

    const/16 v21, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1b1

    .line 805
    :cond_221
    const-string/jumbo v20, "kern_metadata_modified"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_239

    .line 806
    const-string v20, "TIMA_STATUS="

    const/16 v21, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1b1

    .line 808
    :cond_239
    const-string v20, "TimaService"

    const-string v21, "TIMA: Unknown message from TIMA APPs. Not notifying the user"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 817
    .restart local v6    # "date":Ljava/lang/String;
    .restart local v7    # "dateFormat":Ljava/text/DateFormat;
    :catch_242
    move-exception v9

    .line 818
    .local v9, "e":Ljava/io/IOException;
    const-string v20, "TimaService"

    const-string v21, "Failed to create /data/misc/tima"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d0

    .line 823
    .end local v9    # "e":Ljava/io/IOException;
    :catch_24b
    move-exception v9

    .line 824
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v20, "TimaService"

    const-string v21, "Failed to change permissions of /data/misc/tima"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d9

    .line 835
    .end local v9    # "e":Ljava/io/IOException;
    :catch_254
    move-exception v9

    .line 836
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 839
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_258
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/data/misc/tima/tima.log."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 842
    .local v17, "tima_log_file":Ljava/lang/String;
    :try_start_26d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "/system/bin/tima_dump_log -s 20 -d 40 -o "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_28b
    .catch Ljava/io/IOException; {:try_start_26d .. :try_end_28b} :catch_2b7

    .line 848
    :goto_28b
    :try_start_28b
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "chmod 640 "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2a9
    .catch Ljava/io/IOException; {:try_start_28b .. :try_end_2a9} :catch_2d5

    .line 853
    :goto_2a9
    sget-boolean v20, iBootCompleted:Z

    if-nez v20, :cond_2f3

    .line 854
    const-string v20, "TimaService"

    const-string/jumbo v21, "displayEvent(): iBootCompleted==false"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 843
    :catch_2b7
    move-exception v9

    .line 844
    .local v9, "e":Ljava/io/IOException;
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Failed to execute: /system/bin/tima_dump_log -s 20 -d 40 -o "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28b

    .line 849
    .end local v9    # "e":Ljava/io/IOException;
    :catch_2d5
    move-exception v9

    .line 850
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Failed to change permissions of "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a9

    .line 857
    .end local v9    # "e":Ljava/io/IOException;
    :cond_2f3
    const-string v20, "com.samsung.android.securitylogagent"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 858
    const-string v20, "TIMA_LOG_FILE"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "com.samsung.android.sm"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, isPackageExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_348

    .line 862
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v20, "samsung.intent.action.knox.TIMA_NOTIFICATION"

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 863
    .local v4, "TimaSmartManagerIntent":Landroid/content/Intent;
    const-string v20, "com.samsung.android.sm"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 866
    .end local v4    # "TimaSmartManagerIntent":Landroid/content/Intent;
    :cond_348
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v20, "samsung.intent.action.knox.TIMA_NOTIFICATION"

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 867
    .restart local v4    # "TimaSmartManagerIntent":Landroid/content/Intent;
    const-string v20, "com.android.settings"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1e
.end method

.method public declared-synchronized dumpLog()[B
    .registers 8

    .prologue
    .line 1026
    monitor-enter p0

    :try_start_1
    const-string v4, "TimaService"

    const-string v5, "TIMA: timaDumpLog"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1029
    .local v1, "uid":I
    if-eqz v1, :cond_32

    const/16 v4, 0x3e8

    if-eq v1, v4, :cond_32

    const/16 v4, 0x7d0

    if-eq v1, v4, :cond_32

    .line 1032
    const-string v4, "TimaService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not ROOT_UID/SYSTEM_UID/SHELL_UID, return null, uid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_3e

    .line 1033
    const/4 v0, 0x0

    .line 1039
    :goto_30
    monitor-exit p0

    return-object v0

    .line 1036
    :cond_32
    :try_start_32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1037
    .local v2, "token":J
    invoke-static {}, timaDumpLog()[B

    move-result-object v0

    .line 1038
    .local v0, "result":[B
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_3e

    goto :goto_30

    .line 1026
    .end local v0    # "result":[B
    .end local v1    # "uid":I
    .end local v2    # "token":J
    :catchall_3e
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getDeviceID()[B
    .registers 3

    .prologue
    .line 525
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: getDeviceID"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-static {}, timaGetDeviceID()[B
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 525
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEventList(I)Ljava/util/List;
    .registers 3
    .param p1, "subject"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 738
    sget-object v0, mEventList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public declared-synchronized getTimaVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 918
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: in getTimaVersion"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-static {}, get_tima_Version()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 918
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTuiVersion()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1362
    const-string v1, "TimaService"

    const-string v2, "TIMA3: get TUI version"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    const/4 v0, 0x0

    .line 1365
    .local v0, "ver":Ljava/lang/String;
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1366
    invoke-virtual {p0}, loadTui()I

    move-result v1

    if-nez v1, :cond_1f

    .line 1367
    const-string v0, "3.0"

    .line 1368
    invoke-virtual {p0}, unloadTui()I

    .line 1371
    :cond_1f
    return-object v0
.end method

.method public handleLicenseStatus(IZ)V
    .registers 11
    .param p1, "notiTrigger"    # I
    .param p2, "licenseStatus"    # Z

    .prologue
    .line 1636
    const-string v3, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleLicenseStatus - notiTrigger: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", licenseStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    :try_start_23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1640
    .local v4, "token":J
    const/4 v1, 0x0

    .line 1641
    .local v1, "kapState":Z
    packed-switch p1, :pswitch_data_da

    .line 1693
    :cond_2b
    :goto_2b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1698
    .end local v1    # "kapState":Z
    .end local v4    # "token":J
    :goto_2e
    return-void

    .line 1643
    .restart local v1    # "kapState":Z
    .restart local v4    # "token":J
    :pswitch_2f
    const/4 v3, 0x1

    iput-boolean v3, p0, mIsLicenseActive:Z

    .line 1644
    const/4 v3, 0x1

    invoke-direct {p0, v3}, updateLicenseState(Z)V

    .line 1645
    invoke-direct {p0}, isZeroModel()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1647
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, updateKapState(ZZ)V

    .line 1648
    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6}, setKapMode(ZZ)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_46} :catch_47

    goto :goto_2b

    .line 1694
    .end local v1    # "kapState":Z
    .end local v4    # "token":J
    :catch_47
    move-exception v0

    .line 1696
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleLicenseStatus exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 1652
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "kapState":Z
    .restart local v4    # "token":J
    :pswitch_66
    const/4 v3, 0x0

    :try_start_67
    iput-boolean v3, p0, mIsLicenseActive:Z

    .line 1653
    const/4 v3, 0x0

    invoke-direct {p0, v3}, updateLicenseState(Z)V

    .line 1654
    const/4 v3, 0x0

    invoke-static {v3}, timaSetLicenseStatus(Z)Z

    .line 1655
    invoke-direct {p0}, isZeroModel()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1657
    invoke-direct {p0}, getKapState()Z

    move-result v1

    .line 1658
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, setKapMode(ZZ)V

    goto :goto_2b

    .line 1662
    :pswitch_80
    if-eqz p2, :cond_ba

    .line 1663
    const/4 v3, 0x1

    iput-boolean v3, p0, mIsLicenseActive:Z

    .line 1664
    const/4 v3, 0x1

    invoke-direct {p0, v3}, updateLicenseState(Z)V

    .line 1667
    iget-boolean v3, p0, mIsBuildUpdate:Z

    if-eqz v3, :cond_a2

    .line 1669
    invoke-direct {p0}, isZeroModel()Z

    move-result v3

    if-nez v3, :cond_9d

    .line 1670
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, updateKapState(ZZ)V

    .line 1671
    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6}, setKapMode(ZZ)V

    .line 1673
    :cond_9d
    const/4 v3, 0x0

    invoke-static {v3}, timaSetLicenseStatus(Z)Z

    goto :goto_2b

    .line 1675
    :cond_a2
    const-string/jumbo v3, "security.knox_kap_mode"

    const-string v6, "NONE"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1676
    .local v2, "kapStatus":Ljava/lang/String;
    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1677
    const/4 v3, 0x1

    invoke-static {v3}, timaSetLicenseStatus(Z)Z

    goto/16 :goto_2b

    .line 1681
    .end local v2    # "kapStatus":Ljava/lang/String;
    :cond_ba
    const/4 v3, 0x0

    iput-boolean v3, p0, mIsLicenseActive:Z

    .line 1682
    const/4 v3, 0x0

    invoke-direct {p0, v3}, updateLicenseState(Z)V

    .line 1683
    iget-boolean v3, p0, mIsBuildUpdate:Z

    if-eqz v3, :cond_d3

    .line 1684
    invoke-direct {p0}, getKapState()Z

    move-result v1

    .line 1685
    invoke-direct {p0}, isZeroModel()Z

    move-result v3

    if-nez v3, :cond_d3

    .line 1686
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, setKapMode(ZZ)V

    .line 1689
    :cond_d3
    const/4 v3, 0x0

    invoke-static {v3}, timaSetLicenseStatus(Z)Z
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_d7} :catch_47

    goto/16 :goto_2b

    .line 1641
    nop

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_66
        :pswitch_80
    .end packed-switch
.end method

.method public isKapEnforced()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 1705
    const-string v1, "TimaService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isKapEnforced - mIsLicenseActive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mIsLicenseActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", iBootCompleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, iBootCompleted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsBuildUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mIsBuildUpdate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    iget-boolean v1, p0, mIsLicenseActive:Z

    if-eqz v1, :cond_39

    .line 1715
    :cond_38
    :goto_38
    return v0

    .line 1711
    :cond_39
    iget-boolean v1, p0, mIsBuildUpdate:Z

    if-eqz v1, :cond_41

    sget-boolean v1, iBootCompleted:Z

    if-eqz v1, :cond_38

    .line 1715
    :cond_41
    const/4 v0, 0x0

    goto :goto_38
.end method

.method public declared-synchronized keystoreInit()I
    .registers 3

    .prologue
    .line 393
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: keystoreInit"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-direct {p0}, enforcePermission()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 396
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 397
    :cond_26
    invoke-static {}, timaKeystoreInit()I
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_31

    move-result v0

    .line 402
    :goto_2a
    monitor-exit p0

    return v0

    .line 399
    :cond_2c
    const/4 v0, -0x1

    goto :goto_2a

    .line 402
    :cond_2e
    const/16 v0, 0x64

    goto :goto_2a

    .line 393
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keystoreInstallKey(I[B)I
    .registers 8
    .param p1, "ID"    # I
    .param p2, "key"    # [B

    .prologue
    const/16 v4, 0x20

    const/4 v1, -0x1

    .line 406
    monitor-enter p0

    :try_start_4
    const-string v2, "TimaService"

    const-string v3, "TIMA: keystoreInstallKey"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-direct {p0}, enforcePermission()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 408
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 409
    if-eqz p2, :cond_22

    array-length v2, p2

    if-nez v2, :cond_2b

    .line 410
    :cond_22
    const-string v2, "TimaService"

    const-string v3, "TIMA: Invalid key data"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_5a

    .line 432
    :cond_29
    :goto_29
    monitor-exit p0

    return v1

    .line 414
    :cond_2b
    :try_start_2b
    array-length v2, p2

    if-ge v4, v2, :cond_5d

    .line 415
    const-string v2, "TimaService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TIMA: Key length("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") exceeds max key length("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_2b .. :try_end_59} :catchall_5a

    goto :goto_29

    .line 406
    :catchall_5a
    move-exception v1

    monitor-exit p0

    throw v1

    .line 421
    :cond_5d
    const/16 v1, 0x20

    :try_start_5f
    new-array v0, v1, [B

    .line 424
    .local v0, "keyBytes":[B
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 426
    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, p2

    invoke-static {p2, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 427
    invoke-static {p1, v0}, timaKeystoreInstallKey(I[B)I
    :try_end_6e
    .catchall {:try_start_5f .. :try_end_6e} :catchall_5a

    move-result v1

    goto :goto_29

    .line 432
    .end local v0    # "keyBytes":[B
    :cond_70
    const/16 v1, 0x64

    goto :goto_29
.end method

.method public declared-synchronized keystoreRetrieveKey(I)[B
    .registers 5
    .param p1, "ID"    # I

    .prologue
    const/4 v0, 0x0

    .line 472
    monitor-enter p0

    :try_start_2
    const-string v1, "TimaService"

    const-string v2, "TIMA: keystoreRetrieveKey"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-direct {p0}, enforcePermission()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 475
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 476
    :cond_27
    invoke-static {p1}, timaKeystoreRetrieveKey(I)[B
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_2d

    move-result-object v0

    .line 481
    :cond_2b
    monitor-exit p0

    return-object v0

    .line 472
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keystoreShutdown()I
    .registers 3

    .prologue
    .line 485
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: keystoreShutdown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-direct {p0}, enforcePermission()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 487
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 488
    :cond_26
    invoke-static {}, timaKeystoreShutdown()I
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_31

    move-result v0

    .line 493
    :goto_2a
    monitor-exit p0

    return v0

    .line 490
    :cond_2c
    const/4 v0, -0x1

    goto :goto_2a

    .line 493
    :cond_2e
    const/16 v0, 0x64

    goto :goto_2a

    .line 485
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized launchTui(Ljava/lang/String;[BZI)[B
    .registers 8
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "nonce"    # [B
    .param p3, "verify"    # Z
    .param p4, "min_pin_length"    # I

    .prologue
    const/4 v0, 0x0

    .line 1065
    monitor-enter p0

    :try_start_2
    const-string v1, "TimaService"

    const-string v2, "TIMA3: launch TUI"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1068
    if-eqz p1, :cond_19

    if-nez p2, :cond_22

    .line 1069
    :cond_19
    const-string v1, "TimaService"

    const-string v2, "Null pointer received!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_28

    .line 1074
    :cond_20
    :goto_20
    monitor-exit p0

    return-object v0

    .line 1072
    :cond_22
    const/4 v0, 0x0

    :try_start_23
    invoke-static {p1, v0, p2, p3, p4}, timaLaunchTui(Ljava/lang/String;Ljava/lang/String;[BZI)[B
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_28

    move-result-object v0

    goto :goto_20

    .line 1065
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized launchTuiWithSecretId(Ljava/lang/String;Ljava/lang/String;[BZI)[B
    .registers 9
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "secret_id"    # Ljava/lang/String;
    .param p3, "nonce"    # [B
    .param p4, "verify"    # Z
    .param p5, "min_pin_length"    # I

    .prologue
    const/4 v0, 0x0

    .line 1079
    monitor-enter p0

    :try_start_2
    const-string v1, "TimaService"

    const-string v2, "TIMA3: launch TUI"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1082
    if-eqz p1, :cond_19

    if-nez p3, :cond_22

    .line 1083
    :cond_19
    const-string v1, "TimaService"

    const-string v2, "Null pointer received!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_27

    .line 1088
    :cond_20
    :goto_20
    monitor-exit p0

    return-object v0

    .line 1086
    :cond_22
    :try_start_22
    invoke-static {p1, p2, p3, p4, p5}, timaLaunchTui(Ljava/lang/String;Ljava/lang/String;[BZI)[B
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_27

    move-result-object v0

    goto :goto_20

    .line 1079
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadTlcServer(Ljava/lang/String;)I
    .registers 10
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 995
    monitor-enter p0

    const/4 v0, 0x0

    .line 996
    .local v0, "START_IN_HERE":Z
    :try_start_3
    const-string v5, "TimaService"

    const-string v6, "TIMA3: in loadTlcServer"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "3.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 1000
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1001
    .local v2, "tlcBinder":Landroid/os/IBinder;
    if-eqz v2, :cond_25

    .line 1002
    const-string v5, "TimaService"

    const-string v6, "TIMA3: tlc_server already loaded"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_68

    .line 1022
    .end local v2    # "tlcBinder":Landroid/os/IBinder;
    :goto_23
    monitor-exit p0

    return v4

    .line 1007
    .restart local v2    # "tlcBinder":Landroid/os/IBinder;
    :cond_25
    if-eqz v0, :cond_6b

    .line 1010
    :try_start_27
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/system/bin/tlc_server "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 1011
    .local v3, "tlcProcess":Ljava/lang/Process;
    const-string v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start tlc_server for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " done"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_60} :catch_61
    .catchall {:try_start_27 .. :try_end_60} :catchall_68

    goto :goto_23

    .line 1012
    .end local v3    # "tlcProcess":Ljava/lang/Process;
    :catch_61
    move-exception v1

    .line 1013
    .local v1, "e":Ljava/io/IOException;
    :try_start_62
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_68

    .line 995
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "tlcBinder":Landroid/os/IBinder;
    :catchall_68
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1016
    .restart local v2    # "tlcBinder":Landroid/os/IBinder;
    :cond_6b
    :try_start_6b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "persist.security.tlc."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const-string v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start tlc_server for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " done : setprop"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catchall {:try_start_6b .. :try_end_a6} :catchall_68

    goto/16 :goto_23

    .line 1022
    .end local v2    # "tlcBinder":Landroid/os/IBinder;
    :cond_a8
    const/4 v4, -0x1

    goto/16 :goto_23
.end method

.method public declared-synchronized loadTui()I
    .registers 3

    .prologue
    .line 1043
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: load TUI"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1046
    const-string v0, "TimaService"

    const-string v1, "Really start to load"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    invoke-static {}, timaLoadTui()I
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_23

    move-result v0

    .line 1049
    :goto_1f
    monitor-exit p0

    return v0

    :cond_21
    const/4 v0, -0x1

    goto :goto_1f

    .line 1043
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setISLCallback(Landroid/service/tima/ITimaISLCallback;)V
    .registers 4
    .param p1, "timaISLClbk"    # Landroid/service/tima/ITimaISLCallback;

    .prologue
    .line 910
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: setISLCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iput-object p1, p0, timaISLClbk:Landroid/service/tima/ITimaISLCallback;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 914
    monitor-exit p0

    return-void

    .line 910
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setKapMode(ZZ)V
    .registers 9
    .param p1, "isEnabled"    # Z
    .param p2, "notifyKapState"    # Z

    .prologue
    .line 1719
    invoke-direct {p0}, enforcePermission()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 1722
    :try_start_6
    const-string v1, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setKapMode - isEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", notifyKapState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1727
    .local v2, "token":J
    if-eqz p1, :cond_54

    .line 1728
    const-string/jumbo v1, "security.knox_kap_mode"

    const-string/jumbo v4, "true"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    const-string/jumbo v1, "persist.sys.kap.status"

    const-string/jumbo v4, "true"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    :goto_41
    if-nez p2, :cond_4b

    .line 1741
    const-string/jumbo v1, "persist.sys.kap.status"

    const-string v4, "NONE"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    :cond_4b
    if-eqz p2, :cond_50

    .line 1746
    invoke-direct {p0, p1, p2}, updateKapState(ZZ)V

    .line 1749
    :cond_50
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1757
    .end local v2    # "token":J
    :goto_53
    return-void

    .line 1731
    .restart local v2    # "token":J
    :cond_54
    invoke-static {}, is_kap_on()Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 1732
    const-string/jumbo v1, "persist.sys.kap.status"

    const-string/jumbo v4, "false"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    :goto_63
    const-string/jumbo v1, "security.knox_kap_mode"

    const-string/jumbo v4, "false"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6c} :catch_6d

    goto :goto_41

    .line 1750
    .end local v2    # "token":J
    :catch_6d
    move-exception v0

    .line 1752
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setKapMode exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 1735
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "token":J
    :cond_8c
    :try_start_8c
    const-string/jumbo v1, "persist.sys.kap.status"

    const-string v4, "NONE"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_94} :catch_6d

    goto :goto_63

    .line 1755
    .end local v2    # "token":J
    :cond_95
    const-string v1, "TimaService"

    const-string v4, "No Permission : setKapMode"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53
.end method

.method public declared-synchronized tuiDecryptPinHash(Ljava/lang/String;[B)[B
    .registers 7
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "buffer"    # [B

    .prologue
    const/4 v1, 0x0

    .line 1455
    monitor-enter p0

    :try_start_2
    const-string v2, "TimaService"

    const-string v3, "TIMA3: TUI decrypt PIN hash"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1458
    invoke-virtual {p0, p2}, verifyCertChain([B)[B

    move-result-object v0

    .line 1459
    .local v0, "verified":[B
    if-nez v0, :cond_24

    .line 1460
    const-string v2, "TimaService"

    const-string v3, "Certificate chain verification failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_29

    .line 1465
    .end local v0    # "verified":[B
    :cond_22
    :goto_22
    monitor-exit p0

    return-object v1

    .line 1463
    .restart local v0    # "verified":[B
    :cond_24
    :try_start_24
    invoke-static {p1, v0}, timaTuiDecryptPinHash(Ljava/lang/String;[B)[B
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_29

    move-result-object v1

    goto :goto_22

    .line 1455
    .end local v0    # "verified":[B
    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized tuiGetCerts()[B
    .registers 3

    .prologue
    .line 1425
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: TUI Get Certs"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1427
    invoke-static {}, timaTuiGetCerts()[B
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1c

    move-result-object v0

    .line 1429
    :goto_18
    monitor-exit p0

    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_18

    .line 1425
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tuiGetSecretDimension()[I
    .registers 3

    .prologue
    .line 1446
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: TUI get secret dimension"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1449
    invoke-static {}, timaTuiGetSecretDimension()[I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1c

    move-result-object v0

    .line 1451
    :goto_18
    monitor-exit p0

    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_18

    .line 1446
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tuiInitSecret([BIILjava/lang/String;)I
    .registers 9
    .param p1, "buffer"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "secret_id"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 1105
    monitor-enter p0

    :try_start_2
    const-string v2, "TimaService"

    const-string v3, "TIMA3: TUI init secret"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1108
    invoke-virtual {p0, p1}, verifyCertChain([B)[B

    move-result-object v0

    .line 1109
    .local v0, "verified":[B
    if-nez v0, :cond_24

    .line 1110
    const-string v2, "TimaService"

    const-string v3, "Certificate chain verification failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_29

    .line 1115
    .end local v0    # "verified":[B
    :cond_22
    :goto_22
    monitor-exit p0

    return v1

    .line 1113
    .restart local v0    # "verified":[B
    :cond_24
    :try_start_24
    invoke-static {v0, p2, p3, p4}, timaTuiInitSecret([BIILjava/lang/String;)I
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_29

    move-result v1

    goto :goto_22

    .line 1105
    .end local v0    # "verified":[B
    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized tuiInitSecretFile(Ljava/lang/String;IILjava/lang/String;)I
    .registers 23
    .param p1, "file_name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "secret_id"    # Ljava/lang/String;

    .prologue
    .line 1119
    monitor-enter p0

    :try_start_1
    const-string v13, "TimaService"

    const-string v14, "TIMA3: TUI init secret file"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    const/4 v11, -0x1

    .line 1122
    .local v11, "ret":I
    invoke-virtual/range {p0 .. p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v13

    const-string v14, "3.0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_a1

    move-result v13

    if-eqz v13, :cond_48

    .line 1123
    const/4 v9, 0x0

    .line 1124
    .local v9, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 1126
    .local v4, "dis":Ljava/io/DataInputStream;
    :try_start_17
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1127
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_4a

    .line 1128
    const-string v13, "TimaService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot open secret file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_42} :catch_7d
    .catchall {:try_start_17 .. :try_end_42} :catchall_a4

    .line 1145
    :goto_42
    :try_start_42
    invoke-static {v9}, closeQuietly(Ljava/io/InputStream;)V

    .line 1146
    invoke-static {v4}, closeQuietly(Ljava/io/InputStream;)V
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_a1

    .line 1150
    .end local v4    # "dis":Ljava/io/DataInputStream;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    :cond_48
    :goto_48
    monitor-exit p0

    return v11

    .line 1130
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    :cond_4a
    :try_start_4a
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v13, v14

    new-array v8, v13, [B

    .line 1131
    .local v8, "fileData":[B
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_56} :catch_7d
    .catchall {:try_start_4a .. :try_end_56} :catchall_a4

    .line 1132
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .local v10, "fis":Ljava/io/FileInputStream;
    :try_start_56
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5b} :catch_b3
    .catchall {:try_start_56 .. :try_end_5b} :catchall_ac

    .line 1133
    .end local v4    # "dis":Ljava/io/DataInputStream;
    .local v5, "dis":Ljava/io/DataInputStream;
    :try_start_5b
    invoke-virtual {v5, v8}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1135
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, verifyCertChain([B)[B

    move-result-object v12

    .line 1136
    .local v12, "verified":[B
    if-nez v12, :cond_70

    .line 1137
    const-string v13, "TimaService"

    const-string v14, "Certificate chain verification failed!"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto :goto_42

    .line 1139
    .end local v4    # "dis":Ljava/io/DataInputStream;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :cond_70
    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v12, v0, v1, v2}, timaTuiInitSecret([BIILjava/lang/String;)I
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_79} :catch_b6
    .catchall {:try_start_5b .. :try_end_79} :catchall_af

    move-result v11

    move-object v4, v5

    .end local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto :goto_42

    .line 1142
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fileData":[B
    .end local v12    # "verified":[B
    :catch_7d
    move-exception v6

    .line 1143
    .local v6, "e":Ljava/lang/Exception;
    :goto_7e
    :try_start_7e
    const-string v13, "TimaService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catchall {:try_start_7e .. :try_end_9a} :catchall_a4

    .line 1145
    :try_start_9a
    invoke-static {v9}, closeQuietly(Ljava/io/InputStream;)V

    .line 1146
    invoke-static {v4}, closeQuietly(Ljava/io/InputStream;)V
    :try_end_a0
    .catchall {:try_start_9a .. :try_end_a0} :catchall_a1

    goto :goto_48

    .line 1119
    .end local v4    # "dis":Ljava/io/DataInputStream;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "ret":I
    :catchall_a1
    move-exception v13

    monitor-exit p0

    throw v13

    .line 1145
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "ret":I
    :catchall_a4
    move-exception v13

    :goto_a5
    :try_start_a5
    invoke-static {v9}, closeQuietly(Ljava/io/InputStream;)V

    .line 1146
    invoke-static {v4}, closeQuietly(Ljava/io/InputStream;)V

    throw v13
    :try_end_ac
    .catchall {:try_start_a5 .. :try_end_ac} :catchall_a1

    .line 1145
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "fileData":[B
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catchall_ac
    move-exception v13

    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto :goto_a5

    .end local v4    # "dis":Ljava/io/DataInputStream;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catchall_af
    move-exception v13

    move-object v4, v5

    .end local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto :goto_a5

    .line 1142
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catch_b3
    move-exception v6

    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto :goto_7e

    .end local v4    # "dis":Ljava/io/DataInputStream;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catch_b6
    move-exception v6

    move-object v4, v5

    .end local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto :goto_7e
.end method

.method public declared-synchronized tuiInitSecretMemoryFile(Landroid/os/ParcelFileDescriptor;IIILjava/lang/String;)I
    .registers 21
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "secret_id"    # Ljava/lang/String;

    .prologue
    .line 1154
    monitor-enter p0

    :try_start_1
    const-string v12, "TimaService"

    const-string v13, "TIMA3: TUI init secret via memory file"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    const/4 v10, -0x1

    .line 1158
    .local v10, "ret":I
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v12

    const-string v13, "3.0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_76

    .line 1159
    if-nez p1, :cond_21

    .line 1160
    const-string v12, "TimaService"

    const-string v13, "PFD is null!"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_ac

    .line 1161
    const/4 v12, -0x1

    .line 1192
    :goto_1f
    monitor-exit p0

    return v12

    .line 1163
    :cond_21
    if-gtz p2, :cond_2c

    .line 1164
    :try_start_23
    const-string v12, "TimaService"

    const-string v13, "Memory file size is invalid"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_ac

    .line 1165
    const/4 v12, -0x1

    goto :goto_1f

    .line 1167
    :cond_2c
    const/4 v7, 0x0

    .line 1168
    .local v7, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 1170
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_2e
    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_37} :catch_c9
    .catchall {:try_start_2e .. :try_end_37} :catchall_ba

    .line 1171
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_37
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3c} :catch_cb
    .catchall {:try_start_37 .. :try_end_3c} :catchall_c2

    .line 1172
    .end local v7    # "in":Ljava/io/InputStream;
    .local v8, "in":Ljava/io/InputStream;
    :try_start_3c
    move/from16 v0, p2

    new-array v9, v0, [B

    .line 1173
    .local v9, "result":[B
    const/4 v12, 0x0

    move/from16 v0, p2

    invoke-virtual {v8, v9, v12, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 1174
    .local v3, "bytes":I
    move/from16 v0, p2

    if-eq v3, v0, :cond_78

    .line 1175
    const-string v12, "TimaService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read error from Secret image memory file! read "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " != size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_6f} :catch_86
    .catchall {:try_start_3c .. :try_end_6f} :catchall_c5

    .line 1176
    const/4 v10, -0x1

    .line 1188
    :goto_70
    :try_start_70
    invoke-static {v6}, closeQuietly(Ljava/io/InputStream;)V

    .line 1189
    invoke-static {v8}, closeQuietly(Ljava/io/InputStream;)V
    :try_end_76
    .catchall {:try_start_70 .. :try_end_76} :catchall_ac

    .end local v3    # "bytes":I
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v9    # "result":[B
    :cond_76
    :goto_76
    move v12, v10

    .line 1192
    goto :goto_1f

    .line 1178
    .restart local v3    # "bytes":I
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v9    # "result":[B
    :cond_78
    :try_start_78
    invoke-virtual {p0, v9}, verifyCertChain([B)[B

    move-result-object v11

    .line 1179
    .local v11, "verified":[B
    if-nez v11, :cond_af

    .line 1180
    const-string v12, "TimaService"

    const-string v13, "Certificate chain verification failed!"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_85} :catch_86
    .catchall {:try_start_78 .. :try_end_85} :catchall_c5

    goto :goto_70

    .line 1185
    .end local v3    # "bytes":I
    .end local v9    # "result":[B
    .end local v11    # "verified":[B
    :catch_86
    move-exception v4

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .line 1186
    .end local v8    # "in":Ljava/io/InputStream;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v7    # "in":Ljava/io/InputStream;
    :goto_89
    :try_start_89
    const-string v12, "TimaService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception occurred: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catchall {:try_start_89 .. :try_end_a5} :catchall_ba

    .line 1188
    :try_start_a5
    invoke-static {v5}, closeQuietly(Ljava/io/InputStream;)V

    .line 1189
    invoke-static {v7}, closeQuietly(Ljava/io/InputStream;)V
    :try_end_ab
    .catchall {:try_start_a5 .. :try_end_ab} :catchall_ac

    goto :goto_76

    .line 1154
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "in":Ljava/io/InputStream;
    .end local v10    # "ret":I
    :catchall_ac
    move-exception v12

    monitor-exit p0

    throw v12

    .line 1182
    .restart local v3    # "bytes":I
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v9    # "result":[B
    .restart local v10    # "ret":I
    .restart local v11    # "verified":[B
    :cond_af
    :try_start_af
    move/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v11, v0, v1, v2}, timaTuiInitSecret([BIILjava/lang/String;)I
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b8} :catch_86
    .catchall {:try_start_af .. :try_end_b8} :catchall_c5

    move-result v10

    goto :goto_70

    .line 1188
    .end local v3    # "bytes":I
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v9    # "result":[B
    .end local v11    # "verified":[B
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/InputStream;
    :catchall_ba
    move-exception v12

    :goto_bb
    :try_start_bb
    invoke-static {v5}, closeQuietly(Ljava/io/InputStream;)V

    .line 1189
    invoke-static {v7}, closeQuietly(Ljava/io/InputStream;)V

    throw v12
    :try_end_c2
    .catchall {:try_start_bb .. :try_end_c2} :catchall_ac

    .line 1188
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_c2
    move-exception v12

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_bb

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/InputStream;
    :catchall_c5
    move-exception v12

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "in":Ljava/io/InputStream;
    .restart local v7    # "in":Ljava/io/InputStream;
    goto :goto_bb

    .line 1185
    :catch_c9
    move-exception v4

    goto :goto_89

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_cb
    move-exception v4

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_89
.end method

.method public declared-synchronized tuiRegAppImage(Ljava/lang/String;[B)[I
    .registers 6
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "png_buffer"    # [B

    .prologue
    const/4 v0, 0x0

    .line 1375
    monitor-enter p0

    :try_start_2
    const-string v1, "TimaService"

    const-string v2, "TIMA3: TUI Register App Image"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1377
    if-eqz p1, :cond_19

    if-nez p2, :cond_22

    .line 1378
    :cond_19
    const-string v1, "TimaService"

    const-string v2, "Null pointer received!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_27

    .line 1383
    :cond_20
    :goto_20
    monitor-exit p0

    return-object v0

    .line 1381
    :cond_22
    :try_start_22
    invoke-static {p1, p2}, timaTuiRegAppImage(Ljava/lang/String;[B)[I
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_27

    move-result-object v0

    goto :goto_20

    .line 1375
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tuiRegAppImageFile(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 15
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "png_file"    # Ljava/lang/String;

    .prologue
    .line 1388
    monitor-enter p0

    :try_start_1
    const-string v8, "TimaService"

    const-string v9, "TIMA3: TUI Register App Image File"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    const/4 v7, 0x0

    .line 1392
    .local v7, "ret":[I
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_52

    .line 1393
    if-eqz p1, :cond_19

    if-nez p2, :cond_23

    .line 1394
    :cond_19
    const-string v8, "TimaService"

    const-string v9, "Null string received in tuiRegAppImageFile!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_93

    .line 1395
    const/4 v8, 0x0

    .line 1420
    :goto_21
    monitor-exit p0

    return-object v8

    .line 1398
    :cond_23
    const/4 v5, 0x0

    .line 1399
    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 1401
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_25
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1402
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_54

    .line 1403
    const-string v8, "TimaService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot open App image file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_4c} :catch_6f
    .catchall {:try_start_25 .. :try_end_4c} :catchall_96

    .line 1415
    :goto_4c
    :try_start_4c
    invoke-static {v5}, closeQuietly(Ljava/io/InputStream;)V

    .line 1416
    invoke-static {v0}, closeQuietly(Ljava/io/InputStream;)V
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_93

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    :cond_52
    :goto_52
    move-object v8, v7

    .line 1420
    goto :goto_21

    .line 1405
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :cond_54
    :try_start_54
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v4, v8, [B

    .line 1406
    .local v4, "fileData":[B
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_60} :catch_6f
    .catchall {:try_start_54 .. :try_end_60} :catchall_96

    .line 1407
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_60
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_65} :catch_a5
    .catchall {:try_start_60 .. :try_end_65} :catchall_9e

    .line 1408
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_65
    invoke-virtual {v1, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1410
    invoke-static {p1, v4}, timaTuiRegAppImage(Ljava/lang/String;[B)[I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6b} :catch_a8
    .catchall {:try_start_65 .. :try_end_6b} :catchall_a1

    move-result-object v7

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_4c

    .line 1412
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileData":[B
    :catch_6f
    move-exception v2

    .line 1413
    .local v2, "e":Ljava/lang/Exception;
    :goto_70
    :try_start_70
    const-string v8, "TimaService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_70 .. :try_end_8c} :catchall_96

    .line 1415
    :try_start_8c
    invoke-static {v5}, closeQuietly(Ljava/io/InputStream;)V

    .line 1416
    invoke-static {v0}, closeQuietly(Ljava/io/InputStream;)V
    :try_end_92
    .catchall {:try_start_8c .. :try_end_92} :catchall_93

    goto :goto_52

    .line 1388
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "ret":[I
    :catchall_93
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1415
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "ret":[I
    :catchall_96
    move-exception v8

    :goto_97
    :try_start_97
    invoke-static {v5}, closeQuietly(Ljava/io/InputStream;)V

    .line 1416
    invoke-static {v0}, closeQuietly(Ljava/io/InputStream;)V

    throw v8
    :try_end_9e
    .catchall {:try_start_97 .. :try_end_9e} :catchall_93

    .line 1415
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fileData":[B
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_9e
    move-exception v8

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_97

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_a1
    move-exception v8

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_97

    .line 1412
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_a5
    move-exception v2

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_70

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_a8
    move-exception v2

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_70
.end method

.method public declared-synchronized unloadTui()I
    .registers 3

    .prologue
    .line 1054
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: unload TUI"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1057
    invoke-static {}, timaUnloadTui()I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1c

    move-result v0

    .line 1059
    :goto_18
    monitor-exit p0

    return v0

    :cond_1a
    const/4 v0, -0x1

    goto :goto_18

    .line 1054
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized verifyCertChain([B)[B
    .registers 25
    .param p1, "buffer"    # [B

    .prologue
    .line 1197
    monitor-enter p0

    const/4 v8, 0x0

    .local v8, "i":I
    const/4 v2, 0x0

    .local v2, "aes_len":I
    const/4 v10, 0x0

    .local v10, "img_len":I
    const/16 v16, 0x0

    .local v16, "sig_len":I
    const/4 v6, 0x0

    .local v6, "cert_len":I
    const/4 v11, 0x0

    .line 1199
    .local v11, "len_without_cert":I
    :try_start_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1201
    .local v4, "cert_array":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x16

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3b

    .line 1202
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Secret image buffer is too small: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_14f

    .line 1203
    const/16 p1, 0x0

    .line 1317
    .end local p1    # "buffer":[B
    :goto_39
    monitor-exit p0

    return-object p1

    .line 1206
    .restart local p1    # "buffer":[B
    :cond_3b
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .local v9, "i":I
    :try_start_3d
    aget-byte v20, p1, v8
    :try_end_3f
    .catchall {:try_start_3d .. :try_end_3f} :catchall_354

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v2, v20, 0x8

    .line 1207
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    :try_start_49
    aget-byte v20, p1, v9

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    add-int v2, v2, v20

    .line 1209
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Encrypted AES key length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    add-int/lit8 v8, v2, 0x2

    .line 1213
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v8, v0, :cond_98

    .line 1214
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Encrypted AES key is over buffer length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    const/16 p1, 0x0

    goto :goto_39

    .line 1218
    :cond_98
    add-int/lit8 v8, v8, 0x10

    .line 1219
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v8, v0, :cond_c4

    .line 1220
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "IV is over buffer length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catchall {:try_start_49 .. :try_end_c0} :catchall_14f

    .line 1221
    const/16 p1, 0x0

    goto/16 :goto_39

    .line 1224
    :cond_c4
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .restart local v9    # "i":I
    :try_start_c6
    aget-byte v20, p1, v8
    :try_end_c8
    .catchall {:try_start_c6 .. :try_end_c8} :catchall_354

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v10, v20, 0x18

    .line 1225
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    :try_start_d2
    aget-byte v20, p1, v9
    :try_end_d4
    .catchall {:try_start_d2 .. :try_end_d4} :catchall_14f

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x10

    add-int v10, v10, v20

    .line 1226
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .restart local v9    # "i":I
    :try_start_e0
    aget-byte v20, p1, v8
    :try_end_e2
    .catchall {:try_start_e0 .. :try_end_e2} :catchall_354

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x8

    add-int v10, v10, v20

    .line 1227
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    :try_start_ee
    aget-byte v20, p1, v9

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    add-int v10, v10, v20

    .line 1229
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Encrypted image length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    add-int/2addr v8, v10

    .line 1233
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v8, v0, :cond_13d

    .line 1234
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Encrypted image is over buffer length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    const/16 p1, 0x0

    goto/16 :goto_39

    .line 1238
    :cond_13d
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v8, v0, :cond_152

    .line 1239
    const-string v20, "TimaService"

    const-string v21, "No signature is included in secret image buffer, skip signature verification"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14d
    .catchall {:try_start_ee .. :try_end_14d} :catchall_14f

    goto/16 :goto_39

    .line 1197
    .end local v4    # "cert_array":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catchall_14f
    move-exception v20

    :goto_150
    monitor-exit p0

    throw v20

    .line 1243
    .restart local v4    # "cert_array":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_152
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .restart local v9    # "i":I
    :try_start_154
    aget-byte v20, p1, v8
    :try_end_156
    .catchall {:try_start_154 .. :try_end_156} :catchall_354

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v16, v20, 0x8

    .line 1244
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    :try_start_160
    aget-byte v20, p1, v9

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    add-int v16, v16, v20

    .line 1246
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Signature length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    add-int v8, v8, v16

    .line 1249
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v8, v0, :cond_1b2

    .line 1250
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Signature is over buffer length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ae
    .catchall {:try_start_160 .. :try_end_1ae} :catchall_14f

    .line 1251
    const/16 p1, 0x0

    goto/16 :goto_39

    .line 1254
    :cond_1b2
    move v11, v8

    move v9, v8

    .line 1257
    .end local v8    # "i":I
    .restart local v9    # "i":I
    :goto_1b4
    :try_start_1b4
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0
    :try_end_1b9
    .catchall {:try_start_1b4 .. :try_end_1b9} :catchall_354

    move/from16 v0, v20

    if-ge v9, v0, :cond_24a

    .line 1258
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    :try_start_1bf
    aget-byte v20, p1, v9
    :try_end_1c1
    .catchall {:try_start_1bf .. :try_end_1c1} :catchall_14f

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v6, v20, 0x8

    .line 1259
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .restart local v9    # "i":I
    :try_start_1cb
    aget-byte v20, p1, v8

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    add-int v6, v6, v20

    .line 1260
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Certificate length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    add-int v20, v9, v6

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_21e

    .line 1262
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Certificate is over buffer length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_219
    .catchall {:try_start_1cb .. :try_end_219} :catchall_354

    .line 1263
    const/16 p1, 0x0

    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_39

    .line 1268
    .end local v8    # "i":I
    .restart local v9    # "i":I
    :cond_21e
    :try_start_21e
    const-string v20, "X509"

    invoke-static/range {v20 .. v20}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v20

    new-instance v21, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v6}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual/range {v20 .. v21}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 1271
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_236
    .catch Ljava/lang/Exception; {:try_start_21e .. :try_end_236} :catch_23b
    .catchall {:try_start_21e .. :try_end_236} :catchall_354

    .line 1278
    add-int v8, v9, v6

    .end local v9    # "i":I
    .restart local v8    # "i":I
    move v9, v8

    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto/16 :goto_1b4

    .line 1273
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    :catch_23b
    move-exception v7

    .line 1274
    .local v7, "e":Ljava/lang/Exception;
    :try_start_23c
    const-string v20, "TimaService"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_245
    .catchall {:try_start_23c .. :try_end_245} :catchall_354

    .line 1275
    const/16 p1, 0x0

    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_39

    .line 1283
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "i":I
    .restart local v9    # "i":I
    :cond_24a
    :try_start_24a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;

    .line 1284
    .local v5, "cert_chain":[Ljava/security/cert/X509Certificate;
    const-string v20, "X509"

    invoke-static/range {v20 .. v20}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v17

    .line 1285
    .local v17, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/16 v20, 0x0

    check-cast v20, Ljava/security/KeyStore;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1286
    invoke-virtual/range {v17 .. v17}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v18

    .line 1287
    .local v18, "tms":[Ljavax/net/ssl/TrustManager;
    const/16 v20, 0x0

    aget-object v19, v18, v20

    check-cast v19, Ljavax/net/ssl/X509TrustManager;

    .line 1288
    .local v19, "xtm":Ljavax/net/ssl/X509TrustManager;
    const-string v20, "RSA"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v5, v1}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 1289
    const-string v20, "TimaService"

    const-string v21, "Certificate chain is verified successfully"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    array-length v0, v5

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    aget-object v20, v5, v20

    invoke-virtual/range {v20 .. v20}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    check-cast v12, Ljava/security/interfaces/RSAPublicKey;

    .line 1293
    .local v12, "pubkey":Ljava/security/interfaces/RSAPublicKey;
    invoke-interface {v12}, Ljava/security/interfaces/RSAPublicKey;->getEncoded()[B

    move-result-object v13

    .line 1294
    .local v13, "pubkey_encoded":[B
    new-instance v15, Lorg/apache/http/util/ByteArrayBuffer;

    add-int/lit8 v20, v11, 0x2

    array-length v0, v13

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    invoke-direct {v15, v0}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 1295
    .local v15, "rb":Lorg/apache/http/util/ByteArrayBuffer;
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1, v11}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 1296
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v14, v0, [B

    .line 1297
    .local v14, "pubkey_len":[B
    const/16 v20, 0x0

    array-length v0, v13

    move/from16 v21, v0

    shr-int/lit8 v21, v21, 0x8

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v14, v20

    .line 1298
    const/16 v20, 0x1

    array-length v0, v13

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v14, v20

    .line 1300
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "pubkey: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget-byte v22, v14, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-byte v22, v14, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    const/16 v20, 0x0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v14, v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 1303
    const/16 v20, 0x0

    array-length v0, v13

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v13, v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 1305
    invoke-virtual {v15}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_320
    .catch Ljava/security/cert/CertificateException; {:try_start_24a .. :try_end_320} :catch_324
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24a .. :try_end_320} :catch_331
    .catch Ljava/lang/Exception; {:try_start_24a .. :try_end_320} :catch_33e
    .catchall {:try_start_24a .. :try_end_320} :catchall_354

    move-result-object p1

    .end local p1    # "buffer":[B
    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_39

    .line 1308
    .end local v5    # "cert_chain":[Ljava/security/cert/X509Certificate;
    .end local v8    # "i":I
    .end local v12    # "pubkey":Ljava/security/interfaces/RSAPublicKey;
    .end local v13    # "pubkey_encoded":[B
    .end local v14    # "pubkey_len":[B
    .end local v15    # "rb":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v17    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v18    # "tms":[Ljavax/net/ssl/TrustManager;
    .end local v19    # "xtm":Ljavax/net/ssl/X509TrustManager;
    .restart local v9    # "i":I
    .restart local p1    # "buffer":[B
    :catch_324
    move-exception v7

    .line 1309
    .local v7, "e":Ljava/security/cert/CertificateException;
    :try_start_325
    const-string v20, "TimaService"

    const-string v21, "Certificate chain cannot be verify!"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    const/16 p1, 0x0

    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_39

    .line 1311
    .end local v7    # "e":Ljava/security/cert/CertificateException;
    .end local v8    # "i":I
    .restart local v9    # "i":I
    :catch_331
    move-exception v7

    .line 1312
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v20, "TimaService"

    const-string v21, "Certificate chain error!"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    const/16 p1, 0x0

    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_39

    .line 1314
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "i":I
    .restart local v9    # "i":I
    :catch_33e
    move-exception v7

    .line 1315
    .local v7, "e":Ljava/lang/Exception;
    const-string v20, "TimaService"

    const-string v21, "Some other error happened"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    const-string v20, "TimaService"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34f
    .catchall {:try_start_325 .. :try_end_34f} :catchall_354

    .line 1317
    const/16 p1, 0x0

    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_39

    .line 1197
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "i":I
    .restart local v9    # "i":I
    :catchall_354
    move-exception v20

    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_150
.end method
