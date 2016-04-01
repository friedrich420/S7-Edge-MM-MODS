.class public Lcom/android/server/connectivity/NetworkMonitor;
.super Lcom/android/internal/util/StateMachine;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkMonitor$LingeringState;,
        Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;,
        Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;,
        Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;,
        Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;,
        Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;,
        Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;,
        Lcom/android/server/connectivity/NetworkMonitor$DefaultState;
    }
.end annotation


# static fields
.field public static final ACTION_NETWORK_CONDITIONS_MEASURED:Ljava/lang/String; = "android.net.conn.NETWORK_CONDITIONS_MEASURED"

.field private static final BASE:I = 0x82000

.field private static final BLAME_FOR_EVALUATION_ATTEMPTS:I = 0x5

.field private static final CAPTIVE_PORTAL_REEVALUATE_DELAY_MS:I = 0x927c0

.field private static final CAPTIVE_PORTAL_TX_CHECK_EXPIRATION_TIME:I = 0x258

.field private static final CMD_CAPTIVE_PORTAL_APP_FINISHED:I = 0x82009

.field public static final CMD_CAPTIVE_PORTAL_CHECK_UID_TX_BYTES:I = 0x82010

.field private static final CMD_CAPTIVE_PORTAL_RECHECK:I = 0x8200c

.field public static final CMD_FORCE_REEVALUATION:I = 0x82008

.field public static final CMD_FORCE_REEVALUATION_CAPTIVE_PORTAL_DETECT:I = 0x8200f

.field private static final CMD_LAUNCH_CAPTIVE_PORTAL_APP:I = 0x8200b

.field private static final CMD_LINGER_EXPIRED:I = 0x82004

.field public static final CMD_NETWORK_CONNECTED:I = 0x82001

.field public static final CMD_NETWORK_DISCONNECTED:I = 0x82007

.field public static final CMD_NETWORK_LINGER:I = 0x82003

.field private static final CMD_REEVALUATE:I = 0x82006

.field public static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final DBG:Z = true

.field private static DEFAULT_LINGER_DELAY_MS:I = 0x0

.field private static final DEFAULT_SERVER:Ljava/lang/String; = "connectivitycheck.gstatic.com"

.field public static final EVENT_NETWORK_LINGER_COMPLETE:I = 0x82005

.field public static final EVENT_NETWORK_TESTED:I = 0x82002

.field public static final EVENT_PROVISIONING_NOTIFICATION:I = 0x8200a

.field public static final EXTRA_BSSID:Ljava/lang/String; = "extra_bssid"

.field public static final EXTRA_CELL_ID:Ljava/lang/String; = "extra_cellid"

.field public static final EXTRA_CONNECTIVITY_TYPE:Ljava/lang/String; = "extra_connectivity_type"

.field public static final EXTRA_IS_CAPTIVE_PORTAL:Ljava/lang/String; = "extra_is_captive_portal"

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "extra_network_type"

.field public static final EXTRA_REQUEST_TIMESTAMP_MS:Ljava/lang/String; = "extra_request_timestamp_ms"

.field public static final EXTRA_RESPONSE_RECEIVED:Ljava/lang/String; = "extra_response_received"

.field public static final EXTRA_RESPONSE_TIMESTAMP_MS:Ljava/lang/String; = "extra_response_timestamp_ms"

.field public static final EXTRA_SSID:Ljava/lang/String; = "extra_ssid"

.field private static final IGNORE_REEVALUATE_ATTEMPTS:I = 0x5

.field private static final INITIAL_REEVALUATE_DELAY_MS:I = 0x3e8

.field private static final INVALID_UID:I = -0x1

.field private static final LINGER_DELAY_PROPERTY:Ljava/lang/String; = "persist.netmon.linger"

.field private static final MAX_REEVALUATE_DELAY_MS:I = 0x927c0

.field public static final NETWORK_TEST_RESULT_INVALID:I = 0x1

.field public static final NETWORK_TEST_RESULT_VALID:I = 0x0

.field private static final PERMISSION_ACCESS_NETWORK_CONDITIONS:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_CONDITIONS"

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "NetworkMonitor"

.field private static final VALIDATED_SCORE_POINTS:I = 0x28

