.class public Lcom/samsung/android/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;,
        Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;,
        Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    }
.end annotation


# static fields
.field public static final BUNDLE_BACKUP_BUTTON_NAME:Ljava/lang/String; = "button_name"

.field public static final BUNDLE_DENIED_FINGERPRINT:Ljava/lang/String; = "denied_fingerprint"

.field public static final BUNDLE_ENABLE_PASSWORD:Ljava/lang/String; = "password"

.field public static final BUNDLE_PRIMARY_AUTHORIZATION:Ljava/lang/String; = "primary_authorization"

.field public static final BUNDLE_STANDBY_STRING:Ljava/lang/String; = "standby_string"

.field public static final CLIENTSPEC_KEY_ACCURACY:Ljava/lang/String; = "request_accuracy"

.field public static final CLIENTSPEC_KEY_ALLOW_INDEXES:Ljava/lang/String; = "request_template_index_list"

.field public static final CLIENTSPEC_KEY_APPNAME:Ljava/lang/String; = "appName"

.field public static final CLIENTSPEC_KEY_BACKGROUND:Ljava/lang/String; = "background"

.field public static final CLIENTSPEC_KEY_DEMANDED_PROPERTY_NAME:Ljava/lang/String; = "propertyName"

.field public static final CLIENTSPEC_KEY_DEMAND_EXTRA_EVENT:Ljava/lang/String; = "demandExtraEvent"

.field public static final CLIENTSPEC_KEY_OWN_NAME:Ljava/lang/String; = "ownName"

.field public static final CLIENTSPEC_KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final CLIENTSPEC_KEY_PRIVILEGED:Ljava/lang/String; = "privileged"

.field public static final CLIENTSPEC_KEY_PRIVILEGED_ATTR:Ljava/lang/String; = "privileged_attr"

.field public static final CLIENTSPEC_KEY_SECURITY_LEVEL:Ljava/lang/String; = "securityLevel"

.field public static final CLIENTSPEC_KEY_USE_MANUAL_TIMEOUT:Ljava/lang/String; = "useManualTimeout"

.field private static final DEBUG:Z

.field private static final ENROLL_FINISHED:Ljava/lang/String; = "com.samsung.android.fingerprint.action.ENROLL_FINISHED"

.field private static final ERROR_MSG_SERVICE_NOT_FOUND:Ljava/lang/String; = "FingerprintService is not running!"

.field public static final EXTRAS_KEY_TOKEN:Ljava/lang/String; = "token"

.field public static final FINGER_ALL:I = 0x15

.field public static final FINGER_LEFT_INDEX:I = 0x2

.field public static final FINGER_LEFT_INDEX_2ND:I = 0xc

.field public static final FINGER_LEFT_LITTLE:I = 0x5

.field public static final FINGER_LEFT_LITTLE_2ND:I = 0xf

.field public static final FINGER_LEFT_MIDDLE:I = 0x3

.field public static final FINGER_LEFT_MIDDLE_2ND:I = 0xd

.field public static final FINGER_LEFT_RING:I = 0x4

.field public static final FINGER_LEFT_RING_2ND:I = 0xe

.field public static final FINGER_LEFT_THUMB:I = 0x1

.field public static final FINGER_LEFT_THUMB_2ND:I = 0xb

.field public static final FINGER_NOT_SPECIFIED:I = 0x0

.field public static final FINGER_NUMBER_FOR_ONE:I = 0xa

.field public static final FINGER_PERMISSION_DELIMITER:Ljava/lang/String; = ","

.field public static final FINGER_RIGHT_INDEX:I = 0x7

.field public static final FINGER_RIGHT_INDEX_2ND:I = 0x11

.field public static final FINGER_RIGHT_LITTLE:I = 0xa

.field public static final FINGER_RIGHT_LITTLE_2ND:I = 0x14

.field public static final FINGER_RIGHT_MIDDLE:I = 0x8

.field public static final FINGER_RIGHT_MIDDLE_2ND:I = 0x12

.field public static final FINGER_RIGHT_RING:I = 0x9

.field public static final FINGER_RIGHT_RING_2ND:I = 0x13

.field public static final FINGER_RIGHT_THUMB:I = 0x6

.field public static final FINGER_RIGHT_THUMB_2ND:I = 0x10

.field public static final PRIVILEGED_ATTR_EXCLUSIVE_IDENTIFY:I = 0x4

.field public static final PRIVILEGED_ATTR_NO_IDENTIFY_LOCK:I = 0x2

.field public static final PRIVILEGED_ATTR_NO_VIBRATION:I = 0x1

.field public static final PRIVILEGED_TYPE_KEYGUARD:I = -0x80000000

.field public static final REQ_CMD_SESSION_OPEN:I = 0x1

.field public static final SECURITY_LEVEL_HIGH:I = 0x2

.field public static final SECURITY_LEVEL_LOW:I = 0x0

.field public static final SECURITY_LEVEL_REGULAR:I = 0x1

.field public static final SECURITY_LEVEL_VERY_HIGH:I = 0x3

.field public static final SENSOR_TYPE_SWIPE:I = 0x1

.field public static final SENSOR_TYPE_TOUCH:I = 0x2

.field public static final SERVICE_NAME:Ljava/lang/String; = "fingerprint_service"

.field private static final START_ENROLL_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "FPMS_FingerprintManager"

.field public static final USE_LAST_QUALITY_FEEDBACK:I = -0x1

.field private static mCallerActivity:Landroid/app/Activity;

.field private static mCallerApplication:Landroid/app/Application;

.field private static mContext:Landroid/content/Context;

.field private static mEnrollFinishResult:I

.field private static mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

.field private static mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private static mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

.field private static mIndex:I

.field private static mIsLinkedDeathRecipient:Z

.field private static mSecurityLevel:I

.field private static mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

.field private static mStringId:Ljava/lang/String;

.field private static mWaitLock:Ljava/lang/Object;

.field private static sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;


# instance fields
.field private mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field public mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

.field private final mHandler:Landroid/os/Handler;

.field private mOwnName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 56
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_30

    move v0, v1

    :goto_b
    sput-boolean v0, DEBUG:Z

    .line 59
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.fingerprint.service"

    const-string v4, "com.samsung.android.fingerprint.service.activity.StartEnrollActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, START_ENROLL_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

    .line 189
    sput-boolean v2, mIsLinkedDeathRecipient:Z

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, mWaitLock:Ljava/lang/Object;

    .line 194
    sput-object v5, mContext:Landroid/content/Context;

    .line 195
    sput-object v5, mStringId:Ljava/lang/String;

    .line 197
    sput v6, mIndex:I

    .line 198
    sput v1, mSecurityLevel:I

    .line 201
    sput-object v5, mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    .line 204
    sput v6, mEnrollFinishResult:I

    .line 213
    sput-object v5, sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-void

    :cond_30
    move v0, v2

    .line 56
    goto :goto_b
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, mOwnName:Ljava/lang/String;

    .line 691
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$2;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    iput-object v0, p0, mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1143
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$3;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    iput-object v0, p0, mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    .line 249
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 250
    return-void
.end method

.method static synthetic access$000()Lcom/samsung/android/fingerprint/IFingerprintClient;
    .registers 1

    .prologue
    .line 54
    sget-object v0, mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    return-object v0
.end method

.method static synthetic access$100()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 54
    sget-object v0, mCallerActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/fingerprint/FingerprintManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintManager;

    .prologue
    .line 54
    invoke-direct {p0}, unregisterActivityLifeCallback()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/fingerprint/FingerprintManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintManager;

    .prologue
    .line 54
    iget-object v0, p0, mOwnName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/fingerprint/FingerprintManager;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Exception;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/fingerprint/FingerprintManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintManager;

    .prologue
    .line 54
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600()Landroid/content/Context;
    .registers 1

    .prologue
    .line 54
    sget-object v0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700()Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .registers 1

    .prologue
    .line 54
    sget-object v0, mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 54
    sget-object v0, mStringId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()I
    .registers 1

    .prologue
    .line 54
    sget v0, mIndex:I

    return v0
.end method

