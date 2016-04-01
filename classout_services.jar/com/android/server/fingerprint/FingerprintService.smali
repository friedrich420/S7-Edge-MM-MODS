.class public Lcom/android/server/fingerprint/FingerprintService;
.super Lcom/android/server/SystemService;
.source "FingerprintService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;,
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;,
        Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    }
.end annotation


# static fields
.field private static final ACTION_FINGERPRINT_ADDED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_ADDED"

.field private static final ACTION_FINGERPRINT_REMOVED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

.field private static final ACTION_FINGERPRINT_RESET:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_RESET"

.field private static final ACTION_LOCKOUT_RESET:Ljava/lang/String; = "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

.field private static final DEBUG:Z

.field private static final ENROLLMENT_TIMEOUT_MS:I = 0x0

.field private static final FAIL_LOCKOUT_TIMEOUT_MS:J = 0x7530L

.field private static final FINGERPRINTD:Ljava/lang/String; = "android.hardware.fingerprint.IFingerprintDaemon"

.field private static final FINGERPRINT_ACQUIRED_GOOD:I = 0x0

.field private static final IS_SUPPORT_LOCKOUT_FEATURE:Z = true

.field private static final MAX_FAILED_ATTEMPTS:I = 0x5

.field private static final MSG_USER_REMOVED:I = 0xb

.field private static final MSG_USER_SWITCHING:I = 0xa

.field private static final MS_PER_SEC:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "FingerprintService"

.field private static accquiredEventNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static errorEventNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final isEnableSurveyMode:Z

.field private static requestCmdNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

.field private mDaemonCallback:Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

.field private mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

.field private mFailedAttempts:I

.field private final mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

.field private final mFpmsPackage:Ljava/lang/String;

.field private mHalDeviceId:J

.field mHandler:Landroid/os/Handler;

.field private mIsEnrolling:Z

.field private final mKeyguardPackage:Ljava/lang/String;

.field private mLatestSensorStatus:I

.field private mLockOutTime:J

.field private final mLockoutMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

.field private mRequestClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

.field private final mResetFailedAttemptsRunnable:Ljava/lang/Runnable;