.field private static final wifiOnly:Z


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAuthCompleted:Z

.field private mCaptivePortalCheckDone:Z

.field private mCaptivePortalLoggedInResponseToken:Ljava/lang/String;

.field private mCaptivePortalReceiver:Landroid/content/BroadcastReceiver;

.field private mCaptivePortalRegistered:Z

.field private final mCaptivePortalState:Lcom/android/internal/util/State;

.field private mCaptivePortalTxCheckSec:I

.field private final mConnectivityServiceHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTxByteUid:J

.field private mCurrentUid:I

.field private final mDefaultRequest:Landroid/net/NetworkRequest;

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private mDontDisplaySigninNotification:Z

.field private final mEvaluatingState:Lcom/android/internal/util/State;

.field private mIsCaptivePortalCheckEnabled:Z

.field private mIsCaptivePortalLoginActivity:Z

.field private mIsCaptivePortalLoginActivityCreated:Z

.field private mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

.field private final mLingerDelayMs:I

.field private mLingerToken:I

.field private final mLingeringState:Lcom/android/internal/util/State;

.field private final mMaybeNotifyState:Lcom/android/internal/util/State;

.field private final mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

.field private mPhoneListener:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;

.field final mProcessObserver:Landroid/app/IProcessObserver;

.field private mReevaluateToken:I

.field private mServer:Ljava/lang/String;

.field private mSmartDetectionAvailable:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUidResponsibleForReeval:I

.field private mUserDoesNotWant:Z

.field private final mValidatedState:Lcom/android/internal/util/State;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field public systemReady:Z