.method private static declared-synchronized ensureServiceConnected()V
    .registers 7

    .prologue
    .line 318
    const-class v4, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v4

    const/4 v2, 0x0

    .line 320
    .local v2, "isStartedServiceInTime":Z
    :try_start_4
    sget-object v3, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v3, :cond_14

    .line 321
    const-string v3, "fingerprint_service"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/fingerprint/IFingerprintManager;

    move-result-object v3

    sput-object v3, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    .line 324
    :cond_14
    sget-object v3, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v3, :cond_5a

    .line 325
    const-string v3, "FPMS_FingerprintManager"

    const-string v5, "ensureServiceConnected: mService is null"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-static {}, startFingerprintManagerService()V

    .line 327
    invoke-static {}, waitForService()Z

    move-result v2

    .line 328
    if-eqz v2, :cond_3b

    sget-boolean v3, mIsLinkedDeathRecipient:Z
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_57

    if-nez v3, :cond_3b

    .line 330
    :try_start_2c
    sget-object v3, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    sget-object v5, sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 331
    const/4 v3, 0x1

    sput-boolean v3, mIsLinkedDeathRecipient:Z
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_3b} :catch_3d
    .catchall {:try_start_2c .. :try_end_3b} :catchall_57

    .line 362
    :cond_3b
    :goto_3b
    monitor-exit v4

    return-void

    .line 333
    :catch_3d
    move-exception v0

    .line 334
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3e
    const-string v3, "FPMS_FingerprintManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ensureServiceConnected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_3e .. :try_end_56} :catchall_57

    goto :goto_3b

    .line 318
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_57
    move-exception v3

    monitor-exit v4

    throw v3

    .line 339
    :cond_5a
    :try_start_5a
    sget-object v3, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getVersion()I
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5f} :catch_60
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5f} :catch_b2
    .catchall {:try_start_5a .. :try_end_5f} :catchall_57

    goto :goto_3b

    .line 340
    :catch_60
    move-exception v0

    .line 341
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_61
    instance-of v3, v0, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_aa

    .line 342
    const-string v3, "FPMS_FingerprintManager"

    const-string v5, "===DeadObjectException==="

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {}, startFingerprintManagerService()V

    .line 344
    invoke-static {}, waitForService()Z

    move-result v2

    .line 345
    if-eqz v2, :cond_3b

    sget-boolean v3, mIsLinkedDeathRecipient:Z
    :try_end_77
    .catchall {:try_start_61 .. :try_end_77} :catchall_57

    if-nez v3, :cond_3b

    .line 347
    :try_start_79
    sget-object v3, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    sget-object v5, sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 348
    const/4 v3, 0x1

    sput-boolean v3, mIsLinkedDeathRecipient:Z

    .line 349
    const-string v3, "FPMS_FingerprintManager"

    const-string v5, "ensureServiceConnected: linkToDeath"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_8f} :catch_90
    .catchall {:try_start_79 .. :try_end_8f} :catchall_57

    goto :goto_3b

    .line 350
    :catch_90
    move-exception v1

    .line 351
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_91
    const-string v3, "FPMS_FingerprintManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ensureServiceConnected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 355
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_aa
    const-string v3, "FPMS_FingerprintManager"

    const-string v5, "ensureServiceConnected"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b

    .line 357
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_b2
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "FPMS_FingerprintManager"

    const-string v5, "ensureServiceConnected"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ba
    .catchall {:try_start_91 .. :try_end_ba} :catchall_57

    goto :goto_3b
.end method

.method public static generateHash(Ljava/lang/String;)[B
    .registers 6
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 1914
    :try_start_0
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1915
    .local v1, "md":Ljava/security/MessageDigest;
    const-string v2, "iso-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 1916
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_12} :catch_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_12} :catch_2f

    move-result-object v2

    .line 1922
    .end local v1    # "md":Ljava/security/MessageDigest;
    :goto_13
    return-object v2

    .line 1917
    :catch_14
    move-exception v0

    .line 1918
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "FPMS_FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateHash:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2d
    const/4 v2, 0x0

    goto :goto_13

    .line 1919
    :catch_2f
    move-exception v0

    .line 1920
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "FPMS_FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateHash:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public static getImageQualityAnimation(ILandroid/content/Context;)Landroid/graphics/drawable/AnimationDrawable;
    .registers 10
    .param p0, "quality"    # I
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 1740
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1741
    .local v2, "mPm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 1742
    .local v3, "mRes":Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 1743
    .local v4, "result":I
    const/4 v1, 0x0

    .line 1746
    .local v1, "mAni":Landroid/graphics/drawable/AnimationDrawable;
    :try_start_7
    const-string v5, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_c} :catch_19

    move-result-object v3

    .line 1751
    :goto_d
    if-nez v3, :cond_25

    .line 1752
    const-string v5, "FPMS_FingerprintManager"

    const-string/jumbo v6, "mRes is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    const/4 v5, 0x0

    .line 1836
    :goto_18
    return-object v5

    .line 1747
    :catch_19
    move-exception v0

    .line 1748
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "FPMS_FingerprintManager"

    const-string v6, "getImageQualityAnimation, NameNotFoundException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_d

    .line 1756
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_25
    const/4 v5, -0x1

    if-ne p0, v5, :cond_32

    .line 1758
    :try_start_28
    sget-object v5, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getLastImageQuality(Ljava/lang/String;)I
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_31} :catch_51

    move-result p0

    .line 1763
    :cond_32
    :goto_32
    invoke-static {}, getSensorType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_cf

    .line 1764
    sparse-switch p0, :sswitch_data_142

    .line 1797
    const-string/jumbo v5, "spass_errimage_default"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1833
    :cond_47
    :goto_47
    if-eqz v4, :cond_4f

    .line 1834
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "mAni":Landroid/graphics/drawable/AnimationDrawable;
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .restart local v1    # "mAni":Landroid/graphics/drawable/AnimationDrawable;
    :cond_4f
    move-object v5, v1

    .line 1836
    goto :goto_18

    .line 1759
    :catch_51
    move-exception v0

    .line 1760
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_32

    .line 1766
    .end local v0    # "e":Landroid/os/RemoteException;
    :sswitch_56
    const-string/jumbo v5, "spass_errimage_nomatch"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1767
    goto :goto_47

    .line 1769
    :sswitch_62
    const-string/jumbo v5, "spass_errimage_short"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1770
    goto :goto_47

    .line 1773
    :sswitch_6e
    const-string/jumbo v5, "spass_errimage_speed"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1774
    goto :goto_47

    .line 1776
    :sswitch_7a
    const-string/jumbo v5, "spass_errimage_reverse"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1777
    goto :goto_47

    .line 1779
    :sswitch_86
    const-string/jumbo v5, "spass_errimage_left"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1780
    goto :goto_47

    .line 1782
    :sswitch_92
    const-string/jumbo v5, "spass_errimage_right"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1783
    goto :goto_47

    .line 1785
    :sswitch_9e
    const-string/jumbo v5, "spass_errimage_wet"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1786
    goto :goto_47

    .line 1788
    :sswitch_aa
    const-string/jumbo v5, "spass_errimage_diagonal"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1789
    goto :goto_47

    .line 1791
    :sswitch_b6
    const-string/jumbo v5, "spass_errimage_homekey"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1792
    goto :goto_47

    .line 1794
    :sswitch_c2
    const-string/jumbo v5, "spass_errimage_same"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1795
    goto/16 :goto_47

    .line 1800
    :cond_cf
    invoke-static {}, getSensorType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_47

    .line 1801
    sparse-switch p0, :sswitch_data_170

    .line 1829
    const-string/jumbo v5, "spass_touch_errimage_default"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_47

    .line 1803
    :sswitch_e6
    const-string/jumbo v5, "spass_touch_errimage_nomatch"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1804
    goto/16 :goto_47

    .line 1806
    :sswitch_f3
    const-string/jumbo v5, "spass_touch_errimage_too_fast"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1807
    goto/16 :goto_47

    .line 1809
    :sswitch_100
    const-string/jumbo v5, "spass_touch_errimage_something_on_the_sensor"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1810
    goto/16 :goto_47

    .line 1813
    :sswitch_10d
    const-string/jumbo v5, "spass_touch_errimage_short"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1814
    goto/16 :goto_47

    .line 1817
    :sswitch_11a
    const-string/jumbo v5, "spass_touch_errimage_whole"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1818
    goto/16 :goto_47

    .line 1821
    :sswitch_127
    const-string/jumbo v5, "spass_touch_errimage_wet"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1822
    goto/16 :goto_47

    .line 1825
    :sswitch_134
    const-string/jumbo v5, "spass_touch_errimage_position"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1826
    goto/16 :goto_47

    .line 1764
    nop

    :sswitch_data_142
    .sparse-switch
        0x0 -> :sswitch_56
        0x2 -> :sswitch_6e
        0x3 -> :sswitch_7a
        0x4 -> :sswitch_62
        0x10 -> :sswitch_6e
        0x200 -> :sswitch_b6
        0x8000 -> :sswitch_aa
        0x20000 -> :sswitch_86
        0x40000 -> :sswitch_92
        0x1000000 -> :sswitch_9e
        0x30000000 -> :sswitch_c2
    .end sparse-switch

    .line 1801
    :sswitch_data_170
    .sparse-switch
        0x0 -> :sswitch_e6
        0x2 -> :sswitch_f3
        0x200 -> :sswitch_100
        0x1000 -> :sswitch_11a
        0x10000 -> :sswitch_10d
        0x80000 -> :sswitch_10d
        0x1000000 -> :sswitch_127
        0x30000000 -> :sswitch_134
    .end sparse-switch