.field private final syncObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 92
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, DEBUG:Z

    .line 126
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, isEnableSurveyMode:Z

    return-void

    .line 92
    :cond_16
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 220
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 110
    iput-object v4, p0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 111
    iput-object v4, p0, mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 112
    iput-object v4, p0, mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 113
    iput-object v4, p0, mRequestClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mLockoutMonitors:Ljava/util/ArrayList;

    .line 124
    const-string v0, "com.samsung.android.fingerprint.service"

    iput-object v0, p0, mFpmsPackage:Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, syncObj:Ljava/lang/Object;

    .line 130
    iput v2, p0, mLatestSensorStatus:I

    .line 132
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$1;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 154
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v0

    iput-object v0, p0, mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mLockOutTime:J

    .line 160
    iput-boolean v2, p0, mIsEnrolling:Z

    .line 164
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$2;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$2;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$3;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$3;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, mResetFailedAttemptsRunnable:Ljava/lang/Runnable;

    .line 1351
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$5;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$5;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, mDaemonCallback:Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

    .line 221
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mKeyguardPackage:Ljava/lang/String;

    .line 224
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, mAppOps:Landroid/app/AppOpsManager;

    .line 225
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    .line 226
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    .line 227
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 229
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_c0

    .line 230
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, accquiredEventNameMap:Landroid/util/SparseArray;

    .line 231
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, errorEventNameMap:Landroid/util/SparseArray;

    .line 232
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, requestCmdNameMap:Landroid/util/SparseArray;

    .line 233
    sget-object v0, accquiredEventNameMap:Landroid/util/SparseArray;

    const-string v1, "FINGERPRINT_ACQUIRED_"

    invoke-static {v0, v1}, generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 234
    sget-object v0, errorEventNameMap:Landroid/util/SparseArray;

    const-string v1, "FINGERPRINT_ERROR_"

    invoke-static {v0, v1}, generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 235
    sget-object v0, requestCmdNameMap:Landroid/util/SparseArray;

    const-string v1, "FINGERPRINT_REQUEST_"

    invoke-static {v0, v1}, generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 237
    :cond_c0
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 90
    sget-boolean v0, DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/fingerprint/FingerprintService;II)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, removeFinger(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    iget-object v0, p0, mKeyguardPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    iget-object v0, p0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    iget-object v0, p0, mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    .line 90
    invoke-direct {p0, p1}, removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/fingerprint/FingerprintService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    iget-wide v0, p0, mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    .line 90
    invoke-direct {p0, p1}, handleFailedAttempt(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/fingerprint/FingerprintService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    invoke-direct {p0}, inLockoutMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/fingerprint/FingerprintService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    invoke-direct {p0}, userActivity()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .prologue
    .line 90
    invoke-direct {p0, p1}, removeLockoutResetCallback(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, canUseFingerprint(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    iget-object v0, p0, mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/fingerprint/FingerprintService;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 90
    invoke-direct {p0, p1}, dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    iget-object v0, p0, mResetFailedAttemptsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/fingerprint/FingerprintService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    invoke-direct {p0}, resetFailedAttempts()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/fingerprint/FingerprintService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    invoke-direct {p0}, checkIntegrity()V

    return-void
.end method

.method private addLockoutResetMonitor(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .registers 3
    .param p1, "monitor"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .prologue
    .line 1002
    iget-object v0, p0, mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1003
    iget-object v0, p0, mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    :cond_d
    return-void
.end method

.method private addTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V
    .registers 6
    .param p1, "clientMonitor"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p2, "fingerId"    # I

    .prologue
    .line 501
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTemplateForUser : fingerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_1c
    if-nez p1, :cond_26

    .line 503
    const-string v0, "FingerprintService"

    const-string v1, "addTemplateForUser : no clientMonitor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :goto_25
    return-void

    .line 506
    :cond_26
    iget-object v0, p0, mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget v2, p1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->userId:I

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->addFingerprintForUser(Landroid/content/Context;II)V

    .line 507
    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    invoke-direct {p0, v0, p2}, sendBroadcast(Ljava/lang/String;I)V

    goto :goto_25
.end method

.method private canStopExclusiveIdentify(Landroid/os/Bundle;ZLjava/lang/String;)Z
    .registers 13
    .param p1, "attr"    # Landroid/os/Bundle;
    .param p2, "restricted"    # Z
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1834
    if-nez p2, :cond_2b

    .line 1835
    if-eqz p3, :cond_16

    iget-object v5, p0, mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1836
    const-string v4, "FingerprintService"

    const-string v5, "canStopExclusiveIdentify : Keyguard client"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    :goto_15
    return v3

    .line 1839
    :cond_16
    if-eqz p1, :cond_2b

    const-string/jumbo v5, "privileged_attr"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2b

    .line 1841
    const-string v4, "FingerprintService"

    const-string v5, "canStopExclusiveIdentify : have PRIVILEGED_ATTR_EXCLUSIVE_IDENTIFY attr"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1845
    :cond_2b
    iget-object v5, p0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v5, :cond_56

    iget-object v5, p0, mKeyguardPackage:Ljava/lang/String;

    iget-object v6, p0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v6, v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->opPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 1846
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 1847
    .local v2, "kgm":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_56

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-nez v5, :cond_56

    .line 1848
    const-string v4, "FingerprintService"

    const-string v5, "canStopExclusiveIdentify : keyguard is unlocked"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1853
    .end local v2    # "kgm":Landroid/app/KeyguardManager;
    :cond_56
    :try_start_56
    invoke-virtual {p0}, getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 1854
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_65

    .line 1855
    const-string v3, "FingerprintService"

    const-string v5, "canStopExclusiveIdentify: no fingeprintd!"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1856
    goto :goto_15

    .line 1858
    :cond_65
    const v3, 0x186c9

    const/4 v5, 0x6

    const/4 v6, 0x0

    new-array v6, v6, [B

    const/4 v7, 0x0

    new-array v7, v7, [B

    const/4 v8, 0x0

    invoke-interface {v0, v5, v6, v7, v8}, Landroid/hardware/fingerprint/IFingerprintDaemon;->request(I[B[BI)I

    move-result v5

    if-ne v3, v5, :cond_87

    .line 1860
    const-string v3, "FingerprintService"

    const-string v5, "canStopExclusiveIdentify : sensor is working"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_7d} :catch_7f

    move v3, v4

    .line 1861
    goto :goto_15

    .line 1863
    .end local v0    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    :catch_7f
    move-exception v1

    .line 1864
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string v5, "canStopExclusiveIdentify: failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1866
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_87
    const-string v3, "FingerprintService"

    const-string v5, "canStopExclusiveIdentify : false"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1867
    goto :goto_15
.end method

.method private canUseFingerprint(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "foregroundOnly"    # Z

    .prologue
    .line 975
    const-string v0, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {p0, v0}, hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_9
    invoke-direct {p0, p1, p2, v0}, canUseFingerprint(Ljava/lang/String;ZZ)Z

    move-result v0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private canUseFingerprint(Ljava/lang/String;ZZ)Z
    .registers 10
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "foregroundOnly"    # Z
    .param p3, "restricted"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 979
    const-string v4, "android.permission.USE_FINGERPRINT"

    invoke-virtual {p0, v4}, checkPermission(Ljava/lang/String;)V

    .line 980
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 981
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 982
    .local v0, "pid":I
    if-nez p3, :cond_22

    iget-object v4, p0, mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    const-string v4, "com.samsung.android.fingerprint.service"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 998
    :cond_21
    :goto_21
    return v2

    .line 985
    :cond_22
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {p0, v4}, isCurrentUserOrProfile(I)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 986
    const-string v2, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; not a current user or profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 987
    goto :goto_21

    .line 989
    :cond_4c
    iget-object v4, p0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x37

    invoke-virtual {v4, v5, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_76

    .line 991
    const-string v2, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; permission denied"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 992
    goto :goto_21

    .line 994
    :cond_76
    if-eqz p2, :cond_21

    invoke-direct {p0, v1, v0}, isForegroundActivity(II)Z

    move-result v4

    if-nez v4, :cond_21

    .line 995
    const-string v2, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; not in foreground"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 996
    goto :goto_21
.end method

.method private cancelLockoutReset()V
    .registers 3

    .prologue
    .line 412
    iget-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0}, getLockoutResetIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 413
    return-void
.end method

.method private checkIntegrity()V
    .registers 33

    .prologue
    .line 1872
    invoke-virtual/range {p0 .. p0}, getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v18

    .line 1873
    .local v18, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v18, :cond_e

    .line 1874
    const-string v2, "FingerprintService"

    const-string v3, "checkIntegrity: no fingeprintd!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    :cond_d
    :goto_d
    return-void

    .line 1878
    :cond_e
    :try_start_e
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    .line 1879
    .local v8, "userId":I
    const/16 v2, 0xa

    new-array v6, v2, [B

    .line 1880
    .local v6, "tmpOutBuffer":[B
    const/4 v3, 0x0

    const/16 v4, 0xb

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, startRequest(Landroid/os/IBinder;I[B[BIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)I

    move-result v31

    .line 1881
    .local v31, "sizeOfDaemon":I
    if-gez v31, :cond_44

    .line 1882
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIntegrity: error ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3e} :catch_3f

    goto :goto_d

    .line 1957
    .end local v6    # "tmpOutBuffer":[B
    .end local v8    # "userId":I
    .end local v31    # "sizeOfDaemon":I
    :catch_3f
    move-exception v19

    .line 1958
    .local v19, "e":Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 1885
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v6    # "tmpOutBuffer":[B
    .restart local v8    # "userId":I
    .restart local v31    # "sizeOfDaemon":I
    :cond_44
    :try_start_44
    move/from16 v0, v31

    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v29

    .line 1886
    .local v29, "outBuffer":[B
    move-object/from16 v0, p0

    iget-object v2, v0, mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v8}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v22

    .line 1887
    .local v22, "fpList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_d0

    .line 1888
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 1889
    .local v21, "fpInfo":Ljava/lang/StringBuilder;
    const-string v2, "FPS : "

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :goto_6a
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/fingerprint/Fingerprint;

    .line 1891
    .local v20, "fp":Landroid/hardware/fingerprint/Fingerprint;
    const-string v2, "%02d "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    .line 1893
    .end local v20    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_90
    const-string v2, "\n"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1894
    const-string v2, "FPD : "

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1895
    move-object/from16 v16, v29

    .local v16, "arr$":[B
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v28, v0

    .local v28, "len$":I
    const/16 v26, 0x0

    .local v26, "i$":I
    :goto_a7
    move/from16 v0, v26

    move/from16 v1, v28

    if-ge v0, v1, :cond_c7

    aget-byte v17, v16, v26

    .line 1896
    .local v17, "b":B
    const-string v2, "%02d "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1895
    add-int/lit8 v26, v26, 0x1

    goto :goto_a7

    .line 1898
    .end local v17    # "b":B
    :cond_c7
    const-string v2, "FingerprintService"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    .end local v16    # "arr$":[B
    .end local v21    # "fpInfo":Ljava/lang/StringBuilder;
    .end local v26    # "i$":I
    .end local v28    # "len$":I
    :cond_d0
    if-lez v31, :cond_1cc

    .line 1901
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_121

    .line 1902
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v30

    .line 1903
    .local v30, "sFpMgr":Lcom/samsung/android/fingerprint/FingerprintManager;
    move-object/from16 v16, v29

    .restart local v16    # "arr$":[B
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v28, v0

    .restart local v28    # "len$":I
    const/16 v26, 0x0

    .restart local v26    # "i$":I
    :goto_e9
    move/from16 v0, v26

    move/from16 v1, v28

    if-ge v0, v1, :cond_d

    aget-byte v25, v16, v26
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_f1} :catch_3f

    .line 1904
    .local v25, "i":B
    const/16 v23, 0x0

    .line 1906
    .local v23, "fpName":Ljava/lang/String;
    :try_start_f3
    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getIndexName(I)Ljava/lang/String;
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_fa} :catch_1f8

    move-result-object v23

    .line 1909
    :goto_fb
    :try_start_fb
    move-object/from16 v0, p0

    iget-object v2, v0, mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    move/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v2, v3, v0, v8, v1}, Lcom/android/server/fingerprint/FingerprintUtils;->addFingerprintForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V

    .line 1910
    if-eqz v23, :cond_117

    .line 1911
    const/4 v2, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->setIndexName(ILjava/lang/String;)Z

    .line 1903
    :goto_114
    add-int/lit8 v26, v26, 0x1

    goto :goto_e9

    .line 1913
    :cond_117
    const-string v2, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v2, v1}, sendBroadcast(Ljava/lang/String;I)V

    goto :goto_114

    .line 1918
    .end local v16    # "arr$":[B
    .end local v23    # "fpName":Ljava/lang/String;
    .end local v25    # "i":B
    .end local v26    # "i$":I
    .end local v28    # "len$":I
    .end local v30    # "sFpMgr":Lcom/samsung/android/fingerprint/FingerprintManager;
    :cond_121
    move-object/from16 v16, v29

    .restart local v16    # "arr$":[B
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v28, v0

    .restart local v28    # "len$":I
    const/16 v26, 0x0

    .restart local v26    # "i$":I
    move/from16 v27, v26

    .end local v26    # "i$":I
    .local v27, "i$":I
    :goto_12c
    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_16d

    aget-byte v25, v16, v27

    .line 1919
    .restart local v25    # "i":B
    const/16 v24, 0x0

    .line 1920
    .local v24, "hasFinger":Z
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .end local v27    # "i$":I
    .local v26, "i$":Ljava/util/Iterator;
    :cond_13a
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/fingerprint/Fingerprint;

    .line 1921
    .restart local v20    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual/range {v20 .. v20}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    move/from16 v0, v25

    if-ne v0, v2, :cond_13a

    .line 1922
    const/16 v24, 0x1

    .line 1926
    .end local v20    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_150
    if-nez v24, :cond_168

    .line 1927
    move-object/from16 v0, p0

    iget-object v2, v0, mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    move/from16 v0, v25

    invoke-virtual {v2, v3, v0, v8}, Lcom/android/server/fingerprint/FingerprintUtils;->addFingerprintForUser(Landroid/content/Context;II)V

    .line 1928
    const-string v2, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v2, v1}, sendBroadcast(Ljava/lang/String;I)V

    .line 1918
    :cond_168
    add-int/lit8 v26, v27, 0x1

    .local v26, "i$":I
    move/from16 v27, v26

    .end local v26    # "i$":I
    .restart local v27    # "i$":I
    goto :goto_12c

    .line 1932
    .end local v24    # "hasFinger":Z
    .end local v25    # "i":B
    :cond_16d
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .end local v27    # "i$":I
    :cond_171
    :goto_171
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1ba

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/fingerprint/Fingerprint;

    .line 1933
    .restart local v20    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    const/16 v24, 0x0

    .line 1934
    .restart local v24    # "hasFinger":Z
    move-object/from16 v16, v29

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v28, v0

    const/16 v27, 0x0

    .restart local v27    # "i$":I
    :goto_188
    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_19d

    aget-byte v25, v16, v27

    .line 1935
    .restart local v25    # "i":B
    invoke-virtual/range {v20 .. v20}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    move/from16 v0, v25

    if-ne v0, v2, :cond_19a

    .line 1936
    const/16 v24, 0x1

    .line 1934
    :cond_19a
    add-int/lit8 v27, v27, 0x1

    goto :goto_188

    .line 1939
    .end local v25    # "i":B
    :cond_19d
    if-nez v24, :cond_171

    .line 1940
    move-object/from16 v0, p0

    iget-object v2, v0, mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    invoke-virtual {v2, v3, v4, v8}, Lcom/android/server/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(Landroid/content/Context;II)V

    .line 1941
    const-string v2, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, sendBroadcast(Ljava/lang/String;I)V

    goto :goto_171

    .line 1944
    .end local v20    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    .end local v24    # "hasFinger":Z
    .end local v27    # "i$":I
    :cond_1ba
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, hasEnrolledFingerprints(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1945
    const-string v2, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, sendBroadcast(Ljava/lang/String;I)V

    goto/16 :goto_d

    .line 1950
    .end local v16    # "arr$":[B
    .end local v28    # "len$":I
    :cond_1cc
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 1951
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :goto_1d6
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/fingerprint/Fingerprint;

    .line 1953
    .restart local v20    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v9, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    move v13, v8

    invoke-direct/range {v9 .. v15}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, removeTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V
    :try_end_1f7
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_1f7} :catch_3f

    goto :goto_1d6

    .line 1907
    .end local v20    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    .restart local v16    # "arr$":[B
    .restart local v23    # "fpName":Ljava/lang/String;
    .restart local v25    # "i":B
    .local v26, "i$":I
    .restart local v28    # "len$":I
    .restart local v30    # "sFpMgr":Lcom/samsung/android/fingerprint/FingerprintManager;
    :catch_1f8
    move-exception v2

    goto/16 :goto_fb
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1697
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1699
    .local v1, "dump":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v8, "service"

    const-string v9, "Fingerprint Manager"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1701
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1702
    .local v5, "sets":Lorg/json/JSONArray;
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 1703
    .local v6, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 1704
    .local v7, "userId":I
    iget-object v8, p0, mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v7}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 1705
    .local v0, "N":I
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1706
    .local v4, "set":Lorg/json/JSONObject;
    const-string/jumbo v8, "id"

    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1707
    const-string v8, "count"

    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1708
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_55} :catch_56

    goto :goto_22

    .line 1712
    .end local v0    # "N":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "set":Lorg/json/JSONObject;
    .end local v5    # "sets":Lorg/json/JSONArray;
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "userId":I
    :catch_56
    move-exception v2

    .line 1713
    .local v2, "e":Lorg/json/JSONException;
    const-string v8, "FingerprintService"

    const-string/jumbo v9, "dump formatting failure"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1715
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_5f
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1716
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " latest sensor status : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, mLatestSensorStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1717
    return-void

    .line 1711
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "sets":Lorg/json/JSONArray;
    :cond_7b
    :try_start_7b
    const-string/jumbo v8, "prints"

    invoke-virtual {v1, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_81
    .catch Lorg/json/JSONException; {:try_start_7b .. :try_end_81} :catch_56

    goto :goto_5f
.end method

.method private static generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V
    .registers 11
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-nez p1, :cond_3

    .line 210
    :cond_2
    return-void

    .line 193
    :cond_3
    const-class v7, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v7}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 194
    .local v4, "fields":[Ljava/lang/reflect/Field;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_c
    if-ge v5, v6, :cond_2

    aget-object v2, v0, v5

    .line 195
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 194
    :cond_1a
    :goto_1a
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 199
    :cond_1d
    const/4 v7, 0x0

    :try_start_1e
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 200
    .local v3, "fieldValue":I
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_29} :catch_2a

    goto :goto_1a

    .line 201
    .end local v3    # "fieldValue":I
    :catch_2a
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "FingerprintService"

    const-string/jumbo v8, "generateNameMap: failed "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget-boolean v7, DEBUG:Z

    if-eqz v7, :cond_1a

    .line 204
    if-eqz v1, :cond_1a

    .line 205
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method private getLockoutResetIntent()Landroid/app/PendingIntent;
    .registers 5

    .prologue
    .line 416
    iget-object v0, p0, mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private handleFailedAttempt(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z
    .registers 6
    .param p1, "clientMonitor"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    const/4 v0, 0x1

    .line 437
    if-eqz p1, :cond_47

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->hasPrivilegedAttr(I)Z

    move-result v1

    if-nez v1, :cond_47

    .line 440
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleFailedAttempt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mFailedAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget v1, p0, mFailedAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mFailedAttempts:I

    .line 442
    invoke-direct {p0}, inLockoutMode()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 444
    invoke-direct {p0}, scheduleLockoutReset()V

    .line 445
    const/4 v1, 0x7

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {p1, v1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v1

    if-nez v1, :cond_44

    .line 446
    const-string v1, "FingerprintService"

    const-string v2, "Cannot send lockout message to client"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :goto_43
    return v0

    .line 448
    :cond_44
    iput-boolean v0, p1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isDone:Z

    goto :goto_43

    .line 453
    :cond_47
    const/4 v0, 0x0

    goto :goto_43
.end method

.method private inLockoutMode()Z
    .registers 3

    .prologue
    .line 400
    iget v0, p0, mFailedAttempts:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private isForegroundActivity(II)Z
    .registers 10
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 953
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 955
    .local v4, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 956
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_30

    .line 957
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 958
    .local v3, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p2, :cond_25

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, p1, :cond_25

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_28

    const/16 v6, 0x64

    if-ne v5, v6, :cond_25

    .line 960
    const/4 v5, 0x1

    .line 966
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :goto_24
    return v5

    .line 956
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v4    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 963
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_28
    move-exception v1

    .line 964
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "FingerprintService"

    const-string v6, "am.getRunningAppProcesses() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_30
    const/4 v5, 0x0

    goto :goto_24
.end method

.method private isTZCommand(I)Z
    .registers 3
    .param p1, "cmd"    # I

    .prologue
    .line 809
    packed-switch p1, :pswitch_data_8

    .line 818
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 816
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 809
    nop

    :pswitch_data_8
    .packed-switch 0x3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private listenForUserSwitches()V
    .registers 4

    .prologue
    .line 1766
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$6;

    invoke-direct {v2, p0}, Lcom/android/server/fingerprint/FingerprintService$6;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 1785
    :goto_c
    return-void

    .line 1782
    :catch_d
    move-exception v0

    .line 1783
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to listen for user switching event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method private notifyLockoutResetMonitors()V
    .registers 3

    .prologue
    .line 1013
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 1014
    iget-object v1, p0, mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->sendLockoutReset()V

    .line 1013
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1016
    :cond_17
    return-void
.end method

.method private remove(Landroid/hardware/fingerprint/IFingerprintDaemon;II)I
    .registers 12
    .param p1, "daemon"    # Landroid/hardware/fingerprint/IFingerprintDaemon;
    .param p2, "fpId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 797
    const/4 v3, -0x1

    .line 799
    .local v3, "result":I
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 800
    .local v0, "begin":J
    invoke-interface {p1, p2, p3}, Landroid/hardware/fingerprint/IFingerprintDaemon;->remove(II)I

    move-result v3

    .line 801
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove FP_FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms) RESULT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_32} :catch_33

    .line 805
    .end local v0    # "begin":J
    :goto_32
    return v3

    .line 802
    :catch_33
    move-exception v2

    .line 803
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "FingerprintService"

    const-string/jumbo v5, "remove failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32
.end method

.method private removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    .registers 4
    .param p1, "client"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    const/4 v1, 0x0

    .line 387
    if-nez p1, :cond_4

    .line 396
    :cond_3
    :goto_3
    return-void

    .line 388
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->destroy()V

    .line 389
    iget-object v0, p0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-ne p1, v0, :cond_e

    .line 390
    iput-object v1, p0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    goto :goto_3

    .line 391
    :cond_e
    iget-object v0, p0, mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-ne p1, v0, :cond_15

    .line 392
    iput-object v1, p0, mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    goto :goto_3

    .line 393
    :cond_15
    iget-object v0, p0, mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-ne p1, v0, :cond_3

    .line 394
    iput-object v1, p0, mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    goto :goto_3
.end method

.method private removeFinger(II)I
    .registers 16
    .param p1, "fpId"    # I
    .param p2, "groupId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 767
    invoke-virtual {p0}, getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v7

    .line 768
    .local v7, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v7, :cond_13

    .line 769
    const-string v1, "FingerprintService"

    const-string/jumbo v2, "removeFinger: no fingeprintd!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v0

    .line 793
    :cond_12
    :goto_12
    return v12

    .line 772
    :cond_13
    invoke-virtual {p0, p2}, getEffectiveUserId(I)I

    move-result v4

    .line 773
    .local v4, "effectiveUserId":I
    const/4 v1, 0x1

    invoke-direct {p0, v1}, stopPendingOperations(Z)V

    .line 774
    const/4 v12, 0x0

    .line 775
    .local v12, "retVal":I
    if-ne p1, v0, :cond_75

    .line 776
    invoke-virtual {p0, v4}, getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v9

    .line 777
    .local v9, "fpList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_26
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/fingerprint/Fingerprint;

    .line 778
    .local v8, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v8}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v0

    invoke-direct {p0, v7, v0, v4}, remove(Landroid/hardware/fingerprint/IFingerprintDaemon;II)I

    move-result v11

    .line 779
    .local v11, "result":I
    if-eqz v11, :cond_65

    .line 780
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove with id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " failed, result="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const/4 v12, -0x1

    .line 782
    goto :goto_26

    .line 784
    :cond_65
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object v1, p0

    move-object v3, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V

    invoke-virtual {v8}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v1

    invoke-direct {p0, v0, v1}, removeTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V

    goto :goto_26

    .line 787
    .end local v8    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    .end local v9    # "fpList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "result":I
    :cond_75
    invoke-direct {p0, v7, p1, v4}, remove(Landroid/hardware/fingerprint/IFingerprintDaemon;II)I

    move-result v1

    if-nez v1, :cond_88

    .line 788
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object v1, p0

    move-object v3, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V

    invoke-direct {p0, v0, p1}, removeTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V

    move v12, v5

    .line 789
    goto :goto_12

    :cond_88
    move v12, v0

    .line 791
    goto :goto_12
.end method

.method private removeLockoutResetCallback(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .registers 3
    .param p1, "monitor"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .prologue
    .line 1009
    iget-object v0, p0, mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1010
    return-void
.end method

.method private removeTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V
    .registers 9
    .param p1, "clientMonitor"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p2, "fingerId"    # I

    .prologue
    const-wide/16 v4, -0x1

    .line 485
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1f

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeTemplateForUser : fingerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_1f
    if-nez p1, :cond_2a

    .line 487
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "removeTemplateForUser : no clientMonitor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :goto_29
    return-void

    .line 490
    :cond_2a
    iget-object v0, p0, mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget v2, p1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->userId:I

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(Landroid/content/Context;II)V

    .line 491
    iget v0, p1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->userId:I

    invoke-virtual {p0, v0}, hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 492
    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    invoke-direct {p0, v0, p2}, sendBroadcast(Ljava/lang/String;I)V

    .line 493
    const-string v0, "FPRM"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4, v5}, insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_29

    .line 495
    :cond_4a
    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, sendBroadcast(Ljava/lang/String;I)V

    .line 496
    const-string v0, "FPRM"

    const-string v1, "ALL"

    invoke-virtual {p0, v0, v1, v4, v5}, insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_29
.end method

.method private resetFailedAttempts()V
    .registers 3

    .prologue
    .line 422
    invoke-direct {p0}, inLockoutMode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 423
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_11

    .line 424
    const-string v0, "FingerprintService"

    const-string v1, "Reset fingerprint lockout"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_11
    invoke-direct {p0}, cancelLockoutReset()V

    .line 429
    invoke-direct {p0}, notifyLockoutResetMonitors()V

    .line 431
    :cond_17
    const/4 v0, 0x0

    iput v0, p0, mFailedAttempts:I

    .line 432
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mLockOutTime:J

    .line 434
    return-void
.end method

.method private scheduleLockoutReset()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x7530

    .line 406
    iget-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-direct {p0}, getLockoutResetIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 408
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, v6

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, mLockOutTime:J

    .line 409
    return-void
.end method

.method private sendBroadcast(Ljava/lang/String;I)V
    .registers 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "fingerId"    # I

    .prologue
    .line 457
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    .local v1, "intent":Landroid/content/Intent;
    if-lez p2, :cond_15

    .line 459
    const-string/jumbo v2, "fingerIndex"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 460
    const-string/jumbo v2, "verificationType"

    const-string v3, "Device Credential"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    :cond_15
    :try_start_15
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 464
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_41

    .line 465
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is sended with fingerId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :goto_40
    return-void

    .line 467
    :cond_41
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is sended"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_5f} :catch_60

    goto :goto_40

    .line 469
    :catch_60
    move-exception v0

    .line 470
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendBroadcast failed :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method private sendError(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V
    .registers 7
    .param p1, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p2, "error"    # I

    .prologue
    .line 475
    if-eqz p1, :cond_7

    .line 477
    :try_start_2
    iget-wide v2, p0, mHalDeviceId:J

    invoke-interface {p1, v2, v3, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_8

    .line 482
    :cond_7
    :goto_7
    return-void

    .line 478
    :catch_8
    move-exception v0

    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to send error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method private stopPendingOperations(Z)V
    .registers 10
    .param p1, "initiatedByClient"    # Z

    .prologue
    .line 579
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_1d

    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopPendingOperations : initiatedByClient="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_1d
    iget-object v4, p0, mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v4, :cond_28

    .line 581
    iget-object v4, p0, mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v4, v4, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v4, p1}, stopEnrollment(Landroid/os/IBinder;Z)V

    .line 583
    :cond_28
    iget-object v4, p0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v4, :cond_33

    .line 584
    iget-object v4, p0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v4, v4, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v4, p1}, stopAuthentication(Landroid/os/IBinder;Z)V

    .line 586
    :cond_33
    iget-object v4, p0, mRequestClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v4, :cond_3c

    .line 587
    iget-object v4, p0, mRequestClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v4}, removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 590
    :cond_3c
    if-eqz p1, :cond_4c

    .line 592
    :try_start_3e
    invoke-virtual {p0}, getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 593
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_4d

    .line 594
    const-string v4, "FingerprintService"

    const-string/jumbo v5, "stopPendingOperations: no fingeprintd!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    .end local v0    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    :cond_4c
    :goto_4c
    return-void

    .line 597
    .restart local v0    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    :cond_4d
    const/4 v4, 0x6

    const/4 v5, 0x0

    new-array v5, v5, [B

    const/4 v6, 0x0

    new-array v6, v6, [B

    const/4 v7, 0x0

    invoke-interface {v0, v4, v5, v6, v7}, Landroid/hardware/fingerprint/IFingerprintDaemon;->request(I[B[BI)I

    move-result v3

    .line 598
    .local v3, "retReq":I
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopPendingOperations : req status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const v4, 0x186c9

    if-ne v3, v4, :cond_4c

    .line 600
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelAuthentication()I

    move-result v2

    .line 601
    .local v2, "ret":I
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopPendingOperations: cancel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_94} :catch_95

    goto :goto_4c

    .line 603
    .end local v0    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    .end local v2    # "ret":I
    .end local v3    # "retReq":I
    :catch_95
    move-exception v1

    .line 604
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "FingerprintService"

    const-string/jumbo v5, "stopPendingOperations: failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4c
.end method

.method private updateActiveGroup(I)V
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 1731
    invoke-virtual {p0}, getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v2

    .line 1732
    .local v2, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-eqz v2, :cond_56

    .line 1734
    :try_start_6
    invoke-virtual {p0, p1}, getEffectiveUserId(I)I

    move-result p1

    .line 1755
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1756
    .local v0, "begin":J
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/biometrics/fp/User_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-interface {v2, p1, v4}, Landroid/hardware/fingerprint/IFingerprintDaemon;->setActiveGroup(I[B)I

    .line 1757
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateActiveGroup FP_FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_56} :catch_57

    .line 1762
    .end local v0    # "begin":J
    :cond_56
    :goto_56
    return-void

    .line 1758
    :catch_57
    move-exception v3

    .line 1759
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "FingerprintService"

    const-string v5, "Failed to setActiveGroup():"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56
.end method

.method private userActivity()V
    .registers 6

    .prologue
    .line 377
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 378
    .local v0, "now":J
    iget-object v2, p0, mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 379
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 241
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "fingerprintd died"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    .line 243
    iget-wide v0, p0, mHalDeviceId:J

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, handleError(JI)V

    .line 244
    return-void
.end method

.method checkPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 920
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " permission."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    return-void
.end method

.method public getAuthenticatorId()J
    .registers 11

    .prologue
    .line 1788
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_c

    const-string v6, "FingerprintService"

    const-string/jumbo v7, "getAuthenticatorId"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    :cond_c
    invoke-virtual {p0}, getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v2

    .line 1790
    .local v2, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-eqz v2, :cond_4d

    .line 1792
    :try_start_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1793
    .local v0, "begin":J
    invoke-interface {v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->getAuthenticatorId()J

    move-result-wide v4

    .line 1794
    .local v4, "result":J
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getAuthenticatorId FP_FINISH ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms) RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_43} :catch_44

    .line 1800
    .end local v0    # "begin":J
    .end local v4    # "result":J
    :goto_43
    return-wide v4

    .line 1796
    :catch_44
    move-exception v3

    .line 1797
    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "getAuthenticatorId failed"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1800
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_4d
    const-wide/16 v4, 0x0

    goto :goto_43
.end method

.method getEffectiveUserId(I)I
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 925
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 926
    .local v2, "um":Landroid/os/UserManager;
    if-eqz v2, :cond_31

    .line 927
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 928
    .local v0, "callingIdentity":J
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    .line 929
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 933
    .end local v0    # "callingIdentity":J
    :goto_13
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_30

    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getEffectiveUserId return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_30
    return p1

    .line 931
    :cond_31
    const-string v3, "FingerprintService"

    const-string v4, "Unable to acquire UserManager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public getEnrolledFingerprints(I)Ljava/util/List;
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 901
    iget-wide v0, p0, mHalDeviceId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 902
    invoke-virtual {p0}, getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    .line 904
    :cond_b
    iget-object v0, p0, mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;
    .registers 7

    .prologue
    .line 247
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    if-nez v1, :cond_40

    .line 248
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v1

    iput-object v1, p0, mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    .line 249
    iget-object v1, p0, mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_5b

    if-eqz v1, :cond_5e

    .line 251
    :try_start_15
    iget-object v1, p0, mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 252
    iget-object v1, p0, mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    iget-object v2, p0, mDaemonCallback:Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

    invoke-interface {v1, v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->init(Landroid/hardware/fingerprint/IFingerprintDaemonCallback;)V

    .line 253
    iget-object v1, p0, mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->openHal()J

    move-result-wide v2

    iput-wide v2, p0, mHalDeviceId:J

    .line 254
    iget-wide v2, p0, mHalDeviceId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_44

    .line 255
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-direct {p0, v1}, updateActiveGroup(I)V

    .line 256
    invoke-direct {p0}, checkIntegrity()V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_40} :catch_4f
    .catchall {:try_start_15 .. :try_end_40} :catchall_5b

    .line 269
    :cond_40
    :goto_40
    :try_start_40
    iget-object v1, p0, mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_5b

    monitor-exit p0

    return-object v1

    .line 258
    :cond_44
    :try_start_44
    const-string v1, "FingerprintService"

    const-string v2, "Failed to open Fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v1, 0x0

    iput-object v1, p0, mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4e} :catch_4f
    .catchall {:try_start_44 .. :try_end_4e} :catchall_5b

    goto :goto_40

    .line 261
    :catch_4f
    move-exception v0

    .line 262
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_50
    const-string v1, "FingerprintService"

    const-string v2, "Failed to open fingeprintd HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    const/4 v1, 0x0

    iput-object v1, p0, mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_5b

    goto :goto_40

    .line 247
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_5b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 266
    :cond_5e
    :try_start_5e
    const-string v1, "FingerprintService"

    const-string/jumbo v2, "fingerprint service not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_5e .. :try_end_66} :catchall_5b

    goto :goto_40
.end method

.method protected handleAcquired(JI)V
    .registers 7
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I

    .prologue
    .line 340
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_51

    .line 341
    const-string v1, "FingerprintService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleAcquired : deviceId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", acquiredInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, accquiredEventNameMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :goto_3f
    iget-object v0, p0, mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_6b

    .line 346
    iget-object v0, p0, mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAcquired(I)Z
    invoke-static {v0, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$800(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 347
    iget-object v0, p0, mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0}, removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 358
    :cond_50
    :goto_50
    return-void

    .line 343
    :cond_51
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleAcquired : acquiredInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 349
    :cond_6b
    iget-object v0, p0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_7d

    .line 350
    iget-object v0, p0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAcquired(I)Z
    invoke-static {v0, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$800(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 351
    iget-object v0, p0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0}, removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_50

    .line 353
    :cond_7d
    iget-object v0, p0, mRequestClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_50

    .line 354
    iget-object v0, p0, mRequestClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAcquired(I)Z
    invoke-static {v0, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$800(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 355
    iget-object v0, p0, mRequestClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0}, removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_50
.end method

.method protected handleAuthenticated(JII)V
    .registers 12
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 325
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_55

    .line 326
    const-string v1, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleAuthenticated : deviceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,fingerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,groupId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :goto_33
    iget-object v1, p0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_54

    .line 331
    iget-object v1, p0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v0, v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 332
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAuthenticated(II)Z
    invoke-static {v1, p3, p4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$700(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 333
    if-eqz p3, :cond_74

    :goto_45
    or-int/lit8 v1, v2, 0x0

    invoke-direct {p0}, inLockoutMode()Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, stopAuthentication(Landroid/os/IBinder;Z)V

    .line 334
    iget-object v1, p0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v1}, removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 337
    .end local v0    # "token":Landroid/os/IBinder;
    :cond_54
    return-void

    .line 328
    :cond_55
    const-string v4, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleAuthenticated : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p3, :cond_72

    move v1, v2

    :goto_66
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    :cond_72
    move v1, v3

    goto :goto_66

    .restart local v0    # "token":Landroid/os/IBinder;
    :cond_74
    move v2, v3

    .line 333
    goto :goto_45
.end method

.method protected handleEnrollResult(JIII)V
    .registers 11
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .prologue
    .line 361
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_3b

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleEnrollResult : deviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,fingerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,groupId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_3b
    iget-object v0, p0, mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_60

    .line 363
    iget-object v0, p0, mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendEnrollResult(III)Z
    invoke-static {v0, p3, p4, p5}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$900(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;III)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 367
    const/16 v0, 0x64

    if-ne p5, v0, :cond_60

    .line 368
    iget-object v0, p0, mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0, p3}, addTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V

    .line 369
    iget-object v0, p0, mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0}, removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 370
    const-string v0, "FPEN"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v1, v2, v3}, insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 374
    :cond_60
    return-void
.end method

.method protected handleEnumerate(J[I[I)V
    .registers 8
    .param p1, "deviceId"    # J
    .param p3, "fingerIds"    # [I
    .param p4, "groupIds"    # [I

    .prologue
    .line 273
    array-length v0, p3

    array-length v1, p4

    if-eq v0, v1, :cond_28

    .line 274
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fingerIds and groupIds differ in length: f[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", g[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_27
    :goto_27
    return-void

    .line 278
    :cond_28
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_27

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enumerate: f[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", g[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method protected handleError(JI)V
    .registers 9
    .param p1, "deviceId"    # J
    .param p3, "error"    # I

    .prologue
    const/4 v4, 0x0

    .line 294
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_62

    .line 295
    const-string v2, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleError : deviceId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", error="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, errorEventNameMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_40
    iget-object v1, p0, mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_7c

    .line 300
    iget-object v1, p0, mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v0, v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 301
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 302
    invoke-virtual {p0, v0, v4}, stopEnrollment(Landroid/os/IBinder;Z)V

    .line 314
    .end local v0    # "token":Landroid/os/IBinder;
    :cond_53
    :goto_53
    const/16 v1, 0x3ec

    if-ne p3, v1, :cond_61

    .line 315
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$4;

    invoke-direct {v2, p0}, Lcom/android/server/fingerprint/FingerprintService$4;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 322
    :cond_61
    return-void

    .line 297
    :cond_62
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleError : error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 304
    :cond_7c
    iget-object v1, p0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_90

    .line 305
    iget-object v1, p0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v0, v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 306
    .restart local v0    # "token":Landroid/os/IBinder;
    iget-object v1, p0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 307
    invoke-virtual {p0, v0, v4}, stopAuthentication(Landroid/os/IBinder;Z)V

    goto :goto_53

    .line 309
    .end local v0    # "token":Landroid/os/IBinder;
    :cond_90
    iget-object v1, p0, mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_53

    .line 310
    iget-object v1, p0, mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 311
    iget-object v1, p0, mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v1}, removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_53
.end method

.method protected handleRemoved(JII)V
    .registers 10
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    .line 283
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_31

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleRemoved : deviceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,fingerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_31
    iget-object v0, p0, mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 285
    .local v0, "client":Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    if-eqz p3, :cond_3c

    if-eqz v0, :cond_3c

    .line 286
    iget-object v1, p0, mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v1, p3}, removeTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V

    .line 288
    :cond_3c
    if-eqz v0, :cond_49

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendRemoved(II)Z
    invoke-static {v0, p3, p4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$400(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 289
    iget-object v1, p0, mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v1}, removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 291
    :cond_49
    return-void
.end method

.method handleUserSwitching(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 382
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleUserSwitching : userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_1d
    invoke-direct {p0, p1}, updateActiveGroup(I)V

    .line 384
    return-void
.end method

.method public hasEnrolledFingerprints(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 908
    iget-wide v0, p0, mHalDeviceId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 909
    invoke-virtual {p0}, getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    .line 911
    :cond_b
    iget-object v0, p0, mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method hasPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 915
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 1804
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_33

    .line 1805
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertSurveyLog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, isEnableSurveyMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :cond_33
    sget-boolean v2, isEnableSurveyMode:Z

    if-eqz v2, :cond_6d

    .line 1808
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1809
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1824
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1825
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1826
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1827
    iget-object v2, p0, mContext:Landroid/content/Context;

    if-eqz v2, :cond_6d

    .line 1828
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1831
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_6d
    return-void
.end method

.method isCurrentUserOrProfile(I)Z
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 938
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 941
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 942
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 943
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v1, :cond_20

    .line 944
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, p1, :cond_1d

    .line 945
    const/4 v4, 0x1

    .line 948
    :goto_1c
    return v4

    .line 943
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 948
    :cond_20
    const/4 v4, 0x0

    goto :goto_1c
.end method

.method public onStart()V
    .registers 5

    .prologue
    .line 1721
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_c

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :cond_c
    const-string/jumbo v1, "fingerprint"

    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V

    invoke-virtual {p0, v1, v2}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1723
    invoke-direct {p0}, listenForUserSwitches()V

    .line 1724
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1725
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1726
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1727
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1728
    return-void
.end method

.method startAuthentication(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V
    .registers 28
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opId"    # J
    .param p4, "groupId"    # I
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "flags"    # I
    .param p7, "restricted"    # Z
    .param p8, "opPackageName"    # Ljava/lang/String;
    .param p9, "attr"    # Landroid/os/Bundle;

    .prologue
    .line 652
    invoke-virtual/range {p0 .. p0}, getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v14

    .line 653
    .local v14, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v14, :cond_17

    .line 654
    const-string v4, "FingerprintService"

    const-string/jumbo v5, "startAuthentication: no fingeprintd!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, sendError(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V

    .line 700
    :goto_16
    return-void

    .line 660
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v4, :cond_94

    .line 661
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startAuthentication: current client = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v6, v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->owner:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    move-object/from16 v0, p0

    iget-object v4, v0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v4, v4, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    move-object/from16 v0, p1

    if-ne v4, v0, :cond_4e

    .line 663
    const-string v4, "FingerprintService"

    const-string v5, "authentication is already in progress."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 666
    :cond_4e
    move-object/from16 v0, p0

    iget-object v4, v0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->hasPrivilegedAttr(I)Z

    move-result v4

    if-eqz v4, :cond_94

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    move/from16 v2, p7

    move-object/from16 v3, p8

    invoke-direct {v0, v1, v2, v3}, canStopExclusiveIdentify(Landroid/os/Bundle;ZLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_94

    .line 668
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Locked client["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v6, v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->owner:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is in progress"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, sendError(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V

    goto :goto_16

    .line 673
    :cond_94
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, stopPendingOperations(Z)V

    .line 674
    if-nez p9, :cond_a1

    .line 675
    new-instance p9, Landroid/os/Bundle;

    .end local p9    # "attr":Landroid/os/Bundle;
    invoke-direct/range {p9 .. p9}, Landroid/os/Bundle;-><init>()V

    .line 677
    .restart local p9    # "attr":Landroid/os/Bundle;
    :cond_a1
    const-string/jumbo v4, "packageName"

    move-object/from16 v0, p9

    move-object/from16 v1, p8

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    new-instance v4, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    move/from16 v8, p4

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v4 .. v11}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 679
    invoke-direct/range {p0 .. p0}, inLockoutMode()Z

    move-result v4

    if-eqz v4, :cond_f7

    move-object/from16 v0, p0

    iget-object v4, v0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->hasPrivilegedAttr(I)Z

    move-result v4

    if-nez v4, :cond_f7

    .line 680
    const-string v4, "FingerprintService"

    const-string v5, "In lockout mode; disallowing authentication"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    move-object/from16 v0, p0

    iget-object v4, v0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    const/4 v5, 0x7

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v4, v5}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v4

    if-nez v4, :cond_ec

    .line 682
    const-string v4, "FingerprintService"

    const-string v5, "Cannot send timeout message to client"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_ec
    move-object/from16 v0, p0

    iget-object v4, v0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto/16 :goto_16

    .line 687
    :cond_f7
    move-object/from16 v0, p0

    iget-object v5, v0, syncObj:Ljava/lang/Object;

    monitor-enter v5

    .line 689
    :try_start_fc
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 690
    .local v12, "begin":J
    move-wide/from16 v0, p2

    move/from16 v2, p4

    invoke-interface {v14, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->authenticate(JI)I

    move-result v16

    .line 691
    .local v16, "result":I
    const-string v4, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startAuthentication FP_FINISH ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v12

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms) RESULT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    if-eqz v16, :cond_15a

    .line 693
    const-string v4, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startAuthentication failed, result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    move-object/from16 v0, p0

    iget-wide v6, v0, mHalDeviceId:J

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v4}, handleError(JI)V
    :try_end_15a
    .catch Landroid/os/RemoteException; {:try_start_fc .. :try_end_15a} :catch_160
    .catchall {:try_start_fc .. :try_end_15a} :catchall_15d

    .line 699
    .end local v12    # "begin":J
    .end local v16    # "result":I
    :cond_15a
    :goto_15a
    :try_start_15a
    monitor-exit v5

    goto/16 :goto_16

    :catchall_15d
    move-exception v4

    monitor-exit v5
    :try_end_15f
    .catchall {:try_start_15a .. :try_end_15f} :catchall_15d

    throw v4

    .line 696
    :catch_160
    move-exception v15

    .line 697
    .local v15, "e":Landroid/os/RemoteException;
    :try_start_161
    const-string v4, "FingerprintService"

    const-string/jumbo v6, "startAuthentication failed"

    invoke-static {v4, v6, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_169
    .catchall {:try_start_161 .. :try_end_169} :catchall_15d

    goto :goto_15a
.end method

.method startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLandroid/os/Bundle;)V
    .registers 24
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cryptoToken"    # [B
    .param p3, "groupId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "flags"    # I
    .param p6, "restricted"    # Z
    .param p7, "attr"    # Landroid/os/Bundle;

    .prologue
    .line 512
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_43

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startEnrollment : token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,groupId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,restricted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_43
    invoke-virtual/range {p0 .. p0}, getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v12

    .line 514
    .local v12, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v12, :cond_5a

    .line 515
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "enroll: no fingeprintd!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v2}, sendError(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V

    .line 533
    :cond_59
    :goto_59
    return-void

    .line 519
    :cond_5a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, stopPendingOperations(Z)V

    .line 520
    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move/from16 v6, p3

    move/from16 v7, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 521
    const/4 v15, 0x0

    .line 523
    .local v15, "timeout":I
    :try_start_7a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 524
    .local v10, "begin":J
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v12, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->enroll([BII)I

    move-result v14

    .line 525
    .local v14, "result":I
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startEnrollment FP_FINISH ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms) RESULT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    if-eqz v14, :cond_59

    .line 527
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startEnroll failed, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    move-object/from16 v0, p0

    iget-wide v2, v0, mHalDeviceId:J

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, handleError(JI)V
    :try_end_d5
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_d5} :catch_d6

    goto :goto_59

    .line 530
    .end local v10    # "begin":J
    .end local v14    # "result":I
    :catch_d6
    move-exception v13

    .line 531
    .local v13, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "startEnroll failed"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_59
.end method

.method public declared-synchronized startPostEnroll(Landroid/os/IBinder;)I
    .registers 14
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x0

    .line 555
    monitor-enter p0

    :try_start_2
    iget-boolean v6, p0, mIsEnrolling:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_64

    if-nez v6, :cond_9

    move v4, v5

    .line 575
    :goto_7
    monitor-exit p0

    return v4

    .line 558
    :cond_9
    :try_start_9
    invoke-virtual {p0}, getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v2

    .line 559
    .local v2, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v2, :cond_19

    .line 560
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "startPostEnroll: no fingeprintd!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_64

    move v4, v5

    .line 561
    goto :goto_7

    .line 564
    :cond_19
    :try_start_19
    iget-object v7, p0, syncObj:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_59
    .catchall {:try_start_19 .. :try_end_1c} :catchall_64

    .line 565
    const/4 v6, 0x1

    :try_start_1d
    invoke-direct {p0, v6}, stopPendingOperations(Z)V

    .line 566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 567
    .local v0, "begin":J
    invoke-interface {v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->postEnroll()I

    move-result v4

    .line 568
    .local v4, "result":I
    const-string v6, "FingerprintService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startPostEnroll FP_FINISH ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms) RESULT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/4 v6, 0x0

    iput-boolean v6, p0, mIsEnrolling:Z

    .line 570
    monitor-exit v7

    goto :goto_7

    .line 571
    .end local v0    # "begin":J
    .end local v4    # "result":I
    :catchall_56
    move-exception v6

    monitor-exit v7
    :try_end_58
    .catchall {:try_start_1d .. :try_end_58} :catchall_56

    :try_start_58
    throw v6
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_59} :catch_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_64

    .line 572
    :catch_59
    move-exception v3

    .line 573
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_5a
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "startPostEnroll failed"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_64

    move v4, v5

    .line 575
    goto :goto_7

    .line 555
    .end local v2    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_64
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public startPreEnroll(Landroid/os/IBinder;)J
    .registers 14
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const-wide/16 v6, 0x0

    .line 536
    invoke-virtual {p0}, getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v2

    .line 537
    .local v2, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v2, :cond_12

    .line 538
    const-string v8, "FingerprintService"

    const-string/jumbo v9, "startPreEnroll: no fingeprintd!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v6

    .line 551
    :goto_11
    return-wide v4

    .line 542
    :cond_12
    const/4 v8, 0x1

    :try_start_13
    invoke-direct {p0, v8}, stopPendingOperations(Z)V

    .line 543
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 544
    .local v0, "begin":J
    invoke-interface {v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->preEnroll()J

    move-result-wide v4

    .line 545
    .local v4, "result":J
    const-string v8, "FingerprintService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startPreEnroll FP_FINISH ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "ms) RESULT: 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/4 v8, 0x1

    iput-boolean v8, p0, mIsEnrolling:Z
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_4e} :catch_4f

    goto :goto_11

    .line 548
    .end local v0    # "begin":J
    .end local v4    # "result":J
    :catch_4f
    move-exception v3

    .line 549
    .local v3, "e":Landroid/os/RemoteException;
    const-string v8, "FingerprintService"

    const-string/jumbo v9, "startPreEnroll failed"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v4, v6

    .line 551
    goto :goto_11
.end method

.method startRemove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Z)V
    .registers 20
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerId"    # I
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "restricted"    # Z

    .prologue
    .line 743
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_35

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRemove: token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_35
    invoke-virtual {p0}, getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v9

    .line 745
    .local v9, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v9, :cond_4a

    .line 746
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "startRemove: no fingeprintd!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/4 v2, 0x1

    move-object/from16 v0, p4

    invoke-direct {p0, v0, v2}, sendError(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V

    .line 764
    :cond_49
    :goto_49
    return-void

    .line 750
    :cond_4a
    const/4 v2, 0x1

    invoke-direct {p0, v2}, stopPendingOperations(Z)V

    .line 751
    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p4

    move/from16 v6, p3

    move/from16 v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V

    iput-object v2, p0, mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 754
    :try_start_61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 755
    .local v10, "begin":J
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v9, v0, v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->remove(II)I

    move-result v13

    .line 756
    .local v13, "result":I
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRemove FP_FINISH ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms) RESULT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    if-eqz v13, :cond_49

    .line 758
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRemove with id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-wide v2, p0, mHalDeviceId:J

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, handleError(JI)V
    :try_end_c3
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_c3} :catch_c4

    goto :goto_49

    .line 761
    .end local v10    # "begin":J
    .end local v13    # "result":I
    :catch_c4
    move-exception v12

    .line 762
    .local v12, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "startRemove failed"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_49
.end method

.method declared-synchronized startRequest(Landroid/os/IBinder;I[B[BIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)I
    .registers 33
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cmd"    # I
    .param p3, "inputBuf"    # [B
    .param p4, "outputBuf"    # [B
    .param p5, "inParam"    # I
    .param p6, "groupId"    # I
    .param p7, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .prologue
    .line 823
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v13

    .line 824
    .local v13, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v13, :cond_13

    .line 825
    const-string v4, "FingerprintService"

    const-string/jumbo v5, "startRequest: no fingeprintd!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_1d7

    .line 826
    const/16 v21, -0x2

    .line 897
    :goto_11
    monitor-exit p0

    return v21

    .line 829
    :cond_13
    :try_start_13
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_58

    .line 830
    const-string v5, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startRequest: CMD= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v4, requestCmdNameMap:Landroid/util/SparseArray;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", Param = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_58
    const/16 v4, 0x3e8

    move/from16 v0, p2

    if-ne v0, v4, :cond_69

    .line 836
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, removeFinger(II)I

    move-result v21

    goto :goto_11

    .line 837
    :cond_69
    const/4 v4, 0x2

    move/from16 v0, p2

    if-ne v0, v4, :cond_140

    .line 838
    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsEnrolling:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7b

    .line 839
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, startPostEnroll(Landroid/os/IBinder;)I

    .line 856
    :cond_7b
    if-nez p3, :cond_82

    .line 857
    const/4 v4, 0x0

    new-array v0, v4, [B

    move-object/from16 p3, v0

    .line 859
    :cond_82
    if-nez p4, :cond_89

    .line 860
    const/4 v4, 0x0

    new-array v0, v4, [B

    move-object/from16 p4, v0

    .line 862
    :cond_89
    const/16 v20, -0x1

    .line 863
    .local v20, "result":I
    move-object/from16 v0, p0

    iget-object v0, v0, syncObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_92} :catch_184
    .catchall {:try_start_13 .. :try_end_92} :catchall_1d7

    .line 864
    :try_start_92
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, isTZCommand(I)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 865
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, stopPendingOperations(Z)V

    .line 867
    :cond_a2
    if-eqz p7, :cond_ba

    .line 868
    new-instance v4, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p7

    move/from16 v8, p6

    invoke-direct/range {v4 .. v10}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mRequestClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 870
    :cond_ba
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 871
    .local v14, "begin":J
    move/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-interface {v13, v0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintDaemon;->request(I[B[BI)I

    move-result v20

    .line 872
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startRequest["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] FP_FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v14

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms) RESULT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    monitor-exit v24
    :try_end_102
    .catchall {:try_start_92 .. :try_end_102} :catchall_1d4

    .line 874
    :try_start_102
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_23f

    .line 875
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 876
    .local v22, "strInBuiler":Ljava/lang/StringBuilder;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 877
    .local v23, "strOutBuiler":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_1f7

    move-object/from16 v0, p3

    array-length v4, v0

    if-lez v4, :cond_1f7

    .line 878
    move-object/from16 v11, p3

    .local v11, "arr$":[B
    array-length v0, v11

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_11e
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1da

    aget-byte v12, v11, v18

    .line 879
    .local v12, "b":B
    const-string v4, "%02x "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    and-int/lit16 v7, v12, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    add-int/lit8 v18, v18, 0x1

    goto :goto_11e

    .line 841
    .end local v11    # "arr$":[B
    .end local v12    # "b":B
    .end local v14    # "begin":J
    .end local v18    # "i$":I
    .end local v19    # "len$":I
    .end local v20    # "result":I
    .end local v22    # "strInBuiler":Ljava/lang/StringBuilder;
    .end local v23    # "strOutBuiler":Ljava/lang/StringBuilder;
    :cond_140
    const/16 v4, 0x3e9

    move/from16 v0, p2

    if-ne v0, v4, :cond_197

    .line 842
    invoke-direct/range {p0 .. p0}, inLockoutMode()Z

    move-result v4

    if-eqz v4, :cond_193

    .line 843
    move-object/from16 v0, p0

    iget-wide v4, v0, mLockOutTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v0, v4

    move/from16 v21, v0

    .line 844
    .local v21, "ret":I
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startRequest["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] FP_FINISH - RESULT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_182
    .catch Landroid/os/RemoteException; {:try_start_102 .. :try_end_182} :catch_184
    .catchall {:try_start_102 .. :try_end_182} :catchall_1d7

    goto/16 :goto_11

    .line 894
    .end local v21    # "ret":I
    :catch_184
    move-exception v16

    .line 895
    .local v16, "e":Landroid/os/RemoteException;
    :try_start_185
    const-string v4, "FingerprintService"

    const-string/jumbo v5, "startRequest failed"

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18f
    .catchall {:try_start_185 .. :try_end_18f} :catchall_1d7

    .line 897
    const/16 v21, -0x3

    goto/16 :goto_11

    .line 847
    .end local v16    # "e":Landroid/os/RemoteException;
    :cond_193
    const/16 v21, 0x0

    goto/16 :goto_11

    .line 848
    :cond_197
    const/16 v4, 0x3ea

    move/from16 v0, p2

    if-ne v0, v4, :cond_7b

    .line 849
    :try_start_19d
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startRequest["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] FP_FINISH - RESULT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, mIsEnrolling:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsEnrolling:Z
    :try_end_1ca
    .catch Landroid/os/RemoteException; {:try_start_19d .. :try_end_1ca} :catch_184
    .catchall {:try_start_19d .. :try_end_1ca} :catchall_1d7

    if-eqz v4, :cond_1d0

    .line 851
    const/16 v21, 0x1

    goto/16 :goto_11

    .line 853
    :cond_1d0
    const/16 v21, 0x0

    goto/16 :goto_11

    .line 873
    .restart local v20    # "result":I
    :catchall_1d4
    move-exception v4

    :try_start_1d5
    monitor-exit v24
    :try_end_1d6
    .catchall {:try_start_1d5 .. :try_end_1d6} :catchall_1d4

    :try_start_1d6
    throw v4
    :try_end_1d7
    .catch Landroid/os/RemoteException; {:try_start_1d6 .. :try_end_1d7} :catch_184
    .catchall {:try_start_1d6 .. :try_end_1d7} :catchall_1d7

    .line 823
    .end local v13    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    .end local v20    # "result":I
    :catchall_1d7
    move-exception v4

    monitor-exit p0

    throw v4

    .line 881
    .restart local v11    # "arr$":[B
    .restart local v13    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    .restart local v14    # "begin":J
    .restart local v18    # "i$":I
    .restart local v19    # "len$":I
    .restart local v20    # "result":I
    .restart local v22    # "strInBuiler":Ljava/lang/StringBuilder;
    .restart local v23    # "strOutBuiler":Ljava/lang/StringBuilder;
    :cond_1da
    :try_start_1da
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startRequest: In = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    .end local v11    # "arr$":[B
    .end local v18    # "i$":I
    .end local v19    # "len$":I
    :cond_1f7
    if-eqz p4, :cond_23f

    move-object/from16 v0, p4

    array-length v4, v0

    if-lez v4, :cond_23f

    .line 884
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_200
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_222

    .line 885
    const-string v4, "%02x "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-byte v7, p4, v17

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    add-int/lit8 v17, v17, 0x1

    goto :goto_200

    .line 887
    :cond_222
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startRequest: Out= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    .end local v17    # "i":I
    .end local v22    # "strInBuiler":Ljava/lang/StringBuilder;
    .end local v23    # "strOutBuiler":Ljava/lang/StringBuilder;
    :cond_23f
    const/4 v4, 0x6

    move/from16 v0, p2

    if-ne v0, v4, :cond_24a

    .line 891
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mLatestSensorStatus:I
    :try_end_24a
    .catch Landroid/os/RemoteException; {:try_start_1da .. :try_end_24a} :catch_184
    .catchall {:try_start_1da .. :try_end_24a} :catchall_1d7

    :cond_24a
    move/from16 v21, v20

    .line 893
    goto/16 :goto_11
.end method

.method stopAuthentication(Landroid/os/IBinder;Z)V
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "initiatedByClient"    # Z

    .prologue
    .line 709
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_27

    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopAuthentication: token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", initiatedByClient="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_27
    invoke-virtual {p0}, getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v3

    .line 712
    .local v3, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v3, :cond_48

    .line 713
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "stopAuthentication: no fingeprintd!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v6, p0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v6, :cond_47

    iget-object v6, p0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v6, v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v6, :cond_47

    .line 715
    iget-object v6, p0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v6, v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, sendError(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V

    .line 739
    :cond_47
    :goto_47
    return-void

    .line 719
    :cond_48
    iget-object v2, p0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 720
    .local v2, "client":Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    if-eqz v2, :cond_50

    iget-object v6, v2, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-eq v6, p1, :cond_59

    .line 721
    :cond_50
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "stopAuthentication: invalid client or token!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 725
    :cond_59
    if-eqz p2, :cond_ab

    .line 727
    :try_start_5b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 728
    .local v0, "begin":J
    invoke-interface {v3}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelAuthentication()I

    move-result v5

    .line 729
    .local v5, "result":I
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopAuthentication FP_FINISH ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms) RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    if-eqz v5, :cond_a7

    .line 731
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopAuthentication failed, result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_a7} :catch_b1

    .line 736
    .end local v0    # "begin":J
    .end local v5    # "result":I
    :cond_a7
    :goto_a7
    const/4 v6, 0x5

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v2, v6}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    .line 738
    :cond_ab
    iget-object v6, p0, mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v6}, removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_47

    .line 733
    :catch_b1
    move-exception v4

    .line 734
    .local v4, "e":Landroid/os/RemoteException;
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "stopAuthentication failed"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a7
.end method

.method stopEnrollment(Landroid/os/IBinder;Z)V
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "initiatedByClient"    # Z

    .prologue
    .line 616
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_27

    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopEnrollment: token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", initiatedByClient="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_27
    invoke-virtual {p0}, getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v3

    .line 618
    .local v3, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v3, :cond_53

    .line 619
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "stopEnrollment: no fingeprintd!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v6, p0, mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v6, :cond_49

    iget-object v6, p0, mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v6, v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v6, :cond_49

    .line 622
    :try_start_3f
    iget-object v6, p0, mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v6, v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-wide v8, p0, mHalDeviceId:J

    const/4 v7, 0x1

    invoke-interface {v6, v8, v9, v7}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JI)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_49} :catch_4a

    .line 648
    :cond_49
    :goto_49
    return-void

    .line 623
    :catch_4a
    move-exception v4

    .line 624
    .local v4, "e":Landroid/os/RemoteException;
    const-string v6, "FingerprintService"

    const-string v7, "Failed to invoke sendError:"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49

    .line 629
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_53
    iget-object v2, p0, mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 630
    .local v2, "client":Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    if-eqz v2, :cond_5b

    iget-object v6, v2, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-eq v6, p1, :cond_64

    .line 631
    :cond_5b
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "stopEnrollment: invalid client or token!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 634
    :cond_64
    if-eqz p2, :cond_b6

    .line 636
    :try_start_66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 637
    .local v0, "begin":J
    invoke-interface {v3}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelEnrollment()I

    move-result v5

    .line 638
    .local v5, "result":I
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopEnrollment FP_FINISH ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms) RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    if-eqz v5, :cond_b2

    .line 640
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startEnrollCancel failed, result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_b2} :catch_bc

    .line 645
    .end local v0    # "begin":J
    .end local v5    # "result":I
    :cond_b2
    :goto_b2
    const/4 v6, 0x5

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v2, v6}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    .line 647
    :cond_b6
    iget-object v6, p0, mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v6}, removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_49

    .line 642
    :catch_bc
    move-exception v4

    .line 643
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "stopEnrollment failed"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b2
.end method