.field private final validationLogs:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 120
    const-string/jumbo v0, "ro.radio.noril"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, wifiOnly:Z

    .line 234
    const/16 v0, 0x7530

    sput v0, DEFAULT_LINGER_DELAY_MS:I

    .line 287
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v0, Landroid/net/wifi/WifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "networkAgentInfo"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "defaultRequest"    # Landroid/net/NetworkRequest;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkMonitor"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 236
    iput v2, p0, mLingerToken:I

    .line 243
    iput v2, p0, mReevaluateToken:I

    .line 245
    const/4 v0, -0x1

    iput v0, p0, mUidResponsibleForReeval:I

    .line 260
    iput-boolean v2, p0, mIsCaptivePortalCheckEnabled:Z

    .line 261
    iput-boolean v2, p0, mAuthCompleted:Z

    .line 264
    iput-boolean v2, p0, mUserDoesNotWant:Z

    .line 266
    iput-boolean v2, p0, mDontDisplaySigninNotification:Z

    .line 268
    iput-boolean v2, p0, mCaptivePortalRegistered:Z

    .line 269
    iput-boolean v2, p0, mCaptivePortalCheckDone:Z

    .line 272
    iput-boolean v2, p0, systemReady:Z

    .line 274
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v0, p0, mDefaultState:Lcom/android/internal/util/State;

    .line 275
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v0, p0, mValidatedState:Lcom/android/internal/util/State;

    .line 276
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v0, p0, mMaybeNotifyState:Lcom/android/internal/util/State;

    .line 277
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v0, p0, mEvaluatingState:Lcom/android/internal/util/State;

    .line 278
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v0, p0, mCaptivePortalState:Lcom/android/internal/util/State;

    .line 279
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v0, p0, mLingeringState:Lcom/android/internal/util/State;

    .line 281
    iput-object v4, p0, mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    .line 282
    iput-object v4, p0, mCaptivePortalLoggedInResponseToken:Ljava/lang/String;

    .line 284
    new-instance v0, Landroid/util/LocalLog;

    const/16 v3, 0x14

    invoke-direct {v0, v3}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, validationLogs:Landroid/util/LocalLog;

    .line 723
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/NetworkMonitor$1;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    iput-object v0, p0, mCaptivePortalReceiver:Landroid/content/BroadcastReceiver;

    .line 738
    iput-object v4, p0, mPhoneListener:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;

    .line 739
    iput-boolean v1, p0, mSmartDetectionAvailable:Z

    .line 756
    iput v2, p0, mCurrentUid:I

    .line 757
    const-wide/16 v4, 0x0

    iput-wide v4, p0, mCurrentTxByteUid:J

    .line 759
    iput v2, p0, mCaptivePortalTxCheckSec:I

    .line 760
    iput-boolean v2, p0, mIsCaptivePortalLoginActivityCreated:Z

    .line 761
    iput-boolean v2, p0, mIsCaptivePortalLoginActivity:Z

    .line 820
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$3;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/NetworkMonitor$3;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    iput-object v0, p0, mProcessObserver:Landroid/app/IProcessObserver;

    .line 294
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 295
    iput-object p2, p0, mConnectivityServiceHandler:Landroid/os/Handler;

    .line 296
    iput-object p3, p0, mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 297
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 298
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    .line 299
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    .line 300
    iput-object p4, p0, mDefaultRequest:Landroid/net/NetworkRequest;

    .line 302
    const-string/jumbo v0, "temp"

    iput-object v0, p0, mCaptivePortalLoggedInResponseToken:Ljava/lang/String;

    .line 304
    iget-object v0, p0, mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, addState(Lcom/android/internal/util/State;)V

    .line 305
    iget-object v0, p0, mValidatedState:Lcom/android/internal/util/State;

    iget-object v3, p0, mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 306
    iget-object v0, p0, mMaybeNotifyState:Lcom/android/internal/util/State;

    iget-object v3, p0, mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 307
    iget-object v0, p0, mEvaluatingState:Lcom/android/internal/util/State;

    iget-object v3, p0, mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 308
    iget-object v0, p0, mCaptivePortalState:Lcom/android/internal/util/State;

    iget-object v3, p0, mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 309
    iget-object v0, p0, mLingeringState:Lcom/android/internal/util/State;

    iget-object v3, p0, mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 310
    iget-object v0, p0, mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, setInitialState(Lcom/android/internal/util/State;)V

    .line 312
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "captive_portal_server"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mServer:Ljava/lang/String;

    .line 314
    iget-object v0, p0, mServer:Ljava/lang/String;

    if-nez v0, :cond_f7

    const-string v0, "connectivitycheck.gstatic.com"

    iput-object v0, p0, mServer:Ljava/lang/String;

    .line 316
    :cond_f7
    const-string/jumbo v0, "persist.netmon.linger"

    sget v3, DEFAULT_LINGER_DELAY_MS:I

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, mLingerDelayMs:I

    .line 318
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "captive_portal_detection_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_117

    move v0, v1

    :goto_111
    iput-boolean v0, p0, mIsCaptivePortalCheckEnabled:Z

    .line 324
    invoke-virtual {p0}, start()V

    .line 325
    return-void

    :cond_117
    move v0, v2

    .line 318
    goto :goto_111
.end method

.method public static SetDefaultLingerTime(I)V
    .registers 3
    .param p0, "time_ms"    # I

    .prologue
    .line 1377
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_10

    .line 1378
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SetDefaultLingerTime only for internal testing."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1380
    :cond_10
    sput p0, DEFAULT_LINGER_DELAY_MS:I

    .line 1381
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget-object v0, p0, mEvaluatingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget-object v0, p0, mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    .prologue
    .line 99
    iput-object p1, p0, mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/NetworkMonitor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    invoke-virtual {p0}, quit()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget-boolean v0, p0, mCaptivePortalCheckDone:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, mCaptivePortalCheckDone:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/NetworkMonitor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget v0, p0, mUidResponsibleForReeval:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 99
    iput p1, p0, mUidResponsibleForReeval:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget-boolean v0, p0, mAuthCompleted:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, mAuthCompleted:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget-object v0, p0, mValidatedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget-boolean v0, p0, mDontDisplaySigninNotification:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, mDontDisplaySigninNotification:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget-boolean v0, p0, mCaptivePortalRegistered:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, mCaptivePortalRegistered:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget-object v0, p0, mConnectivityServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget-boolean v0, p0, mUserDoesNotWant:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, mUserDoesNotWant:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget-object v0, p0, mDefaultState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/connectivity/NetworkMonitor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget v0, p0, mReevaluateToken:I

    return v0
.end method