.end method

.method public static getImageQualityFeedback(I)I
    .registers 2
    .param p0, "quality"    # I

    .prologue
    .line 1592
    const/4 v0, 0x0

    .line 1593
    .local v0, "result":I
    sparse-switch p0, :sswitch_data_3a

    .line 1639
    :goto_4
    return v0

    .line 1595
    :sswitch_5
    const v0, 0x1040851

    .line 1596
    goto :goto_4

    .line 1600
    :sswitch_9
    const v0, 0x1040852

    .line 1601
    goto :goto_4

    .line 1603
    :sswitch_d
    const v0, 0x1040853

    .line 1604
    goto :goto_4

    .line 1606
    :sswitch_11
    const v0, 0x1040854

    .line 1607
    goto :goto_4

    .line 1609
    :sswitch_15
    const v0, 0x1040855

    .line 1610
    goto :goto_4

    .line 1612
    :sswitch_19
    const v0, 0x1040856

    .line 1613
    goto :goto_4

    .line 1615
    :sswitch_1d
    const v0, 0x1040857

    .line 1616
    goto :goto_4

    .line 1618
    :sswitch_21
    const v0, 0x1040858

    .line 1619
    goto :goto_4

    .line 1621
    :sswitch_25
    const v0, 0x1040859

    .line 1622
    goto :goto_4

    .line 1624
    :sswitch_29
    const v0, 0x104085a

    .line 1625
    goto :goto_4

    .line 1627
    :sswitch_2d
    const v0, 0x104085b

    .line 1628
    goto :goto_4

    .line 1631
    :sswitch_31
    const v0, 0x104085c

    .line 1632
    goto :goto_4

    .line 1634
    :sswitch_35
    const v0, 0x104085d

    .line 1635
    goto :goto_4

    .line 1593
    nop

    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_21
        0x2 -> :sswitch_11
        0x3 -> :sswitch_31
        0x4 -> :sswitch_9
        0x10 -> :sswitch_d
        0x200 -> :sswitch_35
        0x1000 -> :sswitch_9
        0x2000 -> :sswitch_9
        0x8000 -> :sswitch_31
        0x10000 -> :sswitch_29
        0x20000 -> :sswitch_15
        0x40000 -> :sswitch_19
        0x80000 -> :sswitch_25
        0x1000000 -> :sswitch_2d
        0x2000000 -> :sswitch_1d
    .end sparse-switch
.end method

.method public static getImageQualityFeedbackString(ILandroid/content/Context;)Ljava/lang/String;
    .registers 10
    .param p0, "quality"    # I
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 1679
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1680
    .local v1, "mPm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 1681
    .local v2, "mRes":Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 1682
    .local v4, "result":I
    const/4 v3, 0x0

    .line 1685
    .local v3, "mStr":Ljava/lang/String;
    :try_start_7
    const-string v5, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_c} :catch_19

    move-result-object v2

    .line 1690
    :goto_d
    if-nez v2, :cond_25

    .line 1691
    const-string v5, "FPMS_FingerprintManager"

    const-string/jumbo v6, "mRes is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    const/4 v5, 0x0

    .line 1735
    :goto_18
    return-object v5

    .line 1686
    :catch_19
    move-exception v0

    .line 1687
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "FPMS_FingerprintManager"

    const-string v6, "getImageQualityFeedbackString, NameNotFoundException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_d

    .line 1695
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_25
    sparse-switch p0, :sswitch_data_c0

    .line 1729
    const-string/jumbo v5, "touch_image_quality_finger_offset_too_far_left"

    const-string/jumbo v6, "string"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1732
    :goto_34
    if-eqz v4, :cond_3a

    .line 1733
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_3a
    move-object v5, v3

    .line 1735
    goto :goto_18

    .line 1697
    :sswitch_3c
    const-string/jumbo v5, "recognize_fail"

    const-string/jumbo v6, "string"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1698
    goto :goto_34

    .line 1700
    :sswitch_49
    const-string/jumbo v5, "touch_image_quality_finger_offset_too_far_left"

    const-string/jumbo v6, "string"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1701
    goto :goto_34

    .line 1705
    :sswitch_56
    const-string/jumbo v5, "touch_image_quality_finger_offset_too_far_left"

    const-string/jumbo v6, "string"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1706
    goto :goto_34

    .line 1708
    :sswitch_63
    const-string/jumbo v5, "touch_image_quality_pressure_too_light"

    const-string/jumbo v6, "string"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1709
    goto :goto_34

    .line 1711
    :sswitch_70
    const-string/jumbo v5, "touch_image_quality_pressure_too_hard"

    const-string/jumbo v6, "string"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1712
    goto :goto_34

    .line 1714
    :sswitch_7d
    const-string/jumbo v5, "touch_image_quality_same_as_previous"

    const-string/jumbo v6, "string"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1715
    goto :goto_34

    .line 1717
    :sswitch_8a
    const-string/jumbo v5, "spass_image_quality_extraction_failure"

    const-string/jumbo v6, "string"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1718
    goto :goto_34

    .line 1720
    :sswitch_97
    const-string/jumbo v5, "spass_image_quality_wet_finger"

    const-string/jumbo v6, "string"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1721
    goto :goto_34

    .line 1723
    :sswitch_a4
    const-string/jumbo v5, "spass_something_on_sensor"

    const-string/jumbo v6, "string"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1724
    goto :goto_34

    .line 1726
    :sswitch_b1
    const-string/jumbo v5, "spass_status_too_fast"

    const-string/jumbo v6, "string"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1727
    goto/16 :goto_34

    .line 1695
    nop

    :sswitch_data_c0
    .sparse-switch
        0x0 -> :sswitch_3c
        0x2 -> :sswitch_b1
        0x200 -> :sswitch_a4
        0x1000 -> :sswitch_56
        0x2000 -> :sswitch_49
        0x10000 -> :sswitch_63
        0x20000 -> :sswitch_56
        0x40000 -> :sswitch_56
        0x80000 -> :sswitch_70
        0x1000000 -> :sswitch_97
        0x30000000 -> :sswitch_7d
        0x40000000 -> :sswitch_8a
    .end sparse-switch
.end method