.method static synthetic access$3004(Lcom/android/server/connectivity/NetworkMonitor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget v0, p0, mReevaluateToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mReevaluateToken:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/NetworkRequest;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget-object v0, p0, mDefaultRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/wifi/WifiManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget-object v0, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget-object v0, p0, mCaptivePortalState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4200()Z
    .registers 1

    .prologue
    .line 99
    sget-boolean v0, wifiOnly:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget-boolean v0, p0, mSmartDetectionAvailable:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, mSmartDetectionAvailable:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 99
    invoke-virtual {p0, p1}, removeMessages(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/connectivity/NetworkMonitor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget v0, p0, mCurrentUid:I

    return v0
.end method

.method static synthetic access$4702(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 99
    iput p1, p0, mCurrentUid:I

    return p1
.end method

.method static synthetic access$4800(Lcom/android/server/connectivity/NetworkMonitor;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget-wide v0, p0, mCurrentTxByteUid:J

    return-wide v0
.end method

.method static synthetic access$4802(Lcom/android/server/connectivity/NetworkMonitor;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # J

    .prologue
    .line 99
    iput-wide p1, p0, mCurrentTxByteUid:J

    return-wide p1
.end method

.method static synthetic access$4900(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget-boolean v0, p0, mIsCaptivePortalLoginActivityCreated:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, mIsCaptivePortalLoginActivityCreated:Z

    return p1
.end method

.method static synthetic access$5000(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget-boolean v0, p0, mIsCaptivePortalLoginActivity:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, mIsCaptivePortalLoginActivity:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1}, isSmartCPDetectException(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/connectivity/NetworkMonitor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget v0, p0, mCaptivePortalTxCheckSec:I

    return v0
.end method

.method static synthetic access$5202(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 99
    iput p1, p0, mCaptivePortalTxCheckSec:I

    return p1
.end method

.method static synthetic access$5208(Lcom/android/server/connectivity/NetworkMonitor;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget v0, p0, mCaptivePortalTxCheckSec:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, mCaptivePortalTxCheckSec:I

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget-object v0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget-object v0, p0, mPhoneListener:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/Network;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Landroid/net/Network;

    .prologue
    .line 99
    invoke-direct {p0, p1}, startLoginActivity(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 99
    invoke-virtual {p0, p1}, removeMessages(I)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 99
    invoke-virtual {p0, p1}, removeMessages(I)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 99
    invoke-virtual {p0, p1}, removeMessages(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget-object v0, p0, mLingeringState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/connectivity/NetworkMonitor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget v0, p0, mLingerToken:I

    return v0
.end method

.method static synthetic access$6002(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 99
    iput p1, p0, mLingerToken:I

    return p1
.end method

.method static synthetic access$6004(Lcom/android/server/connectivity/NetworkMonitor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget v0, p0, mLingerToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mLingerToken:I

    return v0
.end method

.method static synthetic access$6100(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/app/AlarmManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget-object v0, p0, mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 99
    iget-object v0, p0, mCaptivePortalReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private isPackageExists(Ljava/lang/String;)Z
    .registers 8
    .param p1, "targetPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1155
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1156
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 1157
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1158
    .local v1, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1159
    const/4 v4, 0x1

    .line 1162
    .end local v1    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_24
    return v4
.end method

.method private isSmartCPDetectException(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 812
    const-string v0, "com.android.captiveportallogin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "com.sec.android.app.launcher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 814
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isSmartCPDetectException - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is Exception on SmartCPDetect!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, log(Ljava/lang/String;)V

    .line 815
    const/4 v0, 0x1

    .line 817
    :goto_2e
    return v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method private sendNetworkConditionsBroadcast(ZZJJ)V
    .registers 20
    .param p1, "responseReceived"    # Z
    .param p2, "isCaptivePortal"    # Z
    .param p3, "requestTimestampMs"    # J
    .param p5, "responseTimestampMs"    # J

    .prologue
    .line 1301
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "wifi_scan_always_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_11

    .line 1372
    :cond_10
    :goto_10
    return-void

    .line 1306
    :cond_11
    iget-boolean v9, p0, systemReady:Z

    if-eqz v9, :cond_10

    .line 1308
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.net.conn.NETWORK_CONDITIONS_MEASURED"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1309
    .local v7, "latencyBroadcast":Landroid/content/Intent;
    iget-object v9, p0, mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v9, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    packed-switch v9, :pswitch_data_10a

    goto :goto_10

    .line 1328
    :pswitch_28
    const-string/jumbo v9, "extra_network_type"

    iget-object v10, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1329
    iget-object v9, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v6

    .line 1330
    .local v6, "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v6, :cond_10

    .line 1331
    const/4 v8, 0x0

    .line 1332
    .local v8, "numRegisteredCellInfo":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_41
    :goto_41
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    .line 1333
    .local v3, "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v9

    if-eqz v9, :cond_41

    .line 1334
    add-int/lit8 v8, v8, 0x1

    .line 1335
    const/4 v9, 0x1

    if-le v8, v9, :cond_ba

    .line 1336
    const-string/jumbo v9, "more than one registered CellInfo.  Can\'t tell which is active.  Bailing."

    invoke-virtual {p0, v9}, log(Ljava/lang/String;)V

    goto :goto_10

    .line 1311
    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .end local v8    # "numRegisteredCellInfo":I
    :pswitch_5f
    iget-object v9, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 1312
    .local v4, "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_b2

    .line 1320
    const-string/jumbo v9, "extra_ssid"

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1321
    const-string/jumbo v9, "extra_bssid"

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1362
    .end local v4    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_7b
    const-string/jumbo v9, "extra_connectivity_type"

    iget-object v10, p0, mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v10, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1363
    const-string/jumbo v9, "extra_response_received"

    invoke-virtual {v7, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1364
    const-string/jumbo v9, "extra_request_timestamp_ms"

    move-wide/from16 v0, p3

    invoke-virtual {v7, v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1366
    if-eqz p1, :cond_a7

    .line 1367
    const-string/jumbo v9, "extra_is_captive_portal"

    invoke-virtual {v7, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1368
    const-string/jumbo v9, "extra_response_timestamp_ms"

    move-wide/from16 v0, p5

    invoke-virtual {v7, v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1370
    :cond_a7
    iget-object v9, p0, mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v11, "android.permission.ACCESS_NETWORK_CONDITIONS"

    invoke-virtual {v9, v7, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1323
    .restart local v4    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_b2
    const-string/jumbo v9, "network info is TYPE_WIFI but no ConnectionInfo found"

    invoke-virtual {p0, v9}, logw(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1340
    .end local v4    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .restart local v8    # "numRegisteredCellInfo":I
    :cond_ba
    instance-of v9, v3, Landroid/telephony/CellInfoCdma;

    if-eqz v9, :cond_cc

    .line 1341
    check-cast v3, Landroid/telephony/CellInfoCdma;

    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v2

    .line 1342
    .local v2, "cellId":Landroid/telephony/CellIdentityCdma;
    const-string/jumbo v9, "extra_cellid"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_41

    .line 1343
    .end local v2    # "cellId":Landroid/telephony/CellIdentityCdma;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_cc
    instance-of v9, v3, Landroid/telephony/CellInfoGsm;

    if-eqz v9, :cond_de

    .line 1344
    check-cast v3, Landroid/telephony/CellInfoGsm;

    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v2

    .line 1345
    .local v2, "cellId":Landroid/telephony/CellIdentityGsm;
    const-string/jumbo v9, "extra_cellid"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_41

    .line 1346
    .end local v2    # "cellId":Landroid/telephony/CellIdentityGsm;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_de
    instance-of v9, v3, Landroid/telephony/CellInfoLte;

    if-eqz v9, :cond_f0

    .line 1347
    check-cast v3, Landroid/telephony/CellInfoLte;

    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    .line 1348
    .local v2, "cellId":Landroid/telephony/CellIdentityLte;
    const-string/jumbo v9, "extra_cellid"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_41

    .line 1349
    .end local v2    # "cellId":Landroid/telephony/CellIdentityLte;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_f0
    instance-of v9, v3, Landroid/telephony/CellInfoWcdma;

    if-eqz v9, :cond_102

    .line 1350
    check-cast v3, Landroid/telephony/CellInfoWcdma;

    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    .line 1351
    .local v2, "cellId":Landroid/telephony/CellIdentityWcdma;
    const-string/jumbo v9, "extra_cellid"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_41

    .line 1353
    .end local v2    # "cellId":Landroid/telephony/CellIdentityWcdma;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_102
    const-string v9, "Registered cellinfo is unrecognized"

    invoke-virtual {p0, v9}, logw(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1309
    nop

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_28
        :pswitch_5f
    .end packed-switch
.end method

.method private startLoginActivity(Landroid/net/Network;)V
    .registers 8
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    const/4 v5, 0x1

    .line 764
    iget-boolean v3, p0, mIsCaptivePortalLoginActivityCreated:Z

    if-nez v3, :cond_6e

    .line 766
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 768
    .local v2, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-eqz v3, :cond_78

    const-string v3, "FINISH"

    const-string/jumbo v4, "persist.sys.setupwizard"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 770
    const-string v3, "Launch captive portal login activity immediately."

    invoke-virtual {p0, v3}, log(Ljava/lang/String;)V

    .line 771
    iput-boolean v5, p0, mIsCaptivePortalLoginActivityCreated:Z

    .line 773
    :try_start_2c
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.conn.CAPTIVE_PORTAL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 774
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.captiveportallogin"

    const-string v5, "com.android.captiveportallogin.CaptivePortalLoginActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 776
    const-string v3, "android.net.extra.NETWORK"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 777
    const-string v3, "android.net.extra.CAPTIVE_PORTAL"

    new-instance v4, Landroid/net/CaptivePortal;

    new-instance v5, Lcom/android/server/connectivity/NetworkMonitor$2;

    invoke-direct {v5, p0}, Lcom/android/server/connectivity/NetworkMonitor$2;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    invoke-direct {v4, v5}, Landroid/net/CaptivePortal;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 789
    const-string v3, "android.net.extra.CAPTIVE_PORTAL_SMART_DETECTION"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 790
    const/high16 v3, 0x10c00000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 793
    iget-object v3, p0, mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_65
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2c .. :try_end_65} :catch_6f

    .line 803
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_65
    :try_start_65
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_6e} :catch_7e

    .line 809
    .end local v2    # "powerManager":Landroid/os/PowerManager;
    :cond_6e
    :goto_6e
    return-void

    .line 794
    .restart local v2    # "powerManager":Landroid/os/PowerManager;
    :catch_6f
    move-exception v0

    .line 795
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "NetworkMonitor"

    const-string v4, "Failed to start Login activity."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 798
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_78
    const-string v3, "Captive portal is detected, but DO NOT start login activity"

    invoke-virtual {p0, v3}, log(Ljava/lang/String;)V

    goto :goto_65

    .line 804
    :catch_7e
    move-exception v0

    .line 805
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "NetworkMonitor"

    const-string v4, "RemoteException - unregisterProcessObserver"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6e
.end method

.method private validationLog(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 333
    invoke-virtual {p0, p1}, log(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, validationLogs:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 335
    return-void
.end method


# virtual methods
.method public doQuit()V
    .registers 2

    .prologue
    .line 347
    const-string/jumbo v0, "doQuit - quitNow()"

    invoke-virtual {p0, v0}, log(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, quitNow()V

    .line 349
    return-void
.end method

.method public getValidationLogs()Landroid/util/LocalLog$ReadOnlyLocalLog;
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, validationLogs:Landroid/util/LocalLog;

    invoke-virtual {v0}, Landroid/util/LocalLog;->readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-result-object v0

    return-object v0
.end method

.method protected isCaptivePortal()I
    .registers 27

    .prologue
    .line 1171
    move-object/from16 v0, p0

    iget-boolean v3, v0, mIsCaptivePortalCheckEnabled:Z

    if-nez v3, :cond_9

    const/16 v16, 0xcc

    .line 1289
    :cond_8
    :goto_8
    return v16

    .line 1173
    :cond_9
    const/16 v25, 0x0

    .line 1174
    .local v25, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v16, 0x257

    .line 1176
    .local v16, "httpResponseCode":I
    :try_start_d
    new-instance v24, Ljava/net/URL;

    const-string/jumbo v3, "http"

    move-object/from16 v0, p0

    iget-object v4, v0, mServer:Ljava/lang/String;

    const-string v5, "/generate_204"

    move-object/from16 v0, v24

    invoke-direct {v0, v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    .local v24, "url":Ljava/net/URL;
    const/4 v14, 0x0

    .line 1194
    .local v14, "fetchPac":Z
    move-object/from16 v0, p0

    iget-object v3, v0, mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v23

    .line 1195
    .local v23, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v23, :cond_46

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual/range {v23 .. v23}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 1196
    new-instance v24, Ljava/net/URL;

    .end local v24    # "url":Ljava/net/URL;
    invoke-virtual/range {v23 .. v23}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1197
    .restart local v24    # "url":Ljava/net/URL;
    const/4 v14, 0x1

    .line 1199
    :cond_46
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1200
    .local v12, "connectInfo":Ljava/lang/StringBuffer;
    const/4 v15, 0x0

    .line 1203
    .local v15, "hostToResolve":Ljava/lang/String;
    if-eqz v23, :cond_50

    if-eqz v14, :cond_a4

    .line 1204
    :cond_50
    invoke-virtual/range {v24 .. v24}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v15

    .line 1208
    :cond_54
    :goto_54
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ab

    .line 1209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1210
    move-object/from16 v0, p0

    iget-object v3, v0, mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v3, v15}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v10

    .line 1212
    .local v10, "addresses":[Ljava/net/InetAddress;
    move-object v11, v10

    .local v11, "arr$":[Ljava/net/InetAddress;
    array-length v0, v11

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_86
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_ab

    aget-object v2, v11, v17

    .line 1213
    .local v2, "address":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1214
    array-length v3, v10

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v10, v3

    if-eq v2, v3, :cond_a1

    const-string v3, ","

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1212
    :cond_a1
    add-int/lit8 v17, v17, 0x1

    goto :goto_86

    .line 1205
    .end local v2    # "address":Ljava/net/InetAddress;
    .end local v10    # "addresses":[Ljava/net/InetAddress;
    .end local v11    # "arr$":[Ljava/net/InetAddress;
    .end local v17    # "i$":I
    .end local v22    # "len$":I
    :cond_a4
    if-eqz v23, :cond_54

    .line 1206
    invoke-virtual/range {v23 .. v23}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v15

    goto :goto_54

    .line 1217
    :cond_ab
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, validationLog(Ljava/lang/String;)V

    .line 1219
    move-object/from16 v0, p0

    iget-object v3, v0, mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v25, v0

    .line 1220
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1221
    const/16 v3, 0x2710

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1222
    const/16 v3, 0x2710

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1223
    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1226
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1228
    .local v6, "requestTimestamp":J
    invoke-virtual/range {v25 .. v25}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 1231
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1233
    .local v8, "responseTimestamp":J
    invoke-virtual/range {v25 .. v25}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    .line 1234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCaptivePortal: ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " headers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v25 .. v25}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, validationLog(Ljava/lang/String;)V

    .line 1247
    const/16 v3, 0xc8

    move/from16 v0, v16

    if-ne v0, v3, :cond_156

    invoke-virtual/range {v25 .. v25}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    if-nez v3, :cond_156

    .line 1248
    const-string v3, "Empty 200 response interpreted as 204 response."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, validationLog(Ljava/lang/String;)V

    .line 1249
    const/16 v16, 0xcc

    .line 1252
    :cond_156
    const/16 v3, 0xc8

    move/from16 v0, v16

    if-ne v0, v3, :cond_167

    if-eqz v14, :cond_167

    .line 1253
    const-string v3, "PAC fetch 200 response interpreted as 204 response."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, validationLog(Ljava/lang/String;)V

    .line 1254
    const/16 v16, 0xcc

    .line 1256
    :cond_167
    const/16 v3, 0xcc

    move/from16 v0, v16

    if-eq v0, v3, :cond_228

    const/16 v3, 0xc8

    move/from16 v0, v16

    if-lt v0, v3, :cond_228

    const/16 v3, 0x18f

    move/from16 v0, v16

    if-gt v0, v3, :cond_228

    .line 1257
    move-object/from16 v0, p0

    iget-object v3, v0, mServer:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 1258
    .restart local v2    # "address":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    move/from16 v18, v0

    .line 1259
    .local v18, "ipByte1st":I
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    move/from16 v19, v0

    .line 1260
    .local v19, "ipByte2nd":I
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    move/from16 v20, v0

    .line 1261
    .local v20, "ipByte3rd":I
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    move/from16 v21, v0

    .line 1262
    .local v21, "ipByte4th":I
    const/16 v3, 0xa

    move/from16 v0, v18

    if-eq v0, v3, :cond_1e8

    const/16 v3, 0xc0

    move/from16 v0, v18

    if-ne v0, v3, :cond_1bf

    const/16 v3, 0xa8

    move/from16 v0, v19

    if-eq v0, v3, :cond_1e8

    :cond_1bf
    const/16 v3, 0xac

    move/from16 v0, v18

    if-ne v0, v3, :cond_1d1

    const/16 v3, 0x10

    move/from16 v0, v19

    if-lt v0, v3, :cond_1d1

    const/16 v3, 0x1f

    move/from16 v0, v19

    if-le v0, v3, :cond_1e8

    :cond_1d1
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_228

    const/16 v3, 0x21

    move/from16 v0, v19

    if-ne v0, v3, :cond_228

    const/16 v3, 0xcb

    move/from16 v0, v20

    if-ne v0, v3, :cond_228

    const/16 v3, 0x27

    move/from16 v0, v21

    if-ne v0, v3, :cond_228

    .line 1266
    :cond_1e8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dns Response with Private Network IP Address !!! - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, log(Ljava/lang/String;)V

    .line 1268
    const/16 v16, 0x257

    .line 1271
    .end local v2    # "address":Ljava/net/InetAddress;
    .end local v18    # "ipByte1st":I
    .end local v19    # "ipByte2nd":I
    .end local v20    # "ipByte3rd":I
    .end local v21    # "ipByte4th":I
    :cond_228
    const/16 v3, 0x197

    move/from16 v0, v16

    if-ne v0, v3, :cond_237

    .line 1272
    const-string v3, "407 Proxy Authentication Required interpreted as 204 response."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, log(Ljava/lang/String;)V

    .line 1273
    const/16 v16, 0xcc

    .line 1276
    :cond_237
    const/4 v4, 0x1

    const/16 v3, 0xcc

    move/from16 v0, v16

    if-eq v0, v3, :cond_24b

    const/4 v5, 0x1

    :goto_23f
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, sendNetworkConditionsBroadcast(ZZJJ)V
    :try_end_244
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_244} :catch_24d
    .catchall {:try_start_d .. :try_end_244} :catchall_273

    .line 1285
    if-eqz v25, :cond_8

    .line 1286
    invoke-virtual/range {v25 .. v25}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_8

    .line 1276
    :cond_24b
    const/4 v5, 0x0

    goto :goto_23f

    .line 1279
    .end local v6    # "requestTimestamp":J
    .end local v8    # "responseTimestamp":J
    .end local v12    # "connectInfo":Ljava/lang/StringBuffer;
    .end local v14    # "fetchPac":Z
    .end local v15    # "hostToResolve":Ljava/lang/String;
    .end local v23    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v24    # "url":Ljava/net/URL;
    :catch_24d
    move-exception v13

    .line 1280
    .local v13, "e":Ljava/io/IOException;
    :try_start_24e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Probably not a portal: exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, validationLog(Ljava/lang/String;)V
    :try_end_266
    .catchall {:try_start_24e .. :try_end_266} :catchall_273

    .line 1281
    const/16 v3, 0x257

    move/from16 v0, v16

    if-ne v0, v3, :cond_26c

    .line 1285
    :cond_26c
    if-eqz v25, :cond_8

    .line 1286
    invoke-virtual/range {v25 .. v25}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_8

    .line 1285
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_273
    move-exception v3

    if-eqz v25, :cond_279

    .line 1286
    invoke-virtual/range {v25 .. v25}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_279
    throw v3
.end method

.method protected log(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkMonitor/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void
.end method