.method public static getImageQualityIcon(I)I
    .registers 2
    .param p0, "quality"    # I

    .prologue
    .line 1643
    const/4 v0, 0x0

    .line 1644
    .local v0, "result":I
    sparse-switch p0, :sswitch_data_28

    .line 1671
    const v0, 0x1080345

    .line 1674
    :goto_7
    return v0

    .line 1646
    :sswitch_8
    const v0, 0x1080348

    .line 1647
    goto :goto_7

    .line 1649
    :sswitch_c
    const v0, 0x1080349

    .line 1650
    goto :goto_7

    .line 1653
    :sswitch_10
    const v0, 0x108034c

    .line 1654
    goto :goto_7

    .line 1656
    :sswitch_14
    const v0, 0x108034a

    .line 1657
    goto :goto_7

    .line 1659
    :sswitch_18
    const v0, 0x108034b

    .line 1660
    goto :goto_7

    .line 1662
    :sswitch_1c
    const v0, 0x108034d

    .line 1663
    goto :goto_7

    .line 1665
    :sswitch_20
    const v0, 0x1080346

    .line 1666
    goto :goto_7

    .line 1668
    :sswitch_24
    const v0, 0x1080347

    .line 1669
    goto :goto_7

    .line 1644
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_8
        0x2 -> :sswitch_10
        0x4 -> :sswitch_c
        0x10 -> :sswitch_10
        0x200 -> :sswitch_24
        0x8000 -> :sswitch_20
        0x20000 -> :sswitch_14
        0x40000 -> :sswitch_18
        0x1000000 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    const-class v0, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_4
    invoke-static {p0, v1}, getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_a

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "SecurityLevel"    # I

    .prologue
    .line 225
    const-class v1, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v1

    :try_start_3
    sget v0, mSecurityLevel:I

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "SecurityLevel"    # I
    .param p2, "ownName"    # Ljava/lang/String;

    .prologue
    .line 233
    const-class v1, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v1

    if-nez p0, :cond_10

    .line 234
    :try_start_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "context must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 233
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 236
    :cond_10
    :try_start_10
    sput-object p0, mContext:Landroid/content/Context;

    .line 237
    sput p1, mSecurityLevel:I

    .line 238
    sget-object v0, sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v0, :cond_1f

    .line 239
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    sput-object v0, sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 241
    :cond_1f
    sget-object v0, sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_28

    .line 242
    sget-object v0, sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-direct {v0, p2}, setOwnName(Ljava/lang/String;)V

    .line 244
    :cond_28
    invoke-static {}, ensureServiceConnected()V

    .line 245
    sget-object v0, sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_d

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ownName"    # Ljava/lang/String;

    .prologue
    .line 221
    const-class v0, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_4
    invoke-static {p0, v1, p1}, getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_a

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getSensorType()I
    .registers 2

    .prologue
    .line 874
    const-string v0, "google_touch"

    const-string/jumbo v1, "touch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 875
    const/4 v0, 0x2

    .line 877
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 969
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 970
    return-void
.end method

.method private logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 8
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "extraInfo"    # Ljava/lang/String;

    .prologue
    .line 980
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_39

    .line 981
    const-string v1, "FPMS_FingerprintManager"

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

    .line 985
    :goto_24
    return-void

    .line 981
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

    .line 983
    :cond_39
    const-string v1, "FPMS_FingerprintManager"

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

.method private logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "extraInfo"    # Ljava/lang/String;
    .param p4, "extraInfo2"    # Ljava/lang/String;

    .prologue
    .line 988
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_3d

    .line 989
    const-string v1, "FPMS_FingerprintManager"

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

    .line 993
    :goto_24
    return-void

    .line 989
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 991
    :cond_3d
    const-string v1, "FPMS_FingerprintManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_5e

    const-string v0, ""

    :goto_52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :cond_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_52
.end method

.method private registerActivityLifeCallback()V
    .registers 3

    .prologue
    .line 756
    sget-object v0, mCallerApplication:Landroid/app/Application;

    if-eqz v0, :cond_13

    .line 757
    const-string v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "registerActivityLifeCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    sget-object v0, mCallerApplication:Landroid/app/Application;

    iget-object v1, p0, mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 760
    :cond_13
    return-void
.end method

.method private setOwnName(Ljava/lang/String;)V
    .registers 2
    .param p1, "ownName"    # Ljava/lang/String;

    .prologue
    .line 1840
    iput-object p1, p0, mOwnName:Ljava/lang/String;

    .line 1841
    return-void
.end method

.method private static startFingerprintManagerService()V
    .registers 5

    .prologue
    .line 276
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 277
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.fingerprint.service"

    const-string v4, "com.samsung.android.fingerprint.service.FingerprintServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 279
    const-string v2, "com.samsung.android.fingerprint.action.START_SERVICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_32

    .line 281
    const-string v2, "FPMS_FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_32
    sget-object v2, mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 287
    :goto_39
    return-void

    .line 284
    :catch_3a
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method private unregisterActivityLifeCallback()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 763
    sget-object v0, mCallerApplication:Landroid/app/Application;

    if-eqz v0, :cond_18

    .line 764
    const-string v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "unregisterActivityLifeCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    sget-object v0, mCallerApplication:Landroid/app/Application;

    iget-object v1, p0, mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 766
    sput-object v2, mCallerActivity:Landroid/app/Activity;

    .line 767
    sput-object v2, mCallerApplication:Landroid/app/Application;

    .line 769
    :cond_18
    return-void
.end method

.method private static waitForService()Z
    .registers 6

    .prologue
    .line 253
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    add-long v0, v2, v4

    .line 255
    .local v0, "endMillis":J
    :goto_8
    sget-object v3, mWaitLock:Ljava/lang/Object;

    monitor-enter v3

    .line 256
    :try_start_b
    const-string v2, "fingerprint_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/fingerprint/IFingerprintManager;

    move-result-object v2

    sput-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    .line 257
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-eqz v2, :cond_26

    .line 258
    const-string v2, "FPMS_FingerprintManager"

    const-string/jumbo v4, "waitForService: FPMS started"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v2, 0x1

    monitor-exit v3

    .line 263
    :goto_25
    return v2

    .line 261
    :cond_26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-ltz v2, :cond_3c

    .line 262
    const-string v2, "FPMS_FingerprintManager"

    const-string/jumbo v4, "waitForService: Timeout"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_25

    .line 270
    :catchall_39
    move-exception v2

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_b .. :try_end_3b} :catchall_39

    throw v2

    .line 266
    :cond_3c
    :try_start_3c
    sget-object v2, mWaitLock:Ljava/lang/Object;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_43} :catch_45
    .catchall {:try_start_3c .. :try_end_43} :catchall_39

    .line 270
    :goto_43
    :try_start_43
    monitor-exit v3
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_39

    goto :goto_8

    .line 267
    :catch_45
    move-exception v2

    goto :goto_43
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 291
    const-string v0, "FPMS_FingerprintManager"

    const-string v1, "binderDied called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v0, 0x0

    sput-object v0, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    .line 293
    const/4 v0, 0x0

    sput-boolean v0, mIsLinkedDeathRecipient:Z

    .line 294
    sget-object v0, mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    if-eqz v0, :cond_26

    .line 295
    const-string v0, "FPMS_FingerprintManager"

    const-string v1, "binderDied: Client is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_26

    .line 297
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$1;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 314
    :cond_26
    return-void
.end method

.method public cancel(Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 407
    invoke-static {}, ensureServiceConnected()V

    .line 409
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 410
    const-string v2, "cancel"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 420
    :cond_10
    :goto_10
    return v1

    .line 415
    :cond_11
    :try_start_11
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->cancel(Landroid/os/IBinder;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_1b

    move-result v2

    if-nez v2, :cond_10

    const/4 v1, 0x1

    goto :goto_10

    .line 416
    :catch_1b
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "cancel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public closeTransaction(Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 945
    invoke-static {}, ensureServiceConnected()V

    .line 947
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 948
    const-string v2, "closeTransaction"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 958
    :goto_10
    return v1

    .line 953
    :cond_11
    :try_start_11
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->closeTransaction(Landroid/os/IBinder;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 954
    :catch_18
    move-exception v0

    .line 955
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "closeTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public enroll(Landroid/os/IBinder;Ljava/lang/String;I)I
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "fingerIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 424
    invoke-static {}, ensureServiceConnected()V

    .line 426
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 427
    const-string v2, "enroll"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 437
    :goto_10
    return v1

    .line 432
    :cond_11
    :try_start_11
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->enroll(Landroid/os/IBinder;Ljava/lang/String;I)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 433
    :catch_18
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "enroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public enrollForMultiUser(Landroid/os/IBinder;ILjava/lang/String;I)I
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "permissionName"    # Ljava/lang/String;
    .param p4, "fingerIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 442
    invoke-static {}, ensureServiceConnected()V

    .line 444
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 445
    const-string v2, "enrollForMultiUser"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 455
    :goto_10
    return v1

    .line 450
    :cond_11
    :try_start_11
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->enrollForMultiUser(Landroid/os/IBinder;ILjava/lang/String;I)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 451
    :catch_18
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "enrollForMultiUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v0, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public getDaemonVersion()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1427
    invoke-static {}, ensureServiceConnected()V

    .line 1429
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_10

    .line 1430
    const-string v2, "getDaemonVersion"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1439
    :goto_f
    return-object v1

    .line 1435
    :cond_10
    :try_start_10
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getDaemonVersion()Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_17

    move-result-object v1

    goto :goto_f

    .line 1436
    :catch_17
    move-exception v0

    .line 1437
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getDaemonVersion"

    invoke-direct {p0, v2, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_f
.end method

.method public getEnrollFinishResult()I
    .registers 2

    .prologue
    .line 1101
    sget v0, mEnrollFinishResult:I

    return v0
.end method

.method public getEnrollRepeatCount()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1894
    invoke-static {}, ensureServiceConnected()V

    .line 1896
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 1897
    const-string v2, "getFingerprintId"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1907
    :goto_10
    return v1

    .line 1902
    :cond_11
    :try_start_11
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getEnrollRepeatCount()I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 1903
    :catch_18
    move-exception v0

    .line 1904
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getFingerprintId"

    invoke-direct {p0, v2, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method public getEnrolledFingers()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 804
    invoke-static {}, ensureServiceConnected()V

    .line 806
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 807
    const-string v2, "getEnrolledFingers"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 817
    :goto_10
    return v1

    .line 812
    :cond_11
    :try_start_11
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, mOwnName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getEnrolledFingers(Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_1a

    move-result v1

    goto :goto_10

    .line 813
    :catch_1a
    move-exception v0

    .line 814
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getEnrolledFingers"

    invoke-direct {p0, v2, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method public getFingerprintId(I)Ljava/lang/String;
    .registers 7
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 1877
    invoke-static {}, ensureServiceConnected()V

    .line 1879
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_10

    .line 1880
    const-string v2, "getFingerprintId"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1890
    :goto_f
    return-object v1

    .line 1885
    :cond_10
    :try_start_10
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, mOwnName:Ljava/lang/String;

    sget-object v4, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p1, v3, v4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getFingerprintIdByFinger(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1d} :catch_1f

    move-result-object v1

    goto :goto_f

    .line 1886
    :catch_1f
    move-exception v0

    .line 1887
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getFingerprintId"

    invoke-direct {p0, v2, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_f
.end method

.method public getFingerprintIds()[Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1860
    invoke-static {}, ensureServiceConnected()V

    .line 1862
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_10

    .line 1863
    const-string v2, "getFingerprintIds"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1873
    :goto_f
    return-object v1

    .line 1868
    :cond_10
    :try_start_10
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, mOwnName:Ljava/lang/String;

    sget-object v4, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getFingerprintIds(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1d} :catch_1f

    move-result-object v1

    goto :goto_f

    .line 1869
    :catch_1f
    move-exception v0

    .line 1870
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getFingerprintIds"

    invoke-direct {p0, v2, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_f
.end method

.method public getIndexName(I)Ljava/lang/String;
    .registers 6
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 1557
    invoke-static {}, ensureServiceConnected()V

    .line 1558
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_10

    .line 1559
    const-string v2, "getIndexName"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1567
    :goto_f
    return-object v1

    .line 1563
    :cond_10
    :try_start_10
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getIndexName(I)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_17

    move-result-object v1

    goto :goto_f

    .line 1564
    :catch_17
    move-exception v0

    .line 1565
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getIndexName"

    invoke-direct {p0, v2, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_f
.end method

.method public getLastImageQuality(Landroid/content/Context;)I
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 635
    const/4 v1, 0x0

    .line 636
    .local v1, "imageId":I
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_f

    .line 637
    const-string v2, "getLastImageQuality"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 638
    const/4 v2, 0x0

    .line 650
    :goto_e
    return v2

    .line 640
    :cond_f
    if-nez p1, :cond_19

    .line 641
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 644
    :cond_19
    :try_start_19
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getLastImageQuality(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, getImageQualityIcon(I)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_26} :catch_41

    move-result v1

    .line 649
    :goto_27
    const-string v2, "FPMS_FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastImageQuality: return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 650
    goto :goto_e

    .line 646
    :catch_41
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getQualityMessage"

    invoke-direct {p0, v2, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_27
.end method

.method public getLastImageQualityMessage(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 617
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_d

    .line 618
    const-string v2, "getLastImageQualityMessage"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 629
    :cond_c
    :goto_c
    return-object v1

    .line 621
    :cond_d
    if-eqz p1, :cond_c

    .line 625
    :try_start_f
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getLastImageQualityMessage(Ljava/lang/String;)Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_18} :catch_1a

    move-result-object v1

    goto :goto_c

    .line 626
    :catch_1a
    move-exception v0

    .line 627
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getLastImageQualityMessage"

    invoke-direct {p0, v2, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_c
.end method

.method public getSensorInfo()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1411
    invoke-static {}, ensureServiceConnected()V

    .line 1413
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_10

    .line 1414
    const-string v2, "getSensorInfo"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1423
    :goto_f
    return-object v1

    .line 1419
    :cond_10
    :try_start_10
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getSensorInfo()Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_17

    move-result-object v1

    goto :goto_f

    .line 1420
    :catch_17
    move-exception v0

    .line 1421
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getSensorInfo"

    invoke-direct {p0, v2, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_f
.end method

.method public getUserIdList()[Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1443
    invoke-static {}, ensureServiceConnected()V

    .line 1445
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_10

    .line 1446
    const-string v2, "getUserIdList"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1455
    :goto_f
    return-object v1

    .line 1451
    :cond_10
    :try_start_10
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getUserIdList()[Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_17

    move-result-object v1

    goto :goto_f

    .line 1452
    :catch_17
    move-exception v0

    .line 1453
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getUserIdList"

    invoke-direct {p0, v2, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_f
.end method

.method public getVersion()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 882
    invoke-static {}, ensureServiceConnected()V

    .line 884
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 885
    const-string v2, "getVersion"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 895
    :goto_10
    return v1

    .line 890
    :cond_11
    :try_start_11
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getVersion()I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 891
    :catch_18
    move-exception v0

    .line 892
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getVersion"

    invoke-direct {p0, v2, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method public hasPendingCommand()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 857
    invoke-static {}, ensureServiceConnected()V

    .line 859
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 860
    const-string v2, "hasPendingCommand"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 870
    :goto_10
    return v1

    .line 865
    :cond_11
    :try_start_11
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->hasPendingCommand()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 866
    :catch_18
    move-exception v0

    .line 867
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "hasPendingCommand"

    invoke-direct {p0, v2, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method public identify(Landroid/os/IBinder;Ljava/lang/String;)I
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 564
    invoke-static {}, ensureServiceConnected()V

    .line 566
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 567
    const-string v2, "identify"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 577
    :goto_10
    return v1

    .line 572
    :cond_11
    :try_start_11
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identify(Landroid/os/IBinder;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 573
    :catch_18
    move-exception v0

    .line 574
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "identify"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 598
    invoke-static {}, ensureServiceConnected()V

    .line 600
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 601
    const-string v2, "identifyForMultiUser"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 611
    :goto_10
    return v1

    .line 606
    :cond_11
    :try_start_11
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 607
    :catch_18
    move-exception v0

    .line 608
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "identifyForMultiUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v0, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public identifyForMultiUser(Landroid/os/IBinder;Ljava/lang/String;)I
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 581
    invoke-static {}, ensureServiceConnected()V

    .line 583
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 584
    const-string v2, "identifyForMultiUser"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 594
    :goto_10
    return v1

    .line 589
    :cond_11
    :try_start_11
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    const/4 v3, -0x1

    invoke-interface {v2, p1, v3, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_10

    .line 590
    :catch_19
    move-exception v0

    .line 591
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "identifyForMultiUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "client"    # Lcom/samsung/android/fingerprint/IFingerprintClient;
    .param p3, "attribute"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x0

    .line 530
    const/4 v2, -0x1

    .line 531
    .local v2, "retVal":I
    if-nez p1, :cond_d

    .line 532
    const-string v4, "identifyWithDialog"

    const-string v5, "Context is null"

    invoke-direct {p0, v4, v6, v5}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 560
    :goto_c
    return v3

    .line 535
    :cond_d
    invoke-static {}, ensureServiceConnected()V

    .line 536
    sget-object v4, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v4, :cond_1c

    .line 537
    const-string v4, "identifyWithDialog"

    const-string v5, "FingerprintService is not running!"

    invoke-direct {p0, v4, v6, v5}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_c

    .line 540
    :cond_1c
    const/4 v0, 0x0

    .line 541
    .local v0, "comName":Landroid/content/ComponentName;
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_4d

    .line 542
    invoke-direct {p0}, unregisterActivityLifeCallback()V

    move-object v3, p1

    .line 543
    check-cast v3, Landroid/app/Activity;

    sput-object v3, mCallerActivity:Landroid/app/Activity;

    move-object v3, p1

    .line 544
    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    sput-object v3, mCallerApplication:Landroid/app/Application;

    .line 545
    invoke-direct {p0}, registerActivityLifeCallback()V

    move-object v3, p1

    .line 546
    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 552
    :goto_3c
    :try_start_3c
    sget-object v3, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identifyWithDialog(Ljava/lang/String;Landroid/content/ComponentName;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    move-result v2

    .line 553
    if-eqz v2, :cond_4b

    .line 554
    invoke-direct {p0}, unregisterActivityLifeCallback()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4b} :catch_52

    :cond_4b
    :goto_4b
    move v3, v2

    .line 560
    goto :goto_c

    .line 548
    :cond_4d
    sput-object v6, mCallerApplication:Landroid/app/Application;

    .line 549
    sput-object v6, mCallerActivity:Landroid/app/Activity;

    goto :goto_3c

    .line 556
    :catch_52
    move-exception v1

    .line 557
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0}, unregisterActivityLifeCallback()V

    .line 558
    const-string v3, "identifyWithDialog"

    invoke-direct {p0, v3, v1}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4b
.end method

.method public isEnrolling()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1542
    invoke-static {}, ensureServiceConnected()V

    .line 1543
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 1544
    const-string v2, "isEnrolling"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1551
    :goto_10
    return v1

    .line 1548
    :cond_11
    :try_start_11
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->isEnrollSession()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 1549
    :catch_18
    move-exception v0

    .line 1550
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FPMS_FingerprintManager"

    const-string v3, "isEnrolling: failed "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public isSensorReady()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1329
    invoke-static {}, ensureServiceConnected()V

    .line 1331
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 1332
    const-string v2, "isSensorReady"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1342
    :goto_10
    return v1

    .line 1337
    :cond_11
    :try_start_11
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->isSensorReady()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 1338
    :catch_18
    move-exception v0

    .line 1339
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "isSensorReady"

    invoke-direct {p0, v2, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method public isSupportBackupPassword()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 919
    sget-object v1, mContext:Landroid/content/Context;

    const-string v2, "fingerprint"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-static {}, getSensorType()I

    move-result v1

    if-ne v1, v0, :cond_12

    .line 922
    :cond_11
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isSupportFingerprintIds()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 900
    invoke-static {}, ensureServiceConnected()V

    .line 902
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 903
    const-string v2, "isSupportFingerprintIds"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 912
    :goto_10
    return v1

    .line 908
    :cond_11
    :try_start_11
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->isSupportFingerprintIds()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 909
    :catch_18
    move-exception v0

    .line 910
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "isSupportFingerprintIds"

    invoke-direct {p0, v2, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method public isVZWPermissionGranted()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1847
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-eqz v2, :cond_d

    .line 1849
    :try_start_5
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, mOwnName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->isVZWPermissionGranted(Ljava/lang/String;)Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_e

    move-result v1

    .line 1855
    :cond_d
    :goto_d
    return v1

    .line 1850
    :catch_e
    move-exception v0

    .line 1851
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d
.end method

.method public notifyAlternativePasswordBegin()V
    .registers 5

    .prologue
    .line 1491
    invoke-static {}, ensureServiceConnected()V

    .line 1493
    sget-object v1, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_10

    .line 1494
    const-string/jumbo v1, "notifyAlternativePasswordBegin"

    const/4 v2, 0x0

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v1, v2, v3}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1498
    :cond_10
    :try_start_10
    sget-object v1, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyAlternativePasswordBegin()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_16

    .line 1502
    :goto_15
    return-void

    .line 1499
    :catch_16
    move-exception v0

    .line 1500
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "notifyAlternativePasswordBegin"

    invoke-direct {p0, v1, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_15
.end method

.method public notifyAppActivityState(ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "state"    # I
    .param p2, "extInfo"    # Landroid/os/Bundle;

    .prologue
    .line 742
    invoke-static {}, ensureServiceConnected()V

    .line 743
    sget-object v1, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_11

    .line 744
    const-string/jumbo v1, "notifyAppActivityState"

    const/4 v2, 0x0

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v1, v2, v3}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 753
    :goto_10
    return-void

    .line 748
    :cond_11
    :try_start_11
    sget-object v1, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyApplicationState(ILandroid/os/Bundle;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_10

    .line 750
    :catch_17
    move-exception v0

    .line 751
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "notifyAppActivityState"

    invoke-direct {p0, v1, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method public notifyEnrollBegin()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1346
    invoke-static {}, ensureServiceConnected()V

    .line 1348
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 1349
    const-string/jumbo v2, "notifyEnrollBegin"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1358
    :goto_11
    return v1

    .line 1354
    :cond_12
    :try_start_12
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyEnrollBegin()Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_11

    .line 1355
    :catch_19
    move-exception v0

    .line 1356
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "notifyEnrollBegin"

    invoke-direct {p0, v2, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method public notifyEnrollEnd()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1362
    invoke-static {}, ensureServiceConnected()V

    .line 1364
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 1365
    const-string/jumbo v2, "notifyEnrollEnd"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1374
    :goto_11
    return v1

    .line 1370
    :cond_12
    :try_start_12
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyEnrollEnd()Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_11

    .line 1371
    :catch_19
    move-exception v0

    .line 1372
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "notifyEnrollEnd"

    invoke-direct {p0, v2, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method public openTransaction(Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 927
    invoke-static {}, ensureServiceConnected()V

    .line 929
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 930
    const-string/jumbo v2, "openTransaction"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 940
    :goto_11
    return v1

    .line 935
    :cond_12
    :try_start_12
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->openTransaction(Landroid/os/IBinder;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_11

    .line 936
    :catch_19
    move-exception v0

    .line 937
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "openTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public pauseEnroll()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1379
    invoke-static {}, ensureServiceConnected()V

    .line 1381
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 1382
    const-string/jumbo v2, "pauseEnroll"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1391
    :goto_11
    return v1

    .line 1387
    :cond_12
    :try_start_12
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->pauseEnroll()Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_11

    .line 1388
    :catch_19
    move-exception v0

    .line 1389
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "pauseEnroll"

    invoke-direct {p0, v2, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method public process(Landroid/os/IBinder;Ljava/lang/String;[B)[B
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "requestData"    # [B

    .prologue
    const/4 v1, 0x0

    .line 655
    invoke-static {}, ensureServiceConnected()V

    .line 656
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 657
    const-string/jumbo v2, "process"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 669
    :goto_10
    return-object v1

    .line 661
    :cond_11
    if-eqz p3, :cond_18

    :try_start_13
    array-length v2, p3

    if-eqz v2, :cond_18

    if-nez p1, :cond_3e

    .line 662
    :cond_18
    const-string/jumbo v2, "process"

    const/4 v3, 0x0

    const-string v4, "Invaild params"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_21} :catch_22

    goto :goto_10

    .line 666
    :catch_22
    move-exception v0

    .line 667
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "process"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10

    .line 665
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3e
    :try_start_3e
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->process(Landroid/os/IBinder;Ljava/lang/String;[B)[B
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_43} :catch_22

    move-result-object v1

    goto :goto_10
.end method

.method public processFIDO(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;[B)[B
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "permissionName"    # Ljava/lang/String;
    .param p4, "requestData"    # [B

    .prologue
    const/4 v5, 0x0

    .line 674
    invoke-static {}, ensureServiceConnected()V

    .line 675
    const/4 v1, 0x0

    .line 676
    .local v1, "responseData":[B
    sget-object v3, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v3, :cond_13

    .line 677
    const-string/jumbo v3, "processFIDO"

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v3, v5, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move-object v2, v1

    .line 688
    .end local v1    # "responseData":[B
    .local v2, "responseData":[B
    :goto_12
    return-object v2

    .line 681
    .end local v2    # "responseData":[B
    .restart local v1    # "responseData":[B
    :cond_13
    if-eqz p4, :cond_1a

    :try_start_15
    array-length v3, p4

    if-eqz v3, :cond_1a

    if-nez p1, :cond_1c

    :cond_1a
    move-object v2, v1

    .line 682
    .end local v1    # "responseData":[B
    .restart local v2    # "responseData":[B
    goto :goto_12

    .line 684
    .end local v2    # "responseData":[B
    .restart local v1    # "responseData":[B
    :cond_1c
    sget-object v3, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    const/4 v4, 0x0

    invoke-interface {v3, p2, v4, p3, p4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->processFIDO(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;[B)[B
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_22} :catch_25

    move-result-object v1

    :goto_23
    move-object v2, v1

    .line 688
    .end local v1    # "responseData":[B
    .restart local v2    # "responseData":[B
    goto :goto_12

    .line 685
    .end local v2    # "responseData":[B
    .restart local v1    # "responseData":[B
    :catch_25
    move-exception v0

    .line 686
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "processFIDO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", permissionName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v0, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_23
.end method

.method public registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;
    .registers 10
    .param p1, "client"    # Lcom/samsung/android/fingerprint/IFingerprintClient;
    .param p2, "clientSpec"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 460
    invoke-static {}, ensureServiceConnected()V

    .line 462
    sget-object v4, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v4, :cond_13

    .line 463
    const-string/jumbo v4, "registerClient"

    const-string v5, "FingerprintService is not running!"

    invoke-direct {p0, v4, v3, v5}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move-object v2, v3

    .line 499
    :cond_12
    :goto_12
    return-object v2

    .line 466
    :cond_13
    sput-object v3, mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    .line 467
    const-string/jumbo v4, "securityLevel"

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_26

    .line 468
    const-string/jumbo v4, "securityLevel"

    sget v5, mSecurityLevel:I

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 470
    :cond_26
    const-string/jumbo v4, "packageName"

    sget-object v5, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :try_start_32
    sget-object v4, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v4, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v2

    .line 474
    .local v2, "retBinder":Landroid/os/IBinder;
    if-eqz v2, :cond_12

    .line 475
    sput-object p1, mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3c} :catch_3d

    goto :goto_12

    .line 479
    .end local v2    # "retBinder":Landroid/os/IBinder;
    :catch_3d
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "registerClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "client="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", clientSpec="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v0, v5}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 481
    sput-object v3, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    .line 482
    invoke-static {}, ensureServiceConnected()V

    .line 483
    sget-object v4, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v4, :cond_74

    .line 484
    const-string/jumbo v4, "registerClient"

    const-string v5, "FingerprintService is not running!"

    invoke-direct {p0, v4, v3, v5}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move-object v2, v3

    .line 485
    goto :goto_12

    .line 488
    :cond_74
    :try_start_74
    sget-object v4, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v4, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v2

    .line 489
    .restart local v2    # "retBinder":Landroid/os/IBinder;
    if-eqz v2, :cond_12

    .line 490
    sput-object p1, mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7e} :catch_7f

    goto :goto_12

    .line 494
    .end local v2    # "retBinder":Landroid/os/IBinder;
    :catch_7f
    move-exception v1

    .line 495
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "FPMS_FingerprintManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerClient 2 : failed - client="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", clientSpec="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 499
    goto/16 :goto_12
.end method

.method public registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;)Landroid/os/IBinder;
    .registers 4
    .param p1, "client"    # Lcom/samsung/android/fingerprint/IFingerprintClient;
    .param p2, "clientSpecBuilder"    # Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 504
    invoke-virtual {p2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public removeAllEnrolledFingers()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 839
    invoke-static {}, ensureServiceConnected()V

    .line 841
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 842
    const-string/jumbo v2, "removeAllEnrolledFingers"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 852
    :goto_11
    return v1

    .line 847
    :cond_12
    :try_start_12
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, mOwnName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->removeAllEnrolledFingers(Ljava/lang/String;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1b

    move-result v1

    goto :goto_11

    .line 848
    :catch_1b
    move-exception v0

    .line 849
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "removeAllEnrolledFingers"

    invoke-direct {p0, v2, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method public removeEnrolledFinger(I)Z
    .registers 7
    .param p1, "fingerIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 822
    invoke-static {}, ensureServiceConnected()V

    .line 824
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 825
    const-string/jumbo v2, "removeEnrolledFinger"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 835
    :goto_11
    return v1

    .line 830
    :cond_12
    :try_start_12
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, mOwnName:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->removeEnrolledFinger(ILjava/lang/String;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1b

    move-result v1

    goto :goto_11

    .line 831
    :catch_1b
    move-exception v0

    .line 832
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "removeEnrolledFinger"

    invoke-direct {p0, v2, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method public request(II)I
    .registers 8
    .param p1, "command"    # I
    .param p2, "data"    # I

    .prologue
    const/4 v1, -0x1

    .line 1475
    invoke-static {}, ensureServiceConnected()V

    .line 1477
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 1478
    const-string/jumbo v2, "request"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1487
    :goto_11
    return v1

    .line 1483
    :cond_12
    :try_start_12
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->request(II)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_11

    .line 1484
    :catch_19
    move-exception v0

    .line 1485
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "request"

    invoke-direct {p0, v2, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method public resumeEnroll()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1395
    invoke-static {}, ensureServiceConnected()V

    .line 1397
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 1398
    const-string/jumbo v2, "resumeEnroll"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1407
    :goto_11
    return v1

    .line 1403
    :cond_12
    :try_start_12
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->resumeEnroll()Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_11

    .line 1404
    :catch_19
    move-exception v0

    .line 1405
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "resumeEnroll"

    invoke-direct {p0, v2, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method public setEnrollFinishResult(I)V
    .registers 2
    .param p1, "set"    # I

    .prologue
    .line 1095
    sput p1, mEnrollFinishResult:I

    .line 1096
    return-void
.end method

.method public setIndexName(ILjava/lang/String;)Z
    .registers 8
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1571
    invoke-static {}, ensureServiceConnected()V

    .line 1573
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 1574
    const-string/jumbo v2, "setIndexName"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1584
    :cond_11
    :goto_11
    return v1

    .line 1578
    :cond_12
    :try_start_12
    iget-object v2, p0, mOwnName:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v2, p0, mOwnName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_11

    .line 1579
    :cond_1e
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->setIndexName(ILjava/lang/String;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_25

    move-result v1

    goto :goto_11

    .line 1581
    :catch_25
    move-exception v0

    .line 1582
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "setIndexName"

    invoke-direct {p0, v2, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method public setPassword(Ljava/lang/String;)Z
    .registers 7
    .param p1, "newPassword"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1525
    invoke-static {}, ensureServiceConnected()V

    .line 1527
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 1528
    const-string/jumbo v2, "setPassword"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1537
    :goto_11
    return v1

    .line 1533
    :cond_12
    :try_start_12
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, mOwnName:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->setPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1b

    move-result v1

    goto :goto_11

    .line 1534
    :catch_1b
    move-exception v0

    .line 1535
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "setPassword"

    invoke-direct {p0, v2, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method public showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;
    .registers 11
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;
    .param p3, "permissionName"    # Ljava/lang/String;
    .param p4, "enablePassword"    # Z

    .prologue
    const/4 v3, 0x0

    .line 773
    invoke-static {}, ensureServiceConnected()V

    .line 774
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 775
    const-string/jumbo v2, "showIdentifyDialog"

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move-object v2, v3

    .line 800
    :goto_11
    return-object v2

    .line 778
    :cond_12
    const/4 v0, 0x0

    .line 779
    .local v0, "comName":Landroid/content/ComponentName;
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_50

    .line 780
    invoke-direct {p0}, unregisterActivityLifeCallback()V

    move-object v2, p1

    .line 781
    check-cast v2, Landroid/app/Activity;

    sput-object v2, mCallerActivity:Landroid/app/Activity;

    move-object v2, p1

    .line 782
    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    sput-object v2, mCallerApplication:Landroid/app/Application;

    .line 783
    invoke-direct {p0}, registerActivityLifeCallback()V

    move-object v2, p1

    .line 784
    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 789
    :goto_32
    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    sget v4, mSecurityLevel:I

    iget-object v5, p0, mOwnName:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;ILjava/lang/String;)V

    sput-object v2, mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    .line 791
    :try_start_3d
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    sget-object v4, mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    invoke-virtual {v4}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v2, v4, v0, p3, p4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->showIdentifyDialog(Landroid/os/IBinder;Landroid/content/ComponentName;Ljava/lang/String;Z)I

    move-result v2

    if-eqz v2, :cond_61

    .line 792
    invoke-direct {p0}, unregisterActivityLifeCallback()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4e} :catch_55

    move-object v2, v3

    .line 793
    goto :goto_11

    .line 786
    :cond_50
    sput-object v3, mCallerApplication:Landroid/app/Application;

    .line 787
    sput-object v3, mCallerActivity:Landroid/app/Activity;

    goto :goto_32

    .line 795
    :catch_55
    move-exception v1

    .line 796
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0}, unregisterActivityLifeCallback()V

    .line 797
    const-string/jumbo v2, "showIdentifyDialog"

    invoke-direct {p0, v2, v1}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v2, v3

    .line 798
    goto :goto_11

    .line 800
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_61
    sget-object v2, mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    goto :goto_11
.end method

.method public startEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;)Z
    .registers 9
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 1216
    invoke-static {}, getSensorType()I

    move-result v2

    if-ne v2, v1, :cond_e

    .line 1217
    invoke-virtual {p0, p1, p2, p3, v4}, startEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)Z

    move-result v0

    .line 1237
    :goto_d
    return v0

    .line 1219
    :cond_e
    if-nez p1, :cond_18

    .line 1220
    const-string v1, "FPMS_FingerprintManager"

    const-string v2, "ActivityContext is null!! startEnrollActivity need activityContext"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1223
    :cond_18
    if-nez p2, :cond_22

    .line 1224
    const-string v1, "FPMS_FingerprintManager"

    const-string v2, "Listener is null!! startEnrollActivity need EnrollFinishListener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1227
    :cond_22
    if-eqz p3, :cond_2a

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_32

    .line 1228
    :cond_2a
    const-string v1, "FPMS_FingerprintManager"

    const-string v2, "Id parameter is needed. Please give a correct id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1231
    :cond_32
    invoke-virtual {p0}, notifyEnrollBegin()Z

    move-result v2

    if-nez v2, :cond_41

    .line 1232
    const-string v1, "FPMS_FingerprintManager"

    const-string/jumbo v2, "startEnrollActivity: notifyEnrollBegin failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1235
    :cond_41
    const-string v0, "FPMS_FingerprintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startEnrollActivity: previousStage(mStringId)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ownName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mOwnName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    invoke-virtual {p0, p1, p2, p3, v4}, startSettingEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)V

    move v0, v1

    .line 1237
    goto :goto_d
.end method

.method public startEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)Z
    .registers 10
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1243
    const/4 v0, 0x0

    .line 1244
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez p1, :cond_d

    .line 1245
    const-string v2, "FPMS_FingerprintManager"

    const-string v3, "ActivityContext is null!! startEnrollActivity need activityContext"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :goto_c
    return v1

    .line 1248
    :cond_d
    if-nez p2, :cond_17

    .line 1249
    const-string v2, "FPMS_FingerprintManager"

    const-string v3, "Listener is null!! startEnrollActivity need EnrollFinishListener"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1252
    :cond_17
    if-eqz p3, :cond_1f

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_27

    .line 1253
    :cond_1f
    const-string v2, "FPMS_FingerprintManager"

    const-string v3, "Id parameter is needed. Please give a correct id."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1256
    :cond_27
    invoke-virtual {p0}, notifyEnrollBegin()Z

    move-result v3

    if-nez v3, :cond_36

    .line 1257
    const-string v2, "FPMS_FingerprintManager"

    const-string/jumbo v3, "startEnrollActivity: notifyEnrollBegin failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1261
    :cond_36
    sput-object p1, mContext:Landroid/content/Context;

    .line 1262
    sput-object p2, mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    .line 1263
    sput-object p3, mStringId:Ljava/lang/String;

    .line 1264
    sput p4, mIndex:I

    .line 1266
    const-string v1, "FPMS_FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startEnrollActivity: previousStage(mStringId)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ownName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mOwnName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    invoke-virtual {p0}, getEnrolledFingers()I

    move-result v1

    if-eqz v1, :cond_a4

    .line 1270
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1271
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1272
    const-string/jumbo v1, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    const-string v1, "demandExtraEvent"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1274
    const-string/jumbo v1, "ownName"

    iget-object v3, p0, mOwnName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    sget-object v1, mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/fingerprint/FingerprintManager$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$4;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    invoke-virtual {p0, v1, v3, v0}, identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    move v1, v2

    .line 1320
    goto/16 :goto_c

    .line 1323
    :cond_a4
    invoke-virtual {p0, p1, p2, p3, p4}, startSettingEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)V

    move v1, v2

    .line 1324
    goto/16 :goto_c
.end method

.method public startSettingEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)V
    .registers 11
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    .line 1192
    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;

    invoke-direct {v1, p0, p2, p3}, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;)V

    .line 1193
    .local v1, "enrollFinishBroadcastReceiver":Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.android.fingerprint.action.ENROLL_FINISHED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1194
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1196
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1197
    .local v2, "intent":Landroid/content/Intent;
    sget-object v4, START_ENROLL_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1198
    const-string/jumbo v4, "previousStage"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1199
    iget-object v4, p0, mOwnName:Ljava/lang/String;

    if-eqz v4, :cond_33

    iget-object v4, p0, mOwnName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_33

    .line 1200
    const-string/jumbo v4, "ownName"

    iget-object v5, p0, mOwnName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1202
    :cond_33
    const-string v4, "index"

    invoke-virtual {v2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1203
    const-string/jumbo v4, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1205
    :try_start_42
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_46

    .line 1209
    :goto_45
    return-void

    .line 1206
    :catch_46
    move-exception v0

    .line 1207
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "FPMS_FingerprintManager"

    const-string/jumbo v5, "startSettingEnrollActivity: exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method

.method public unregisterClient(Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 509
    invoke-static {}, ensureServiceConnected()V

    .line 511
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 512
    const-string/jumbo v2, "unregisterClient"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v4, v3}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 525
    :cond_11
    :goto_11
    return v1

    .line 517
    :cond_12
    :try_start_12
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->unregisterClient(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 518
    const/4 v2, 0x0

    sput-object v2, mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_1f

    .line 519
    const/4 v1, 0x1

    goto :goto_11

    .line 521
    :catch_1f
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "unregisterClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public verifyPassword(Landroid/os/IBinder;Ljava/lang/String;)Z
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1505
    invoke-static {}, ensureServiceConnected()V

    .line 1507
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 1508
    const-string/jumbo v2, "verifyPassword"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1517
    :goto_11
    return v1

    .line 1513
    :cond_12
    :try_start_12
    sget-object v2, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, mOwnName:Ljava/lang/String;

    invoke-interface {v2, p1, p2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->verifyPassword(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1b

    move-result v1

    goto :goto_11

    .line 1514
    :catch_1b
    move-exception v0

    .line 1515
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "verifyPassword"

    invoke-direct {p0, v2, v0}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1521
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, verifyPassword(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public verifySensorState(IIIII)I
    .registers 14
    .param p1, "cmd"    # I
    .param p2, "sId"    # I
    .param p3, "opt"    # I
    .param p4, "logOpt"    # I
    .param p5, "uId"    # I

    .prologue
    const/4 v7, -0x1

    .line 1459
    invoke-static {}, ensureServiceConnected()V

    .line 1461
    sget-object v0, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v0, :cond_13

    .line 1462
    const-string/jumbo v0, "verifySensorState"

    const/4 v1, 0x0

    const-string v2, "FingerprintService is not running!"

    invoke-direct {p0, v0, v1, v2}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move v0, v7

    .line 1471
    :goto_12
    return v0

    .line 1467
    :cond_13
    :try_start_13
    sget-object v0, mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/fingerprint/IFingerprintManager;->verifySensorState(IIIII)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_1f

    move-result v0

    goto :goto_12

    .line 1468
    :catch_1f
    move-exception v6

    .line 1469
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "verifySensorState"

    invoke-direct {p0, v0, v6}, logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v7

    .line 1471
    goto :goto_12
.end method
